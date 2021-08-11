-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 11, 2021 at 10:05 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8_Ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'quis optio', 'quis-optio', '2021-07-21 00:55:41', '2021-07-21 00:55:41'),
(2, 'quas et', 'quas-et', '2021-07-21 00:55:41', '2021-07-21 00:55:41'),
(3, 'fuga aut', 'fuga-aut', '2021-07-21 00:55:41', '2021-07-21 00:55:41'),
(4, 'nemo corporis', 'nemo-corporis', '2021-07-21 00:55:41', '2021-07-21 00:55:41'),
(5, 'id voluptatem', 'id-voluptatem', '2021-07-21 00:55:41', '2021-07-21 00:55:41'),
(6, 'sed aspernatur', 'sed-aspernatur', '2021-07-21 00:55:41', '2021-07-21 00:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'arkar', 'arkar@gmail.com', '09123456789', 'Hello.....', '2021-08-08 04:16:59', '2021-08-08 04:16:59'),
(2, 'arkar', 'arkar@gmail.com', '09123456789', 'Testing Message 2', '2021-08-08 04:23:00', '2021-08-08 04:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(1, 'OFF100', 'fixed', '100.00', '1000.00', '2021-08-04 06:12:09', '2021-08-05 03:15:36', '2021-08-06'),
(3, 'OFF20P', 'percent', '20.00', '1200.00', '2021-08-04 08:05:06', '2021-08-04 08:05:06', '2021-08-05'),
(4, 'OFF30P', 'percent', '30.00', '1300.00', '2021-08-05 03:05:23', '2021-08-05 03:10:32', '2021-08-09');

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
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,5', 6, '2021-07-25 08:38:23', '2021-07-25 03:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'First slider title', 'First slider subtitle', '500', 'http://127.0.0.1:8000/shop', '1627191561.jpg', 1, '2021-07-24 23:01:55', '2021-07-24 23:09:21'),
(5, 'second slider title', 'second slider subtitle', '300', 'http://127.0.0.1:8000/shop', '1627191622.jpg', 1, '2021-07-24 23:10:22', '2021-07-24 23:10:22');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_07_20_145847_create_sessions_table', 1),
(7, '2021_07_21_064243_create_categories_table', 2),
(8, '2021_07_21_064329_create_products_table', 2),
(9, '2021_07_24_131711_create_home_sliders_table', 3),
(10, '2021_07_25_083510_create_home_categories_table', 4),
(11, '2021_07_29_053639_create_sales_table', 5),
(12, '2021_08_04_115431_create_coupons_table', 6),
(13, '2021_08_05_091729_add_expiry_date_to_coupons_table', 7),
(14, '2021_08_05_094710_create_orders_table', 8),
(15, '2021_08_05_094731_create_order_items_table', 8),
(16, '2021_08_05_094749_create_shippings_table', 8),
(17, '2021_08_05_094811_create_transactions_table', 8),
(18, '2021_08_07_062642_add_delivered_canceled_date_to_orders_table', 9),
(19, '2021_08_07_094522_create_reviews_table', 10),
(20, '2021_08_07_095033_add_rstatus_to_order_items_table', 11),
(21, '2021_08_07_105308_create_reviews_table', 12),
(22, '2021_08_08_101606_create_contacts_table', 13),
(23, '2021_08_08_120938_create_settings_table', 14),
(24, '2021_08_11_075351_create_shoppingcart_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(6, 2, '533.00', '0.00', '53.30', '586.30', 'Alxender', 'vito', '09123456789', 'vito@gmail.com', 'test line 1', 'test line 1', 'thingyungun', 'yangon', 'myanmar', '10014', 'canceled', 0, '2021-08-06 06:47:45', '2021-08-07 00:28:56', '2021-08-07', '2021-08-07'),
(7, 2, '354.00', '0.00', '35.40', '389.40', 'Arkar', 'Thein than', '09975559581', 'arkar@gmail.com', 'test line 1', 'test line 1', 'thingyungun', 'yangon', 'myanmar', '10014', 'canceled', 0, '2021-08-07 02:56:05', '2021-08-07 02:57:51', NULL, '2021-08-07'),
(8, 2, '179.00', '0.00', '17.90', '196.90', 'Arkar', 'Thein', '09123456789', 'arkar@gmail.com', 'test line 1', 'test line 1', 'thingyungun', 'yangon', 'myanmar', '10014', 'delivered', 0, '2021-08-07 03:27:20', '2021-08-07 03:27:41', '2021-08-07', NULL),
(9, 4, '594.00', '0.00', '59.40', '653.40', 'Arkar', 'Thein than', '09975559581', 'arkartheinthan7@gmail.com', 'test line 1', 'test line 1', 'thingyungun', 'yangon', 'myanmar', '10014', 'ordered', 0, '2021-08-10 07:05:03', '2021-08-10 07:05:03', NULL, NULL),
(10, 5, '477.00', '0.00', '47.70', '524.70', 'mg', 'mg', '09123456789', 'arkartheinthan1910@gmail.com', 'test line 1', 'test line 1', 'thingyungun', 'yangon', 'myanmar', '10014', 'canceled', 0, '2021-08-10 07:10:30', '2021-08-10 07:24:11', NULL, '2021-08-10'),
(11, 4, '240.00', '0.00', '24.00', '264.00', 'Arkar', 'Thein than', '09123456789', 'arkartheinthan7@gmail.com', 'test line 1', 'test line 1', 'thingyungun', 'yangon', 'myanmar', '10014', 'ordered', 0, '2021-08-10 07:16:33', '2021-08-10 07:16:33', NULL, NULL),
(12, 5, '387.00', '0.00', '38.70', '425.70', 'mg', 'mg', '09123456789', 'arkartheinthan1910@gmail.com', 'test line 1', 'test line 1', 'thingyungun', 'yangon', 'myanmar', '10014', 'canceled', 0, '2021-08-10 07:17:45', '2021-08-10 07:23:47', NULL, '2021-08-10'),
(13, 5, '50.00', '0.00', '5.00', '55.00', 'mg', 'mg', '09123456789', 'arkartheinthan1910@gmail.com', 'test line 1', 'test line 1', 'thingyungun', 'yangon', 'myanmar', '10017', 'canceled', 0, '2021-08-10 07:24:50', '2021-08-10 07:44:30', NULL, '2021-08-10'),
(14, 5, '369.00', '0.00', '36.90', '405.90', 'mg', 'mg', '09123456789', 'arkartheinthan1910@gmail.com', 'test line 1', 'test line 1', 'thingyungun', 'yangon', 'myanmar', '10014', 'canceled', 0, '2021-08-10 07:42:20', '2021-08-10 07:44:25', NULL, '2021-08-10'),
(15, 5, '387.00', '0.00', '38.70', '425.70', 'mg', 'mg', '09123456789', 'arkartheinthan1910@gmail.com', 'test line 1', 'test line 1', 'thingyungun', 'yangon', 'myanmar', '10014', 'ordered', 0, '2021-08-10 07:45:10', '2021-08-10 07:45:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`) VALUES
(7, 5, 6, '354.00', 1, '2021-08-06 06:47:45', '2021-08-06 06:47:45', 0),
(8, 7, 6, '179.00', 1, '2021-08-06 06:47:45', '2021-08-06 06:47:45', 0),
(9, 5, 7, '354.00', 1, '2021-08-07 02:56:05', '2021-08-07 02:56:05', 0),
(10, 7, 8, '179.00', 1, '2021-08-07 03:27:20', '2021-08-07 04:29:43', 1),
(11, 4, 9, '240.00', 1, '2021-08-10 07:05:03', '2021-08-10 07:05:03', 0),
(12, 5, 9, '354.00', 1, '2021-08-10 07:05:03', '2021-08-10 07:05:03', 0),
(13, 2, 10, '477.00', 1, '2021-08-10 07:10:31', '2021-08-10 07:10:31', 0),
(14, 4, 11, '240.00', 1, '2021-08-10 07:16:33', '2021-08-10 07:16:33', 0),
(15, 3, 12, '387.00', 1, '2021-08-10 07:17:45', '2021-08-10 07:17:45', 0),
(16, 6, 13, '50.00', 1, '2021-08-10 07:24:50', '2021-08-10 07:24:50', 0),
(17, 1, 14, '369.00', 1, '2021-08-10 07:42:20', '2021-08-10 07:42:20', 0),
(18, 3, 15, '387.00', 1, '2021-08-10 07:45:11', '2021-08-10 07:45:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@gmail.com', '$2y$10$i6XuIGi.KTh5aQoold2eeuFIiUOgTPaL02VJaJUWPC3f3jlywW.7K', '2021-08-09 02:48:52'),
('arkar@gmail.com', '$2y$10$9/.Kf0/8gnmjjWnwBXQSAODRONsPkeDElB1ALhUnYwdPISdM8LzQa', '2021-08-09 02:55:23'),
('admin@gmail.com', '$2y$10$xrGRO73qKLNvANbaPGWzwOcdxSnVLJ.R0yCBIcg1WerUeqalHNrPa', '2021-08-09 06:54:58');

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'iste tenetur quis eos', 'iste-tenetur-quis-eos', 'Aut eius facilis fugit quia cupiditate sunt commodi. Consequuntur dolore pariatur mollitia. Rerum natus totam sed dolor porro rerum nemo quis. Temporibus facilis aut laboriosam vel accusamus.', 'Explicabo et amet iusto qui dolores maxime. Dolorum modi asperiores illo. Qui molestias hic minus placeat voluptas deserunt laudantium. Enim facilis velit laudantium hic veritatis veritatis. Quae porro voluptas porro qui enim officia. Dolor minima magni ut. Temporibus non iste ut odit commodi. Molestiae possimus nemo recusandae aspernatur commodi nobis laboriosam.', '369.00', '350.00', 'DIGI184', 'instock', 0, 191, 'digital_19.jpg', NULL, 3, '2021-07-21 00:55:41', '2021-07-28 22:38:42'),
(2, 'voluptas quos architecto labore', 'voluptas-quos-architecto-labore', 'Eum et blanditiis minus. At sequi eligendi exercitationem consectetur neque ut architecto. Et incidunt ea aliquid soluta nobis perferendis esse.', 'Sint reprehenderit reiciendis voluptatem voluptatum dolorum accusantium. Blanditiis ut voluptas itaque nam error facere asperiores. Incidunt qui sit quis corporis aut consectetur et. Voluptatem natus eos accusamus aperiam optio et. Ut ut sint explicabo aliquam animi aliquid.', '477.00', '450.00', 'DIGI366', 'instock', 0, 160, 'digital_20.jpg', NULL, 5, '2021-07-21 00:55:41', '2021-07-28 22:39:11'),
(3, 'qui voluptas explicabo sed', 'qui-voluptas-explicabo-sed', 'Maxime saepe eveniet dolores vel enim ratione. Nihil eum enim occaecati labore tempore. Facilis debitis aliquid sed ut.', 'Nesciunt numquam cupiditate cum. Ab quia saepe ratione nesciunt. Possimus et nisi dolores. Repudiandae sit odit inventore perspiciatis excepturi. Dolores recusandae id dolore voluptates quia eaque. Enim omnis ipsam fuga aliquam sit alias expedita ratione. Pariatur dicta est accusantium soluta excepturi. Laudantium omnis corporis dolorum esse beatae nihil. Quo odit itaque cum veritatis. Optio dolorem totam sed occaecati.', '387.00', '360.00', 'DIGI496', 'instock', 0, 167, 'digital_15.jpg', NULL, 1, '2021-07-21 00:55:41', '2021-07-28 22:39:24'),
(4, 'a eum dicta magni', 'a-eum-dicta-magni', 'Vel accusantium aliquam vitae officia ab culpa. Aliquid qui eum dolores est aliquid atque. Quibusdam aut voluptatem dolorum et. Atque omnis rerum modi consectetur ut qui ut.', 'Unde libero possimus consequatur ad aperiam ut sed. Unde ad dolorem alias ullam eligendi. Velit consequatur neque est ut dolor. Libero delectus minima repudiandae. Et doloremque tempore voluptates molestiae. Fuga rerum iusto quam libero nihil. Dolores harum ducimus sed sed illum asperiores nostrum. Et similique asperiores incidunt et rerum nemo. Corporis tempore natus deserunt beatae dolor est consequuntur voluptatem.', '240.00', '220.00', 'DIGI226', 'instock', 0, 109, 'digital_11.jpg', NULL, 2, '2021-07-21 00:55:42', '2021-07-28 22:39:38'),
(5, 'deserunt sunt corrupti voluptatem', 'deserunt-sunt-corrupti-voluptatem', 'Inventore hic vitae quaerat sit distinctio voluptatem. Provident ipsa maiores est ab.', 'Maiores occaecati quae rerum perferendis sed doloribus illo. Non quas beatae voluptatem. Quia voluptatem rem beatae dolorum. Id voluptatibus consequatur voluptatibus placeat ad facere dolor. Officia unde aut velit aut odit voluptatem. Ratione eos mollitia ea tempore corporis est. Impedit nostrum quia qui ipsam. Vero officia explicabo veritatis. Nostrum possimus quia laborum et cumque laudantium.', '354.00', '340.00', 'DIGI390', 'instock', 0, 129, 'digital_13.jpg', NULL, 4, '2021-07-21 00:55:42', '2021-07-28 22:39:56'),
(6, 'nihil et ratione qui', 'nihil-et-ratione-qui', 'Recusandae esse inventore facere ipsa. Et corrupti accusamus non facilis maxime. Repellat nemo in alias reprehenderit dolore nobis adipisci. Dicta illum eos rerum inventore ut nesciunt facilis sequi.', 'Qui temporibus accusantium laudantium minus. Numquam enim cumque qui molestias. Ea enim quo quis. Totam blanditiis voluptatem a suscipit cum quod a. Nostrum molestias totam rem culpa rerum natus eius quae. Consequatur quis ipsam expedita voluptatem dolore illum sit. Consequuntur omnis animi quisquam et laborum molestias. Sapiente hic magni nihil temporibus. Vel ea et reiciendis mollitia eius. Commodi est rem unde suscipit accusantium enim. Nulla numquam consequatur quo nam ea odit.', '50.00', '45.00', 'DIGI387', 'instock', 0, 101, 'digital_14.jpg', NULL, 5, '2021-07-21 00:55:42', '2021-07-28 22:40:31'),
(7, 'non ex amet ex', 'non-ex-amet-ex', 'Velit culpa quia occaecati. Est soluta est ad earum eos aliquid blanditiis. Ipsam quis perferendis harum consequatur ullam et qui eveniet. Excepturi facere et illo labore commodi modi quam a.', 'Aut nam a porro assumenda. Natus quisquam dolores ut expedita dolorem. Tenetur aut id animi minus dolor qui vero. Quia temporibus quia laborum dolores cupiditate rerum. Sit atque iusto corporis accusantium voluptas. Ipsa modi quia consequatur et in omnis. Neque saepe itaque placeat aut ut. Quod ut quibusdam officiis. Ut iusto voluptas doloribus autem sapiente.', '179.00', NULL, 'DIGI383', 'instock', 0, 115, 'digital_1.jpg', NULL, 5, '2021-07-21 00:55:42', '2021-07-21 00:55:42'),
(8, 'sed iusto perspiciatis optio', 'sed-iusto-perspiciatis-optio', 'Molestias blanditiis ad cumque sit. Quia est laudantium et dolore expedita aut aspernatur. Animi quos et saepe enim nesciunt.', 'Incidunt sit id aliquid impedit deserunt. Nihil cum est autem ut et est nesciunt. Earum delectus quis temporibus aut. Adipisci nihil non quae vitae voluptatem non. Dolorem vero aspernatur labore nihil. Rerum ea excepturi sunt. Sit harum aperiam velit omnis et non. Esse fuga sint velit necessitatibus fuga. Minus ad dolorum eum nihil. Voluptas saepe aspernatur dolor ipsa voluptatem aliquam. Ipsam repellat enim provident laborum et et nam et.', '187.00', NULL, 'DIGI268', 'instock', 0, 133, 'digital_6.jpg', NULL, 2, '2021-07-21 00:55:42', '2021-07-21 00:55:42'),
(9, 'qui non facilis quos', 'qui-non-facilis-quos', 'Est consequatur impedit quasi rerum aut. Repudiandae architecto ut quas sit nihil. Expedita voluptatem aut esse facilis.', 'Deleniti eos cupiditate vel magnam in eaque dolores. Facilis non alias in laudantium. Autem et rem harum officiis. Sit et maiores qui quam culpa officiis animi. Ipsum fugiat saepe et porro. Perferendis magni qui modi rerum ex eos facilis. Omnis ducimus hic nihil et exercitationem saepe. Quae aut sit fugit officiis dolore. Quia cum explicabo voluptas tempore ipsum sed veniam. Sit ut quo non et ab optio.', '406.00', NULL, 'DIGI498', 'instock', 0, 143, 'digital_16.jpg', NULL, 5, '2021-07-21 00:55:42', '2021-07-21 00:55:42'),
(10, 'suscipit minima voluptatibus labore', 'suscipit-minima-voluptatibus-labore', 'Nemo ea ut laboriosam provident aliquam. Voluptatem voluptates quia a alias. Est non sit est.', 'Libero natus voluptates repellat facilis omnis ipsum culpa. Harum natus aperiam tempora qui aut. Est laudantium inventore modi. Officia assumenda et aliquam ratione. Et accusamus nemo voluptatum iusto dicta enim. Qui est aut quae. Alias dolor iste nostrum necessitatibus sit officiis. Facere voluptatem repudiandae eos inventore in quis sed.', '149.00', NULL, 'DIGI344', 'instock', 0, 142, 'digital_7.jpg', NULL, 2, '2021-07-21 00:55:42', '2021-07-21 00:55:42'),
(12, 'est et quis commodi', 'est-et-quis-commodi', 'Ducimus doloribus eius eum. Quo tenetur voluptatem asperiores reprehenderit aut dolore. Architecto vero nesciunt velit alias quo. Sit omnis debitis incidunt voluptatem consequatur maxime sint.', 'Totam rerum a nam excepturi ducimus. Rerum commodi velit quasi inventore rem excepturi quod rerum. Et sit nihil porro velit eum quasi sit. Facilis voluptatem sequi et sapiente aut quis. Adipisci distinctio rerum harum. Ducimus velit unde cupiditate nisi dolorem corporis nihil. Et rerum similique eos voluptas et fugit et. Saepe qui consequuntur voluptas ut dolores est numquam. Sit et vero iure velit. Placeat non ea doloribus soluta quas.', '317.00', NULL, 'DIGI287', 'instock', 0, 170, 'digital_3.jpg', NULL, 5, '2021-07-21 00:55:42', '2021-07-21 00:55:42'),
(13, 'at sint tempore quibusdam', 'at-sint-tempore-quibusdam', 'Molestiae sit qui iste tempora ex aspernatur impedit. Fugit culpa molestias necessitatibus aut. Culpa vitae quos recusandae quisquam quod aspernatur. Voluptatem ea dolore est est quae.', 'Aperiam aspernatur est voluptates sapiente accusamus. Et soluta illo dolor blanditiis atque quod. Similique odit alias vero ex qui natus sint distinctio. Impedit et dolorem possimus aliquid ut. Assumenda sed sapiente unde qui unde omnis. Ducimus autem nesciunt placeat qui reprehenderit. Labore hic amet dignissimos asperiores fugit nostrum. Et esse animi pariatur quo vel vel quisquam. Numquam nesciunt cumque iusto. Rerum vero facere at doloribus.', '151.00', NULL, 'DIGI373', 'instock', 0, 166, 'digital_10.jpg', NULL, 2, '2021-07-21 00:55:42', '2021-07-21 00:55:42'),
(14, 'non rerum est in', 'non-rerum-est-in', 'Deleniti alias ut quaerat magni. Quisquam totam aut non excepturi. Porro asperiores ab voluptatem est.', 'Velit architecto dolores voluptas et soluta reiciendis. Dolor a voluptas molestiae quia atque dolor cum. Velit ex facilis eveniet rerum fugiat commodi quibusdam a. Tenetur et sit tenetur minima reprehenderit repellat velit. Non perferendis aliquam ut et aut laborum aut. Eligendi ipsa voluptatem qui maiores soluta assumenda. Laudantium non eligendi quis explicabo debitis. Error sit quod non est. Esse illum alias fugiat nihil. Quod voluptas veritatis minima facere consequatur cupiditate vero.', '450.00', NULL, 'DIGI436', 'instock', 0, 195, 'digital_8.jpg', NULL, 2, '2021-07-21 00:55:42', '2021-07-21 00:55:42'),
(15, 'tempora in eius occaecati', 'tempora-in-eius-occaecati', 'Mollitia qui pariatur quia eveniet iure ullam. Magni qui quas perspiciatis alias natus a. Est recusandae sunt fuga provident possimus qui consequuntur molestiae. Laborum commodi doloremque aut aut.', 'Sit consequuntur et autem aut suscipit earum quo. Et consequuntur deleniti est nobis corporis. Exercitationem sapiente a id aliquid non qui. Sunt architecto minus quam dignissimos aut fugiat velit. Tenetur amet ipsam sunt. Non error facere voluptatem ut sunt pariatur. Ut doloremque dolores tempore dolore odit unde voluptatem. Animi sunt a blanditiis. Quia quo quia error laborum nam mollitia ut. Sit ad maiores libero ut ut consequatur quia ullam.', '310.00', NULL, 'DIGI188', 'instock', 0, 148, 'digital_2.jpg', NULL, 5, '2021-07-21 00:55:42', '2021-07-21 00:55:42'),
(16, 'id facilis accusamus unde', 'id-facilis-accusamus-unde', 'Et ut maiores doloribus qui facilis sunt et provident. Minima iure occaecati dolores est ut officiis. Aut corporis facere accusantium maxime in veniam officia. Inventore aut odit delectus laudantium.', 'Sit velit sapiente aperiam. Consequatur cupiditate non hic repudiandae expedita magnam ut. Est est totam est quidem possimus. Autem dolor qui illum cum non sed similique. Excepturi non nam et. Et animi similique voluptatem accusantium quidem saepe. Alias aut est eius ducimus. Nihil laborum et dolorem dolore. Veritatis sit eaque aliquid reprehenderit aut. Amet quasi aspernatur nesciunt officia eos veritatis. Ex quod explicabo quo quos exercitationem.', '422.00', NULL, 'DIGI294', 'instock', 0, 193, 'digital_21.jpg', NULL, 5, '2021-07-21 00:55:42', '2021-07-21 00:55:42'),
(17, 'eius ea aut corporis', 'eius-ea-aut-corporis', 'Ipsam similique velit itaque. Unde et magnam numquam voluptatem. Neque quibusdam eius aut. Voluptatum debitis cum aut asperiores soluta omnis rem.', 'Molestiae voluptatem labore dolores deleniti perspiciatis suscipit necessitatibus ea. Ad eaque molestias voluptatem quis vero. Cumque qui et excepturi modi suscipit quia. Laudantium ex pariatur vitae. Est optio voluptatem molestias ut ducimus. Earum nulla velit rerum beatae dignissimos. Commodi impedit qui nulla asperiores. Repellat quas et qui voluptatem eveniet totam suscipit quis. Eius est eveniet aut earum veritatis optio.', '381.00', NULL, 'DIGI256', 'instock', 0, 156, 'digital_4.jpg', NULL, 4, '2021-07-21 00:55:42', '2021-07-21 00:55:42'),
(18, 'corrupti incidunt distinctio quam', 'corrupti-incidunt-distinctio-quam', 'Sint dolorem et deleniti qui harum vel quaerat est. Autem ratione deleniti esse qui ut sint. Perspiciatis est veniam quia porro qui.', 'Aperiam eos numquam commodi corrupti. Et illum est odit eius doloremque. Incidunt est provident aut non dolores laboriosam. Perferendis ipsa saepe qui commodi corporis. Dignissimos vel omnis cum velit voluptas nihil. Occaecati voluptas esse sit est. Distinctio aut et impedit amet. Aut reiciendis vel dolores asperiores dolor. Impedit soluta rem omnis est. Quisquam ea nostrum aut assumenda. Ut possimus aliquid est illo voluptatem veniam error omnis.', '87.00', NULL, 'DIGI300', 'instock', 0, 149, 'digital_17.jpg', NULL, 5, '2021-07-21 00:55:43', '2021-07-21 00:55:43'),
(19, 'ut dolore nihil laudantium', 'ut-dolore-nihil-laudantium', 'Est hic quo et ipsum autem. Tenetur vel distinctio vero reiciendis dolores esse commodi. Sint minus aut voluptatem quia voluptatem ipsum magni. Blanditiis distinctio eum tenetur.', 'Aspernatur nostrum exercitationem iusto rerum atque autem. Corrupti et in ea maxime veniam. Porro iure dolore enim officia id aut. Eos ratione dolores sit itaque explicabo repudiandae architecto. Ullam inventore in esse possimus. Voluptas beatae sunt voluptatem. Voluptas explicabo dicta optio deleniti. Minima vel voluptates sit libero. Quis enim facere laboriosam soluta sit eligendi debitis. Eum temporibus id ab esse rerum sint. Nesciunt sequi consequatur possimus excepturi fugit quia.', '230.00', NULL, 'DIGI382', 'instock', 0, 115, 'digital_12.jpg', NULL, 2, '2021-07-21 00:55:43', '2021-07-21 00:55:43'),
(20, 'aut aspernatur facere et', 'aut-aspernatur-facere-et', 'Explicabo in ea ad qui. Repellat quas blanditiis ratione similique porro asperiores. Optio rerum incidunt expedita alias.', 'Dolore earum aperiam nihil voluptatem magni. Perspiciatis delectus rerum animi itaque repellat qui. Soluta nobis dolore neque quia ullam sint ratione. Molestiae facere ab consectetur cumque similique eum harum blanditiis. Error ut dolor earum et iste eius. Sapiente nemo blanditiis eum quia consequatur quam. Praesentium in corporis molestiae aut consequatur. Aut reprehenderit consequatur ut rerum et.', '29.00', '25.00', 'DIGI302', 'instock', 0, 173, 'digital_5.jpg', ',16285968010.jpg,16285968011.jpg,16285968012.jpg', 1, '2021-07-21 00:55:43', '2021-08-10 05:30:01');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_items_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_items_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'nice', 10, '2021-08-07 04:29:43', '2021-08-07 04:29:43');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2021-07-30 12:29:00', 1, NULL, '2021-07-29 02:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('90Uokxd5oFQ3PK2zRfjdZbJusMeumvNSDxJFKb4A', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOU12Vno3V0lpT01NU2s4cmUzTW43SThkcFdqNlIxUlFON3FWdFFKSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1628668150),
('mqetVxP8ZIoufcAH7TnnzV9CVyuBCiGm16i3FhOw', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3EyVDFoWktLMnVpbmNvbTJEOGhMaUVwR21tclg2bUwzTG1ZVUI1bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1628669068);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twiter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twiter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'arkar@gmail.com', '09975559581', '09975559581', 'test address', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15275.201753119356!2d96.195697368248!3d16.836253380090394!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30c19328140c51cb%3A0x4f57521ebec58bf2!2sThingangyun%20Township%2C%20Yangon!5e0!3m2!1sen!2smm!4v1628427565214!5m2!1sen!2smm', '#', '#', '#', '#', '#', '2021-08-08 06:14:11', '2021-08-08 06:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('arkartheinthan1910@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:0:{}}', '2021-08-11 01:34:24', NULL),
('user@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:21:\"iste tenetur quis eos\";s:5:\"price\";d:369;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:0:{}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:10;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}}', '2021-08-11 01:32:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(4, 2, 6, 'cod', 'pending', '2021-08-06 06:47:45', '2021-08-06 06:47:45'),
(5, 2, 7, 'cod', 'pending', '2021-08-07 02:56:05', '2021-08-07 02:56:05'),
(6, 2, 8, 'cod', 'pending', '2021-08-07 03:27:20', '2021-08-07 03:27:20'),
(7, 4, 9, 'cod', 'pending', '2021-08-10 07:05:03', '2021-08-10 07:05:03'),
(8, 5, 10, 'cod', 'pending', '2021-08-10 07:10:31', '2021-08-10 07:10:31'),
(9, 4, 11, 'cod', 'pending', '2021-08-10 07:16:33', '2021-08-10 07:16:33'),
(10, 5, 12, 'cod', 'pending', '2021-08-10 07:17:45', '2021-08-10 07:17:45'),
(11, 5, 13, 'cod', 'pending', '2021-08-10 07:24:51', '2021-08-10 07:24:51'),
(12, 5, 14, 'cod', 'pending', '2021-08-10 07:42:20', '2021-08-10 07:42:20'),
(13, 5, 15, 'cod', 'pending', '2021-08-10 07:45:11', '2021-08-10 07:45:11');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for user or customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$w8FJUM3BTEzVeiVEOMflauWulb12646jDsBCFZ0S4O2lbRxdf32Pi', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-07-20 08:48:51', '2021-07-20 08:48:51'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$LpOjK7B86dQOxENLfWsiHu7tjzzHiPmNbxagd6Dz60AxYMXfcu8nC', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-07-20 08:49:44', '2021-08-08 03:34:20'),
(3, 'arkar', 'arkar@gmail.com', NULL, '$2y$10$zWbcLwCwXv05g1ox3VO/W.bjwFmLRy10AjLorv31dSJ3vZEXnY3Zy', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-07-21 00:10:40', '2021-07-21 00:10:40'),
(4, 'arkartheinthan', 'arkartheinthan7@gmail.com', NULL, '$2y$10$0Le/96ApGVLVR.xaW7r.w.WKerQyq28nzni3OYfw0McHPuajMQyBm', NULL, NULL, 'Ft1e5lv9b9JvFJSvGdSqz2HizLVSvUv0ppKr5TwKc5TXoUlGMadSXQKsMd20', NULL, NULL, 'USR', '2021-08-09 02:14:36', '2021-08-09 07:14:29'),
(5, 'mgmg', 'arkartheinthan1910@gmail.com', NULL, '$2y$10$JnF/Y3jIhoaQU4kMACFhX.cXcsZx5Wiwkd0iI8VKYBBvpDTHq/oeK', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-08-10 07:09:55', '2021-08-10 07:09:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_items_id_foreign` (`order_items_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_items_id_foreign` FOREIGN KEY (`order_items_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
