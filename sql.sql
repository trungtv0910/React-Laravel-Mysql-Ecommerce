-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 05:26 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_react_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Áo Quần', 0, 'ao-quan', '2022-05-30 09:59:55', '2022-05-09 01:42:45', '2022-05-30 09:59:55'),
(2, 'Áo Quần Âu', 1, 'ao-quan-au', '2022-05-13 02:36:35', '2022-05-09 01:53:17', '2022-05-13 02:36:35'),
(3, 'Nam Giới', 0, 'nam-gioi', NULL, '2022-05-09 01:53:39', '2022-06-17 11:11:00'),
(4, 'Nữ Giới', 0, 'nu-gioi', NULL, NULL, '2022-06-17 11:11:43'),
(5, 'Áo Tây , Guày Tây', 4, 'Tay-s', '2022-05-13 01:40:24', NULL, '2022-05-13 01:40:24'),
(6, 'Quần Tây Đem của bọn tây lông', 2, 'quan-tay-dem-cua-bon-tay-long', NULL, '2022-05-09 02:46:03', '2022-05-09 02:46:03'),
(7, 'IrRRKgZOnS', 1, 'fhefyzw8zo', '2022-05-13 01:59:15', NULL, '2022-05-13 01:59:15'),
(8, 'Claude', 1, 'liliane', '2022-05-13 01:59:15', '2022-05-09 03:19:10', '2022-05-13 01:59:15'),
(9, 'Hilton', 2, 'alessia', NULL, '2022-05-09 03:19:10', '2022-05-09 03:19:10'),
(10, 'Della', 2, 'wilber', NULL, '2022-05-09 03:19:10', '2022-05-09 03:19:10'),
(11, 'Gwendolyn', 2, 'cortney', NULL, '2022-05-09 03:19:10', '2022-05-09 03:19:10'),
(12, 'Brock', 2, 'alec', NULL, '2022-05-09 03:19:10', '2022-05-09 03:19:10'),
(13, 'Mandy Wisozk', 67, 'mandy-wisozk', NULL, '2022-05-09 03:21:23', '2022-05-09 03:21:23'),
(14, 'Trẻ Em', 0, 'tre-em', NULL, '2022-05-09 03:21:23', '2022-06-17 11:11:55'),
(15, 'Skyla Bruen', 0, 'skyla-bruen', '2022-05-13 02:28:58', '2022-05-09 03:21:23', '2022-05-13 02:28:58'),
(16, 'Xander Kiehn', 0, 'xander-kiehn', '2022-05-13 01:51:15', '2022-05-09 03:21:23', '2022-05-13 01:51:15'),
(17, 'Lemuel McClure', 1, 'lemuel-mcclure', '2022-05-13 01:59:15', '2022-05-09 03:21:23', '2022-05-13 01:59:15'),
(18, 'Darryl Stokes', 1, 'darryl-stokes', NULL, '2022-05-09 03:25:00', '2022-05-11 02:21:03'),
(19, 'Eloise Funk II', 3, 'eloise-funk-ii', '2022-05-13 02:36:35', '2022-05-09 03:25:00', '2022-05-13 02:36:35'),
(20, 'Quần Nam', 3, 'quan-nam', NULL, '2022-05-09 03:25:00', '2022-06-17 11:11:12'),
(21, 'Miss Wava Jakubowski', 4, 'miss-wava-jakubowski', '2022-05-12 02:34:37', '2022-05-09 03:25:00', '2022-05-12 02:34:37'),
(22, 'Arden Ledner', 2, 'arden-ledner', NULL, '2022-05-09 03:25:00', '2022-05-09 03:25:00'),
(23, 'Mr. Pedro Bernhard', 3, 'mr-pedro-bernhard', '2022-05-12 02:38:02', '2022-05-09 03:25:00', '2022-05-12 02:38:02'),
(24, 'Curt Hauck', 2, 'curt-hauck', NULL, '2022-05-09 03:25:00', '2022-05-09 03:25:00'),
(25, 'Eliseo Gorczany', 3, 'eliseo-gorczany', '2022-05-12 01:45:01', '2022-05-09 03:25:00', '2022-05-12 01:45:01'),
(26, 'Prof. Giles Konopelski', 16, 'prof-giles-konopelski', '2022-05-12 02:30:18', '2022-05-09 03:25:00', '2022-05-12 02:30:18'),
(27, 'Ciara Murazik', 2, 'ciara-murazik', NULL, '2022-05-09 03:25:00', '2022-05-09 03:25:00'),
(28, 'Adela McCullough', 4, 'adela-mccullough', '2022-05-13 01:39:52', '2022-05-09 03:25:00', '2022-05-13 01:39:52'),
(29, 'Dr. Will Ruecker', 2, 'dr-will-ruecker', NULL, '2022-05-09 03:25:00', '2022-05-09 03:25:00'),
(30, 'Maia Wolf', 16, 'maia-wolf', '2022-05-12 02:33:31', '2022-05-09 03:25:00', '2022-05-12 02:33:31'),
(31, 'Mrs. Hettie Marquardt Jr.', 2, 'mrs-hettie-marquardt-jr', NULL, '2022-05-09 03:25:00', '2022-05-09 03:25:00'),
(32, 'Jarod Wisozk Jr.', 16, 'jarod-wisozk-jr', '2022-05-12 02:27:16', '2022-05-09 03:25:00', '2022-05-12 02:27:16'),
(33, 'Mũ Phốt 2022', 0, 'mu-phot-2022', '2022-05-20 03:16:23', '2022-05-10 00:13:03', '2022-05-20 03:16:23'),
(34, 'Bánh Mì', 16, 'banh-mi', '2022-05-20 03:16:23', '2022-05-11 06:19:02', '2022-05-20 03:16:23'),
(35, 'xin chào', 0, 'xin-chao', '2022-05-13 02:28:58', '2022-05-12 08:16:08', '2022-05-13 02:28:58'),
(36, 'trung văn A', 3, 'trung-van-a', '2022-05-12 08:16:27', '2022-05-12 08:16:21', '2022-05-12 08:16:27'),
(37, 'Teossssss', 0, 'teossssss', '2022-05-20 10:08:26', '2022-05-20 10:08:17', '2022-05-20 10:08:26'),
(38, 'Teo12312312', 0, 'teo12312312', '2022-06-17 11:12:14', '2022-06-08 07:56:08', '2022-06-17 11:12:14'),
(39, 'Áo Nam', 3, 'ao-nam', NULL, '2022-06-17 11:11:26', '2022-06-17 11:11:26'),
(40, 'Áo Phông Nữ', 4, 'ao-phong-nu', NULL, '2022-06-17 11:12:30', '2022-06-17 11:12:30'),
(41, 'Quần Sơ Mi Nữ', 4, 'quan-so-mi-nu', NULL, '2022-06-17 11:13:04', '2022-06-17 11:13:04'),
(42, 'Đồ Chơi', 14, 'do-choi', NULL, '2022-06-17 11:13:21', '2022-06-17 11:16:06');

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
(5, '2022_05_09_081057_create_categories_table', 1),
(6, '2022_05_14_084949_create_products_table', 2),
(7, '2022_05_14_085625_create_table_product_images', 3),
(8, '2022_05_14_085908_create_product_tags', 3),
(9, '2022_05_14_090144_create_tag', 3),
(10, '2022_05_16_085735_create_product_category', 4),
(11, '2022_05_17_082541_add_desc_to_product', 5),
(12, '2022_05_30_140338_create_role_user', 6),
(13, '2022_05_30_140554_create_roles_table', 6),
(14, '2022_05_30_140758_create_permission_role', 7),
(15, '2022_05_30_140912_create_permissions_table', 7),
(16, '2022_06_01_094325_add_column_delete_at', 8),
(17, '2022_06_08_161659_create_session_users_table', 9),
(18, '2022_06_09_105939_create_todo', 10),
(19, '2022_06_14_090817_create_orders_table', 11),
(20, '2022_06_14_091611_order_detail', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `price`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(9, '1609110', '1', 10, '2022-06-14 04:29:53', '2022-06-14 04:29:53'),
(10, '998000', '1', 10, '2022-06-14 04:30:41', '2022-06-14 04:30:41'),
(11, '998000', '1', 10, '2022-06-14 04:32:11', '2022-06-14 04:32:11'),
(12, '2596000', '1', 10, '2022-06-14 04:39:40', '2022-06-14 04:39:40'),
(13, '3594000', '1', 10, '2022-06-14 04:45:03', '2022-06-14 04:45:03'),
(14, '998000', '1', 10, '2022-06-14 04:48:45', '2022-06-14 04:48:45'),
(15, '998000', '1', 10, '2022-06-14 04:48:52', '2022-06-14 04:48:52'),
(16, '600000', '1', 10, '2022-06-14 04:49:20', '2022-06-14 04:49:20'),
(17, '600000', '1', 10, '2022-06-14 04:51:58', '2022-06-14 04:51:58'),
(18, '600000', '1', 10, '2022-06-14 04:52:23', '2022-06-14 04:52:23'),
(19, '600000', '1', 10, '2022-06-14 04:52:38', '2022-06-14 04:52:38'),
(20, '600000', '1', 10, '2022-06-14 04:53:47', '2022-06-14 04:53:47'),
(21, '600000', '1', 10, '2022-06-14 04:54:07', '2022-06-14 04:54:07'),
(22, '600000', '1', 10, '2022-06-14 04:54:27', '2022-06-14 04:54:27'),
(23, '600000', '1', 10, '2022-06-14 04:55:13', '2022-06-14 04:55:13'),
(24, '600000', '1', 10, '2022-06-14 04:55:35', '2022-06-14 04:55:35'),
(25, '600000', '1', 10, '2022-06-14 04:56:06', '2022-06-14 04:56:06'),
(26, '1996000', '1', 10, '2022-06-14 04:57:00', '2022-06-14 04:57:00'),
(27, '1996000', '1', 10, '2022-06-14 04:57:52', '2022-06-14 04:57:52'),
(28, '1996000', '1', 10, '2022-06-14 04:58:26', '2022-06-14 04:58:26'),
(29, '3992000', '1', 10, '2022-06-14 07:33:24', '2022-06-14 07:33:24'),
(30, '2397000', '1', 10, '2022-06-14 09:15:08', '2022-06-14 09:15:08'),
(31, '499000', '1', 10, '2022-06-14 10:32:48', '2022-06-14 10:32:48'),
(32, '998000', '1', 10, '2022-06-14 16:41:39', '2022-06-14 16:41:39'),
(33, '998000', '1', 10, '2022-06-17 02:41:34', '2022-06-17 02:41:34'),
(34, '998000', '1', 10, '2022-06-17 02:43:53', '2022-06-17 02:43:53'),
(35, '998000', '1', 10, '2022-06-17 02:44:00', '2022-06-17 02:44:00'),
(36, '998000', '1', 10, '2022-06-17 03:00:25', '2022-06-17 03:00:25'),
(37, '998000', '1', 10, '2022-06-17 03:00:33', '2022-06-17 03:00:33'),
(38, '998000', '1', 10, '2022-06-17 03:02:31', '2022-06-17 03:02:31'),
(39, '998000', '1', 10, '2022-06-17 03:03:08', '2022-06-17 03:03:08'),
(40, '998000', '1', 10, '2022-06-17 03:04:56', '2022-06-17 03:04:56'),
(41, '998000', '1', 2, '2022-06-17 03:06:40', '2022-06-17 03:06:40'),
(42, '1497000', '1', 1, '2022-06-17 03:21:02', '2022-06-17 03:21:02'),
(43, '998000', '1', 1, '2022-06-17 03:27:22', '2022-06-17 03:27:22'),
(44, '998000', '1', 1, '2022-06-17 03:32:11', '2022-06-17 03:32:11'),
(45, '998000', '1', 1, '2022-06-17 03:33:59', '2022-06-17 03:33:59'),
(46, '998000', '1', 1, '2022-06-17 03:34:14', '2022-06-17 03:34:14'),
(47, '998000', '1', 1, '2022-06-17 03:34:37', '2022-06-17 03:34:37'),
(48, '998000', '1', 1, '2022-06-17 03:40:23', '2022-06-17 03:40:23'),
(49, '998000', '1', 1, '2022-06-17 03:40:41', '2022-06-17 03:40:41'),
(50, '503444', '1', 2, '2022-06-17 03:41:42', '2022-06-17 03:41:42'),
(51, '1996000', '1', 2, '2022-06-17 03:46:21', '2022-06-17 03:46:21'),
(52, '600000', '1', 1, '2022-06-17 03:52:27', '2022-06-17 03:52:27'),
(53, '3101666', '1', 3, '2022-06-18 16:50:52', '2022-06-18 16:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `product_id`, `quantity`, `price`, `attributes`, `created_at`, `updated_at`) VALUES
(8, 1, 12, '200000', 'màu đỏ', '2022-06-14 03:25:29', '2022-06-14 03:25:29'),
(11, 1, 12, '200000', 'màu đỏ', '2022-06-14 04:32:11', '2022-06-14 04:32:11'),
(12, 14, 2, '499000', 'Color: Size:', '2022-06-14 04:39:41', '2022-06-14 04:39:41'),
(12, 23, 2, '300000', 'Color:Yellow Size:L', '2022-06-14 04:39:41', '2022-06-14 04:39:41'),
(12, 14, 2, '499000', 'Color: Size:L', '2022-06-14 04:39:41', '2022-06-14 04:39:41'),
(13, 14, 2, '499000', 'Color: Size:', '2022-06-14 04:45:03', '2022-06-14 04:45:03'),
(13, 23, 2, '300000', 'Color:Yellow Size:L', '2022-06-14 04:45:03', '2022-06-14 04:45:03'),
(13, 14, 2, '499000', 'Color: Size:L', '2022-06-14 04:45:03', '2022-06-14 04:45:03'),
(13, 3, 2, '499000', 'Color:Green Size:M', '2022-06-14 04:45:03', '2022-06-14 04:45:03'),
(14, 3, 2, '499000', 'Color: Size:', '2022-06-14 04:48:45', '2022-06-14 04:48:45'),
(15, 3, 2, '499000', 'Color: Size:', '2022-06-14 04:48:52', '2022-06-14 04:48:52'),
(16, 23, 2, '300000', 'Color:Red Size:L', '2022-06-14 04:49:20', '2022-06-14 04:49:20'),
(17, 23, 2, '300000', 'Color:Red Size:L', '2022-06-14 04:51:58', '2022-06-14 04:51:58'),
(18, 23, 2, '300000', 'Color:Red Size:L', '2022-06-14 04:52:23', '2022-06-14 04:52:23'),
(19, 23, 2, '300000', 'Color:Red Size:L', '2022-06-14 04:52:38', '2022-06-14 04:52:38'),
(20, 23, 2, '300000', 'Color:Red Size:L', '2022-06-14 04:53:47', '2022-06-14 04:53:47'),
(21, 23, 2, '300000', 'Color:Red Size:L', '2022-06-14 04:54:07', '2022-06-14 04:54:07'),
(22, 23, 2, '300000', 'Color:Red Size:L', '2022-06-14 04:54:27', '2022-06-14 04:54:27'),
(23, 23, 2, '300000', 'Color:Red Size:L', '2022-06-14 04:55:13', '2022-06-14 04:55:13'),
(24, 23, 2, '300000', 'Color:Red Size:L', '2022-06-14 04:55:35', '2022-06-14 04:55:35'),
(25, 23, 2, '300000', 'Color:Red Size:L', '2022-06-14 04:56:06', '2022-06-14 04:56:06'),
(26, 12, 2, '499000', 'Color:Green Size:L', '2022-06-14 04:57:00', '2022-06-14 04:57:00'),
(26, 2, 2, '499000', 'Color: Size:', '2022-06-14 04:57:00', '2022-06-14 04:57:00'),
(27, 12, 2, '499000', 'Color:Green Size:L', '2022-06-14 04:57:52', '2022-06-14 04:57:52'),
(27, 2, 2, '499000', 'Color: Size:', '2022-06-14 04:57:52', '2022-06-14 04:57:52'),
(28, 12, 2, '499000', 'Color:Green Size:L', '2022-06-14 04:58:26', '2022-06-14 04:58:26'),
(28, 2, 2, '499000', 'Color: Size:', '2022-06-14 04:58:26', '2022-06-14 04:58:26'),
(29, 8, 3, '499000', 'Color: Size:', '2022-06-14 07:33:24', '2022-06-14 07:33:24'),
(29, 8, 3, '499000', 'Color: Size:L', '2022-06-14 07:33:24', '2022-06-14 07:33:24'),
(29, 13, 2, '499000', 'Color:Yellow Size:XL', '2022-06-14 07:33:24', '2022-06-14 07:33:24'),
(30, 3, 1, '499000', 'Color: Size:', '2022-06-14 09:15:08', '2022-06-14 09:15:08'),
(30, 12, 2, '499000', 'Color:Green Size:L', '2022-06-14 09:15:08', '2022-06-14 09:15:08'),
(30, 23, 3, '300000', 'Color: Size:', '2022-06-14 09:15:08', '2022-06-14 09:15:08'),
(31, 3, 1, '499000', 'Color: Size:', '2022-06-14 10:32:48', '2022-06-14 10:32:48'),
(32, 3, 1, '499000', 'Color: Size:', '2022-06-14 16:41:39', '2022-06-14 16:41:39'),
(32, 3, 1, '499000', 'Color: Size:', '2022-06-14 16:41:39', '2022-06-14 16:41:39'),
(33, 8, 1, '499000', 'Color: Size:L', '2022-06-17 02:41:34', '2022-06-17 02:41:34'),
(33, 12, 1, '499000', 'Color:Green Size:L', '2022-06-17 02:41:34', '2022-06-17 02:41:34'),
(34, 8, 1, '499000', 'Color: Size:L', '2022-06-17 02:43:53', '2022-06-17 02:43:53'),
(34, 12, 1, '499000', 'Color:Green Size:L', '2022-06-17 02:43:53', '2022-06-17 02:43:53'),
(35, 8, 1, '499000', 'Color: Size:L', '2022-06-17 02:44:00', '2022-06-17 02:44:00'),
(35, 12, 1, '499000', 'Color:Green Size:L', '2022-06-17 02:44:00', '2022-06-17 02:44:00'),
(36, 8, 1, '499000', 'Color: Size:L', '2022-06-17 03:00:26', '2022-06-17 03:00:26'),
(36, 12, 1, '499000', 'Color:Green Size:L', '2022-06-17 03:00:26', '2022-06-17 03:00:26'),
(37, 8, 1, '499000', 'Color: Size:L', '2022-06-17 03:00:33', '2022-06-17 03:00:33'),
(37, 12, 1, '499000', 'Color:Green Size:L', '2022-06-17 03:00:33', '2022-06-17 03:00:33'),
(38, 8, 1, '499000', 'Color: Size:L', '2022-06-17 03:02:31', '2022-06-17 03:02:31'),
(38, 12, 1, '499000', 'Color:Green Size:L', '2022-06-17 03:02:31', '2022-06-17 03:02:31'),
(39, 8, 1, '499000', 'Color: Size:L', '2022-06-17 03:03:08', '2022-06-17 03:03:08'),
(39, 12, 1, '499000', 'Color:Green Size:L', '2022-06-17 03:03:08', '2022-06-17 03:03:08'),
(40, 8, 1, '499000', 'Color: Size:L', '2022-06-17 03:04:56', '2022-06-17 03:04:56'),
(40, 12, 1, '499000', 'Color:Green Size:L', '2022-06-17 03:04:56', '2022-06-17 03:04:56'),
(41, 8, 1, '499000', 'Color: Size:L', '2022-06-17 03:06:40', '2022-06-17 03:06:40'),
(41, 12, 1, '499000', 'Color:Green Size:L', '2022-06-17 03:06:40', '2022-06-17 03:06:40'),
(42, 3, 1, '499000', 'Color:Green Size:', '2022-06-17 03:21:02', '2022-06-17 03:21:02'),
(42, 14, 2, '499000', 'Color:Red Size:M', '2022-06-17 03:21:02', '2022-06-17 03:21:02'),
(43, 12, 1, '499000', 'Color:Green Size:', '2022-06-17 03:27:22', '2022-06-17 03:27:22'),
(43, 8, 1, '499000', 'Color: Size:L', '2022-06-17 03:27:22', '2022-06-17 03:27:22'),
(44, 12, 1, '499000', 'Color:Green Size:', '2022-06-17 03:32:11', '2022-06-17 03:32:11'),
(44, 8, 1, '499000', 'Color: Size:L', '2022-06-17 03:32:11', '2022-06-17 03:32:11'),
(45, 12, 1, '499000', 'Color:Green Size:', '2022-06-17 03:33:59', '2022-06-17 03:33:59'),
(45, 8, 1, '499000', 'Color: Size:L', '2022-06-17 03:33:59', '2022-06-17 03:33:59'),
(46, 12, 1, '499000', 'Color:Green Size:', '2022-06-17 03:34:14', '2022-06-17 03:34:14'),
(46, 8, 1, '499000', 'Color: Size:L', '2022-06-17 03:34:14', '2022-06-17 03:34:14'),
(47, 12, 1, '499000', 'Color:Green Size:', '2022-06-17 03:34:37', '2022-06-17 03:34:37'),
(47, 8, 1, '499000', 'Color: Size:L', '2022-06-17 03:34:37', '2022-06-17 03:34:37'),
(48, 12, 1, '499000', 'Color:Green Size:', '2022-06-17 03:40:23', '2022-06-17 03:40:23'),
(48, 8, 1, '499000', 'Color: Size:L', '2022-06-17 03:40:23', '2022-06-17 03:40:23'),
(49, 12, 1, '499000', 'Color:Green Size:', '2022-06-17 03:40:41', '2022-06-17 03:40:41'),
(49, 8, 1, '499000', 'Color: Size:L', '2022-06-17 03:40:41', '2022-06-17 03:40:41'),
(50, 3, 1, '499000', 'Color: Size:', '2022-06-17 03:41:42', '2022-06-17 03:41:42'),
(50, 25, 2, '2222', 'Color:Blue Size:M', '2022-06-17 03:41:42', '2022-06-17 03:41:42'),
(51, 12, 4, '499000', 'Color:Green Size:', '2022-06-17 03:46:21', '2022-06-17 03:46:21'),
(52, 23, 2, '300000', 'Color:Yellow Size:M', '2022-06-17 03:52:27', '2022-06-17 03:52:27'),
(53, 23, 2, '300000', 'Color:Red Size:M', '2022-06-18 16:50:52', '2022-06-18 16:50:52'),
(53, 25, 3, '2222', 'Color:Black Size:M', '2022-06-18 16:50:52', '2022-06-18 16:50:52'),
(53, 14, 3, '499000', 'Color:Red Size:M', '2022-06-18 16:50:52', '2022-06-18 16:50:52'),
(53, 3, 2, '499000', 'Color:Green Size:', '2022-06-18 16:50:52', '2022-06-18 16:50:52');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `parent_id`, `key_code`, `created_at`, `updated_at`) VALUES
(1, 'category', 'category', 0, '0', '2022-03-15 19:15:09', '2022-03-15 19:15:09'),
(2, 'list', 'list', 1, 'list_category', '2022-03-15 19:15:09', '2022-03-15 19:15:09'),
(3, 'add', 'add', 1, 'add_category', '2022-03-15 19:15:09', '2022-03-15 19:15:09'),
(4, 'edit', 'edit', 1, 'edit_category', '2022-03-15 19:15:09', '2022-03-15 19:15:09'),
(5, 'delete', 'delete', 1, 'delete_category', '2022-03-15 19:15:09', '2022-03-15 19:15:09'),
(6, 'menu', 'menu', 0, '0', '2022-03-15 19:15:35', '2022-03-15 19:15:35'),
(7, 'list', 'list', 6, 'list_menu', '2022-03-15 19:15:35', '2022-03-15 19:15:35'),
(8, 'add', 'add', 6, 'add_menu', '2022-03-15 19:15:35', '2022-03-15 19:15:35'),
(9, 'edit', 'edit', 6, 'edit_menu', '2022-03-15 19:15:35', '2022-03-15 19:15:35'),
(10, 'delete', 'delete', 6, 'delete_menu', '2022-03-15 19:15:35', '2022-03-15 19:15:35'),
(11, 'slider', 'slider', 0, '0', '2022-03-15 19:15:44', '2022-03-15 19:15:44'),
(12, 'list', 'list', 11, 'list_slider', '2022-03-15 19:15:44', '2022-03-15 19:15:44'),
(13, 'add', 'add', 11, 'add_slider', '2022-03-15 19:15:44', '2022-03-15 19:15:44'),
(14, 'edit', 'edit', 11, 'edit_slider', '2022-03-15 19:15:44', '2022-03-15 19:15:44'),
(15, 'delete', 'delete', 11, 'delete_slider', '2022-03-15 19:15:44', '2022-03-15 19:15:44'),
(16, 'product', 'product', 0, '0', '2022-03-15 19:15:51', '2022-03-15 19:15:51'),
(17, 'list', 'list', 16, 'list_product', '2022-03-15 19:15:51', '2022-03-15 19:15:51'),
(18, 'add', 'add', 16, 'add_product', '2022-03-15 19:15:51', '2022-03-15 19:15:51'),
(19, 'edit', 'edit', 16, 'edit_product', '2022-03-15 19:15:51', '2022-03-15 19:15:51'),
(20, 'delete', 'delete', 16, 'delete_product', '2022-03-15 19:15:51', '2022-03-15 19:15:51'),
(21, 'setting', 'setting', 0, '0', '2022-03-15 19:15:58', '2022-03-15 19:15:58'),
(22, 'list', 'list', 21, 'list_setting', '2022-03-15 19:15:58', '2022-03-15 19:15:58'),
(23, 'add', 'add', 21, 'add_setting', '2022-03-15 19:15:58', '2022-03-15 19:15:58'),
(24, 'edit', 'edit', 21, 'edit_setting', '2022-03-15 19:15:58', '2022-03-15 19:15:58'),
(25, 'delete', 'delete', 21, 'delete_setting', '2022-03-15 19:15:58', '2022-03-15 19:15:58'),
(26, 'user', 'user', 0, '0', '2022-03-15 19:16:15', '2022-03-15 19:16:15'),
(27, 'list', 'list', 26, 'list_user', '2022-03-15 19:16:15', '2022-03-15 19:16:15'),
(28, 'add', 'add', 26, 'add_user', '2022-03-15 19:16:15', '2022-03-15 19:16:15'),
(29, 'edit', 'edit', 26, 'edit_user', '2022-03-15 19:16:15', '2022-03-15 19:16:15'),
(30, 'delete', 'delete', 26, 'delete_user', '2022-03-15 19:16:15', '2022-03-15 19:16:15'),
(31, 'role', 'role', 0, '0', '2022-03-15 19:16:28', '2022-03-15 19:16:28'),
(32, 'list', 'list', 31, 'list_role', '2022-03-15 19:16:28', '2022-03-15 19:16:28'),
(33, 'add', 'add', 31, 'add_role', '2022-03-15 19:16:28', '2022-03-15 19:16:28'),
(34, 'edit', 'edit', 31, 'edit_role', '2022-03-15 19:16:28', '2022-03-15 19:16:28'),
(35, 'delete', 'delete', 31, 'delete_role', '2022-03-15 19:16:28', '2022-03-15 19:16:28'),
(36, 'order', 'order', 0, '0', NULL, NULL),
(37, 'list', 'list', 36, 'list_order', NULL, NULL),
(38, 'delete', 'delete', 36, 'delete_order', NULL, NULL),
(39, 'edit', 'edit', 36, 'edit_order', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 1, 4, NULL, NULL),
(4, 1, 5, NULL, NULL),
(5, 1, 7, NULL, NULL),
(6, 1, 8, NULL, NULL),
(7, 1, 9, NULL, NULL),
(8, 1, 10, NULL, NULL),
(9, 1, 12, NULL, NULL),
(10, 1, 13, NULL, NULL),
(11, 1, 14, NULL, NULL),
(12, 1, 15, NULL, NULL),
(13, 2, 2, NULL, NULL),
(14, 2, 3, NULL, NULL),
(15, 2, 4, NULL, NULL),
(16, 2, 5, NULL, NULL),
(18, 1, 17, NULL, NULL),
(19, 1, 18, NULL, NULL),
(20, 1, 19, NULL, NULL),
(21, 1, 20, NULL, NULL),
(22, 2, 17, NULL, NULL),
(23, 1, 27, NULL, NULL),
(24, 1, 28, NULL, NULL),
(25, 1, 29, NULL, NULL),
(27, 2, 27, NULL, NULL),
(28, 6, 2, NULL, NULL),
(29, 6, 17, NULL, NULL),
(30, 6, 27, NULL, NULL),
(31, 7, 2, NULL, NULL),
(32, 7, 3, NULL, NULL),
(33, 7, 4, NULL, NULL),
(34, 7, 5, NULL, NULL),
(35, 7, 17, NULL, NULL),
(36, 7, 18, NULL, NULL),
(37, 7, 19, NULL, NULL),
(38, 7, 20, NULL, NULL),
(39, 7, 27, NULL, NULL),
(40, 7, 28, NULL, NULL),
(41, 7, 29, NULL, NULL),
(42, 7, 30, NULL, NULL),
(43, 6, 7, NULL, NULL),
(47, 6, 12, NULL, NULL),
(48, 1, 32, NULL, NULL),
(49, 1, 33, NULL, NULL),
(50, 1, 34, NULL, NULL),
(51, 1, 35, NULL, NULL),
(52, 1, 22, NULL, NULL),
(53, 1, 23, NULL, NULL),
(54, 1, 24, NULL, NULL),
(55, 1, 25, NULL, NULL),
(56, 2, 18, NULL, NULL),
(57, 2, 19, NULL, NULL),
(58, 8, 2, NULL, NULL),
(59, 8, 3, NULL, NULL),
(60, 8, 4, NULL, NULL),
(61, 8, 5, NULL, NULL),
(62, 8, 7, NULL, NULL),
(63, 8, 8, NULL, NULL),
(64, 8, 9, NULL, NULL),
(65, 8, 10, NULL, NULL),
(66, 8, 12, NULL, NULL),
(67, 8, 13, NULL, NULL),
(68, 8, 14, NULL, NULL),
(69, 8, 15, NULL, NULL),
(70, 8, 17, NULL, NULL),
(71, 8, 18, NULL, NULL),
(72, 8, 19, NULL, NULL),
(73, 8, 20, NULL, NULL),
(74, 9, 17, NULL, NULL),
(75, 9, 18, NULL, NULL),
(76, 9, 19, NULL, NULL),
(77, 9, 20, NULL, NULL),
(78, 9, 27, NULL, NULL),
(79, 9, 28, NULL, NULL),
(80, 9, 29, NULL, NULL),
(81, 9, 30, NULL, NULL),
(82, 1, 37, NULL, NULL),
(84, 1, 39, NULL, NULL),
(85, 1, 30, NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(43, 'App\\Models\\User', 24, 'test2@gmail.com_token', '4034f47aa25b8816a451c1583834b1b8caefb283f250cff07071983f911b9c0c', '[\"*\"]', NULL, '2022-06-10 08:49:58', '2022-06-10 08:49:58'),
(46, 'App\\Models\\User', 27, 'trungtv09102@gmail.com_token', '4e8cc54cb10f5eb7d42f0d0de84795a49fb566866a0717f89ce94d3b6fc8280a', '[\"*\"]', NULL, '2022-06-10 10:25:36', '2022-06-10 10:25:36'),
(47, 'App\\Models\\User', 28, 'thenew@gmail.com_token', '86d0ca3d19d306569fb1d2d95f249f6adf73871ca98362ccccb4a976b2b675c1', '[\"*\"]', NULL, '2022-06-10 12:43:39', '2022-06-10 12:43:39'),
(48, 'App\\Models\\User', 29, 'thenew2@gmail.com_token', '7b9f9eb4cd68e42acc6f57722659525fd366d1c4b26c5f2166ed553160bfe5ff', '[\"*\"]', NULL, '2022-06-10 12:48:33', '2022-06-10 12:48:33'),
(49, 'App\\Models\\User', 30, 'thenew3@gmail.com_token', '4dad001a02fdf0e07c8d88fa4116d8e321a629a4419071d2122687ff50046013', '[\"*\"]', NULL, '2022-06-10 12:59:00', '2022-06-10 12:59:00'),
(50, 'App\\Models\\User', 32, 'thenew4@gmail.com_token', '80ba8b8811fa7925c8f2ee344ff3ba51ea7c2f5044514a88b4bd3ab6d587ed67', '[\"*\"]', NULL, '2022-06-10 13:00:20', '2022-06-10 13:00:20'),
(51, 'App\\Models\\User', 33, 'thenew5@gmail.com_token', '5095b6ab3e02f2ac73c64eba54e587e888b7a99be3d9578f65b9ca36ef71af5e', '[\"*\"]', NULL, '2022-06-10 13:04:50', '2022-06-10 13:04:50'),
(52, 'App\\Models\\User', 34, 'thenew6@gmail.com_token', '3a0bb48f80a0ea7f9a4505a5c96a60d2ee22e83b8925d6e94d2ddd666938b1d6', '[\"*\"]', NULL, '2022-06-10 13:06:53', '2022-06-10 13:06:53'),
(53, 'App\\Models\\User', 35, 'thenew7@gmail.com_token', 'f01f7a503e57d6ba2deee273266a579a8c6571b4f78a63300f2df9407726492b', '[\"*\"]', NULL, '2022-06-10 13:07:52', '2022-06-10 13:07:52'),
(54, 'App\\Models\\User', 36, 'thenew8@gmail.com_token', '2ff20db3aea098b9e633330943c2fa2d6a17dd67ade9721a6338cc4a5de9eaf3', '[\"*\"]', NULL, '2022-06-10 13:09:40', '2022-06-10 13:09:40'),
(55, 'App\\Models\\User', 37, 'thenew9@gmail.com_token', '890c7c418491747b6dcff82f7c662294355b5a53360f19833936164d902505be', '[\"*\"]', NULL, '2022-06-10 13:12:03', '2022-06-10 13:12:03'),
(56, 'App\\Models\\User', 38, 'new@gmail.com_token', '9348c5000763c0a7b959cc290dc124b45d4bfb6aebe60c1955356470d21d33cc', '[\"*\"]', NULL, '2022-06-10 13:12:45', '2022-06-10 13:12:45'),
(57, 'App\\Models\\User', 39, 'new1@gmail.com_token', '1753326d9db067ff0ad76b8f314e7aa709eb9fc3be38b9f90e5edd7187688751', '[\"*\"]', NULL, '2022-06-10 13:17:16', '2022-06-10 13:17:16'),
(58, 'App\\Models\\User', 40, 'new2@gmail.com_token', '069b9df32806509338117513f2aa55e4b078ba20be41ea0a08f279d03cabf1b7', '[\"*\"]', NULL, '2022-06-10 13:19:26', '2022-06-10 13:19:26'),
(59, 'App\\Models\\User', 41, 'new3@gmail.com_token', '8ec6bd6e5436ed2b4b8f8fe69cde2f9c4e7b80860081eeb73bf85262d98cde65', '[\"*\"]', NULL, '2022-06-10 13:21:01', '2022-06-10 13:21:01'),
(60, 'App\\Models\\User', 42, 'xinchao_token', '5bd2e4f8e4eb00359a71fd54edf428d8923c976a9cc2bf72ada32268cec362e1', '[\"*\"]', NULL, '2022-06-10 13:23:48', '2022-06-10 13:23:48'),
(61, 'App\\Models\\User', 43, 'tung@gmail.com_token', '6b4888e973e523aa9c5e59a2c66a391ef3f1eea18127a5030e9d9687f419e8e4', '[\"*\"]', NULL, '2022-06-10 13:26:31', '2022-06-10 13:26:31'),
(62, 'App\\Models\\User', 44, 'xincao2@gmail.com_token', '74b84362cf8068e6ba158ac9634d443634c530188e9754e18ee77f781a0d8d3b', '[\"*\"]', NULL, '2022-06-10 13:28:40', '2022-06-10 13:28:40'),
(63, 'App\\Models\\User', 45, 'xinnn@gmail.com_token', '3f2e5491b2230693f0d147faa4d477c7e8da4c35895d3010881b18785719dd6a', '[\"*\"]', NULL, '2022-06-10 13:31:30', '2022-06-10 13:31:30'),
(64, 'App\\Models\\User', 46, 'tesd_token', '6fda554d869d820b4ad27bc3bd2c06c2b28773b5134de1f7f48f7bfd705eb423', '[\"*\"]', NULL, '2022-06-10 13:45:38', '2022-06-10 13:45:38'),
(65, 'App\\Models\\User', 47, 'xinchao2020@gmail.com_token', '372e7bf71b1c52c024a5f6697fc4bcee44435467e6c60c4867b86db6ace266dd', '[\"*\"]', NULL, '2022-06-10 13:49:52', '2022-06-10 13:49:52'),
(66, 'App\\Models\\User', 48, 'test222@gmail.com_token', 'e8cecde4123bf9dd383a88b6a163008e72a18f159e32d7f2b7eaf08ca11b87a5', '[\"*\"]', NULL, '2022-06-10 14:08:49', '2022-06-10 14:08:49'),
(69, 'App\\Models\\User', 10, 'token', '45eb228410229caf73bf771ac0f572fe45360969eab7edec9c08f8814e0cb841', '[\"*\"]', NULL, '2022-06-10 15:23:33', '2022-06-10 15:23:33'),
(70, 'App\\Models\\User', 10, 'token', '51b5c45ae95fbcbbb426b98d3e78fe1c6beb977b10da90f791932d0cf317cae4', '[\"*\"]', NULL, '2022-06-10 15:24:56', '2022-06-10 15:24:56'),
(71, 'App\\Models\\User', 10, 'token', '8ab8a09e10bc27a45904e191749b200164b20d2a1c7893898ef6e1e37b087e27', '[\"*\"]', NULL, '2022-06-10 15:26:21', '2022-06-10 15:26:21'),
(72, 'App\\Models\\User', 10, 'token', '021a762f05b043cdd39e0a952bc15a281603be3c64764451fa26e0b75d36d456', '[\"*\"]', NULL, '2022-06-10 15:26:43', '2022-06-10 15:26:43'),
(73, 'App\\Models\\User', 10, 'token', '5999a248328719562cac9b93c95029c6a4914e7d9f8784c8d9f20aea444bdd5c', '[\"*\"]', NULL, '2022-06-10 15:26:48', '2022-06-10 15:26:48'),
(74, 'App\\Models\\User', 10, 'token', '530b913d4c489647bdfafaae0c83a955462908f69c1eb7e53a029bf946e88bbc', '[\"*\"]', NULL, '2022-06-10 15:29:40', '2022-06-10 15:29:40'),
(78, 'App\\Models\\User', 10, 'token', '7519ce735511ce9ec115dcace4bab84ded7d109820b94b59055dd29655a1a9c2', '[\"*\"]', NULL, '2022-06-10 16:34:25', '2022-06-10 16:34:25'),
(99, 'App\\Models\\User', 49, 'test12@gmail.com_token', '7b0ba1605ac7e3208f7e7ffc3d85c3ea9233ba4871cb9d345f98c5645e1a38f6', '[\"*\"]', NULL, '2022-06-14 16:11:48', '2022-06-14 16:11:48'),
(100, 'App\\Models\\User', 26, 'token', '80f24e89bd01898f2a7ad5d7da29815e5e08d1902e8b9ab667db6e7333aff0b3', '[\"*\"]', NULL, '2022-06-14 16:12:03', '2022-06-14 16:12:03'),
(101, 'App\\Models\\User', 50, 'testa12@gmail.com_token', '1f83a747a073136a01ca2889ec7acc17e2e742cc1902537db5d457e70cdf1c88', '[\"*\"]', NULL, '2022-06-14 16:14:15', '2022-06-14 16:14:15'),
(113, 'App\\Models\\User', 26, 'token', '9ab5be0ab804aa5ff6a84d796a2e076d8025ecfc6ba82682e16ec70c2f994387', '[\"*\"]', '2022-06-15 03:36:37', '2022-06-15 03:35:37', '2022-06-15 03:36:37'),
(201, 'App\\Models\\User', 3, 'khachhang@gmail.com_token', '0c744462334df640e4e112a402bc73dc2b01c06a7782ee6ee09105ea7c09af7a', '[\"*\"]', NULL, '2022-06-18 16:49:57', '2022-06-18 16:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount`, `feature_image_path`, `feature_image_name`, `content`, `color`, `size`, `user_id`, `category_id`, `view_count`, `deleted_at`, `created_at`, `updated_at`, `desc`, `status`) VALUES
(1, 'Ms.', '499000', NULL, NULL, NULL, 'Enim tempore eos aperiam deleniti omnis. Est fugit adipisci quas nihil cupiditate. Aliquam quo et itaque quos.', '[\"Red\",\"Blue\",\"Green\",\"Black\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, '2022-06-11 16:33:07', '2022-05-14 02:44:25', '2022-06-11 16:33:07', '', NULL),
(2, 'Prof. sấd', '499000', NULL, '/storage/products_image/1/fvkl74rqVo1Y04w81AbG.png', 'profile-1.png', '<p>Et officiis libero commodi accusantium sed. Aliquid voluptatibus dolorum quas asperiores qui debitis harum velit. Eius id temporibus pariatur sapiente molestiae.</p>', '[\"Yellow\"]', '[\"S\"]', 1, 2, 50000, NULL, '2022-05-14 02:44:25', '2022-06-11 16:32:50', NULL, 0),
(3, 'Mr. mis koeua', '499000', NULL, '/storage/products_image/1/8P9ggldATMJGYbRRhpIJ.png', 'profile-2.png', '<p>Rem iste commodi ut aperiam aut asperiores consequatur iure. Porro odit odit dolorem in iusto. Omnis deleniti id enim odio tenetur error laboriosam. Ducimus nobis sequi omnis nisi veritatis.</p>', '[\"Green\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, NULL, '2022-05-14 02:44:25', '2022-06-11 16:32:28', NULL, 0),
(4, 'Mrs.', '499000', NULL, NULL, NULL, 'Quos officia quisquam non et ut quo fugit. Est fugit et et. Voluptatem ad voluptas et esse.', '[\"Gray\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, '2022-05-27 01:56:33', '2022-05-14 02:44:25', '2022-05-27 01:56:33', '', NULL),
(5, 'Dr.', '499000', NULL, NULL, NULL, 'Qui a ut maxime delectus repellat. Sint reiciendis nobis reprehenderit maxime. Ducimus et eum id.', '[\"White\"]', '[\"SX\"]', 1, 2, 50000, '2022-05-27 01:56:33', '2022-05-14 02:44:25', '2022-05-27 01:56:33', '', NULL),
(6, 'Prof.', '499000', NULL, NULL, NULL, 'Aut quaerat quos et nesciunt tempora. Et blanditiis voluptas temporibus velit incidunt quos. Est consequatur et tempora occaecati non qui assumenda eaque. Molestias rem asperiores inventore voluptatem.', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, '2022-05-27 01:56:33', '2022-05-14 02:44:25', '2022-05-27 01:56:33', '', NULL),
(7, 'Mr.', '499000', NULL, NULL, NULL, 'Quia aut et hic odio. Dolor repellat explicabo voluptates cumque unde eos. Dolores voluptatem voluptas vel delectus.', '[\"Red\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, '2022-05-27 01:56:33', '2022-05-14 02:44:25', '2022-05-27 01:56:33', '', NULL),
(8, 'Miss xinh you ma', '499000', NULL, '/storage/products_image/1/xuvLqQBRaORYEaxz5Hdw.jpg', 'arabica_xanh_mint__1__e43af474eab14141adf6cbe81a435106_6dea598c1ddb42c59ebbf52e0789604e_master.jpg', '<p>Perspiciatis culpa minus velit doloremque atque ipsam praesentium. Sunt dolor hic rerum amet illo facilis. Autem beatae qui dolores quis itaque non dolorem iure. Harum ipsum tenetur velit nisi.</p>', '[\"While\"]', '[\"SX\",\"L\",\"XL\"]', 1, 2, 50000, NULL, '2022-05-14 02:44:25', '2022-06-11 16:31:58', NULL, 0),
(9, 'Prof.', '499000', NULL, NULL, NULL, 'Ut quos placeat vitae soluta officiis. Nulla quia molestias hic. Consequatur velit eos et aliquid et aut quia.', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, '2022-05-27 01:54:39', '2022-05-14 02:44:25', '2022-05-27 01:54:39', '', NULL),
(10, 'Prof.', '499000', NULL, NULL, NULL, 'Id consectetur sit accusamus numquam nisi animi voluptatem. Eum odit libero itaque voluptatem est voluptatem sint. Eum mollitia iure ipsam omnis qui accusantium a suscipit.', '[\"Green\",\"Yellow\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, '2022-05-27 01:54:47', '2022-05-14 02:44:25', '2022-05-27 01:54:47', '', 1),
(11, 'Ms.', '499000', NULL, NULL, NULL, 'Aut hic perspiciatis quod aliquam enim. Aut quas deleniti cumque eligendi aliquam laborum et. Repudiandae qui quos et autem.', '[\"Yellow\",\"Blue\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, '2022-05-27 01:54:51', '2022-05-14 02:44:25', '2022-05-27 01:54:51', '', 0),
(12, 'Prof. sssac', '499000', NULL, '/storage/products_image/1/5tYsRckYHIFpzli07WUf.png', '2_770e04306f87478487e2d330fe004be6_master.png', '<p>Doloremque laborum harum rerum voluptas corrupti illo sed. Similique voluptas ut eum aut repellendus.</p>', '[\"Green\",\"While\"]', '[\"M\",\"L\"]', 1, 2, 50000, NULL, '2022-05-14 02:44:25', '2022-06-11 16:31:15', NULL, 1),
(13, 'Miss gò công', '499000', NULL, '/storage/products_image/1/Qrpf1BjZ35RSkBzyIuOO.jpg', 'a023_32_78039ce86ced4ba194869982bdb3382b_master.jpg', '<p>Voluptates fuga velit ut sunt atque. Quasi architecto adipisci facere quo quaerat et. Ratione quas veritatis sed facere impedit.</p>', '[\"While\",\"Yellow\"]', '[\"SX\",\"XL\",\"S\"]', 1, 2, 50000, NULL, '2022-05-14 02:44:25', '2022-06-11 16:30:47', NULL, 1),
(14, 'Dr. doctor', '499000', NULL, '/storage/products_image/1/HduVHPQXUyaqhHlcwqyh.png', '15.png', '<p>Exercitationem omnis vel est explicabo. Et numquam corporis placeat ut et accusantium id. Iure fugiat voluptates facilis ducimus dolorem sit. Mollitia aperiam enim repudiandae similique ducimus laborum tempore.</p>', '[\"Yellow\",\"Red\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, NULL, '2022-05-14 02:44:25', '2022-06-11 16:30:18', NULL, 0),
(15, 'Ms.', '499000', NULL, NULL, NULL, 'Id consectetur saepe quasi facilis nisi adipisci impedit. Neque et incidunt itaque voluptas expedita. Voluptatibus voluptatem voluptatem autem autem. Inventore aliquam doloremque eos voluptatibus veniam recusandae dicta.', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, '2022-05-27 02:00:38', '2022-05-14 02:44:25', '2022-05-27 02:00:38', '', NULL),
(16, 'Dr.', '499000', NULL, NULL, NULL, 'Dicta consectetur eum fuga quia sunt. Iusto in ullam amet consequatur quos odit. Blanditiis corrupti placeat ducimus excepturi ut velit reprehenderit.', '[\"Yellow\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, '2022-05-27 02:00:38', '2022-05-14 02:44:25', '2022-05-27 02:00:38', '', NULL),
(17, 'Mrs.', '499000', NULL, NULL, NULL, 'Est non cum accusantium iure. Ea eum numquam quia quasi omnis. Voluptate maiores error nesciunt provident.', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, '2022-05-27 02:00:23', '2022-05-14 02:44:25', '2022-05-27 02:00:23', '', NULL),
(18, 'Dr.', '499000', NULL, NULL, NULL, 'Expedita est non consequatur aliquam. Non architecto velit vitae fugiat sed odit aspernatur. Hic nostrum omnis enim non sunt eum. Praesentium consequatur quo et.', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, '2022-05-27 02:00:23', '2022-05-14 02:44:25', '2022-05-27 02:00:23', '', 0),
(19, 'Miss', '499000', NULL, NULL, NULL, 'Nisi qui velit aut et deleniti. Omnis in laboriosam totam libero sequi explicabo totam. At quae rerum assumenda dignissimos. Rerum perferendis quidem amet et ipsum minus dolorem. Sequi quibusdam error ratione qui accusamus.', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, '2022-05-27 01:55:01', '2022-05-14 02:44:25', '2022-05-27 01:55:01', '', NULL),
(20, 'Prof.', '499000', NULL, NULL, NULL, 'A molestiae vel esse perferendis et atque. Modi blanditiis laudantium dolores rem. Et vel non harum dolorem voluptatum. Aut commodi illo fugit quidem quis. Aut qui nesciunt reiciendis autem rerum maiores.', '[\"Yellow\",\"Red\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, 50000, '2022-05-27 01:54:59', '2022-05-14 02:44:25', '2022-05-27 01:54:59', '', NULL),
(21, 'Nguyễn Tuấn Anh 2022', '300000', '124', NULL, NULL, '<p>&aacute;dasdasdsad&nbsp;</p>', '[\"Yellow\",\"Red\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, '2022-06-11 16:33:19', '2022-05-17 01:58:54', '2022-06-11 16:33:19', '<p>xczxczxczxczc</p>', 0),
(22, 'test 1', '300000', '123123', NULL, NULL, '<p>&aacute;dasd</p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, '2022-06-11 16:33:16', '2022-05-17 03:45:56', '2022-06-11 16:33:16', '<p>&aacute;dasdasdas</p>', 1),
(23, 'trung văn A', '300000', NULL, '/storage/products_image/a0GLMoBDV2MlGNJn0hAx.jpg', 'gbd-pan-flash-ic-trang-vang-4_large.jpg', '<p>trung văn</p>', '[\"Yellow\",\"Red\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, NULL, '2022-05-20 00:43:10', '2022-05-20 00:43:10', '<p>sản phẩm mới&nbsp;</p>', 1),
(24, 'Ức gà tươi phi lê C.P khay 500g (1-4 miếng)', '1111111111', NULL, NULL, NULL, '<p>NEW dexs</p>', '[\"Red\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, '2022-06-11 16:33:11', '2022-05-20 01:21:20', '2022-06-11 16:33:11', '<p>m&ocirc; tả ngắn</p>', 1),
(25, 'New Product', '2222', '200', '/storage/products_image/YH8t2Ab1pzAPW9puwfNi.jpg', 'qabd-psg-2022-xam-2_large.jpg', '<p>new</p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, NULL, '2022-05-20 01:23:52', '2022-06-02 06:49:50', '<p>sos</p>', 1),
(26, 'Test Ảnh số 2', '300000', NULL, '/storage/products_image/1/BkW4sjWGEV0mRiPFvCtc.png', '12.png', '<p>the new</p>', '[\"Blue\"]', '[\"SX\",\"M\",\"L\"]', 1, NULL, NULL, NULL, '2022-05-20 01:29:33', '2022-06-11 16:29:30', '<p>Sản phẩm phải tồn tại</p>', 1),
(30, 'giường', '12000', NULL, '/storage/products_image/1/QpF2UPPU0vWmBA4fLMiT.png', 'arbica_trang__2__68a43f98e10e4f9d8e15921ef4d600bc_308bc973440b4d44b86be85c037e4ff8_master.png', '<p>&aacute;dsadsd</p>', '[\"Red\",\"Green\"]', '[\"XL\",\"S\"]', 1, NULL, NULL, NULL, '2022-05-20 01:49:38', '2022-06-11 16:29:09', '<p>&aacute;dadasd</p>', 1),
(31, 'the new sssssass', '12000', NULL, NULL, NULL, '<p>&aacute;dsadsd</p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, '2022-06-08 08:04:04', '2022-05-20 01:55:46', '2022-06-08 08:04:04', '<p>&aacute;dadasd</p>', 1),
(32, 'the new sssssas', '12000', NULL, NULL, NULL, '<p>&aacute;dsadsd</p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, '2022-06-02 06:46:37', '2022-05-20 02:01:18', '2022-06-02 06:46:37', '<p>&aacute;dadasd</p>', 1),
(33, 'Tôi là Ai', '300000', '222', NULL, NULL, '<p>T&ocirc;i l&agrave; t&ocirc;i</p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, '2022-06-02 06:46:37', '2022-05-20 02:03:19', '2022-06-02 06:46:37', '<p>T&ocirc;i shorrt</p>', 1),
(34, 'the mmmmmmm', '12222', '11111', NULL, NULL, '<p>the mee</p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, '2022-05-27 01:54:27', '2022-05-20 02:13:53', '2022-05-27 01:54:27', '<p>&aacute;dasdasd</p>', 1),
(35, 'trungtv0910 NEW', '300000', '123123', '/storage/products_image/QS5trWUtr2lh2Vyj2xGJ.jpg', 'giay-bong-da-jogarbola-jgbl-9020-colorlux-2-bac-1_large.jpg', '<p>đ&acirc;sd</p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, NULL, '2022-05-20 02:17:41', '2022-05-26 07:15:03', '<p>sdasd</p>', 1),
(36, 'Ức gà tươi phi lê C.P khay 500g', '4995000', '10', '/storage/products_image/ruMMACFDQUci2wnLQnAN.jpg', 'gbd-pan-flash-ic-trang-vang-1_large.jpg', '<p>aaaaaaaaaaaaaaaaaaaa</p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, NULL, '2022-05-20 02:33:56', '2022-06-02 06:43:27', '<p>&acirc;sdasd</p>', 1),
(37, 'Ức gà tươi phi lê C.P khay', '4995000', '10', '/storage/products_image/0l3PfbqHNDaxCflYMtEW.jpg', 'mt-181229-xanh_large.jpg', '<p>aaaaaaaaaaaaaaaaaaaaz</p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, NULL, '2022-05-20 02:34:57', '2022-06-17 11:18:16', '<p>The new project</p>', 1),
(38, 'Giày IC ROLEES', '4995000', NULL, '/storage/products_image/uyJyDOlRTqBsubOvOwA6.jpg', 'gbd-pan-flash-ic-trang-vang-1_large.jpg', '<p>San Phẩm Từ Thi&ecirc;n Nhi&ecirc;n</p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, NULL, '2022-05-20 03:10:08', '2022-05-20 03:10:08', '<p>NEW sả</p>', 1),
(39, 'Giày MC 20000', '4995000', NULL, '/storage/products_image/oJVoRUSxbxtC1tOhjhPm.jpg', 'gbd-pan-flash-ic-xanhla-6_large.jpg', '<p>gi&agrave;y</p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, NULL, '2022-05-20 03:13:05', '2022-05-20 03:13:05', '<p>đa</p>', 1),
(40, 'Giày Thể Thao Ngoài Sân', '4995000', '123123', '/storage/products_image/Xn9w13HL423RCnDHcY5T.jpg', 'quan-lung-egan-xanh-1_large.jpg', '<p>Gi&agrave;y Thể Thao Ngo&agrave;i<strong> S&acirc;n đx</strong></p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, NULL, '2022-05-20 10:07:17', '2022-06-02 06:46:18', '<p>Gi&agrave;y Thể Thao Ngo&agrave;i S&acirc;n</p>', 1),
(41, 'Test 21', '300000', NULL, '/storage/products_image/BT4jwyiidXfuQl9NJmtu.jpg', 'n-qabd-cp-roger-xanh.jpg', '<p>test 21</p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, NULL, '2022-05-20 20:56:34', '2022-05-20 20:56:34', '<p>xxxx</p>', 1),
(42, 'Nguyễn Tuấn Anh 2022s', '2222', NULL, '/storage/products_image/10/VnCH4b01c6NytunEAq7Y.jpg', 'product2.jpg', '<p>&aacute;dasdas</p>', '[\'Red\',\'Blue\',\'Green\',\'Black\']', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, NULL, '2022-05-26 03:18:30', '2022-06-08 08:31:14', '<p>zxczxc</p>', 1),
(43, 'trung văn Aá', '300000', NULL, NULL, NULL, '<p>sfsdfsdf</p>', '[\"Yellow\",\"Red\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 10, NULL, NULL, '2022-06-08 09:15:13', '2022-06-08 09:11:44', '2022-06-08 09:15:13', '<p>&aacute;dasdasd</p>', 1),
(44, 'the new', '1500000', NULL, NULL, NULL, '<p>sdasdadas</p>', '[\"Yellow\",\"Red\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 10, NULL, NULL, '2022-06-08 09:15:10', '2022-06-08 09:13:12', '2022-06-08 09:15:10', '<p>dasssssssssssssasd</p>', 1),
(45, 'the news', '1222222', NULL, '/storage/products_image/10/eFtfVYX4O2VxQOTHkc6D.jpeg', 'hw16-black_1620449239.jpeg', '<p>aaaaaaaaaaaaaaaaaasd</p>', '[\"Yellow\",\"White\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, NULL, NULL, NULL, '2022-06-08 09:14:31', '2022-06-17 11:15:09', NULL, 1),
(46, 'SMG giá cao', '100000000', NULL, '/storage/products_image/1/WNMes2qzoTwchL3pJ9OX.png', 'arabica_den__1__8984e3eb55a14a2e8e9477e889b141ab_master.png', '<p>the new</p>', '[\"Red\",\"Green\",\"Blue\"]', '[\"SX\",\"M\",\"L\",\"XL\",\"S\"]', 1, 2, NULL, NULL, '2022-06-10 16:12:57', '2022-06-17 11:14:57', '<p>m&ocirc; tả</p>', 1),
(47, 'SMG giá cao2', '100000000', NULL, '/storage/products_image/1/aI5pySW8w8II7pHGdkpE.png', '13.png', '<p>the new</p>', '[\"Green\",\"Black\"]', '[\"SX\",\"M\",\"S\"]', 1, 2, NULL, NULL, '2022-06-10 16:16:28', '2022-06-17 11:14:51', '<p>m&ocirc; tả</p>', 1),
(48, 'Combo 03 Áo Polo thể thao nam ProMax-S1 Logo thoáng khí', '300000', NULL, '/storage/products_image/51/bzw2EZ1p0HDV2W4i8Dhs.jpg', 'Mixmau3.jpg', '<p>Coolmate đ&atilde; cho ra mắt rất nhiều sản phẩm &aacute;o thể thao với nhiều chất liệu: maxcool, quickdry,... v&agrave; với mục ti&ecirc;u tập trung v&agrave;o chất liệu để đem đến cho kh&aacute;ch h&agrave;ng những chiếc &aacute;o tốt bắt nguồn từ chất liệu, chiếc &aacute;o&nbsp;<strong>Polo thể thao nam Promax-S1</strong>&nbsp;đ&atilde; được ra mắt v&agrave;o đ&uacute;ng thời điểm m&ugrave;a h&egrave; n&agrave;y để đảm bảo kh&aacute;ch h&agrave;ng nh&agrave; Coolmate lu&ocirc;n được thoải m&aacute;i, dễ chịu m&agrave; vẫn lịch sự trong bất kỳ trường hợp n&agrave;o. C&ugrave;ng t&igrave;m hiểu v&igrave; sao chiếc &aacute;o Polo thể thao n&agrave;y lại l&agrave; sản phẩm m&agrave; Coolmate t&acirc;m đắc để gửi đến kh&aacute;ch h&agrave;ng.&nbsp;</p>', '[\"Blue\",\"While\",\"Yellow\"]', '[\"XS\",\"M\",\"L\"]', 1, NULL, NULL, NULL, '2022-06-11 15:38:22', '2022-06-21 03:25:22', '<p>&Aacute;o Polo thể thao nam Promax-S1 chiếc &aacute;o polo được thiết kế d&agrave;nh ri&ecirc;ng cho bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Kiểu d&aacute;ng Slighly Slim Fi</strong>t để bạn lu&ocirc;n cảm thấy vừa vặn trong mọi cử động&nbsp;</li>\r\n	<li><strong>Định lượng vải chỉ 155gsm</strong>&nbsp;si&ecirc;u nhẹ cảm gi&aacute;c mặc như kh&ocirc;ng mặc&nbsp;</li>\r\n	<li><strong>C&ocirc;ng nghệ xử l&yacute; ho&agrave;n thiện:&nbsp;</strong>Quickdry (Nhanh kh&ocirc;) v&agrave; Wicking (thấm h&uacute;t nhanh)</li>\r\n</ul>', 1),
(49, 'Combo 03 Quần short nam thể thao Recycle 5\" thoáng khí', '299000', NULL, '/storage/products_image/51/06d4XUcj67EddycA1RBY.jpg', 'Tanktop_-_Aqua22denm.jpg', '<p>Coolmate đ&atilde; cho ra mắt rất nhiều sản phẩm thể thao với nhiều chất liệu: Maxcool, Poly Quickdry,... Tiếp nối những sản phẩm thể thao trước đ&oacute; v&agrave; đi theo xu hướng ng&agrave;nh may mặc &quot;thời trang bền vững&quot;, Coolmate ra mắt sản phẩm&nbsp;<strong>Quần thể thao nam 5 Inch Recycle&nbsp;</strong>th&acirc;n thiện với m&ocirc;i trường với th&agrave;nh phần ch&iacute;nh l&agrave;&nbsp;<em>100% sợi Recycle</em>. C&ugrave;ng t&igrave;m hiểu v&igrave; sao chiếc quần thể thao Recycle n&agrave;y l&agrave; sản phẩm m&agrave; ch&uacute;ng t&ocirc;i muốn gửi đến kh&aacute;ch h&agrave;ng.&nbsp;</p>', '[\"Red\",\"Green\"]', '[\"XS\",\"S\",\"M\"]', 1, 2, NULL, NULL, '2022-06-15 03:48:34', '2022-06-21 03:20:44', '<p>Chất liệu: 100% sợi Recycle, theo xu hướng thời trang bền vững</p>\r\n\r\n<p>C&ocirc;ng nghệ xử l&yacute; ho&agrave;n thiện vải: Quick-Dry (Nhanh kh&ocirc;) v&agrave; Wicking (Thấm h&uacute;t nhanh)</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 32, 1, '2022-05-20 02:01:18', '2022-05-20 02:01:18'),
(2, 32, 3, '2022-05-20 02:01:18', '2022-05-20 02:01:18'),
(3, 32, 20, '2022-05-20 02:01:18', '2022-05-20 02:01:18'),
(4, 33, 4, '2022-05-20 02:03:19', '2022-05-20 02:03:19'),
(5, 33, 14, '2022-05-20 02:03:19', '2022-05-20 02:03:19'),
(6, 34, 1, NULL, NULL),
(7, 34, 33, NULL, NULL),
(19, 42, 20, '2022-05-26 03:18:30', '2022-05-26 03:18:30'),
(24, 41, 20, '2022-05-26 07:09:54', '2022-05-26 07:09:54'),
(28, 35, 20, '2022-06-02 06:42:58', '2022-06-02 06:42:58'),
(30, 31, 3, '2022-06-02 06:44:04', '2022-06-02 06:44:04'),
(34, 43, 3, '2022-06-08 09:11:44', '2022-06-08 09:11:44'),
(35, 44, 3, '2022-06-08 09:13:12', '2022-06-08 09:13:12'),
(44, 8, 20, '2022-06-11 16:31:40', '2022-06-11 16:31:40'),
(49, 46, 20, '2022-06-17 11:14:38', '2022-06-17 11:14:38'),
(50, 46, 39, '2022-06-17 11:14:38', '2022-06-17 11:14:38'),
(51, 45, 20, '2022-06-17 11:15:09', '2022-06-17 11:15:09'),
(52, 42, 39, '2022-06-17 11:15:23', '2022-06-17 11:15:23'),
(53, 42, 40, '2022-06-17 11:15:23', '2022-06-17 11:15:23'),
(54, 38, 42, '2022-06-17 11:16:21', '2022-06-17 11:16:21'),
(55, 39, 39, '2022-06-17 11:16:31', '2022-06-17 11:16:31'),
(56, 40, 41, '2022-06-17 11:16:47', '2022-06-17 11:16:47'),
(57, 37, 40, '2022-06-17 11:17:00', '2022-06-17 11:17:00'),
(58, 37, 41, '2022-06-17 11:17:00', '2022-06-17 11:17:00'),
(59, 47, 42, '2022-06-17 11:17:10', '2022-06-17 11:17:10'),
(60, 30, 40, '2022-06-17 11:17:37', '2022-06-17 11:17:37'),
(61, 26, 39, '2022-06-17 11:17:51', '2022-06-17 11:17:51'),
(62, 25, 39, '2022-06-17 11:18:03', '2022-06-17 11:18:03'),
(63, 36, 39, '2022-06-17 11:18:33', '2022-06-17 11:18:33'),
(64, 23, 42, '2022-06-17 11:18:57', '2022-06-17 11:18:57'),
(65, 3, 42, '2022-06-17 11:19:08', '2022-06-17 11:19:08'),
(66, 2, 20, '2022-06-17 11:19:20', '2022-06-17 11:19:20'),
(67, 12, 41, '2022-06-17 11:19:38', '2022-06-17 11:19:38'),
(68, 13, 42, '2022-06-17 11:19:48', '2022-06-17 11:19:48'),
(69, 14, 40, '2022-06-17 11:20:00', '2022-06-17 11:20:00'),
(70, 49, 20, '2022-06-21 03:18:52', '2022-06-21 03:18:52'),
(71, 48, 39, '2022-06-21 03:25:22', '2022-06-21 03:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `image_name`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '/storage/products_image/v85MvyzITLZwPZmBYNLl.png', '13.png', 22, '2022-05-17 03:45:56', '2022-05-17 03:45:56'),
(2, '/storage/products_image/YcrSHY5Xfmm6fG1LJj3a.jpg', 'arabica_xanh_mint__2__91260cf255ca469ba24f62b0056510b0_19426258b5364b08a5aa5eb4a9a452f8_master.jpg', 22, '2022-05-17 03:45:56', '2022-05-17 03:45:56'),
(3, '/storage/products_image/6J89aXP2YStESIebau55.jpg', 'gbd-pan-flash-ic-trang-vang-2_large.jpg', 23, '2022-05-20 00:43:10', '2022-05-20 00:43:10'),
(4, '/storage/products_image/3TttCRcyEbIgDwaeLAB1.jpg', 'gbd-pan-flash-ic-trang-vang-3_large.jpg', 23, '2022-05-20 00:43:10', '2022-05-20 00:43:10'),
(5, '/storage/products_image/sqUbg0eGlFhDqLOIcpVT.jpg', 'gbd-pan-flash-ic-trang-vang-4_large.jpg', 23, '2022-05-20 00:43:10', '2022-05-20 00:43:10'),
(10, '/storage/products_image/mqoPe1ECx4ebYaNZs6qd.jpg', 'gbd-pan-flash-ic-trang-vang-2_large.jpg', 38, '2022-05-20 03:10:08', '2022-05-20 03:10:08'),
(11, '/storage/products_image/g3FobCLGboM4BgWthq3i.jpg', 'gbd-pan-flash-ic-trang-vang-3_large.jpg', 38, '2022-05-20 03:10:08', '2022-05-20 03:10:08'),
(12, '/storage/products_image/gv2MbSEw0Mjbjvi8OIBa.jpg', 'gbd-pan-flash-ic-trang-vang-4_large.jpg', 38, '2022-05-20 03:10:08', '2022-05-20 03:10:08'),
(13, '/storage/products_image/M6r4qRLR5lMIpFUkmWEM.jpg', 'gbd-pan-flash-ic-trang-vang-5_large.jpg', 38, '2022-05-20 03:10:08', '2022-05-20 03:10:08'),
(14, '/storage/products_image/a9Abp4EucsdQm1tFQzDO.jpg', 'gbd-pan-flash-ic-xanhla-2_large.jpg', 39, '2022-05-20 03:13:05', '2022-05-20 03:13:05'),
(15, '/storage/products_image/f2aROwoN4wcHE20s1WVM.jpg', 'gbd-pan-flash-ic-xanhla-3_large.jpg', 39, '2022-05-20 03:13:05', '2022-05-20 03:13:05'),
(16, '/storage/products_image/nbsLM2eITyzay6qTtWrk.jpg', 'gbd-pan-flash-ic-xanhla-4_large.jpg', 39, '2022-05-20 03:13:05', '2022-05-20 03:13:05'),
(17, '/storage/products_image/26JQ9hfmsEB3VgLx94oy.jpg', 'gbd-pan-flash-ic-xanhla-6_large.jpg', 39, '2022-05-20 03:13:05', '2022-05-20 03:13:05'),
(18, '/storage/products_image/40bxQhbuEDCm1JNtS1v1.jpg', 'qabd-cp-roger-xanh-ngoc-4_large.jpg', 40, '2022-05-20 10:07:17', '2022-05-20 10:07:17'),
(19, '/storage/products_image/rLJkyJlPicex5200zw1h.jpg', 'quan-lung-egan-xam-1_large.jpg', 40, '2022-05-20 10:07:17', '2022-05-20 10:07:17'),
(20, '/storage/products_image/Qm5yT6pDRksus1e8pUnO.jpg', 'quan-lung-egan-xanh-1_large.jpg', 40, '2022-05-20 10:07:17', '2022-05-20 10:07:17'),
(21, '/storage/products_image/ETSZE59EhCQh40b7rCKM.jpg', 'qabd-cp-roger-xanh-ngoc-2_large.jpg', 41, '2022-05-20 20:56:34', '2022-05-20 20:56:34'),
(22, '/storage/products_image/UHkEHTekaU2mpZDLjGwh.jpg', 'qabd-cp-roger-xanh-ngoc-3_large.jpg', 41, '2022-05-20 20:56:34', '2022-05-20 20:56:34'),
(23, '/storage/products_image/UZCp3mdtPlA3sXwl83pX.jpg', 'qabd-cp-roger-xanh-ngoc-4_large.jpg', 41, '2022-05-20 20:56:34', '2022-05-20 20:56:34'),
(24, '/storage/products_image/vXJUpkkTH7TEiItFMyPT.jpg', 'giay-bong-da-jogarbola-jgbl-9020-colorlux-2-bac-5_large.jpg', 35, '2022-05-26 07:10:54', '2022-05-26 07:10:54'),
(25, '/storage/products_image/qbCGptpAJ6jPBo4fYXTI.jpg', 'giay-bong-da-jogarbola-jgbl-9020-colorlux-2-bac-2_large.jpg', 35, '2022-05-26 07:10:54', '2022-05-26 07:10:54'),
(26, '/storage/products_image/pRq1AnA78WdS9XQAApTz.jpg', 'giay-bong-da-jogarbola-jgbl-9020-colorlux-2-bac-3_large.jpg', 35, '2022-05-26 07:10:54', '2022-05-26 07:10:54'),
(27, '/storage/products_image/I5ELfDvpfpYiZnvzkLt7.jpg', 'giay-bong-da-jogarbola-jgbl-9020-colorlux-2-bac-4_large.jpg', 35, '2022-05-26 07:10:54', '2022-05-26 07:10:54'),
(28, '/storage/products_image/eD46CnRJGsRlZoWbRGTQ.jpg', 'mitre-181229-ghi6_large.jpg', 37, '2022-05-26 07:18:12', '2022-05-26 07:18:12'),
(29, '/storage/products_image/h88foKUHFcizGdd5Bg8F.jpg', 'mitre-181229-ghi2_large.jpg', 37, '2022-05-26 07:18:12', '2022-05-26 07:18:12'),
(30, '/storage/products_image/O0A2UT0aItrZAVHydYAv.jpg', 'mitre-181229-ghi3_large.jpg', 37, '2022-05-26 07:18:12', '2022-05-26 07:18:12'),
(31, '/storage/products_image/8DmiEIsxZeWMHn3lKBvA.jpg', 'mitre-181229-ghi4_large.jpg', 37, '2022-05-26 07:18:12', '2022-05-26 07:18:12'),
(32, '/storage/products_image/yPwskFEb0W8exz43kUOn.jpg', 'mitre-181229-ghi5_large.jpg', 37, '2022-05-26 07:18:12', '2022-05-26 07:18:12'),
(33, '/storage/products_image/10/kL0qM5aeMe3foC2GAT7i.jpg', 'girl3.jpg', 45, '2022-06-08 09:14:31', '2022-06-08 09:14:31'),
(34, '/storage/products_image/10/PBKGMw3fy9sZq8ls7W9l.jpeg', 'hw16-black_1620449239.jpeg', 45, '2022-06-08 09:14:31', '2022-06-08 09:14:31'),
(35, '/storage/products_image/10/tpUYj6k1ZasNgi0SuSI6.jpg', 'IMG_9846-100x100.jpg', 45, '2022-06-08 09:14:31', '2022-06-08 09:14:31'),
(36, '/storage/products_image/51/b1kyfv4mdsaatGyAGtUy.jpg', 'DSC04239-copy.jpg', 49, '2022-06-21 03:19:57', '2022-06-21 03:19:57'),
(37, '/storage/products_image/51/O008zcvb4oQ8t7K2Thsi.jpg', 'DSC04215-copy_39.jpg', 49, '2022-06-21 03:19:57', '2022-06-21 03:19:57'),
(38, '/storage/products_image/51/atPNRFXKSsTCPiU4FPyb.jpg', 'DSC04235-copy-2.jpg', 49, '2022-06-21 03:19:57', '2022-06-21 03:19:57'),
(39, '/storage/products_image/51/aIqyYwaPf0TCh9QhwhkX.jpg', 'IMG_6382-2.jpg', 48, '2022-06-21 03:25:22', '2022-06-21 03:25:22'),
(40, '/storage/products_image/51/VyymDBAWUzQGbJKDmJ6N.jpg', 'IMG_6483_24.jpg', 48, '2022-06-21 03:25:22', '2022-06-21 03:25:22'),
(41, '/storage/products_image/51/QORRJ5VKMsuTufyoF8PP.jpeg', 'pros123-2_47.jpeg', 48, '2022-06-21 03:25:22', '2022-06-21 03:25:22'),
(42, '/storage/products_image/51/HFwLv72MR8Ir6nV8hlWR.jpg', 'pros126s.jpg', 48, '2022-06-21 03:25:22', '2022-06-21 03:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 24, 6, NULL, NULL),
(2, 24, 7, NULL, NULL),
(35, 35, 20, '2022-06-02 06:42:58', '2022-06-02 06:42:58'),
(47, 42, 44, '2022-06-17 11:15:23', '2022-06-17 11:15:23'),
(48, 41, 45, '2022-06-17 11:15:32', '2022-06-17 11:15:32'),
(49, 38, 46, '2022-06-17 11:16:21', '2022-06-17 11:16:21'),
(50, 38, 47, '2022-06-17 11:16:21', '2022-06-17 11:16:21'),
(51, 40, 48, '2022-06-17 11:16:47', '2022-06-17 11:16:47'),
(52, 40, 49, '2022-06-17 11:16:47', '2022-06-17 11:16:47'),
(53, 40, 50, '2022-06-17 11:16:47', '2022-06-17 11:16:47'),
(56, 26, 52, '2022-06-17 11:17:51', '2022-06-17 11:17:51'),
(57, 25, 53, '2022-06-17 11:18:03', '2022-06-17 11:18:03'),
(58, 25, 54, '2022-06-17 11:18:03', '2022-06-17 11:18:03'),
(59, 25, 55, '2022-06-17 11:18:03', '2022-06-17 11:18:03'),
(60, 37, 56, '2022-06-17 11:18:16', '2022-06-17 11:18:16'),
(61, 37, 35, '2022-06-17 11:18:16', '2022-06-17 11:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Quản Trị Hệ Thống', NULL, NULL, NULL),
(2, 'super', 'Quản lý bài viết, menu, Quản lý hình ảnh', NULL, NULL, NULL),
(3, 'user', 'không có quyền can thiệp hệ thống', NULL, '2022-06-02 06:17:44', NULL),
(9, 'user manage', 'quản lý nhân viên cửa hàng, chịu trách nhiệm kiểm tra nhân viên và sản phẩm', '2022-06-02 06:31:07', '2022-06-02 07:01:32', NULL),
(10, 'admins', 'là người giao hàng của shop', '2022-06-02 06:58:49', '2022-06-02 06:58:56', '2022-06-02 06:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 5, 2, NULL, NULL),
(5, 6, 3, NULL, NULL),
(7, 8, 1, NULL, NULL),
(8, 8, 2, NULL, NULL),
(9, 8, 3, NULL, NULL),
(10, 5, 1, NULL, NULL),
(11, 7, 1, NULL, NULL),
(12, 9, 2, NULL, NULL),
(13, 10, 1, NULL, NULL),
(14, 11, 1, NULL, NULL),
(15, 51, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session_users`
--

CREATE TABLE `session_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refresh_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_expried` datetime NOT NULL,
  `refresh_token_expried` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'xin chào', '2022-05-20 01:02:16', '2022-05-20 01:02:16'),
(2, 'sản phẩm new', '2022-05-20 01:02:16', '2022-05-20 01:02:16'),
(3, 'old', '2022-05-20 01:02:16', '2022-05-20 01:02:16'),
(4, 'Văn Hoá', '2022-05-20 01:10:42', '2022-05-20 01:10:42'),
(5, 'Nhạc', '2022-05-20 01:10:42', '2022-05-20 01:10:42'),
(6, 'Xịn Quá', '2022-05-20 01:21:20', '2022-05-20 01:21:20'),
(7, 'Sản Phẩm Xịn', '2022-05-20 01:21:20', '2022-05-20 01:21:20'),
(8, 'brand hot', '2022-05-20 01:23:52', '2022-05-20 01:23:52'),
(9, 'Hông Xịn', '2022-05-20 01:29:33', '2022-05-20 01:29:33'),
(10, 'Hay', '2022-05-20 02:34:57', '2022-05-20 02:34:57'),
(11, 'Mới', '2022-05-20 02:34:57', '2022-05-20 02:34:57'),
(12, 'rolles', '2022-05-20 03:10:08', '2022-05-20 03:10:08'),
(13, 'new', '2022-05-20 03:10:08', '2022-05-20 03:10:08'),
(14, 'Hot', '2022-05-20 10:07:18', '2022-05-20 10:07:18'),
(15, 'cczxc', '2022-05-26 03:18:30', '2022-05-26 03:18:30'),
(16, 'Đẹp', '2022-05-26 07:06:36', '2022-05-26 07:06:36'),
(17, '16', '2022-05-26 07:06:50', '2022-05-26 07:06:50'),
(18, '15', '2022-05-26 07:07:28', '2022-05-26 07:07:28'),
(19, '11', '2022-05-26 07:08:25', '2022-05-26 07:08:25'),
(20, '14', '2022-05-26 07:08:25', '2022-05-26 07:08:25'),
(21, 'Xong rồi', '2022-05-26 07:08:25', '2022-05-26 07:08:25'),
(22, '19', '2022-05-26 07:08:56', '2022-05-26 07:08:56'),
(23, '20', '2022-05-26 07:08:56', '2022-05-26 07:08:56'),
(24, '21', '2022-05-26 07:08:56', '2022-05-26 07:08:56'),
(25, '22', '2022-05-26 07:09:07', '2022-05-26 07:09:07'),
(26, '23', '2022-05-26 07:09:07', '2022-05-26 07:09:07'),
(27, '24', '2022-05-26 07:09:07', '2022-05-26 07:09:07'),
(28, '17', '2022-05-26 07:09:21', '2022-05-26 07:09:21'),
(29, '28', '2022-05-26 07:09:44', '2022-05-26 07:09:44'),
(30, '29', '2022-05-26 07:09:54', '2022-05-26 07:09:54'),
(31, '10', '2022-05-26 07:18:12', '2022-05-26 07:18:12'),
(32, '31', '2022-05-26 07:18:31', '2022-05-26 07:18:31'),
(33, '12', '2022-06-02 06:45:55', '2022-06-02 06:45:55'),
(34, '13', '2022-06-02 06:45:55', '2022-06-02 06:45:55'),
(35, '25', '2022-06-02 06:46:18', '2022-06-02 06:46:18'),
(36, '26', '2022-06-02 06:46:18', '2022-06-02 06:46:18'),
(37, '27', '2022-06-02 06:46:18', '2022-06-02 06:46:18'),
(38, '9', '2022-06-02 06:46:54', '2022-06-02 06:46:54'),
(39, '5', '2022-06-02 06:49:50', '2022-06-02 06:49:50'),
(40, '2', '2022-06-02 06:49:50', '2022-06-02 06:49:50'),
(41, '8', '2022-06-02 06:49:50', '2022-06-02 06:49:50'),
(42, '18', '2022-06-08 08:31:14', '2022-06-08 08:31:14'),
(43, '38', '2022-06-11 16:29:30', '2022-06-11 16:29:30'),
(44, '42', '2022-06-17 11:15:23', '2022-06-17 11:15:23'),
(45, '30', '2022-06-17 11:15:32', '2022-06-17 11:15:32'),
(46, '33', '2022-06-17 11:16:21', '2022-06-17 11:16:21'),
(47, '34', '2022-06-17 11:16:21', '2022-06-17 11:16:21'),
(48, '35', '2022-06-17 11:16:47', '2022-06-17 11:16:47'),
(49, '36', '2022-06-17 11:16:47', '2022-06-17 11:16:47'),
(50, '37', '2022-06-17 11:16:47', '2022-06-17 11:16:47'),
(51, '32', '2022-06-17 11:17:00', '2022-06-17 11:17:00'),
(52, '43', '2022-06-17 11:17:51', '2022-06-17 11:17:51'),
(53, '39', '2022-06-17 11:18:03', '2022-06-17 11:18:03'),
(54, '40', '2022-06-17 11:18:03', '2022-06-17 11:18:03'),
(55, '41', '2022-06-17 11:18:03', '2022-06-17 11:18:03'),
(56, '51', '2022-06-17 11:18:16', '2022-06-17 11:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `title`, `body`, `completed`, `created_by`, `created_at`, `updated_at`) VALUES
(3, 'Iure voluptatem fugiat provident eius.', 'Aut accusamus temporibus voluptatem est adipisci eum mollitia modi. Est molestiae et repudiandae laborum voluptatibus aliquid odit. Omnis quia laudantium cum qui eaque saepe sint. Dolorem expedita et architecto voluptate deleniti pariatur eaque ipsam.', 1, 8, '2022-06-09 05:08:37', '2022-06-09 05:08:37'),
(4, 'Eligendi voluptas ex et saepe distinctio.', 'Et eius rerum id repellat sint. Porro perspiciatis quo rem unde iste.', 1, 5, '2022-06-09 05:08:37', '2022-06-09 05:08:37'),
(5, 'Ut minima excepturi dolor sed.', 'Hic veniam sit eos labore temporibus quia itaque saepe. Explicabo exercitationem omnis animi voluptatibus. Omnis enim reprehenderit voluptatem expedita expedita nemo. Facere consectetur harum quo neque aperiam voluptatum. Voluptas sit molestiae assumenda quis non.', 0, 7, '2022-06-09 05:08:37', '2022-06-09 05:08:37'),
(6, 'Et aut ut eum nemo pariatur.', 'Modi quisquam harum dolores eos autem. Dolores debitis quia quisquam quidem. Velit occaecati suscipit ab vitae ab quia at. Ipsa ut aut nostrum sunt unde nulla praesentium ut.', 1, 8, '2022-06-09 05:08:37', '2022-06-09 05:08:37'),
(7, 'Voluptas autem id quo.', 'Nostrum minus aut nisi quo harum nam esse voluptas. Quo deleniti beatae distinctio dolor quis quisquam ullam. Mollitia dolor omnis neque qui amet quos.', 0, 5, '2022-06-09 05:08:37', '2022-06-09 05:08:37'),
(8, 'Molestiae eaque aut consequatur unde quasi rerum.', 'Quasi dolor et aut delectus provident molestias consequatur. Laudantium maiores rerum hic a est. Incidunt omnis aperiam sapiente magnam.', 1, 3, '2022-06-09 05:08:37', '2022-06-09 05:08:37'),
(10, 'Error eligendi voluptatum quibusdam omnis facere eligendi sunt quibusdam.', 'Earum voluptas maiores eius. Eaque quisquam reprehenderit voluptatem sint aut iusto. Ipsa suscipit cumque placeat saepe totam qui veniam. Qui odit accusantium eum harum cum animi iure.', 0, 1, '2022-06-09 05:11:29', '2022-06-09 05:11:29'),
(11, 'Voluptates a aut sed nostrum harum voluptatem.', 'Dicta aut excepturi quis quaerat. Molestiae et reprehenderit mollitia provident repudiandae a a quis. Porro vel numquam fuga dolorum quas.', 0, 9, '2022-06-09 05:11:29', '2022-06-09 05:11:29'),
(12, 'Beatae quibusdam dolorum laudantium delectus asperiores sunt eos.', 'Nesciunt numquam odit quia molestias. Nesciunt voluptas est quod voluptas doloremque animi sunt. Sequi inventore cupiditate nostrum enim dicta at. Quos doloremque voluptatem esse sit quisquam ab inventore qui.', 1, 3, '2022-06-09 05:11:29', '2022-06-09 05:11:29'),
(13, 'Et quod explicabo maxime numquam soluta inventore facere voluptas.', 'Quidem pariatur et incidunt voluptas ea et qui. Labore reiciendis est quisquam.', 0, 1, '2022-06-09 05:11:29', '2022-06-09 05:11:29'),
(14, 'Vero laboriosam asperiores sit voluptatem autem iure.', 'Eligendi sit beatae quia vitae ea nihil. Laboriosam sed quas est facilis voluptatem eos illo. Numquam fugit iusto dignissimos cum.', 0, 4, '2022-06-09 05:11:29', '2022-06-09 05:11:29'),
(15, 'Nihil labore laborum molestias ea qui ea quasi.', 'Aut dicta reprehenderit culpa vitae consequatur non. Atque dolore voluptas velit et nulla. Voluptate commodi dolor nesciunt ullam.', 1, 2, '2022-06-09 05:11:29', '2022-06-09 05:11:29'),
(16, 'Ducimus sit voluptas qui quae possimus.', 'Suscipit nemo dolor porro repudiandae. Doloribus est repellat quis voluptatum corporis dolorum. Omnis est est nihil voluptas non voluptas.', 0, 6, '2022-06-09 05:11:29', '2022-06-09 05:11:29'),
(17, 'Eaque rerum sit in nihil ad.', 'Quis fugiat culpa vel velit doloremque eligendi. Vitae neque sit autem culpa quam et eos enim. Assumenda placeat ea iste iste. Eius nemo ut in veniam et sit consequatur quam.', 1, 7, '2022-06-09 05:11:29', '2022-06-09 05:11:29'),
(18, 'Aut enim cupiditate voluptas at.', 'Voluptate et exercitationem dolor praesentium voluptatem quasi. Ea omnis nemo iste molestias dolor illum.', 1, 8, '2022-06-09 05:11:29', '2022-06-09 05:11:29'),
(19, 'Eius repellendus autem vel harum mollitia non.', 'Magni laborum rerum quasi tempore. Occaecati sed ut aliquam ipsam sunt iure quia. Ea corporis amet aut est est. Expedita vero iste dolorem qui blanditiis et deserunt ullam.', 0, 5, '2022-06-09 05:11:29', '2022-06-09 05:11:29'),
(20, 'this is a title', 'this is a body', 0, 1, '2022-06-09 05:45:31', '2022-06-09 05:45:31'),
(21, 'this is a title', 'this is a body', 0, 1, '2022-06-09 05:46:27', '2022-06-09 05:46:27');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `is_test` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `is_test`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'trungtv', 'trungtv@gmail.com', NULL, '$2y$10$Qm6w9F.iBqctRhHji/BnAuocu6O2.P17y7YHnKsu6RN.tutA1gPbe', NULL, 1, 1, '2022-05-29 01:09:37', '2022-05-29 01:09:37', NULL),
(3, 'khachhang', 'khachhang@gmail.com', NULL, '$2y$10$sKbgTic37uRNz.KLwZPJW.n5H1N6FqVd3dP6/NRFwATdEdsuGz9k2', NULL, 1, NULL, '2022-05-30 07:41:30', '2022-05-30 07:41:30', NULL),
(8, 'Hoàng Anh', 'giamdoc@gmail.com', NULL, '$2y$10$MKcx1D0hCcIKx4PkSwRe8uFMTNoAP5fd6d0Gy8ek1kEbWR01H6.fG', NULL, 0, NULL, '2022-06-01 01:46:29', '2022-06-01 02:36:14', NULL),
(9, 'Teo1200', 'teo1200@gmail.com', NULL, '$2y$10$A469nWPxOR3VeEsTE39gzur30JEDxqqIyzcpw5I7pPBxSZRWbvyke', NULL, 0, NULL, '2022-06-01 02:47:41', '2022-06-01 03:11:53', '2022-06-01 03:11:53'),
(10, 'Đại ca', 'daica@gmail.com', NULL, '$2y$10$7fMOP3lxeCexC0Zhq2IS1upPut7CTjExKsqdKzddEXRMZCe/YiHuK', NULL, 0, NULL, '2022-06-08 08:09:16', '2022-06-08 08:09:16', NULL),
(51, 'admin', 'admin@gmail.com', NULL, '$2y$10$2iqpvY5FgH66xU0iS4NSTeovhoHPk6IUJoXpH/ycBcueBD5lnBZFu', NULL, 1, NULL, '2022-06-20 15:24:50', '2022-06-20 15:24:50', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_users`
--
ALTER TABLE `session_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `session_users`
--
ALTER TABLE `session_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
