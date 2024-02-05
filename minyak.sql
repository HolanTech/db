-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Feb 2024 pada 15.50
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
-- Database: `minyak`
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
-- Struktur dari tabel `juals`
--

CREATE TABLE `juals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `produk` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `laba` varchar(50) DEFAULT NULL,
  `yayasan` varchar(50) DEFAULT NULL,
  `kepala` varchar(50) DEFAULT NULL,
  `karyawan` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `juals`
--

INSERT INTO `juals` (`id`, `tanggal`, `produk`, `qty`, `harga`, `laba`, `yayasan`, `kepala`, `karyawan`, `created_at`, `updated_at`) VALUES
(1, '2023/12/27', 'Minyak Goreng', '2', '64000', '4000', '2000', '1200', '800', '2023-12-27 20:27:48', '2023-12-27 20:27:48'),
(2, '2023/12/27', 'Minyak Goreng', '5', '160000', '10000', '5000', '3000', '2000', '2023-12-27 20:28:21', '2023-12-27 20:28:21'),
(3, '2023/12/28', 'Minyak Goreng', '10', '320000', '20000', '10000', '6000', '4000', '2023-12-27 20:28:48', '2023-12-27 20:28:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawans`
--

CREATE TABLE `karyawans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember-token` varchar(255) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `karyawans`
--

INSERT INTO `karyawans` (`id`, `username`, `nama_lengkap`, `jabatan`, `no_hp`, `password`, `remember-token`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'penjaga', 'Pak Penjaga', 'Karyawan', '0218588205457', '$2y$12$qW8kDTimDwN7a1q2GIrjGe1FE7d047Jh8yC1Oi4LkqWtZ0U6yx.qW', '', NULL, '2023-12-27 02:29:14', '2023-12-27 20:24:52'),
(2, 'Dharma', 'Muhammad Suryadharma Yadya', 'Yayasan', '08256321525', '$2y$12$26AAg6DO.3CBdN/xXErA7.0nyBBjq14gmJe3OicKwNLvAle.CyKZW', NULL, NULL, NULL, NULL),
(3, 'helmi', 'Helmi Budiman S.Pd', 'Kepala', '08213515525', '$2y$12$0WsSprPMTIDR7HRQzJ2.DuJjRa2PrME4xrgsgKBISYKrBtL7Peog2', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas`
--

CREATE TABLE `kas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `produk` varchar(255) DEFAULT NULL,
  `beli` varchar(255) DEFAULT NULL,
  `jual` varchar(255) DEFAULT NULL,
  `debet` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kas`
--

INSERT INTO `kas` (`id`, `tanggal`, `produk`, `beli`, `jual`, `debet`, `credit`, `ket`, `created_at`, `updated_at`) VALUES
(1, '2023/12/27', NULL, NULL, NULL, '10000000', '0', 'modal awal', '2023-12-28 03:23:26', '2023-12-28 03:23:26'),
(2, '2023/12/27', 'Minyak Goreng', '1', '-', '0', '3000000', 'tambah stok Minyak Goreng', '2023-12-28 03:27:22', '2023-12-28 03:27:22'),
(3, '2023/12/27', 'Minyak Goreng', '-', '1', '60000', '0', 'Jual stok  Minyak Goreng 2 Liter', '2023-12-28 03:27:48', '2023-12-28 03:27:48'),
(4, '2023/12/27', 'Minyak Goreng', '-', '2', '150000', '0', 'Jual stok  Minyak Goreng 5 Liter', '2023-12-28 03:28:21', '2023-12-28 03:28:21'),
(5, '2023/12/28', 'Minyak Goreng', '-', '3', '300000', '0', 'Jual stok  Minyak Goreng 10 Liter', '2023-12-28 03:28:48', '2023-12-28 03:28:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `labakas`
--

CREATE TABLE `labakas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jual` varchar(50) DEFAULT NULL,
  `tanggal` varchar(255) NOT NULL,
  `laba` varchar(255) DEFAULT NULL,
  `yayasan` varchar(255) DEFAULT NULL,
  `kepala` varchar(255) DEFAULT NULL,
  `karyawan` varchar(255) DEFAULT NULL,
  `debet` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `labakas`
--

INSERT INTO `labakas` (`id`, `jual`, `tanggal`, `laba`, `yayasan`, `kepala`, `karyawan`, `debet`, `credit`, `ket`, `created_at`, `updated_at`) VALUES
(1, '1', '2023/12/27', '4000', '2000', '1200', '800', '4000', '0', 'Keuntungan Penjualan  Minyak Goreng 2 Liter', '2023-12-28 03:27:48', '2023-12-28 03:27:48'),
(2, '2', '2023/12/27', '10000', '5000', '3000', '2000', '10000', '0', 'Keuntungan Penjualan  Minyak Goreng 5 Liter', '2023-12-28 03:28:21', '2023-12-28 03:28:21'),
(3, '3', '2023/12/28', '20000', '10000', '6000', '4000', '20000', '0', 'Keuntungan Penjualan  Minyak Goreng 10 Liter', '2023-12-28 03:28:48', '2023-12-28 03:28:48');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_15_073835_create_karyawans_table', 1),
(6, '2023_12_13_081409_create_kas_table', 2),
(7, '2023_12_27_032347_create_produks_table', 3),
(8, '2023_12_27_060840_create_juals_table', 4),
(9, '2023_12_27_081409_create_labakas_table', 5);

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
-- Struktur dari tabel `produks`
--

CREATE TABLE `produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produk` varchar(255) NOT NULL,
  `jual` varchar(255) NOT NULL,
  `beli` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `stok` varchar(255) NOT NULL DEFAULT '0',
  `foto` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produks`
--

INSERT INTO `produks` (`id`, `produk`, `jual`, `beli`, `satuan`, `stok`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Minyak Goreng', '32000', '30000', 'Liter', '83', 'Minyak Goreng.jpg', '2023-12-28 03:25:37', '2023-12-27 20:28:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `juals`
--
ALTER TABLE `juals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `karyawans`
--
ALTER TABLE `karyawans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `labakas`
--
ALTER TABLE `labakas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `produks`
--
ALTER TABLE `produks`
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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `juals`
--
ALTER TABLE `juals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `karyawans`
--
ALTER TABLE `karyawans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kas`
--
ALTER TABLE `kas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `labakas`
--
ALTER TABLE `labakas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
