-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2024 at 10:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newdb`
--

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
(5, '2024_01_24_130753_create_products_table', 2),
(7, '2024_01_24_211536_create_order_items_table', 3),
(8, '2024_01_24_211018_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `user_id` varchar(255) NOT NULL,
  `tracking_no` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `status`, `user_id`, `tracking_no`, `created_at`, `updated_at`) VALUES
(24, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin9007', '2024-01-24 17:05:00', '2024-01-24 17:05:00'),
(25, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin1160', '2024-01-24 17:06:17', '2024-01-24 17:06:17'),
(26, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin4411', '2024-01-24 17:06:34', '2024-01-24 17:06:34'),
(27, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin6069', '2024-01-24 17:11:12', '2024-01-24 17:11:12'),
(28, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin2799', '2024-01-25 01:31:50', '2024-01-25 01:31:50'),
(29, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin7443', '2024-01-25 01:33:35', '2024-01-25 01:33:35'),
(30, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin1797', '2024-01-25 01:34:23', '2024-01-25 01:34:23'),
(31, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin6760', '2024-01-25 01:34:40', '2024-01-25 01:34:40'),
(32, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin3295', '2024-01-25 01:34:57', '2024-01-25 01:34:57'),
(33, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin6345', '2024-01-25 01:35:56', '2024-01-25 01:35:56'),
(34, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin9799', '2024-01-25 01:36:39', '2024-01-25 01:36:39'),
(35, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin3792', '2024-01-25 01:37:17', '2024-01-25 01:37:17'),
(36, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin8355', '2024-01-25 01:38:51', '2024-01-25 01:38:51'),
(37, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin7601', '2024-01-25 01:40:43', '2024-01-25 01:40:43'),
(38, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin9694', '2024-01-25 01:41:41', '2024-01-25 01:41:41'),
(39, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin6422', '2024-01-25 01:46:54', '2024-01-25 01:46:54'),
(40, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin1288', '2024-01-25 01:50:18', '2024-01-25 01:50:18'),
(41, 'Sachin', 'admin@admin.com', '0', '1', 'Sachin2670', '2024-01-25 03:12:22', '2024-01-25 03:12:22'),
(42, 'Ram', 'ram@admin.com', '0', '2', 'Ram4070', '2024-01-25 03:39:31', '2024-01-25 03:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(4, '38', '2', '1', '2000.00', '2024-01-25 01:41:41', '2024-01-25 01:41:41'),
(5, '38', '4', '2', '4000.00', '2024-01-25 01:41:41', '2024-01-25 01:41:41'),
(6, '39', '1', '1', '1000.00', '2024-01-25 01:46:54', '2024-01-25 01:46:54'),
(7, '39', '2', '1', '2000.00', '2024-01-25 01:46:54', '2024-01-25 01:46:54'),
(8, '39', '3', '1', '3000.00', '2024-01-25 01:46:54', '2024-01-25 01:46:54'),
(9, '40', '7', '1', '3000.00', '2024-01-25 01:50:18', '2024-01-25 01:50:18'),
(10, '41', '1', '1', '1000.00', '2024-01-25 03:12:22', '2024-01-25 03:12:22'),
(11, '42', '1', '1', '1000.00', '2024-01-25 03:39:31', '2024-01-25 03:39:31'),
(12, '42', '2', '2', '2000.00', '2024-01-25 03:39:31', '2024-01-25 03:39:31'),
(13, '42', '4', '1', '4000.00', '2024-01-25 03:39:31', '2024-01-25 03:39:31');

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
  `abilities` text DEFAULT NULL,
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
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Casual Jeans', 'Casual Jeans for sell', 'https://m.media-amazon.com/images/I/51C6ilcEFHL.jpg', 1000.00, NULL, NULL),
(2, 'Blue Jeans', 'Blue jeans', 'https://m.media-amazon.com/images/I/71Hf9oJE6BL._SX679_.jpg', 2000.00, NULL, NULL),
(3, 'Narrow Jeans', 'Narrow Jeans for sell', 'https://m.media-amazon.com/images/I/715y64b29XL._SY879_.jpg', 3000.00, NULL, NULL),
(4, 'Black Jeans', 'Black jeans', 'https://m.media-amazon.com/images/I/61MnQqLAVOL._SX679_.jpg', 4000.00, NULL, NULL),
(5, 'Casual Jeans', 'Casual Jeans for sell', 'https://m.media-amazon.com/images/I/51C6ilcEFHL.jpg', 1000.00, NULL, NULL),
(6, 'Blue Jeans', 'Blue jeans', 'https://m.media-amazon.com/images/I/71Hf9oJE6BL._SX679_.jpg', 2000.00, NULL, NULL),
(7, 'Narrow Jeans', 'Narrow Jeans for sell', 'https://m.media-amazon.com/images/I/715y64b29XL._SY879_.jpg', 3000.00, NULL, NULL),
(8, 'Black Jeans', 'Black jeans', 'https://m.media-amazon.com/images/I/61MnQqLAVOL._SX679_.jpg', 4000.00, NULL, NULL);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sachin', 'admin@admin.com', NULL, '$2y$10$4nMWM6jBK5vfSl93xZ1nFeJZcMhUL/LlfHjW5mrInUSbEQkyR8cde', NULL, '2024-01-24 07:09:59', '2024-01-24 07:09:59'),
(2, 'Ram', 'ram@admin.com', NULL, '$2y$10$4lcSLg0ovDayL.mJFlU3WOMjXhY5zF2Zu4zKLJwQfywa.ofJ8Ruve', NULL, '2024-01-25 03:37:41', '2024-01-25 03:37:41');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
