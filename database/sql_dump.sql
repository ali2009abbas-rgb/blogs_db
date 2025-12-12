-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2025 at 02:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `image_path`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Inventore modi magni id ut quod.', 'Et omnis et voluptatem. Accusantium soluta minus aperiam voluptatibus minus. Sed autem praesentium sit repudiandae et. Ut ut aut non.\n\nDolor suscipit dolores vel sed ut eaque debitis. Minima voluptatem consectetur aut. Maxime at hic ea omnis.\n\nEum id et amet consequatur eligendi eius ut. Voluptas minus sit nulla hic reprehenderit praesentium deserunt. Eius quia non quidem ducimus. Aperiam maxime assumenda corrupti. Dolore ut quo non aut.', 'blogs/sample.jpg', NULL, '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(2, 'Ut quo nemo voluptatem deserunt.', 'Laudantium nihil sunt molestias incidunt. Sapiente quas et et quis. Explicabo saepe sequi minima unde cum maiores minima. Blanditiis commodi aut quibusdam architecto aut quaerat iusto.\n\nQui quae omnis qui veritatis dolore consequatur. Distinctio fugiat neque maxime vero culpa nobis iusto quasi.\n\nNihil consequuntur odio rerum sunt et impedit. Qui qui ut id quasi tempore possimus qui. Quas numquam suscipit maxime nihil tempore consectetur.', 'blogs/sample.jpg', '2025-12-08 07:43:03', '2025-12-08 07:17:00', '2025-12-08 07:43:03'),
(3, 'Quibusdam nobis sunt id numquam.', 'Mollitia aperiam nobis hic aperiam. Nulla qui dolores autem aspernatur. Sunt aut cupiditate aliquid vel incidunt sint.\n\nSint officiis dolorem qui. Veritatis itaque perspiciatis nihil cumque deleniti. Vel tempora non iste tempore qui occaecati.\n\nSimilique aut molestias et ex quos. Nesciunt optio ut ut qui. Laboriosam sit mollitia et quia unde. Aut dolorem distinctio aut minus veritatis iste consequatur.', 'blogs/sample.jpg', NULL, '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(4, 'Est quisquam voluptatem tempore sunt.', 'Omnis fugit vel aperiam aut nulla recusandae inventore. Nam minima fugiat unde similique vitae officia. Ducimus mollitia soluta et nihil eius. Et aspernatur autem iure sit minima eveniet.\n\nConsectetur neque nobis hic voluptates libero dolor. Provident est et voluptatem amet facilis. Maiores aliquam quaerat eligendi voluptatem. Asperiores voluptatem recusandae perspiciatis qui debitis magni.\n\nAccusamus et sapiente voluptates animi illum eos. Modi sit dignissimos sunt temporibus nihil. Nobis at esse ipsum doloribus quia ea. Eligendi aperiam rerum eaque ullam. Iste porro sed voluptatem nisi iure consequatur.', 'blogs/sample.jpg', NULL, '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(5, 'Aut molestias sunt nostrum molestiae.', 'Deserunt error in et esse illo omnis. Quod ipsum neque est repellat sit recusandae molestias. Veniam sit esse fuga rerum saepe. Repellat sit ipsum aliquid eos magnam tenetur at illo.\n\nEt rerum rerum vitae sapiente reprehenderit facere delectus. Voluptate cupiditate omnis quia reprehenderit facere repellendus distinctio. Omnis eveniet ut delectus temporibus atque hic quam. Velit at quia tempora unde.\n\nItaque dolorem aut dolore molestias. Et nesciunt deserunt atque. Eligendi nobis aliquid iure quibusdam deserunt. Quia dolores porro voluptatem molestias aut nobis. Ut voluptatem accusamus odio veritatis.', 'blogs/sample.jpg', NULL, '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(6, 'Quod quaerat placeat atque.', 'Qui autem voluptas ea illo praesentium sed. Enim magnam dolores assumenda et fuga corporis quam. Exercitationem id nihil consequatur explicabo.\n\nAnimi odio ea provident. Sit assumenda non veritatis voluptatem. Sunt tenetur reiciendis rerum ullam. Iusto dolores natus pariatur.\n\nFacere nobis et eveniet possimus. Occaecati error et ut inventore perspiciatis culpa. Velit nobis qui perspiciatis quia. Nihil consequatur pariatur et soluta aut.', 'blogs/sample.jpg', NULL, '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(7, 'Aut quisquam reiciendis omnis ipsa.', 'Non voluptates mollitia minus sint quo corporis dolorem. Quia quos pariatur eligendi rerum ratione earum et. Rerum non sint vel. Pariatur inventore quaerat et eius labore sequi.\n\nMinus voluptates debitis nobis ullam magni eum aliquam. Qui est quam accusantium et. Eius nam in officiis laborum. Et velit tempore rerum officia et.\n\nNon exercitationem sed nihil repellendus consequatur dolor eius. Et saepe eligendi debitis suscipit. Dignissimos molestiae et maiores occaecati provident ut. Possimus commodi aut quis.', 'blogs/sample.jpg', NULL, '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(8, 'Velit laboriosam fugiat tempora repudiandae quia.', 'Perferendis et odit cumque tenetur ea ab sit. Sit minima qui tempore saepe rerum. Atque sit quis voluptatem itaque qui.\n\nEt doloribus voluptas illo officia excepturi. Alias quos laboriosam nihil error. Aut vel est aut aliquam harum qui sit.\n\nUt soluta omnis ullam temporibus eos. Tempora quia voluptate inventore vel rerum beatae. Consequuntur veniam libero in eius quod ratione. Ut aut ut mollitia et fugit.', 'blogs/sample.jpg', NULL, '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(9, 'Sit et aut quasi.', 'Enim sunt aut est in temporibus ut numquam modi. Soluta voluptas molestiae excepturi explicabo aliquam mollitia. Recusandae enim blanditiis quia corrupti nisi velit. Quo at ipsam dicta.\n\nAliquid voluptatem quo unde reprehenderit iusto. Assumenda illum minus magni amet molestiae vitae qui. Velit quis doloremque in non molestiae voluptatem. Sed alias nihil doloribus sed ut accusantium.\n\nSit eos nihil neque. Omnis quasi rem accusantium hic et. Exercitationem atque qui laudantium voluptas in. Autem voluptas ad consectetur est.', 'blogs/sample.jpg', NULL, '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(10, 'Ratione delectus officiis a.', 'Provident cum ut magni aliquam modi quidem. Dolor distinctio iusto eum rerum. Veniam iure nihil sint non nisi et omnis. Ex illum dolorem doloremque fugit ab.\n\nHarum nesciunt et ea modi non temporibus fuga esse. Voluptatem aliquam voluptatum est omnis ipsam voluptatem. Repellendus quae harum amet dolores velit aut id rerum. Sit est natus illum aut ab est aspernatur quia.\n\nQuasi quisquam adipisci qui consequatur quas porro distinctio. Consequatur quia consequatur occaecati asperiores accusantium fuga nemo error. Molestias asperiores earum vel quisquam.', 'blogs/sample.jpg', NULL, '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(11, 'draw', 'you draw picture about any thiing', 'blogs/yu4WT9GBl81MebXQeDbI0d4M0g10nbw7JlPVEj0k.png', NULL, '2025-12-08 07:56:38', '2025-12-08 07:56:38'),
(12, 'gggg', 'ggsdgsg fdg sdfg', 'blogs/9frY434IyHWr41qMqwD5vDjfmHTkCefHSqqjWYAz.png', NULL, '2025-12-08 07:58:19', '2025-12-08 07:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`blog_id`, `category_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 3),
(2, 5),
(3, 1),
(3, 4),
(4, 3),
(4, 4),
(4, 5),
(5, 1),
(5, 4),
(5, 5),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 4),
(8, 4),
(8, 5),
(9, 3),
(10, 2),
(10, 4),
(11, 1),
(12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `blog_user_favorite`
--

CREATE TABLE `blog_user_favorite` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'eaque', '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(2, 'enim', '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(3, 'voluptas', '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(4, 'officiis', '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(5, 'quisquam', '2025-12-08 07:17:00', '2025-12-08 07:17:00');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_08_094826_create_blogs_table', 2),
(5, '2025_12_08_094843_create_categories_table', 2),
(6, '2025_12_08_094856_create_blog_category_table', 2),
(7, '2025_12_08_094905_create_blog_user_favorite_table', 2),
(8, '2025_12_08_094914_add_is_admin_to_users_table', 2);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CMSmhZURIkPPQuAzsVSWA1JuH1LPDK5zQ5BIrBzk', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYWhzalNnc3BGRnlVTmJzb2ZJMFA4VzIwYTd1eE53dDNKT2YxbWdVWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mzt9', 1765201761);

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
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '2025-12-08 07:16:59', '$2y$12$1iVuZSil1SV2erDHjreKROPOPMzP8BL/1iNcHa1uGc9gZsOhKoP6e', 1, 'asMRZKSFW1', '2025-12-08 07:17:00', '2025-12-08 07:17:00'),
(2, 'ali', 'ali@gmail.com', NULL, '$2y$12$xoEzQQZFy6Dnq95rAZL8wufbZhVOyq2.QYqb8l21o3bjE5Unv//mC', 1, NULL, '2025-12-08 07:25:25', '2025-12-08 07:25:25'),
(3, 'hala', 'hala@gmail.com', NULL, '$2y$12$kML/M49G43MVlcmHIgfOieLKEfu/ipL8/2HgaJmsE1ya5c4LhbWUu', 0, NULL, '2025-12-08 10:48:56', '2025-12-08 10:48:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_id`,`category_id`),
  ADD KEY `blog_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `blog_user_favorite`
--
ALTER TABLE `blog_user_favorite`
  ADD PRIMARY KEY (`user_id`,`blog_id`),
  ADD KEY `blog_user_favorite_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD CONSTRAINT `blog_category_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_user_favorite`
--
ALTER TABLE `blog_user_favorite`
  ADD CONSTRAINT `blog_user_favorite_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_user_favorite_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
