-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2024 at 04:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m11c1`
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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client` varchar(255) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `client`, `total_price`, `paid`, `created_at`, `updated_at`) VALUES
(1, 11, 'Ms. Valentina Torp', 993.17, 1, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(2, 11, 'Monserrate Ratke V', 3679.43, 0, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(3, 11, 'Lolita Boyer', 2698.56, 1, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(4, 11, 'Rosario Hayes', 2681.74, 0, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(5, 11, 'Miss Janie Welch', 4058.61, 1, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(6, 11, 'Casimer Wolff', 2144.55, 0, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(7, 11, 'Dexter Watsica', 3316.97, 1, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(8, 11, 'Ronaldo Conroy', 3720.65, 1, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(9, 11, 'Ms. Alexandria Runolfsdottir MD jr', 3308.19, 1, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(10, 11, 'Dasia Mitchell', 4029.82, 1, '2024-07-28 06:18:58', '2024-07-28 06:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `title`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aut iusto laborum veritatis consequatur.', 993.17, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(2, 2, 'Est cum ut et veniam ut.', 604.75, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(3, 2, 'Non dolore voluptates illum molestiae dolorem libero.', 202.25, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(4, 2, 'Ullam commodi sed mollitia deleniti in.', 885.39, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(5, 2, 'Labore ducimus nisi quis autem nam.', 602.56, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(6, 2, 'Maiores assumenda voluptatem omnis assumenda qui.', 407.03, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(7, 2, 'Dolorem eligendi accusantium eos.', 977.45, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(8, 3, 'Velit atque autem provident quisquam est in.', 492.39, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(9, 3, 'Non et minus sed suscipit laborum blanditiis.', 214.26, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(10, 3, 'Et aut eaque perferendis vel nostrum.', 113.08, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(11, 3, 'Adipisci totam vel voluptatem alias similique.', 824.73, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(12, 3, 'Id inventore inventore eos.', 684.93, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(13, 3, 'Molestiae provident quo quibusdam laudantium voluptatibus.', 110.62, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(14, 3, 'Repellat suscipit nobis distinctio ut qui.', 258.55, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(15, 4, 'Excepturi nemo neque numquam et aut minus.', 551.77, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(16, 4, 'Voluptas dignissimos asperiores sapiente sit distinctio voluptas.', 411.79, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(17, 4, 'Est libero consequuntur natus perspiciatis praesentium consequatur.', 887.16, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(18, 4, 'Ducimus unde laborum quod.', 831.02, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(19, 5, 'Ipsam eum provident architecto.', 356.27, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(20, 5, 'Eos consequuntur unde iure aut ipsum.', 509.49, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(21, 5, 'Et in dignissimos est.', 885.63, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(22, 5, 'Qui excepturi accusamus ut.', 267.61, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(23, 5, 'Nam itaque officia voluptatem vel.', 853.03, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(24, 5, 'Aut enim corporis ipsum.', 716.03, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(25, 5, 'Doloribus accusamus sed adipisci omnis.', 470.55, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(26, 6, 'Fuga ut doloremque reprehenderit.', 633.64, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(27, 6, 'Quia fugiat nihil et ut id alias.', 382.78, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(28, 6, 'Repudiandae voluptates ducimus voluptate.', 139.97, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(29, 6, 'Nihil ducimus ex maxime quo qui autem.', 988.16, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(30, 7, 'Et voluptates ab tempora minus hic veritatis.', 119.52, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(31, 7, 'Et tempora deleniti tempora rerum.', 733.63, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(32, 7, 'Hic cupiditate velit natus.', 701.27, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(33, 7, 'Neque est est voluptas eligendi.', 589.20, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(34, 7, 'Quia laboriosam rerum eos cupiditate aliquam.', 402.81, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(35, 7, 'Est nam aspernatur vero ut qui voluptates.', 164.72, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(36, 7, 'Veniam accusamus nulla nulla.', 605.82, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(37, 8, 'Voluptas nesciunt ratione porro iure quas.', 511.82, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(38, 8, 'Occaecati veritatis magnam molestias dolores harum enim.', 735.90, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(39, 8, 'Commodi repellat a beatae consequatur.', 977.82, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(40, 8, 'Sed dolores ut suscipit itaque laudantium.', 154.22, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(41, 8, 'Dolorum tempore alias voluptas soluta fugit.', 270.76, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(42, 8, 'Qui debitis mollitia architecto non fugiat velit.', 922.38, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(43, 8, 'Voluptas aspernatur reprehenderit nobis.', 147.75, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(44, 9, 'Qui sit sapiente officiis.', 835.56, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(45, 9, 'Ratione nihil corporis quia reprehenderit fugit.', 811.53, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(46, 9, 'Ut amet eos est voluptas.', 720.39, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(47, 9, 'Corporis laborum veniam omnis laborum.', 114.27, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(48, 9, 'Blanditiis repellat iure maiores dignissimos.', 826.44, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(49, 10, 'Et aliquid non aut natus ullam.', 156.11, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(50, 10, 'Sint fuga aspernatur recusandae explicabo quo.', 373.89, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(51, 10, 'Illo possimus deleniti ut vel rem.', 753.94, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(52, 10, 'Sed officia molestiae hic.', 848.89, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(53, 10, 'Odit non perspiciatis voluptatibus impedit.', 802.79, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(54, 10, 'Reiciendis fugit distinctio et.', 888.98, '2024-07-28 06:18:58', '2024-07-28 06:18:58'),
(55, 10, 'Qui at possimus ut.', 205.22, '2024-07-28 06:18:58', '2024-07-28 06:18:58');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_28_111037_create_invoices_table', 1),
(6, '2024_07_28_111815_create_invoice_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Dr. Winnifred Lakin V', 'khand@example.net', '2024-07-28 06:18:57', '$2y$12$Bf2zzaO4Ih.tBO6EeT9uiu5NRLNgB6n/nZ8acyo7bpqkMIc3M27JK', '3bSuLDGRnX', '2024-07-28 06:18:57', '2024-07-28 06:18:57'),
(2, 'Deangelo Carter DDS', 'achristiansen@example.org', '2024-07-28 06:18:57', '$2y$12$Bf2zzaO4Ih.tBO6EeT9uiu5NRLNgB6n/nZ8acyo7bpqkMIc3M27JK', 'cY8c5rYqFX', '2024-07-28 06:18:57', '2024-07-28 06:18:57'),
(3, 'Barrett Abshire', 'erwin79@example.net', '2024-07-28 06:18:57', '$2y$12$Bf2zzaO4Ih.tBO6EeT9uiu5NRLNgB6n/nZ8acyo7bpqkMIc3M27JK', 'IUOwW1oEpy', '2024-07-28 06:18:57', '2024-07-28 06:18:57'),
(4, 'Alyson Herman', 'nedra38@example.org', '2024-07-28 06:18:57', '$2y$12$Bf2zzaO4Ih.tBO6EeT9uiu5NRLNgB6n/nZ8acyo7bpqkMIc3M27JK', 'ZhxLjqRqp1', '2024-07-28 06:18:57', '2024-07-28 06:18:57'),
(5, 'Mr. Maximus Lang II', 'hudson.greenfelder@example.net', '2024-07-28 06:18:57', '$2y$12$Bf2zzaO4Ih.tBO6EeT9uiu5NRLNgB6n/nZ8acyo7bpqkMIc3M27JK', 'yM96tgUst9', '2024-07-28 06:18:57', '2024-07-28 06:18:57'),
(6, 'Meagan Fisher II', 'javier33@example.org', '2024-07-28 06:18:57', '$2y$12$Bf2zzaO4Ih.tBO6EeT9uiu5NRLNgB6n/nZ8acyo7bpqkMIc3M27JK', 'PxmZAxbfvA', '2024-07-28 06:18:57', '2024-07-28 06:18:57'),
(7, 'Jadyn Lueilwitz', 'langosh.ines@example.com', '2024-07-28 06:18:57', '$2y$12$Bf2zzaO4Ih.tBO6EeT9uiu5NRLNgB6n/nZ8acyo7bpqkMIc3M27JK', 'TLXvZBJVng', '2024-07-28 06:18:57', '2024-07-28 06:18:57'),
(8, 'Miss Christina Jast', 'amcdermott@example.net', '2024-07-28 06:18:57', '$2y$12$Bf2zzaO4Ih.tBO6EeT9uiu5NRLNgB6n/nZ8acyo7bpqkMIc3M27JK', 'G6h5vE1s7I', '2024-07-28 06:18:57', '2024-07-28 06:18:57'),
(9, 'Tyreek Boyle', 'bahringer.dakota@example.net', '2024-07-28 06:18:57', '$2y$12$Bf2zzaO4Ih.tBO6EeT9uiu5NRLNgB6n/nZ8acyo7bpqkMIc3M27JK', 'Ut44FIX6rt', '2024-07-28 06:18:57', '2024-07-28 06:18:57'),
(10, 'Everett Brown', 'dulce.haag@example.net', '2024-07-28 06:18:57', '$2y$12$Bf2zzaO4Ih.tBO6EeT9uiu5NRLNgB6n/nZ8acyo7bpqkMIc3M27JK', 'jYVTt6Iv2k', '2024-07-28 06:18:57', '2024-07-28 06:18:57'),
(11, 'arif islam', 'arifislam6767@yahoo.com', NULL, '$2y$12$q7mWHu2fx8aoXNGs/G//BeGLy5UF9ug07L7O6QId/O8S8hDD5if6G', NULL, '2024-07-28 12:09:17', '2024-07-28 12:09:17');

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
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
