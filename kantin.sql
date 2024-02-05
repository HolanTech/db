-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Feb 2024 pada 15.24
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kantin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `drinks`
--

CREATE TABLE `drinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kantin_id` char(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `like` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `drinks`
--

INSERT INTO `drinks` (`id`, `kantin_id`, `name`, `price`, `description`, `like`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Es Terh manis', '5000', 'Esteh manis dengan gula asli', NULL, 'public/food_images/kNBPBEVE8dtRUdgTk5wSuniv78fMaqEUWXCRuMlk.png', 'ready', '2024-01-30 20:20:57', '2024-01-30 20:21:55'),
(2, '1', 'Jus Mangga Segar', '8000', 'Jus mangga ,bua baru di petik', NULL, 'public/food_images/CtDh77piLTzBGpQRbj0SqWL0b09sQe11anj6GXT6.png', 'ready', '2024-01-30 20:21:35', '2024-02-01 19:55:51'),
(3, '1', 'Kopi Hitam seklai', '5000', 'Kopi hitam manis', NULL, 'public/drink_images/VgyMjxdAXbHF47UAwyRf2dfzfTxRN6oT8xKlFPUY.jpg', 'ready', '2024-02-01 19:56:26', '2024-02-01 19:57:02'),
(4, '1', 'Susu Sapi Murni', '8000', 'Susu sapi segar', NULL, 'public/drink_images/YNES0dhVHXSL7SxeE7PDYSfE4gIbQmKguvz0nX4H.jpg', 'ready', '2024-02-01 19:57:00', '2024-02-01 19:57:00');

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
-- Struktur dari tabel `food`
--

CREATE TABLE `food` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kantin_id` char(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `like` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `food`
--

INSERT INTO `food` (`id`, `kantin_id`, `name`, `price`, `description`, `like`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Ayam Goreng Mail', '10000', 'Ayam goreng fread chicken', NULL, 'public/food_images/poLutbyaYU1d90DPJorKQMPatBc9KjwI3qj5Sb0j.png', 'ready', '2024-01-30 19:43:11', '2024-02-01 19:11:41'),
(2, '1', 'Nasi Goreng', '10000', 'Nasi goreng spesial', '2', 'public/food_images/ARasp50N2osNmjegkTmxN962JY99X3ksKnjQLPOl.png', 'ready', '2024-01-30 19:57:19', '2024-02-01 19:49:03'),
(3, '1', 'Sate Thaichan', '15000', 'Sate taivhan uenaakk', NULL, 'public/food_images/b6XocZ4hMuDEOCUoVsau9UgHwK2203C1A8jXbYRn.png', 'ready', '2024-02-01 19:29:52', '2024-02-01 19:29:52'),
(5, '1', 'Soto Ayam Jago', '10000', 'Soto Ayam mantullll', '3', 'public/food_images/viNicM3DtEOfbeL3FJeyjXumOapeUNyhK0cob135.jpg', 'ready', '2024-02-01 19:37:56', '2024-02-01 19:37:56'),
(6, '1', 'Mie Goreng', '10000', 'Mie gioreng kriting', NULL, 'public/food_images/R9WFJzq11lR0KinSOVaVU3WQtByTvjhvLduByrvz.jpg', 'ready', '2024-02-01 19:39:18', '2024-02-01 19:39:18');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_01_30_090242_create_sekolahs_table', 1),
(7, '2024_01_31_021502_create_food_table', 2),
(8, '2024_01_31_031034_create_drinks_table', 3),
(9, '2024_01_31_031116_create_snacks_table', 3),
(10, '2024_02_01_014818_create_orders_table', 4),
(11, '2024_02_05_031114_create_saldos_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `rfid` varchar(255) NOT NULL,
  `jumlah_item` varchar(255) NOT NULL,
  `total_order` varchar(255) NOT NULL,
  `saldo_awal` varchar(255) NOT NULL,
  `saldo_akhir` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `saldos`
--

CREATE TABLE `saldos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rfid` varchar(255) NOT NULL,
  `saldo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `saldos`
--

INSERT INTO `saldos` (`id`, `rfid`, `saldo`, `created_at`, `updated_at`) VALUES
(1, '0003498404', '150000', '2024-02-04 21:46:06', '2024-02-04 22:53:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolahs`
--

CREATE TABLE `sekolahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sekolah` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sekolahs`
--

INSERT INTO `sekolahs` (`id`, `sekolah`, `no_hp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'SMP Islam Al-Muttaqien', '082582582582', 'Desa Cijayanti', '2024-01-30 09:31:53', '2024-01-30 09:31:53'),
(2, 'SMK AL-Muttaqien ', '081313652468', 'Jl Jijayanti', '2024-01-30 09:31:53', '2024-01-30 09:31:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `snacks`
--

CREATE TABLE `snacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kantin_id` char(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `like` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `snacks`
--

INSERT INTO `snacks` (`id`, `kantin_id`, `name`, `price`, `description`, `like`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'Chitoss', '5000', 'Chitor Keripik kentang', NULL, 'public/snack_images/i1McPEgx2cBEZujY83IednrQnVoTmjYrO42rV7c9.png', 'not ready', '2024-01-30 20:22:58', '2024-02-02 02:52:49'),
(2, '1', 'Kuaci Rebo', '14500', 'Kuaci .teman nyanti', NULL, 'public/snack_images/UGmDrBUoQEitoh6ZhlmtletdtXkMTdt91LY4ybBw.png', 'ready', '2024-02-01 20:02:31', '2024-02-01 20:02:31'),
(3, '1', 'Better Biskuit', '5000', 'Biskuit better', NULL, 'public/snack_images/Xt6ykWduMJD2itKmKkJctcrpJHfQ8bMxmwlL7bGY.jpg', 'ready', '2024-02-01 20:03:01', '2024-02-01 20:03:01'),
(4, '1', 'Nabati wafer keju', '5000', 'nabati keju wager', NULL, 'public/snack_images/Sem0YSROhDwQVxywfFvbKcw4ZKy2kI0oJa6cHrM0.jpg', 'ready', '2024-02-01 20:03:59', '2024-02-01 20:03:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `rfid` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `sekolah` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `rfid`, `no_hp`, `sekolah`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'munti parsi holan', '0003761255', '082266863898', '2', 'pengelola', 'muntiholan88@gmail.com', NULL, '$2y$12$E8/1vvddsLrh//uzNjsNK.4MdGdHmaAw1dKb9aWptfOZbUzlQthbS', '21RrOi9XZYtVPK2M4pL9PdfnqbRu78yZDyU1VxJW7yDlGTW539X7GRu6wqV2', '2024-01-30 02:51:19', '2024-01-30 02:51:19'),
(2, 'Muhammad Suryadharma Yadya', '0003761245', '0838264862828', '1', 'admin', 'suryadharma@gmail.com', NULL, '$2y$12$qvnKE31EaNtAmpiq3nTJPuZL4H3MTDK52.lQf4N3DuHhfkfBKDZ86', NULL, '2024-01-30 21:44:48', '2024-01-30 21:44:48'),
(4, 'Munti Parsi Holan', '0003498404', '082266863898', NULL, 'pengguna', NULL, NULL, '$2y$12$WUIKe9kk1lWXIy3s.6wUeeWtT.dSEdoUDzjwlHvmHSAcikv3X.Fsa', NULL, '2024-02-04 23:43:55', '2024-02-04 23:43:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `saldos`
--
ALTER TABLE `saldos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sekolahs`
--
ALTER TABLE `sekolahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `snacks`
--
ALTER TABLE `snacks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `saldos`
--
ALTER TABLE `saldos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sekolahs`
--
ALTER TABLE `sekolahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `snacks`
--
ALTER TABLE `snacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
