-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2023 at 03:11 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `role` enum('admin','agent','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$gslaUkvUerDrU44t1qNk/uNtI/XilQlXm0vRsf4.59.lBwNznTcBm', NULL, NULL, NULL, 'admin', 'active', NULL, NULL, NULL),
(2, 'agent', 'agent', 'agent@gmail.com', NULL, '$2y$10$KYPP3qL6uZ7fryWpwzIhbePatIi8Z6YM8TJIl9Yr9zX4iD3DPNKrO', NULL, NULL, NULL, 'agent', 'active', NULL, NULL, NULL),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$10$O/VTC92Yr3b/O7UTOSZMQu00haL.tjfa2nL1H.2vsbR/tnZgUtflK', NULL, NULL, NULL, 'user', 'active', NULL, NULL, NULL),
(4, 'Nelle Parisian', NULL, 'mckenzie.kody@example.org', '2023-08-13 06:49:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0055cc?text=autem', '1-623-900-6212', '655 Moshe River\nPort Adityafurt, WV 48517-0419', 'admin', 'inactive', 'WZinRkbiD4', '2023-08-13 06:49:50', '2023-08-13 06:49:50'),
(5, 'Mr. Dashawn Hudson', NULL, 'miracle38@example.net', '2023-08-13 06:49:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/003355?text=totam', '(832) 226-4294', '541 Sallie Ramp\nNorth Mia, TN 78090-8598', 'user', 'inactive', 'mN4vyg8PKt', '2023-08-13 06:49:50', '2023-08-13 06:49:50'),
(6, 'Julian Steuber', NULL, 'mayert.miller@example.net', '2023-08-13 06:49:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00cc55?text=fugit', '(720) 818-1114', '35363 Myra Mill\nNew Mathewfort, MT 83129-7265', 'agent', 'inactive', '7fIpVhVPAX', '2023-08-13 06:49:50', '2023-08-13 06:49:50'),
(7, 'Wilfredo Krajcik', NULL, 'dana65@example.org', '2023-08-13 06:49:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0033ff?text=sunt', '+1-267-242-1559', '693 Taryn Branch Apt. 368\nWest Tylerton, AZ 93200', 'agent', 'inactive', '6ZTu7IXRrP', '2023-08-13 06:49:50', '2023-08-13 06:49:50'),
(8, 'Ottilie Hills', NULL, 'micaela41@example.net', '2023-08-13 06:49:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/001188?text=odio', '(470) 653-0397', '129 Ryley Drive Suite 501\nHalieberg, OR 98418-4149', 'user', 'inactive', 'U3rPYXV7AV', '2023-08-13 06:49:50', '2023-08-13 06:49:50'),
(9, 'Text', NULL, 'text@gmail.com', NULL, '$2y$10$BweWEAIB.pliSzhHNXSy4u5y7DB7NHcUibngDGvZjL8eTpuDcxl0y', NULL, NULL, NULL, 'user', 'active', NULL, '2023-08-13 06:53:20', '2023-08-13 06:53:20'),
(10, 'Vismo Dev', NULL, 'vismodeb20@gmail.com', NULL, '$2y$10$xfLFrYwI9aMpdSnpOF8zOeEjKILzO9lK3DLSdrxRx4tZOZSz/0cf6', NULL, NULL, NULL, 'user', 'active', NULL, '2023-08-14 09:05:46', '2023-08-14 09:05:46');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
