-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Feb 2024 pada 04.00
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
  `kantin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `likes` int(255) DEFAULT 1,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `drinks`
--

INSERT INTO `drinks` (`id`, `kantin_id`, `name`, `price`, `description`, `likes`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'Es Teh Manis', '5000', 'Esteh Manis', NULL, 'public/drink_images/CsrYTO2ATABX2AGuuUJr3phnvQZgXvPLCAlpokMZ.png', 'ready', '2024-02-06 06:16:22', '2024-02-06 06:20:56'),
(2, 5, 'Kopi Hitam', '5000', 'Kopi Hitam manis', NULL, 'public/drink_images/Ewinq041tA5lkLspPjNBx1mMZnw9XpaReqGgJqxb.jpg', 'ready', '2024-02-06 06:17:01', '2024-02-06 15:30:02'),
(3, 3, 'Jus Mangga', '8000', 'Juas mangga Segar', NULL, 'public/drink_images/m5HiF6euSzbGWvb5ChVcZgTxLUxKghFIMh1fQMma.png', 'ready', '2024-02-06 19:31:16', '2024-02-06 19:31:16'),
(4, 3, 'Es Teh Manis', '5000', 'es teh manis', NULL, 'public/drink_images/qVkMp8xXtD9VbHGqM2q2nFLMGdZQjZ1dl6PRu8SU.png', 'ready', '2024-02-06 19:32:20', '2024-02-06 19:32:20'),
(5, 3, 'teh pucuk 250 ml', '8000', 'Teh puck harumk', NULL, 'public/drink_images/C9qSlz9PMXX6rsDqxkKByGu026QCfvI73niIywG3.jpg', 'ready', '2024-02-06 22:29:31', '2024-02-06 22:29:31'),
(6, 3, 'MIlo Dingin', '10000', 'ES Milo Endull', NULL, 'public/drink_images/satZpgxcRR95V99R5et2MBUBBF6toAEITjxq6hTF.jpg', 'ready', '2024-02-06 22:29:59', '2024-02-06 22:29:59');

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
  `kantin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `likes` int(255) DEFAULT 1,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `food`
--

INSERT INTO `food` (`id`, `kantin_id`, `name`, `price`, `description`, `likes`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'Nasi Goreng', '10000', 'Nasi Goreng Kecap', 1, 'public/food_images/YJT2LSVyKlh83sKikiz3LnJnl3urApMleWYxqtXI.png', 'ready', '2024-02-06 06:14:17', '2024-02-07 19:12:11'),
(2, 5, 'Soto Ayam Jago', '15000', 'Soto ayam kampung', NULL, 'public/food_images/2pKtkQHBQwdBMDNeyZFqFW0ySB8Qj9hDHhAyRXZi.jpg', 'ready', '2024-02-06 06:14:53', '2024-02-07 22:26:03'),
(3, 5, 'Indomie Goreng', '10000', 'Indomie Plus Telor', NULL, 'public/food_images/uqaQrRDtLzJFzZB7X36hSPRbUVmMbnokyGncQIx7.jpg', 'ready', '2024-02-06 06:15:20', '2024-02-06 19:11:06'),
(4, 3, 'Nasi Uduk', '10000', 'Nasi Uduk UI', NULL, 'public/food_images/mkRLMR2iZ9l020KavBUMa2XUL3hEZCL1GTtzPSYa.jpg', 'ready', '2024-02-06 19:29:48', '2024-02-12 02:16:11'),
(5, 3, 'Lontong Sayur', '13000', 'Lontong sayur enak', NULL, 'public/food_images/3Ea9LiQY0IAIUDOS2bEW3K1rkMD5nP6qTUvuelSg.jpg', 'ready', '2024-02-06 19:30:38', '2024-02-06 19:30:38'),
(6, 3, 'Indomie Goreng', '10000', 'Indomie Goreng plus telor', NULL, 'public/food_images/d1PjynwfR9GTlGUD1pabZEUDzSbc0corWldbXLhx.jpg', 'ready', '2024-02-06 22:27:02', '2024-02-06 22:27:02'),
(7, 3, 'Gado-Gado bumbu kacang', '15000', 'Gado Gaod sayur', NULL, 'public/food_images/avPHR6ecrsmbh6MpqddvzugWfNsXrGFwgH2LAYSa.jpg', 'ready', '2024-02-06 22:27:28', '2024-02-06 22:27:28'),
(8, 3, 'Sate Thaichan', '10000', 'Sate taichan mnatap', NULL, 'public/food_images/B2Jb8SCCCm2gv2I1aIDlYOyPFkQdvUYTDIJhixkW.png', 'ready', '2024-02-06 22:28:21', '2024-02-06 22:28:21'),
(9, 3, 'Ayam Goreng Mail', '8000', 'Ayam Goreng', NULL, 'public/food_images/8Ot6bn6qrytCfxLBEKrmagfm0XIrVYU2hDzVwcXp.png', 'ready', '2024-02-06 22:29:00', '2024-02-06 22:29:00');

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
(7, '2024_01_31_021502_create_food_table', 1),
(8, '2024_01_31_031034_create_drinks_table', 1),
(9, '2024_01_31_031116_create_snacks_table', 1),
(10, '2024_02_01_014818_create_orders_table', 1),
(11, '2024_02_05_031114_create_saldos_table', 1),
(12, '2024_02_06_074551_create_order_details_table', 1),
(13, '2024_02_08_161409_create_topups_table', 2),
(14, '2024_02_08_161418_create_w_d_s_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kantin_id` int(11) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `rfid` varchar(255) NOT NULL,
  `jumlah_item` varchar(255) NOT NULL,
  `total_order` varchar(255) NOT NULL,
  `saldo_awal` varchar(255) NOT NULL,
  `saldo_akhir` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `kantin_id`, `tanggal`, `rfid`, `jumlah_item`, `total_order`, `saldo_awal`, `saldo_akhir`, `created_at`, `updated_at`) VALUES
(1, 3, '2024-02-07 03:04:25', '0003761235', '1', '10000.00', '200000', '190000', '2024-01-31 20:04:25', '2024-02-06 20:04:25'),
(2, 5, '2024-02-07 03:14:21', '0003761235', '4', '35000.00', '190000', '155000', '2024-02-06 20:14:21', '2024-02-06 20:14:21'),
(3, 3, '2024-02-07 03:52:44', '0003498404', '4', '39000.00', '131000', '92000', '2024-02-06 20:52:44', '2024-02-06 20:52:44'),
(4, 3, '2024-02-07 05:10:08', '0003498404', '4', '39000.00', '92000', '53000', '2024-02-06 22:10:08', '2024-02-06 22:10:08'),
(5, 3, '2024-02-07 05:37:43', '0003498404', '5', '51000.00', '53000', '2000', '2024-02-06 22:37:43', '2024-02-06 22:37:43'),
(6, 3, '2024-02-07 07:43:05', '0003498404', '3', '38000.00', '202000', '164000', '2024-02-07 00:43:05', '2024-02-07 00:43:05'),
(7, 3, '2024-02-07 08:50:38', '0003498404', '3', '38000.00', '164000', '126000', '2024-02-07 01:50:38', '2024-02-07 01:50:38'),
(8, 3, '2024-02-07 08:53:06', '0003498404', '4', '48000.00', '126000', '78000', '2024-02-07 01:53:06', '2024-02-07 01:53:06'),
(9, 3, '2024-02-07 09:14:02', '0003498404', '2', '28000.00', '78000', '50000', '2024-02-07 02:14:02', '2024-02-07 02:14:02'),
(10, 5, '2024-02-07 09:15:17', '0003761235', '9', '74000.00', '205000', '131000', '2024-02-07 02:15:17', '2024-02-07 02:15:17'),
(11, 5, '2024-02-08 02:21:46', '0003498404', '3', '35000.00', '50000', '15000', '2024-02-07 19:21:46', '2024-02-07 19:21:46'),
(12, 5, '2024-02-08 02:25:33', '0003761235', '4', '30000.00', '131000', '101000', '2024-02-07 19:25:33', '2024-02-07 19:25:33'),
(13, 5, '2024-02-08 02:39:41', '0003707789', '1', '5000.00', '10000', '5000', '2024-02-07 19:39:41', '2024-02-07 19:39:41'),
(14, 5, '2024-02-08 02:51:20', '0003707789', '1', '5000.00', '5000', '0', '2024-02-07 19:51:20', '2024-02-07 19:51:20'),
(15, 5, '2024-02-08 03:31:00', '0003761235', '4', '35000.00', '101000', '66000', '2024-02-07 20:31:00', '2024-02-07 20:31:00'),
(16, 5, '2024-02-08 03:42:51', '0003761235', '1', '10000.00', '66000', '56000', '2024-02-07 20:42:51', '2024-02-07 20:42:51'),
(17, 5, '2024-02-08 14:01:35', '0003498404', '1', '10000.00', '115000', '105000', '2024-02-08 07:01:35', '2024-02-08 07:01:35'),
(18, 5, '2024-02-08 14:34:19', '0003498404', '2', '20000.00', '105000', '85000', '2024-02-08 07:34:19', '2024-02-08 07:34:19'),
(19, 5, '2024-02-08 16:37:08', '0003498404', '2', '25000.00', '85000', '60000', '2024-02-08 09:37:08', '2024-02-08 09:37:08'),
(20, 5, '2024-02-09 10:29:06', '0003498404', '4', '35000.00', '60000', '25000', '2024-02-09 03:29:06', '2024-02-09 03:29:06'),
(21, 5, '2024-02-12 08:33:56', '0003498404', '3', '25000.00', '25000', '0', '2024-02-12 01:33:56', '2024-02-12 01:33:56'),
(22, 3, '2024-02-12 09:15:15', '0003761235', '1', '10000.00', '56000', '46000', '2024-02-12 02:15:15', '2024-02-12 02:15:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `nama_item` varchar(255) NOT NULL,
  `kuantitas` varchar(255) NOT NULL,
  `harga_per_unit` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `nama_item`, `kuantitas`, `harga_per_unit`, `created_at`, `updated_at`) VALUES
(1, '1', '\"Nasi Uduk', '1', '10000', '2024-02-06 20:04:25', '2024-02-06 20:04:25'),
(2, '2', '\"Soto Ayam Jago', '1', '15000', '2024-02-06 20:14:21', '2024-02-06 20:14:21'),
(3, '2', 'Indomie Goreng', '1', '10000', '2024-02-06 20:14:21', '2024-02-06 20:14:21'),
(4, '2', 'Es Teh Manis', '2', '5000', '2024-02-06 20:14:21', '2024-02-06 20:14:21'),
(5, '3', '\"Nasi Uduk', '1', '10000', '2024-02-06 20:52:44', '2024-02-06 20:52:44'),
(6, '3', 'Lontong Sayur', '1', '13000', '2024-02-06 20:52:44', '2024-02-06 20:52:44'),
(7, '3', 'Jus Mangga', '2', '8000', '2024-02-06 20:52:44', '2024-02-06 20:52:44'),
(8, '4', '\"Nasi Uduk', '1', '10000', '2024-02-06 22:10:08', '2024-02-06 22:10:08'),
(9, '4', 'Lontong Sayur', '1', '13000', '2024-02-06 22:10:08', '2024-02-06 22:10:08'),
(10, '4', 'Jus Mangga', '2', '8000', '2024-02-06 22:10:08', '2024-02-06 22:10:08'),
(11, '5', '\"Nasi Uduk', '1', '10000', '2024-02-06 22:37:43', '2024-02-06 22:37:43'),
(12, '5', 'Lontong Sayur', '1', '13000', '2024-02-06 22:37:43', '2024-02-06 22:37:43'),
(13, '5', 'Gado-Gado bumbu kacang', '1', '15000', '2024-02-06 22:37:43', '2024-02-06 22:37:43'),
(14, '5', 'Jus Mangga', '1', '8000', '2024-02-06 22:37:43', '2024-02-06 22:37:43'),
(15, '5', 'Es Teh Manis', '1', '5000', '2024-02-06 22:37:43', '2024-02-06 22:37:43'),
(16, '6', '\"Nasi Uduk', '1', '10000', '2024-02-07 00:43:05', '2024-02-07 00:43:05'),
(17, '6', 'Lontong Sayur', '1', '13000', '2024-02-07 00:43:05', '2024-02-07 00:43:05'),
(18, '6', 'Gado-Gado bumbu kacang', '1', '15000', '2024-02-07 00:43:05', '2024-02-07 00:43:05'),
(19, '7', '\"Nasi Uduk', '1', '10000', '2024-02-07 01:50:38', '2024-02-07 01:50:38'),
(20, '7', 'Lontong Sayur', '1', '13000', '2024-02-07 01:50:39', '2024-02-07 01:50:39'),
(21, '7', 'Gado-Gado bumbu kacang', '1', '15000', '2024-02-07 01:50:39', '2024-02-07 01:50:39'),
(22, '8', '\"Nasi Uduk', '1', '10000', '2024-02-07 01:53:06', '2024-02-07 01:53:06'),
(23, '8', 'Lontong Sayur', '1', '13000', '2024-02-07 01:53:06', '2024-02-07 01:53:06'),
(24, '8', 'Indomie Goreng', '1', '10000', '2024-02-07 01:53:06', '2024-02-07 01:53:06'),
(25, '8', 'Gado-Gado bumbu kacang', '1', '15000', '2024-02-07 01:53:06', '2024-02-07 01:53:06'),
(26, '9', '\"Lontong Sayur', '1', '13000', '2024-02-07 02:14:02', '2024-02-07 02:14:02'),
(27, '9', 'Gado-Gado bumbu kacang', '1', '15000', '2024-02-07 02:14:02', '2024-02-07 02:14:02'),
(28, '10', '\"Soto Ayam Jago', '1', '15000', '2024-02-07 02:15:17', '2024-02-07 02:15:17'),
(29, '10', 'Indomie Goreng', '2', '10000', '2024-02-07 02:15:17', '2024-02-07 02:15:17'),
(30, '10', 'Kopi Hitam', '3', '5000', '2024-02-07 02:15:17', '2024-02-07 02:15:17'),
(31, '10', 'Chitoss', '3', '8000', '2024-02-07 02:15:17', '2024-02-07 02:15:17'),
(32, '11', '\"Nasi Goreng', '1', '10000', '2024-02-07 19:21:46', '2024-02-07 19:21:46'),
(33, '11', 'Soto Ayam Jago', '1', '15000', '2024-02-07 19:21:46', '2024-02-07 19:21:46'),
(34, '11', 'Indomie Goreng', '1', '10000', '2024-02-07 19:21:46', '2024-02-07 19:21:46'),
(35, '12', '\"Nasi Goreng', '1', '10000', '2024-02-07 19:25:33', '2024-02-07 19:25:33'),
(36, '12', 'Indomie Goreng', '1', '10000', '2024-02-07 19:25:33', '2024-02-07 19:25:33'),
(37, '12', 'Es Teh Manis', '2', '5000', '2024-02-07 19:25:33', '2024-02-07 19:25:33'),
(38, '13', '\"Es Teh Manis', '1', '5000', '2024-02-07 19:39:41', '2024-02-07 19:39:41'),
(39, '14', '\"Es Teh Manis', '1', '5000', '2024-02-07 19:51:20', '2024-02-07 19:51:20'),
(40, '15', '\"Nasi Goreng', '1', '10000', '2024-02-07 20:31:00', '2024-02-07 20:31:00'),
(41, '15', 'Soto Ayam Jago', '1', '15000', '2024-02-07 20:31:00', '2024-02-07 20:31:00'),
(42, '15', 'Es Teh Manis', '2', '5000', '2024-02-07 20:31:00', '2024-02-07 20:31:00'),
(43, '16', '\"Nasi Goreng', '1', '10000', '2024-02-07 20:42:51', '2024-02-07 20:42:51'),
(44, '17', '\"Indomie Goreng', '1', '10000', '2024-02-08 07:01:35', '2024-02-08 07:01:35'),
(45, '18', '\"Nasi Goreng', '1', '10000', '2024-02-08 07:34:19', '2024-02-08 07:34:19'),
(46, '18', 'Indomie Goreng', '1', '10000', '2024-02-08 07:34:19', '2024-02-08 07:34:19'),
(47, '19', '\"Nasi Goreng', '1', '10000', '2024-02-08 09:37:08', '2024-02-08 09:37:08'),
(48, '19', 'Soto Ayam Jago', '1', '15000', '2024-02-08 09:37:08', '2024-02-08 09:37:08'),
(49, '20', '\"Nasi Goreng', '1', '10000', '2024-02-09 03:29:06', '2024-02-09 03:29:06'),
(50, '20', 'Soto Ayam Jago', '1', '15000', '2024-02-09 03:29:06', '2024-02-09 03:29:06'),
(51, '20', 'Es Teh Manis', '2', '5000', '2024-02-09 03:29:06', '2024-02-09 03:29:06'),
(52, '21', '\"Nasi Goreng', '1', '10000', '2024-02-12 01:33:56', '2024-02-12 01:33:56'),
(53, '21', 'Indomie Goreng', '1', '10000', '2024-02-12 01:33:56', '2024-02-12 01:33:56'),
(54, '21', 'Es Teh Manis', '1', '5000', '2024-02-12 01:33:56', '2024-02-12 01:33:56'),
(55, '22', '\"Nasi Uduk', '1', '10000', '2024-02-12 02:15:15', '2024-02-12 02:15:15');

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
(1, '0003498404', '195000', '2024-02-06 06:20:40', '2024-02-12 02:20:20'),
(2, '0003761235', '46000', '2024-02-06 19:34:34', '2024-02-12 02:15:15'),
(5, '0003707789', '0', '2024-02-06 22:08:07', '2024-02-08 09:29:47'),
(6, '0003761255', '10000', '2024-02-07 01:48:16', '2024-02-12 02:15:15'),
(7, '0003707779', '235000', '2024-02-07 02:07:49', '2024-02-12 01:33:56');

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `snacks`
--

CREATE TABLE `snacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kantin_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `likes` int(255) DEFAULT 1,
  `image` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `snacks`
--

INSERT INTO `snacks` (`id`, `kantin_id`, `name`, `price`, `description`, `likes`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'Chitoss', '8000', 'Shitos kripik kentang', NULL, 'public/snack_images/APJDYE1f7G2JF4aaQE8koohB7MlqiEibeMAH3DTH.png', 'ready', '2024-02-06 06:18:02', '2024-02-06 15:31:12'),
(2, 3, 'Citato 250 gr', '8000', 'Citato Kripik kentang', NULL, 'public/snack_images/bgkrXja87MlNwIpUwG71zJ8qiw8E1SwXyfytw5KA.jpg', 'ready', '2024-02-06 19:33:06', '2024-02-06 19:33:06'),
(3, 3, 'Beng Beng', '5000', 'Beng beng biskuit', NULL, 'public/snack_images/qi6AF9Id7ZCnapFBVAmh0gbs1EWodfBxOwLr08xu.jpg', 'ready', '2024-02-06 19:33:44', '2024-02-06 19:33:44'),
(4, 3, 'Taqro', '5000', 'Ciki Taro', NULL, 'public/snack_images/I1CwTkXzQsWrUJWhNCi9tdIEBbH7w4a4JHixe77L.jpg', 'ready', '2024-02-06 22:30:38', '2024-02-06 22:30:38'),
(5, 3, 'Reachese Nabatyi', '5000', 'Rexhese Nabati', NULL, 'public/snack_images/SWOK7Tt4mKtJdZ5dttGmQih6p0IMlH1QpXzsfxIR.jpg', 'ready', '2024-02-06 22:31:16', '2024-02-06 22:31:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `topups`
--

CREATE TABLE `topups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `rfid` varchar(255) NOT NULL,
  `debet` varchar(255) NOT NULL,
  `kredit` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `topups`
--

INSERT INTO `topups` (`id`, `tanggal`, `rfid`, `debet`, `kredit`, `payment`, `created_at`, `updated_at`) VALUES
(1, '2024-02-08', '0003707789', '20000', '0', 'cash', '2024-02-08 09:26:38', '2024-02-08 09:26:38'),
(2, '2024-02-08', '0003707789', '25000', '0', 'cash', '2024-02-08 09:29:36', '2024-02-08 09:29:36'),
(3, '2024-02-08', '0003707779', '25000.00', '0', 'saldo', '2024-02-08 09:37:08', '2024-02-08 09:37:08'),
(4, '2024-02-09', '0003707779', '35000.00', '0', 'saldo', '2024-02-09 03:29:06', '2024-02-09 03:29:06'),
(5, '2024-02-12', '0003707779', '25000.00', '0', 'saldo', '2024-02-12 01:33:56', '2024-02-12 01:33:56'),
(6, '2024-02-12', '0003761255', '10000.00', '0', 'saldo', '2024-02-12 02:15:15', '2024-02-12 02:15:15'),
(7, '2024-02-12', '0003498404', '195000', '0', 'cash', '2024-02-12 02:20:20', '2024-02-12 02:20:20');

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
(1, 'Administartor', '0003761245', '082612364589', '', 'admin', 'admin@gmail.com', NULL, '$2y$12$0l41qlWplHyQm1YwENnteuzZErMZbcKYee9CtVc6eYqtKpyh6itA.', NULL, NULL, NULL),
(2, 'munti parsi holan', '0003498404', '082266863898', NULL, 'pengguna', NULL, NULL, '$2y$12$b43nnRTljkXffskpe.IOxuf9cP4mQ9ypUIQjeZu3uJYslwdHAYFWe', NULL, '2024-02-06 06:08:46', '2024-02-12 02:38:01'),
(3, 'Kedai Upin Ipin', '0003761255', '08213125425', NULL, 'pengelola', NULL, NULL, '$2y$12$r7kFtOhka9oe.Kb85xz7zOtw2yooNxzuIk6cjss4nPBrS/slLfNcy', NULL, '2024-02-06 06:09:26', '2024-02-06 06:09:26'),
(4, 'Haedar', '0003761235', '082316525554', NULL, 'pengguna', NULL, NULL, '$2y$12$GpY0u0NzdnKZF7Y0.XdRfeYJ/HxSrE2JHOG0osMG/6DX5qxiaiPeG', NULL, '2024-02-06 06:10:02', '2024-02-12 02:48:15'),
(5, 'Kedai Uncle Muthu', '0003707779', '085625962325', NULL, 'pengelola', NULL, NULL, '$2y$12$l9B/e/lzzHHl4TcfvV4uoO1CQjfw6.iH4FfinBi.s1zQbT3bMbqqq', NULL, '2024-02-06 06:10:31', '2024-02-06 06:10:31'),
(6, 'Udin', '0003707789', '0821652255', NULL, 'pengguna', NULL, NULL, '$2y$12$iax/hGz4sRO13GDxnAbWPeJyBAK7P8GmRhprUo./Jv0idU3z77Zm6', NULL, '2024-02-06 20:18:55', '2024-02-06 20:18:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wds`
--

CREATE TABLE `wds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `rfid` varchar(255) NOT NULL,
  `debet` varchar(255) NOT NULL,
  `kredit` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wds`
--

INSERT INTO `wds` (`id`, `tanggal`, `rfid`, `debet`, `kredit`, `payment`, `created_at`, `updated_at`) VALUES
(1, '2024-02-08', '0003707789', '25000', '0', 'cash', '2024-02-08 09:29:47', '2024-02-08 09:29:47'),
(2, '2024-02-08', '0003498404', '0', '25000.00', 'saldo', '2024-02-08 09:37:08', '2024-02-08 09:37:08'),
(3, '2024-02-09', '0003498404', '0', '35000.00', 'saldo', '2024-02-09 03:29:06', '2024-02-09 03:29:06'),
(4, '2024-02-12', '0003498404', '0', '25000.00', 'saldo', '2024-02-12 01:33:56', '2024-02-12 01:33:56'),
(5, '2024-02-12', '0003761235', '0', '10000.00', 'saldo', '2024-02-12 02:15:15', '2024-02-12 02:15:15');

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
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
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
-- Indeks untuk tabel `topups`
--
ALTER TABLE `topups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `wds`
--
ALTER TABLE `wds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `food`
--
ALTER TABLE `food`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `saldos`
--
ALTER TABLE `saldos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `sekolahs`
--
ALTER TABLE `sekolahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `snacks`
--
ALTER TABLE `snacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `topups`
--
ALTER TABLE `topups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `wds`
--
ALTER TABLE `wds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
