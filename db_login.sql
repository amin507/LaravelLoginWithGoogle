-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jul 2023 pada 17.26
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_29_022444_create_users_details_table', 1),
(6, '2023_07_29_084825_add_column_google_id_to_users_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` enum('admin','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `google_id`, `email_verified_at`, `password`, `user_level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Morris Okuneva', 'noemie.kuhlman', 'anastacio.boehm@example.org', NULL, '2023-07-29 01:57:58', '$2y$10$crGf4fycL7Z.UuJIJALo5uu3BqMt9skOQh5rGJrN3e9xKPMKT8P3m', 'user', 'TKqyDLeury', '2023-07-29 01:57:58', '2023-07-29 01:57:58'),
(2, 'Dr. Rowena Flatley IV', 'monserrate36', 'vergie.haley@example.org', NULL, '2023-07-29 01:57:58', '$2y$10$ExkkLkGLttKzjxMhPwN60uPETjLCaP0ShhgbzCurHRGvoL1KgEt.2', 'user', 'sTLazzwn2k', '2023-07-29 01:57:58', '2023-07-29 01:57:58'),
(3, 'Theodora Tromp', 'pparker', 'rrussel@example.com', NULL, '2023-07-29 01:57:58', '$2y$10$j3K1q9q8pmQHO1xa5u09GeOGYYpB.3/J7FNNlzUHpxHWGjNNFKYGy', 'user', 'bXAPj2ZYdI', '2023-07-29 01:57:58', '2023-07-29 01:57:58'),
(4, 'Lawrence Zulauf', 'qgraham', 'kuhn.whitney@example.com', NULL, '2023-07-29 01:57:58', '$2y$10$Fu48DJnyjcEtQdVEwpF2peRLor0jaQaKPcKqAVVgOA23axYG.EWna', 'user', 'hvjU9rFFPP', '2023-07-29 01:57:58', '2023-07-29 01:57:58'),
(5, 'Mona Pfannerstill', 'weissnat.judson', 'wolff.henri@example.com', NULL, '2023-07-29 01:57:58', '$2y$10$1XWnhmcSfgsdLVI8NK8CEey1.Gc.X/zThUWWjdQIs.13ZYJrBN4TC', 'user', 'sZtiZzUKrh', '2023-07-29 01:57:58', '2023-07-29 01:57:58'),
(6, 'Muhammad Amin', 'amin.kandangan1@gmail.com', 'amin.kandangan1@gmail.com', '117569066413548024180', NULL, '$2y$10$/4ARJyuMlCjHHe/EMJ9C7ubE6cRKVfRp3EKEA1DMW4tzTESBgK58e', 'user', 'A5Fa8jEgCsR3TcYgtApKysW6ITjrEzTJYFgfMgVVmJOHN1820C76mC0QytDn', '2023-07-29 02:15:47', '2023-07-29 08:03:10'),
(7, 'Jahrani', 'jahrani@gmail.com', 'jahrani@gmail.com', NULL, NULL, '$2y$10$S3mDe88BYv1rYa9Kd4TK3.AzYewiY8GOwiVCcoNCwmQZCtqPLiDFi', 'user', 'QcfNwOzsJoU3vaJwvvBhgEXD6e4Y9d6grWj2emocFO5oPiut9lQXjdVsE9XZ', '2023-07-29 04:51:24', '2023-07-29 08:16:17'),
(8, 'Fadhil', 'fadhil@gmail.com', 'fadhil@gmail.com', NULL, NULL, '$2y$10$D14y8pTnCtCV0r.aZ9mcgO8VFjF6e3El/.itY5T2tWlLjh1Q9RPj6', 'user', NULL, '2023-07-29 04:54:20', '2023-07-29 04:54:20'),
(9, 'Nada', 'nada@gmail.com', 'nada@gmail.com', NULL, NULL, '$2y$10$kVgvbjPx.zb0lL3que3qSu3JdWORCadLkTVCf6NszFdZ4yTv4kMnK', 'user', NULL, '2023-07-29 04:55:23', '2023-07-29 04:55:23'),
(10, 'Sarah', 'sarah@gmail.com', 'sarah@gmail.com', NULL, NULL, '$2y$10$z4asfRQzTzgA3UP4cequhuhSexVf3RAdvwe78hlHMtoS52db6khpe', 'user', NULL, '2023-07-29 04:58:52', '2023-07-29 04:58:52'),
(11, 'Ana', 'ana@gmail.com', 'ana@gmail.com', NULL, NULL, '$2y$10$u6BOsEYnqrA57vlMbOiTmuWdIG50SCmk1wgD9g.ThOZQtypizvBFG', 'user', NULL, '2023-07-29 05:04:16', '2023-07-29 05:04:16'),
(12, 'Jamal', 'jamal@gmail.com', 'jamal@gmail.com', NULL, NULL, '$2y$10$llDWlhlqYdewBYSMXSKH3OaHARe6c86cT4q6MH7/G8L8XlHjjfC6i', 'user', NULL, '2023-07-29 05:08:29', '2023-07-29 05:08:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_details`
--

CREATE TABLE `users_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` enum('M','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_details_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users_details`
--
ALTER TABLE `users_details`
  ADD CONSTRAINT `users_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
