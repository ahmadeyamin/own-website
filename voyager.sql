-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2019 at 07:27 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voyager`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'php', 'php', '2019-04-18 11:44:49', '2019-05-31 00:28:54'),
(2, NULL, 1, 'wordpress', 'wordpress', '2019-04-18 11:44:49', '2019-05-31 00:29:10'),
(3, NULL, 3, 'javascript', 'javascript', '2019-04-18 12:51:43', '2019-05-31 03:24:17'),
(4, NULL, 1, 'notice', 'notice', '2019-05-31 00:29:34', '2019-05-31 00:29:34'),
(5, NULL, 2, 'tricks', 'tricks', '2019-05-31 00:29:52', '2019-05-31 03:24:11'),
(6, NULL, 1, 'blog', 'blog', '2019-05-31 00:30:01', '2019-05-31 00:30:01'),
(7, NULL, 100, 'Uncategorized', 'uncategorized', '2019-06-02 23:12:35', '2019-06-02 23:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"200\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{\"validation\":{\"rule\":\"required\"}}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(66, 8, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(67, 8, 'author_id', 'hidden', 'Author Id', 1, 0, 1, 1, 1, 0, '{}', 2),
(68, 8, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(69, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 4),
(70, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:portfolios,slug\"}}', 5),
(71, 8, 'body', 'rich_text_box', 'Body', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 6),
(72, 8, 'link', 'text', 'Link', 1, 1, 1, 1, 1, 1, '{}', 7),
(73, 8, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 8),
(74, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(75, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(76, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(77, 1, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 5),
(78, 1, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 6),
(79, 5, 'view_count', 'text', 'View Count', 1, 1, 1, 1, 1, 1, '{}', 10),
(80, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 9, 'author_id', 'hidden', 'Author Id', 1, 0, 1, 1, 1, 1, '{}', 2),
(82, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(83, 9, 'body', 'markdown_editor', 'Body', 0, 0, 1, 1, 1, 1, '{}', 4),
(84, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(85, 9, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(86, 9, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(87, 9, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 8),
(88, 9, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(89, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 10),
(90, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-04-18 11:44:43', '2019-05-31 23:26:51'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-04-18 11:44:43', '2019-04-18 11:44:43'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-04-18 11:44:43', '2019-04-18 11:44:43'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-04-18 11:44:49', '2019-04-18 11:44:49'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-04-18 11:44:49', '2019-06-02 23:10:27'),
(8, 'portfolios', 'portfolios', 'Portfolio', 'Portfolios', NULL, 'App\\Portfolio', NULL, NULL, NULL, 0, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-04-18 11:55:08', '2019-05-31 21:40:11'),
(9, 'pages', 'pages', 'Page', 'Pages', NULL, 'App\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-03 00:25:52', '2019-06-03 00:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-04-18 11:44:45', '2019-04-18 11:44:45'),
(3, 'main', '2019-06-03 00:09:35', '2019-06-03 00:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-04-18 11:44:45', '2019-04-18 11:44:45', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-04-18 11:44:45', '2019-06-03 00:34:26', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 7, '2019-04-18 11:44:45', '2019-06-03 00:34:26', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 8, '2019-04-18 11:44:45', '2019-06-03 00:34:26', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-04-18 11:44:45', '2019-04-24 05:45:49', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-04-18 11:44:45', '2019-04-24 04:58:36', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-04-18 11:44:46', '2019-04-24 04:58:36', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-04-18 11:44:46', '2019-04-24 04:58:36', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-04-18 11:44:46', '2019-04-24 04:58:36', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2019-04-18 11:44:46', '2019-04-24 05:45:49', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 6, '2019-04-18 11:44:49', '2019-06-03 00:34:26', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 2, '2019-04-18 11:44:50', '2019-04-24 04:58:48', 'voyager.posts.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-04-18 11:44:53', '2019-04-24 04:58:36', 'voyager.hooks', NULL),
(16, 1, 'Portfolios', '', '_self', 'voyager-documentation', '#000000', NULL, 3, '2019-04-18 11:55:08', '2019-06-03 00:34:23', 'voyager.portfolios.index', 'null'),
(20, 3, 'Home', '/', '_self', NULL, '#000000', NULL, 11, '2019-06-03 00:10:08', '2019-06-03 00:10:15', NULL, ''),
(21, 3, 'Blog', '/blog', '_self', NULL, '#000000', NULL, 12, '2019-06-03 00:10:42', '2019-06-03 00:13:27', NULL, ''),
(22, 3, 'Contact Us', '/page/contact-us', '_self', NULL, '#000000', NULL, 13, '2019-06-03 00:14:30', '2019-06-03 00:15:22', NULL, ''),
(23, 1, 'Pages', '', '_self', 'voyager-documentation', '#000000', NULL, 4, '2019-06-03 00:25:52', '2019-06-03 00:34:38', 'voyager.pages.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(55, '2014_10_12_000000_create_users_table', 1),
(56, '2014_10_12_100000_create_password_resets_table', 1),
(57, '2016_01_01_000000_add_voyager_user_fields', 1),
(58, '2016_01_01_000000_create_data_types_table', 1),
(59, '2016_01_01_000000_create_pages_table', 1),
(60, '2016_01_01_000000_create_posts_table', 1),
(61, '2016_02_15_204651_create_categories_table', 1),
(62, '2016_05_19_173453_create_menu_table', 1),
(63, '2016_10_21_190000_create_roles_table', 1),
(64, '2016_10_21_190000_create_settings_table', 1),
(65, '2016_11_30_135954_create_permission_table', 1),
(66, '2016_11_30_141208_create_permission_role_table', 1),
(67, '2016_12_26_201236_data_types__add__server_side', 1),
(68, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(69, '2017_01_14_005015_create_translations_table', 1),
(70, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(71, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(72, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(73, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(74, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(75, '2017_08_05_000000_add_group_to_settings_table', 1),
(76, '2017_11_26_013050_add_user_role_relationship', 1),
(77, '2017_11_26_015000_create_user_roles_table', 1),
(78, '2018_03_11_000000_add_user_settings', 1),
(79, '2018_03_14_000000_add_details_to_data_types_table', 1),
(80, '2018_03_16_000000_make_settings_value_nullable', 1),
(81, '2019_04_18_171757_create_portfolios_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'about', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'about', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-04-18 11:44:51', '2019-06-02 12:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-04-18 11:44:46', '2019-04-18 11:44:46'),
(2, 'browse_bread', NULL, '2019-04-18 11:44:46', '2019-04-18 11:44:46'),
(3, 'browse_database', NULL, '2019-04-18 11:44:46', '2019-04-18 11:44:46'),
(4, 'browse_media', NULL, '2019-04-18 11:44:46', '2019-04-18 11:44:46'),
(5, 'browse_compass', NULL, '2019-04-18 11:44:46', '2019-04-18 11:44:46'),
(6, 'browse_menus', 'menus', '2019-04-18 11:44:46', '2019-04-18 11:44:46'),
(7, 'read_menus', 'menus', '2019-04-18 11:44:46', '2019-04-18 11:44:46'),
(8, 'edit_menus', 'menus', '2019-04-18 11:44:46', '2019-04-18 11:44:46'),
(9, 'add_menus', 'menus', '2019-04-18 11:44:46', '2019-04-18 11:44:46'),
(10, 'delete_menus', 'menus', '2019-04-18 11:44:46', '2019-04-18 11:44:46'),
(11, 'browse_roles', 'roles', '2019-04-18 11:44:46', '2019-04-18 11:44:46'),
(12, 'read_roles', 'roles', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(13, 'edit_roles', 'roles', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(14, 'add_roles', 'roles', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(15, 'delete_roles', 'roles', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(16, 'browse_users', 'users', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(17, 'read_users', 'users', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(18, 'edit_users', 'users', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(19, 'add_users', 'users', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(20, 'delete_users', 'users', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(21, 'browse_settings', 'settings', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(22, 'read_settings', 'settings', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(23, 'edit_settings', 'settings', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(24, 'add_settings', 'settings', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(25, 'delete_settings', 'settings', '2019-04-18 11:44:47', '2019-04-18 11:44:47'),
(26, 'browse_categories', 'categories', '2019-04-18 11:44:49', '2019-04-18 11:44:49'),
(27, 'read_categories', 'categories', '2019-04-18 11:44:49', '2019-04-18 11:44:49'),
(28, 'edit_categories', 'categories', '2019-04-18 11:44:49', '2019-04-18 11:44:49'),
(29, 'add_categories', 'categories', '2019-04-18 11:44:49', '2019-04-18 11:44:49'),
(30, 'delete_categories', 'categories', '2019-04-18 11:44:49', '2019-04-18 11:44:49'),
(31, 'browse_posts', 'posts', '2019-04-18 11:44:50', '2019-04-18 11:44:50'),
(32, 'read_posts', 'posts', '2019-04-18 11:44:50', '2019-04-18 11:44:50'),
(33, 'edit_posts', 'posts', '2019-04-18 11:44:50', '2019-04-18 11:44:50'),
(34, 'add_posts', 'posts', '2019-04-18 11:44:50', '2019-04-18 11:44:50'),
(35, 'delete_posts', 'posts', '2019-04-18 11:44:50', '2019-04-18 11:44:50'),
(41, 'browse_hooks', NULL, '2019-04-18 11:44:53', '2019-04-18 11:44:53'),
(47, 'browse_portfolios', 'portfolios', '2019-04-18 11:55:08', '2019-04-18 11:55:08'),
(48, 'read_portfolios', 'portfolios', '2019-04-18 11:55:08', '2019-04-18 11:55:08'),
(49, 'edit_portfolios', 'portfolios', '2019-04-18 11:55:08', '2019-04-18 11:55:08'),
(50, 'add_portfolios', 'portfolios', '2019-04-18 11:55:08', '2019-04-18 11:55:08'),
(51, 'delete_portfolios', 'portfolios', '2019-04-18 11:55:08', '2019-04-18 11:55:08'),
(52, 'browse_pages', 'pages', '2019-06-03 00:25:52', '2019-06-03 00:25:52'),
(53, 'read_pages', 'pages', '2019-06-03 00:25:52', '2019-06-03 00:25:52'),
(54, 'edit_pages', 'pages', '2019-06-03 00:25:52', '2019-06-03 00:25:52'),
(55, 'add_pages', 'pages', '2019-06-03 00:25:52', '2019-06-03 00:25:52'),
(56, 'delete_pages', 'pages', '2019-06-03 00:25:52', '2019-06-03 00:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `author_id`, `title`, `image`, `slug`, `body`, `link`, `featured`, `created_at`, `updated_at`) VALUES
(6, 1, 'If you did not go with the dummy user,dg', 'portfolios\\June2019\\3HNd7y7z3wjFqqh8l12V.jpg', 'if-you-did-not-go-with-the-dummy-user-dg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.</p>', 'http:://google.com', 1, '2019-05-31 21:41:52', '2019-05-31 21:41:52'),
(7, 1, 'New Post From 1', 'portfolios\\June2019\\Pv1t9EuyVVBb0Qr5RqYb.jpg', 'new-post-from-1', '<p>dughuLorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque p</p>\r\n<p>orro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsag</p>\r\n<p>natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.</p>', 'http:://google.com', 0, '2019-05-31 21:42:26', '2019-05-31 21:42:26'),
(8, 1, 'If you did not go with ytrhg fg', 'portfolios\\June2019\\pBSwrujdt2o63rk78Ccj.jpg', 'if-you-did-not-go-with-ytrhg-fg', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis ape</p>\r\n<p>riam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ip</p>\r\n<p>sa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit am</p>\r\n<p>et, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumend</p>\r\n<p>a.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam deleniti ipsa natus perspiciatis tempora atque porro adipisci incidunt ab, amet iste. Odio ratione quaerat, eaque officiis aperiam saepe sint assumenda.</p>', 'http:://google.com', 0, '2019-05-31 21:42:46', '2019-05-31 21:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(255) NOT NULL DEFAULT '0',
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `view_count`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 1, 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-18 11:44:50', '2019-06-02 22:48:14'),
(2, 1, 1, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n<h2>We can use all kinds of format!</h2>\r\n<p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 2, 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-18 11:44:50', '2019-06-02 23:07:56'),
(3, 2, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 2, 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-18 11:44:50', '2019-06-02 23:05:41'),
(4, 2, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 2, 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-04-18 11:44:50', '2019-06-02 23:29:42'),
(5, 1, 1, 'If you did not go with the dummy user,dg', NULL, NULL, '<p>&nbsp;Lorem, ipsum dolor sit amet consectetur adipisicing elit. Perferendis facere aut ad. Aliquid doloremque cupiditate obcaecati. Ab rem velit quaerat delectus itaque eaque aliquid enim vitae ipsam consectetur! Magnam, est! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Perferendis facere aut ad. Aliquid doloremque cupiditate obcaecati. Ab rem velit quaerat delectus itaqugg</p>\r\n<p>&nbsp;</p>\r\n<p>e eaque aliquid enim vitae ipsam consectetur! Magnam, est! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Perferendis facere aut ad. Aliquid doloremque cupiditate obcaecati. Ab rem velit quaerat delectus itaque eaque aliquid enim vitae ipsam consectetur! Magnam, est! Lorem,</p>\r\n<p>&nbsp;</p>\r\n<p>ipsum dolor sit amet consectetur adipisicing elit. Perferendis facere aut ad. Aliquid doloremque cupiditate obcaecati. Ab rem velit quaerat delectus itaque eaque aliquid enim vitae ipsam consectetur! Magnam, est!</p>', 'posts\\May2019\\yUvyOi4f2SxbkeCGr3a8.jpg', 'if-you-did-not-go-with-the-dummy-user-dg', 13, NULL, NULL, 'PUBLISHED', 0, '2019-05-30 11:54:16', '2019-06-03 10:40:19'),
(6, 1, 1, 'If you did not go with ytrhg fg', NULL, NULL, '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Itaque, voluptates maiores? Autem placeat perferendis nesciunt repudiandae accusantium distinctio assumenda repellendus ipsum non corporis in, quaerat beatae dolorem nobis fugiat quibusdam?</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Itaque, voluptates maiores? Autem placeat perferendis nesciunt repudiandae accusantium distinctio assumenda repellendus ipsum non corporis in, quaerat beatae dolorem nobis fugiat quibusdam?</p>\r\n<p>&nbsp;</p>\r\n<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Itaque, voluptates maiores? Autem placeat perferendis nesciunt repudiandae accusantium distinctio assumenda repellendus ipsum non corporis in, quaerat beatae dolorem nobis fugiat quibusdam?</p>', 'posts\\May2019\\pcVzmdg7XIiDFVQWU4K0.jpg', 'if-you-did-not-go-with-ytrhg-fg', 87, NULL, 'hello,ok,iam,no', 'PUBLISHED', 0, '2019-05-30 23:50:47', '2019-06-03 10:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-04-18 11:44:46', '2019-04-18 11:44:46'),
(2, 'user', 'Normal User', '2019-04-18 11:44:46', '2019-04-18 11:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'WebEnvMs Service Ltd', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\June2019\\Rj5rI04Jg2DX8415SlyI.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', 'UA1367762461', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'WebEnvMs', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to WebEnvMs. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\June2019\\otazqttHSkPUyKnAnPtR.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\June2019\\Q5gISDIAywOOHd9rMeFb.png', '', 'image', 4, 'Admin'),
(10, 'site.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '1352103865.1540382036', '', 'text', 1, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-04-18 11:44:51', '2019-04-18 11:44:51'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-04-18 11:44:51', '2019-04-18 11:44:51'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-04-18 11:44:51', '2019-04-18 11:44:51'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-04-18 11:44:51', '2019-04-18 11:44:51'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-04-18 11:44:51', '2019-04-18 11:44:51'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-04-18 11:44:51', '2019-04-18 11:44:51'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-04-18 11:44:51', '2019-04-18 11:44:51'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-04-18 11:44:51', '2019-04-18 11:44:51'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-04-18 11:44:51', '2019-04-18 11:44:51'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-04-18 11:44:52', '2019-04-18 11:44:52'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-04-18 11:44:52', '2019-04-18 11:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `facebook` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `phone`, `facebook`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', '01743986008', 'ahmadeyamin', 'users\\April2019\\b9lJfX7K4Jdd1M4VjjUI.jpg', NULL, '$2y$10$hxQmyTI0zQ.EIkkzt.WM8.QC.Z.HdzstfRdbrdZfhenswap3iooa2', 'omiPXufAHOsKi1qVpoRoosp57SBebPVrvnkB4BpJsiFGNsQr5Nyz0YUNV1uQ', '{\"locale\":\"en\"}', '2019-04-18 11:44:49', '2019-06-01 00:13:36'),
(2, 2, 'ahmad eyamin', 'webenvms@gmail.com', NULL, NULL, 'users/default.png', NULL, '$2y$10$LUi53ZGHCMIjuq5PhguzHOC4ZSf49S0uKnUl6xF9G58yEmQC4SslG', NULL, '{\"locale\":\"en\"}', '2019-04-24 06:07:39', '2019-05-31 23:29:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portfolios_slug_unique` (`slug`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
