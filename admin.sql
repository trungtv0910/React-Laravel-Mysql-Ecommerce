-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2022 at 05:38 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
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
(3, 'Ấu Nỉ New', 0, 'au-ni-new', NULL, '2022-05-09 01:53:39', '2022-05-09 01:53:39'),
(4, 'Tây Ta', 0, 'tay-ta', NULL, NULL, NULL),
(5, 'Áo Tây , Guày Tây', 4, 'Tay-s', '2022-05-13 01:40:24', NULL, '2022-05-13 01:40:24'),
(6, 'Quần Tây Đem của bọn tây lông', 2, 'quan-tay-dem-cua-bon-tay-long', NULL, '2022-05-09 02:46:03', '2022-05-09 02:46:03'),
(7, 'IrRRKgZOnS', 1, 'fhefyzw8zo', '2022-05-13 01:59:15', NULL, '2022-05-13 01:59:15'),
(8, 'Claude', 1, 'liliane', '2022-05-13 01:59:15', '2022-05-09 03:19:10', '2022-05-13 01:59:15'),
(9, 'Hilton', 2, 'alessia', NULL, '2022-05-09 03:19:10', '2022-05-09 03:19:10'),
(10, 'Della', 2, 'wilber', NULL, '2022-05-09 03:19:10', '2022-05-09 03:19:10'),
(11, 'Gwendolyn', 2, 'cortney', NULL, '2022-05-09 03:19:10', '2022-05-09 03:19:10'),
(12, 'Brock', 2, 'alec', NULL, '2022-05-09 03:19:10', '2022-05-09 03:19:10'),
(13, 'Mandy Wisozk', 67, 'mandy-wisozk', NULL, '2022-05-09 03:21:23', '2022-05-09 03:21:23'),
(14, 'Lynn Goodwin Jr.', 0, 'lynn-goodwin-jr', NULL, '2022-05-09 03:21:23', '2022-05-12 01:45:47'),
(15, 'Skyla Bruen', 0, 'skyla-bruen', '2022-05-13 02:28:58', '2022-05-09 03:21:23', '2022-05-13 02:28:58'),
(16, 'Xander Kiehn', 0, 'xander-kiehn', '2022-05-13 01:51:15', '2022-05-09 03:21:23', '2022-05-13 01:51:15'),
(17, 'Lemuel McClure', 1, 'lemuel-mcclure', '2022-05-13 01:59:15', '2022-05-09 03:21:23', '2022-05-13 01:59:15'),
(18, 'Darryl Stokes', 1, 'darryl-stokes', NULL, '2022-05-09 03:25:00', '2022-05-11 02:21:03'),
(19, 'Eloise Funk II', 3, 'eloise-funk-ii', '2022-05-13 02:36:35', '2022-05-09 03:25:00', '2022-05-13 02:36:35'),
(20, 'Dianna Kuhlman III', 3, 'dianna-kuhlman-iii', NULL, '2022-05-09 03:25:00', '2022-05-12 02:37:10'),
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
(37, 'Teossssss', 0, 'teossssss', '2022-05-20 10:08:26', '2022-05-20 10:08:17', '2022-05-20 10:08:26');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(16, '2022_06_01_094325_add_column_delete_at', 8);

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
(35, 'delete', 'delete', 31, 'delete_role', '2022-03-15 19:16:28', '2022-03-15 19:16:28');

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
(26, 1, 30, NULL, NULL),
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
(81, 9, 30, NULL, NULL);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `user_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount`, `feature_image_path`, `feature_image_name`, `content`, `user_id`, `category_id`, `view_count`, `deleted_at`, `created_at`, `updated_at`, `desc`, `status`) VALUES
(1, 'Ms.', '499000', NULL, NULL, NULL, 'Enim tempore eos aperiam deleniti omnis. Est fugit adipisci quas nihil cupiditate. Aliquam quo et itaque quos.', 1, 2, 50000, NULL, '2022-05-14 02:44:25', '2022-05-14 02:44:25', '', NULL),
(2, 'Prof.', '499000', NULL, NULL, NULL, 'Et officiis libero commodi accusantium sed. Aliquid voluptatibus dolorum quas asperiores qui debitis harum velit. Eius id temporibus pariatur sapiente molestiae.', 1, 2, 50000, NULL, '2022-05-14 02:44:25', '2022-05-14 02:44:25', '', NULL),
(3, 'Mr.', '499000', NULL, NULL, NULL, 'Rem iste commodi ut aperiam aut asperiores consequatur iure. Porro odit odit dolorem in iusto. Omnis deleniti id enim odio tenetur error laboriosam. Ducimus nobis sequi omnis nisi veritatis.', 1, 2, 50000, NULL, '2022-05-14 02:44:25', '2022-05-14 02:44:25', '', NULL),
(4, 'Mrs.', '499000', NULL, NULL, NULL, 'Quos officia quisquam non et ut quo fugit. Est fugit et et. Voluptatem ad voluptas et esse.', 1, 2, 50000, '2022-05-27 01:56:33', '2022-05-14 02:44:25', '2022-05-27 01:56:33', '', NULL),
(5, 'Dr.', '499000', NULL, NULL, NULL, 'Qui a ut maxime delectus repellat. Sint reiciendis nobis reprehenderit maxime. Ducimus et eum id.', 1, 2, 50000, '2022-05-27 01:56:33', '2022-05-14 02:44:25', '2022-05-27 01:56:33', '', NULL),
(6, 'Prof.', '499000', NULL, NULL, NULL, 'Aut quaerat quos et nesciunt tempora. Et blanditiis voluptas temporibus velit incidunt quos. Est consequatur et tempora occaecati non qui assumenda eaque. Molestias rem asperiores inventore voluptatem.', 1, 2, 50000, '2022-05-27 01:56:33', '2022-05-14 02:44:25', '2022-05-27 01:56:33', '', NULL),
(7, 'Mr.', '499000', NULL, NULL, NULL, 'Quia aut et hic odio. Dolor repellat explicabo voluptates cumque unde eos. Dolores voluptatem voluptas vel delectus.', 1, 2, 50000, '2022-05-27 01:56:33', '2022-05-14 02:44:25', '2022-05-27 01:56:33', '', NULL),
(8, 'Miss', '499000', NULL, NULL, NULL, 'Perspiciatis culpa minus velit doloremque atque ipsam praesentium. Sunt dolor hic rerum amet illo facilis. Autem beatae qui dolores quis itaque non dolorem iure. Harum ipsum tenetur velit nisi.', 1, 2, 50000, NULL, '2022-05-14 02:44:25', '2022-05-14 02:44:25', '', NULL),
(9, 'Prof.', '499000', NULL, NULL, NULL, 'Ut quos placeat vitae soluta officiis. Nulla quia molestias hic. Consequatur velit eos et aliquid et aut quia.', 1, 2, 50000, '2022-05-27 01:54:39', '2022-05-14 02:44:25', '2022-05-27 01:54:39', '', NULL),
(10, 'Prof.', '499000', NULL, NULL, NULL, 'Id consectetur sit accusamus numquam nisi animi voluptatem. Eum odit libero itaque voluptatem est voluptatem sint. Eum mollitia iure ipsam omnis qui accusantium a suscipit.', 1, 2, 50000, '2022-05-27 01:54:47', '2022-05-14 02:44:25', '2022-05-27 01:54:47', '', 1),
(11, 'Ms.', '499000', NULL, NULL, NULL, 'Aut hic perspiciatis quod aliquam enim. Aut quas deleniti cumque eligendi aliquam laborum et. Repudiandae qui quos et autem.', 1, 2, 50000, '2022-05-27 01:54:51', '2022-05-14 02:44:25', '2022-05-27 01:54:51', '', 0),
(12, 'Prof.', '499000', NULL, NULL, NULL, 'Doloremque laborum harum rerum voluptas corrupti illo sed. Similique voluptas ut eum aut repellendus.', 1, 2, 50000, NULL, '2022-05-14 02:44:25', '2022-05-14 02:44:25', '', 1),
(13, 'Miss', '499000', NULL, NULL, NULL, 'Voluptates fuga velit ut sunt atque. Quasi architecto adipisci facere quo quaerat et. Ratione quas veritatis sed facere impedit.', 1, 2, 50000, NULL, '2022-05-14 02:44:25', '2022-05-14 02:44:25', '', 1),
(14, 'Dr.', '499000', NULL, NULL, NULL, 'Exercitationem omnis vel est explicabo. Et numquam corporis placeat ut et accusantium id. Iure fugiat voluptates facilis ducimus dolorem sit. Mollitia aperiam enim repudiandae similique ducimus laborum tempore.', 1, 2, 50000, NULL, '2022-05-14 02:44:25', '2022-05-14 02:44:25', '', 0),
(15, 'Ms.', '499000', NULL, NULL, NULL, 'Id consectetur saepe quasi facilis nisi adipisci impedit. Neque et incidunt itaque voluptas expedita. Voluptatibus voluptatem voluptatem autem autem. Inventore aliquam doloremque eos voluptatibus veniam recusandae dicta.', 1, 2, 50000, '2022-05-27 02:00:38', '2022-05-14 02:44:25', '2022-05-27 02:00:38', '', NULL),
(16, 'Dr.', '499000', NULL, NULL, NULL, 'Dicta consectetur eum fuga quia sunt. Iusto in ullam amet consequatur quos odit. Blanditiis corrupti placeat ducimus excepturi ut velit reprehenderit.', 1, 2, 50000, '2022-05-27 02:00:38', '2022-05-14 02:44:25', '2022-05-27 02:00:38', '', NULL),
(17, 'Mrs.', '499000', NULL, NULL, NULL, 'Est non cum accusantium iure. Ea eum numquam quia quasi omnis. Voluptate maiores error nesciunt provident.', 1, 2, 50000, '2022-05-27 02:00:23', '2022-05-14 02:44:25', '2022-05-27 02:00:23', '', NULL),
(18, 'Dr.', '499000', NULL, NULL, NULL, 'Expedita est non consequatur aliquam. Non architecto velit vitae fugiat sed odit aspernatur. Hic nostrum omnis enim non sunt eum. Praesentium consequatur quo et.', 1, 2, 50000, '2022-05-27 02:00:23', '2022-05-14 02:44:25', '2022-05-27 02:00:23', '', 0),
(19, 'Miss', '499000', NULL, NULL, NULL, 'Nisi qui velit aut et deleniti. Omnis in laboriosam totam libero sequi explicabo totam. At quae rerum assumenda dignissimos. Rerum perferendis quidem amet et ipsum minus dolorem. Sequi quibusdam error ratione qui accusamus.', 1, 2, 50000, '2022-05-27 01:55:01', '2022-05-14 02:44:25', '2022-05-27 01:55:01', '', NULL),
(20, 'Prof.', '499000', NULL, NULL, NULL, 'A molestiae vel esse perferendis et atque. Modi blanditiis laudantium dolores rem. Et vel non harum dolorem voluptatum. Aut commodi illo fugit quidem quis. Aut qui nesciunt reiciendis autem rerum maiores.', 1, 2, 50000, '2022-05-27 01:54:59', '2022-05-14 02:44:25', '2022-05-27 01:54:59', '', NULL),
(21, 'Nguyễn Tuấn Anh 2022', '300000', '124', NULL, NULL, '<p>&aacute;dasdasdsad&nbsp;</p>', 1, NULL, NULL, NULL, '2022-05-17 01:58:54', '2022-05-17 01:58:54', '<p>xczxczxczxczc</p>', 0),
(22, 'test 1', '300000', '123123', NULL, NULL, '<p>&aacute;dasd</p>', 1, NULL, NULL, NULL, '2022-05-17 03:45:56', '2022-05-17 03:45:56', '<p>&aacute;dasdasdas</p>', 1),
(23, 'trung văn A', '300000', NULL, '/storage/products_image/a0GLMoBDV2MlGNJn0hAx.jpg', 'gbd-pan-flash-ic-trang-vang-4_large.jpg', '<p>trung văn</p>', 1, NULL, NULL, NULL, '2022-05-20 00:43:10', '2022-05-20 00:43:10', '<p>sản phẩm mới&nbsp;</p>', 1),
(24, 'Ức gà tươi phi lê C.P khay 500g (1-4 miếng)', '1111111111', NULL, NULL, NULL, '<p>NEW dexs</p>', 1, NULL, NULL, NULL, '2022-05-20 01:21:20', '2022-05-20 01:21:20', '<p>m&ocirc; tả ngắn</p>', 1),
(25, 'New Product', '2222', '200', '/storage/products_image/YH8t2Ab1pzAPW9puwfNi.jpg', 'qabd-psg-2022-xam-2_large.jpg', '<p>new</p>', 1, NULL, NULL, NULL, '2022-05-20 01:23:52', '2022-06-02 06:49:50', '<p>sos</p>', 1),
(26, 'Test Ảnh số 2', '300000', NULL, NULL, NULL, '<p>the new</p>', 1, NULL, NULL, NULL, '2022-05-20 01:29:33', '2022-05-20 01:29:33', '<p>Sản phẩm phải tồn tại</p>', 1),
(30, 'the new sssssas', '12000', NULL, NULL, NULL, '<p>&aacute;dsadsd</p>', 1, NULL, NULL, NULL, '2022-05-20 01:49:38', '2022-05-20 01:49:38', '<p>&aacute;dadasd</p>', 1),
(31, 'the new sssssass', '12000', NULL, NULL, NULL, '<p>&aacute;dsadsd</p>', 1, NULL, NULL, NULL, '2022-05-20 01:55:46', '2022-06-02 06:44:04', '<p>&aacute;dadasd</p>', 1),
(32, 'the new sssssas', '12000', NULL, NULL, NULL, '<p>&aacute;dsadsd</p>', 1, NULL, NULL, '2022-06-02 06:46:37', '2022-05-20 02:01:18', '2022-06-02 06:46:37', '<p>&aacute;dadasd</p>', 1),
(33, 'Tôi là Ai', '300000', '222', NULL, NULL, '<p>T&ocirc;i l&agrave; t&ocirc;i</p>', 1, NULL, NULL, '2022-06-02 06:46:37', '2022-05-20 02:03:19', '2022-06-02 06:46:37', '<p>T&ocirc;i shorrt</p>', 1),
(34, 'the mmmmmmm', '12222', '11111', NULL, NULL, '<p>the mee</p>', 1, NULL, NULL, '2022-05-27 01:54:27', '2022-05-20 02:13:53', '2022-05-27 01:54:27', '<p>&aacute;dasdasd</p>', 1),
(35, 'trungtv0910 NEW', '300000', '123123', '/storage/products_image/QS5trWUtr2lh2Vyj2xGJ.jpg', 'giay-bong-da-jogarbola-jgbl-9020-colorlux-2-bac-1_large.jpg', '<p>đ&acirc;sd</p>', 1, NULL, NULL, NULL, '2022-05-20 02:17:41', '2022-05-26 07:15:03', '<p>sdasd</p>', 1),
(36, 'Ức gà tươi phi lê C.P khay 500g', '4995000', '10', '/storage/products_image/ruMMACFDQUci2wnLQnAN.jpg', 'gbd-pan-flash-ic-trang-vang-1_large.jpg', '<p>aaaaaaaaaaaaaaaaaaaa</p>', 1, NULL, NULL, NULL, '2022-05-20 02:33:56', '2022-06-02 06:43:27', '<p>&acirc;sdasd</p>', 1),
(37, 'Ức gà tươi phi lê C.P khay', '4995000', '10', '/storage/products_image/0l3PfbqHNDaxCflYMtEW.jpg', 'mt-181229-xanh_large.jpg', '<p>aaaaaaaaaaaaaaaaaaaaz</p>', 1, NULL, NULL, NULL, '2022-05-20 02:34:57', '2022-05-26 07:18:31', '<p>The new project</p>', 0),
(38, 'Giày IC ROLEES', '4995000', NULL, '/storage/products_image/uyJyDOlRTqBsubOvOwA6.jpg', 'gbd-pan-flash-ic-trang-vang-1_large.jpg', '<p>San Phẩm Từ Thi&ecirc;n Nhi&ecirc;n</p>', 1, NULL, NULL, NULL, '2022-05-20 03:10:08', '2022-05-20 03:10:08', '<p>NEW sả</p>', 1),
(39, 'Giày MC 20000', '4995000', NULL, '/storage/products_image/oJVoRUSxbxtC1tOhjhPm.jpg', 'gbd-pan-flash-ic-xanhla-6_large.jpg', '<p>gi&agrave;y</p>', 1, NULL, NULL, NULL, '2022-05-20 03:13:05', '2022-05-20 03:13:05', '<p>đa</p>', 1),
(40, 'Giày Thể Thao Ngoài Sân', '4995000', '123123', '/storage/products_image/Xn9w13HL423RCnDHcY5T.jpg', 'quan-lung-egan-xanh-1_large.jpg', '<p>Gi&agrave;y Thể Thao Ngo&agrave;i<strong> S&acirc;n đx</strong></p>', 1, NULL, NULL, NULL, '2022-05-20 10:07:17', '2022-06-02 06:46:18', '<p>Gi&agrave;y Thể Thao Ngo&agrave;i S&acirc;n</p>', 1),
(41, 'Test 21', '300000', NULL, '/storage/products_image/BT4jwyiidXfuQl9NJmtu.jpg', 'n-qabd-cp-roger-xanh.jpg', '<p>test 21</p>', 1, NULL, NULL, NULL, '2022-05-20 20:56:34', '2022-05-20 20:56:34', '<p>xxxx</p>', 1),
(42, 'Nguyễn Tuấn Anh 2022s', '2222', NULL, '/storage/products_image/Ey63n34p8c6TB3VL9L8V.jpg', 'gbd-pan-vigor-x-tf-vang-2_large.jpg', '<p>&aacute;dasdas</p>', 1, NULL, NULL, NULL, '2022-05-26 03:18:30', '2022-05-26 03:18:30', '<p>zxczxc</p>', 1);

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
(10, 38, 20, '2022-05-20 03:10:08', '2022-05-20 03:10:08'),
(12, 39, 20, '2022-05-20 03:13:05', '2022-05-20 03:13:05'),
(13, 39, 4, '2022-05-20 03:13:05', '2022-05-20 03:13:05'),
(15, 40, 3, '2022-05-20 10:07:18', '2022-05-20 10:07:18'),
(16, 41, 1, '2022-05-20 20:56:34', '2022-05-20 20:56:34'),
(17, 41, 18, '2022-05-20 20:56:34', '2022-05-20 20:56:34'),
(18, 42, 18, '2022-05-26 03:18:30', '2022-05-26 03:18:30'),
(19, 42, 20, '2022-05-26 03:18:30', '2022-05-26 03:18:30'),
(21, 41, 3, '2022-05-26 07:06:50', '2022-05-26 07:06:50'),
(22, 42, 4, '2022-05-26 07:07:28', '2022-05-26 07:07:28'),
(23, 40, 4, '2022-05-26 07:09:07', '2022-05-26 07:09:07'),
(24, 41, 20, '2022-05-26 07:09:54', '2022-05-26 07:09:54'),
(26, 37, 4, '2022-05-26 07:18:12', '2022-05-26 07:18:12'),
(27, 37, 14, '2022-05-26 07:18:12', '2022-05-26 07:18:12'),
(28, 35, 20, '2022-06-02 06:42:58', '2022-06-02 06:42:58'),
(29, 36, 3, '2022-06-02 06:43:27', '2022-06-02 06:43:27'),
(30, 31, 3, '2022-06-02 06:44:04', '2022-06-02 06:44:04'),
(31, 38, 14, '2022-06-02 06:45:55', '2022-06-02 06:45:55'),
(32, 26, 4, '2022-06-02 06:46:54', '2022-06-02 06:46:54'),
(33, 25, 3, '2022-06-02 06:49:50', '2022-06-02 06:49:50');

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
(32, '/storage/products_image/yPwskFEb0W8exz43kUOn.jpg', 'mitre-181229-ghi5_large.jpg', 37, '2022-05-26 07:18:12', '2022-05-26 07:18:12');

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
(17, 42, 18, '2022-05-26 07:07:28', '2022-05-26 07:07:28'),
(29, 41, 30, '2022-05-26 07:09:54', '2022-05-26 07:09:54'),
(33, 37, 32, '2022-05-26 07:18:31', '2022-05-26 07:18:31'),
(34, 37, 22, '2022-05-26 07:18:31', '2022-05-26 07:18:31'),
(35, 35, 20, '2022-06-02 06:42:58', '2022-06-02 06:42:58'),
(36, 38, 33, '2022-06-02 06:45:55', '2022-06-02 06:45:55'),
(37, 38, 34, '2022-06-02 06:45:55', '2022-06-02 06:45:55'),
(38, 40, 35, '2022-06-02 06:46:18', '2022-06-02 06:46:18'),
(39, 40, 36, '2022-06-02 06:46:18', '2022-06-02 06:46:18'),
(40, 40, 37, '2022-06-02 06:46:18', '2022-06-02 06:46:18'),
(41, 26, 38, '2022-06-02 06:46:54', '2022-06-02 06:46:54'),
(42, 25, 39, '2022-06-02 06:49:50', '2022-06-02 06:49:50'),
(43, 25, 40, '2022-06-02 06:49:50', '2022-06-02 06:49:50'),
(44, 25, 41, '2022-06-02 06:49:50', '2022-06-02 06:49:50');

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
(12, 9, 2, NULL, NULL);

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
(41, '8', '2022-06-02 06:49:50', '2022-06-02 06:49:50');

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
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `is_test` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `is_test`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'trungtv0910', 'trungtv0910@gmail.com', NULL, '$2y$10$Qm6w9F.iBqctRhHji/BnAuocu6O2.P17y7YHnKsu6RN.tutA1gPbe', NULL, 1, 1, '2022-05-29 01:09:37', '2022-05-29 01:09:37', NULL),
(2, 'trungstalay6', 'trungstalay6@gmail.com', NULL, '$2y$10$C2Mv/0UrEBwHLjTQxzScA.aNR5WsZDNXgfzRMN9Wz03.eZOKCb0RS', NULL, 0, 0, '2022-05-29 01:10:35', '2022-05-29 01:10:35', NULL),
(3, 'khachhang', 'khachhang@gmail.com', NULL, '$2y$10$sKbgTic37uRNz.KLwZPJW.n5H1N6FqVd3dP6/NRFwATdEdsuGz9k2', NULL, 1, NULL, '2022-05-30 07:41:30', '2022-05-30 07:41:30', NULL),
(5, 'trungvanA', 'hue@gmail.com', NULL, '$2y$10$pLJVoN5oauKiHGe8qJYfheq4nWQCFFmte4Q/1KSi8MqNuJcmH9z3O', NULL, 0, NULL, '2022-05-31 06:32:46', '2022-06-01 02:46:23', '2022-06-01 02:46:23'),
(7, 'khanhvy123', 'khanhvy123@gmail.com', NULL, '$2y$10$O/RA7FEnOwMfIyOXsCo5reQjt4L5G3C7f3vtKO4CjPLSNsnQiwryK', NULL, 0, NULL, '2022-06-01 00:59:17', '2022-06-01 02:45:34', NULL),
(8, 'Hoàng Anh', 'giamdoc@gmail.com', NULL, '$2y$10$MKcx1D0hCcIKx4PkSwRe8uFMTNoAP5fd6d0Gy8ek1kEbWR01H6.fG', NULL, 0, NULL, '2022-06-01 01:46:29', '2022-06-01 02:36:14', NULL),
(9, 'Teo1200', 'teo1200@gmail.com', NULL, '$2y$10$A469nWPxOR3VeEsTE39gzur30JEDxqqIyzcpw5I7pPBxSZRWbvyke', NULL, 0, NULL, '2022-06-01 02:47:41', '2022-06-01 03:11:53', '2022-06-01 03:11:53');

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
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
