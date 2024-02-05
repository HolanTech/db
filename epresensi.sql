-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Feb 2024 pada 15.51
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
-- Database: `epresensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cabangs`
--

CREATE TABLE `cabangs` (
  `kode_cabang` char(255) NOT NULL,
  `nama_cabang` varchar(255) NOT NULL,
  `lokasi_kantor` varchar(255) NOT NULL,
  `radius` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cabangs`
--

INSERT INTO `cabangs` (`kode_cabang`, `nama_cabang`, `lokasi_kantor`, `radius`, `created_at`, `updated_at`) VALUES
('BDG', 'Bandung', '-6.414861020887129,106.8853792265283', 50, '2023-12-12 03:48:58', '2023-12-12 03:48:58'),
('DPK', 'Depok', '-6.404373496693762,106.87001341448145', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `departemens`
--

CREATE TABLE `departemens` (
  `kode_dept` char(255) NOT NULL,
  `nama_dept` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `departemens`
--

INSERT INTO `departemens` (`kode_dept`, `nama_dept`, `created_at`, `updated_at`) VALUES
('HRD', 'Human Resource Development', NULL, NULL),
('IT', 'Information Teknologi', NULL, NULL),
('MKT', 'Marketing', NULL, NULL);

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
-- Struktur dari tabel `izins`
--

CREATE TABLE `izins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` char(255) NOT NULL,
  `tgl_izin` date NOT NULL,
  `status` char(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `approved` char(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `izins`
--

INSERT INTO `izins` (`id`, `nik`, `tgl_izin`, `status`, `keterangan`, `approved`, `created_at`, `updated_at`) VALUES
(1, '12345', '2023-11-01', 'i', 'jemput anak', '1', NULL, '2023-11-22 04:33:26'),
(2, '12345', '2023-11-07', 's', 'sakit flu', '2', NULL, '2023-11-22 04:33:43'),
(3, '12345', '2023-11-07', 'i', 'cuti', '0', NULL, '2023-11-22 04:33:30'),
(4, '12345', '2023-11-22', 'i', 'jemput nenek', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam_kerjas`
--

CREATE TABLE `jam_kerjas` (
  `kode_jam_kerja` char(255) NOT NULL,
  `nama_jam_kerja` varchar(255) NOT NULL,
  `awal_jam_masuk` time NOT NULL,
  `jam_masuk` time NOT NULL,
  `akhir_jam_masuk` time NOT NULL,
  `jam_pulang` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jam_kerjas`
--

INSERT INTO `jam_kerjas` (`kode_jam_kerja`, `nama_jam_kerja`, `awal_jam_masuk`, `jam_masuk`, `akhir_jam_masuk`, `jam_pulang`, `created_at`, `updated_at`) VALUES
('JK01', 'Reguler', '07:30:00', '08:00:00', '09:00:00', '17:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawans`
--

CREATE TABLE `karyawans` (
  `nik` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `kode_dept` char(20) DEFAULT NULL,
  `kode_cabang` char(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `karyawans`
--

INSERT INTO `karyawans` (`nik`, `nama_lengkap`, `jabatan`, `no_hp`, `password`, `remember_token`, `foto`, `kode_dept`, `kode_cabang`, `created_at`, `updated_at`) VALUES
('11111', 'udin', 'Staf IT', '0215215255', '$2y$12$HcJyEPu5nWHm3OJla/EnmeMFJcJgycVSXZuBS.0NdByP77/V3roMm', NULL, '11111.png', 'IT', 'BDG', NULL, NULL),
('12345', 'Munti Parsi Holan', 'it dev', '02882266863898', '$2y$12$Wn0JVEvJhWe3PfbO1IAsbuujAyBKG0jEP9yflHvpOGdJnsbnnkuty', '', '12345.png', 'IT', 'DPK', NULL, NULL),
('123456', 'Dharma', 'Manager', '08213515525', '$2y$12$a5jfoClaA0Mnr2ReLeeuIe2ZcA5AayaQc2Vs7y/58touo12IxkWdO', NULL, '123456.jpeg', 'IT', 'BDG', NULL, NULL),
('12346', 'Haedar', 'desainer', '02882266863898', '$2y$12$rEVCDJ8wplizSJLlOa81CeuMIVKBDKk6ri2djamP9JI3s6vY0ILy2', '', '12346.png', 'HRD', 'DPK', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasilokasis`
--

CREATE TABLE `konfigurasilokasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lokasi_kantor` varchar(255) NOT NULL,
  `radius` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `konfigurasilokasis`
--

INSERT INTO `konfigurasilokasis` (`id`, `lokasi_kantor`, `radius`, `created_at`, `updated_at`) VALUES
(1, '-6.404222489092441, 106.86993097914068', '10000000', NULL, NULL);

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_11_15_073835_create_karyawans_table', 1),
(11, '2023_11_15_074225_create_presensis_table', 1),
(12, '2023_11_16_142822_create_izins_table', 2),
(13, '2023_11_16_222404_create_dapartemens_table', 3),
(14, '2023_11_16_222404_create_departemens_table', 4),
(15, '2023_11_20_222630_create_konfigurasilokasis_table', 4),
(16, '2023_11_22_155831_create_cabangs_table', 5),
(17, '2023_11_28_151105_create_reports_table', 6),
(18, '2023_12_13_092444_create_modals_table', 7),
(19, '2024_01_02_134948_create_jam_kerjas_table', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modals`
--

CREATE TABLE `modals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `debet` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Struktur dari tabel `presensis`
--

CREATE TABLE `presensis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) NOT NULL,
  `tgl_presensi` varchar(255) NOT NULL,
  `jam_in` varchar(255) NOT NULL,
  `jam_out` varchar(255) DEFAULT NULL,
  `foto_in` varchar(255) NOT NULL,
  `foto_out` varchar(255) DEFAULT NULL,
  `lokasi_in` varchar(255) NOT NULL,
  `lokasi_out` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `presensis`
--

INSERT INTO `presensis` (`id`, `nik`, `tgl_presensi`, `jam_in`, `jam_out`, `foto_in`, `foto_out`, `lokasi_in`, `lokasi_out`, `created_at`, `updated_at`) VALUES
(33, '12345', '2023-11-16', '07:51:24', '09:52:54', '12345-2023-11-16-in.png', '12345-2023-11-16-out.png', '-6.3930368,106.9449216', '-6.3930368,106.9449216', NULL, NULL),
(34, '12346', '2023-11-16', '11:31:02', NULL, '12346-2023-11-16-in.png', NULL, '-6.3930368,106.9449216', NULL, NULL, NULL),
(35, '12346', '2023-11-17', '10:14:20', '15:14:42', '12346-2023-11-17-in.png', '12346-2023-11-17-out.png', '-6.4044592,106.8700757', '-6.4044592,106.8700757', NULL, NULL),
(36, '12345', '2023-11-17', '15:15:25', '15:15:37', '12345-2023-11-17-in.png', '12345-2023-11-17-out.png', '-6.3837544,106.8945456', '-6.3837544,106.8945456', NULL, NULL),
(37, '123456', '2023-11-17', '06:16:21', NULL, '123456-2023-11-17-in.png', NULL, '-6.3837544,106.8945456', NULL, NULL, NULL),
(38, '12345', '2023-11-20', '06:47:34', NULL, '12345-2023-11-20-in.png', NULL, '-6.4028672,106.9416448', NULL, NULL, NULL),
(39, '12346', '2023-11-20', '22:53:48', NULL, '12346-2023-11-20-in.png', NULL, '-6.4043892,106.8699962', NULL, NULL, NULL),
(40, '12345', '2023-11-22', '13:53:22', NULL, '12345-2023-11-22-in.png', NULL, '-6.4044031,106.8700046', NULL, NULL, NULL),
(42, '12345', '2023-12-12', '11:38:56', NULL, '12345-2023-12-12-in.png', NULL, '-6.4044025,106.8700081', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) NOT NULL,
  `tgl_report` date NOT NULL,
  `report` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reports`
--

INSERT INTO `reports` (`id`, `nik`, `tgl_report`, `report`, `foto`, `created_at`, `updated_at`) VALUES
(1, '12345', '2023-11-26', 'test', '6565aaf757237_12345_1701161719.png', '2023-11-26 10:10:49', NULL),
(2, '12345', '2023-11-28', 'test2', '6565adc7f1d45_12345_1701162439.png', '2023-11-28 09:10:49', NULL),
(3, '12345', '2023-11-27', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis', '6565af36c7903_12345_1701162806.png', '2023-11-27 09:13:26', '2023-11-28 09:13:26'),
(4, '12345', '2023-11-29', 'tets', '6567029dcfebe_12345_1701249693.png', '2023-11-29 09:21:33', '2023-11-29 09:21:33');

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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$PyJcFx8Jc7UvnXw31lMhk.CxjMDiyC8WRWejd17Yiy.xd.RgqgR.2', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`kode_cabang`);

--
-- Indeks untuk tabel `departemens`
--
ALTER TABLE `departemens`
  ADD PRIMARY KEY (`kode_dept`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `izins`
--
ALTER TABLE `izins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jam_kerjas`
--
ALTER TABLE `jam_kerjas`
  ADD PRIMARY KEY (`kode_jam_kerja`);

--
-- Indeks untuk tabel `karyawans`
--
ALTER TABLE `karyawans`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `konfigurasilokasis`
--
ALTER TABLE `konfigurasilokasis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `modals`
--
ALTER TABLE `modals`
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
-- Indeks untuk tabel `presensis`
--
ALTER TABLE `presensis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reports`
--
ALTER TABLE `reports`
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
-- AUTO_INCREMENT untuk tabel `izins`
--
ALTER TABLE `izins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `konfigurasilokasis`
--
ALTER TABLE `konfigurasilokasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `modals`
--
ALTER TABLE `modals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `presensis`
--
ALTER TABLE `presensis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
