-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2022 at 09:15 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `size_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `color_id`, `size_id`, `quantity`, `created_at`, `updated_at`) VALUES
(6, 3, 16, 8, 4, 3, '2022-12-12 16:44:03', NULL),
(8, 3, 4, 137, 1, 2, '2022-12-12 17:55:26', '2022-12-24 06:33:25'),
(9, 1, 2, 8, 1, 4, '2022-12-24 12:46:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_img`, `icon`, `added_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Accessories', 'utw750.jpg', 'fa-shopping-bag', 2, '2022-10-23 22:12:02', '2022-10-23 22:12:03', NULL),
(2, 'Electronics', 'TsL791.jpg', 'fa-television', 2, '2022-10-23 22:12:26', '2022-10-23 22:12:26', NULL),
(3, 'Fashion', '9Uz325.jpg', 'fa-female', 2, '2022-10-23 22:12:48', '2022-10-23 22:12:48', NULL),
(4, 'Funiture', 'ViD128.jpg', 'fa-bed', 2, '2022-10-23 22:13:19', '2022-10-23 22:13:19', NULL),
(5, 'Home Appliances', '0Cq393.jpg', 'fa-cutlery', 2, '2022-10-23 22:13:48', '2022-10-23 22:13:48', NULL),
(6, 'Sports', '4h1305.jpg', 'fa-dribbble', 2, '2022-10-23 22:14:18', '2022-10-23 22:14:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `color_code`, `created_at`, `updated_at`) VALUES
(1, 'Not Available', '', NULL, NULL),
(2, 'IndianRed', 'CD5C5C', NULL, NULL),
(3, 'LightCoral', 'F08080', NULL, NULL),
(4, 'Salmon', 'FA8072', NULL, NULL),
(5, 'DarkSalmon', 'E9967A', NULL, NULL),
(6, 'LightSalmon', 'FFA07A', NULL, NULL),
(7, 'Crimson', 'DC143C', NULL, NULL),
(8, 'Red', 'FF0000', NULL, NULL),
(9, 'FireBrick', 'B22222', NULL, NULL),
(10, 'DarkRed', '8B0000', NULL, NULL),
(11, 'Pink', 'FFC0CB', NULL, NULL),
(12, 'LightPink', 'FFB6C1', NULL, NULL),
(13, 'HotPink', 'FF69B4', NULL, NULL),
(14, 'DeepPink', 'FF1493', NULL, NULL),
(15, 'MediumVioletRed', 'C71585', NULL, NULL),
(16, 'PaleVioletRed', 'DB7093', NULL, NULL),
(17, 'LightSalmon', 'FFA07A', NULL, NULL),
(18, 'Coral', 'FF7F50', NULL, NULL),
(19, 'Tomato', 'FF6347', NULL, NULL),
(20, 'OrangeRed', 'FF4500', NULL, NULL),
(21, 'DarkOrange', 'FF8C00', NULL, NULL),
(22, 'Orange', 'FFA500', NULL, NULL),
(23, 'Gold', 'FFD700', NULL, NULL),
(24, 'Yellow', 'FFFF00', NULL, NULL),
(25, 'LightYellow', 'FFFFE0', NULL, NULL),
(26, 'LemonChiffon', 'FFFACD', NULL, NULL),
(27, 'LightGoldenrodYellow', 'FAFAD2', NULL, NULL),
(28, 'PapayaWhip', 'FFEFD5', NULL, NULL),
(29, 'Moccasin', 'FFE4B5', NULL, NULL),
(30, 'PeachPuff', 'FFDAB9', NULL, NULL),
(31, 'PaleGoldenrod', 'EEE8AA', NULL, NULL),
(32, 'Khaki', 'F0E68C', NULL, NULL),
(33, 'DarkKhaki', 'BDB76B', NULL, NULL),
(34, 'Lavender', 'E6E6FA', NULL, NULL),
(35, 'Thistle', 'D8BFD8', NULL, NULL),
(36, 'Plum', 'DDA0DD', NULL, NULL),
(37, 'Violet', 'EE82EE', NULL, NULL),
(38, 'Orchid', 'DA70D6', NULL, NULL),
(39, 'Fuchsia', 'FF00FF', NULL, NULL),
(40, 'Magenta', 'FF00FF', NULL, NULL),
(41, 'MediumOrchid', 'BA55D3', NULL, NULL),
(42, 'MediumPurple', '9370DB', NULL, NULL),
(43, 'RebeccaPurple', '663399', NULL, NULL),
(44, 'BlueViolet', '8A2BE2', NULL, NULL),
(45, 'DarkViolet', '9400D3', NULL, NULL),
(46, 'DarkOrchid', '9932CC', NULL, NULL),
(47, 'DarkMagenta', '8B008B', NULL, NULL),
(48, 'Purple', '800080', NULL, NULL),
(49, 'Indigo', '4B0082', NULL, NULL),
(50, 'SlateBlue', '6A5ACD', NULL, NULL),
(51, 'DarkSlateBlue', '483D8B', NULL, NULL),
(52, 'MediumSlateBlue', '7B68EE', NULL, NULL),
(53, 'GreenYellow', 'ADFF2F', NULL, NULL),
(54, 'Chartreuse', '7FFF00', NULL, NULL),
(55, 'LawnGreen', '7CFC00', NULL, NULL),
(56, 'Lime', 'Lime', NULL, NULL),
(57, 'LimeGreen', '32CD32', NULL, NULL),
(58, 'PaleGreen', '98FB98', NULL, NULL),
(59, 'LightGreen', '90EE90', NULL, NULL),
(60, 'MediumSpringGreen', '00FA9A', NULL, NULL),
(61, 'SpringGreen', '00FF7F', NULL, NULL),
(62, 'MediumSeaGreen', '3CB371', NULL, NULL),
(63, 'SeaGreen', '2E8B57', NULL, NULL),
(64, 'ForestGreen', '228B22', NULL, NULL),
(65, 'Green', '008000', NULL, NULL),
(66, 'DarkGreen', '006400', NULL, NULL),
(67, 'YellowGreen', '9ACD32', NULL, NULL),
(68, 'OliveDrab', '6B8E23', NULL, NULL),
(69, 'Olive', '808000', NULL, NULL),
(70, 'DarkOliveGreen', '556B2F', NULL, NULL),
(71, 'MediumAquamarine', '66CDAA', NULL, NULL),
(72, 'DarkSeaGreen', '8FBC8B', NULL, NULL),
(73, 'LightSeaGreen', '20B2AA', NULL, NULL),
(74, 'DarkCyan', '008B8B', NULL, NULL),
(75, 'Teal', '008080', NULL, NULL),
(76, 'Aqua', '00FFFF', NULL, NULL),
(77, 'Cyan', '00FFFF', NULL, NULL),
(78, 'LightCyan', 'E0FFFF', NULL, NULL),
(79, 'PaleTurquoise', 'AFEEEE', NULL, NULL),
(80, 'Aquamarine', '7FFFD4', NULL, NULL),
(81, 'Turquoise', '40E0D0', NULL, NULL),
(82, 'MediumTurquoise', '48D1CC', NULL, NULL),
(83, 'DarkTurquoise', '00CED1', NULL, NULL),
(84, 'CadetBlue', '5F9EA0', NULL, NULL),
(85, 'SteelBlue', '4682B4', NULL, NULL),
(86, 'LightSteelBlue', 'B0C4DE', NULL, NULL),
(87, 'PowderBlue', 'B0E0E6', NULL, NULL),
(88, 'LightBlue', 'ADD8E6', NULL, NULL),
(89, 'SkyBlue', '87CEEB', NULL, NULL),
(90, 'LightSkyBlue', '87CEFA', NULL, NULL),
(91, 'DeepSkyBlue', '00BFFF', NULL, NULL),
(92, 'DodgerBlue', '1E90FF', NULL, NULL),
(93, 'CornflowerBlue', '6495ED', NULL, NULL),
(94, 'MediumSlateBlue', '7B68EE', NULL, NULL),
(95, 'RoyalBlue', '4169E1', NULL, NULL),
(96, 'Blue', '0000FF', NULL, NULL),
(97, 'MediumBlue', '0000CD', NULL, NULL),
(98, 'DarkBlue', '00008B', NULL, NULL),
(99, 'Navy', '000080', NULL, NULL),
(100, 'MidnightBlue', '191970', NULL, NULL),
(101, 'Cornsilk', 'FFF8DC', NULL, NULL),
(102, 'BlanchedAlmond', 'FFEBCD', NULL, NULL),
(103, 'Bisque', 'FFE4C4', NULL, NULL),
(104, 'NavajoWhite', 'FFDEAD', NULL, NULL),
(105, 'Wheat', 'F5DEB3', NULL, NULL),
(106, 'BurlyWood', 'DEB887', NULL, NULL),
(107, 'Tan', 'D2B48C', NULL, NULL),
(108, 'RosyBrown', 'BC8F8F', NULL, NULL),
(109, 'SandyBrown', 'F4A460', NULL, NULL),
(110, 'Goldenrod', 'DAA520', NULL, NULL),
(111, 'DarkGoldenrod', 'B8860B', NULL, NULL),
(112, 'Peru', 'CD853F', NULL, NULL),
(113, 'Chocolate', 'D2691E', NULL, NULL),
(114, 'SaddleBrown', '8B4513', NULL, NULL),
(115, 'Sienna', 'A0522D', NULL, NULL),
(116, 'Brown', 'A52A2A', NULL, NULL),
(117, 'Maroon', '800000', NULL, NULL),
(118, 'White', 'FFFFFF', NULL, NULL),
(119, 'Snow', 'FFFAFA', NULL, NULL),
(120, 'HoneyDew', 'F0FFF0', NULL, NULL),
(121, 'MintCream', 'F5FFFA', NULL, NULL),
(122, 'Azure', 'F0FFFF', NULL, NULL),
(123, 'AliceBlue', 'F0F8FF', NULL, NULL),
(124, 'GhostWhite', 'F8F8FF', NULL, NULL),
(125, 'WhiteSmoke', 'F5F5F5', NULL, NULL),
(126, 'SeaShell', 'FFF5EE', NULL, NULL),
(127, 'Beige', 'F5F5DC', NULL, NULL),
(128, 'OldLace', 'FDF5E6', NULL, NULL),
(129, 'FloralWhite', 'FFFAF0', NULL, NULL),
(130, 'Ivory', 'FFFFF0', NULL, NULL),
(131, 'AntiqueWhite', 'FAEBD7', NULL, NULL),
(132, 'Linen', 'FAF0E6', NULL, NULL),
(133, 'LavenderBlush', 'FFF0F5', NULL, NULL),
(134, 'MistyRose', 'FFE4E1', NULL, NULL),
(135, 'Gainsboro', 'DCDCDC', NULL, NULL),
(136, 'LightGray', 'D3D3D3', NULL, NULL),
(137, 'Silver', 'C0C0C0', NULL, NULL),
(138, 'DarkGray', 'A9A9A9', NULL, NULL),
(139, 'Gray', '808080', NULL, NULL),
(140, 'DimGray', '696969', NULL, NULL),
(141, 'LightSlateGray', '778899', NULL, NULL),
(142, 'SlateGray', '708090', NULL, NULL),
(143, 'DarkSlateGray', '2F4F4F', NULL, NULL),
(144, 'Black', '000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `expire` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `discount`, `expire`, `created_at`, `updated_at`) VALUES
(1, 'sohag10', 10, '2022-12-26', '2022-12-24 10:40:47', NULL),
(2, 'cit10', 10, '2022-12-22', '2022-12-24 11:54:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customerlogins`
--

CREATE TABLE `customerlogins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customerlogins`
--

INSERT INTO `customerlogins` (`id`, `name`, `email`, `password`, `country`, `address`, `phone`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Damon Cooley', 'wisokyru@mailinator.com', '$2y$10$yeysef68KT59/Y/PrqTtFOwLSJvNQMIRRiA4sm4LbK7KpS.NYazZ6', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Maggie Witt', 'gusubebera@mailinator.com', '$2y$10$UEpCQsXuDknncp6gaY2dVOiGRPaPl5vCWO/SV6eNELaZJWjhU7.DW', NULL, NULL, NULL, NULL, '2022-12-08 14:52:51', NULL),
(3, 'Macaulay Trevino', 'revyle@mailinator.com', '$2y$10$t4xsdqagZsmayGNsO/Ff7u57r9qhy2967984EitfUfaOJE34B3gOK', NULL, NULL, NULL, NULL, '2022-12-12 16:43:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `color_id`, `size_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 144, 1, 60, NULL, NULL),
(2, 2, 144, 1, 35, NULL, NULL),
(3, 2, 8, 1, 15, NULL, NULL),
(4, 3, 144, 1, 40, NULL, NULL),
(5, 4, 137, 1, 50, NULL, NULL),
(6, 5, 144, 1, 20, NULL, NULL),
(7, 6, 144, 1, 10, NULL, NULL),
(8, 15, 144, 1, 15, NULL, NULL),
(9, 16, 144, 1, 11, NULL, NULL),
(10, 16, 144, 2, 5, NULL, NULL),
(11, 16, 144, 3, 14, NULL, NULL),
(12, 16, 8, 4, 16, NULL, NULL),
(13, 16, 8, 5, 17, NULL, NULL),
(14, 16, 8, 6, 12, NULL, NULL),
(15, 16, 8, 7, 13, NULL, NULL),
(16, 16, 144, 4, 4, NULL, NULL),
(17, 16, 144, 5, 5, NULL, NULL),
(18, 16, 144, 6, 6, NULL, NULL),
(19, 16, 144, 7, 8, NULL, NULL),
(20, 16, 8, 2, 9, NULL, NULL),
(21, 16, 8, 3, 6, NULL, NULL),
(22, 16, 8, 1, 10, NULL, NULL),
(23, 16, 70, 2, 4, NULL, NULL),
(24, 16, 70, 3, 4, NULL, NULL),
(25, 16, 70, 4, 8, NULL, NULL),
(26, 16, 70, 5, 9, NULL, NULL),
(27, 16, 70, 6, 7, NULL, NULL),
(28, 16, 70, 7, 4, NULL, NULL),
(29, 17, 142, 1, 40, NULL, NULL),
(30, 18, 144, 1, 40, NULL, NULL),
(31, 19, 64, 1, 30, NULL, NULL),
(32, 20, 118, 1, 10, NULL, NULL),
(33, 20, 52, 1, 11, NULL, NULL),
(34, 20, 30, 1, 20, NULL, NULL),
(35, 21, 144, 1, 14, NULL, NULL),
(36, 21, 8, 1, 12, NULL, NULL),
(37, 21, 96, 1, 21, NULL, NULL),
(38, 22, 1, 1, 44, NULL, NULL),
(43, 22, 1, 2, 10, NULL, NULL),
(44, 22, 1, 3, 15, NULL, NULL),
(45, 22, 1, 4, 10, NULL, NULL),
(46, 22, 1, 5, 15, NULL, NULL),
(47, 22, 1, 6, 13, NULL, NULL),
(48, 22, 1, 7, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_10_21_061649_create_categories_table', 2),
(6, '2022_10_25_175817_create_subcategories_table', 3),
(7, '2022_11_15_180120_create_products_table', 4),
(8, '2022_11_15_211642_create_thumbnails_table', 4),
(9, '2022_11_16_165051_create_colors_table', 4),
(10, '2022_11_16_173937_create_sizes_table', 4),
(11, '2022_11_18_155022_create_inventories_table', 4),
(12, '2022_12_08_192015_create_customerlogins_table', 5),
(13, '2022_12_11_172346_create_carts_table', 6),
(14, '2022_12_24_123838_create_coupons_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `after_discount` int(11) NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_desp` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `price`, `discount`, `after_discount`, `brand`, `short_desp`, `long_desp`, `preview`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Apple Watch Series 7', 14300, 5, 13585, 'Apple', 'Apple WatchSeries 7 45mm Sports Band', '<div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 20px; line-height: 26px;\">Description</h2></div><div class=\"full-description\" itemprop=\"description\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 20px; line-height: 26px; text-align: justify;\">Apple Watch Series 7 45mm Sports Band<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></h2><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; color: rgb(1, 19, 45); line-height: 26px; text-align: justify;\">The Apple Watch Series 7 45mm Sports Band features the largest, most advanced display yet. It comes with an always-On Retina LTPO OLED display, 1,000 nits brightness. The display is Crack Resistant, Dust Resistant (IP6X), and Swimproof with WR50 water resistance. Series 7 puts more health insights in sight. You can measure your blood oxygen level with a revolutionary sensor and app. Apple Watch Series 7 is capable of generating an ECG similar to a single-lead electrocardiogram. Along with other innovations like mindfulness and sleep tracking to keep you healthy from head to toe.&nbsp; It can help you understand how well your body is absorbing oxygen and the amount of oxygen delivered to your body with the Blood Oxygen app. The entire charging system for Apple Watch Series 7 has been rethought to get you up and running faster than ever. With an updated charging architecture and fast-charging USB-C cable, it takes about 45 minutes to go from 0 to 80% charge. The Apple Watch Series 7 comes with no warranty.</p></div>', 'wpf210.jpg', 'apple-watch-series-7-58077247848', NULL, '2022-11-19 15:09:23'),
(2, 1, 7, 'A4TECH Bloody G600I Virtual 7.1 Surround Sound Gaming Headphone', 3400, NULL, 3400, 'A4TECH', 'The latest price of A4TECH Bloody G600I Gaming Headphone in Bangladesh is 3,650৳. You can buy the A4TECH Bloody G600I Gaming Headphone at best price from our website or visit any of our showrooms.', '<h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 20px; line-height: 26px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; text-align: justify;\">A4TECH Bloody G600I Virtual 7.1 Surround Sound Gaming Headphone</h2><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; color: rgb(1, 19, 45); line-height: 26px; font-family: &quot;Trebuchet MS&quot;, sans-serif; text-align: justify;\">The new A4TECH Bloody G600I gaming headphone comes with 7.1 Surround Sound effect. This gaming headphone has 3.5 Jack to USB Converter. And also designed with Detachable Mic., Ergonomic 3D Earpads, Laser Trimming Driver with Dual-Chamber Design Speaker. The Gaming headphone is featured with Î¦50 mm Titanium-Plated Driver, 20 Hz â€“ 20 KHz Frequency Response, 100 dB Sensitivity and 32 ohm Impedance. Here, the Microphone comes with 50 Hz -16 KHz Frequency Response and â€“ 45 dB Sensitivity. This new A4TECH Bloody G600I 7.1 Surround Sound Gaming Headphone has 01 year warranty.</p>', 'iv5156.jpg', 'a4tech-bloody-g600i-virtual-7.1-surround-sound-gaming-headphone-42420062270', NULL, '2022-11-19 15:12:44'),
(3, 2, 2, 'Canon EOS 90D 32.5MP DSLR Camera with 18-55MM STM Lens', 122000, 10, 109800, 'Canon', 'The latest price of Canon EOS 90D DSLR Camera in Bangladesh is 122,000৳. You can buy the Canon EOS 90D DSLR Camera at best price from our website or visit any of our showrooms.', '<div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 20px; line-height: 26px;\">Description</h2></div><div class=\"full-description\" itemprop=\"description\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 20px; line-height: 26px;\">Canon EOS 90D 32.5MP DSLR Camera with 18-55MM STM Lens</h2><div style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">The EOS 90D is built around a 32.5MP APS-C sensor that gives lenses 1.6x the telephoto reach they would have on a full-frame camera. Great for those times when you need to be right in amongst the action. Full resolution pictures from the 32.5-megapixel EOS 90D can be cropped, rotated, and resized with image quality detailed enough for large prints. Find scenes within a scene and adjust your composition for the perfect result. Reveal the moments itâ€™s impossible to see with the naked eye, shooting 32.5-megapixel images at up to 10 frames per second. High ISO sensitivities (up to ISO 25,600) let you freeze action with breathtakingly fast shutter speeds, as a quick as 1/8000sec. The EOS 90D has a bright, approx.100% coverage optical viewfinder that lets you view action as it happens and makes it easier to track fast-moving subjects, such as birds in flight. An intelligent customizable display shows key shooting information, so you always know whatâ€™s happening even when the pressure is on. EOS 90Dâ€™s Vari-Angle touchscreen lets you shoot comfortably from different angles. You can focus and shoot with a single tap, making this a very intuitive way to work. Even the quickest subjects are tracked and kept pin-sharp, thanks to an advanced autofocusing system. 45 cross-type AF points work with a 220,000-pixel RGB+IR exposure sensor for outstanding low-light sensitivity as well as subject recognition. The EOS 90D is the latest in a long line of DSLRs from Canon, each one a refinement and evolution on the last. This re-assuring yet customisable design feels instinctive from the moment you pick it up â€“ controls fall perfectly under fingers and thumbs and the camera is very well balanced with both long telephoto and short, wide-angle lenses from Canonâ€™s extensive range of optics. Built-in Bluetooth and Wi-Fi adds another dimension to your creativity. The EOS 90D works together with smart devices running the Canon Camera Connect app* to make it easy to share images via messaging and social media. Itâ€™s also possible to control the camera remotely, for alternative viewpoints. The EOS 90D is superb filmmaking tool, with the ability to shoot resolutions up to 4K and frame rates up to 120p in Full HD mode. Our superb Dual Pixel CMOS AF focusing system keeps things looking sharp and cinematic. Microphone and headphone connections let you capture a soundtrack thatâ€™s every bit as good as the imagery.</div></div>', 'ZR2761.jpg', 'canon-eos-90d-32.5mp-dslr-camera-with-18-55mm-stm-lens-16107638812', NULL, '2022-11-19 15:19:07'),
(4, 2, 8, 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip', 125000, NULL, 125000, 'Apple', 'This exclusive Apple Macbook Air (MGN63) comes with 01 year International Limited Warranty (Terms & Condition Apply As Per Apple)', '<div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 20px; line-height: 26px;\">Description</h2></div><div class=\"full-description\" itemprop=\"description\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 20px; line-height: 26px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Apple MacBook Air 13.3-Inch&nbsp;Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD&nbsp;(MGN63) Space Gray</span></h2><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; color: rgb(1, 19, 45); line-height: 26px; text-align: justify;\">Apple\'s thinnest, lightest notebook, completely transformed by the Apple M1 chip. CPU speeds up to 3.5x faster. GPU speeds up to 5x faster. Our most advanced Neural Engine for up to 9x faster machine learning. The longest battery life ever in a MacBook Air. And a silent, fanless design. This much power has never been this ready to go.&nbsp;Itâ€™s here. Our first chip designed specifically for Mac. Packed with an astonishing 16 billion transistors, the Apple M1 system on a chip (SoC) integrates the CPU, GPU, Neural Engine, I/O, and so much more onto a single tiny chip. With incredible performance, custom technologies, and industry-leading power efficiency,1 M1 is not just a next step for Mac â€” itâ€™s another level entirely.M1 has the fastest CPU weâ€™ve ever made. With that kind of processing speed, MacBook Air can take on new extraordinarily intensive tasks like professional-quality editing and action-packed gaming. But the 8â€‘core CPU on M1 isnâ€˜t just up to 3.5x faster than the previous generation2 â€” it balances high-performance cores with efficiency cores that can still crush everyday jobs while using just a tenth of the power.Up to 7-core GPUThe GPU in M1 puts MacBook Air in a class of its own. M1 features the worldâ€˜s fastest integrated graphics in a personal computer.8 Thatâ€™s up to 5x faster graphics performance compared with the previous generation.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; color: rgb(1, 19, 45); line-height: 26px; text-align: justify;\">Incredible graphics performanceMacBook Air can take on more graphics-intensive projects than ever. For the first time, content creators can edit and seamlessly play back multiple streams of fullâ€‘quality 4K video without dropping a frame.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; color: rgb(1, 19, 45); line-height: 26px; text-align: justify;\">Apps on MacBook Air can use machine learning (ML) to automatically retouch photos like a pro, make smart tools such as magic wands and audio filters more accurate at autoâ€‘detection, and so much more. Thatâ€™s not just brain power â€” thatâ€™s the power of a full stack of ML technologies.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; color: rgb(1, 19, 45); line-height: 26px; text-align: justify;\">Developed to unlock the potential of the M1 chip, macOS Big Sur transforms Mac with major performance benefits and so much more. Powerful updates for apps. A beautiful new design. Industry-leading privacy features and bestâ€‘inâ€‘class security. Itâ€˜s our most powerful software ever â€” running on our most advanced hardware yet.<br style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"></p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; color: rgb(1, 19, 45); line-height: 26px;\">This exclusive Apple Macbook Air (MGN63) comes with 01 year International Limited Warranty (Terms &amp; Condition Apply As Per Apple)</p></div>', 'wTu235.jpg', 'apple-macbook-air-13.3-inch-retina-display-8-core-apple-m1-chip-60194358487', NULL, '2022-11-19 15:21:47'),
(5, 2, 11, 'Sony Bravia XR 77A80J 77\" 4K Ultra HD Android Smart OLED Alexa Compatible Google TV', 85000, 2, 83300, 'Sony', 'The Sony Bravia XR 77A80J Android Smart Google Tv comes with no parts warranty.', '<div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 20px; line-height: 26px;\">Description</h2></div><div class=\"full-description\" itemprop=\"description\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 20px; line-height: 26px; text-align: justify;\">Sony Bravia XR 77A80J 77\" 4K Ultra HD Android Smart OLED Alexa Compatible Google TV</h2><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; color: rgb(1, 19, 45); line-height: 26px; text-align: justify;\">The Sony Bravia XR 77A80J 77 Inch TV comes with Cognitive Processor XR Processing Technology. It understands how humans see and hear to deliver intense contrast with pure blacks, high peak brightness, and natural colors. It also features XR TRILUMINOS PRO and XR OLED CONTRAST. It helps you feel the beauty of OLED contrast with pure blacks and lifelike brightness. It has a 76.5\" OLED display and incorporates Sony\'s XR Motion Clarity technology to digitally enhance fast-moving images to reduce blur. HDR10, HLG, and Dolby Vision compatibility offer a wide color gamut and enhanced brightness and contrast to provide vibrant, lifelike images for compatible content.</p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 18px; line-height: 24px; text-align: justify;\">Acoustic Auto Calibration</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; color: rgb(1, 19, 45); line-height: 26px; text-align: justify;\">The Sony Bravia XR 77A80J TV detects your position and optimizes sound so you\'ll enjoy the same sound quality as if you\'re sitting right in front of the TV. Sound can change depending on your room environment. Curtains, for example, absorb sound while objects in front of the TV can disturb the passage of sound, compromising the quality of what you hear. This TV detects objects and reproduces sound that\'s enhanced and optimized to your room.</p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 18px; line-height: 24px; text-align: justify;\">Voice Search and Smart Remote</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; color: rgb(1, 19, 45); line-height: 26px; text-align: justify;\">Sony Bravia XR 77A80J Smart Television features Smart voice control. You can find your favorite content faster than ever using the power of your voice. With Voice Search, there\'s no more complicated navigation or tiresome typing you just have to ask. All your connected devices can be controlled with our smart commander. One button access to video-on-demand services brings shows and movies into your room in seconds.</p><h3 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 18px; line-height: 24px; text-align: justify;\">Google TV</h3><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; color: rgb(1, 19, 45); line-height: 26px; text-align: justify;\">The Sony Bravia XR 77A80J lets you browse 700,000+ movies and TV episodes from across your streaming services, all in one place and organized into topics and genres based on what interests you. Searching is easy – just ask Google. Press the Google Assistant button on your remote and try saying “find action movies” to search across your favorite apps.</p></div>', 'X9C848.jpg', 'sony-bravia-xr-77a80j-77\"-4k-ultra-hd-android-smart-oled-alexa-compatible-google-tv-94109862677', NULL, '2022-11-19 15:24:21'),
(6, 2, 13, 'Logitech G331 3.5mm Multi Platform Gaming Headphone Black', 11530, NULL, 11530, 'Logitech', 'The latest price of Logitech G903 Lightspeed HERO RGB Wireless Gaming Mouse in Bangladesh is 11,000৳. You can buy the Logitech G903 Lightspeed HERO RGB Wireless Gaming Mouse at best price from our website or visit any of our showrooms.', '<div class=\"section-head\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 20px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 20px; line-height: 26px;\">Description</h2></div><div class=\"full-description\" itemprop=\"description\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 24px; color: rgb(0, 0, 0); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px;\"><h2 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding: 0px; font-size: 20px; line-height: 26px; text-align: justify;\">Logitech G903 Lightspeed HERO RGB Wireless Gaming Mouse</h2><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; color: rgb(1, 19, 45); line-height: 26px; text-align: justify;\">Logitech G903 Lightspeed HERO RGB Wireless Gaming Mouse comes with Sensor: PMW3366, Resolution: 200 â€“ 12,000 dpi, Zero smoothing/acceleration/filtering, Max. acceleration: &gt;40G 3 Tested on Logitech G240 Gaming Mouse Pad, Max. speed: &gt;400 IPS 4Tested on Logitech G240 Gaming Mouse Pad. This gaming mouse featured with USB data format: 16 bits/axis, USB report rate: 1000 Hz (1ms), Wireless report rate: 1000 Hz (1ms), Wireless technology: LIGHTSPEED Wireless, Microprocessor: 32-bit ARM. This Logitech G903 Lightspeed HERO RGB Wireless Gaming Mouse compatible with Windows 7 or later, macOS 10.11 or later, Chrome OSTM. And it has 01 year warranty.</p></div>', 'W3a150.jpg', 'logitech-g331-3.5mm-multi-platform-gaming-headphone-black-63749226548', NULL, '2022-11-19 15:28:10'),
(15, 3, 3, 'RIB NECK T-SHIRT', 1850, NULL, 1850, 'ZARA', 'Since its creation, our work has been ongoing to improve it.', '<p><br></p><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Neue-Helvetica, Helvetica, Arial, &quot;sans-serif&quot;; font-size: 15px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; color: rgb(0, 0, 0); letter-spacing: 0.3px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">CERTIFICATIONS</span></span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Neue-Helvetica, Helvetica, Arial, &quot;sans-serif&quot;; font-size: 15px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; color: rgb(0, 0, 0); letter-spacing: 0.3px; width: var(--spacing-04); height: var(--spacing-04);\"></div><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Neue-Helvetica, Helvetica, Arial, &quot;sans-serif&quot;; font-size: 15px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; color: rgb(0, 0, 0); letter-spacing: 0.3px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">This product was manufactured following the Inditex Group Join Life standard. Created in 2015 as a tool for standardising criteria, it is defined based on several aspects, such as impact analysis based on the Life Cycle Assessment (LCA) methodology, initiatives that promote practices with lower impact and materials certified by specialised external companies. </span></span></div>', 'yUj172.jpg', 'rib-neck-t-shirt-23143089944', NULL, '2022-11-20 04:50:10'),
(16, 3, 9, 'EMBROIDERED SATIN BOMBER JACKET', 8300, 5, 7885, 'ZARA', 'Since its creation, our work has been ongoing to improve it.', '<p><br></p><div class=\"product-detail-extra-detail__section\" data-observer-key=\"materials\" style=\"box-sizing: border-box; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Neue-Helvetica, Helvetica, Arial, &quot;sans-serif&quot;; font-size: 15px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; color: rgb(0, 0, 0); letter-spacing: 0.3px;\"><div class=\"structured-component-text-block-subtitle\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-body-m-highlight\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-condensed); font-stretch: var(--font-stretch-condensed); line-height: var(--line-height-body-m-highlight); font-family: inherit; font-size: var(--font-size-body-m-highlight); vertical-align: initial; letter-spacing: var(--letter-spacing-body-m-highlight); text-transform: uppercase; white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\">MATERIALS</span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; width: var(--spacing-04); height: var(--spacing-04);\"></div><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">We work with monitoring programmes to ensure compliance with our social, environmental and health and safety standards for our garments.<br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\">To assess compliance, we have developed a programme of audits and continuous improvement plans.</span></span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; width: var(--spacing-04); height: var(--spacing-04);\"></div><div class=\"structured-component-text-block-subtitle\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-body-m-highlight\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-condensed); font-stretch: var(--font-stretch-condensed); line-height: var(--line-height-body-m-highlight); font-family: inherit; font-size: var(--font-size-body-m-highlight); vertical-align: initial; letter-spacing: var(--letter-spacing-body-m-highlight); text-transform: uppercase; white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\">OUTER SHELL</span></div><div class=\"structured-component-text-block-subtitle\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-body-m-highlight\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-condensed); font-stretch: var(--font-stretch-condensed); line-height: var(--line-height-body-m-highlight); font-family: inherit; font-size: var(--font-size-body-m-highlight); vertical-align: initial; letter-spacing: var(--letter-spacing-body-m-highlight); text-transform: uppercase; white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\">MAIN FABRIC</span></div><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">100% polyester</span></span></div><div class=\"structured-component-text-block-subtitle\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-body-m-highlight\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-condensed); font-stretch: var(--font-stretch-condensed); line-height: var(--line-height-body-m-highlight); font-family: inherit; font-size: var(--font-size-body-m-highlight); vertical-align: initial; letter-spacing: var(--letter-spacing-body-m-highlight); text-transform: uppercase; white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\">DETAILS</span></div><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">98% polyester · 2% elastane</span></span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; width: var(--spacing-04); height: var(--spacing-04);\"></div><div class=\"structured-component-text-block-subtitle\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-body-m-highlight\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-condensed); font-stretch: var(--font-stretch-condensed); line-height: var(--line-height-body-m-highlight); font-family: inherit; font-size: var(--font-size-body-m-highlight); vertical-align: initial; letter-spacing: var(--letter-spacing-body-m-highlight); text-transform: uppercase; white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\">LINING</span></div><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">100% polyester</span></span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; width: var(--spacing-04); height: var(--spacing-04);\"></div><div class=\"structured-component-text-block-subtitle\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-body-m-highlight\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-condensed); font-stretch: var(--font-stretch-condensed); line-height: var(--line-height-body-m-highlight); font-family: inherit; font-size: var(--font-size-body-m-highlight); vertical-align: initial; letter-spacing: var(--letter-spacing-body-m-highlight); text-transform: uppercase; white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\">FILLING</span></div><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">100% polyester</span></span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; width: var(--spacing-04); height: var(--spacing-04);\"></div></div><div class=\"product-detail-extra-detail__section\" data-observer-key=\"care\" style=\"box-sizing: border-box; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Neue-Helvetica, Helvetica, Arial, &quot;sans-serif&quot;; font-size: 15px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; color: rgb(0, 0, 0); letter-spacing: 0.3px;\"><div class=\"structured-component-text-block-subtitle\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-body-m-highlight\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-condensed); font-stretch: var(--font-stretch-condensed); line-height: var(--line-height-body-m-highlight); font-family: inherit; font-size: var(--font-size-body-m-highlight); vertical-align: initial; letter-spacing: var(--letter-spacing-body-m-highlight); text-transform: uppercase; white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\">CARE</span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; width: var(--spacing-04); height: var(--spacing-04);\"></div><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">Caring for your clothes is caring for the environment.</span></span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; width: var(--spacing-03); height: var(--spacing-03);\"></div><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">To keep your jackets and coats clean, you only need to freshen them up and go over them with a cloth or a clothes brush. This process is more gentle on fabrics and also reduces water and energy consumption when washing.</span></span></div></div>', 'aQt792.jpg', 'embroidered-satin-bomber-jacket-87205125178', NULL, '2022-11-20 04:52:52');
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `product_name`, `price`, `discount`, `after_discount`, `brand`, `short_desp`, `long_desp`, `preview`, `slug`, `created_at`, `updated_at`) VALUES
(17, 3, 14, 'SHOULDER BAG WITH KNOTS', 8300, 2, 8134, 'ZARA', 'Since its creation, our work has been ongoing to improve it.', '<div class=\"product-detail-extra-detail__section\" data-observer-key=\"materials\" style=\"box-sizing: border-box; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Neue-Helvetica, Helvetica, Arial, &quot;sans-serif&quot;; font-size: 15px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; color: rgb(0, 0, 0); letter-spacing: 0.3px;\"><div class=\"structured-component-text-block-subtitle\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-body-m-highlight\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-condensed); font-stretch: var(--font-stretch-condensed); line-height: var(--line-height-body-m-highlight); font-family: inherit; font-size: var(--font-size-body-m-highlight); vertical-align: initial; letter-spacing: var(--letter-spacing-body-m-highlight); text-transform: uppercase; white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\">MATERIALS</span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; width: var(--spacing-04); height: var(--spacing-04);\"></div><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">We work with monitoring programmes to ensure compliance with our social, environmental and health and safety standards for our garments.<br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\">To assess compliance, we have developed a programme of audits and continuous improvement plans.</span></span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; width: var(--spacing-04); height: var(--spacing-04);\"></div><div class=\"structured-component-text-block-subtitle\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-body-m-highlight\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-condensed); font-stretch: var(--font-stretch-condensed); line-height: var(--line-height-body-m-highlight); font-family: inherit; font-size: var(--font-size-body-m-highlight); vertical-align: initial; letter-spacing: var(--letter-spacing-body-m-highlight); text-transform: uppercase; white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\">OUTER SHELL</span></div><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">100% polyurethane</span></span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; width: var(--spacing-04); height: var(--spacing-04);\"></div><div class=\"structured-component-text-block-subtitle\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-body-m-highlight\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-condensed); font-stretch: var(--font-stretch-condensed); line-height: var(--line-height-body-m-highlight); font-family: inherit; font-size: var(--font-size-body-m-highlight); vertical-align: initial; letter-spacing: var(--letter-spacing-body-m-highlight); text-transform: uppercase; white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\">LINING</span></div><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">100% polyester</span></span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; width: var(--spacing-04); height: var(--spacing-04);\"></div></div><div class=\"product-detail-extra-detail__section\" data-observer-key=\"care\" style=\"box-sizing: border-box; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: Neue-Helvetica, Helvetica, Arial, &quot;sans-serif&quot;; font-size: 15px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; color: rgb(0, 0, 0); letter-spacing: 0.3px;\"><div class=\"structured-component-text-block-subtitle\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-body-m-highlight\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-condensed); font-stretch: var(--font-stretch-condensed); line-height: var(--line-height-body-m-highlight); font-family: inherit; font-size: var(--font-size-body-m-highlight); vertical-align: initial; letter-spacing: var(--letter-spacing-body-m-highlight); text-transform: uppercase; white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\">CARE</span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; width: var(--spacing-04); height: var(--spacing-04);\"></div><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">Caring for your clothes is caring for the environment.</span></span></div><div class=\"structured-component-spacer\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px; width: var(--spacing-03); height: var(--spacing-03);\"></div><div class=\"structured-component-text-block-paragraph\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\"><span class=\"structured-component-text zds-paragraph-m\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: var(--font-weight-light); font-stretch: var(--font-stretch-normal); line-height: var(--line-height-paragraph-m); font-family: inherit; font-size: var(--font-size-paragraph-m); vertical-align: initial; letter-spacing: var(--letter-spacing-paragraph-m); white-space: pre-wrap; border: 0px; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-size: 14px; vertical-align: initial; border: 0px; margin: 0px; padding: 0px;\">Simple steps like cleaning your clothing with a dry cotton cloth or a soft brush, depending on the characteristics of the product, can help you care for it. Whenever possible, try to use products that are respectful of the environment.</span></span></div></div>', 'QJA303.jpg', 'shoulder-bag-with-knots-58240148868', NULL, '2022-11-20 04:59:56'),
(18, 4, 4, 'Swivel Office Chair', 6800, NULL, 6800, 'Regal', 'Since its creation, our work has been ongoing to improve it.', '<h1 style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; outline: none; line-height: 1.2; font-size: 1.5625rem; color: rgb(72, 72, 72); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Product Details</h1><div style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none; color: rgb(72, 72, 72); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none;\">- Made of mild steel welded channel framework that ensures high load bearing</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none;\">- Zinc-phosphate coated electro-static epoxy powder oven baked paint finish that confirms anti-rust, shiny color and longevity.<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none;\">- Free fitting service by expert technicians.<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none;\">- One Year Free Service warranty for any manufacturing fault.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none;\">Product delivery duration may vary due to availability in stock.&nbsp;<br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none;\"><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none; font-weight: 700;\">Disclaimer:</span>&nbsp;The actual color of the physical product may slightly vary due to the deviation of lighting sources, photography or your device display settings.</p></div>', 'f0D374.jpg', 'swivel-office-chair-69687511024', NULL, '2022-11-20 05:14:42'),
(19, 4, 10, 'Sofa', 35200, 10, 31680, 'Regal', 'Looking for a smart, stylish and beautiful sofa to decorate your living room and waiting room?', '<h1 data-v-77d1fc1a=\"\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; outline: none; line-height: 1.3334; font-size: 1.875rem; color: rgb(17, 17, 17); letter-spacing: -0.53px; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\">Sofa</h1><div data-v-77d1fc1a=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none; color: rgb(72, 72, 72); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;\"><div data-v-77d1fc1a=\"\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none; font-size: 16px;\">Looking for a&nbsp;smart, stylish and beautiful sofa to decorate your living room and waiting room?</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none; font-size: 16px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none; font-weight: bolder;\">Do you want to make your living room more welcoming and attractive to your guests?</span></p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none; font-size: 16px;\">Here you have come to the right place!!!</p><br style=\"box-sizing: border-box; margin: 0px; padding: 0px; outline: none;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none; font-size: 16px;\">Regal, the most loved and top selling furniture brand in Bangladesh, is ready to serve you with its wide collection of modern, trendy and stylish sofa. Regal’s exquisite collection will not only meet your functional need but also fulfill your aesthetic need. Regal unique sofa collection includes Wooden Sofa, Fabric Sofa, Sofa Cum Bed, L Shape Sofa and modern sofa. These are available in two different options, namely single sofa and double sofa. Now you can get the best sofa at the most affordable price from Regal.</p></div></div>', 'Xqa973.jpg', 'sofa-32502225806', NULL, '2022-11-20 05:18:27'),
(20, 5, 5, 'Vision RC- 1.0 L -100 SS Blue (Single Pot)', 6700, 20, 5360, 'Vision', 'Minimum quantity for \"Vision Open Type Rice Cooker 2.2 Ltr\" is 1.', '<p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; color: rgb(30, 30, 30); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-family: verdana, geneva; font-size: 10pt;\">Brand: Vision</span><br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-family: verdana, geneva; font-size: 10pt;\">Item code: 75304</span><br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-family: verdana, geneva; font-size: 10pt;\">Product type: Rice cooker</span><br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-family: verdana, geneva; font-size: 10pt;\">Capacity: 2.2 Ltr.</span><br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-family: verdana, geneva; font-size: 10pt;\">Jointless Body<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\">Easy operation<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\">Non-stick two side coated high quality pot<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\">Red Colored Outer Body<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\">Rust Free<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\">LED Indicator<br style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\">Color: Red (As given picture)</span></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; color: rgb(30, 30, 30); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; text-align: justify;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-size: 10pt; font-family: verdana, geneva;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; color: rgb(255, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 18.5714px;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; color: rgb(227, 108, 10); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 19.0476px;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; background: none 0% 0% repeat scroll transparent;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; color: rgb(255, 0, 0); background: none 0% 0% repeat scroll transparent;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal; text-align: left;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; color: rgb(227, 108, 10); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 16.8667px;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; color: rgb(255, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; color: rgb(227, 108, 10); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 16.8667px;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; color: rgb(255, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal;\"><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-weight: bold;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; color: rgb(227, 108, 10); font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; line-height: 16.8667px;\"><span class=\"Apple-converted-space\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 16.8667px;\">Note:</span>&nbsp;<span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 16.8667px;\">Product delivery duration may vary due to product availability in stock.</span></span></span></strong></span></span></span></span></span></span></span></span></span></span></p><p style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; color: rgb(30, 30, 30); font-family: &quot;Times New Roman&quot;, Times, serif; font-size: 13px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 6px 0px; text-align: justify;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-size: 10pt; font-family: verdana, geneva;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; color: rgb(255, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 18.5714px;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; color: rgb(227, 108, 10); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 19.0476px;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; background: none 0% 0% repeat scroll transparent;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; margin: 0px; padding: 0px; border: 0px none; vertical-align: baseline; color: rgb(255, 0, 0); background: none 0% 0% repeat scroll transparent;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal; text-align: left;\"><span style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); box-sizing: border-box; color: rgb(227, 108, 10); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 16.8667px;\">Disclaimer: The actual color of the physical product may slightly vary due to the deviation of lighting sources, photography or your device display settings.</span></span></span></span></span></span></span></p>', 'XlR946.jpeg', 'vision-rc--1.0-l--100-ss-blue-(single-pot)-38069222405', NULL, '2022-11-20 05:21:55'),
(21, 5, 12, 'Vision Blender RE-VIS-SBL-011(Crushers)-Pro', 5600, 5, 5320, 'Vision', 'Since its creation, our work has been ongoing to improve it.', '<p>220 ~240V,&nbsp; 50Hz, 750W, fully Stainless Steel Blender.100% ABS material Plastic body with Metallic Color1.4L Juicer, 1.0L Mincer &amp; 0.5Kg Grinder Jar&nbsp;&nbsp;&nbsp;(Juicer, Grinder and Mincer) with heavy SS JarHigh quality Stainless steel blade with 6 heads.Motor overheat with low noise protection.20000 RPM &amp; energy efficient pure copper coil motor.<br></p>', 'xdB973.jpg', 'vision-blender-re-vis-sbl-011(crushers)-pro-2081080736', NULL, '2022-11-20 05:24:17'),
(22, 6, 6, 'New Qatar Football World Cup 2022 Argentina', 1950, 10, 1755, 'No Brand', 'Since its creation, our work has been ongoing to improve it.', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i2.68c3QHMWQHMWmJ\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 24px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 52px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; height: 52px; background: rgb(250, 250, 250);\">Product details of New Qatar Football World Cup 2022 Argentina Team Home Official Jersey Player Eddition Half sleeve</h2><div class=\"pdp-product-detail\" data-spm=\"product_detail\" style=\"margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><div class=\"pdp-product-desc \" style=\"margin: 0px; padding: 5px 14px 5px 24px; height: auto; overflow-y: hidden; box-sizing: border-box;\"><div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden;\"><ul class=\"\" style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Soft and smooth fabric</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Comfortable to wear</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Sleeve: Half sleeve</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Authentic</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Player Edition</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">- Size Chart</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">S - Length 27 inch, Chest 38 inch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">M - Length 28 inch, Chest 40 inch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">L - Length 29 inch, Chest 42 inch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">XL - Length 30 inch, Chest 44 inch</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">XXL - Length 31 inch, Chest 46 inch</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245);\"><span style=\"margin: 0px; padding: 0px;\"></span></div><div class=\"pdp-mod-specification\" style=\"margin: 16px 0px 0px; padding: 0px 0px 10px; border-bottom: 1px solid rgb(239, 240, 245); font-size: 14px;\"><h2 class=\"pdp-mod-section-title \" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); letter-spacing: 0px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap;\">Specifications of New Qatar Football World Cup 2022 Argentina Team Home Official Jersey Player Eddition Half sleeve</h2><div class=\"pdp-general-features\" style=\"margin: 0px; padding: 0px;\"><ul class=\"specification-keys\" style=\"margin-top: 16px; margin-right: -15px; margin-left: -15px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; height: auto; box-sizing: border-box;\"><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; box-sizing: border-box; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Brand</span><div class=\"html-content key-value\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.68c3QHMWQHMWmJ\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">No Brand</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; box-sizing: border-box; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">SKU</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">263593629_BD-1231950615</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; box-sizing: border-box; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Model</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">ARGENTINA 22 HOME AUTHENTIC JERSEY</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; box-sizing: border-box; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Top type</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">T-Shirts</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; box-sizing: border-box; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Main Material</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Polyester</div></li><li class=\"key-li\" style=\"margin: 0px 0px 8px; padding: 0px 15px; display: inline-block; box-sizing: border-box; width: 490px; vertical-align: top; line-height: 18px;\"><span class=\"key-title\" style=\"margin: 0px 18px 0px 0px; padding: 0px; display: inline-block; width: 140px; vertical-align: top; color: rgb(117, 117, 117); word-break: break-word;\">Sport Type</span><div class=\"html-content key-value\" style=\"margin: 0px; padding: 0px; word-break: break-word; display: inline-block; width: 306px;\">Football</div></li></ul></div></div></div></div>', 'c5j592.jpg', 'new-qatar-football-world-cup-2022-argentina-69091430912', NULL, '2022-11-20 05:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `created_at`, `updated_at`) VALUES
(1, 'NA', NULL, NULL),
(2, 'S', NULL, NULL),
(3, 'M', NULL, NULL),
(4, 'L', NULL, NULL),
(5, 'XL', NULL, NULL),
(6, 'XXL', NULL, NULL),
(7, 'XXXL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_img`, `created_at`, `updated_at`) VALUES
(1, 1, 'watch', 'ok7494.jpg', NULL, '2022-10-26 14:17:51'),
(2, 2, 'camera', 'uDQ709.jpg', NULL, '2022-10-26 14:18:39'),
(3, 3, 'T-Shirt', 'S8b504.jpg', NULL, '2022-10-26 14:20:37'),
(4, 4, 'Chair', 'LdC621.jpg', NULL, '2022-10-26 14:21:15'),
(5, 5, 'Rice Cooker', 'iUg494.jpg', NULL, '2022-10-26 14:21:39'),
(6, 6, 'Jersey', 'vOp911.jpg', NULL, '2022-10-26 14:22:04'),
(7, 1, 'Headphone', 'lpA857.jpg', NULL, '2022-10-26 14:26:02'),
(8, 2, 'Laptop', 'mbf290.jpg', NULL, '2022-10-26 14:28:18'),
(9, 3, 'Jacket', '3HX761.jpg', NULL, '2022-10-26 14:31:52'),
(10, 4, 'Shofa', '864275.jpg', NULL, '2022-10-26 14:33:17'),
(11, 2, 'TV', 'GLW358.jpg', NULL, '2022-10-26 14:34:46'),
(12, 5, 'Blender', 'FaF645.jpg', NULL, '2022-10-26 14:36:54'),
(13, 2, 'Mouse', 'r5W141.jpg', NULL, '2022-10-26 14:39:22'),
(14, 3, 'Ladies Bag', 'ORV599.jpg', NULL, '2022-10-26 14:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `product_id`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 1, 'tjU414.jpg', '2022-11-19 15:09:23', NULL),
(2, 1, 'u5w917.jpg', '2022-11-19 15:09:23', NULL),
(3, 1, 'PX3141.jpg', '2022-11-19 15:09:23', NULL),
(4, 2, 'Ai7289.jpg', '2022-11-19 15:12:44', NULL),
(5, 2, 'F1w942.jpg', '2022-11-19 15:12:44', NULL),
(6, 2, 'TD9193.jpg', '2022-11-19 15:12:44', NULL),
(7, 3, 'e54319.jpg', '2022-11-19 15:19:07', NULL),
(8, 3, 'dJv806.jpg', '2022-11-19 15:19:07', NULL),
(9, 3, 'fRZ577.jpg', '2022-11-19 15:19:07', NULL),
(10, 3, 'HR5543.jpg', '2022-11-19 15:19:07', NULL),
(11, 4, '12a639.jpg', '2022-11-19 15:21:47', NULL),
(12, 4, 'zUy459.jpg', '2022-11-19 15:21:47', NULL),
(13, 4, '8Yg784.jpg', '2022-11-19 15:21:47', NULL),
(14, 5, 'QCC213.jpg', '2022-11-19 15:24:21', NULL),
(15, 5, '3Q2896.jpg', '2022-11-19 15:24:21', NULL),
(16, 5, 'Jvj804.jpg', '2022-11-19 15:24:21', NULL),
(17, 5, 'gOf355.jpg', '2022-11-19 15:24:21', NULL),
(18, 6, 'CTv287.jpg', '2022-11-19 15:28:10', NULL),
(19, 6, 'KUM720.jpg', '2022-11-19 15:28:10', NULL),
(20, 6, 'tDE915.jpg', '2022-11-19 15:28:10', NULL),
(21, 6, 'aEH380.jpg', '2022-11-19 15:28:10', NULL),
(24, 15, 'N2y240.jpg', '2022-11-20 04:50:10', NULL),
(25, 15, 'pJ4622.jpg', '2022-11-20 04:50:10', NULL),
(26, 16, 'NCB707.jpg', '2022-11-20 04:52:52', NULL),
(27, 16, 'wBB211.jpg', '2022-11-20 04:52:52', NULL),
(28, 16, 'G3R962.jpg', '2022-11-20 04:52:52', NULL),
(29, 17, 'tjG669.jpg', '2022-11-20 04:59:56', NULL),
(30, 17, 'iVA397.jpg', '2022-11-20 04:59:56', NULL),
(31, 17, 'GrO644.jpg', '2022-11-20 04:59:56', NULL),
(32, 18, 'GWR773.jpg', '2022-11-20 05:14:42', NULL),
(33, 18, 'Suy114.jpg', '2022-11-20 05:14:42', NULL),
(34, 18, 'n9Z443.jpg', '2022-11-20 05:14:42', NULL),
(35, 19, 'Pbx480.jpg', '2022-11-20 05:18:27', NULL),
(36, 19, 'Kml151.jpg', '2022-11-20 05:18:27', NULL),
(37, 19, '9za237.jpg', '2022-11-20 05:18:27', NULL),
(38, 20, 'HGv632.jpeg', '2022-11-20 05:21:55', NULL),
(39, 20, '3iX280.jpg', '2022-11-20 05:21:56', NULL),
(40, 20, 'SjU658.jpg', '2022-11-20 05:21:56', NULL),
(41, 21, 'bDm617.jpg', '2022-11-20 05:24:17', NULL),
(42, 21, 'jKE896.jpg', '2022-11-20 05:24:17', NULL),
(43, 21, 'ycV668.jpg', '2022-11-20 05:24:17', NULL),
(44, 21, 'qgZ992.jpg', '2022-11-20 05:24:17', NULL),
(45, 22, 'ndR868.jpg', '2022-11-20 05:28:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Wade Cohen', 'nyjefegut@mailinator.com', NULL, '$2y$10$mlqkgqoDPrWoXVa9lNv2TOI2Ax2ORpULeZGpmsPhqgrJeplFXpDBi', NULL, NULL, '2022-10-24 00:36:08', '2022-10-24 00:36:08'),
(5, 'Martina Gentry', 'nugizic@mailinator.com', NULL, '$2y$10$WnI3Lt6xLVj6I5Mr5U2C3ek/fQEHZ/pR9qMppeN8aYT6uJHMgK0DC', NULL, NULL, '2022-10-25 21:57:40', '2022-10-25 21:57:40'),
(6, 'Rinah Burton', 'robigesynu@mailinator.com', NULL, '$2y$10$f5v4wGnNj3KtxRS7XS45A.NeT1mAUzUDEDyjnBcWnQGp6Fsu2n60a', NULL, NULL, '2022-10-26 12:39:13', '2022-10-26 12:39:13'),
(7, 'Md. Sohag', 'sohag@gmail.com', NULL, '$2y$10$.KvK9gkOGgQ9KM9gEnz0/.to9rn773cRQoCfzD2V7EBT9CIKXG33a', NULL, 'Onis5xo5rTqWNJQTHmH7PG3MFGwNCRFGBVsVp3CFPLjeCyyqFkEJejwQhkPv', '2022-11-19 15:06:03', '2022-11-19 15:06:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerlogins`
--
ALTER TABLE `customerlogins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thumbnails`
--
ALTER TABLE `thumbnails`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customerlogins`
--
ALTER TABLE `customerlogins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
