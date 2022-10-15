-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 07:59 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

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
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `friend_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_id`) VALUES
(1, 1, 3),
(2, 3, 1),
(3, 1, 4),
(4, 4, 1),
(5, 1, 5),
(6, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('read','unread') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `from` bigint(20) UNSIGNED NOT NULL,
  `to` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `status`, `created_at`, `updated_at`, `from`, `to`) VALUES
(1, 'hello!', 'unread', '2021-12-07 16:44:59', '2021-12-07 16:44:59', 1, 3),
(11, 'dfdsfsdf', 'unread', '2021-12-08 15:37:29', '2021-12-08 15:37:29', 1, 3),
(12, 'aaa', 'unread', '2021-12-08 15:38:15', '2021-12-08 15:38:15', 1, 3),
(13, 'dfsdf', 'unread', '2021-12-08 15:38:57', '2021-12-08 15:38:57', 1, 3),
(14, 'ازيك', 'unread', '2021-12-08 15:54:53', '2021-12-08 15:54:53', 3, 1),
(15, 'تمام', 'unread', '2021-12-08 15:55:20', '2021-12-08 15:55:20', 1, 3),
(16, 'ازيك يا على', 'unread', '2021-12-08 17:18:38', '2021-12-08 17:18:38', 1, 4),
(17, 'اخبارك ايه؟', 'unread', '2021-12-08 17:18:58', '2021-12-08 17:18:58', 1, 4),
(18, 'ايه الدنيا يا عمد', 'unread', '2021-12-08 17:19:12', '2021-12-08 17:19:12', 1, 5),
(19, 'فينك', 'unread', '2021-12-08 17:19:18', '2021-12-08 17:19:18', 1, 5),
(20, 'فينك كدا ؟', 'unread', '2021-12-09 15:27:04', '2021-12-09 15:27:04', 1, 3),
(21, 'انت فين كدا', 'unread', '2021-12-09 15:29:13', '2021-12-09 15:29:13', 1, 3),
(22, 'فين', 'unread', '2021-12-09 15:30:01', '2021-12-09 15:30:01', 1, 3),
(23, 'انت اللى فين', 'unread', '2021-12-09 15:32:49', '2021-12-09 15:32:49', 3, 1),
(24, '؟؟', 'unread', '2021-12-09 15:35:16', '2021-12-09 15:35:16', 3, 1),
(25, 'ف البيت', 'unread', '2021-12-09 15:54:02', '2021-12-09 15:54:02', 1, 3),
(26, 'مساء الخير', 'unread', '2021-12-10 15:51:48', '2021-12-10 15:51:48', 1, 3),
(27, 'قول صباح الخير', 'unread', '2021-12-11 16:30:13', '2021-12-11 16:30:13', 3, 1),
(28, 'منور يا ريس', 'unread', '2021-12-11 16:33:48', '2021-12-11 16:33:48', 1, 3),
(29, 'حبيبى', 'unread', '2021-12-11 16:34:03', '2021-12-11 16:34:03', 3, 1),
(30, 'ايه الدنيا', 'unread', '2021-12-25 16:22:58', '2021-12-25 16:22:58', 1, 4),
(31, 'يي', 'unread', '2021-12-25 16:23:05', '2021-12-25 16:23:05', 1, 4),
(32, 'بسيبيب', 'unread', '2021-12-25 16:23:11', '2021-12-25 16:23:11', 1, 4),
(33, 'بسيبسيب', 'unread', '2021-12-25 16:23:17', '2021-12-25 16:23:17', 1, 4),
(34, 'تسلم', 'unread', '2021-12-25 16:23:54', '2021-12-25 16:23:54', 1, 3),
(35, 'طمنى', 'unread', '2021-12-25 16:26:29', '2021-12-25 16:26:29', 1, 3),
(36, '??', 'unread', '2021-12-25 16:28:01', '2021-12-25 16:28:01', 1, 3),
(37, 'dsd', 'unread', '2021-12-25 16:30:18', '2021-12-25 16:30:18', 1, 3),
(38, 'dsad', 'unread', '2021-12-25 16:32:57', '2021-12-25 16:32:57', 1, 3),
(39, 'dsdsdsds', 'unread', '2021-12-25 16:34:01', '2021-12-25 16:34:01', 1, 3),
(40, 'sdfsf', 'unread', '2021-12-25 16:36:18', '2021-12-25 16:36:18', 1, 3),
(41, 'd', 'unread', '2021-12-25 16:37:40', '2021-12-25 16:37:40', 1, 3),
(42, 'fff', 'unread', '2021-12-25 16:38:21', '2021-12-25 16:38:21', 1, 3),
(43, 'erer', 'unread', '2021-12-25 16:38:44', '2021-12-25 16:38:44', 1, 3),
(44, 'dwqdwqe', 'unread', '2021-12-25 16:39:04', '2021-12-25 16:39:04', 1, 3);

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
(5, '2021_12_06_073514_create_messages_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('online','offline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'offline',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mohamed_96', 'mafifi350@gmail.com', NULL, NULL, '$2y$10$UhDgezmFhzMCpzp6JaCJLupqD0waY56j3lnuoQq5nY8yEF0XewkZO', 'online', NULL, '2021-12-06 16:06:26', '2021-12-25 16:22:15'),
(3, 'ahmed99', 'a.a@a.a', NULL, NULL, '$2y$10$Nitb4CCtQfRpf2YsTRYoDeowoBYMk8YvFeOP5IFAe9Rabz9z3wUUG', 'offline', NULL, '2021-12-06 16:08:45', '2021-12-11 16:59:19'),
(4, 'ali96', 'ali@a.a', NULL, NULL, '$2y$10$GVsuhh1WtBKLvGswBo2FJ.v0ZYAE9OgLZ7F4HR36n9nLa7nhKtBf.', 'online', NULL, '2021-12-08 17:15:39', '2021-12-09 13:23:37'),
(5, 'emad22', 'e@e.e', NULL, NULL, '$2y$10$ydTGUpn1wCfaNRvqWLAnk.ect3Fb185MD8CeaBRgKY.9OWVgCirIe', 'offline', NULL, '2021-12-08 17:16:01', '2021-12-08 17:16:01');

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
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `friends_user_id_foreign` (`user_id`),
  ADD KEY `friends_friend_id_foreign` (`friend_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_from_foreign` (`from`),
  ADD KEY `messages_to_foreign` (`to`);

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
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_friend_id_foreign` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `friends_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_from_foreign` FOREIGN KEY (`from`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_to_foreign` FOREIGN KEY (`to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
