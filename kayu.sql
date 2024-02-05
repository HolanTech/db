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
-- Database: `kayu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `belis`
--

CREATE TABLE `belis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `po_out_id` varchar(255) NOT NULL,
  `pengrajin_id` varchar(255) NOT NULL,
  `order` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `belis`
--

INSERT INTO `belis` (`id`, `tanggal`, `po_out_id`, `pengrajin_id`, `order`, `qty`, `harga`, `file`, `created_at`, `updated_at`) VALUES
(1, '2023/12/24', 'PO-Out_12345', '1', 'Palet kayu meranti', '20 m3', '2000000', NULL, NULL, '2023-12-23 22:48:59'),
(2, '2024/01/08', 'PO_OUT_54321', '1', 'Mahoni', '12', '10000000', NULL, NULL, '2024-01-08 20:06:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `expedisis`
--

CREATE TABLE `expedisis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `kendaraan` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `expedisis`
--

INSERT INTO `expedisis` (`id`, `nama`, `no_hp`, `email`, `alamat`, `kendaraan`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'truck fuso', '0823163962558', 'fuso@gmail.com', 'depok indonesia', 'L300', 'truck fuso.png', NULL, '2023-12-19 01:36:55'),
(2, 'Holan Tech', '082266863898', 'muntiholan88@gmail.com', 'Jakarta indonesia', 'Fuso', NULL, NULL, NULL);

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
  `po_in_id` varchar(255) NOT NULL,
  `po_out_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `qcID` varchar(50) DEFAULT NULL,
  `order` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL DEFAULT '0',
  `hargaqc` varchar(50) NOT NULL DEFAULT '0',
  `oprational` varchar(255) DEFAULT NULL,
  `yatim` varchar(255) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `hasil` char(50) NOT NULL DEFAULT '0',
  `laba` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `juals`
--

INSERT INTO `juals` (`id`, `tanggal`, `po_in_id`, `po_out_id`, `customer_id`, `qcID`, `order`, `qty`, `harga`, `hargaqc`, `oprational`, `yatim`, `transport`, `hasil`, `laba`, `file`, `created_at`, `updated_at`) VALUES
(9, '2024/01/10', 'PO_IN_54321', 'PO_OUT_54321', '1', '13', 'Kayu Racuk', '10', '10000000', '15000000', '200000', '0', '1500000', '-1700000', '0', NULL, NULL, NULL),
(10, '2024/01/11', 'PO_IN_54321', 'PO_OUT_54321', '1', '14', 'Kayu Racuk', '10', '1000000', '15000000', '200000', '0', '1500000', '-10700000', '0', NULL, NULL, NULL),
(11, '2024/01/12', 'PO_IN_54321', 'PO_OUT_54321', '1', '15', 'Kayu Racuk', '10', '4000000', '15000000', '200000', '82500', '1500000', '3300000', '3217500', NULL, NULL, NULL),
(12, '2024/01/01', 'Po-In_123456', 'PO-Out_12345', '1', '16', 'mahoni', '10', '4000000', '40000000', '0', '0', '2500000', '-500000', '0', NULL, NULL, NULL),
(13, '2024/01/08', 'Po-In_123456', 'PO-Out_12345', '1', '17', 'mahoni', '10', '40000000', '40000000', '0', '987500', '2500000', '39500000', '38512500', NULL, NULL, NULL);

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
  `foto` varchar(255) DEFAULT NULL,
  `remember-token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `karyawans`
--

INSERT INTO `karyawans` (`nik`, `nama_lengkap`, `jabatan`, `no_hp`, `password`, `foto`, `remember-token`, `created_at`, `updated_at`) VALUES
('11111', 'Orang Kedua', 'Karyawan', '082155522354', '$2y$12$0l41qlWplHyQm1YwENnteuzZErMZbcKYee9CtVc6eYqtKpyh6itA.', '11111.png', NULL, NULL, NULL),
('12345', 'Munti Parsi Holan', 'Pihak Pertama', '082266863898', '$2y$12$Wn0JVEvJhWe3PfbO1IAsbuujAyBKG0jEP9yflHvpOGdJnsbnnkuty', '12345.png', '', '2023-12-12 06:53:08', '2023-12-12 06:53:08'),
('22222', 'orang kesatu', 'Karyawan', '082155522354', '$2y$12$jMI7ysmTaUIG5o/1ZOTJMOE2DMuqWaqGYx70O6iEx0VmrzbrELPVC', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas`
--

CREATE TABLE `kas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jual_id` varchar(255) DEFAULT NULL,
  `laba` varchar(255) DEFAULT NULL,
  `perorang` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) NOT NULL,
  `debet` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kas`
--

INSERT INTO `kas` (`id`, `jual_id`, `laba`, `perorang`, `tanggal`, `debet`, `credit`, `ket`, `created_at`, `updated_at`) VALUES
(9, '13', '0', '0', '2024/01/10', '0', '0', 'untuk karyawan dari_ PO_OUT_54321', NULL, NULL),
(10, '14', '0', '0', '2024/01/11', '0', '0', 'untuk karyawan dari CS untuk _ PO_OUT_54321', NULL, NULL),
(11, '15', '3217500', '1608750', '2024/01/12', '3217500', '0', 'untuk karyawan dari_ PO_OUT_54321', NULL, NULL),
(12, '16', '0', '0', '2024/01/01', '0', '0', 'untuk karyawan dari_ PO-Out_12345', NULL, NULL),
(13, '17', '38512500', '19256250', '2024/01/08', '38512500', '0', 'untuk karyawan dari_ PO-Out_12345', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_yatims`
--

CREATE TABLE `kas_yatims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jual_id` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) NOT NULL,
  `laba` varchar(255) DEFAULT NULL,
  `debet` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kas_yatims`
--

INSERT INTO `kas_yatims` (`id`, `jual_id`, `tanggal`, `laba`, `debet`, `credit`, `ket`, `created_at`, `updated_at`) VALUES
(10, '13', '2024/01/10', '-1700000', '0', '0', 'untuk yatim dari_ PO_OUT_54321', NULL, NULL),
(11, '14', '2024/01/11', '-10700000', '0', '0', 'untuk yatim  dari CS untuk _ PO_OUT_54321', NULL, NULL),
(12, '15', '2024/01/12', '3300000', '82500', '0', 'untuk yatim dari_ PO_OUT_54321', NULL, NULL),
(13, '16', '2024/01/01', '-500000', '0', '0', 'untuk yatim dari_ PO-Out_12345', NULL, NULL),
(14, '17', '2024/01/08', '39500000', '987500', '0', 'untuk yatim dari_ PO-Out_12345', NULL, NULL);

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
(5, '2023_11_15_073835_create_karyawans_table', 2),
(6, '2023_12_13_023316_create_modals_table', 3),
(7, '2023_12_13_064135_create_pengrajins_table', 4),
(8, '2023_12_13_073903_create_pelanggans_table', 5),
(9, '2023_12_13_075109_create_expedisis_table', 6),
(10, '2023_12_13_081338_create_juals_table', 7),
(11, '2023_12_13_081409_create_kas_table', 7),
(12, '2023_12_13_081646_create_belis_table', 7),
(13, '2023_12_13_081906_create_transports_table', 7),
(14, '2023_12_13_081937_create_q_c_s_table', 7),
(15, '2023_12_13_090611_create_po_ins_table', 7),
(16, '2023_12_13_090618_create_po_outs_table', 7),
(17, '2023_12_14_100941_create_kas_yatims_table', 8),
(18, '2023_12_18_011000_create_projects_table', 9),
(19, '2023_12_18_011014_create_pks_table', 9),
(20, '2023_12_19_033255_create_notes_table', 10),
(21, '2024_01_10_014246_create_oprationals_table', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modals`
--

CREATE TABLE `modals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `beli_id` varchar(255) DEFAULT NULL,
  `jual_id` varchar(255) DEFAULT NULL,
  `transport_id` varchar(50) DEFAULT NULL,
  `po_id` char(50) DEFAULT NULL,
  `tanggal` varchar(255) NOT NULL,
  `debet` varchar(255) NOT NULL,
  `credit` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `modals`
--

INSERT INTO `modals` (`id`, `beli_id`, `jual_id`, `transport_id`, `po_id`, `tanggal`, `debet`, `credit`, `ket`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'PO-Out_12345', '2023/12/24', '100000000', '0', 'modal awal', '2023-12-24 05:42:27', '2023-12-24 05:42:27'),
(2, '1', NULL, NULL, 'PO-Out_12345', '2023/12/24', '0', '2000000', 'pembayaran  PO-Out_12345 20 m3', '2023-12-24 05:43:12', '2023-12-24 05:43:12'),
(3, NULL, NULL, '1', 'PO-Out_12345', '2023/12/24', '0', '2500000', 'transport_  PO-Out_12345 20 m3', '2023-12-24 05:43:48', '2023-12-24 05:43:48'),
(5, '2', NULL, NULL, 'PO_OUT_54321', '2024/01/08', '0', '10000000', 'pembayaran  PO_OUT_54321 12', '2024-01-09 03:03:49', '2024-01-09 03:03:49'),
(6, NULL, NULL, NULL, 'PO_OUT_54321', '2024/01/07', '15000000', '0', 'Modal awal', '2024-01-09 03:28:40', '2024-01-09 03:28:40'),
(9, NULL, NULL, '2', 'PO_OUT_54321', '2024/01/10', '0', '1500000', 'transport_  PO_OUT_54321 12', '2024-01-10 02:21:38', '2024-01-10 02:21:38'),
(18, NULL, '13', NULL, 'PO_OUT_54321', '2024/01/10', '10000000', '0', 'pembayaran transport dan modal beli PO_OUT_54321 10', '2024-01-12 03:05:48', '2024-01-12 03:05:48'),
(19, NULL, '14', NULL, 'PO_OUT_54321', '2024/01/11', '1000000', '0', 'pembayaran transport dan modal beli dari CS untuk PO_OUT_54321 10', '2024-01-12 03:06:45', '2024-01-12 03:06:45'),
(20, NULL, '15', NULL, 'PO_OUT_54321', '2024/01/12', '500000', '0', 'pembayaran transport dan modal beli PO_OUT_54321 10', '2024-01-12 03:18:18', '2024-01-12 03:18:18'),
(21, NULL, '16', NULL, 'PO-Out_12345', '2024/01/01', '4000000', '0', 'pembayaran transport dan modal beli PO-Out_12345 10', '2024-01-15 03:18:05', '2024-01-15 03:18:05'),
(22, NULL, '17', NULL, 'PO-Out_12345', '2024/01/08', '500000', '0', 'pembayaran transport dan modal beli PO-Out_12345 10', '2024-01-15 03:19:20', '2024-01-15 03:19:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notes`
--

INSERT INTO `notes` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(4, 'test noter', 'lorem ipsum', '2024-01-09 20:05:46', '2024-01-09 20:05:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oprationals`
--

CREATE TABLE `oprationals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `debet` varchar(255) NOT NULL DEFAULT '0',
  `credit` varchar(255) NOT NULL DEFAULT '0',
  `jual_id` varchar(255) DEFAULT NULL,
  `po_id` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oprationals`
--

INSERT INTO `oprationals` (`id`, `tanggal`, `debet`, `credit`, `jual_id`, `po_id`, `ket`, `created_at`, `updated_at`) VALUES
(1, '2024/01/10', '0', '150000', NULL, 'PO_OUT_54321', 'Makan dan kopi', '2024-01-10 02:09:16', '2024-01-10 02:09:16'),
(2, '2024/01/09', '0', '50000', NULL, 'PO_OUT_54321', 'ongkos muat', '2024-01-10 02:10:09', '2024-01-10 02:10:09'),
(13, '2024/01/10', '0', '0', '13', 'PO_OUT_54321', 'pengembalian biaya opratinal PO_OUT_54321 10', '2024-01-12 03:05:48', '2024-01-12 03:05:48'),
(14, '2024/01/11', '0', '0', '14', 'PO_OUT_54321', 'pengembalian biaya opratinal dari CS untuk PO_OUT_54321 10', '2024-01-12 03:06:45', '2024-01-12 03:06:45'),
(15, '2024/01/12', '200000', '0', '15', 'PO_OUT_54321', 'pengembalian biaya opratinal PO_OUT_54321 10', '2024-01-12 03:18:18', '2024-01-12 03:18:18'),
(16, '2024/01/01', '0', '0', '16', 'PO-Out_12345', 'pengembalian biaya opratinal PO-Out_12345 10', '2024-01-15 03:18:05', '2024-01-15 03:18:05'),
(17, '2024/01/08', '0', '0', '17', 'PO-Out_12345', 'pengembalian biaya opratinal PO-Out_12345 10', '2024-01-15 03:19:20', '2024-01-15 03:19:20'),
(18, '2024/01/15', '0', '200000', NULL, 'PO_OUT_00000', 'Transport', '2024-01-15 03:59:25', '2024-01-15 03:59:25'),
(20, '2024/01/16', '0', '50000', NULL, 'PO_OUT_00000', 'Uang Kopi', '2024-01-15 04:10:38', '2024-01-15 04:10:38');

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
-- Struktur dari tabel `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `badan_hukum` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` char(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggans`
--

INSERT INTO `pelanggans` (`id`, `badan_hukum`, `nama`, `no_hp`, `email`, `alamat`, `foto`, `created_at`, `updated_at`) VALUES
(1, '', 'PT A', '0823162162518', 'pta@gmail.com', 'Jakarta indonesia', 'PT A.png', NULL, NULL),
(2, '0', 'Holan Tech', '082266863898', 'muntiholan88@gmail.com', 'Jakarta indonesia', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengrajins`
--

CREATE TABLE `pengrajins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `badan_hukum` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` char(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengrajins`
--

INSERT INTO `pengrajins` (`id`, `badan_hukum`, `nama`, `no_hp`, `email`, `alamat`, `foto`, `created_at`, `updated_at`) VALUES
(1, '0', 'CV A', '0856212852452', 'cva@gmailo.com', 'ciamis indonesia', 'CV A.png', '2023-12-14 13:36:07', '2023-12-19 19:39:29'),
(3, '0', 'Holan Tech Company', '082266863898', 'muntiholan88@gmail.com', 'Jakarta indonesia', NULL, '2023-12-20 02:32:48', '2023-12-20 02:32:48');

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
-- Struktur dari tabel `pks`
--

CREATE TABLE `pks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_pks` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_ins`
--

CREATE TABLE `po_ins` (
  `po_in` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `order` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `po_ins`
--

INSERT INTO `po_ins` (`po_in`, `customer_id`, `order`, `qty`, `harga`, `file`, `created_at`, `updated_at`) VALUES
('PO_IN_00000', '2', 'Palet kayu meranti', '10', '15000000', NULL, NULL, NULL),
('PO_IN_54321', '1', 'mahoni', '12', '15000000', NULL, NULL, NULL),
('Po-In_123456', '1', 'Palet kayu meranti', '24 m3', '40000000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_outs`
--

CREATE TABLE `po_outs` (
  `po_out` varchar(255) NOT NULL,
  `pengrajin_id` varchar(255) NOT NULL,
  `order` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `po_outs`
--

INSERT INTO `po_outs` (`po_out`, `pengrajin_id`, `order`, `qty`, `harga`, `file`, `created_at`, `updated_at`) VALUES
('PO_OUT_00000', '3', 'Palet kayu meranti', '10', '10000000', NULL, NULL, NULL),
('PO_OUT_54321', '1', 'mahoni', '12', '11000000', NULL, NULL, NULL),
('PO-Out_12345', '1', 'Palet kayu meranti', '24 m3', '28800000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project` varchar(255) NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `no_kontrak` varchar(255) NOT NULL DEFAULT '-',
  `status` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `q_c_s`
--

CREATE TABLE `q_c_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `po_in_id` varchar(255) NOT NULL,
  `po_out_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `expedisi_id` varchar(50) DEFAULT NULL,
  `order` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL DEFAULT '0',
  `hargaqc` varchar(50) DEFAULT '0',
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `q_c_s`
--

INSERT INTO `q_c_s` (`id`, `tanggal`, `po_in_id`, `po_out_id`, `customer_id`, `expedisi_id`, `order`, `qty`, `harga`, `hargaqc`, `file`, `created_at`, `updated_at`) VALUES
(13, '2024/01/10', 'PO_IN_54321', 'PO_OUT_54321', '1', '1', 'Kayu Racuk', '10', '10000000', '15000000', NULL, NULL, NULL),
(14, '2024/01/11', 'PO_IN_54321', 'PO_OUT_54321', '1', '1', 'Kayu Racuk', '10', '1000000', '15000000', NULL, NULL, NULL),
(15, '2024/01/12', 'PO_IN_54321', 'PO_OUT_54321', '1', '1', 'Kayu Racuk', '10', '4000000', '15000000', NULL, NULL, NULL),
(16, '2024/01/01', 'Po-In_123456', 'PO-Out_12345', '1', '1', 'mahoni', '10', '4000000', '40000000', NULL, NULL, NULL),
(17, '2024/01/08', 'Po-In_123456', 'PO-Out_12345', '1', '1', 'mahoni', '10', '40000000', '40000000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transports`
--

CREATE TABLE `transports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expedisi_id` varchar(255) NOT NULL,
  `po_out_id` varchar(255) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `biaya` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transports`
--

INSERT INTO `transports` (`id`, `expedisi_id`, `po_out_id`, `tanggal`, `qty`, `biaya`, `customer_id`, `file`, `created_at`, `updated_at`) VALUES
(1, '1', 'PO-Out_12345', '2023/12/24', '20 m3', '2500000', '1', NULL, NULL, '2023-12-23 22:47:15'),
(2, '1', 'PO_OUT_54321', '2024/01/10', '12', '1500000', '1', NULL, NULL, NULL);

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
-- Indeks untuk tabel `belis`
--
ALTER TABLE `belis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `expedisis`
--
ALTER TABLE `expedisis`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kas_yatims`
--
ALTER TABLE `kas_yatims`
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
-- Indeks untuk tabel `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oprationals`
--
ALTER TABLE `oprationals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengrajins`
--
ALTER TABLE `pengrajins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pks`
--
ALTER TABLE `pks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `po_ins`
--
ALTER TABLE `po_ins`
  ADD PRIMARY KEY (`po_in`);

--
-- Indeks untuk tabel `po_outs`
--
ALTER TABLE `po_outs`
  ADD PRIMARY KEY (`po_out`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `q_c_s`
--
ALTER TABLE `q_c_s`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transports`
--
ALTER TABLE `transports`
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
-- AUTO_INCREMENT untuk tabel `belis`
--
ALTER TABLE `belis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `expedisis`
--
ALTER TABLE `expedisis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `juals`
--
ALTER TABLE `juals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `kas`
--
ALTER TABLE `kas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `kas_yatims`
--
ALTER TABLE `kas_yatims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `modals`
--
ALTER TABLE `modals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `oprationals`
--
ALTER TABLE `oprationals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengrajins`
--
ALTER TABLE `pengrajins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pks`
--
ALTER TABLE `pks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `q_c_s`
--
ALTER TABLE `q_c_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `transports`
--
ALTER TABLE `transports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
