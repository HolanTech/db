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
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id` char(36) NOT NULL,
  `siswa_id` char(36) NOT NULL,
  `jadwal_id` char(36) NOT NULL,
  `status` enum('hadir','sakit','ijin','alpha','terlambat') NOT NULL,
  `date` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`id`, `siswa_id`, `jadwal_id`, `status`, `date`, `created_at`, `updated_at`) VALUES
('014c14c6-38c5-4f3d-83fe-d3859d75313a', '46848784-ed38-4bf1-b0a1-97b0702f6aa6', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-13 10:16:55', '2023-10-13 10:16:55', '2023-10-13 10:16:55'),
('04f77100-c49e-4629-ac53-6f69edf50e76', 'd0ca5817-b7e0-48e3-9c32-8dfdd668ddd0', 'b0b73359-caf3-4fdc-a071-a4ef969ee4ab', 'hadir', '2023-10-19 11:04:42', '2023-10-19 11:04:42', '2023-10-19 11:04:42'),
('054ecd3d-1058-4a9d-a494-75130fe59bed', '3c1c2a0d-f444-4ce8-941e-9f7f723375dd', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-13 10:16:55', '2023-10-13 10:16:55', '2023-10-13 10:16:55'),
('23558058-60a1-4a89-99bb-0c371cd703cb', 'd5b5ac88-f3c6-4426-871e-366c446104ad', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-13 10:16:55', '2023-10-13 10:16:55', '2023-10-13 10:16:55'),
('3bbfa88a-8856-4616-8c2f-1d281a2ab541', 'e3edecd7-7cd8-4d9f-b8d0-42869e496460', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-13 10:16:55', '2023-10-13 10:16:55', '2023-10-13 10:16:55'),
('42da59ff-6605-49fc-ae09-efd2a58dd8ff', 'd6a9ab21-0230-4624-ab6d-705ce0c09d8f', 'b0b73359-caf3-4fdc-a071-a4ef969ee4ab', 'hadir', '2023-10-19 11:04:42', '2023-10-19 11:04:42', '2023-10-19 11:04:42'),
('43110e28-1d95-4f62-9c61-c8294d5e7e21', '3050fc36-de18-4f52-98d0-5f4a8a5338bf', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-13 10:16:55', '2023-10-13 10:16:55', '2023-10-13 10:16:55'),
('437ea18f-871d-4604-9d59-532820876ae1', 'e3edecd7-7cd8-4d9f-b8d0-42869e496460', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-19 11:01:35', '2023-10-19 11:01:35', '2023-10-19 11:01:35'),
('4f5407bb-33bf-4f53-a2c0-f206e0d1734e', '24b527cd-c782-478c-9505-747396b093e6', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-13 10:16:55', '2023-10-13 10:16:55', '2023-10-13 10:16:55'),
('60015092-3f8c-4b31-ab81-6804350588f4', 'eaf663db-d2c8-403e-97d3-b30995b0cdf0', 'b0b73359-caf3-4fdc-a071-a4ef969ee4ab', 'hadir', '2023-10-19 11:04:42', '2023-10-19 11:04:42', '2023-10-19 11:04:42'),
('87c6ff4b-4417-4dc0-bf7b-5c7653673b54', '8f5e9ddb-3564-422b-895e-0caa5e958c91', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-13 10:16:55', '2023-10-13 10:16:55', '2023-10-13 10:16:55'),
('8d5bed46-30aa-4cd4-a973-8a2ea65fd38e', '24b527cd-c782-478c-9505-747396b093e6', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'ijin', '2023-10-19 11:01:35', '2023-10-19 11:01:35', '2023-10-19 11:01:35'),
('9a31f496-8f0f-476a-b773-787f073d84e4', 'a9d2e841-6482-4dc8-976d-f97d2b69730d', 'b0b73359-caf3-4fdc-a071-a4ef969ee4ab', 'hadir', '2023-10-19 11:04:42', '2023-10-19 11:04:42', '2023-10-19 11:04:42'),
('9a3d802c-cc26-4c1e-9a3f-d6320837aae9', '546089ce-da52-4375-abde-549aa1455292', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'alpha', '2023-10-19 11:01:35', '2023-10-19 11:01:35', '2023-10-19 11:01:35'),
('a105d908-9b7c-4bf1-8466-e972cee034bb', 'd5b5ac88-f3c6-4426-871e-366c446104ad', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'terlambat', '2023-10-19 11:01:35', '2023-10-19 11:01:35', '2023-10-19 11:01:35'),
('a3f314bb-9487-4ec3-be73-392b19b66b51', '823255e3-fb1e-4d7b-9c28-fd67a030259a', 'b0b73359-caf3-4fdc-a071-a4ef969ee4ab', 'hadir', '2023-10-19 11:04:42', '2023-10-19 11:04:42', '2023-10-19 11:04:42'),
('a6f161a6-7d95-41f7-9a02-b5d1e588927d', '3050fc36-de18-4f52-98d0-5f4a8a5338bf', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-19 11:01:35', '2023-10-19 11:01:35', '2023-10-19 11:01:35'),
('b4a55e44-950d-4c6e-ac5d-d6ee47db4510', '546089ce-da52-4375-abde-549aa1455292', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-13 10:16:55', '2023-10-13 10:16:55', '2023-10-13 10:16:55'),
('c9ba3cd9-70b8-4f79-9007-3ac34e84e7fd', '69f19a54-3447-4673-92e5-15c91491d41d', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-13 10:16:55', '2023-10-13 10:16:55', '2023-10-13 10:16:55'),
('da6b32b8-26b2-4581-95b6-83b0f48e8f4d', '8f5e9ddb-3564-422b-895e-0caa5e958c91', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-19 11:01:35', '2023-10-19 11:01:35', '2023-10-19 11:01:35'),
('db5fd662-7c5f-4470-83d9-6d85e99a9607', '69f19a54-3447-4673-92e5-15c91491d41d', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-19 11:01:35', '2023-10-19 11:01:35', '2023-10-19 11:01:35'),
('dd6f6e80-4b3f-4d84-87e0-73c6c1cc886f', '46848784-ed38-4bf1-b0a1-97b0702f6aa6', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-19 11:01:35', '2023-10-19 11:01:35', '2023-10-19 11:01:35'),
('ff106f04-4660-48ad-aab3-e9c9eea8bb24', '3c1c2a0d-f444-4ce8-941e-9f7f723375dd', '5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'hadir', '2023-10-19 11:01:35', '2023-10-19 11:01:35', '2023-10-19 11:01:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen_pegawais`
--

CREATE TABLE `absen_pegawais` (
  `id` char(36) NOT NULL,
  `pegawai_id` char(36) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `waktu_masuk` time DEFAULT NULL,
  `waktu_pulang` time DEFAULT NULL,
  `foto_masuk` varchar(255) DEFAULT NULL,
  `foto_pulang` varchar(255) DEFAULT NULL,
  `lokasi_masuk` varchar(255) DEFAULT NULL,
  `lokasi_pulang` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `absen_pegawais`
--

INSERT INTO `absen_pegawais` (`id`, `pegawai_id`, `user_id`, `nama`, `tanggal`, `waktu_masuk`, `waktu_pulang`, `foto_masuk`, `foto_pulang`, `lokasi_masuk`, `lokasi_pulang`, `created_at`, `updated_at`) VALUES
('0e60953d-6150-4d5f-9ecb-39cc9bc117fb', '78a1945d-9274-411d-8e48-53c0f987b255', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', 'FIRDA HERMINIA FUTRIYANTI, SE', '2023-10-12', '15:43:32', NULL, 'FIRDA HERMINIA FUTRIYANTI, SE-2023-10-12-154332.png', NULL, '-6.4043929,106.8699918', NULL, '2023-10-12 15:43:32', '2023-10-12 15:43:32'),
('89395763-8df3-4955-9795-fee92baceebc', NULL, '441c5712-b51e-459f-9b13-4f58a95f4c75', 'Kepala Yayasan', '2023-12-05', '16:32:39', NULL, 'Kepala Yayasan-2023-12-05-163239.png', NULL, '-6.4043973,106.8700109', NULL, '2023-12-05 09:32:39', '2023-12-05 09:32:39'),
('a7f31a92-9b3c-4b05-9083-92a46486e6b7', 'a37920d3-59d1-4523-8177-e42ad0dd5d3e', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', 'HELMI INDRA BUDIMAN, S.Pd', '2023-10-12', '15:43:59', NULL, 'HELMI INDRA BUDIMAN, S.Pd-2023-10-12-154359.png', NULL, '-6.4043929,106.8699918', NULL, '2023-10-12 15:43:59', '2023-10-12 15:43:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen_siswas`
--

CREATE TABLE `absen_siswas` (
  `id` char(36) NOT NULL,
  `siswa_id` char(36) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `waktu_masuk` time DEFAULT NULL,
  `waktu_pulang` time DEFAULT NULL,
  `foto_masuk` varchar(255) DEFAULT NULL,
  `foto_pulang` varchar(255) DEFAULT NULL,
  `lokasi_masuk` varchar(255) DEFAULT NULL,
  `lokasi_pulang` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `id` char(36) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_number` char(14) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
('03ddae4a-ac83-4957-a281-4ff250750150', 'Bob Johnson', 'bobjohnson@example.com', '5551234567', '789 Oak Drive', '2023-09-21 06:52:23', '2023-09-21 06:52:23'),
('69c03ffd-d4a3-485e-9a44-416b4f70d62f', 'Raden Adjeng Kartini', 'kartini@gmail.com', '0821826512', 'jl ,merdeka raya jakarta', '2023-09-21 06:50:38', '2023-09-21 06:50:38'),
('7e4cc5d7-2698-4cfe-a5d3-9becb2508468', 'Jane Smith', 'janesmith@example.com', '9876543210', '456 Elm Avenue', '2023-09-21 06:51:23', '2023-09-21 06:51:23'),
('f5168574-4547-460a-b208-a7694c10be3d', 'Pramoedya Ananta Toer', 'pramoedya@gmail.com', '0821385215', 'jl.bayrangkara', '2023-09-21 06:53:34', '2023-09-21 06:53:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banks`
--

CREATE TABLE `banks` (
  `id` char(36) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `norek` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `baranginventories`
--

CREATE TABLE `baranginventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barcode` text DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `nomor_inventaris` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `kondisi` enum('baru','bekas','rusak','perbaikan') NOT NULL,
  `tanggal_akuisisi` date NOT NULL,
  `harga_awal` decimal(10,2) NOT NULL,
  `harga_terbaru` decimal(10,2) NOT NULL,
  `lokasi_barang` varchar(255) NOT NULL,
  `spesifikasi` varchar(255) NOT NULL,
  `tanggal_pembaruan` date NOT NULL,
  `catatan_khusus` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `sumber` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `baranginventories`
--

INSERT INTO `baranginventories` (`id`, `barcode`, `name`, `kategori`, `nomor_inventaris`, `jumlah`, `kondisi`, `tanggal_akuisisi`, `harga_awal`, `harga_terbaru`, `lokasi_barang`, `spesifikasi`, `tanggal_pembaruan`, `catatan_khusus`, `file`, `sumber`, `created_at`, `updated_at`) VALUES
(31, NULL, 'komputer', 'Elektronik', 'INV-10656D5206353FF', 4, 'bekas', '2022-01-04', 15000000.00, 12000000.00, 'kantor', 'efgtwr', '2023-12-04', 'ok', NULL, 'beli', '2023-12-04 04:13:58', '2023-12-04 04:13:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bayars`
--

CREATE TABLE `bayars` (
  `id` char(36) NOT NULL,
  `norek` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `siswa_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` char(36) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `title` varchar(64) NOT NULL,
  `year` int(11) NOT NULL,
  `publisher_id` char(36) NOT NULL,
  `author_id` char(36) NOT NULL,
  `catalog_id` char(36) NOT NULL,
  `qty` int(11) NOT NULL,
  `lemari` varchar(255) DEFAULT NULL,
  `rak` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `isbn`, `title`, `year`, `publisher_id`, `author_id`, `catalog_id`, `qty`, `lemari`, `rak`, `price`, `created_at`, `updated_at`) VALUES
('3c8b88f7-57f6-469b-a17f-7e7f81725030', '978-9793194339', 'Laskar Pelangi', 2005, 'c51e5c20-2ba8-41b7-b51a-1eac3b3a28c3', '69c03ffd-d4a3-485e-9a44-416b4f70d62f', '4ac37842-46a9-4ce1-b906-6c7f81a2ec65', 3, '1', 1, 50000, '2023-09-21 07:03:44', '2023-09-26 09:37:00'),
('6dbc97b1-9d4d-49e2-b9e6-dbd33e9e375a', '9780439554', 'Harry Potter and the Sorcerer\'s Stone', 2012, '8445af6c-ba76-4137-92a0-9230a9bf49d8', '7e4cc5d7-2698-4cfe-a5d3-9becb2508468', '4ac37842-46a9-4ce1-b906-6c7f81a2ec65', 10, '5', 2, 50000, '2023-09-21 07:00:55', '2023-10-13 13:48:09'),
('8cfaa3a0-0a20-4a7f-b5b6-f6ad22e835b7', '9780061120084', 'To Kill a Mockingbird', 2000, '8445af6c-ba76-4137-92a0-9230a9bf49d8', 'f5168574-4547-460a-b208-a7694c10be3d', 'c4e1b956-7b43-4690-b2cf-8c96c58435d5', 15, '3', 1, 100000, '2023-09-21 07:02:10', '2023-09-26 09:37:03'),
('941d7028-b7e4-4972-ae0e-b87d93281e9b', '978-9792908553', 'Ayat-Ayat Cinta', 2010, '8445af6c-ba76-4137-92a0-9230a9bf49d8', '7e4cc5d7-2698-4cfe-a5d3-9becb2508468', 'c4e1b956-7b43-4690-b2cf-8c96c58435d5', 20, '6', 3, 45000, '2023-09-21 07:04:42', '2023-10-13 13:48:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cash_books`
--

CREATE TABLE `cash_books` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `pos` char(40) DEFAULT NULL,
  `registration_cost_id` char(36) DEFAULT NULL,
  `spp_id` char(36) DEFAULT NULL,
  `pemasukan_id` char(40) DEFAULT NULL,
  `pengeluaran_id` char(50) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cash_yayasans`
--

CREATE TABLE `cash_yayasans` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `pos` varchar(50) DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `pemasukan_id` char(36) DEFAULT NULL,
  `setoran_id` char(36) DEFAULT NULL,
  `pengajuan_id` char(36) DEFAULT NULL,
  `spp_id` char(36) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `catalogs`
--

CREATE TABLE `catalogs` (
  `id` char(36) NOT NULL,
  `name` varchar(64) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `created_at`, `updated_at`) VALUES
('1fea3727-f81b-4469-995b-bf03d35e59c5', 'Biografi', '2023-09-21 06:48:07', '2023-09-21 06:48:07'),
('4ac37842-46a9-4ce1-b906-6c7f81a2ec65', 'Fiksi', '2023-09-21 06:47:48', '2023-09-21 06:47:48'),
('c4e1b956-7b43-4690-b2cf-8c96c58435d5', 'Ensiklopedia', '2023-09-21 06:47:59', '2023-09-21 06:47:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cost1s`
--

CREATE TABLE `cost1s` (
  `id` char(36) NOT NULL,
  `pos` varchar(50) DEFAULT NULL,
  `debet` varchar(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cost1s`
--

INSERT INTO `cost1s` (`id`, `pos`, `debet`, `created_at`, `updated_at`, `deleted_at`) VALUES
('34909d83-d964-4139-910c-56083ec59fc1', 'UAS', '50000', '2023-09-14 08:11:21', '2023-09-14 08:11:21', NULL),
('3e06a2d7-7ce5-41b8-9be3-91d7c5ad5938', 'Pendaftaran', '100000', '2023-09-14 08:16:33', '2023-09-14 08:16:33', NULL),
('56e7e9f7-109d-4567-ae5d-b237b2763f9d', 'SERAGAM', '800000', '2023-09-14 08:09:43', '2023-09-14 08:09:43', NULL),
('5971d0b9-d1c3-4a86-acb7-58809edecb94', 'SPP', '175000', '2023-12-05 13:15:01', '2024-01-05 03:49:38', NULL),
('5984cf38-4eae-46a8-8aa7-ae5ff32d5664', 'LDKS', '200000', '2023-09-14 08:10:55', '2023-09-14 08:10:55', NULL),
('6e2d6dfd-da33-4580-b7a2-43e39caf9787', 'RAPORT', '75000', '2023-09-14 08:08:57', '2023-09-14 08:08:57', NULL),
('8e4a278a-3356-11ee-bfbb-c85b767819e3', 'OSIS', '100000', NULL, '2023-09-14 00:50:19', NULL),
('9a1adaf5-078e-44a6-98d6-2fc9d3521290', 'Pengembangan', '300000', '2023-09-14 08:16:08', '2023-09-14 08:16:08', NULL),
('9a59b705-fed5-4b1e-9ab2-a7a07cf53733', 'FOTO', '25000', '2023-09-14 08:14:29', '2023-09-14 08:14:29', NULL),
('ad97dd52-c852-41b9-8f5b-2fbd51fce632', 'PTS', '50000', '2023-09-14 08:10:04', '2023-09-14 08:10:04', NULL),
('bbad9d77-e24d-427e-bcd9-9529db14214d', 'PAT', '50000', '2023-09-14 08:13:42', '2023-09-14 08:13:42', NULL),
('c26d1898-41d2-4dba-a198-1ec562a87aba', 'PTS 2', '50000', '2023-09-14 08:10:26', '2023-09-14 08:10:26', NULL),
('c72b228e-1b3a-41e9-9355-090911cbf4fc', 'MPLS', '120000', '2023-09-14 08:07:47', '2023-09-14 08:07:47', NULL),
('f637d01e-9ed8-46fe-b825-f5234aa88af7', 'KENAIKAN KELAS DAN STUDY TOUR', '1300000', '2023-09-14 08:14:05', '2023-09-14 08:14:05', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cost2s`
--

CREATE TABLE `cost2s` (
  `id` char(36) NOT NULL,
  `pos` varchar(50) NOT NULL,
  `debet` varchar(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cost2s`
--

INSERT INTO `cost2s` (`id`, `pos`, `debet`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0d84df36-6584-436d-9ba7-3220a398974b', 'UAS', '50000', '2023-09-14 08:26:01', '2023-09-14 08:26:01', NULL),
('11ab1625-6bf9-45b8-b342-6ff3f645831f', 'PTS 2', '50000', '2023-09-14 08:26:14', '2023-09-14 08:26:14', NULL),
('11e79c7d-3376-11ee-bfbb-c85b767819e3', 'OSIS', '100000', NULL, '2023-09-14 01:23:14', NULL),
('209c40e0-7401-4852-947a-697412a78679', 'PAT', '50000', '2023-09-14 08:26:29', '2023-09-14 08:26:29', NULL),
('56845f9b-9eef-40dd-be7e-60d4b1eb570c', 'PRAKERIN', '350000', '2023-09-14 08:25:11', '2023-09-14 08:25:11', NULL),
('6518a22b-488d-4a28-8ad5-affa55fb02e6', 'KENAIKAN KELAS DAN STUDY TOUR', '1300000', '2023-09-14 08:26:44', '2023-09-14 08:26:44', NULL),
('71f7773a-f490-4ced-a5cc-7e1455251b06', 'UJIAN ASSESMENT', '200000', '2023-09-14 08:25:29', '2023-09-14 08:25:29', NULL),
('ac8f7491-220b-4c45-91f8-3bdf77660428', 'SPP', '250000', '2023-12-05 14:08:46', '2023-12-05 14:08:46', NULL),
('dfca6674-699a-4a89-a74d-8d047ebc9a3a', 'PTS', '50000', '2023-09-14 08:25:45', '2023-09-14 08:25:45', NULL),
('f559117e-0964-4309-887e-ae45b26cf3c0', 'Pengembangan', '200000', '2023-09-14 08:24:55', '2023-09-14 08:24:55', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cost3s`
--

CREATE TABLE `cost3s` (
  `id` char(36) NOT NULL,
  `pos` varchar(50) DEFAULT NULL,
  `debet` varchar(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cost3s`
--

INSERT INTO `cost3s` (`id`, `pos`, `debet`, `created_at`, `updated_at`, `deleted_at`) VALUES
('18229b73-3376-11ee-bfbb-c85b767819e3', 'OSIS', '100000', NULL, '2023-09-14 01:23:30', NULL),
('2f7d27d6-cf09-418a-abe1-e304957539bb', 'SPP', '300000', '2023-12-05 13:15:48', '2023-12-05 14:09:13', NULL),
('4003a82f-8cd0-44cb-bd2b-23e9ac3b6529', 'SAMPUL IJAZAH', '75000', '2023-09-14 08:19:31', '2023-09-14 08:19:31', NULL),
('49ef59a4-3a30-4116-a447-ee1130c8bc4c', 'PTS', '50000', '2023-09-14 08:18:09', '2023-09-14 08:18:09', NULL),
('50aeb652-82bf-4503-91c5-d3cc086aeee8', 'UAS', '50000', '2023-09-14 08:18:40', '2023-09-14 08:18:40', NULL),
('5e45c5c1-e94f-4783-b532-f748cbced222', 'Pengembangan', '100000', '2023-09-14 08:17:53', '2023-09-14 08:17:53', NULL),
('80c155de-0758-49ae-a615-503b52de179a', 'UJIAN SEKOLAH', '500000', '2023-09-14 08:19:12', '2023-09-14 08:19:12', NULL),
('b27dc0bc-6652-4cc5-8097-43dae825d4c9', 'UJIKOM', '300000', '2023-09-14 08:18:53', '2023-09-14 08:18:53', NULL),
('ee19e9a5-f7a1-4261-aba9-23c29a58b6e8', 'KENAIKAN KELAS DAN STUDY TOUR', '1300000', '2023-09-14 08:19:52', '2023-09-14 08:19:52', NULL),
('ee54e7d8-b003-4185-a612-f3bf5d1be87d', 'HUBIN', '200000', '2023-09-14 08:17:26', '2023-09-14 08:17:26', NULL),
('fe55fa5a-f2b9-4de8-8234-eb977fecb8d1', 'FOTO', '25000', '2023-09-14 08:18:22', '2023-09-14 08:18:22', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `costs`
--

CREATE TABLE `costs` (
  `id` char(36) NOT NULL,
  `debet` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `costs`
--

INSERT INTO `costs` (`id`, `debet`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0af30f28-1adb-4ead-b434-1214f29df466', 175000, '2023-07-25 02:06:46', '2023-07-25 02:52:20', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `donaturs`
--

CREATE TABLE `donaturs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `work` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `birth_place` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `donaturs`
--

INSERT INTO `donaturs` (`id`, `name`, `gender`, `phone`, `work`, `address`, `birth_place`, `birth_date`, `father_name`, `mother_name`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
('017fde7d-2662-4112-86f5-61320c064c6d', 'sumanto', 'Laki-laki', '082266863898', 'bossss', 'aaaaa', 'jerman', '2023-07-21', 'a', 'a', NULL, '2023-07-21 07:44:08', '2023-07-21 07:44:08', NULL),
('f23fb276-fdd9-4ced-93c6-f58b8ffd320c', 'bobi nasution', 'Laki-laki', '2435352', 'pengusaha', 'jl pengusaha', 'sumatra utara', '1989-01-31', 'nasution', 'siregar', 'donatur-1690384815.PNG', '2023-07-26 15:20:15', '2023-07-26 15:20:15', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ebooks`
--

CREATE TABLE `ebooks` (
  `id` char(36) NOT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `year` int(11) NOT NULL,
  `publisher_id` char(36) NOT NULL,
  `author_id` char(36) NOT NULL,
  `catalog_id` char(36) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `ebook` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ebooks`
--

INSERT INTO `ebooks` (`id`, `isbn`, `title`, `year`, `publisher_id`, `author_id`, `catalog_id`, `cover`, `ebook`, `price`, `created_at`, `updated_at`) VALUES
('2b571378-5219-4325-8f39-26f31dfc85f7', '978-979314636', 'Dasar-Dasar Desain Grafi', 2008, 'c51e5c20-2ba8-41b7-b51a-1eac3b3a28c3', 'f5168574-4547-460a-b208-a7694c10be3d', '1fea3727-f81b-4469-995b-bf03d35e59c5', 'ebook-1695280302.jpg', 'ebook-1695280302.pdf', 100000, '2023-09-21 07:11:42', '2023-09-21 07:11:42'),
('362b7719-9fd1-49f8-b8f7-4f079079f305', '978-979290855', 'Pengantar Ilmu Komputer', 2015, 'c51e5c20-2ba8-41b7-b51a-1eac3b3a28c3', '03ddae4a-ac83-4957-a281-4ff250750150', 'c4e1b956-7b43-4690-b2cf-8c96c58435d5', 'ebook-1695280233.jpg', 'ebook-1695280233.pdf', 150000, '2023-09-21 07:10:33', '2023-09-21 07:10:33'),
('e3ef1f5f-c14e-4381-8d70-517ef505de96', '978-9793194339', 'Panduan Belajar Pemrograman Python', 2020, 'c51e5c20-2ba8-41b7-b51a-1eac3b3a28c3', '69c03ffd-d4a3-485e-9a44-416b4f70d62f', 'c4e1b956-7b43-4690-b2cf-8c96c58435d5', 'ebook-1695280137.PNG', 'ebook-1695280137.pdf', 150000, '2023-09-21 07:08:57', '2023-09-21 07:08:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `exschools`
--

CREATE TABLE `exschools` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `exschool` varchar(255) NOT NULL,
  `pembina` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `exschools`
--

INSERT INTO `exschools` (`id`, `name`, `kelas`, `exschool`, `pembina`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0316d556-f72b-4f0b-b8a7-a76db47a7cd7', 'Neng Ratih', 'XI PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:06:28', '2023-08-25 09:06:28', NULL),
('05d2bdd0-01bc-4711-8b07-977eea4ce36f', 'Muhamad. Rizki', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:03:06', '2023-08-02 22:03:06', NULL),
('071b2f3a-0151-4902-963e-de74e06782d3', 'Neng Ratih', 'XI PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-12 07:50:43', '2023-08-12 07:50:43', NULL),
('0735b689-720d-406d-9635-ff8c26ba74a1', 'Sarip Hidayatulloh', 'XI PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-26 08:38:10', '2023-08-26 08:38:10', NULL),
('09121a37-acdd-4504-ba41-c895fe70a767', 'Merina', 'XII OTKP', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:02:27', '2023-08-25 09:02:27', NULL),
('0bef9a4a-2c97-4694-9745-42340fc03d3b', 'Muhamad Ilham', 'X PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:10:28', '2023-08-25 09:10:28', NULL),
('0eb329e3-f254-4f00-be0c-41ca6a625cb7', 'Muhamad Ichsan Candra Saputra', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:01:56', '2023-08-02 22:01:56', NULL),
('101b169f-c40e-4c8e-81a0-0853f841dd92', 'Ai Diniah Nur Sopiah', 'XI PERHOTELAN', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:32:01', '2023-08-10 12:32:01', NULL),
('103e102b-f9ff-4c81-8965-4d6d57dddef9', 'Misbah Anugrah', '11 PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-28 15:22:07', '2023-08-28 15:22:07', NULL),
('10cf1bea-cf24-4cdb-bc8c-b730840b75c3', 'Muhamad Yusuf', 'XII OTKP', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:19:38', '2023-08-11 08:19:38', NULL),
('12475dea-795f-4da5-a527-3b796cd146d8', 'Cindy Nurcahniaty', 'X PERHOTELAN', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:35:23', '2023-08-10 12:35:23', NULL),
('1c05b89d-ac9d-4e64-b347-7d308bcec27e', 'Alwan Nesta', 'XII PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 08:59:34', '2023-08-25 08:59:34', NULL),
('1c06d263-fca9-4399-a073-64f2cf0db238', 'Muhamad Abdul Reza', 'XI PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:23:03', '2023-08-11 08:23:03', NULL),
('23ea3d81-a6f5-48c8-85a7-2b6ad9c3eb1f', 'Nugi Oliansyah', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:04:26', '2023-08-02 22:04:26', NULL),
('2955a7cc-4d84-4678-b2c7-bcdc6add7071', 'Muhamad Andri Ali Sandi', 'XII PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:17:18', '2023-08-11 08:17:18', NULL),
('2acf185e-6a4b-4e52-9fce-33f9226ab7e7', 'Irpan', 'X PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:14:59', '2023-08-25 09:14:59', NULL),
('2b3d5203-a353-4227-9221-f5322f47955e', 'Rahkaman Herdian', 'XII PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:17:52', '2023-08-11 08:17:52', NULL),
('2fb3ac0f-94e9-46fd-97ce-4efc76a5c5e2', 'Usman', 'XI OTKP', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-12 07:50:20', '2023-08-12 07:50:20', NULL),
('33527eb7-843f-466a-8324-a48e9c87171c', 'Muhamad Ilham', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:03:45', '2023-08-02 22:03:45', NULL),
('346863ac-74c7-4dbc-9938-5471a408828b', 'Riki Saputra', 'XII OTKP', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:01:22', '2023-08-25 09:01:22', NULL),
('34ea6f02-853b-4bc2-9338-b56fe2440093', 'Dimas Maulana', 'XII PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:01:02', '2023-08-25 09:01:02', NULL),
('3984e77e-6d88-447a-b29f-7a74ac48e51d', 'Muhammad Atin', 'X PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:13:12', '2023-08-25 09:13:12', NULL),
('3a9cfa93-01ad-4873-86cf-e36e7c307cb0', 'Rama Agus Razabi', 'X PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:10:59', '2023-08-25 09:10:59', NULL),
('40b9ff77-a39b-4b1d-8008-06792e71015c', 'Muhidin', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:02:17', '2023-08-02 22:02:17', NULL),
('44143cd9-cb17-4558-9288-de1c3d21aace', 'Aditia Teguh Pradana', 'XII PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:16:08', '2023-08-11 08:16:08', NULL),
('45acf0be-bdf2-44dd-8019-db4b74f46334', 'Adrian', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 21:54:07', '2023-08-02 21:54:07', NULL),
('4896e5e8-7ac7-4f0b-8393-aa67c632f082', 'Silpi Nuraeni', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:06:24', '2023-08-02 22:06:24', NULL),
('5649a775-284a-48f4-850c-b69df7411dd8', 'Ai Rahmawati', 'XI PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:07:07', '2023-08-25 09:07:07', NULL),
('56504b60-05e7-4322-8bf0-85bc0cc97ede', 'Dimas Maulana', 'XII PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:18:07', '2023-08-11 08:18:07', NULL),
('56aeb4cb-8b89-43e9-b3c8-caaa12bf482b', 'Muhamad Andri Ali Sandi', 'XII PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:02:47', '2023-08-25 09:02:47', NULL),
('582fd7a5-38fa-4469-8a05-c03f6912c9fb', 'Junaidi Ragil Dewa Pratama', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:00:41', '2023-08-02 22:00:41', NULL),
('59aa76fd-01b5-44b4-b82c-aab91aa20944', 'Aditya Sauqi Sabililah', 'XII PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 08:45:17', '2023-08-25 08:45:17', NULL),
('5a623b11-6743-42c8-a27c-42a673b9a33b', 'Misbah Anugrah', 'XI PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:09:10', '2023-08-28 15:21:42', '2023-08-28 15:21:42'),
('5fa5a861-4921-445e-a13b-7f5df5e67d26', 'Rama Agus Razabi', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:04:48', '2023-08-02 22:04:48', NULL),
('63435105-aec4-4f57-8590-8d939f994ee5', 'Sarah', 'X OTKP', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:05:41', '2023-08-02 22:05:41', NULL),
('68b4c56d-20ff-41ca-8d58-6bc3bfe746b4', 'Fitri Anggita', 'XII OTKP', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:01:55', '2023-08-25 09:01:55', NULL),
('699ab992-e02a-4b99-abd2-792bf9231d3f', 'R. M. Ikbal Al Sabil', 'X PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:23:31', '2023-08-11 08:23:31', NULL),
('6c7bdffc-e9b5-4cbd-8858-3750c1bad279', 'Aditia', 'X PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:23:45', '2023-08-11 08:23:45', NULL),
('6f3c451d-f3e6-4f72-9453-e6dc9e33b833', 'Aliza Nurul Mutia', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 21:56:45', '2023-08-02 21:56:45', NULL),
('6f5982eb-2ac3-4f86-a404-d3cfcc131d43', 'Sindi', 'XI PERHOTELAN', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:32:47', '2023-08-10 12:32:47', NULL),
('6f7b49f9-e388-4dad-b1a5-bc4bb534d053', 'Adiansyah Saputra', 'XI PERHOTELAN', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:34:13', '2023-08-10 12:34:13', NULL),
('7314b88c-bfdc-4004-8cbe-ebe6de5ca1b5', 'Merina', 'XII OTKP', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:30:43', '2023-08-10 12:30:43', NULL),
('743fe529-8ea5-4d4a-be72-2e1e2494a1d8', 'Muhamad Renaldi', 'XII OTKP', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:21:43', '2023-08-11 08:21:43', NULL),
('763576e8-0076-4991-b2ab-4d906e828fe5', 'Irpan', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 21:59:58', '2023-08-02 21:59:58', NULL),
('799b43fb-5e08-4a06-83cb-348ecfd4c8e4', 'Rico Harianto', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:05:24', '2023-08-02 22:05:24', NULL),
('7efa3488-88eb-4405-bf91-9fa84b5bbda5', 'Ela Rahmawati', '11 PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-28 15:20:47', '2023-08-28 15:20:47', NULL),
('7fb5225e-e1ed-4346-8167-d522b83d433f', 'Asih', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 21:56:23', '2023-08-02 21:56:23', NULL),
('80467c1e-18d0-48d9-a83d-a7096cb654a3', 'Muhammad Saidil Adha', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:02:43', '2023-08-02 22:02:43', NULL),
('81655085-f98b-420d-a780-0d05215cda9b', 'Sari', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:06:06', '2023-08-02 22:06:06', NULL),
('82616936-ee88-4637-8345-5a7c30d8c87b', 'Muhamad Badri Tamami', 'XII PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:18:28', '2023-08-11 08:18:28', NULL),
('839e5cc7-75ef-40dd-8b44-b9d07b4f69db', 'R. M. Ikbal Al Sabil', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:05:07', '2023-08-02 22:05:07', NULL),
('864128fa-3c37-423d-9f5a-2256123bbc5e', 'Agus Muhammad Dalfa', 'X PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:47:53', '2023-08-11 08:47:53', NULL),
('871d3ce4-701f-4115-9938-951234d25c67', 'Selia Anata', 'XI PERHOTELAN', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:31:11', '2023-08-10 12:31:11', NULL),
('875f0c91-1fe4-4fea-b907-7f62848e4e96', 'Muhamad Hamdani', 'XII PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:22:19', '2023-08-11 08:22:19', NULL),
('88f84b10-fdae-4949-8634-bef794d73d02', 'Misbah Anugrah', '11 PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-28 15:20:30', '2023-08-28 15:20:30', NULL),
('8ce6a85b-15a3-44c0-94a0-771a7cb7950a', 'Muhamad Anggi', 'XII PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 08:58:52', '2023-08-25 08:58:52', NULL),
('8eb4c4c6-974f-4fd6-b5b6-19429eac9341', 'Muhidin', 'X PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:12:52', '2023-08-25 09:12:52', NULL),
('9672a925-d2f0-4202-aafa-fed0fa25fdaf', 'Ihsan', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:00:20', '2023-08-02 22:00:20', NULL),
('96c8bd5c-a849-42bf-8b9c-2fc6eb61176a', 'Siti Romadonnia', 'XI PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:05:11', '2023-08-25 09:05:11', NULL),
('98f1b0f8-18f6-495c-a9ee-4f834e95e030', 'Nia Unia', 'X PERHOTELAN', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:35:04', '2023-08-10 12:35:04', NULL),
('9a7e5bb9-d294-4463-8a3f-9a3edc1c8d4d', 'Nia', 'XI PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:05:59', '2023-08-25 09:05:59', NULL),
('9cd06504-b490-4101-8f84-89244df071e3', 'Muhamad Luayyudin', 'XII PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:21:13', '2023-08-11 08:21:13', NULL),
('9cff5eb8-f880-478d-aec4-6340a19644d9', 'Muhamad. Rizki', 'X PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:24:05', '2023-08-11 08:24:05', NULL),
('9f441bdc-bd65-49ea-8f0d-1e2c5226ac8e', 'Cikal Zul Karnain', 'X PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:15:18', '2023-08-25 09:15:18', NULL),
('a148bb4f-a916-48e0-9792-c8d7708a339a', 'Sherly Lestiani', 'XI PERHOTELAN', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:33:36', '2023-08-10 12:33:36', NULL),
('a55a2588-a805-4983-ae65-ca81a754ae52', 'Muhamad Rehan', 'XI OTKP', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:08:56', '2023-08-25 09:08:56', NULL),
('a5cd79d2-91fc-4ce3-844b-cf8f5f7999d0', 'Muhammad Fikri Afriansyah', 'X OTKP', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:01:25', '2023-08-02 22:01:25', NULL),
('a75f5864-a317-48c1-92c5-53b9b4f7c8cb', 'Ela Rahmawati', 'XI PERHOTELAN', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:33:08', '2023-08-10 12:33:08', NULL),
('a832c75e-7e9e-46ff-86b2-70a7ad6237fb', 'Hilda Fitriyani', 'XII PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:03:17', '2023-08-25 09:03:17', NULL),
('a9ec858a-267c-48bf-9210-466af5c84326', 'Muhammad Atin', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:01:01', '2023-08-02 22:01:01', NULL),
('ace2a9cb-7e31-4360-8a83-1ca432a27817', 'Mustopa', 'XII PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:22:00', '2023-08-11 08:22:00', NULL),
('ad2e00dc-9d29-43aa-87b3-52d178e540a4', 'Cikal Zul Karnain', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 21:57:11', '2023-08-02 21:57:11', NULL),
('ae0edfb6-2228-44a9-aad8-543cba0ec366', 'Agus Muhammad Dalfa', 'X PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:14:39', '2023-08-25 09:14:39', NULL),
('b05cee24-bbad-411d-8504-ff8bdb115fcc', 'Neng Ratih', 'XI PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-12 07:50:43', '2023-08-12 07:51:32', '2023-08-12 07:51:32'),
('b067fac4-fd15-476a-90b3-0ed5336fbba2', 'Riki Saputra', 'XII OTKP', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:19:54', '2023-08-11 08:19:54', NULL),
('b1f213d2-71a1-4b0e-911b-36ba6b43186e', 'Agus Muhammad Dalfa', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 21:55:39', '2023-08-02 21:55:39', NULL),
('bc38dfef-6726-4d41-8188-ed13eced08b9', 'Muhamad Riski', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:03:26', '2023-08-02 22:03:26', NULL),
('bda0eddb-97cb-4737-8ced-7b49a6eae51a', 'Muhamad Revaldi', 'XII OTKP', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:21:29', '2023-08-11 08:21:29', NULL),
('be0bbaf3-4302-4d49-b206-a1594cbb9d72', 'Muhamad Aripin', 'XII PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 08:59:56', '2023-08-25 08:59:56', NULL),
('c07cb76e-5c75-4203-88a5-69fa5755864c', 'Herlan Maulana', 'XI OTKP', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:04:19', '2023-08-25 09:04:19', NULL),
('c5d2e5f7-19f0-42d1-a1eb-1f6dc14a6aad', 'Sherly Lestiani', '11 PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-28 15:21:02', '2023-08-28 15:21:02', NULL),
('c7a761a8-a880-4760-85f8-5b11e97c8e92', 'Nia Unia', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 22:04:07', '2023-08-02 22:04:07', NULL),
('cb85b539-71cd-426f-b6a5-e1fca73530c5', 'Silpi Nuraeni', 'X PERHOTELAN', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:35:43', '2023-08-10 12:35:43', NULL),
('cc692f60-23e8-4e44-b5e2-e4df93e8a74c', 'Riyan Maulana', 'XII PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:21:00', '2023-08-11 08:21:00', NULL),
('cdac8ec6-c21f-4ecc-9e00-7a13a037110f', 'Rico Harianto', 'X PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:12:01', '2023-08-25 09:12:01', NULL),
('d2413fc4-ad43-44bf-aa89-724888a24447', 'Andika', 'XI PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-26 08:37:08', '2023-08-26 08:37:08', NULL),
('d50cf1c6-c08f-4375-b8ef-0f286a2d8997', 'Sindi', 'XI PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:04:55', '2023-08-25 09:04:55', NULL),
('d7d48a49-b915-4ff0-ada7-c432061f3bfb', 'Sarah', 'X PERHOTELAN', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:34:46', '2023-08-10 12:34:46', NULL),
('d9d7b829-1fc1-413a-9d5d-41ce42fe6eb6', 'Cindy Nurcahniaty', 'X OTKP', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 21:59:33', '2023-08-02 21:59:33', NULL),
('db3729a2-ded3-4b62-82ed-b0ec8a671d5c', 'Siti Romadonnia', 'XI PERHOTELAN', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:32:20', '2023-08-10 12:32:20', NULL),
('dc555379-caea-44a8-b1df-9d5750d0b2b2', 'Alma Febrianti', 'XII PERHOTELAN', 'FUTSAL', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:03:03', '2023-08-25 09:03:03', NULL),
('dcf059db-4eca-4883-914e-f9980231dd6d', 'Ai Rahmawati', 'XI PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-12 07:51:10', '2023-08-12 07:51:10', NULL),
('dcf112c4-d00d-4d87-97b6-f072c794d0a6', 'Intan Nuraeni', 'XII OTKP', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:03:32', '2023-08-25 09:03:32', NULL),
('e21669cb-2307-433b-bf69-36e41855fa28', 'Muhamad Yusuf', 'XII PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:17:34', '2023-08-11 08:19:24', '2023-08-11 08:19:24'),
('e222a0fb-2081-45ba-a8a5-c30a4a418f59', 'Junaidi Ragil Dewa Pratama', 'X PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:16:03', '2023-08-25 09:16:03', NULL),
('ea9b4bf8-8bc5-40ab-b54b-e7745f71a222', 'Usman', 'XI OTKP', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:33:53', '2023-08-10 12:33:53', NULL),
('ed281136-2a50-40a7-a772-4b027363d134', 'Abdul Azis', 'XII PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:20:24', '2023-08-11 08:20:24', NULL),
('eebc5071-5223-439e-923e-4f2402cc1839', 'Adrian', 'X PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:24:23', '2023-08-11 08:24:23', NULL),
('ef3c0f90-3873-4cc9-a3e0-94954f9d5fec', 'Muhamad Tomi Aditia', 'XI PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:04:34', '2023-08-25 09:04:34', NULL),
('f06c75a8-39c2-46b7-9a51-3d9361bb6504', 'Muhamad Abdul Pakih', 'XI PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:24:58', '2023-08-11 08:24:58', NULL),
('f4402694-1096-40ff-95fd-15de1b6ac26d', 'Muhamad Riski', 'X PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:13:36', '2023-08-25 09:13:36', NULL),
('f47df15c-c76c-43b7-84ff-a7783f8ccde3', 'Aditya Sauqi Sabililah', 'XII PERHOTELAN', 'FUTSAL', 'OMAY KOMARUDIN', '2023-08-11 08:15:24', '2023-08-11 08:15:24', NULL),
('f4c730d7-668a-461e-8263-225bf32e2b75', 'Septiyani Saputri', 'XI PERHOTELAN', 'PENCAK SILAT', 'INDRA', '2023-08-10 12:31:37', '2023-08-10 12:31:37', NULL),
('f7e16489-f172-4a52-ba14-a646c6b3fa67', 'Adiansyah Saputra', 'XI PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:08:37', '2023-08-25 09:08:37', NULL),
('fa76eec1-6c6a-4296-9b22-0faa2e6e27cb', 'Adrian', 'X PERHOTELAN', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 09:15:34', '2023-08-25 09:15:34', NULL),
('fd03e844-10db-4c28-85bb-3721575f75a4', 'Nia', 'XI PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-26 08:37:23', '2023-08-26 08:37:23', NULL),
('fe3a782b-72c3-48ec-a639-0c43529c95e7', 'Aditia', 'X PERHOTELAN', 'PRAMUKA', 'IRWAN KURNIAWAN', '2023-08-02 21:55:10', '2023-08-02 21:55:10', NULL),
('ff7e8106-6b00-41f8-abb9-ecf314be855d', 'Muhamad Yusuf', 'XII OTKP', 'BADMINTON', 'ANGGI MILENIA BADRUDIN PRATAMA, S.Pd', '2023-08-25 08:44:08', '2023-08-25 08:44:08', NULL);

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
-- Struktur dari tabel `gambars`
--

CREATE TABLE `gambars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gambars`
--

INSERT INTO `gambars` (`id`, `nama`, `deskripsi`, `path`, `created_at`, `updated_at`) VALUES
(5, 'kegiatan sekolah', '-', 'gambar/B0qxVcY0gpCPvOKiZZuwEFX1oGEQbgrFhpSaQnNN.png', '2023-09-26 14:28:56', '2023-12-08 07:33:45'),
(7, 'foto bersama', 'foto bersamadi depan sekolah', 'gambar/lCKIaWGhdYI5MVLmcWMMgcUftcvxtyv21Vr0gEKP.png', '2023-10-13 13:49:29', '2023-12-08 07:34:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventorys`
--

CREATE TABLE `inventorys` (
  `id` char(36) NOT NULL,
  `kategori1` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `baik` varchar(255) NOT NULL,
  `rusak` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `inventorys`
--

INSERT INTO `inventorys` (`id`, `kategori1`, `unit`, `name`, `satuan`, `baik`, `rusak`, `keterangan`, `created_at`, `updated_at`, `deleted_at`) VALUES
('bd53b889-ccaf-4ee5-9cc2-75585ceee36f', 'Elektronik', 'SMP', 'cpu', 'buah', '12', '1', 'yang rusah mau di  bakar', '2023-07-21 07:47:25', '2023-07-21 07:47:25', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `in_mails`
--

CREATE TABLE `in_mails` (
  `id` char(36) NOT NULL,
  `mail_number` varchar(255) NOT NULL,
  `mail_date` date NOT NULL,
  `note` text NOT NULL,
  `sender` varchar(255) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `record_date` date NOT NULL,
  `file_in` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `in_mails`
--

INSERT INTO `in_mails` (`id`, `mail_number`, `mail_date`, `note`, `sender`, `recipient`, `record_date`, `file_in`, `created_at`, `updated_at`, `deleted_at`) VALUES
('16f4d03d-1f59-443b-8599-10b5943f1e53', '010/PIK/VII/2023', '2023-08-21', 'Sosialisasi dan Edukasi', 'Pusat Informasi Konseling Remaja Ceria Sentul', 'Staff TU', '2023-08-19', 'inmail-1692935912.pdf', '2023-08-25 10:58:32', '2023-08-25 10:58:32', NULL),
('2c33fa6f-05c5-41e9-a683-d8d9fe95997b', '0001.1.12./532 - PenKes', '2023-07-19', 'Fasilitas Paskibra Kecamatan', 'Purna Paskibra', 'Staff TU', '2023-07-17', 'inmail-1690254871.jpg', '2023-07-25 10:14:31', '2023-07-25 10:14:31', NULL),
('67760749-91e5-48af-9ec9-648a172b65a4', '0005.1.3/114 Penkes', '2023-07-26', 'Surat Undangan Kegiatan Pemeriksaan Kesehatan', 'Camat Babakan Madang', 'Kesiswaan', '2023-08-24', 'inmail-1691115991.jpg', '2023-08-04 09:26:31', '2023-08-04 09:26:31', NULL),
('ed1ebbd2-3b51-4c44-afb3-7d7a7656470f', '002/PIK-R/23', '2023-08-23', 'Undangan kegiatan memperingati International Youth Day', 'PIK Remaja Ceria Sentul', 'Staff TU', '2023-08-21', 'inmail-1693368921.jpg', '2023-08-30 11:14:32', '2023-08-30 11:15:21', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `izins`
--

CREATE TABLE `izins` (
  `id` char(36) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `user_id` char(36) NOT NULL,
  `siswa_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin_pegawais`
--

CREATE TABLE `izin_pegawais` (
  `id` char(36) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `file` varchar(50) DEFAULT NULL,
  `approval` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` char(36) NOT NULL,
  `pegawai_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `izin_pegawais`
--

INSERT INTO `izin_pegawais` (`id`, `status`, `tanggal`, `keterangan`, `file`, `approval`, `user_id`, `pegawai_id`, `created_at`, `updated_at`) VALUES
('2819233d-1d07-4d00-b0a1-38984e4ca141', '0', '2023-10-12', 'sakit', 'izin-1697019186.PNG', 0, '79d20824-524f-4e80-bf48-c30f7f910ed1', 'e2699071-3470-4905-a1e6-3673a265b314', '2023-10-11 17:13:06', '2023-10-11 17:13:06'),
('8898a17b-0024-454e-87b5-3f3108a50255', '1', '2023-10-21', 'kegiatan dinalaikpota', NULL, 0, '79d20824-524f-4e80-bf48-c30f7f910ed1', 'e2699071-3470-4905-a1e6-3673a265b314', '2023-10-19 10:52:22', '2023-10-19 10:52:22'),
('a658ba84-a90b-4091-b080-d445b6670e32', '1', '2023-10-13', 'ijin kegiatan', 'izin-1697021013.pdf', 0, '79d20824-524f-4e80-bf48-c30f7f910ed1', 'e2699071-3470-4905-a1e6-3673a265b314', '2023-10-11 17:43:33', '2023-10-11 17:43:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin_siswas`
--

CREATE TABLE `izin_siswas` (
  `id` char(36) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `file` varchar(50) DEFAULT NULL,
  `approval` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` char(36) NOT NULL,
  `siswa_id` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `izin_siswas`
--

INSERT INTO `izin_siswas` (`id`, `status`, `tanggal`, `keterangan`, `file`, `approval`, `user_id`, `siswa_id`, `created_at`, `updated_at`) VALUES
('20907164-9bb7-4ce1-b8a1-3d56afc508d2', '0', '2023-10-11', 'sakit perut', 'izin-1697021144.PNG', 0, '1b25bafb-1413-4229-bd9f-3e515569a6d2', '7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', '2023-10-11 17:45:44', '2023-10-11 17:45:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwals`
--

CREATE TABLE `jadwals` (
  `id` char(36) NOT NULL,
  `hari` text NOT NULL,
  `jam` text NOT NULL,
  `jamke` text NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `guru` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwals`
--

INSERT INTO `jadwals` (`id`, `hari`, `jam`, `jamke`, `mapel`, `guru`, `kelas`, `created_at`, `updated_at`, `deleted_at`) VALUES
('01f0c515-c69f-4734-843e-5c27a8574bff', 'Kamis', '08.50-10.10', '2', 'Bahasa Inggris Umum', 'TITIK FARIDA, S Pd', '11 PERHOTELAN', '2023-09-22 08:59:41', '2023-09-22 08:59:41', NULL),
('0473efe5-f807-41c6-9bcc-c8c1f388a8f3', 'Selasa', '08.50-10.10', '2', 'Otomatisasi Tata Kelola Humas & Keprotokolan', 'MUHAMAD HARUNUDIN, A.Md', '11 OTKP', '2023-09-19 12:56:41', '2023-09-19 12:56:41', NULL),
('0475ed95-c215-4a3d-b271-19d7dd854f42', 'Rabu', '12.20-13.50', '4', 'Industri Perhotelan', 'GRACE YOSIANA, A. Md', '10 PERHOTELAN', '2023-09-19 13:49:26', '2023-09-19 13:49:26', NULL),
('0652ebc0-3605-4cf8-99ff-2b31790821e1', 'Kamis', '10.30-11.50', '3', 'Otomatisasi Tata Kelola Keuangan', 'FIRDA HERMINIA FUTRIYANTI, SE', '12 OTKP', '2023-09-22 09:08:58', '2023-09-22 09:08:58', NULL),
('0c94ae25-f561-4528-9d7c-1394319885a4', 'Kamis', '07.30-08.50', '1', 'Aqidah & Akhlaq', 'SRI FARIHAH, S.Ag', '10 PERHOTELAN', '2023-09-22 08:32:12', '2023-09-22 08:32:12', NULL),
('0d03d004-a1e0-4d01-8aa7-01654c9c43ee', 'Kamis', '12.20-13.50', '4', 'Bahasa Sunda', 'AGUS NAZMUDIN, S.Pd', '10 PERHOTELAN', '2023-09-22 09:21:53', '2023-09-22 09:21:53', NULL),
('136ba798-83d3-4c87-8851-93a5bffcb16a', 'Senin', '09.05-10.30', '2', 'Bahasa Inggris Hotel', 'R. HERMAN YUDHARTO, BA', '11 PERHOTELAN', '2023-09-19 12:11:51', '2023-09-19 12:11:51', NULL),
('1671c25b-4163-4349-a85e-a832c7ba4a04', 'Kamis', '07.45-08.45', '1', 'PPKN KLS X,XI', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '11 PERHOTELAN', '2023-09-22 09:29:24', '2023-09-22 09:29:24', NULL),
('18df2b8f-2196-4af1-a5f9-1d7c9d941a04', 'Kamis', '07.30-08.50', '1', 'Aqidah & Akhlaq', 'SRI FARIHAH, S.Ag', '10 OTKP', '2023-09-22 08:25:54', '2023-09-22 08:25:54', NULL),
('1c4c3338-8733-4185-8fa0-7bd75efad4a0', 'Selasa', '12.20-13.50', '4', 'Bahasa Arab', 'ELA LAELA, S.Pd.I', '10 PERHOTELAN', '2023-09-19 13:09:51', '2023-09-19 13:09:51', NULL),
('2363d85f-85b9-4dd4-a0a0-657651bf147b', 'Selasa', '10.30-11.50', '3', 'Matematika', 'HELMI INDRA BUDIMAN, S.Pd', '12 PERHOTELAN', '2023-09-19 13:07:04', '2023-09-19 13:07:04', NULL),
('25f67d8e-794c-4bd4-a0f3-f19cc7c0bd64', 'Selasa', '10.30-11.50', '3', 'Otomatisasi Tata Kelola Keuangan', 'FIRDA HERMINIA FUTRIYANTI, SE', '11 OTKP', '2023-09-19 13:04:12', '2023-09-19 13:04:12', NULL),
('262ed63b-ae1a-4b2d-8c01-57245c4cb3da', 'Rabu', '08.50-10.10', '2', 'Seni Budaya (SBK)', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '10 OTKP', '2023-09-19 13:29:16', '2023-09-19 13:29:16', NULL),
('262f6f7a-e0b0-4700-b7cd-f0a9b24537af', 'Kamis', '08.50-10.10', '2', 'PAI', 'SRI FARIHAH, S.Ag', '12 OTKP', '2023-09-22 09:00:38', '2023-09-22 09:00:38', NULL),
('26b5cf2f-b68f-4d9a-a870-89cb9f731949', 'Jumat', '09.15-09.45', '2', 'Bahasa Inggris Umum', 'TITIK FARIDA, S Pd', '10 PERHOTELAN', '2023-09-22 09:41:20', '2023-09-22 09:41:20', NULL),
('29b778c5-8c2b-4701-b66b-258de7f1256c', 'Senin', '10.45-12.05', '3', 'Simulasi Digital', 'TITIB, S.Pd', '10 PERHOTELAN', '2023-09-19 12:04:21', '2023-09-19 12:07:07', NULL),
('2a5bcb79-a96b-45f3-9923-f6b68732edd0', 'Kamis', '07.30-08.50', '1', 'Otomatisasi Tata Kelola Kepegawaian', 'DIDIN JAENUDIN, SE', '11 OTKP', '2023-09-22 08:35:01', '2023-09-22 08:54:01', NULL),
('2e0366f7-cc5c-454b-bd5b-786d472e958f', 'Senin', '10.45-12.05', '3', 'Otomatisasi Tata Kelola Keuangan', 'FIRDA HERMINIA FUTRIYANTI, SE', '11 OTKP', '2023-09-19 12:05:44', '2023-09-19 12:07:25', NULL),
('303138ad-a18d-42b7-a9ee-13bd24a4a8f0', 'Rabu', '12.30-13.50', '4', 'Bahasa Indonesia', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '11 PERHOTELAN', '2023-09-19 13:51:01', '2023-09-19 13:51:01', NULL),
('31de8e4c-a3fc-4fca-9208-c0ea36b8e968', 'Senin', '12.30-13.50', '4', 'Bahasa Arab', 'ELA LAELA, S.Pd.I', '11 PERHOTELAN', '2023-09-19 12:31:13', '2023-09-19 12:31:13', NULL),
('323f3816-9a6d-4e8c-9024-726ef75b9727', 'Rabu', '08.50-10.10', '2', 'Otomatisasi Tata Kelola Sanpras', 'DIDIN JAENUDIN, SE', '12 OTKP', '2023-09-19 13:33:18', '2023-09-19 13:33:18', NULL),
('3392da25-32f8-4d00-9b92-ad583605c6cf', 'Rabu', '08.50-10.10', '2', 'Matematika', 'HELMI INDRA BUDIMAN, S.Pd', '11 OTKP', '2023-09-19 13:31:27', '2023-09-19 13:31:27', NULL),
('349603ce-e2cf-4f5b-8fa1-195007e44631', 'Senin', '09.05-10.30', '2', 'Matematika', 'HELMI INDRA BUDIMAN, S.Pd', '12 OTKP', '2023-09-19 12:01:26', '2023-09-19 12:01:26', NULL),
('34b1a70f-2cae-49f3-8b7e-00386cb6ed5b', 'Selasa', '10.30-11.50', '3', 'Matematika', 'HELMI INDRA BUDIMAN, S.Pd', '12 OTKP', '2023-09-19 13:06:30', '2023-09-19 13:06:30', NULL),
('354f29eb-199f-4aae-a3a5-40c5cf425b88', 'Rabu', '10.30-11.50', '3', 'Front Office', 'GRACE YOSIANA, A. Md', '12 PERHOTELAN', '2023-09-19 13:47:34', '2023-09-19 13:47:34', NULL),
('3a4594d1-f967-48c0-aabd-58566c51679d', 'Senin', '09.05-10.30', '2', 'Matematika', 'HELMI INDRA BUDIMAN, S.Pd', '12 PERHOTELAN', '2023-09-19 12:02:13', '2023-09-19 12:02:13', NULL),
('3d508082-d90c-4182-8e11-22ce021902bf', 'Selasa', '13.50-15.10', '5', 'PPKN KLS X,XI', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '10 PERHOTELAN', '2023-09-19 13:16:39', '2023-09-19 13:16:39', NULL),
('4181ebac-5a3d-4fc6-adb5-730cd80c16cf', 'Selasa', '08.50-10.10', '2', 'Bahasa Indonesia', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '10 OTKP', '2023-09-19 12:55:51', '2023-09-19 12:55:51', NULL),
('423b853a-498f-42b5-907e-20ffe5adc4d4', 'Jumat', '08.45-09.45', '2', 'Loundry', 'MUHAMAD RAMDANI', '12 PERHOTELAN', '2023-09-22 09:47:51', '2023-09-22 09:47:51', NULL),
('4340144f-7da4-4a9f-8c5e-d9ad620392a3', 'Kamis', '07.30-08.50', '1', 'Bahasa Inggris Umum', 'TITIK FARIDA, S Pd', '12 OTKP', '2023-09-22 08:36:13', '2023-09-22 08:56:00', NULL),
('47bfbba6-22cf-49ed-af3f-4b82585d7b22', 'Rabu', '10.30-11.50', '3', 'Bahasa Sunda', 'AGUS NAZMUDIN, S.Pd', '11 PERHOTELAN', '2023-09-19 13:41:25', '2023-09-19 13:41:25', NULL),
('4832e63d-4448-41eb-8761-f5aacae86685', 'Senin', '12.30-13.50', '4', 'Administrasi Umum', 'MUHAMAD HARUNUDIN, A.Md', '10 OTKP', '2023-09-19 12:25:56', '2023-09-19 12:25:56', NULL),
('49124308-663c-42a5-8843-070c4b0b8791', 'Selasa', '07.30-08.50', '1', 'PJOK', 'OMAY KOMARUDIN', '10 OTKP', '2023-09-19 12:36:59', '2023-09-19 12:36:59', NULL),
('4915c5b7-13e3-4c4b-b20c-93acc6b21b32', 'Rabu', '08.50-10.10', '2', 'Seni Budaya (SBK)', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '10 PERHOTELAN', '2023-09-19 13:30:20', '2023-09-19 13:30:20', NULL),
('4a25f396-49fd-4352-8090-f183b97401ab', 'Rabu', '07.30-08.50', '1', 'Bahasa Indonesia', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '12 OTKP', '2023-09-19 13:26:44', '2023-09-19 13:26:44', NULL),
('4a95eedc-6c63-48a0-8ec1-05b712b16f21', 'Kamis', '10.30-11.50', '3', 'Front Office', 'GRACE YOSIANA, A. Md', '12 PERHOTELAN', '2023-09-22 09:10:18', '2023-09-22 09:10:18', NULL),
('4dd3ac0d-1d25-42f4-893e-7693547cf3aa', 'Senin', '10.45-12.05', '3', 'Otomatisasi Tata Kelola Humas & Keprotokolan', 'MUHAMAD HARUNUDIN, A.Md', '12 OTKP', '2023-09-19 12:14:48', '2023-09-19 12:14:48', NULL),
('502c5394-cc88-4f65-a244-7de98c0bca63', 'Senin', '12.30-13.50', '4', 'Komunikasi Industri Pariwisata', 'R. HERMAN YUDHARTO, BA', '10 PERHOTELAN', '2023-09-19 12:27:06', '2023-09-19 12:27:06', NULL),
('51c86d60-6784-4b33-ae60-e51639aac2c3', 'Jumat', '08.45-09.15', '2', 'PAI', 'SRI FARIHAH, S.Ag', '10 OTKP', '2023-09-22 09:38:58', '2023-09-22 09:38:58', NULL),
('55278159-8020-4a6d-8491-84d08beeeb30', 'Selasa', '10.30-11.50', '3', 'Food and beverages', 'MUHAMAD RAMDANI', '11 PERHOTELAN', '2023-09-19 13:04:54', '2023-09-19 13:04:54', NULL),
('5659bd09-77a2-4695-bf36-ebb0b4335803', 'Rabu', '07.30-08.50', '1', 'Bahasa Inggris Hotel', 'R. HERMAN YUDHARTO, BA', '10 PERHOTELAN', '2023-09-19 13:22:11', '2023-09-19 13:22:11', NULL),
('5996342f-832c-4eaa-b3cf-c4d60b007de3', 'Kamis', '09.45-10.45', '3', 'Aqidah & Akhlaq', 'SRI FARIHAH, S.Ag', '12 PERHOTELAN', '2023-09-22 09:52:40', '2023-09-22 09:52:40', NULL),
('5ba47b4d-9194-421e-a58c-dc8c02bc1e49', 'Senin', '07.45-09-05', '1', 'Matematika', 'HELMI INDRA BUDIMAN, S.Pd', '10 PERHOTELAN', '2023-09-19 11:48:00', '2023-09-19 11:48:00', NULL),
('5cac3d2e-6e54-48bc-80e2-7e4fff4a90eb', 'Senin', '10.45-12.05', '3', 'Loundry', 'MUHAMAD RAMDANI', '11 PERHOTELAN', '2023-09-19 12:13:51', '2023-09-19 12:13:51', NULL),
('5cb80ccd-43d9-4194-a0ed-59ec21d78a69', 'Rabu', '10.30-11.50', '3', 'Bahasa Sunda', 'AGUS NAZMUDIN, S.Pd', '11 OTKP', '2023-09-19 13:40:35', '2023-09-19 13:40:35', NULL),
('609fcb9e-744f-46d0-87b7-111b89e055b3', 'Selasa', '08.50-10.10', '2', 'Bahasa Indonesia', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '10 PERHOTELAN', '2023-09-19 12:52:52', '2023-09-19 12:52:52', NULL),
('6122a244-b147-472f-b2e3-c16afcf3e66d', 'Kamis', '10.30-11.50', '3', 'SEJARAH', 'TITIB, S.Pd', '10 OTKP', '2023-09-22 09:05:29', '2023-09-22 09:05:29', NULL),
('6183f717-0d55-42ec-82de-12298376eed4', 'Jumat', '09.45-10.45', '3', 'Bahasa Inggris Umum', 'TITIK FARIDA, S Pd', '10 OTKP', '2023-09-22 09:48:42', '2023-09-22 09:48:42', NULL),
('66eadfcf-35f9-45bd-9a06-7f2dbe103331', 'Rabu', '07.30-08.50', '1', 'Food and beverages', 'MUHAMAD RAMDANI', '11 PERHOTELAN', '2023-09-19 13:25:30', '2023-09-19 13:25:30', NULL),
('67b5f192-de72-46e5-ac45-02a30d9c2243', 'Selasa', '12.20-13.50', '4', 'Matematika', 'HELMI INDRA BUDIMAN, S.Pd', '11 OTKP', '2023-09-19 13:10:24', '2023-09-19 13:10:24', NULL),
('6a1f572f-044f-4571-927f-27691a186637', 'Senin', '12.30-13.50', '4', 'Bahasa Arab', 'ELA LAELA, S.Pd.I', '11 OTKP', '2023-09-19 12:29:01', '2023-09-19 12:29:01', NULL),
('6acec965-6b5f-405d-b1ee-dfb07221687c', 'Rabu', '07.30-08.50', '1', 'Ekonomi Bisnis', 'FIRDA HERMINIA FUTRIYANTI, SE', '10 OTKP', '2023-09-19 13:21:31', '2023-09-19 13:21:31', NULL),
('6c1a39ee-eb42-471d-86c2-5a914e7525a4', 'Rabu', '12.20-13.50', '4', 'Bahasa Arab', 'ELA LAELA, S.Pd.I', '12 OTKP', '2023-09-19 13:54:19', '2023-09-19 13:54:19', NULL),
('6f31d32b-0f7d-4a0e-a3c8-845008caaf10', 'Rabu', '08.50-10.10', '2', 'Food and beverages', 'MUHAMAD RAMDANI', '12 PERHOTELAN', '2023-09-19 13:34:07', '2023-09-19 13:34:07', NULL),
('705c1653-25c7-4160-8510-43a79435ed10', 'Selasa', '10.30-11.50', '3', 'Bahasa Inggris Hotel', 'R. HERMAN YUDHARTO, BA', '10 PERHOTELAN', '2023-09-19 13:02:51', '2023-09-19 13:02:51', NULL),
('706ccb3a-5692-47e0-8272-90e8320e3302', 'Senin', '07.45-09.05', '1', 'Produk Kreatif & Kewirausahaan', 'MUHAMAD HARUNUDIN, A.Md', '12 PERHOTELAN', '2023-09-19 11:56:32', '2023-09-19 11:56:32', NULL),
('7095c45a-543a-45a3-9cfe-b6941936666d', 'Senin', '07.45-09.05', '1', 'PJOK', 'OMAY KOMARUDIN', '11 OTKP', '2023-09-19 11:54:28', '2023-09-19 11:54:28', NULL),
('7099e52f-7024-44e5-8747-6640e7255c6f', 'Jumat', '07.45-08.45', '1', 'PPKN KLS X,XI', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '11 PERHOTELAN', '2023-09-22 09:32:03', '2023-09-22 09:32:03', NULL),
('755c8d2b-b576-415c-aef0-1e8c18f1de6c', 'Jumat', '09.45-10.45', '3', 'Aqidah & Akhlaq', 'SRI FARIHAH, S.Ag', '12 OTKP', '2023-09-22 09:52:15', '2023-09-22 09:52:15', NULL),
('7693b4d1-5d13-485f-9522-74dd9f70842a', 'Selasa', '12.20-13.50', '4', 'Matematika', 'HELMI INDRA BUDIMAN, S.Pd', '11 PERHOTELAN', '2023-09-19 13:12:21', '2023-09-19 13:12:21', NULL),
('76d8bb8b-4c0e-4278-b398-2332d15894b3', 'Kamis', '10.30-11.50', '3', 'Aqidah & Akhlaq', 'SRI FARIHAH, S.Ag', '11 OTKP', '2023-09-22 09:07:02', '2023-09-22 09:07:02', NULL),
('77d1495a-6b82-43f1-a87c-3cac0cd4d019', 'Senin', '09.05-10.30', '2', 'Otomatisasi Tata Kelola Humas & Keprotokolan', 'MUHAMAD HARUNUDIN, A.Md', '11 OTKP', '2023-09-19 12:00:18', '2023-09-19 12:00:18', NULL),
('7c23cdf0-e264-4c73-a39e-42470260908a', 'Rabu', '10.30-11.50', '3', 'IPA/IPAS', 'TITIB, S.Pd', '10 OTKP', '2023-09-19 13:35:21', '2023-09-19 13:35:21', NULL),
('851c2698-ed0a-4f18-8e2f-93c7e6b58ae7', 'Selasa', '08.50-10.10', '2', 'Housekeeping', 'R. HERMAN YUDHARTO, BA', '11 PERHOTELAN', '2023-09-19 12:57:42', '2023-09-19 12:57:42', NULL),
('86a6427a-303f-4f22-b1cb-56c18cd1fd65', 'Jumat', '07.45-08.45', '1', 'PPKN KLS X,XI', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '11 OTKP', '2023-09-22 09:28:45', '2023-09-22 09:28:45', NULL),
('8b0e82fb-2297-47b9-bc30-76fbb1815b31', 'Rabu', '10.30-11.50', '3', 'Otomatisasi Tata Kelola Keuangan', 'FIRDA HERMINIA FUTRIYANTI, SE', '12 OTKP', '2023-09-19 13:46:53', '2023-09-19 13:46:53', NULL),
('8de47c6f-93f4-4003-9775-50c65d5c855d', 'Senin', '10.45-12.05', '3', 'Housekeeping', 'R. HERMAN YUDHARTO, BA', '12 PERHOTELAN', '2023-09-19 12:20:08', '2023-09-19 12:20:08', NULL),
('916c57be-6a12-4400-8f05-76a9f511d301', 'Selasa', '10.30-11.50', '3', 'Kearsipan', 'DIDIN JAENUDIN, SE', '10 OTKP', '2023-09-19 13:02:13', '2023-09-19 13:02:13', NULL),
('968f5a40-ce1b-44bf-8ae3-179e92cdaa01', 'Jumat', '07.45-08.45', '1', 'Bahasa Inggris Umum', 'TITIK FARIDA, S Pd', '12 OTKP', '2023-09-22 09:29:50', '2023-09-22 09:29:50', NULL),
('97a493b4-2e85-4c78-84f2-ed5c9230de2a', 'Selasa', '07.30-08.50', '1', 'Housekeeping', 'R. HERMAN YUDHARTO, BA', '12 PERHOTELAN', '2023-09-19 12:41:32', '2023-09-19 12:41:32', NULL),
('97df526b-46d7-4677-880c-ae41b8cd68b6', 'Jumat', '08.45-09.15', '2', 'Otomatisasi Tata Kelola Kepegawaian', 'DIDIN JAENUDIN, SE', '12 OTKP', '2023-09-22 09:47:16', '2023-09-22 09:47:16', NULL),
('99a24eca-1116-4fa7-b3ad-01b652b67983', 'Rabu', '07.30-08.50', '1', 'Bahasa Indonesia', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '12 PERHOTELAN', '2023-09-19 13:27:57', '2023-09-19 13:27:57', NULL),
('9ae9a99d-4220-42f1-966d-cd7081d77f17', 'Senin', '07.45-09.05', '1', 'PJOK', 'OMAY KOMARUDIN', '11 PERHOTELAN', '2023-09-19 11:55:00', '2023-09-19 11:57:17', NULL),
('9cce6619-1eb8-4503-be65-86f40b0b26f4', 'Selasa', '08.50-10.10', '2', 'Food and beverages', 'MUHAMAD RAMDANI', '12 PERHOTELAN', '2023-09-19 12:59:13', '2023-09-19 12:59:13', NULL),
('9ef37adc-5421-4f9f-a3d3-8d287a2ec705', 'Kamis', '12.20-13.50', '4', 'PPKN KLS XII', 'ELA LAELA, S.Pd.I', '12 OTKP', '2023-09-22 09:24:36', '2023-09-22 09:24:36', NULL),
('a1f93f53-838a-4c39-8c1a-3b15cfd1cdc0', 'Kamis', '08.50-10.10', '2', 'PAI', 'SRI FARIHAH, S.Ag', '12 PERHOTELAN', '2023-09-22 09:03:26', '2023-09-22 09:03:26', NULL),
('a3858aee-e173-4b04-ae7a-243d8aeba0be', 'Selasa', '13.50-15.10', '5', 'Bahasa Sunda', 'AGUS NAZMUDIN, S.Pd', '12 OTKP', '2023-09-19 13:17:17', '2023-09-19 13:17:17', NULL),
('a538d9b3-63de-4b12-8a64-1bfcc07525f6', 'Jumat', '09.45-10.45', '3', 'Loundry', 'MUHAMAD RAMDANI', '11 PERHOTELAN', '2023-09-22 09:51:33', '2023-09-22 09:51:33', NULL),
('a675185f-741e-4b7d-a9e4-0005f0609cc6', 'Selasa', '13.50-15.10', '5', 'PPKN KLS X,XI', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '10 OTKP', '2023-09-19 13:15:52', '2023-09-19 13:15:52', NULL),
('a92c94a1-0a16-40d8-962b-b8ef313da4d7', 'Senin', '09.05-10.30', '2', 'Teknologi Perkantoran', 'FIRDA HERMINIA FUTRIYANTI, SE', '10 OTKP', '2023-09-19 11:58:56', '2023-09-19 11:58:56', NULL),
('af4191f8-50ac-494c-bf85-c1d6b7dafe63', 'Rabu', '07.30-08.50', '1', 'Otomatisasi Tata Kelola Sanpras', 'DIDIN JAENUDIN, SE', '11 OTKP', '2023-09-19 13:23:45', '2023-09-19 13:23:45', NULL),
('afdff1f3-fa89-479d-9beb-2d6d702471ab', 'Jumat', '08.45-09.45', '2', 'Produk Kreatif & Kewirausahaan', 'MUHAMAD HARUNUDIN, A.Md', '11 OTKP', '2023-09-22 09:43:49', '2023-09-22 09:43:49', NULL),
('b07fe7b9-166b-46f3-9c08-ff8cc5fafa29', 'Selasa', '12.20-13.50', '4', 'Bahasa Arab', 'ELA LAELA, S.Pd.I', '10 OTKP', '2023-09-19 13:09:10', '2023-09-19 13:09:10', NULL),
('b0b73359-caf3-4fdc-a071-a4ef969ee4ab', 'Kamis', '07.30-08.50', '1', 'Front Office', 'GRACE YOSIANA, A. Md', '11 PERHOTELAN', '2023-09-22 08:35:42', '2023-09-22 08:54:33', NULL),
('b14634b3-6cc2-497c-9f5b-70011b63469f', 'Rabu', '08.50-10.10', '2', 'Matematika', 'HELMI INDRA BUDIMAN, S.Pd', '11 PERHOTELAN', '2023-09-19 13:32:16', '2023-09-19 13:32:16', NULL),
('b18cb3c2-6ecc-4e40-8b3b-f052f8d01be3', 'Kamis', '12.20-13.50', '4', 'Bahasa Sunda', 'AGUS NAZMUDIN, S.Pd', '10 OTKP', '2023-09-22 09:16:41', '2023-09-22 09:16:41', NULL),
('b2761eb2-14a1-424c-a8aa-7a61eb199cda', 'Selasa', '07.30-08.50', '1', 'Otomatisasi Tata Kelola Humas & Keprotokolan', 'MUHAMAD HARUNUDIN, A.Md', '12 OTKP', '2023-09-19 12:40:39', '2023-09-19 12:40:39', NULL),
('b4f292a5-4d82-42ff-8aca-570de9dd7504', 'Selasa', '07.30-08.50', '1', 'PJOK', 'OMAY KOMARUDIN', '10 PERHOTELAN', '2023-09-19 12:37:55', '2023-09-19 12:37:55', NULL),
('b511f840-5d33-44b5-8852-9f66ef0165f8', 'Selasa', '07.30-08.50', '1', 'Otomatisasi Tata Kelola Kepegawaian', 'DIDIN JAENUDIN, SE', '11 OTKP', '2023-09-19 12:38:48', '2023-09-19 12:38:48', NULL),
('b7198be1-d1ce-4c19-9a93-c98a9bb40676', 'Jumat', '07.45-08.45', '1', 'Bahasa Inggris Umum', 'TITIK FARIDA, S Pd', '12 PERHOTELAN', '2023-09-22 09:30:39', '2023-09-22 09:30:39', NULL),
('ba9862a4-707e-40d5-8279-2d7dfa4c90ea', 'Senin', '07.45-09.05', '1', 'Produk Kreatif & Kewirausahaan', 'MUHAMAD HARUNUDIN, A.Md', '12 OTKP', '2023-09-19 11:55:47', '2023-09-19 11:55:47', NULL),
('baf4a7ef-2066-4f36-8572-0cf1e3346fd1', 'Senin', '12.30-13.50', '4', 'Bahasa Indonesia', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '12 PERHOTELAN', '2023-09-19 12:34:03', '2023-09-19 12:34:03', NULL),
('bf88cab3-6752-46c3-952b-2e8c9968f38c', 'Kamis', '12.20-13.50', '4', 'Bahasa Inggris Umum', 'TITIK FARIDA, S Pd', '11 OTKP', '2023-09-22 09:22:44', '2023-09-22 09:22:44', NULL),
('c3164205-550c-4a74-a192-2cb583add03f', 'Selasa', '12.20-13.50', '4', 'Produk Kreatif & Kewirausahaan', 'MUHAMAD HARUNUDIN, A.Md', '12 OTKP', '2023-09-19 13:13:25', '2023-09-19 13:13:25', NULL),
('c4c1f39c-b389-4c94-8cb5-1b7bf751c1e7', 'Senin', '10.45-12.05', '3', 'Simulasi Digital', 'TITIB, S.Pd', '10 OTKP', '2023-09-19 12:03:41', '2023-09-19 12:06:37', NULL),
('c50aa700-67a1-424a-8a21-5c7feb2c60ef', 'Jumat', '09.45-10.45', '3', 'Bahasa Inggris Umum', 'TITIK FARIDA, S Pd', '10 PERHOTELAN', '2023-09-22 09:49:14', '2023-09-22 09:49:14', NULL),
('c684fcc5-6515-4c35-b192-ae050fa33f4f', 'Kamis', '08.50-10.10', '2', 'Bahasa Inggris Umum', 'TITIK FARIDA, S Pd', '11 OTKP', '2023-09-22 08:57:13', '2023-09-22 08:57:13', NULL),
('c8919d59-a313-4929-ab47-3c3d7288c760', 'Jumat', '09.15-09.45', '2', 'Bahasa Inggris Umum', 'TITIK FARIDA, S Pd', '10 OTKP', '2023-09-22 09:40:27', '2023-09-22 09:40:27', NULL),
('cd5ed7e3-df83-44cc-bc4d-568e94535f2e', 'Jumat', '07.45-08.45', '1', 'PAI', 'SRI FARIHAH, S.Ag', '10 OTKP', '2023-09-22 09:27:27', '2023-09-22 09:27:27', NULL),
('cd9d27b0-14d1-42e6-8bc9-584d62838b99', 'Kamis', '10.30-11.50', '3', 'Aqidah & Akhlaq', 'SRI FARIHAH, S.Ag', '11 PERHOTELAN', '2023-09-22 09:07:35', '2023-09-22 09:07:35', NULL),
('d23cdee2-1104-42f0-98a4-dd638ace665d', 'Jumat', '08.45-09.45', '2', 'Produk Kreatif & Kewirausahaan', 'MUHAMAD HARUNUDIN, A.Md', '11 PERHOTELAN', '2023-09-22 09:46:01', '2023-09-22 09:46:01', NULL),
('d3344c9d-2017-4294-ad07-fadf525b25e9', 'Kamis', '08.50-10.10', '2', 'Kearsipan', 'DIDIN JAENUDIN, SE', '10 OTKP', '2023-09-22 08:45:51', '2023-09-22 08:45:51', NULL),
('d3ded97c-6454-4b4d-bb1f-8a6a5d88d700', 'Senin', '12.30-13.50', '4', 'Bahasa Indonesia', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '12 OTKP', '2023-09-19 12:33:34', '2023-09-19 12:33:34', NULL),
('d81d6596-9492-4b3c-b3f9-62d0b1572600', 'Kamis', '07.30-08.50', '1', 'Bahasa Inggris Umum', 'TITIK FARIDA, S Pd', '12 PERHOTELAN', '2023-09-22 08:36:39', '2023-09-22 08:56:22', NULL),
('d9064025-7654-4f7d-8ce9-3c291c8bb0c9', 'Rabu', '12.20-13.50', '4', 'Bahasa Arab', 'ELA LAELA, S.Pd.I', '12 PERHOTELAN', '2023-09-19 13:54:48', '2023-09-19 13:54:48', NULL),
('d9e97588-3ea4-4710-869b-2619173ec2e5', 'Rabu', '10.30-11.50', '3', 'IPA/IPAS', 'TITIB, S.Pd', '10 PERHOTELAN', '2023-09-19 13:37:37', '2023-09-19 13:37:37', NULL),
('da12a29c-201c-443f-a881-5c17bdd9b7d4', 'Selasa', '12.20-13.50', '4', 'Produk Kreatif & Kewirausahaan', 'MUHAMAD HARUNUDIN, A.Md', '12 PERHOTELAN', '2023-09-19 13:13:25', '2023-09-19 13:14:00', NULL),
('ddd3c2d0-4817-4540-bd7a-87a95ab545ee', 'Rabu', '12.30-13.50', '4', 'Bahasa Indonesia', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', '11 OTKP', '2023-09-19 13:52:47', '2023-09-19 13:52:47', NULL),
('e08e9e03-4f9d-4212-9f82-8e756003726f', 'Kamis', '08.50-10.10', '2', 'Kepariwisataan', 'GRACE YOSIANA, A. Md', '10 PERHOTELAN', '2023-09-22 08:46:50', '2023-09-22 08:46:50', NULL),
('e5fd6eb0-8d99-4333-bbe4-e0d028537f55', 'Senin', '09.05-10.30', '2', 'Sanitasi, Hygiene, dan Keselamatan Kerja', 'MUHAMAD RAMDANI', '10 PERHOTELAN', '2023-09-19 11:59:33', '2023-09-19 11:59:33', NULL),
('ebdb9e25-fcc1-458c-8eaa-26e624ca83e1', 'Jumat', '09.45-10.45', '3', 'Otomatisasi Tata Kelola Sanpras', 'DIDIN JAENUDIN, SE', '11 OTKP', '2023-09-22 09:50:03', '2023-09-22 09:50:03', NULL),
('ef71cd7a-7bbf-4ae8-b1dc-594a6a6a519a', 'Kamis', '12.20-13.50', '4', 'PPKN KLS XII', 'ELA LAELA, S.Pd.I', '12 PERHOTELAN', '2023-09-22 09:25:00', '2023-09-22 09:25:00', NULL),
('f0201a24-0f49-4e95-b787-5809f32dff1f', 'Kamis', '10.30-11.50', '3', 'SEJARAH', 'TITIB, S.Pd', '10 PERHOTELAN', '2023-09-22 09:06:03', '2023-09-22 09:06:03', NULL),
('f192a040-54b0-4f17-9bdf-6bb9fae07480', 'Selasa', '07.30-08.50', '1', 'Loundry', 'MUHAMAD RAMDANI', '11 PERHOTELAN', '2023-09-19 12:39:33', '2023-09-19 12:39:33', NULL),
('f2891859-ae63-4a7c-8e89-1175b7d0dcbc', 'Selasa', '08.50-10.10', '2', 'Otomatisasi Tata Kelola Kepegawaian', 'DIDIN JAENUDIN, SE', '12 OTKP', '2023-09-19 12:58:37', '2023-09-19 12:58:37', NULL),
('f4010ef4-3fc8-47ba-adfc-e2ac6eb67a9a', 'Selasa', '13.50-15.10', '5', 'Bahasa Sunda', 'AGUS NAZMUDIN, S.Pd', '12 PERHOTELAN', '2023-09-19 13:19:09', '2023-09-19 13:19:09', NULL),
('f5de230f-92fe-4033-ac84-39de443eb4f3', 'Kamis', '12.20-13.50', '4', 'Bahasa Inggris Umum', 'TITIK FARIDA, S Pd', '11 PERHOTELAN', '2023-09-22 09:23:08', '2023-09-22 09:23:08', NULL),
('f6342f8f-e8f9-4f97-8259-927e8bacd1c3', 'Jumat', '08.45-09.15', '2', 'PAI', 'SRI FARIHAH, S.Ag', '10 PERHOTELAN', '2023-09-22 09:39:34', '2023-09-22 09:39:34', NULL),
('fcfe1c3d-20df-43c5-9a59-a49e80a3c511', 'Jumat', '07.45-08.45', '1', 'PAI', 'SRI FARIHAH, S.Ag', '10 PERHOTELAN', '2023-09-22 09:28:00', '2023-09-22 09:28:00', NULL),
('fe6d5514-0185-4d66-98ad-d9ab72709c18', 'Senin', '07.45-09.05', '1', 'Matematika', 'HELMI INDRA BUDIMAN, S.Pd', '10 OTKP', '2023-09-19 11:53:39', '2023-09-19 11:53:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnals`
--

CREATE TABLE `jurnals` (
  `id` char(36) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `mapel_id` varchar(255) NOT NULL,
  `pegawai_id` varchar(255) NOT NULL,
  `kelas` text NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_bopdas`
--

CREATE TABLE `kas_bopdas` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `tahun` text DEFAULT NULL,
  `bulan` text DEFAULT NULL,
  `kelas` text DEFAULT NULL,
  `pos` text DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `pengajuan_id` char(36) DEFAULT NULL,
  `spp_id` char(36) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_boss`
--

CREATE TABLE `kas_boss` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `kas` text DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `bulan` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `spp_id` varchar(50) DEFAULT NULL,
  `pengajuan_id` varchar(50) DEFAULT NULL,
  `pos` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kas_boss`
--

INSERT INTO `kas_boss` (`id`, `date`, `note`, `kas`, `debit`, `credit`, `file`, `created_at`, `updated_at`, `deleted_at`, `bulan`, `tahun`, `kelas`, `spp_id`, `pengajuan_id`, `pos`) VALUES
('da205c46-cc59-49d9-81ec-c887f9597ba6', '2024-01-04', 'Pembayaran SPP Agus Muhammad Dalfa', NULL, 0.00, 75000.00, NULL, '2024-01-04 08:04:11', '2024-01-04 08:04:11', NULL, 'Jan', '2024', '10 PERHOTELAN', '0f01b939-58d7-4fce-8806-c3b8b1af41f3', NULL, 'SKTM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_bpmus`
--

CREATE TABLE `kas_bpmus` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `tahun` text DEFAULT NULL,
  `bulan` text DEFAULT NULL,
  `kelas` text DEFAULT NULL,
  `pos` text DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `pengajuan_id` char(36) DEFAULT NULL,
  `spp_id` char(36) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_donaturs`
--

CREATE TABLE `kas_donaturs` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `tahun` text DEFAULT NULL,
  `bulan` text DEFAULT NULL,
  `kelas` text DEFAULT NULL,
  `pos` text DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `pengajuan_id` char(36) DEFAULT NULL,
  `spp_id` char(36) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kas_donaturs`
--

INSERT INTO `kas_donaturs` (`id`, `date`, `note`, `tahun`, `bulan`, `kelas`, `pos`, `debit`, `credit`, `pengajuan_id`, `spp_id`, `file`, `created_at`, `updated_at`) VALUES
('3a524571-e057-4760-b152-75d8b36d0668', '2024-01-04', 'pembayaran SPPMuhamad Badri Tamami', '2024', 'Jan', '12 PERHOTELAN', 'Yatim', 0.00, 175000.00, NULL, '41899ac5-ca83-4a6c-bee3-6757a86c7d95', NULL, '2024-01-04 07:57:15', '2024-01-04 07:57:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_honors`
--

CREATE TABLE `kas_honors` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `pos` text DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `setoran_id` char(36) DEFAULT NULL,
  `pengajuan_id` varchar(50) DEFAULT NULL,
  `honor_id` char(36) DEFAULT NULL,
  `bos_id` char(36) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_oprationals`
--

CREATE TABLE `kas_oprationals` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `pos` text DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `setoran_id` char(36) DEFAULT NULL,
  `pengajuan_id` char(36) DEFAULT NULL,
  `bos_id` char(36) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_pips`
--

CREATE TABLE `kas_pips` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `tahun` text DEFAULT NULL,
  `bulan` text DEFAULT NULL,
  `kelas` text DEFAULT NULL,
  `pos` text DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `pengajuan_id` char(36) DEFAULT NULL,
  `spp_id` char(36) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kas_pips`
--

INSERT INTO `kas_pips` (`id`, `date`, `note`, `tahun`, `bulan`, `kelas`, `pos`, `debit`, `credit`, `pengajuan_id`, `spp_id`, `file`, `created_at`, `updated_at`) VALUES
('877de9b8-5e79-4276-90c9-38a329311857', '2024-01-04', 'Pembayaran SPP Muhamad Badri Tamami', '2024', 'Feb', '12 PERHOTELAN', 'Yatim', 0.00, 175000.00, NULL, '7243737d-c0ac-4376-92a1-3d7685eea2c2', NULL, '2024-01-04 08:20:17', '2024-01-04 08:20:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_sapras`
--

CREATE TABLE `kas_sapras` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `pos` text DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `setoran_id` char(36) DEFAULT NULL,
  `pengajuan_id` char(36) DEFAULT NULL,
  `bos_id` char(36) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_saprass`
--

CREATE TABLE `kas_saprass` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `pos` text DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `setoran_id` char(36) DEFAULT NULL,
  `pengajuan_id` char(36) DEFAULT NULL,
  `bos_id` char(36) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_spps`
--

CREATE TABLE `kas_spps` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `tahun` text DEFAULT NULL,
  `bulan` text DEFAULT NULL,
  `kelas` text DEFAULT NULL,
  `pos` text DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `setoran_id` char(36) DEFAULT NULL,
  `spp_id` char(36) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kas_spps`
--

INSERT INTO `kas_spps` (`id`, `date`, `note`, `tahun`, `bulan`, `kelas`, `pos`, `debit`, `credit`, `setoran_id`, `spp_id`, `file`, `created_at`, `updated_at`, `deleted_at`) VALUES
('17d71333-09a5-452e-aef5-9837ef24ec27', '2024-01-04', 'Adrian', '2024', 'Jan', '10 PERHOTELAN', 'SPPReguler', 175000.00, 0.00, NULL, 'dbe7e65a-691f-4913-8289-f1d5984c4c1f', NULL, '2024-01-04 08:10:29', '2024-01-04 08:10:29', NULL),
('32bd7683-6739-44e0-a981-f65a4886caa0', '2024-01-04', 'Muhamad Badri Tamami', '2024', 'Feb', '12 PERHOTELAN', 'SPP', 175000.00, 0.00, NULL, '7243737d-c0ac-4376-92a1-3d7685eea2c2', NULL, '2024-01-04 08:12:40', '2024-01-04 08:20:17', NULL),
('39cb856b-11d4-47c5-a8ee-b79a00a36d5f', '2024-01-04', 'Agus Muhammad Dalfa', '2023', 'Jan', '10 PERHOTELAN', 'SPPSKTM', 100000.00, 0.00, NULL, '24793d91-c9bb-4c80-9940-ff9a94ae9443', NULL, '2024-01-04 08:03:30', '2024-01-04 08:03:30', NULL),
('7ea71435-c5ee-4a4d-a532-50f750b302cb', '2024-01-05', 'Muhammad Fikri Afriansyah', '2023', 'Jul', '10 OTKP', 'SPPReguler', 175000.00, 0.00, NULL, '83df946f-8943-4677-a07f-b67154ec9347', NULL, '2024-01-05 04:33:57', '2024-01-05 04:33:57', NULL),
('bd41cbee-c5cd-453a-831b-ea7da69c8b29', '2024-01-04', 'Muhamad Badri Tamami', '2024', 'Jan', '12 PERHOTELAN', 'SPPYatim', 175000.00, 0.00, NULL, '41899ac5-ca83-4a6c-bee3-6757a86c7d95', NULL, '2024-01-04 07:57:15', '2024-01-04 07:57:15', NULL),
('d0f260b8-a862-4b83-8e54-cc195b162420', '2024-01-04', 'Ariyanto', '2024', 'Feb', '12 PERHOTELAN', 'SPPYatim', 175000.00, 0.00, NULL, 'be569240-b0f8-4113-8bbc-68a74a47c84e', NULL, '2024-01-04 08:11:41', '2024-01-04 08:11:41', NULL),
('d71cdf8a-cca4-430d-9275-a01a2d631bd4', '2024-01-05', 'Cindy Nurcahniaty', '2023', 'Jul', '10 OTKP', 'SPP', 175000.00, 0.00, NULL, 'ad704fce-5d68-4205-a2cb-4086619d1bf4', NULL, '2024-01-05 03:47:33', '2024-01-05 04:05:03', NULL),
('daff40ee-ba8c-4891-ad6c-938fb6246a30', '2024-01-04', 'Agus Muhammad Dalfa', '2024', 'Jan', '10 PERHOTELAN', 'SPP', 75000.00, 0.00, NULL, '0f01b939-58d7-4fce-8806-c3b8b1af41f3', NULL, '2024-01-04 08:02:32', '2024-01-04 08:04:11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_sumbangans`
--

CREATE TABLE `kas_sumbangans` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `kelas` text DEFAULT NULL,
  `pos` text DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `pemasukan_id` char(36) DEFAULT NULL,
  `setoran_id` char(36) DEFAULT NULL,
  `pengajuan_id` char(36) DEFAULT NULL,
  `spp_id` char(36) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kas_sumbangans`
--

INSERT INTO `kas_sumbangans` (`id`, `date`, `note`, `kelas`, `pos`, `debit`, `credit`, `pemasukan_id`, `setoran_id`, `pengajuan_id`, `spp_id`, `file`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0586e8d7-7cf7-46af-a1a3-41b626e198a5', '2024-01-05', 'Cindy Nurcahniaty', '10 OTKP', 'Pengembangan', 50000.00, 0.00, '9fb3efbf-32d6-4fbe-b34a-0e46a0260eb0', NULL, NULL, NULL, NULL, '2024-01-05 08:58:50', '2024-01-05 08:58:50', NULL),
('05b06de8-1d1c-4b80-9b95-152024a6cf20', '2024-01-03', 'Cindy Nurcahniaty', '10 OTKP', 'Pengembangan', 150000.00, 0.00, '197cd630-6562-430c-a520-3b0558155667', NULL, NULL, NULL, NULL, '2024-01-05 08:59:27', '2024-01-05 08:59:27', NULL),
('0b5ffaa4-7d89-4239-b351-59d0dfbfe605', '2023-10-31', 'Alwan Nesta', '12 PERHOTELAN', 'UJIAN SEKOLAH', 1000.00, 0.00, 'a3580fbe-f0c4-42c6-882e-40bcaa7acdf0', NULL, NULL, NULL, NULL, '2023-10-31 09:20:49', '2023-10-31 02:30:27', NULL),
('25757533-ec01-4d4a-b7b0-9fb5be511184', '2023-07-05', 'Cindy Nurcahniaty', '10 OTKP', 'UAS', 50000.00, 0.00, '3dcc2099-6696-412e-9f9c-0adca3365a8b', NULL, NULL, NULL, NULL, '2024-01-05 05:45:23', '2024-01-05 05:45:23', NULL),
('388fef83-976a-4111-8ca5-c3bba6d2669f', '2023-10-05', 'Cindy Nurcahniaty', '10 OTKP', 'RAPORT', 75000.00, 0.00, 'bd5e27bb-52d7-48b2-990f-c2fd855f125a', NULL, NULL, NULL, NULL, '2023-10-05 15:49:33', '2023-10-05 15:52:25', NULL),
('4c3a5ffa-f5f4-4abe-98f1-8eb8ee7ecbdd', '2023-09-14', 'Cindy Nurcahniaty', '10 OTKP', 'OSIS', 100000.00, 0.00, 'f487f0a8-58c5-4d02-988d-82726ed1ef6f', NULL, NULL, NULL, NULL, '2023-10-05 15:50:38', '2023-10-31 09:19:46', NULL),
('6c09279a-51ea-4ee8-b7fa-6a763d0c9899', '2024-01-05', 'Cindy Nurcahniaty', '10 OTKP', 'Pengembangan', 50000.00, 0.00, '1fdd4b7c-0a6e-4195-9cc0-1ad4b3d5049a', NULL, NULL, NULL, NULL, '2024-01-05 08:57:40', '2024-01-05 08:57:40', NULL),
('87c84afa-83f6-42f7-b5d4-b1e561260a1b', '2023-08-18', 'Cindy Nurcahniaty', '10 OTKP', 'Pendaftaran', 100000.00, 0.00, '20f1f035-74eb-4de4-bc9f-628a017e2001', NULL, NULL, NULL, NULL, '2024-01-05 05:51:33', '2024-01-05 08:52:31', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_umkms`
--

CREATE TABLE `kas_umkms` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `tahun` text DEFAULT NULL,
  `bulan` text DEFAULT NULL,
  `kelas` text DEFAULT NULL,
  `pos` text DEFAULT NULL,
  `debit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(13,2) NOT NULL DEFAULT 0.00,
  `pengajuan_id` char(36) DEFAULT NULL,
  `spp_id` char(36) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kas_umkms`
--

INSERT INTO `kas_umkms` (`id`, `date`, `note`, `tahun`, `bulan`, `kelas`, `pos`, `debit`, `credit`, `pengajuan_id`, `spp_id`, `file`, `created_at`, `updated_at`) VALUES
('be2d3d9f-a7f9-4ce0-b327-f03bf2603082', '2024-01-04', 'pembayaran SPPAriyanto', '2024', 'Feb', '12 PERHOTELAN', 'Yatim', 0.00, 175000.00, NULL, 'be569240-b0f8-4113-8bbc-68a74a47c84e', NULL, '2024-01-04 08:11:41', '2024-01-04 08:11:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `katalogs`
--

CREATE TABLE `katalogs` (
  `id` char(36) NOT NULL,
  `name` varchar(64) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoriinventories`
--

CREATE TABLE `kategoriinventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoriinventories`
--

INSERT INTO `kategoriinventories` (`id`, `kategori`, `created_at`, `updated_at`) VALUES
(2, 'Furniture', '2023-07-26 03:21:35', '2023-07-26 03:21:35'),
(3, 'Elektronik', '2023-07-26 03:21:47', '2023-07-26 03:21:47'),
(4, 'pecah belah', '2023-07-26 03:50:29', '2023-07-26 03:50:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` char(36) NOT NULL,
  `kategori1` varchar(255) NOT NULL,
  `kategori2` varchar(255) NOT NULL,
  `kategori3` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `kategori1`, `kategori2`, `kategori3`, `created_at`, `updated_at`, `deleted_at`) VALUES
('01bab96e-241d-4084-87c6-2609cd783cba', 'Unit Sekolah', 'SMK AL MUTTAQIEN', NULL, '2023-07-17 15:50:22', '2023-07-17 15:50:22', NULL),
('099efad4-266e-49cb-8c91-049c179aca0e', 'Pegawai', 'WALI KELAS', NULL, '2023-07-17 15:43:20', '2023-07-17 15:43:20', NULL),
('0a933597-60b6-4894-b72a-493b0c3f0ed2', 'Pemasukan', 'UAS', NULL, '2023-07-31 07:56:15', '2023-07-31 07:56:15', NULL),
('162f08bf-b4aa-46e7-bd41-19daa1c95199', 'Kelas', '12 PERHOTELAN', NULL, '2023-07-17 15:49:25', '2023-08-28 09:27:30', NULL),
('1aeb0159-1121-4f1c-aa21-de30d4ec8f66', 'Pemasukan', 'PTS 2', NULL, '2023-07-31 07:56:29', '2023-07-31 07:56:29', NULL),
('1d0f54d4-3e3a-46ad-949c-1cd33aaed598', 'Pegawai', 'PEMBINA OSIS', NULL, '2023-07-17 15:40:46', '2023-07-17 15:40:46', NULL),
('22058eca-bd35-4818-b874-7fbb69aa9f9f', 'Pengajuan', 'KENAIKAN KELAS DAN STUDY TOUR', NULL, '2023-07-31 08:03:50', '2023-08-24 20:22:18', NULL),
('222a2d9d-1180-43c2-88ef-650a36f60578', 'Pemasukan', 'UJIKOM', NULL, '2023-07-31 07:58:27', '2023-07-31 07:58:27', NULL),
('23b8948b-9483-4829-ab4a-60058f68220b', 'Pengajuan', 'SERVIS', NULL, '2023-08-15 21:26:09', '2023-08-24 20:22:32', NULL),
('268ef5b2-ee4c-4419-9192-8e7717d7682a', 'Pemasukan', 'SPP', NULL, '2023-12-05 13:14:24', '2023-12-05 13:14:24', NULL),
('288d37dc-16dd-4ae7-8417-5d2b5b5a6e9a', 'Pemasukan', 'RAPORT', NULL, '2023-07-31 07:55:02', '2023-07-31 07:55:02', NULL),
('31c5d489-200f-41cb-b8ae-6117cf0259a5', 'Pemasukan', 'DANA BOS', NULL, '2023-08-15 21:15:51', '2023-08-15 21:15:51', NULL),
('3367ad00-5cc4-4147-bdbf-c61f69db23e3', 'Pengajuan', 'SAMPUL IJAZAH', NULL, '2023-07-31 08:07:58', '2023-08-24 20:22:46', NULL),
('342485a2-7a6e-453a-8dba-6b1199790bfa', 'Organisasi', 'OSIS', NULL, '2023-07-17 15:53:17', '2023-07-17 15:53:17', NULL),
('370ce828-132c-4a72-96a2-250c9870d943', 'Pemasukan', 'FOTO', NULL, '2023-07-31 07:54:50', '2023-07-31 07:54:50', NULL),
('3864f5e4-e504-49ca-8290-bfb7d4d41373', 'Pemasukan', 'DAFTAR ULANG', NULL, '2023-08-15 21:13:00', '2023-08-15 21:13:00', NULL),
('3b8bce50-6e81-417b-937d-6dfe48d752f0', 'Pengajuan', 'PRAKERIN', NULL, '2023-07-31 08:04:02', '2023-08-24 20:22:59', NULL),
('3cddf94f-9758-467a-8b34-120f1041d5f2', 'Pegawai', 'STAFF KEUANGAN', NULL, '2023-07-17 15:44:30', '2023-07-17 15:44:30', NULL),
('3ce14bcc-05dc-4209-9a5b-30fdbfe93f04', 'Pengajuan', 'internet', NULL, '2023-09-06 02:16:35', '2023-09-06 02:16:35', NULL),
('41cc887d-0a07-4bd4-9fec-f74c83dc56ed', 'Ektrakurikuler', 'VOLLY BALL', NULL, '2023-07-17 15:55:42', '2023-07-17 15:55:42', NULL),
('49f8e3ab-17cd-47e4-bdb8-8ad06f857e6a', 'Pegawai', 'GURU PRAMUKA', NULL, '2023-07-18 11:23:29', '2023-07-18 11:23:29', NULL),
('4e1b1471-5f81-43db-913e-34bdc1a6c79c', 'Pengajuan', 'ATK', NULL, '2023-09-06 02:00:10', '2023-09-06 02:00:10', NULL),
('5073c2d1-562e-43f0-b9bd-bbf4a3c6eb82', 'Pemasukan', 'LDKS', NULL, '2023-07-31 07:56:00', '2023-08-03 12:26:59', NULL),
('50b356fe-090d-4900-8e96-e1e8ba904a69', 'Pengajuan', 'SERAGAM', NULL, '2023-07-31 08:01:50', '2023-08-24 20:23:23', NULL),
('51d16a5d-487a-418e-8b11-fda68094ff51', 'Pemasukan', 'MPLS', NULL, '2023-07-31 07:53:29', '2023-07-31 07:53:29', NULL),
('528b99c3-129e-4534-9223-b32a1b3b0ce4', 'Pengajuan', 'MPLS', NULL, '2023-07-31 08:00:05', '2023-08-24 20:23:37', NULL),
('544e3471-6ba2-451b-a6f7-87fbe6b01b82', 'Ektrakurikuler', 'PRAMUKA', NULL, '2023-07-17 15:54:06', '2023-07-17 15:54:06', NULL),
('55b8ea7b-da1b-4563-9f94-7a2e242f8fe7', 'Pengajuan', 'RAPORT', NULL, '2023-07-31 08:01:39', '2023-08-24 20:23:48', NULL),
('58530ed3-6503-49ac-b83e-bc381d385798', 'Tahun Ajaran', '2024/2025', NULL, '2023-10-09 11:39:28', '2023-10-09 11:39:28', NULL),
('5c109736-fe35-49b9-91c2-9b9b8db69a28', 'Pengajuan', 'PTS 2', NULL, '2023-07-31 08:03:22', '2023-08-24 20:24:00', NULL),
('5d31a73d-8f79-4aaf-a9eb-586921854365', 'Pegawai', 'GURU PIKET', NULL, '2023-07-17 15:46:06', '2023-07-17 15:46:06', NULL),
('5f182c87-f5b2-4b5d-b859-fac7084848a5', 'Ektrakurikuler', 'BADMINTON', NULL, '2023-08-15 10:50:13', '2023-08-15 10:50:13', NULL),
('63008885-0c9d-4907-89e3-185d7c1d59fc', 'Pengajuan', 'KONSUMSI GURU', NULL, '2023-08-15 21:25:22', '2023-08-24 20:23:11', NULL),
('65336b3e-d261-4d81-89ad-b242107edd26', 'Pegawai', 'PENJAGA', NULL, '2023-07-18 16:55:02', '2023-07-18 16:55:02', NULL),
('669c1d9f-9249-4b65-ae2b-46f469906451', 'Pegawai', 'SATGAS', NULL, '2023-07-28 16:59:26', '2023-07-28 16:59:26', NULL),
('66f6b6b6-4e9e-44bc-8a2b-16f571eec86a', 'Inventaris', 'ELEKTRONIK', NULL, '2023-07-17 15:51:25', '2023-07-17 15:51:25', NULL),
('67c2399f-b8e8-4348-8638-fb924aa72fae', 'Pegawai', 'WK KESISWAAN', NULL, '2023-07-17 15:39:55', '2023-07-17 15:39:55', NULL),
('68c2158a-9036-4f64-966f-612025bf794c', 'Pegawai', 'WK KURIKULUM', NULL, '2023-07-17 15:39:39', '2023-07-17 15:39:39', NULL),
('71de5613-b953-47fd-aaf0-dcc74268f0f1', 'Pegawai', 'BENDAHARA SEKOLAH', NULL, '2023-07-17 15:44:16', '2023-07-17 15:44:16', NULL),
('79782a63-2b46-48bb-bf51-6d2b53dc25b9', 'Kelas', '11 OTKP', NULL, '2023-07-17 15:49:10', '2023-08-28 09:27:44', NULL),
('79aedda5-d13d-4b0d-9b9a-c6e15379aef5', 'Pegawai', 'OB', NULL, '2023-07-18 16:55:11', '2023-07-18 16:55:11', NULL),
('7f4b7a8c-ea22-4174-8325-592f5b3ae74c', 'Pengajuan', 'OPRASIONAL', NULL, '2023-08-15 21:26:21', '2023-08-24 20:24:19', NULL),
('871ca11e-3405-46b2-9bf5-a040c330d487', 'Pengajuan', 'OSIS', NULL, '2023-07-31 07:59:33', '2023-08-24 20:24:12', NULL),
('8ab8fd3d-e1f3-47ba-be66-57ac771de69f', 'Pengeluaran', 'SETORAN SUMBANGAN', NULL, '2023-08-24 20:28:15', '2023-08-24 20:28:15', NULL),
('94042932-0431-4c04-85d9-84a9764ea806', 'Tahun Ajaran', '2023/2024', NULL, '2023-07-17 15:52:57', '2023-07-17 15:52:57', NULL),
('94e08e53-961e-430d-9927-46d9195a4144', 'Pengeluaran', 'SETORAN SPP', NULL, '2023-08-03 12:27:40', '2023-08-24 20:27:59', NULL),
('96a4a10d-46a2-421d-a832-0f1eb2eeef11', 'Pemasukan', 'Alumni Al Muttaqien', NULL, '2023-09-18 09:43:16', '2023-09-18 09:43:16', NULL),
('97466e57-3c11-4240-a620-2eda6c0f1445', 'Tahun Ajaran', '2021/2022', NULL, '2023-07-17 15:52:13', '2023-07-17 15:52:13', NULL),
('97d62fab-932f-470b-9f11-e21a78baa164', 'Kelas', '10 OTKP', NULL, '2023-07-17 15:48:28', '2023-08-28 09:27:58', NULL),
('9836f30f-e73a-4de1-998d-821d59661432', 'Pemasukan', 'Pendaftaran', NULL, '2023-09-11 09:06:00', '2023-09-11 09:06:00', NULL),
('9a12bbae-fe0f-4883-85e9-5f9c945483c6', 'Pegawai', 'WK SANPRAS', NULL, '2023-07-17 15:40:07', '2023-07-17 15:40:07', NULL),
('9cb11445-349f-4309-8f04-fdc647d99722', 'Inventaris', 'FUNITURE', NULL, '2023-07-17 15:51:01', '2023-07-17 15:51:01', NULL),
('9dc52e48-92bb-4ca9-880b-53f7a115c805', 'Pemasukan', 'PRAKERIN', NULL, '2023-07-31 07:57:25', '2023-07-31 07:57:25', NULL),
('9df7e0de-b63d-4aac-b02a-543acad8b505', 'Ektrakurikuler', 'PENCAK SILAT', NULL, '2023-08-10 10:48:47', '2023-08-10 10:48:47', NULL),
('9e0d18fc-b82d-44d8-b67c-69d704c9345f', 'Tahun Ajaran', '2022/2023', NULL, '2023-07-17 15:52:41', '2023-07-17 15:52:41', NULL),
('9f35ad3f-f11a-4290-bb15-76f19080b889', 'Pegawai', 'KEPALA SEKOLAH', NULL, '2023-07-17 15:39:22', '2023-07-17 15:39:22', NULL),
('a209e0ab-848a-41f4-a94f-3120f3a45b6b', 'Pemasukan', 'HUBIN', NULL, '2023-07-31 07:57:55', '2023-07-31 07:57:55', NULL),
('a79647c1-65f1-4a5c-abe3-9f171bf35944', 'Kelas', '10 PERHOTELAN', NULL, '2023-07-17 15:48:08', '2023-08-28 09:28:14', NULL),
('a7b0c086-b827-4b66-a28b-a13bf4e567aa', 'Pegawai', 'TATA USAHA', NULL, '2023-07-17 15:44:55', '2023-07-17 15:44:55', NULL),
('abf7f067-3381-4fac-9a0f-13d8f5233d41', 'Pemasukan', 'KENAIKAN KELAS DAN STUDY TOUR', NULL, '2023-07-31 07:57:03', '2023-07-31 07:57:03', NULL),
('acdecc04-42b6-4721-a4f4-f88fd595a1d7', 'Pengajuan', 'KEGIATAN SEKOLAH', NULL, '2023-08-15 21:25:06', '2023-08-24 20:24:57', NULL),
('b169c27a-8c06-4c21-aada-c40c34473d20', 'Pengajuan', 'UAS', NULL, '2023-07-31 08:03:11', '2023-08-24 20:25:06', NULL),
('b29373aa-3d69-420b-9f2a-72ed4a36cd39', 'Pemasukan', 'SERAGAM', NULL, '2023-07-31 07:55:15', '2023-07-31 07:55:15', NULL),
('b3a65b86-849b-4be1-b1e7-d9ad0b6cb895', 'Pemasukan', 'OSIS', NULL, '2023-07-31 07:52:29', '2023-07-31 07:52:29', NULL),
('bbcc8532-3559-4a8e-a9ac-0266b6c88ba3', 'Pegawai', 'KEPALA LAB KOMPUTER', NULL, '2023-07-17 15:45:25', '2023-07-17 15:45:25', NULL),
('be1eac7e-0e29-4e46-bcbf-4bfe9a21cd7d', 'Pegawai', 'WK KAPROG OTKP', NULL, '2023-07-17 15:45:53', '2023-07-17 15:45:53', NULL),
('c228f1d7-a976-40ee-ade8-7c747071d975', 'Pengajuan', 'UJIAN ASSESMENT', NULL, '2023-07-31 08:04:15', '2023-08-24 20:24:38', NULL),
('c255d5aa-fde4-47db-b102-09b2097363af', 'Kelas', 'LULUS', NULL, '2023-08-28 09:29:57', '2023-08-28 09:29:57', NULL),
('c5b27d15-e458-4161-86f6-f2bd35ebe590', 'Pengajuan', 'UJIKOM', NULL, '2023-07-31 08:07:39', '2023-08-24 20:26:31', NULL),
('c8489afd-041e-4322-874b-270318f920d4', 'Pengajuan', 'FOTO', NULL, '2023-07-31 08:01:20', '2023-08-24 20:25:28', NULL),
('ca61508d-63ad-4436-9775-cad9ed154e8d', 'Pengajuan', 'UJIAN SEKOLAH', NULL, '2023-07-31 08:07:22', '2023-08-24 20:26:20', NULL),
('cdf2bd37-b26a-49b6-a8c6-094b0cc7d357', 'Pemasukan', 'SAPRAS', NULL, '2023-07-31 07:54:13', '2023-09-06 02:13:00', NULL),
('d7fcd104-760c-440c-97a8-157962c37b7d', 'Pengajuan', 'HUBIN', NULL, '2023-07-31 08:07:00', '2023-08-24 20:25:19', NULL),
('db709622-9459-4377-af28-d6f2d12b0d0c', 'Pengajuan', 'TRANSPORT', NULL, '2023-08-15 21:24:53', '2023-08-24 20:26:57', NULL),
('dd05db76-3a3c-4b9b-b012-8eb9b534b1f3', 'Kelas', '12 OTKP', NULL, '2023-07-17 15:49:40', '2023-08-28 09:28:26', NULL),
('de315ced-8904-4eca-8b09-2334fa38d0e8', 'Pemasukan', 'PAT', NULL, '2023-07-31 07:56:39', '2023-07-31 07:56:39', NULL),
('df6b340d-b532-46ef-b985-b56888bb370b', 'Pegawai', 'WK KAPROG PERHOTELAN', NULL, '2023-07-17 15:44:00', '2023-07-17 15:44:00', NULL),
('e111296a-a6c5-432f-9bea-c57099e0be69', 'Ektrakurikuler', 'FUTSAL', NULL, '2023-07-17 15:55:04', '2023-07-17 15:55:04', NULL),
('e196211e-4f9c-4338-9439-9e37f71cad5b', 'Pemasukan', 'PTS', NULL, '2023-07-31 07:55:27', '2023-07-31 07:55:27', NULL),
('e40ada5d-fdb7-4b8c-93a7-626dc707ddf9', 'Pengajuan', 'PAT', NULL, '2023-07-31 08:03:36', '2023-08-24 20:26:07', NULL),
('e69bb106-92a5-4755-98fd-09a63fbcaba6', 'Pemasukan', 'SAMPUL IJAZAH', NULL, '2023-07-31 07:59:10', '2023-07-31 07:59:10', NULL),
('e833d5a5-f6f3-4c7b-a402-c8473d1e4a1c', 'Pengajuan', 'PTS', NULL, '2023-07-31 08:02:08', '2023-08-24 20:25:57', NULL),
('e8394cc2-e109-4c7e-a27e-c9b5b80561c3', 'Pemasukan', 'UJIAN ASSESMENT', NULL, '2023-07-31 07:57:43', '2023-07-31 08:05:06', NULL),
('e8b509ee-f13a-4915-92a3-4458762eb69e', 'Pemasukan', 'Pengembangan', NULL, '2023-09-14 08:15:44', '2023-09-14 08:15:44', NULL),
('e8f1a32f-5c34-4c97-aae9-bf5ca89ca8a9', 'Kelas', '11 PERHOTELAN', NULL, '2023-07-17 15:48:57', '2023-08-28 09:28:36', NULL),
('ea17d607-ebca-48ed-a102-8bc5775d8acf', 'Pengajuan', 'LDKS', NULL, '2023-07-31 08:02:35', '2023-08-24 20:25:47', NULL),
('ee8e4f77-bdf2-4a33-9e1e-7b5292d977cb', 'Pemasukan', 'UJIAN SEKOLAH', NULL, '2023-07-31 07:58:13', '2023-07-31 07:58:13', NULL),
('f36bacb4-0058-4722-9af2-3c40c2bb9e35', 'Pengajuan', 'SAPRAS', NULL, '2023-07-31 08:01:05', '2023-09-06 02:13:31', NULL),
('f5e716e4-ccfa-419d-a8cb-5bf898cc33f0', 'Pengajuan', 'Listrik', NULL, '2023-09-06 02:16:07', '2023-09-06 02:16:07', NULL),
('f999b58b-4d32-4052-a17d-d96fef81b618', 'Pegawai', 'GURU', NULL, '2023-07-17 15:46:20', '2023-07-17 15:46:20', NULL),
('ffe956d8-de5a-4ab5-a3fb-5bd979546524', 'Pegawai', 'BK', NULL, '2023-07-17 15:43:02', '2023-07-17 15:43:02', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelass`
--

CREATE TABLE `kelass` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `semester` varchar(255) NOT NULL,
  `wali` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelass`
--

INSERT INTO `kelass` (`id`, `name`, `gender`, `kelas`, `tahun`, `kategori`, `semester`, `wali`, `created_at`, `updated_at`, `deleted_at`) VALUES
('011fdd1f-7f94-403b-97a6-f861ab93db1b', 'Ai Rahmawati', 'Perempuan', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('01e45c53-5026-42a8-9ba2-44b65a8dfe01', 'Ade Ahmad', 'Laki-laki', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('06c4dbcf-86a8-4560-99f7-155acfb65ce1', 'Muhamad Rehan', 'Laki-laki', 'XI OTKP', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('0708fa0f-5c5c-4f78-81ef-0d1a1d29df84', 'Silpi Nuraeni', 'Perempuan', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('0e0a6a54-26f0-4728-9b48-423f0da1ddcf', 'Aditia Teguh Pradana', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('0ed62a1a-7b8a-4cf7-a51d-996d184b25f3', 'Agus Muhammad Dalfa', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'SKTM', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('0ed86dea-d109-47f8-9b34-085c2dedce43', 'Muhamad Ilham', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('105c5978-049c-4ee2-86d2-296171d4bcf4', 'Muhamad Abdul Reza', 'Laki-laki', 'XI PERHOTELAN', '2022/2023', 'Yatim', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('133b78f0-fe70-4669-a232-16cb0ae6a503', 'Aliza Nurul Mutia', 'Perempuan', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('1382b4f6-afe0-444d-bda2-db6343205fe2', 'Sindi', 'Perempuan', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('145799bc-7254-4966-a8e4-e2c4bd2e3dbf', 'Irpan', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Yatim', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('146b4a97-e170-4863-bff9-496466e44b29', 'Sherly Lestiani', 'Perempuan', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('18a1ab6e-b6a6-44a7-884e-d7a60f99c1af', 'Ai Diniah Nur Sopiah', 'Perempuan', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('25a25a47-fa5b-4fc3-b8ef-7a1a6893d020', 'Mustopa', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('3030bc11-b520-41da-9a5a-9dd37f6412da', 'Cikal Zul Karnain', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'SKTM', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('3246a4c0-a14f-4d63-9de6-3fa6171b02a1', 'Rama Agus Razabi', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('356498fc-593f-4cd4-a6e0-c21b3d79b98c', 'Bunga Harvesta', 'Perempuan', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('35ad49fd-a466-459c-8300-dd8b525576e4', 'Selia Anata', 'Perempuan', 'XI PERHOTELAN', '2022/2023', 'Yatim', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('38718a74-5647-4a70-a38b-d0302ff86371', 'Sarip Hidayatulloh', 'Laki-laki', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('3e6fbd29-cfe8-41bc-9fe9-7272fe2455c3', 'Rahkaman Herdian', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('4005c31a-426a-449c-ab89-a113beda36d8', 'Alwan Nesta', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('424c392e-5485-4e10-9361-42d0c4f87774', 'Faisal', 'Laki-laki', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('479b7e05-e4a0-4d20-aa45-6ca6a67931ff', 'Septiyani Saputri', 'Perempuan', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('49f3abb2-aaa6-4730-95b8-e245c446d3d9', 'Muhamad Hamdani', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('50558f28-11cb-4300-b78c-aff95bba1da1', 'Muhamad Revaldi', 'Laki-laki', 'XII OTKP', '2021/2022', 'SKTM', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('52ab9833-2705-4664-adb6-44070e7e040a', 'Ariyanto', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Yatim', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('5a859f9a-f80d-443f-8a69-6a8803adc046', 'Muhammad Atin', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Yatim', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('5a8f3625-b787-481c-8859-00af7ff17f9e', 'Sarah', 'Perempuan', 'X OTKP', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('5c20da1a-cf1b-4d1f-bfcc-780344768721', 'Muhammad Fikri Afriansyah', 'Laki-laki', 'X OTKP', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('616bdcc8-3670-494a-9e31-b6258db18f37', 'Muhamad Luayyudin', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Yatim', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('6251865d-392d-4cfb-86a4-43248fd01786', 'Nugi Oliansyah', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('62f02327-3c0e-4d60-9d5b-9f2b13f5d0a8', 'Muhammad Saidil Adha', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('6326b49f-7d5e-421f-88d1-be5ea1b523a7', 'M Rifaldo', 'Laki-laki', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('6d0677bd-1662-4893-a57e-3b3016a6e6d0', 'Ela Rahmawati', 'Perempuan', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('6e26f5f9-99eb-4f7c-8793-c6316fe0750e', 'Muhammad Yoga Pratama', 'Laki-laki', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('6e9f36be-1426-44e4-a24a-ecbc558f4121', 'Rizki', 'Laki-laki', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('719cd3f6-0722-4e3b-a98e-48c59aac12a3', 'Adiansyah Saputra', 'Laki-laki', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('7741b38d-c61a-495c-ad98-cde35a1817f1', 'Riyan Maulana', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('7a058985-d31d-4850-8a0a-77beb0a70903', 'Usman', 'Laki-laki', 'XI OTKP', '2022/2023', 'Yatim', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('7fd8074a-a0d1-418f-a516-311cf87ef86c', 'Jamal', 'Laki-laki', 'XI OTKP', '2022/2023', 'Yatim', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('82318b7b-0655-4ede-8ffd-8bc49ea0ff23', 'Cindy Nurcahniaty', 'Perempuan', 'X OTKP', '2023/2024', 'SKTM', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('83db2f74-eff2-4aeb-85eb-d9feb1888b53', 'Nia Unia', 'Perempuan', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('84c42484-1c3f-482c-9153-e82789a3e1e2', 'Abdul Azis', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('8565b825-bc80-4eaa-baf0-13c20b1b7cea', 'Dimas Maulana', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Yatim', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('8859b4dc-65fc-4ef4-997a-385328e59afd', 'Muhamad Yusuf', 'Laki-laki', 'XII OTKP', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('897e2896-6e1d-4ab5-9dfc-9d5e543578a3', 'Dirga', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('8b77bbd7-d7a9-497f-9f76-d9a95464030d', 'Sari', 'Perempuan', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('8d825f2c-a41c-45ff-8c10-7bd6eeb3a17d', 'Muhamad Ichsan Candra Saputra', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('8dcc3663-d3fc-4b6f-8c7d-d8d0ce2080b3', 'Muhidin', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('90c12cda-716f-4f80-b2ed-d207c1b0e075', 'Asih', 'Perempuan', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('944537e6-a922-4b17-aede-f14ae658e46e', 'Muhamad Riski', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('97da0e6a-bb07-4da8-b205-d06f34166378', 'Muhamad Badri Tamami', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('9e1448c7-f5d0-4bef-b2a1-5e6cdd7332aa', 'Andika', 'Laki-laki', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('a43b9de4-1462-4d03-8a48-3117ee25a8de', 'Junaidi Ragil Dewa Pratama', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('a8d69286-010e-4f0d-9d4f-d47b95cca199', 'Herlan Maulana', 'Laki-laki', 'XI OTKP', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('a8f29d8d-1eac-4d85-9711-e43631199810', 'Hilda Fitriyani', 'Perempuan', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('ab0b836d-b5cb-4c05-aa2a-c5e13b0ee063', 'Muhamad Abdul Pakih', 'Laki-laki', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('b1990ca6-c8d6-4efe-ab1b-ab0f1f230897', 'Aditia', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Yatim', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('c49595f3-69fc-448b-adb8-28488371280d', 'Adrian', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'SKTM', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('c5cf4c7a-8698-465b-8ebf-a31950e55077', 'Octavia Indrianti', 'Perempuan', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('c7053e8f-fe73-4fc6-bc15-95c8b3d12316', 'Intan Nuraeni', 'Perempuan', 'XII OTKP', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('c77a3a95-d5de-4900-8735-001f146e3e29', 'Muhamad. Rizki', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('cd61ee50-0eb9-425b-a035-b6d1e7e681bb', 'Muhamad Aripin', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('cee58753-7abe-46d5-bad8-e8a6dbf72223', 'Neng Ratih', 'Perempuan', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('d02e9f9d-6040-415a-a8b7-4165dc555726', 'Merina', 'Perempuan', 'XII OTKP', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('d0d47e2f-f201-49c5-9ef0-9bd1e422007f', 'Siti Romadonnia', 'Perempuan', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('d1e71f17-e9eb-426c-affd-d235137fcefb', 'Misbah Anugrah', 'Laki-laki', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('d6466846-b9b1-476e-b728-d626befea194', 'Fitri Anggita', 'Perempuan', 'XII OTKP', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('de2ace99-ed78-4ce9-b286-301a72047fc5', 'Aditya Sauqi Sabililah', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('dfba53d5-5e07-4a22-add7-33fbc66c47f1', 'Muhamad Andri Ali Sandi', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('e07c2d0e-af6f-4f7f-9258-1af05f3d33f3', 'Muhamad Tomi Aditia', 'Laki-laki', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('e4384846-b9e6-4709-8c8c-779dde6dea3a', 'Riki Saputra', 'Laki-laki', 'XII OTKP', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('e8929b30-159b-4395-a9d7-040fcfcdf24a', 'Fitriya Azzahra', 'Perempuan', 'XI OTKP', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('e8cd0e73-7629-420f-aded-bb8d1e3bb618', 'Muhamad Anggi', 'Laki-laki', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('ea9ecc54-ab70-4888-ac05-7c6bb9e66b30', 'Alma Febrianti', 'Perempuan', 'XII PERHOTELAN', '2021/2022', 'Reguler', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('ec5abda9-a6b7-4aa0-813a-b2c653d967c3', 'Nia', 'Perempuan', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('f1c72e58-ef25-4fd6-a932-934bc54190e0', 'Rico Harianto', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Yatim', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('f4789b10-d681-4875-8704-14f4b9c6495f', 'Muhamad Renaldi', 'Laki-laki', 'XII OTKP', '2021/2022', 'SKTM', 'Ganjil', 'TITIK FARIDA, S Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('fb4f7f38-6643-4d9f-812f-4bcb0d1056e7', 'Aura Kasih', 'Perempuan', 'XI PERHOTELAN', '2022/2023', 'Reguler', 'Ganjil', 'ELA LAELA, S.Pd.I', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL),
('fb77bc09-61a3-48af-ad67-a71606dd7130', 'R. M. Ikbal Al Sabil', 'Laki-laki', 'X PERHOTELAN', '2023/2024', 'Reguler', 'Ganjil', 'TITIB, S.Pd', '2023-08-16 01:34:08', '2023-08-16 01:34:08', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konselings`
--

CREATE TABLE `konselings` (
  `id` char(36) NOT NULL,
  `siswa_id` varchar(50) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `problem` text NOT NULL,
  `action` text NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `konselings`
--

INSERT INTO `konselings` (`id`, `siswa_id`, `name`, `kelas`, `problem`, `action`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES
('170a9596-eba9-4251-807e-e29287e2a6c0', NULL, 'Muhammad Yoga Pratama', '11 PERHOTELAN', 'Sering Bolos dan Tidak sampai kesekolah', 'Dibina oleh wali kelas dan Kesiswaan, lewat nasihat dan membuat pernyataan secara tertulis yg di TTD oleh ybs, wali murid, walikelas, kesiswaan dan kepala sekolah', 'Pembinaan berkelanjutan', '2023-09-25 10:19:08', '2023-09-25 10:19:08', NULL),
('18328797-48e8-4ab9-9099-f4d6c6e39113', NULL, 'Aditya Sauqi Sabililah', '12 PERHOTELAN', 'Tidak mengikuti kegiatan perlombaan 17 Agustus 2023', 'Dibina oleh wali kelas dan Kesiswaan, lewat nasihat dan membuat pernyataan secara tertulis yg di TTD oleh ybs, wali murid, walikelas, kesiswaan dan kepala sekolah', 'Saya berjanji kedepannya akan berubah menjadi lebih baik dan tidak mengulangi lagi', '2023-09-25 10:34:58', '2023-09-25 10:34:58', NULL),
('30378167-9016-4a1d-8ab6-6e6ffe2009fe', NULL, 'Muhamad Revaldi', '12 OTKP', 'Tidak mengikuti kegiatan perlombaan 17 Agustus 2023', 'Dibina oleh wali kelas dan Kesiswaan, lewat nasihat dan membuat pernyataan secara tertulis yg di TTD oleh ybs, wali murid, walikelas, kesiswaan dan kepala sekolah', 'Saya berjanji kedepannya akan berubah menjadi lebih baik dan tidak akan mengulangi nya lagi', '2023-09-25 10:37:45', '2023-09-25 10:37:45', NULL),
('3211e38f-c32e-4ed3-8424-073e5c9e4c6f', NULL, 'M Rifaldo', '11 PERHOTELAN', 'Tidak mengikuti kegiatan perlombaan 17 Agustus 2023', 'Dibina oleh wali kelas dan Kesiswaan, lewat nasihat dan membuat pernyataan secara tertulis yg di TTD oleh ybs, wali murid, walikelas, kesiswaan dan kepala sekolah', 'Saya berjanji akan berubah menjadi lebih baik dan tidak akan mengulangi nya lagi', '2023-09-25 10:32:45', '2023-09-25 10:32:45', NULL),
('4afe1b38-3cc8-4969-955f-1b2318cad0eb', '7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', 'Cindy Nurcahniaty', '10 OTKP', 'bolos  ke kantin saat jam pelajaran 3 kali berturut turut', 'di suruh habisakna 3 magkuk bakso sekaligus', 'jika mengulangi kembali akan di berikan skorsing dan pemanggilan orang tua', '2023-10-13 09:12:35', '2023-10-13 09:12:35', NULL),
('88ea8fc4-b188-48de-aee8-f91e54399b1e', NULL, 'Abdul Azis', 'XII PERHOTELAN', '-', '-', 'baik', '2023-07-17 20:51:09', '2023-07-17 20:53:13', '2023-07-17 20:53:13'),
('8f0d5a15-0857-43a5-850c-288c99dc2b0b', NULL, 'Ariyanto', '12 PERHOTELAN', 'Tidak mengikuti acara perlombaan 17 Agustus 2023', 'Dibina oleh wali kelas dan Kesiswaan, lewat nasihat dan membuat pernyataan secara tertulis yg di TTD oleh ybs, wali murid, walikelas, kesiswaan dan kepala sekolah', 'Saya berjanji akan berubah menjadi lebih baik untuk kedepannya', '2023-09-25 10:30:00', '2023-09-25 10:30:00', NULL),
('c77294f1-9328-4ba4-8458-564e64fba78e', NULL, 'Aditya Sauqi Sabililah', '12 PERHOTELAN', 'Tidak mengikuti kegiatan perlombaan 17 Agustus 2023', 'Dibina oleh wali kelas dan Kesiswaan, lewat nasihat dan membuat pernyataan secara tertulis yg di TTD oleh ybs, wali murid, walikelas, kesiswaan dan kepala sekolah', 'Saya berjanji kedepannya akan berubah menjadi lebih baik dan tidak mengulangi lagi', '2023-09-25 10:34:58', '2023-09-25 10:34:58', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_keuangans`
--

CREATE TABLE `laporan_keuangans` (
  `id` char(36) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_activities`
--

CREATE TABLE `log_activities` (
  `id` char(36) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `user_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `ip_address` text DEFAULT NULL,
  `device` text DEFAULT NULL,
  `location` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `log_activities`
--

INSERT INTO `log_activities` (`id`, `subject`, `url`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `ip_address`, `device`, `location`) VALUES
('00159405-3765-4bb5-89a5-872811b612b1', 'Bayar Spp-Agus Muhammad Dalfa (Feb 2024)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 03:48:00', '2024-01-04 03:48:00', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('006a961e-961f-4b40-90f5-f2bcc6d17ef2', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-05 15:56:34', '2023-10-05 15:56:34', NULL, '158.140.162.155', 'PC', 'Cibinong, West Java, ID'),
('008d5954-7c58-43e1-bdd8-3d4e901d7790', 'Bayar Spp-Alma Febrianti (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 08:12:51', '2023-09-25 08:12:51', NULL, '180.252.85.140', 'PC', 'Cibinong, West Java, ID'),
('00bafacb-a579-4df2-b8ee-603faade41b5', 'User Logout', 'http://127.0.0.1:8000/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-08-24 03:04:06', '2023-08-24 03:04:06', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('00bb9051-d93d-4e8e-956d-c6c6466c308e', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-12 15:43:45', '2023-10-12 15:43:45', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('00cd08ef-4819-4fad-8eab-dc43ea96d686', 'Bayar Spp-Muhamad Rehan (Jan 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-28 16:38:21', '2023-08-28 16:38:21', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('011252bf-705c-46f5-9589-82fb806e51b1', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-08 06:37:32', '2023-12-08 06:37:32', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('011c32ad-c5e8-4640-b562-b931128c29d5', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/bab75cfa-db0f-4776-832e-758eaeef44d4', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-11 08:05:07', '2023-09-11 08:05:07', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('015eac4f-284d-4bcc-b172-357556b62815', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:18:34', '2023-09-06 02:18:34', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('01680e12-62c4-4d43-a934-bfa8b508799c', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-11 07:04:44', '2023-12-11 07:04:45', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('01db0a02-90a0-436d-ab99-633633f03b6c', 'Tambah kategori', 'https://admin.smk-almuttaqien.sch.id/kategori', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:28:15', '2023-08-24 20:28:15', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('01e4d9db-039e-403d-86ab-f8b87039a9ff', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/bc8a6467-e99a-4738-88ef-8d31c92ed114', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-04 10:13:02', '2023-09-04 10:13:02', NULL, '180.251.180.234', 'Mobile', 'Bogor, West Java, ID'),
('01ed6a65-cc2e-41c4-9e97-ec349d42c15d', 'Hapus Data Pembayaran Spp Siswa', 'http://127.0.0.1:8000/spp/43951063-2f8d-4bce-a948-541f479eaea2', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 11:33:01', '2024-01-03 11:33:01', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('02622115-3a73-474c-bbac-b22ccf0de644', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-19 07:03:50', '2023-09-19 07:03:50', NULL, '114.4.214.232', 'PC', 'Jakarta, Jakarta, ID'),
('026a6ee2-b749-4c3d-9d4e-67cdf65eb59a', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:40:39', '2023-09-19 12:40:39', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('02738950-8943-4432-a9c2-283131db3cd4', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:20:59', '2023-09-06 02:20:59', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('02a9e3e4-6aa9-4e8f-b87d-c508354dd058', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-10 10:49:20', '2023-10-10 10:49:20', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('036be316-9e9e-4474-bef1-17ac8a1b80b4', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-13 16:53:17', '2023-09-13 16:53:17', NULL, '182.2.141.198', 'PC', 'Jakarta, Jakarta, ID'),
('03c7ff62-e0ee-4869-8fc0-38471538b0d8', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:28:22', '2023-09-06 02:28:22', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('03e485c3-95f6-40ac-8bc7-768d6db1e3e4', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/8ee4eb5d-3142-45bd-b02d-29b0b0ddb39a', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:36:09', '2023-09-06 08:36:09', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('03e53e6c-ed35-4d2c-bd5a-e48683fd6c10', 'Bayar Spp-Muhamad Rehan (Mar 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:29:45', '2023-09-18 09:29:45', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('041c17cf-099b-4e73-808b-db7dc09a50ca', 'Tambah data izin', 'https://demo.smk-almuttaqien.sch.id/absen_pegawai.buatizin', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-11 17:43:33', '2023-10-11 17:43:33', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('04569b44-303d-4c5c-baa6-71eaa14141d9', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:22:30', '2023-10-05 15:22:30', NULL, '158.140.162.155', 'PC', 'Cibinong, West Java, ID'),
('0490100b-cfcf-455c-88da-f58d0db3ef9e', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/a9d2e841-6482-4dc8-976d-f97d2b69730d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-06 10:25:45', '2023-10-06 10:25:45', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('04af3c71-0af4-41f2-9224-d062381a256e', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/69f19a54-3447-4673-92e5-15c91491d41d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:43:58', '2023-09-27 10:43:58', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('04cc07de-0214-49ca-8049-d6102d1c617d', 'Tambah Surat Keluar', 'https://admin.smk-almuttaqien.sch.id/surat-keluar', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-31 08:51:06', '2023-08-31 08:51:06', NULL, '180.251.181.141', 'Mobile', 'Bogor, West Java, ID'),
('05319993-7508-4757-b02b-1f9667d8c254', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/e3edecd7-7cd8-4d9f-b8d0-42869e496460', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:45:07', '2023-09-27 10:45:07', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('056cec21-4902-4cf2-858c-40a7e056493e', 'Tambah kategori', 'https://admin.smk-almuttaqien.sch.id/kategori', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:16:07', '2023-09-06 02:16:07', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('05d36fdf-c508-4fcc-8ae1-9fb0d13650bf', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-11 07:58:54', '2023-09-11 07:58:54', NULL, '120.188.6.155', 'PC', 'Jakarta, Jakarta, ID'),
('066cbe1b-f3f5-4e38-8680-aa445d04d422', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-06 01:56:58', '2023-09-06 01:56:58', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('067fa4f9-19ab-4e98-8ff2-74977d99dd1f', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/adaeaded-f513-4877-a9a5-8cd40d11dfd3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:07:29', '2023-09-06 02:07:29', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('0684c6e4-63de-4b81-9f88-3d013a56b9b6', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-08 08:10:20', '2023-09-08 08:10:20', NULL, '110.137.194.235', 'PC', 'Jakarta, Jakarta, ID'),
('069e8f0d-a120-4195-8c66-78d282018ca5', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-19 08:14:45', '2023-10-19 08:14:45', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('06c36563-eced-4203-89bf-566557649106', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '75133634-0814-4d4f-bc96-71e610bb6842', '2023-09-26 11:20:09', '2023-09-26 11:20:09', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('06e10316-0941-46b6-8e47-b2665df0fcef', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 08:57:13', '2023-09-22 08:57:13', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('0712bc2d-b2ef-44ef-aea8-f48a1e82870b', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 08:09:46', '2023-08-25 08:09:46', NULL, '140.213.26.202', 'Mobile', 'Tangerang, Banten, ID'),
('07534e78-fbdd-447d-8654-d5ee16bb4f16', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/915e4abb-8c36-44c9-a4ed-a2c6fa5b6a0c', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:28:17', '2023-09-06 08:28:17', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('0780e738-45e1-4e09-83f4-0acfc3eff7e3', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 08:36:39', '2023-09-22 08:36:39', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('07cb4856-40ee-4b73-a325-f6967577d251', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-20 08:09:56', '2023-09-20 08:09:56', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('0849df51-6684-4fea-b40b-5259b6842af6', 'Tambah Data Pemasukan Oprational', 'https://admin.smk-almuttaqien.sch.id/oprational/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:31:50', '2023-09-06 08:31:50', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('08688bcc-f64f-4195-9dfa-3219d5069aa0', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/c531dc3f-d5e9-4e38-9770-a7cb5cd8954d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:56:15', '2023-09-27 10:56:15', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('088b9880-45ec-4719-aa90-27af87d43851', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-20 07:06:15', '2023-09-20 07:06:15', NULL, '114.4.214.66', 'Mobile', 'Jakarta, Jakarta, ID'),
('089e3673-b63f-4c89-847c-8464c713ed0e', 'Tambah kategori', 'https://admin.smk-almuttaqien.sch.id/kategori', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-14 08:15:44', '2023-09-14 08:15:44', NULL, '140.213.130.226', 'Mobile', 'Jakarta, Jakarta, ID'),
('08a98ec7-395c-434e-9424-675760f4a60e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 07:17:08', '2023-09-25 07:17:08', NULL, '180.252.85.140', 'PC', 'Cibinong, West Java, ID'),
('08bbe4df-9350-458a-b0ee-4511410b7e42', 'Bayar Spp-Cindy Nurcahniaty (Jan 2024)', 'http://127.0.0.1:8000/spp/storereguler', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:49:25', '2024-01-03 10:49:25', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('08ddc4ac-05ad-4d26-956d-df983488d92d', 'Bayar Spp-Aditya Sauqi Sabililah (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-21 08:20:29', '2023-09-21 08:20:29', NULL, '114.4.214.155', 'PC', 'Jakarta, Jakarta, ID'),
('0955d5d6-e282-4c79-a0b7-0e38afa0c228', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-30 11:58:02', '2023-08-30 11:58:02', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('096c9144-3da3-48e0-8853-285bc8b6a589', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-09 14:53:16', '2023-10-09 14:53:16', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('0971536a-6578-4e71-944a-5e14fb05291e', 'User Login', 'https://demo.suryatama.tech/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-25 09:19:58', '2023-10-25 09:19:58', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('0a78cb61-bd95-4870-8d1a-30cf64a34812', 'Bayar Spp-Nia Unia (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 08:14:40', '2023-09-25 08:14:40', NULL, '180.252.85.140', 'PC', 'Cibinong, West Java, ID'),
('0a831930-9283-4a87-9685-aa4054f73251', 'Bayar Spp-Muhamad Abdul Pakih (Jun 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-11 11:07:54', '2023-09-11 11:07:54', NULL, '120.188.6.155', 'PC', 'Jakarta, Jakarta, ID'),
('0a8b5dd4-6115-483b-8388-29f251cd92e6', 'Tambah data izin', 'https://demo.smk-almuttaqien.sch.id/absen_pegawai.buatizin', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-19 10:52:23', '2023-10-19 10:52:23', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('0aad3779-5397-4ef8-bc52-21d2146cdf6a', 'Hapus Data Kas', 'https://admin.smk-almuttaqien.sch.id/kasbos/985de489-7680-4242-b19b-dc9086b9297b', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 00:57:32', '2023-09-06 00:57:32', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('0acc9187-8c94-4940-982e-9f9d4f020d3f', 'Bayar Spp-Ariyanto (Oct 2023)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 06:52:24', '2024-01-04 06:52:24', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('0af0a01b-ffe0-43b7-9f65-decf79ade6f5', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-13 10:16:17', '2023-09-13 10:16:17', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('0b2e744f-4e52-48d7-afe5-90aafaa82794', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 04:07:07', '2023-08-28 04:07:07', NULL, '125.160.146.127', 'PC', 'Jakarta, Jakarta, ID'),
('0b40c64c-32f7-4ad0-a27f-cedf9d389c77', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:27:53', '2023-09-06 02:27:53', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('0b8d9e39-09e9-4719-9afe-d6b350a5daf3', 'Hapus Data Kas', 'https://admin.smk-almuttaqien.sch.id/kasbos/121f9f12-cd7a-4310-a426-d1422b076c7d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 13:17:28', '2023-08-26 13:17:28', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('0ba87bc2-e15c-4b50-a757-8824f9933095', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'fdc3cdde-5b16-4b16-b73a-9511d997a4f6', '2023-09-26 11:20:40', '2023-09-26 11:20:40', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('0bd00660-4c6a-46e9-9699-bd0f103af5bd', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:21:31', '2023-09-19 13:21:31', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('0be13563-9858-4f38-8667-511566783cbe', 'Bayar Spp-Herlan Maulana (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 08:04:31', '2023-09-18 08:04:31', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('0c05fa1c-71d9-441b-87d5-738ab22843d6', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/1c08810a-6e3e-42fb-893e-7009d3e4dc0e', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:08:11', '2023-09-06 02:08:11', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('0c20cf1a-37dc-451b-8c9f-7659766c0f34', 'Bayar Spp-Aditya Sauqi Sabililah (Jan 2024)', 'http://127.0.0.1:8000/spp/storereguler', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 03:23:00', '2024-01-03 03:23:00', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('0c21928d-f1c6-4c5c-b1a3-18c36e638bab', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/8173576d-2a46-4902-95ff-3d06c667bd2a', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:25:52', '2023-09-06 08:25:52', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('0c319c5a-38b0-4e67-94de-5b5115441cc7', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-19 15:11:27', '2023-09-19 15:11:27', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('0c92f8ee-cbb9-4b8e-86ea-adeb8798f1ac', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-10 10:39:32', '2023-10-10 10:39:32', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('0cb3595f-f174-4c82-b5b5-92a71e949a9e', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-12 08:34:54', '2023-10-12 08:34:54', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('0ceb09fb-c91d-47eb-b245-c83e4610a849', 'Bayar Spp-Muhamad Riski (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-28 16:23:00', '2023-08-28 16:23:00', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('0cf407dc-58e5-4c3c-9e21-fd0cdd559b28', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-02 13:57:01', '2023-09-02 13:57:01', NULL, '114.4.215.116', 'Mobile', 'Jakarta, Jakarta, ID'),
('0d20a7ef-fc98-4df5-be57-be809707406b', 'Hapus Data Pembayaran Spp Siswa', 'http://127.0.0.1:8000/spp/25775a68-e246-4909-a87e-bb5534980c8e', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 13:28:46', '2024-01-03 13:28:46', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('0dabc885-9eec-4ddf-ab92-e78b5c2044a8', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/ce81315d-3bc4-454f-b141-3612f784b629', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 08:22:51', '2023-08-25 08:22:51', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('0db8b062-ffda-44fc-95c3-25222dc99162', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-25 15:08:12', '2023-08-25 15:08:12', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('0dbde1de-69b7-4590-bff8-72edc53fc6cb', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-19 08:14:07', '2023-10-19 08:14:07', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('0dd7fcc7-723c-4151-a2aa-c0b9144b9d9c', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 02:35:50', '2023-12-05 02:35:51', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('0e5b1c83-0fd7-48ce-b9e1-91cf24441d5e', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:41:25', '2023-09-19 13:41:25', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('0e671971-7e85-4d7a-80d4-1c4d566df714', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-09 09:02:26', '2023-10-09 09:02:26', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('0e7d9420-b052-4aa8-9003-752a7351878c', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-26 09:43:36', '2023-09-26 09:43:36', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('0e91d951-5dba-4513-97b1-06fdfce044f7', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/a0050570-cf3c-4269-b722-c7398efd0a7b', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:15:31', '2023-08-26 10:15:31', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('0eefce1c-1a2a-4d4c-8c38-f0e13795002e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-25 21:14:32', '2023-08-25 21:14:32', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('0ef79218-a260-47f8-b7f7-2ad255a57854', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/ce81315d-3bc4-454f-b141-3612f784b629', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 08:29:37', '2023-08-25 08:29:37', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('0f1e9ab8-f31a-4abe-8e35-a2f2b5d3ffa0', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:52:16', '2023-09-22 09:52:16', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('0f2656a3-5277-4e3a-a95e-e8f966bc4518', 'Hapus Data Kas KasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/5af41345-1a10-4783-96ae-1c9636abfe22', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 13:47:43', '2023-09-06 13:47:43', NULL, '103.123.250.71', 'PC', 'Jakarta, Jakarta, ID'),
('0f8a2d49-c023-4e70-9fb2-59e77890a678', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-05 15:22:24', '2023-10-05 15:22:24', NULL, '158.140.162.155', 'PC', 'Cibinong, West Java, ID'),
('0f95db9c-71dd-45f2-ab72-e486d0dc9113', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 11:56:33', '2023-09-19 11:56:33', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('0fa24d7b-661b-4d75-a043-b958d55df8fa', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/69f19a54-3447-4673-92e5-15c91491d41d', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 11:04:47', '2023-08-30 11:04:47', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('0fd0507a-cd05-48fe-a18d-b82028aca536', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/c3055bee-c812-44d9-8480-28d178ca42c3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:08:02', '2023-09-06 02:08:02', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('0ff2872e-383f-42ae-84d3-5e6a339f3e84', 'Edit Surat Masuk', 'https://admin.smk-almuttaqien.sch.id/surat-masuk/ed1ebbd2-3b51-4c44-afb3-7d7a7656470f', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 11:14:51', '2023-08-30 11:14:51', NULL, '114.10.65.28', 'Mobile', 'Jakarta, Jakarta, ID'),
('10533660-b391-44d1-be07-b12a548aba92', 'Bayar Spp-Agus Muhammad Dalfa (Aug 2023)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:20:15', '2024-01-04 07:20:15', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('106399d8-fd80-4bfa-a613-b162c836c75b', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/162a0e2e-e43e-4768-aa37-cc595337ccc9', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:53:15', '2023-09-27 10:53:15', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('10db93a2-24fc-4cc3-a0d8-1bf3e2ba53d3', 'Perbarui Spp-Muhamad Badri Tamami (Feb 2024)', 'http://127.0.0.1:8000/spp.7243737d-c0ac-4376-92a1-3d7685eea2c2.yaimupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 08:20:26', '2024-01-04 08:20:26', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('10fdbc69-a75e-4928-a914-df350a52de30', 'Bayar Spp-Abdul Azis (May 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-01 08:27:34', '2023-09-01 08:27:34', NULL, '114.4.215.116', 'PC', 'Jakarta, Jakarta, ID'),
('113f50fa-9ffc-4085-b397-aee3bfc26141', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 14:35:03', '2023-09-19 14:35:03', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('11444153-8930-4b53-a2fc-f39b292caf11', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 08:36:13', '2023-09-22 08:36:13', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('118c8ecd-af5b-44f1-a8be-6f30c084beb3', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:07:36', '2023-08-24 20:07:36', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('118e7b46-201a-4b94-bec9-8abae0ddb372', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:01:03', '2023-08-25 09:01:03', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('1190bfa8-0ac1-4cd5-b6c1-85f46d88f6e1', 'Bayar Spp-Muhamad Badri Tamami (Dec 2023)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 02:53:05', '2024-01-04 02:53:05', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('11fd9453-c3e7-49c6-b51d-0a8167eca9a6', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-13 08:37:17', '2023-10-13 08:37:17', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('1231db9c-e988-4d4a-b35e-16a526adea5c', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:34:07', '2023-09-19 13:34:07', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('124187c3-d7d9-4d11-8f49-5060dffdf5be', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/6034067f-8a89-4cc4-b219-2e6de206275d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:57:22', '2023-09-27 10:57:22', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('128ffad4-33c4-41ab-8897-49fc9cd2e863', 'Bayar Spp-Agus Muhammad Dalfa (Aug 2023)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:16:54', '2024-01-04 07:16:54', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('12c53f0b-cadf-420e-b6b0-60a0f68289d3', 'Bayar Spp-Muhamad Anggi (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-11 08:51:01', '2023-09-11 08:51:01', NULL, '120.188.6.155', 'PC', 'Jakarta, Jakarta, ID'),
('12cbd7c0-bb04-4ef1-809f-80261b4260a7', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/a37920d3-59d1-4523-8177-e42ad0dd5d3e', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-10 13:42:25', '2023-10-10 13:42:25', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('12ccf303-ddcb-425a-94af-c4ecd0272752', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-13 09:13:01', '2023-10-13 09:13:01', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('131738c9-5ac8-48d7-bd04-11a540611080', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/3c1c2a0d-f444-4ce8-941e-9f7f723375dd', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:46:57', '2023-09-27 10:46:57', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('132d2c52-10bb-4b4d-94e6-6505b6fd719d', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-04 12:25:11', '2023-09-04 12:25:11', NULL, '180.251.180.234', 'PC', 'Bogor, West Java, ID'),
('133a3059-37e8-446b-838e-d8b7a2328803', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store3', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:17:26', '2023-09-14 08:17:26', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('135774f4-653e-462c-b327-6b790c7274a6', 'Bayar Spp-Agus Muhammad Dalfa (Jul 2023)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:19:41', '2024-01-04 07:19:41', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('13710b94-c62d-4bc9-a952-5618f046e485', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-09 09:08:00', '2024-01-09 09:08:02', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('1388501b-eadb-4b14-802d-bed35cc738d1', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:33:18', '2023-09-19 13:33:18', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('139f7432-ed7a-4a26-a1fb-83a3414ca806', 'Tambah Surat Keluar', 'https://admin.smk-almuttaqien.sch.id/surat-keluar', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-14 06:58:10', '2023-09-14 06:58:10', NULL, '180.251.181.119', 'Mobile', 'Bogor, West Java, ID'),
('13ab5697-4f1f-4956-86be-b410f3cab5c6', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:35:21', '2023-09-19 13:35:21', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('13be04df-1603-4207-af4e-77d92a3e0d04', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/e2e20a8d-cca3-4569-a5f5-7bc7750e490a', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:24:14', '2023-09-06 08:24:14', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('13c39c72-5d9e-4d5e-8fde-a6a7ab2256d8', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/8f61978f-1dda-4ec1-b59b-b8138cbbbfa3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:08:26', '2023-09-06 02:08:26', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('13f196d3-02b6-42a6-9225-d50ddf1a9b92', 'Bayar Spp-Misbah Anugrah (Jun 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-28 16:21:20', '2023-08-28 16:21:20', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('140c31e5-4eae-4f88-8220-2eeaf9518f1a', 'Data Pengajuan Ditambahkan', 'https://demo.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-13 08:49:37', '2023-10-13 08:49:37', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('140ec6eb-b8e4-4096-ba54-a875f14b7932', 'Tambah Data Pemasukan kas BOPDA', 'http://127.0.0.1:8000/kasbopda/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:27:38', '2024-01-03 10:27:38', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('143a895f-d10e-4c9a-a048-1ba4d12b2b65', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-28 15:16:54', '2023-08-28 15:16:54', NULL, '140.213.132.167', 'Mobile', 'Tangerang, Banten, ID'),
('1440d936-65ff-4cd3-ba13-b9c1f7cf9dee', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-15 09:21:04', '2023-09-15 09:21:04', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('146170c2-1269-4c3b-b04f-662cb1e73b49', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:04:13', '2023-09-19 13:04:13', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('14686b90-2fda-4b60-84b3-f5794c4a20e5', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-14 08:15:05', '2023-09-14 08:15:05', NULL, '140.213.130.226', 'Mobile', 'Jakarta, Jakarta, ID'),
('1474abfa-3408-4c2a-83f9-6401fc78cff0', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/3367ad00-5cc4-4147-bdbf-c61f69db23e3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:22:46', '2023-08-24 20:22:46', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('148078c0-7bc9-4fd3-b684-5644920b702c', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 05:53:56', '2023-11-02 05:53:56', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('14a8c810-3f44-41bb-b0ea-b7eaacc77ff1', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/d6a9ab21-0230-4624-ab6d-705ce0c09d8f', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:49:01', '2023-09-27 10:49:01', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('153d3f76-cad0-427b-a5be-386eab5161fe', 'Bayar Spp-Agus Muhammad Dalfa (Jan 2025)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 07:14:41', '2024-01-03 07:14:41', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('155236c3-924b-4590-a415-ad08ce79eb7f', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-15 09:41:56', '2023-09-15 09:41:56', NULL, '114.10.30.54', 'PC', 'Jakarta, Jakarta, ID'),
('15908d95-8866-4de1-a27a-e009e033859a', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 01:36:28', '2024-01-04 01:36:30', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('15d571ac-a18b-4f1d-8ad6-ba4933208234', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 04:18:39', '2023-08-26 04:18:39', NULL, '125.161.91.238', 'PC', 'Jakarta, Jakarta, ID'),
('15ed0abf-f659-415c-aa9d-33f9e82f9650', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/22f2158b-2e21-4e11-9df3-a475923364c0', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:52:28', '2023-09-27 10:52:28', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('16159122-e363-44e3-9eca-8d6e1094a4fd', 'Bayar Spp-Muhamad Fahmi (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 11:43:41', '2023-09-25 11:43:41', NULL, '114.4.82.59', 'PC', 'Jakarta, Jakarta, ID'),
('16b76cdd-d98f-4898-ba0b-39c52f4ee1e7', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-19 08:21:42', '2023-10-19 08:21:42', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('16c3bd9a-61af-468c-99c4-10b7675be8f3', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/94e08e53-961e-430d-9927-46d9195a4144', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:28:00', '2023-08-24 20:28:00', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('16da8487-87b7-4405-b835-7930b9c174d4', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 13:46:32', '2023-09-06 13:46:32', NULL, '103.123.250.71', 'PC', 'Jakarta, Jakarta, ID'),
('1753cc15-10d6-428a-a998-567b61ce2df3', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:23:08', '2023-09-22 09:23:08', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('1757292a-e012-4b52-91be-1a9b0095780e', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/b03af459-786b-45e8-b1f2-66f1d05efe39', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:56:55', '2023-10-05 15:56:55', NULL, '158.140.162.155', 'PC', 'Cibinong, West Java, ID'),
('179f3a99-b4a8-4c95-aa9e-041c5bad2628', 'Bayar Spp-Abdul Azis (Mar 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-01 08:26:44', '2023-09-01 08:26:44', NULL, '114.4.215.116', 'PC', 'Jakarta, Jakarta, ID'),
('17cb5f6d-3709-474a-ab8c-333a8afa8a98', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 01:57:59', '2023-11-02 01:57:59', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('180295b0-11b0-4938-9d59-cc28973fb50c', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:05:44', '2023-09-19 12:05:44', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('1844eea1-d55f-45a7-8742-5ebb445605a6', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-14 16:08:54', '2023-09-14 16:08:54', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('186ff00d-5a7d-4f8a-8187-b508d1c56eac', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/b8fe38f9-d65e-47be-8d7e-d6927f1122c4', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:43:18', '2023-09-27 10:43:18', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('18913e8c-8259-4748-b6cb-892ab02d1823', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-13 08:38:51', '2023-10-13 08:38:51', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('192558fc-2189-4722-a7e9-171cffb2971b', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-19 12:28:11', '2023-09-19 12:28:11', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('193264f4-ea3b-4975-be71-d198918ff66b', 'Bayar Spp-Agus Muhammad Dalfa (Feb 2024)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:11:45', '2024-01-04 07:11:45', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('19734eea-ae42-429c-8722-216fe3c58ef0', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store1', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:10:26', '2023-09-14 08:10:26', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('19d6aebf-9b8c-4c8e-9d47-3076994c2e5d', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:23:30', '2023-09-06 02:23:30', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('19d9fa7b-ff64-459c-a4e0-9aa1d7faf02d', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-18 14:31:09', '2023-09-18 14:31:09', NULL, '158.140.162.155', 'PC', 'Bogor, West Java, ID'),
('19f95ba8-1d24-4e93-84c4-03bc06134bcd', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:47:34', '2023-09-19 13:47:34', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('1a395efd-e9eb-4be1-99a2-4320de3b228f', 'Perbarui Spp-Cindy Nurcahniaty (Oct 2023)', 'http://127.0.0.1:8000/spp.3c39435e-e1ed-4715-88af-e76a45504612.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 08:50:45', '2024-01-03 08:50:45', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('1a48f093-42d4-4b90-b0bf-4066715e43fd', 'Bayar Spp-Neng Ratih (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-25 08:12:11', '2023-08-25 08:12:11', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('1a7fa522-0d84-43f8-b491-0d40e5381d08', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store2', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 08:24:06', '2023-09-14 08:24:06', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('1b1f24ec-fcc7-4d62-9efa-9df0caf9d881', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-26 08:13:19', '2023-09-26 08:13:19', NULL, '180.252.90.192', 'PC', 'Bogor, West Java, ID'),
('1b1f4f55-aa72-4fc1-baff-545651a2e3da', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-26 08:37:08', '2023-08-26 08:37:08', NULL, '180.252.95.17', 'Mobile', 'Depok, West Java, ID'),
('1b36c4d6-86d1-4140-8152-2f8cdfc2c42a', 'Bayar Spp-Cindy Nurcahniaty (Jun 2023)', 'http://127.0.0.1:8000/spp/storereguler', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-05 03:47:43', '2024-01-05 03:47:43', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('1bf553d9-008c-44af-9d56-fd4bdf7e0d1d', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:04:22', '2023-09-19 12:04:22', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('1cd94820-44be-46f4-bc72-08daeb88025f', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:09:17', '2023-09-06 02:09:17', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('1d713eb7-8a02-4fee-82f8-7233ba7a53a0', 'User Login', 'http://127.0.0.1:8000/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-12-08 07:42:11', '2023-12-08 07:42:11', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('1d71f3fc-6587-4562-a86c-b20ed04a6a0c', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/7f4b7a8c-ea22-4174-8325-592f5b3ae74c', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:24:20', '2023-08-24 20:24:20', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('1e0b87cd-bf95-4eaa-b9ce-3760a93fa12f', 'Edit Data Pengguna', 'https://admin.smk-almuttaqien.sch.id/pengguna/fdc3cdde-5b16-4b16-b73a-9511d997a4f6', 'fdc3cdde-5b16-4b16-b73a-9511d997a4f6', '2023-09-26 11:20:33', '2023-09-26 11:20:33', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('1e0e0ec6-9680-41a5-8722-5918c87ff1ba', 'Tambah Surat Masuk', 'https://admin.smk-almuttaqien.sch.id/surat-masuk', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 11:14:32', '2023-08-30 11:14:32', NULL, '114.10.65.28', 'Mobile', 'Jakarta, Jakarta, ID'),
('1e4e7726-c85c-4720-88e3-26eb5b1bba12', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/03ff49b3-dd2a-440b-ae4c-66e3a885d645', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:26:36', '2023-09-06 08:26:36', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('1ec6c15e-6cf0-4ce6-8912-e3f5d99230b9', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/39dd9447-bf64-4e45-803d-8c490fc18b4a', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-25 09:29:54', '2023-08-25 09:29:54', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('1f00a438-c509-4973-b317-7ca9b6bf1805', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-14 12:02:32', '2023-09-14 12:02:32', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('1f4f2dcc-7f56-4fa1-8f12-11a67bc40289', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/f36bacb4-0058-4722-9af2-3c40c2bb9e35', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:25:39', '2023-08-24 20:25:39', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('1fbd2503-1824-44bb-944c-047f7e50cd82', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-13 08:11:44', '2023-09-13 08:11:44', NULL, '180.251.181.175', 'PC', 'Bogor, West Java, ID'),
('1fc98ed1-c6a0-47d5-82ab-b05305a6e5db', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:05:44', '2023-09-19 12:05:44', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('1ff0b711-bb96-404c-b736-ddf5df471a5e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-20 11:45:50', '2023-09-20 11:45:50', NULL, '112.215.233.209', 'Mobile', 'Jakarta, Jakarta, ID'),
('2058e822-5e54-419f-9f06-24e9fdd7612f', 'Tambah Surat Masuk', 'https://admin.smk-almuttaqien.sch.id/surat-masuk', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 10:58:32', '2023-08-25 10:58:32', NULL, '180.252.88.21', 'Mobile', 'Depok, West Java, ID'),
('206580bc-295a-4452-a3d5-77aaf3b5337d', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 15:21:26', '2023-09-19 15:21:26', NULL, '140.213.130.238', 'Mobile', 'Tangerang, Banten, ID'),
('208ed1a5-9ed9-4662-90a1-db76b3023f59', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:09:11', '2023-09-19 13:09:11', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('20985c36-9dd0-420e-8142-c7aa3552c5e0', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-22 08:15:18', '2023-09-22 08:15:18', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('210af504-6beb-4e31-9bbf-f0842f23b302', 'Perbarui Spp-Aditya Sauqi Sabililah (Jan 2024)', 'http://127.0.0.1:8000/spp.8fad0f3d-d460-4920-b329-e69a3ec2cfe5.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 08:48:33', '2024-01-03 08:48:33', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('212b8504-7d54-4e7c-80ef-38728be1365c', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:37:04', '2023-09-27 10:37:04', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('21565d7a-f5cc-476b-9027-d32166654cc3', 'Bayar Spp-Andika (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-29 08:15:08', '2023-08-29 08:15:08', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('2164f378-458b-4612-83dd-f512078b33cc', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:08:43', '2023-08-24 20:08:43', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('2176bb17-fffe-4ea0-a341-8970498ba7d3', 'Tambah Data cost$cost', 'http://127.0.0.1:8000/cost/store1', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 13:15:10', '2023-12-05 13:15:10', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('219b3d23-2542-42b5-9a19-6b8ff5abd870', 'Perbarui Spp-Ariyanto (Jan 2024)', 'http://127.0.0.1:8000/spp.3e972121-4d1d-4e7a-bf8f-b77e9eb78463.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:59:40', '2024-01-04 07:59:40', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('221656bd-563c-4d12-ad30-edb023652801', 'Bayar Spp-Muhamad Badri Tamami (Feb 2024)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 08:12:50', '2024-01-04 08:12:50', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('22919b01-5dbf-436f-947b-41980b1a3f3e', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/eaf663db-d2c8-403e-97d3-b30995b0cdf0', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:48:15', '2023-09-27 10:48:15', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('229c2591-508a-4db3-9b48-a64a211de5d3', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-20 14:56:56', '2023-09-20 14:56:56', NULL, '112.215.233.187', 'Mobile', 'Tangerang, Banten, ID'),
('2327ec01-3b7b-4b59-9933-50664caa564c', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-30 10:01:46', '2023-08-30 10:01:46', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('23c28388-1961-4bf7-8877-50a7c8171f4f', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/50d0d48c-9f71-420a-a793-f7bae1e1748f', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:21:21', '2023-09-06 01:21:21', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('23ed11ce-2452-41ad-9a92-d5d73933580d', 'Tambah Data Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:34:37', '2023-09-06 08:34:37', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('241cc0bd-eeaf-4b8f-bb65-3eaf51a9df88', 'Hapus Data Pembayaran Spp Siswa', 'http://127.0.0.1:8000/spp/c51e2550-5862-43ed-8e8d-74c05e3a6e23', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 13:27:32', '2024-01-03 13:27:32', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('242ec4f9-7763-4d5a-85d4-5a158bde3c80', 'Tambah Data Pengeluaran Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:50:19', '2023-09-06 01:50:19', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('24619d45-f78e-43cb-ba12-01e2339eeb25', 'Hapus Data Kas', 'https://admin.smk-almuttaqien.sch.id/kasbos/8851a904-00e8-411d-b280-ddd447372e40', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 00:57:27', '2023-09-06 00:57:27', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('24aa1f31-c885-450a-974e-39583fbfebac', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/b327768e-d0bd-47be-a5ed-2e5dd5e4dc89', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:08:18', '2023-09-06 02:08:18', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('24ad0a43-4b97-4d1e-a38f-faa4c7ff0122', 'Perbarui Spp-Aditya Sauqi Sabililah (Feb 2024)', 'http://127.0.0.1:8000/spp.958ea72d-38bc-4d11-acaf-bd627137657c.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 08:50:33', '2024-01-03 08:50:33', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('254bdfaa-82a2-42d4-aa38-c9e671fc804a', 'Hapus Data Pembayaran Spp Siswa', 'http://127.0.0.1:8000/spp/6fb8f796-570c-4456-8f04-2e47e938c3e2', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 13:28:50', '2024-01-03 13:28:50', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('254f27ac-40f4-48bf-98c1-28ba1afc9713', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-30 12:03:47', '2023-08-30 12:03:47', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('255c2f1b-5e14-4101-b02f-5d045d1cb4d4', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:20:31', '2023-09-06 02:20:31', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('2562aead-6560-4bb7-b11e-2c809fca517a', 'Perbarui Spp-Aditya Sauqi Sabililah (Jan 2024)', 'http://127.0.0.1:8000/spp.8fad0f3d-d460-4920-b329-e69a3ec2cfe5.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 08:53:13', '2024-01-03 08:53:13', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('256ecc35-eae6-4fac-b547-368452152052', 'Hapus Data Kas KasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/8da26561-5300-4759-b485-a98a310957d1', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:42:31', '2023-09-06 01:42:31', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `ip_address`, `device`, `location`) VALUES
('2606e076-a3f3-44f9-94de-27310a5354c2', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-23 08:18:05', '2023-09-23 08:18:05', NULL, '182.2.145.130', 'Mobile', 'Jakarta, Jakarta, ID'),
('268b961b-8c55-4996-9018-9c7f6c3a86cc', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 13:14:27', '2023-08-30 13:14:27', NULL, '112.215.224.57', 'PC', 'Jakarta, Jakarta, ID'),
('26dd40cd-8091-4886-a40e-97306a42eb31', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-19 08:15:24', '2023-10-19 08:15:24', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('26e931d2-08d3-415d-8cc6-002542fd1c70', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-15 07:30:04', '2023-09-15 07:30:04', NULL, '158.140.162.231', 'Mobile', 'Cileungsir, West Java, ID'),
('26e934be-9e00-488c-aca8-0769fe441021', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/823255e3-fb1e-4d7b-9c28-fd67a030259a', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:48:42', '2023-09-27 10:48:42', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('272502bd-9429-4b57-8da0-c018a048941c', 'Tambah Data Pengeluaran Kas PIP', 'http://127.0.0.1:8000/kaspip/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:25:46', '2024-01-03 10:25:46', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('2754ac43-c05e-4500-9eab-41a730f36784', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:41:20', '2023-09-22 09:41:20', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('2779b6b4-2932-4380-9398-c5b83ba2c5b7', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 07:25:46', '2023-09-22 07:25:46', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('2780af92-7fc4-4460-8079-b3dd421ea7bc', 'User Login', 'https://demo.suryatama.tech/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-25 13:46:43', '2023-10-25 13:46:43', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('27a655b5-322f-4194-b08b-687702c8a33a', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:31:13', '2023-09-19 12:31:13', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('27bc5d8a-34f5-4812-85c7-3eee1b72adb8', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-19 14:01:41', '2023-09-19 14:01:41', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('27fb7108-e38d-4a05-9368-5050f2c54efd', 'Tambah kategori', 'https://admin.smk-almuttaqien.sch.id/kategori', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-11 09:06:00', '2023-09-11 09:06:00', NULL, '112.215.225.63', 'Mobile', 'Tangerang, Banten, ID'),
('27febead-4835-4f6a-860d-6c153f46d333', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-12 08:32:00', '2023-10-12 08:32:00', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('287ace50-463f-41b9-b65c-2b43e139f5d4', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:09:09', '2023-08-24 20:09:09', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('289d38bb-550b-4ff2-9457-b533ad2d45c6', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:22:32', '2023-09-06 02:22:32', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('28e56a11-091a-4a76-bea9-eddb2231101c', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:56:39', '2023-10-05 15:56:39', NULL, '158.140.162.155', 'PC', 'Cibinong, West Java, ID'),
('290f036b-f07a-48b4-a240-0639da3219a2', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:50:03', '2023-09-22 09:50:03', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('292ffbd0-7236-4c4c-a3c2-9462ea5ae87a', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-07 08:29:21', '2023-09-07 08:29:22', NULL, '120.188.92.37', 'PC', 'Jakarta, Jakarta, ID'),
('295f8f01-58c0-477b-8ada-8200aef29875', 'Tambah Data KasBos', 'https://admin.smk-almuttaqien.sch.id/kasbos/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 00:59:16', '2023-09-06 00:59:16', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('29751af4-7a3c-4173-b037-39f7860d5cd3', 'Bayar Spp-Merina (Jan 2024)', 'http://127.0.0.1:8000/spp/storereguler', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 04:47:42', '2024-01-04 04:47:42', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('29f0186f-27fc-4bb2-bbd4-b224bfd60d75', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:29:51', '2023-09-22 09:29:51', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('29f28b98-b538-47a6-8f62-4d9186a1f0ba', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:13:36', '2023-08-25 09:13:36', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('2a50b46a-da3a-4b36-80f2-0d868c6a94bf', 'Hapus Data Kas Oprational', 'https://admin.smk-almuttaqien.sch.id/oprational/32428430-e999-46a1-9954-21c3c876fb7d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:38:07', '2023-09-06 02:38:07', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('2a6d829b-b9f8-4b44-bce0-3b472abc5409', 'Hapus Data Pembayaran Spp Siswa', 'http://127.0.0.1:8000/spp/38f0ce65-fcef-4750-b796-117222224f15', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:22:04', '2024-01-04 07:22:04', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('2aa3cf10-b560-4b8e-a5fd-9a12fc581498', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-15 09:48:32', '2023-09-15 09:48:32', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('2aac7a1a-70b9-40ab-8c65-c436af269f70', 'Tambah Data Pengeluaran Kas SPP', 'http://127.0.0.1:8000/kasdonatur/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:03:05', '2024-01-03 10:03:05', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('2b171a95-c24c-4208-981f-a73b2ae230b3', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 07:32:33', '2023-09-06 07:32:33', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('2c63462d-0c76-49e3-9bff-f20eb4eb56f4', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/b169c27a-8c06-4c21-aada-c40c34473d20', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:25:07', '2023-08-24 20:25:07', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('2c93f5cc-09b3-4858-bcd8-3a4072fdeca5', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:19:15', '2023-09-06 02:19:15', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('2cd5ad7d-87e6-41dd-8703-1250b587b4ea', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:15:34', '2023-08-25 09:15:34', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('2cdfa0b5-b3c9-49d8-8553-08700be185a4', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-19 08:31:25', '2023-09-19 08:31:25', NULL, '158.140.162.155', 'PC', 'Depok, West Java, ID'),
('2cf33dca-3c24-447e-848b-53f310e09b2c', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-15 08:59:13', '2023-09-15 08:59:13', NULL, '112.215.246.8', 'PC', 'Tangerang, Banten, ID'),
('2d013bc7-2225-497a-976e-618f68770784', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/d7309bbc-9843-4a76-99d9-9d4ed9ce9818', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:08:22', '2023-09-06 02:08:22', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('2d58afcf-e8bc-427b-8cc0-269248d4641e', 'Hapus Data Kas', 'https://admin.smk-almuttaqien.sch.id/kasbos/d0bc994c-05f5-4ec1-ae29-3cf9c89f42ab', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 00:58:24', '2023-09-06 00:58:24', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('2d6bafee-0856-4d39-8e92-4b02f115aee9', 'Hapus Data Pembayaran Spp Siswa', 'https://demo.smk-almuttaqien.sch.id/spp/079fbe44-d5e2-40a6-a575-8f09ad9447c1', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:41:38', '2023-10-05 15:41:38', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('2ded7f10-c3f2-4b92-8044-253b7490b3e9', 'Hapus Data Kas KasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/e3c923a9-d60f-4dba-b096-c217ee73a568', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:38:30', '2023-09-06 08:38:30', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('2dfd5e56-d2d2-4a31-908f-8e12818dd7d7', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-20 13:44:27', '2023-09-20 13:44:27', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('2e06e969-1354-41e2-bed8-19dee893b47a', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:52:41', '2023-09-22 09:52:41', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('2e8c214c-2427-43a3-b911-ee858a281760', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/92a46899-a411-4cf5-8f78-bfe7abf883cb', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:13:49', '2023-08-26 10:13:49', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('2ed3898b-68e7-423a-9606-74068ce2fd8e', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-05 16:06:23', '2023-10-05 16:06:23', NULL, '158.140.162.155', 'PC', 'Cibinong, West Java, ID'),
('2eea69e0-59a0-4c4d-89cc-16b80a7eafd7', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:47:36', '2023-09-18 09:47:36', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('2f080e8b-5007-40a3-adab-8a78e43a98cd', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-12 15:43:17', '2023-10-12 15:43:17', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('2f2d09ca-a0b0-4a8e-9de0-676899a6273d', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/ff45e4b4-6435-44bc-9bb8-1012221f08b3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:27:12', '2023-09-06 02:27:12', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('2f3b8dd6-6c83-4b3a-8ae6-e29e21cad983', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'fdc3cdde-5b16-4b16-b73a-9511d997a4f6', '2023-09-26 11:13:17', '2023-09-26 11:13:17', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('2f5113b7-f96e-45b7-a46c-023389e5bdb0', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-12 08:31:53', '2023-10-12 08:31:53', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('2f576694-a198-492b-bfb2-bea63ab413d1', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 11:10:51', '2023-08-30 11:10:51', NULL, '114.10.65.28', 'Mobile', 'Jakarta, Jakarta, ID'),
('2f820117-1dae-40a0-97ab-7026332f0393', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:11:52', '2023-09-19 12:11:52', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('30fdefb0-12dc-4210-ba64-f6839c767901', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:37:37', '2023-09-19 13:37:37', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('3142d032-42a7-4a73-a79c-d5497c95220f', 'Bayar Spp-Muhamad. Rizki (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-20 08:45:13', '2023-09-20 08:45:13', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('3160f953-8df5-4739-9e3e-c9affdb74e39', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:15:18', '2023-08-25 09:15:18', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('318ecd51-677c-4b93-ac01-22218c1b6c63', 'Edit Biaya SPP', 'http://127.0.0.1:8000/cost/edit/0af30f28-1adb-4ead-b434-1214f29df466', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-02 11:00:10', '2024-01-02 11:00:10', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('31c80926-d9f0-46fe-91c5-88896fc7906c', 'Hapus Data Kas KasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/c1d3182a-7719-422c-95be-3862594a5922', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:43:45', '2023-09-06 01:43:45', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('32182aba-df9a-466e-a6d7-6ceb246a0663', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-20 07:08:31', '2023-09-20 07:08:31', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('3276564d-dc1e-4f41-8da3-292a74c94ff9', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 10:47:39', '2023-11-02 10:47:41', NULL, '127.0.0.1', 'Mobile', 'Unknown Location'),
('32789353-9365-4f2e-8f23-0258b87a5461', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-14 16:19:00', '2023-09-14 16:19:00', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('32818c98-1939-4abd-8b20-3740ad3d19ab', 'Tambah Data Pemasukan Oprational', 'https://admin.smk-almuttaqien.sch.id/oprational/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:04:10', '2023-09-06 01:04:10', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('3294b37a-444a-4dd8-81ee-8f07b92f393b', 'Tambah Data Pemasukan Oprational', 'https://admin.smk-almuttaqien.sch.id/oprational/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:05:20', '2023-09-06 01:05:20', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('32a70cdb-a8a0-4bc0-a7a3-9158c80f4afa', 'Bayar Spp-Muhamad Rehan (Apr 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:30:25', '2023-09-18 09:30:25', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('3315e832-1118-4e2c-8bc3-2ff60a2999b1', 'Update File pegawai', 'https://admin.smk-almuttaqien.sch.id/pegawai/c531dc3f-d5e9-4e38-9770-a7cb5cd8954d', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 09:01:08', '2023-08-30 09:01:08', NULL, '180.251.182.54', 'PC', 'Bogor, West Java, ID'),
('332345b0-304f-4b9e-80de-826b56d896b1', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 08:12:12', '2023-09-22 08:12:12', NULL, '140.213.4.199', 'PC', 'Jakarta, Jakarta, ID'),
('334807dd-97d0-48fb-9fa4-6c060b95b47c', 'Edit Biaya SPP', 'http://127.0.0.1:8000/cost/edit/0af30f28-1adb-4ead-b434-1214f29df466', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-02 10:50:31', '2024-01-02 10:50:32', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('336df8e2-d920-40c1-9292-49c756fe6f35', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:50:51', '2023-08-26 10:50:51', NULL, '180.252.95.17', 'PC', 'Depok, West Java, ID'),
('338d1748-e3c7-4a3d-b936-b3e5bdf9baca', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-10 10:55:16', '2023-10-10 10:55:16', NULL, '158.140.162.155', 'Mobile', 'Lurah, Banten, ID'),
('33b4518a-ba2e-454e-9741-090dce1998ff', 'Bayar Spp-Faisal (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:52:51', '2023-09-18 09:52:51', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('343792e3-335b-4aa5-b631-fa243925ff75', 'Edit Biaya Pembayaran', 'https://admin.smk-almuttaqien.sch.id/cost/edit2/11e79c7d-3376-11ee-bfbb-c85b767819e3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 01:23:15', '2023-09-14 01:23:15', NULL, '182.0.230.148', 'PC', 'Jakarta, Jakarta, ID'),
('34582c2f-c77f-4038-92db-3466243892e9', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:17:17', '2023-09-19 13:17:17', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('34608be8-af2b-4250-8a90-746d02489782', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/8f61978f-1dda-4ec1-b59b-b8138cbbbfa3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:12:58', '2023-08-26 10:12:58', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('352a2740-4068-4794-9402-9666c3149407', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/5b589d25-5ddd-4db3-807d-e547fd8deeef', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:22:32', '2023-08-25 09:22:32', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('3577c952-44bf-4e80-885e-e8fbe5bb7be3', 'Hapus Data Kas KasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/45de4057-333e-42b9-b68d-783a5a5f03cb', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:50:26', '2023-09-06 01:50:26', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('35838e8e-fbfe-466d-a033-883588df634d', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/78a1945d-9274-411d-8e48-53c0f987b255', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:57:56', '2023-09-27 10:57:56', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('35ba7cf7-2465-4664-8058-2d11065ec13b', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 09:28:12', '2024-01-04 09:28:12', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('3603684a-3201-4a4c-9d4e-4b186303e955', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-28 15:20:47', '2023-08-28 15:20:47', NULL, '140.213.132.167', 'Mobile', 'Tangerang, Banten, ID'),
('364747a4-5eac-4b59-bd9b-521239acc5d7', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/d5b5ac88-f3c6-4426-871e-366c446104ad', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:46:35', '2023-09-27 10:46:35', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('36c29b54-7b98-410e-9e44-42b74a21ff35', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 16:22:01', '2023-10-05 16:22:01', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('36cac893-4535-4a7a-a630-c2ab5b4c50b2', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/35838d97-0c40-4410-9650-720ec0578d9f', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-13 08:38:13', '2023-10-13 08:38:13', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('377e3b73-cf2d-485c-90ad-5c22f2bfc57a', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/1402695f-99d9-403e-ae5c-25381d6b8b83', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 10:57:21', '2023-08-30 10:57:21', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('377f87b2-65e1-48e9-816b-6b1266bc8cfc', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 06:06:18', '2023-11-02 06:06:18', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('37b27ee3-f6da-4f04-b3fe-c6ec31bca2f3', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store1', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:10:04', '2023-09-14 08:10:04', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('381aa1f2-1ad8-436c-ba58-c93f7889c6eb', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 16:36:53', '2023-09-06 16:36:53', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('38a65cee-b04c-438f-8719-35fe3a9c8c1e', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/19940700-37c0-446c-a621-724071070ee3', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 11:00:30', '2023-08-30 11:00:30', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('38f39878-adc2-42a9-9648-1f703341122a', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-26 08:10:46', '2023-09-26 08:10:46', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('3923286a-376e-412e-9e88-ec4cbf234165', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:01:45', '2023-09-06 02:01:45', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('395e27f5-b8db-44e3-98d3-e1ddb1827feb', 'Bayar Spp-Ai Diniah Nur Sopiah (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-04 09:06:38', '2023-09-04 09:06:38', NULL, '114.10.65.214', 'PC', 'Jakarta, Jakarta, ID'),
('3979b9cb-473a-41bd-9ff1-bbe387225ace', 'Bayar Spp-Aditia Teguh Pradana (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 09:00:18', '2023-09-14 09:00:18', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('3a5762b8-a81e-40aa-90f5-3009d0e2ee4f', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-15 09:42:29', '2023-09-15 09:42:29', NULL, '114.10.30.54', 'PC', 'Jakarta, Jakarta, ID'),
('3b097c7d-a3c0-404e-b302-fa71d23bc3cd', 'melihat Data Kas Honor', 'http://127.0.0.1:8000/honor/printPDF', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-23 04:06:35', '2023-08-23 04:06:35', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('3b20298b-59cf-4f4c-b8f1-04caa0250740', 'Tambah Data Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:48:38', '2023-09-06 01:48:38', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('3b240670-b6f5-4d5a-8989-f02a2c7cca03', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:08:38', '2023-08-25 09:08:38', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('3b4251bb-bcd0-4773-8320-17a6ce2a7f17', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 13:15:10', '2023-09-18 13:15:10', NULL, '114.10.68.157', 'PC', 'Jakarta, Jakarta, ID'),
('3c141412-c264-4414-a828-65a570bdd208', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-08 09:05:50', '2023-12-08 09:05:52', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('3dc57e1e-4ed1-4005-95ac-d0568b1b5eaa', 'Bayar Spp-Faisal (Nov 2022)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-01 08:28:42', '2023-09-01 08:28:42', NULL, '114.4.215.116', 'PC', 'Jakarta, Jakarta, ID'),
('3e619f3f-b133-421f-91a3-93a20ce0b5e0', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:12:21', '2023-09-19 13:12:21', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('3e8754bf-28f3-4c5c-bc67-401a92d9e4f3', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:24:36', '2023-09-22 09:24:36', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('3e9c3ab9-0f9c-4684-877a-a6ba097afc47', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-12 04:21:46', '2024-01-12 04:21:47', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('3eb7956d-1d68-4c27-b6a9-2ceadd5c6575', 'Bayar Spp-Muhamad Abdul Reza (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-29 12:08:49', '2023-08-29 12:08:49', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('3f41a845-445f-484e-92a4-827798bbcfa1', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-09 08:23:56', '2023-10-09 08:23:56', NULL, '158.140.162.155', 'PC', 'Lurah, Banten, ID'),
('3f489208-cbb1-4971-a653-642c7c643ecb', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:03:41', '2023-09-19 12:03:41', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('3f4c9afc-77a2-4269-8261-45c9fefdbdea', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-25 09:24:13', '2023-08-25 09:24:13', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('3f81c261-4ff6-46c6-8c40-ac90390fad57', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-04 13:40:48', '2023-09-04 13:40:48', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('3f9140e4-f859-4585-bbec-ad540af321cd', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:23:45', '2023-09-19 13:23:45', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('3fa43b8f-8b34-46e3-a7b5-414cc1974c64', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 09:32:51', '2023-12-05 09:32:51', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('404f877e-22ed-4100-b70b-dfdccfa977b3', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:04:35', '2023-08-25 09:04:35', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('4075bedc-7925-47af-8d6f-56b4caf902db', 'Bayar Spp-Agus Muhammad Dalfa (Jan 2024)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 07:05:04', '2024-01-03 07:05:04', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('40969d5f-920a-40c7-9860-dc76dc042f01', 'Tambah Data Penerimaan Dana BOS', 'https://admin.smk-almuttaqien.sch.id/kasbos/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 11:27:57', '2023-08-26 11:27:57', NULL, '182.3.42.50', 'PC', 'Jakarta, Jakarta, ID'),
('40f069f3-b6c6-4b95-960d-5966a09ea437', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:02:48', '2023-08-25 09:02:48', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('41186c94-b53a-4ced-a6a9-ac98308b1411', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-12 10:20:04', '2023-10-12 10:20:04', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('4121b655-77b8-404e-827d-e9b8690658f1', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-19 08:14:10', '2023-10-19 08:14:10', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('4134cfa2-4bb4-4271-bfe2-2f8186460cf5', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:46:54', '2023-09-19 13:46:54', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('4168568a-2692-4bfb-bd29-f041cf41df77', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store1', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:09:43', '2023-09-14 08:09:43', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('4176e42d-1d12-4a05-b902-e8e5ec70ee18', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store1', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:14:05', '2023-09-14 08:14:05', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('4217689a-6843-46b7-ba27-4f95659c6fa5', 'Tambah Surat Masuk', 'http://127.0.0.1:8000/surat-masuk', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-23 08:29:18', '2023-08-23 08:29:18', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('424290a8-f1ed-478b-afbd-b8785eebc376', 'Bayar Spp-Ariyanto (Jan 2024)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 06:22:47', '2024-01-03 06:22:47', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('424a8dd6-b662-4d60-9d07-9f85e24b6c16', 'Hapus Data Kas KasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/5dcf4d9a-8f64-4aa8-a163-499fd8b9140d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:43:56', '2023-09-06 08:43:56', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('42923ee4-dc0d-4cef-9991-1a818da69461', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/e2699071-3470-4905-a1e6-3673a265b314', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:56:44', '2023-09-27 10:56:44', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('4295e4c9-80ef-4381-8490-a0b149cc2cdc', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-06 08:35:40', '2023-09-06 08:35:40', NULL, '120.188.4.54', 'PC', 'Jakarta, Jakarta, ID'),
('42b2a876-0ade-40d7-9890-4502f891c72c', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-07 11:38:51', '2023-09-07 11:38:51', NULL, '120.188.92.37', 'PC', 'Jakarta, Jakarta, ID'),
('42f078a6-3de4-47ae-b51f-62b88770d693', 'Bayar Spp-Faisal (May 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:51:50', '2023-09-18 09:51:50', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('430edde1-0a83-496b-bc65-c3df645ec66b', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-23 04:04:49', '2023-08-23 04:04:49', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('431b149d-fc45-4074-8f27-cd0ffabf86f7', 'Hapus Data Pembayaran Spp Siswa', 'http://127.0.0.1:8000/spp/3e972121-4d1d-4e7a-bf8f-b77e9eb78463', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 08:00:44', '2024-01-04 08:00:44', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('43957b6f-3d37-44f0-a324-7d0036091d4b', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store1', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:11:22', '2023-09-14 08:11:22', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('439e2e15-52d3-48dd-8685-11ad6ece35df', 'Bayar Spp-Ariyanto (Sep 2023)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 06:53:37', '2024-01-04 06:53:37', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('43cdf31a-6c13-4352-8d0d-9db986d115a9', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 07:50:00', '2023-09-14 07:50:00', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('43d112c7-fa07-44bc-aff8-5febed4377d7', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:39:34', '2023-09-19 12:39:34', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('43f59eb7-6bdf-4cfc-ae24-f4a2340df165', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-06 16:18:54', '2023-09-06 16:18:54', NULL, '114.10.12.42', 'PC', 'Jakarta, Jakarta, ID'),
('4418f757-6259-43c5-8dc1-9776807e6dd8', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/ea17d607-ebca-48ed-a102-8bc5775d8acf', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:25:48', '2023-08-24 20:25:48', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('443436a8-514b-48c6-b84b-045d5b82a400', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-13 08:43:26', '2023-10-13 08:43:26', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('44902616-533d-4816-9455-81dee20b5440', 'Bayar Spp-Silpi Nuraeni (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-04 09:04:54', '2023-09-04 09:04:54', NULL, '114.10.65.214', 'PC', 'Jakarta, Jakarta, ID'),
('44cb3552-64c8-4d6f-b1dc-f0dd6f30c7f2', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 11:59:33', '2023-09-19 11:59:33', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('45189fa7-dc7e-42ea-a6d7-05bad1575ecf', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-06 16:30:01', '2023-09-06 16:30:01', NULL, '114.10.12.42', 'PC', 'Jakarta, Jakarta, ID'),
('454146ef-58f5-49b7-9a3c-bfd0aeffef65', 'User Login', 'http://127.0.0.1:8000/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-12-08 08:16:22', '2023-12-08 08:16:22', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('45516fe6-4d29-4c00-b657-1a8419643dff', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 11:48:00', '2023-09-19 11:48:00', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('4581d85b-24e6-412a-a601-990cb4193d28', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/a0050570-cf3c-4269-b722-c7398efd0a7b', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:07:50', '2023-09-06 02:07:50', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('45998c8f-55bb-49b2-b8e1-474ae8ad1edd', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:10:12', '2023-09-06 02:10:12', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('45c46ce8-7283-48a3-a96f-30a6b81fd7a8', 'Tambah Data KasBos', 'https://admin.smk-almuttaqien.sch.id/kasbos/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 13:17:15', '2023-08-26 13:17:15', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('45e369e6-6147-4ca9-a09d-cdb50acee8a9', 'Tambah data izin', 'https://demo.smk-almuttaqien.sch.id/absen_pegawai.buatizin', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-11 17:13:06', '2023-10-11 17:13:06', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('4657c9a1-dbc6-4c6f-9c4f-e898405ebe2b', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-13 10:18:02', '2023-09-13 10:18:02', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('46948b4b-b7ae-4c99-a7c6-f7588a84d69f', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/5b589d25-5ddd-4db3-807d-e547fd8deeef', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 08:30:45', '2023-08-25 08:30:45', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('46a61047-2c58-4786-bbf2-51c84cb988e8', 'Bayar Spp-Ariyanto (Dec 2023)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 02:54:19', '2024-01-04 02:54:19', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('47121b88-2acd-47d6-a3ac-0785ecd72ae4', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/d7309bbc-9843-4a76-99d9-9d4ed9ce9818', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:13:13', '2023-08-26 10:13:13', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('47b6a761-1f3f-440d-a804-afc0182a73d4', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-18 08:50:38', '2023-09-18 08:50:38', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('47b858a6-8b7e-4e37-aa76-2ef711847d5c', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:28:45', '2023-09-22 09:28:45', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('48095097-36c0-4f55-b236-ab94a06211a0', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-12 10:19:34', '2023-10-12 10:19:34', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('481eceaa-3d47-410b-a006-ce3d8d61e21f', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-08 15:39:52', '2023-09-08 15:39:52', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('48392d97-e8c4-47f6-83cb-9e0bbd93fb77', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-15 08:46:18', '2023-09-15 08:46:18', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('48630828-a58f-46fe-b248-d102ed0ca502', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store2', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:26:29', '2023-09-14 08:26:29', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('48801f09-3d19-41c0-9a11-35a81cc59d91', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:03:17', '2023-08-25 09:03:17', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('49229b33-d0c8-4209-92f6-7521bc39ef00', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 21:27:50', '2023-09-14 21:27:50', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('4a0580e0-c6a4-455b-b3e2-e33ce0f54df4', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-26 08:16:47', '2023-08-26 08:16:47', NULL, '180.252.95.17', 'Mobile', 'Depok, West Java, ID'),
('4a3ce383-c358-47fa-a282-0c4616079b24', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/3050fc36-de18-4f52-98d0-5f4a8a5338bf', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:45:27', '2023-09-27 10:45:27', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('4a5c67bf-81f0-4e03-b0c1-7fbe19c2e7de', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-15 09:42:27', '2023-09-15 09:42:27', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('4a838673-6db0-4372-988e-9b127de1a885', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-30 09:45:35', '2023-08-30 09:45:35', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('4a97f616-e7e1-4d21-bfa3-2193e437dd28', 'Hapus Data Pembayaran Spp Siswa', 'http://127.0.0.1:8000/spp/827b050f-b8f7-44a4-8261-40de9e65ad26', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 13:28:33', '2024-01-03 13:28:33', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('4ab0cfef-5236-4ee6-876d-5c20fa3c7394', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-10-12 15:43:39', '2023-10-12 15:43:39', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('4af7f991-e0e6-4686-a9fe-280186797bdf', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 08:44:08', '2023-08-25 08:44:08', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('4b1cd87c-bcfe-4cdf-b052-02dbecd622f5', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-31 13:49:04', '2023-08-31 13:49:04', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('4b3bd464-b37a-4c34-a146-b6ae47d02510', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-12 15:43:10', '2023-10-12 15:43:10', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('4b5ad791-c2e5-4995-8661-06e5c1343a7a', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-20 18:34:40', '2023-09-20 18:34:40', NULL, '158.140.162.155', 'Mobile', 'Jakarta, Jakarta, ID'),
('4b9be639-cbbf-4256-ab55-54f7c954f233', 'Tambah Data Pengeluaran Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:44:47', '2023-09-06 08:44:47', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('4bd710be-bf17-4e5f-b8f2-5fd2d9416b56', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/a37920d3-59d1-4523-8177-e42ad0dd5d3e', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:58:10', '2023-09-27 10:58:10', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('4c223040-aa69-4380-b15b-2605f1fc11e8', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 02:19:18', '2023-11-02 02:19:18', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('4c6c64d6-4859-44aa-9ac8-4c54bd6f08f7', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/070a4cb4-3cd9-4f51-a95e-f1862f8998cc', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:52:51', '2023-09-27 10:52:51', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('4cd6b9ef-2894-4ef7-acb9-7578cc67cf9d', 'Bayar Spp-Agus Muhammad Dalfa (Jan 2024)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 03:35:53', '2024-01-04 03:35:53', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('4cf1a76c-1abb-40d3-8bc8-37698f5d9180', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:15:52', '2023-09-19 13:15:52', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('4db110ac-c259-43cf-8805-9a5485bf5da3', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 11:53:39', '2023-09-19 11:53:39', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('4df37c5c-6560-4853-b40e-5726d6c03519', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:56:32', '2023-09-06 01:56:32', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('4e4d27c6-abca-40c5-9467-725f3903ee77', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:57:29', '2023-09-19 13:57:29', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('4e4e02d6-dc8d-47ff-89cc-3ef3a118a525', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store1', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:07:47', '2023-09-14 08:07:47', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('4eacf2a5-4664-48ff-a5d0-9937fb147833', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/b4f22018-4626-4846-b284-d46c525244b8', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-12 11:51:31', '2023-09-12 11:51:31', NULL, '140.213.138.102', 'Mobile', 'Tangerang, Banten, ID'),
('4ec3f0b1-d028-4cf9-86bc-83428e3f3502', 'Hapus Data Mapel', 'https://admin.smk-almuttaqien.sch.id/mapel/83b6ffe6-32ad-4af5-adfc-d20336810a7c', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 08:26:35', '2023-09-22 08:26:35', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('4ed6c102-74ee-4b8f-9a15-3d38adc4764c', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-11 17:45:08', '2023-10-11 17:45:08', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('4ef79888-d262-4a7c-a4e8-70ada94ae6a7', 'Hapus Data Kas Oprational', 'https://admin.smk-almuttaqien.sch.id/oprational/7d36bdcb-2757-4a67-bb16-e7e7eaa3c564', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 07:59:24', '2023-09-06 07:59:24', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('4f1550b7-d5b1-479f-b1bf-9f5de7009f5f', 'Bayar Spp-Abdul Azis (Jun 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-01 08:27:59', '2023-09-01 08:27:59', NULL, '114.4.215.116', 'PC', 'Jakarta, Jakarta, ID'),
('4f3c62de-c352-44d3-b1b8-1e8812f2fe08', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/8f5e9ddb-3564-422b-895e-0caa5e958c91', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:44:39', '2023-09-27 10:44:39', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('4f5eff5e-66c9-4adb-8b8c-a918d943ee5d', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-13 09:12:54', '2023-10-13 09:12:54', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('4f90802c-ec84-480c-ada4-0f9f2697445e', 'Bayar Spp-Muhamad Andri Ali Sandi (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-04 09:04:19', '2023-09-04 09:04:19', NULL, '114.10.65.214', 'PC', 'Jakarta, Jakarta, ID'),
('4fa67b4b-f059-441b-92c9-9e73efd89b2e', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:00:19', '2023-09-19 12:00:19', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('4faaaded-3f1f-43d8-a228-dadb99a95644', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-05 16:12:55', '2023-10-05 16:12:55', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('4fba5ad5-fb51-41c6-8f52-3e20c164cce0', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/d7fcd104-760c-440c-97a8-157962c37b7d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:25:19', '2023-08-24 20:25:19', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('501c256e-3e30-4280-bb0a-ffb24ac35d74', 'Perbarui Spp-Cindy Nurcahniaty (Jul 2023)', 'http://127.0.0.1:8000/spp.ad704fce-5d68-4205-a2cb-4086619d1bf4.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-05 04:05:13', '2024-01-05 04:05:13', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('50498375-76c2-4f58-999d-466e901efaa4', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-10 13:32:24', '2023-10-10 13:32:24', NULL, '158.140.162.231', 'Mobile', 'Lurah, Banten, ID'),
('50606f62-c3f1-4145-aa50-a159b2fe9613', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store3', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:19:52', '2023-09-14 08:19:52', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('5098e067-1159-4a04-975d-5d562d34a7df', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-05 22:22:14', '2023-09-05 22:22:14', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('50ae6a56-84fb-4f5f-9591-aa1de354bf2d', 'User Logout', 'http://127.0.0.1:8000/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-08-24 03:02:46', '2023-08-24 03:02:46', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('50d7fc60-a3da-40a1-811c-2e50c5f3628c', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/a2f41296-4984-4036-9530-6375f91a011c', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:50:10', '2023-09-27 10:50:10', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('50dfc399-1e78-4af5-985b-1d14d010aa38', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/97d62fab-932f-470b-9f11-e21a78baa164', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 09:27:58', '2023-08-28 09:27:58', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('50e3385c-4414-41ab-ac6b-4729787dcdde', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/ce81315d-3bc4-454f-b141-3612f784b629', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:21:20', '2023-08-25 09:21:20', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('51ac543c-19a2-4d86-8247-cd9411b476d2', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-02 10:45:05', '2023-09-02 10:45:05', NULL, '180.251.180.199', 'PC', 'Bogor, West Java, ID'),
('51c84539-e12e-42e0-b374-588e4d5abedc', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:27:06', '2023-09-19 12:27:06', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('51eea653-9001-440a-afed-0a45acec559a', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:43:49', '2023-09-22 09:43:49', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('5267ecad-7942-4442-b3be-70ae4cecfa98', 'User Login', 'https://demo.suryatama.tech/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-26 16:11:58', '2023-10-26 16:11:58', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('527f5e9a-3b43-4255-bfa8-7dfed17bdb7c', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 03:02:25', '2023-08-24 03:02:25', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('52c8fe72-ef2a-4af9-a9a1-61d76f47543e', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/a9d2e841-6482-4dc8-976d-f97d2b69730d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:47:21', '2023-09-27 10:47:21', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('52f6a0ec-2a8c-4dea-8254-1c71edfa1167', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 12:45:34', '2023-09-18 12:45:35', NULL, '114.10.68.157', 'PC', 'Jakarta, Jakarta, ID'),
('539a2e7e-ed6f-4783-800a-70ef189ced13', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/adf1ad20-60fa-4efd-bb15-aa0008a3bc1d', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 11:02:31', '2023-08-30 11:02:31', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `ip_address`, `device`, `location`) VALUES
('53a57f7b-7f87-4adc-bcd6-985a83cd1218', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 08:58:53', '2023-08-25 08:58:53', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('53b67586-7dc5-4dc3-ad3a-8439bce81b66', 'Tambah data izin', 'https://demo.smk-almuttaqien.sch.id/absen_siswa.buatizin', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-11 17:10:18', '2023-10-11 17:10:18', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('53d0de10-7b6c-4a9a-94ea-f52513778b3e', 'Tambah Data Penerimaan Dana BOS', 'https://admin.smk-almuttaqien.sch.id/kasbos/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 00:57:55', '2023-09-06 00:57:55', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('53ea9ff8-c665-46de-9be4-90d39447a65f', 'Bayar Spp-Aditia Teguh Pradana (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 09:01:18', '2023-09-14 09:01:18', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('53f69c80-48e5-4012-8ae0-fd166aca2629', 'User Login', 'http://127.0.0.1:8000/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2024-01-04 09:27:13', '2024-01-04 09:27:13', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('53fe2f87-6628-4c6d-b471-77b92277c792', 'Bayar Spp-Muhamad Abdul Pakih (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-12 09:08:46', '2023-09-12 09:08:46', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('5404b852-8a27-4262-b2fb-99b21f9ed088', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-27 16:32:35', '2023-08-27 16:32:35', NULL, '125.160.146.127', 'PC', 'Jakarta, Jakarta, ID'),
('5417942d-a593-4c5b-9c45-a560b025bff4', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-30 08:54:20', '2023-08-30 08:54:20', NULL, '180.251.182.54', 'PC', 'Bogor, West Java, ID'),
('54658c15-4874-451b-9780-87fb92132a7d', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-15 07:53:00', '2023-09-15 07:53:00', NULL, '112.215.246.10', 'Mobile', 'Tangerang, Banten, ID'),
('546e829d-d9b1-488c-867c-ad2d5752441b', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-15 08:40:51', '2023-09-15 08:40:51', NULL, '114.10.30.54', 'PC', 'Jakarta, Jakarta, ID'),
('54fb4b83-8a13-41a8-bc3d-10f8c7e48dbb', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-31 13:11:31', '2023-08-31 13:11:31', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('5550bbea-1399-4971-bc87-50f4e035f733', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/40951fc7-59f9-43f9-920c-2b3d6aa5c3e3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:40:20', '2023-10-05 15:40:20', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('55608973-3a09-4c94-a5fe-1963254d5805', 'Hapus Data siswa', 'http://127.0.0.1:8000/siswa/a1240add-fdb7-4a69-b80d-396c75f456ad', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 06:37:42', '2024-01-03 06:37:42', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('557b4a13-59b9-4d26-9227-411e57852c8a', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/2f863bc5-1173-4935-861a-0c2ce94353bb', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:07:42', '2023-09-06 02:07:42', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('55953faf-7cc9-4bb6-adec-c9fc40a04d3f', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-07 09:55:18', '2023-12-07 09:55:19', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('55968ec3-7b09-41f7-833f-1d670a62d508', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/e8f1a32f-5c34-4c97-aae9-bf5ca89ca8a9', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 09:28:37', '2023-08-28 09:28:37', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('5597ebbf-7006-43c4-afa3-1e0233b47740', 'Hapus Data Kas Oprational', 'https://admin.smk-almuttaqien.sch.id/oprational/fcbebef7-d5a1-4c88-af4b-30ead52266b9', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:11:25', '2023-09-06 08:11:25', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('55cb1c56-f234-47b8-a8c9-a20f3f8b564d', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-07 08:32:53', '2023-09-07 08:32:53', NULL, '120.188.92.37', 'PC', 'Jakarta, Jakarta, ID'),
('560fe56c-284d-41b9-8e5c-bf6a285b78a2', 'Hapus Data Kas', 'http://127.0.0.1:8000/kasbos/63b8ffee-6dfe-41ca-b0fe-0c6891d3cf5d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:48:42', '2024-01-03 10:48:42', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('566281c2-d266-41d8-a4db-051218a38fbd', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-04 08:36:01', '2023-09-04 08:36:01', NULL, '180.251.180.234', 'PC', 'Bogor, West Java, ID'),
('56ae83b8-f6c2-4f17-bfc3-6259b040991e', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:26:44', '2023-09-19 13:26:44', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('56b49457-2a9d-43f6-a2e3-9e81dde2b1ee', 'Perbarui Spp-Ariyanto (Mar 2024)', 'http://127.0.0.1:8000/spp.3b5f184a-e2e1-448a-8a47-bc8165f20fc4.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:34:49', '2024-01-04 07:34:49', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('56c61171-a401-40e0-98b3-b7b45747d5fa', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:13:51', '2023-09-19 12:13:51', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('56c72bf3-969b-41ab-a055-904a7b92c98c', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-15 09:21:08', '2023-09-15 09:21:08', NULL, '112.215.228.238', 'Mobile', 'Tangerang, Banten, ID'),
('56f07ca6-edd8-4ef2-9fb9-36268bbbf6df', 'Bayar Spp-Neng Ratih (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 09:02:16', '2023-09-14 09:02:16', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('57094f08-651c-47ae-bceb-69a06e33bb34', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-09-26 09:45:06', '2023-09-26 09:45:06', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('5742d6dc-7a3a-4c0b-b486-e3e77f936308', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:39:34', '2023-09-22 09:39:34', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('58390e4e-49a5-4513-8f25-50a64b391da9', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-25 08:06:28', '2023-08-25 08:06:28', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('586656f8-99f6-486d-a921-49b7c2f04537', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-19 08:14:25', '2023-10-19 08:14:25', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('58af2cee-fb0f-4ccd-b22e-8bbca6c32e73', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/fbd96fc9-0dea-4b70-b2fc-e5100bbbe16e', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:35:39', '2023-08-24 20:35:39', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('594fb852-446a-4194-9325-c5952bc460a9', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/c4b6f54b-9ee6-4272-a3e1-5dabd75a0bf5', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 11:06:17', '2023-08-30 11:06:17', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('59d1496f-f7d9-4d5c-b9e3-c1faf53e2fa1', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-26 09:44:53', '2023-09-26 09:44:53', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('59f679f7-94c3-483e-a129-31a00fcf5609', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-08-31 06:53:59', '2023-08-31 06:53:59', NULL, '158.140.175.186', 'Mobile', 'Cileungsir, West Java, ID'),
('5a43e0b5-45e7-49d3-9a4c-63d507c59a22', 'Tambah kategori', 'https://demo.smk-almuttaqien.sch.id/kategori', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-09 11:39:28', '2023-10-09 11:39:28', NULL, '158.140.162.155', 'PC', 'Lurah, Banten, ID'),
('5a65ea88-cc81-4ae8-acde-2975bc5519d1', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:40:28', '2023-09-22 09:40:28', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('5adff6b0-c827-4b64-9d24-b1e0af5a3e65', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:49:26', '2023-09-19 13:49:26', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('5ae76cd2-b606-4a20-8d6c-302d517af4f6', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-26 12:09:33', '2023-09-26 12:09:33', NULL, '158.140.162.231', 'Mobile', 'Jakarta, Jakarta, ID'),
('5aead6e8-7df9-4627-ab50-32d0bffa5907', 'Bayar Spp-Herlan Maulana (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-29 08:19:58', '2023-08-29 08:19:58', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('5aecc4eb-573f-4b8e-a6de-39a8d753ab38', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-25 21:37:59', '2023-09-25 21:37:59', NULL, '112.215.233.87', 'PC', 'Jakarta, Jakarta, ID'),
('5b416ad2-9408-4823-9a8e-e2b4836f7bee', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-19 14:38:45', '2023-09-19 14:38:45', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('5b701760-2b9a-4a12-995e-7edbb77938de', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-11 10:00:30', '2023-10-11 10:00:30', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('5b78a2c0-af09-4e5a-abd6-ec46f030ce41', 'Hapus Data Kas UMKM', 'http://127.0.0.1:8000/kasumkm/1f76455a-ba6c-4f2e-8dc9-d4678cb8ca91', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 10:32:49', '2024-01-04 10:32:49', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('5b7ced20-d56b-4a20-86e5-300da3fce9df', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-12 08:34:43', '2023-10-12 08:34:43', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('5bb50749-8c81-4382-b336-a5ea3e3c4cd8', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-12 09:58:29', '2023-10-12 09:58:29', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('5bc8e303-09f6-4ef6-b340-0d9b4d5e1225', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:53:34', '2023-08-26 10:53:34', NULL, '182.3.42.50', 'PC', 'Jakarta, Jakarta, ID'),
('5be6c7e5-2f74-44bb-94ed-8d05dc552d28', 'Tambah Data Pengeluaran Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:36:00', '2023-09-06 08:36:00', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('5c22df3f-9af1-41d0-a29b-f289191fa2a4', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-15 08:35:31', '2023-09-15 08:35:31', NULL, '114.10.30.54', 'PC', 'Jakarta, Jakarta, ID'),
('5c509eb2-5b6e-4c48-98cc-bcec3db7141c', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:27:57', '2023-09-19 13:27:57', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('5c53a22c-fd08-4697-9e73-f8b0f355d32a', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-19 10:15:44', '2023-10-19 10:15:44', NULL, '114.4.82.137', 'PC', 'Jakarta, Jakarta, ID'),
('5c5503f7-4014-4ba6-88a7-9683b8c0f52f', 'Bayar Spp-Nia Unia (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 08:15:06', '2023-09-25 08:15:06', NULL, '180.252.85.140', 'PC', 'Cibinong, West Java, ID'),
('5c641004-2407-4171-903d-175424c7308d', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-06 01:57:32', '2023-09-06 01:57:32', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('5c735e82-9625-48d3-a733-7aec116cbcdc', 'Bayar Spp-Agus Muhammad Dalfa (Jan 2024)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 07:04:15', '2024-01-03 07:04:15', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('5c96ba71-28cc-41a5-8f8c-b3cf9c247918', 'Edit Biaya Pembayaran', 'http://127.0.0.1:8000/cost/edit1/5971d0b9-d1c3-4a86-acb7-58809edecb94', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-05 03:49:48', '2024-01-05 03:49:48', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('5cad80d6-e4e9-48fe-8cf2-d330b8991b92', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:34:31', '2023-09-27 10:34:31', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('5ce27078-34c3-4cf3-987b-d6fbe5005bc4', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/01bc0a1a-3186-41de-a104-658e96d79a28', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:51:02', '2023-09-27 10:51:02', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('5d4108f3-6dfd-4212-a4f4-b4ade3a8fc95', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/1c08810a-6e3e-42fb-893e-7009d3e4dc0e', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:13:59', '2023-08-26 10:13:59', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('5da09376-c05a-4722-93d4-f291fdb07b61', 'Edit Data siswa', 'https://demo.suryatama.tech/siswa/01bc0a1a-3186-41de-a104-658e96d79a28', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-25 09:33:46', '2023-10-25 09:33:46', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('5dc5a707-50c9-4788-8b49-76576d67b057', 'Bayar Spp-Adrian (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 08:40:40', '2023-09-25 08:40:40', NULL, '180.252.85.140', 'PC', 'Cibinong, West Java, ID'),
('5dd2f64f-2021-4802-b3cb-c8602eebc44a', 'User Login', 'http://127.0.0.1:8000/login', '75133634-0814-4d4f-bc96-71e610bb6842', '2023-12-08 07:52:38', '2023-12-08 07:52:38', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('5ddd2c01-ac93-4840-bad5-5eb63bd681c7', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:29:02', '2023-09-19 12:29:02', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('5ec6e98e-06fa-4316-8443-7472c3525243', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:58:23', '2023-08-26 10:58:23', NULL, '182.3.42.50', 'PC', 'Jakarta, Jakarta, ID'),
('5ee89962-4c82-4348-b060-cfce849a71c4', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/233c623b-6f91-4da1-907d-26f7557fbfce', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:07:45', '2023-09-06 02:07:45', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('5f1e9c04-28a2-4b58-ac3d-9a61f7c117b5', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-19 08:21:17', '2023-10-19 08:21:17', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('5f503c7f-b997-481b-8e3a-a8c3c1136177', 'Edit Data Pengguna', 'https://admin.smk-almuttaqien.sch.id/pengguna/79d20824-524f-4e80-bf48-c30f7f910ed1', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-15 08:42:24', '2023-09-15 08:42:24', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('5f56ea34-4d7d-449d-bf24-b09a25eaf0f5', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-12 11:48:22', '2023-09-12 11:48:22', NULL, '140.213.138.102', 'Mobile', 'Tangerang, Banten, ID'),
('5f6c0b25-5be1-45dd-9175-345f4cff8e46', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:41:32', '2023-09-19 12:41:32', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('5fb4f8a7-1239-4852-8642-618aa80a80e7', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-04 08:37:40', '2023-09-04 08:37:40', NULL, '180.251.180.234', 'Mobile', 'Bogor, West Java, ID'),
('6018217a-b183-4205-bb89-47ce0372b8e2', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-08 01:21:19', '2024-01-08 01:21:20', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('602d6e36-48e2-4357-bf9e-381ef599bd62', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-19 08:21:06', '2023-10-19 08:21:06', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('6055d989-d2c5-4d7f-9205-28a8bdc4fdb8', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 16:19:04', '2023-09-14 16:19:04', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('605ce1b0-ead2-409e-b776-bf2a936e105b', 'Tambah data konseling', 'https://admin.smk-almuttaqien.sch.id/konseling', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-25 10:34:58', '2023-09-25 10:34:58', NULL, '180.252.85.140', 'Mobile', 'Cibinong, West Java, ID'),
('60886a07-f515-4f3e-8905-25838144a23b', 'Hapus exschool', 'https://admin.smk-almuttaqien.sch.id/exschool/5a623b11-6743-42c8-a27c-42a673b9a33b', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-28 15:21:42', '2023-08-28 15:21:42', NULL, '140.213.132.167', 'Mobile', 'Tangerang, Banten, ID'),
('610f1074-1345-4ee2-9b33-3e8c52f652e1', 'Hapus Data Kas Oprational', 'https://admin.smk-almuttaqien.sch.id/oprational/b20911fc-ef35-4add-85ad-9d22a51ecc11', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 07:59:45', '2023-09-06 07:59:45', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('614f606e-aee6-4286-8dbd-d99dee860fc2', 'Tambah data konseling', 'https://demo.smk-almuttaqien.sch.id/konseling', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-13 09:12:35', '2023-10-13 09:12:35', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('6165e318-19dd-4a09-ad89-ff676932660f', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:04:50', '2023-08-24 20:04:50', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('617f1015-4b0c-4e45-9daf-882625ac8511', 'Edit Biaya SPP', 'http://127.0.0.1:8000/cost/edit/0af30f28-1adb-4ead-b434-1214f29df466', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-02 10:52:08', '2024-01-02 10:52:08', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('6195065e-76f3-464d-8665-acafbb533db0', 'Hapus Data Kas Oprational', 'https://admin.smk-almuttaqien.sch.id/oprational/4c045bd1-44e2-4e7a-8e2f-5feff96e94f1', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:49:20', '2023-08-24 20:49:20', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('61bc696b-006e-41f8-9d26-e944346ded50', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-22 10:44:02', '2023-09-22 10:44:02', NULL, '180.252.89.222', 'PC', 'Bogor, West Java, ID'),
('61e11046-2f03-4d33-9d8d-1928f8314bc8', 'Bayar Spp-Siti Romadonnia (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-28 16:19:26', '2023-08-28 16:19:26', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('6237251a-8a44-47b5-8e8c-3dd01044993c', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-15 09:42:32', '2023-09-15 09:42:32', NULL, '114.10.30.54', 'Mobile', 'Jakarta, Jakarta, ID'),
('6270729c-f8b6-4305-b396-bedd6c3bc689', 'Bayar Spp-Faisal (Jun 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:52:22', '2023-09-18 09:52:22', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('62f88629-2403-4e46-bdd5-194918f31159', 'Hapus Data Pegawai', 'https://admin.smk-almuttaqien.sch.id/pegawai/197d100a-e5d9-483b-805c-1f3c04f1fbf6', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-14 08:40:55', '2023-09-14 08:40:55', NULL, '140.213.130.226', 'Mobile', 'Jakarta, Jakarta, ID'),
('631f49a1-0690-49e4-a30b-909e8cb54096', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/162f08bf-b4aa-46e7-bd41-19daa1c95199', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 09:27:31', '2023-08-28 09:27:31', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('63588de3-8440-4b9c-acf7-4ef3b80b0119', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 15:29:45', '2023-09-19 15:29:45', NULL, '140.213.130.238', 'Mobile', 'Tangerang, Banten, ID'),
('635fba84-40b5-4ff0-8041-b216cc76faf8', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-15 08:46:12', '2023-09-15 08:46:12', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('63690d43-ced4-444f-8ef6-52338aedb463', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/3b95c481-d94f-4940-bfc5-93ecdc21ce96', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:07:21', '2023-09-06 02:07:21', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('63980397-315d-4df5-a076-0b6e5a6994e8', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/db709622-9459-4377-af28-d6f2d12b0d0c', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:26:57', '2023-08-24 20:26:57', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('64016e5b-a433-43df-90c2-d4726117fe70', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 15:21:23', '2023-09-19 15:21:23', NULL, '140.213.130.238', 'Mobile', 'Tangerang, Banten, ID'),
('647224b3-05c0-4d53-85b1-5d54614af97d', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-11 07:59:39', '2023-09-11 07:59:39', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('64b452a5-9b5d-415b-9bda-480fa75a3f88', 'Bayar Spp-Muhamad Rehan (May 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:30:49', '2023-09-18 09:30:49', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('64ccdf9a-25d1-4e9d-b0b6-bf668ddae503', 'Tambah Data Pemasukan kas PIP', 'http://127.0.0.1:8000/kaspip/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:25:29', '2024-01-03 10:25:29', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('64f3d997-2699-4dc0-bf71-fbd0b861879a', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-15 08:42:06', '2023-09-15 08:42:06', NULL, '114.10.30.54', 'PC', 'Jakarta, Jakarta, ID'),
('653dc54c-c33b-4fc3-8581-e6dc79af7d1d', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:21:31', '2023-09-06 02:21:31', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('65d431b8-8ca4-4c07-978b-58c3b3b41880', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/d6a9ab21-0230-4624-ab6d-705ce0c09d8f', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-06 10:26:19', '2023-10-06 10:26:19', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('65dd662d-3bf1-4bfd-8ea3-150fb587f522', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-08-26 10:56:40', '2023-08-26 10:56:40', NULL, '182.3.42.50', 'PC', 'Jakarta, Jakarta, ID'),
('65fb5ad4-a345-4399-a533-798b850ef9c5', 'Perbarui Spp-Agus Muhammad Dalfa (Jan 2024)', 'http://127.0.0.1:8000/spp.0f01b939-58d7-4fce-8806-c3b8b1af41f3.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 08:04:20', '2024-01-04 08:04:20', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('66748265-4cc9-4878-a982-de740bcd5e09', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:10:51', '2023-09-06 02:10:51', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('667f3989-8b4e-4dd0-9ee4-1c4d525862a8', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-08-26 20:26:06', '2023-08-26 20:26:06', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('6695661a-aedf-4602-8b15-486c102f55df', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-26 13:16:27', '2023-09-26 13:16:27', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('66cfe737-658e-4019-ad6a-5409524c343a', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-05 03:38:36', '2024-01-05 03:38:38', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('670e1387-7abb-411f-8cc1-f8bf2a11160a', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-08 02:37:20', '2023-12-08 02:37:21', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('672f2686-71f0-4db9-afac-77f92cc9e441', 'Edit Data siswa', 'http://127.0.0.1:8000/siswa/162a0e2e-e43e-4768-aa37-cc595337ccc9', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 06:51:27', '2023-12-05 06:51:27', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('678d0376-9230-4096-ab0e-95dd3d90ecf3', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 19:43:08', '2023-08-24 19:43:08', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('67ab64cb-25b4-411e-a0e5-bed7cd261c91', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-01 15:00:37', '2023-09-01 15:00:37', NULL, '120.188.5.244', 'Mobile', 'Jakarta, Jakarta, ID'),
('67e1497d-6584-498b-9620-7f68ade3ee68', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-26 11:21:29', '2023-09-26 11:21:29', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('680d9bd9-d308-4cba-ace7-d7e3bcf811a7', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-19 08:15:27', '2023-10-19 08:15:27', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('6821667c-c7a5-47cd-81da-df71cc8d4de4', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-11 08:54:33', '2023-09-11 08:54:33', NULL, '112.215.225.63', 'Mobile', 'Tangerang, Banten, ID'),
('68ed16f8-4f3e-45f9-ad2d-cb411c23576a', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store2', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:25:11', '2023-09-14 08:25:11', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('698a6c71-95a4-4b19-95a8-5da144c9ab0a', 'Hapus Data Pembayaran Spp Siswa', 'http://127.0.0.1:8000/spp/98e3a9c0-f44e-4e3e-83cf-1bdada11f91a', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 13:28:41', '2024-01-03 13:28:41', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('699a5384-1ff4-45c0-8716-b2e0e6fed85f', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:48:42', '2023-09-22 09:48:42', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('69c43790-237a-4ea0-8c56-b72753d5c078', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-12 15:43:13', '2023-10-12 15:43:13', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('6a15340e-4088-4dcf-bed8-b906c02b0c3d', 'Edit Biaya Pembayaran', 'http://127.0.0.1:8000/cost/edit2/0d84df36-6584-436d-9ba7-3220a398974b', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-05 06:32:28', '2024-01-05 06:32:28', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('6a2aa12b-3787-4bf2-b6d3-259eb16f9353', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/2001c69b-1e24-44d9-a1b8-4e37c230f246', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:07:34', '2023-09-06 02:07:34', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('6a73aeac-df49-48fa-acc7-0d5fd98e7293', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-07 09:33:57', '2023-09-07 09:33:57', NULL, '180.251.182.39', 'Mobile', 'Bogor, West Java, ID'),
('6a8c567c-8d7b-4350-ad84-d0bad4fabd80', 'Tambah Data Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:44:22', '2023-09-06 08:44:22', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('6a97e1f5-1ffb-4aec-97e8-73a46d52d878', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/a78e10b8-9410-4fc1-a562-42a5eb1d5637', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:57:01', '2023-09-27 10:57:01', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('6af00a8b-3b02-4196-a815-2ee9b2e24ac1', 'Hapus Data Kas Oprational', 'https://admin.smk-almuttaqien.sch.id/oprational/185812c8-1903-49b5-b787-9e275fbd4347', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:04:40', '2023-09-06 01:04:40', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('6b5e4b2c-c84a-4f82-a82c-73265f8e7750', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/233c623b-6f91-4da1-907d-26f7557fbfce', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:16:17', '2023-08-26 10:16:17', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('6ba3f94d-bbc7-4545-b60b-e4a79cdced5a', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/c5b27d15-e458-4161-86f6-f2bd35ebe590', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:26:32', '2023-08-24 20:26:32', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('6bb60817-5bb7-4c9c-adfe-27b19cf405bc', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/9e2ecad9-4066-48e0-bc02-41c794f0212e', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:49:47', '2023-08-24 20:49:47', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('6bc92190-1780-4278-aae1-ba8335c0bda2', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-28 15:22:07', '2023-08-28 15:22:07', NULL, '140.213.132.167', 'Mobile', 'Tangerang, Banten, ID'),
('6c2760ad-4ff9-475e-9747-811e34076585', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-06 02:31:53', '2023-09-06 02:31:53', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('6c2f1e72-822b-4e7a-9f24-aa7b73b3d8b1', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/bf1465ff-cd26-4357-aca2-e6dbb50a0294', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:07:58', '2023-09-06 02:07:58', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('6c3086bb-f226-4ae4-859f-ca2b7a114c4e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-20 07:00:34', '2023-09-20 07:00:34', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('6c778b91-6f17-4f36-8c2c-6c4dcd4ff52d', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-19 08:21:35', '2023-10-19 08:21:35', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('6d316881-808d-48b0-933c-8dc0b7cc0312', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:26:54', '2023-09-06 02:26:54', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('6d643cf5-b7e0-4778-8b25-3691c3dad70f', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:47:32', '2023-09-18 09:47:32', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('6d75f70b-b9b0-40a3-8595-dff9a235a958', 'Data Pengajuan Ditambahkan', 'http://127.0.0.1:8000/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-23 08:34:19', '2023-08-23 08:34:19', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('6d8054ff-24c3-4647-9df3-3bc6c717729b', 'Bayar Spp-Ela Rahmawati (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-11 08:53:32', '2023-09-11 08:53:32', NULL, '120.188.6.155', 'PC', 'Jakarta, Jakarta, ID'),
('6e295a55-ed4a-471b-936d-5f43c2f8a521', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-20 01:02:37', '2023-11-20 01:02:39', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('6e5e1b92-d874-45fa-b50f-6901383f278f', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-27 23:37:04', '2023-08-27 23:37:04', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('6e61878f-e9b3-4cea-9cef-4b07f733a690', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/28d33af8-63c2-41b2-affa-874440792f20', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-04 10:13:27', '2023-09-04 10:13:27', NULL, '180.251.180.234', 'Mobile', 'Bogor, West Java, ID'),
('6ea96a67-de38-4a5a-9140-6f052facb68d', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-15 08:37:08', '2023-09-15 08:37:08', NULL, '114.10.30.54', 'PC', 'Jakarta, Jakarta, ID'),
('6ebe4535-e0c0-46b9-bca8-c93d3bd47e0d', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 08:35:42', '2023-09-22 08:35:42', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('6f832cd6-af19-422e-9300-f78e18498913', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 10:59:51', '2023-08-25 10:59:51', NULL, '140.213.26.202', 'Mobile', 'Tangerang, Banten, ID'),
('70018a0f-eb7a-4bed-ac0b-d36909599c40', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:06:30', '2023-09-19 13:06:30', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('70491675-68f7-46ba-8bc0-ba89ecd8fc0a', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-24 20:53:40', '2023-08-24 20:53:40', NULL, '120.188.67.17', 'Mobile', 'Jakarta, Jakarta, ID'),
('7067e1d0-eb8b-47d7-b7ac-9c8feef8456f', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/23b8948b-9483-4829-ab4a-60058f68220b', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:22:32', '2023-08-24 20:22:32', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('7075ef8a-94ad-4d6f-b629-51a51054b088', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:05:02', '2023-09-14 08:05:02', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('70cd1fc5-6a37-48ed-a611-b8270908adf8', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 04:23:03', '2023-08-26 04:23:03', NULL, '125.161.91.238', 'PC', 'Jakarta, Jakarta, ID'),
('70d3cdc9-7655-4a42-9180-8c70fbdb9170', 'Hapus Data Kas Honor', 'https://admin.smk-almuttaqien.sch.id/honor/e194df9b-8e07-41d7-8b23-12cbd768d628', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:34:23', '2023-09-06 01:34:23', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('71037e5c-330c-4d36-9777-eb7666fdc95f', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/d45b2696-9907-487f-9599-e26191ba76ee', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:21:36', '2023-09-06 08:21:36', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('7168e660-3c56-4fb5-9329-f3b9fb8d0195', 'Tambah Data Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:01:39', '2023-09-06 01:01:39', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('71b4fc58-1b55-4788-9445-76136bfbb004', 'Tambah data konseling', 'https://admin.smk-almuttaqien.sch.id/konseling', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-25 10:37:45', '2023-09-25 10:37:45', NULL, '180.252.85.140', 'Mobile', 'Cibinong, West Java, ID'),
('7223d76c-37de-4c79-8808-0a67e332273e', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-15 08:39:54', '2023-09-15 08:39:54', NULL, '114.10.30.54', 'PC', 'Jakarta, Jakarta, ID'),
('7239fb6d-08b3-4c43-bb04-e4caaf8bb48c', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store2', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:25:46', '2023-09-14 08:25:46', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('723e444b-233c-4e57-8505-0ff1f7f52de2', 'Bayar Spp-Faisal (Apr 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:47:09', '2023-09-18 09:47:09', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('73021f1d-1057-4ac5-98c9-c7a1600074b2', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:13:25', '2023-09-19 13:13:25', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('73691ceb-bb6c-4155-956b-2b34496d5ee1', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-19 06:36:04', '2023-10-19 06:36:04', NULL, '182.0.215.210', 'PC', 'Jakarta, Jakarta, ID'),
('736ebee9-3aa4-4439-b5a0-249a0712d1f1', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store2', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:26:01', '2023-09-14 08:26:01', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('7394411b-322f-4490-b9ef-5c8d9e025591', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-09 08:55:22', '2023-10-09 08:55:22', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('73a10a83-4896-4571-90c3-d886667ddf08', 'Tambah Data Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:42:58', '2023-09-06 01:42:58', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('73a9a1cb-db7f-42a9-a129-119696625170', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store3', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:17:54', '2023-09-14 08:17:54', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('73ecd0f2-dbd6-49ab-aaa1-e090a68dac7b', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 04:24:33', '2023-08-26 04:24:33', NULL, '125.161.91.238', 'PC', 'Jakarta, Jakarta, ID'),
('73edf1d3-c020-48f5-b2e2-0cf9a9ab06dd', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-23 07:33:44', '2023-09-23 07:33:44', NULL, '180.252.94.156', 'Mobile', 'Depok, West Java, ID'),
('74b3decd-5f8e-44ee-90dd-0ff761835d56', 'Tambah kategori', 'https://admin.smk-almuttaqien.sch.id/kategori', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-18 09:43:17', '2023-09-18 09:43:17', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('74fc5fec-621c-4f61-9833-e12fcd49f937', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-15 07:56:04', '2023-09-15 07:56:04', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('753e2756-bb13-4a4f-88de-466c2b490002', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/871ca11e-3405-46b2-9bf5-a040c330d487', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:24:13', '2023-08-24 20:24:13', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('754de9e8-cb94-4dda-82e5-57261ba84df0', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-12 10:45:20', '2023-10-12 10:45:20', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('75a2eba3-d72d-4ab7-94e8-007f13d74191', 'Hapus Biaya Pembayaran', 'http://127.0.0.1:8000/cost/2/410b5279-e719-4ca1-a5fa-8047b0d1c469', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 14:08:57', '2023-12-05 14:08:57', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('75acc4f4-d39c-4d83-acaa-0fdcea656a88', 'Hapus Data Pembayaran Spp Siswa', 'http://127.0.0.1:8000/spp/b85b76d0-e4f5-4029-8618-91e51ea92c42', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 11:34:56', '2024-01-03 11:34:56', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('75b4f9c4-1b6e-46b2-aac1-750fe8492753', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 13:56:21', '2023-10-05 13:56:21', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('75c72b2f-4a26-448b-a6d9-4e5973948b08', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-16 08:21:30', '2023-09-16 08:21:30', NULL, '110.137.193.203', 'PC', 'Jakarta, Jakarta, ID'),
('75f70aad-ccb9-41c5-94f5-70530b26a3d3', 'Hapus barang inventori', 'http://127.0.0.1:8000/baranginventori/30', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-01 06:30:32', '2023-12-01 06:30:32', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('76111b2e-1a2f-4976-984d-4e495a556793', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-26 09:44:57', '2023-09-26 09:44:57', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('7626f0f2-c84a-4c27-a34e-3533cbd4274e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 11:41:29', '2023-09-14 11:41:29', NULL, '182.0.139.85', 'Mobile', 'Jakarta, Jakarta, ID'),
('76279354-4b08-4870-b995-86b24e3b370a', 'Tambah Surat Keluar', 'https://admin.smk-almuttaqien.sch.id/surat-keluar', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-21 10:39:01', '2023-09-21 10:39:01', NULL, '140.213.20.60', 'Mobile', 'Jakarta, Jakarta, ID'),
('764311a5-151e-4fcb-b350-7716061353b8', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/c3055bee-c812-44d9-8480-28d178ca42c3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:14:24', '2023-08-26 10:14:24', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('77123535-c4c4-4923-923f-d94c287fa886', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:04:19', '2023-08-25 09:04:19', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('779ef05c-e7df-4325-8d82-99b11f3c1151', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 04:35:18', '2023-11-02 04:35:18', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('77a16017-6b91-4c0f-931a-ab66babef26c', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store1', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:14:29', '2023-09-14 08:14:29', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('77b0405a-5eda-4f5d-a314-28d267f7e0d0', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store3', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:18:40', '2023-09-14 08:18:40', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('77b435a1-affc-4483-966d-7a988d6832ed', 'Bayar Spp-Muhamad Rehan (Jun 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:32:00', '2023-09-18 09:32:00', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('77c75c0e-1487-4ff2-bd39-78f690d2e2c3', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/b4f22018-4626-4846-b284-d46c525244b8', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-09-26 11:12:26', '2023-09-26 11:12:26', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('77cec0bb-89fc-4e6e-bcbb-3f4b4c686c0a', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-08 07:42:11', '2023-09-08 07:42:11', NULL, '110.137.194.235', 'PC', 'Jakarta, Jakarta, ID'),
('78021c50-1ade-4cf9-9ad3-0c9c6b86014b', 'Tambah Data Pengeluaran Kas BOPDA', 'http://127.0.0.1:8000/kasbopda/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:28:41', '2024-01-03 10:28:41', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('780505a4-0bc7-4a98-99d5-7a9155140ba5', 'Tambah Data Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 13:48:35', '2023-09-06 13:48:35', NULL, '103.123.250.71', 'PC', 'Jakarta, Jakarta, ID'),
('784a05cd-dc90-49cc-b929-ee87194fcc21', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/0b601e78-0de0-4e1f-9453-dba7394d77c0', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:23:20', '2023-10-05 15:23:20', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('78bcde0a-5db4-4641-a4ed-da653ccf45c2', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-26 13:03:51', '2023-09-26 13:03:51', NULL, '36.77.210.103', 'PC', 'Bogor, West Java, ID'),
('7905d2b5-a4af-43a0-9b66-8c18bb4d5170', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/79782a63-2b46-48bb-bf51-6d2b53dc25b9', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 09:27:44', '2023-08-28 09:27:44', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('7937447f-0368-4b3f-b1cd-bc4ba40cc93d', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:05:11', '2023-08-25 09:05:11', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('7944b88a-472a-4139-a6a3-2bb79cbc7c58', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:25:57', '2023-09-19 12:25:57', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('79596e4a-5342-434a-8e00-64879184a419', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-08 15:39:33', '2023-09-08 15:39:33', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('7961af2c-8842-4d17-895b-c2efa0f0fa86', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:38:48', '2023-09-19 12:38:48', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('797565a2-89f7-4ef0-9b8e-817f80afb61c', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 17:13:01', '2023-08-26 17:13:01', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('7994f381-26f2-4405-8bad-d6ca10cf48b5', 'Edit Data siswa', 'http://127.0.0.1:8000/siswa/22f2158b-2e21-4e11-9df3-a475923364c0', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 06:51:55', '2023-12-05 06:51:55', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('79a880e2-9ecc-4e21-a971-edbf6e6f0a56', 'Bayar Spp-M Rifaldo (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-25 08:11:32', '2023-08-25 08:11:32', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('79d5f808-13ba-4ad6-9d1e-083c78864090', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 14:59:22', '2023-09-22 14:59:22', NULL, '180.252.94.156', 'Mobile', 'Depok, West Java, ID'),
('79ea2cc1-d265-4052-8069-e6dacf0acdca', 'Bayar Spp-Ariyanto (Feb 2024)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:42:22', '2024-01-03 10:42:22', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('7a047d37-13e2-4ba4-af7d-7083679b4e47', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/257fda09-2263-49fb-b52d-eef00f1463ba', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:50:33', '2023-09-27 10:50:33', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('7a1960d7-8376-483e-becd-ab2f5b19a924', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-06 08:27:00', '2023-10-06 08:27:00', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('7a5c26de-0a91-4ce4-89e9-8e039bdfd5ea', 'Bayar Spp-M Rifaldo (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-28 16:20:15', '2023-08-28 16:20:15', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('7a9d07ef-cde6-4acd-97e1-19332133b84f', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:05:44', '2023-09-19 12:05:44', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `ip_address`, `device`, `location`) VALUES
('7b1a2378-b789-42a5-b949-b78f50193911', 'Edit Data siswa', 'http://127.0.0.1:8000/siswa/01bc0a1a-3186-41de-a104-658e96d79a28', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-04 09:59:53', '2023-12-04 09:59:54', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('7b2cad2b-cb94-4c13-a378-e9da54ff7a79', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:38:59', '2023-09-22 09:38:59', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('7b39a6ae-e767-45c5-9499-d13e3acc329b', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 04:20:13', '2023-08-26 04:20:13', NULL, '125.161.91.238', 'PC', 'Jakarta, Jakarta, ID'),
('7ba8d30a-71ce-43cc-a336-e0c158450e7a', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/f36bacb4-0058-4722-9af2-3c40c2bb9e35', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:13:32', '2023-09-06 02:13:32', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('7bcc6e63-cb7b-4786-9ff8-7e8cd9c97e64', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/ba885249-ed52-4db8-9419-de119de6ac6b', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:44:27', '2023-10-05 15:44:27', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('7c1c18ee-09da-4a42-9be4-89efef9d85cc', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 15:29:42', '2023-09-19 15:29:42', NULL, '140.213.130.238', 'Mobile', 'Tangerang, Banten, ID'),
('7c1dfe67-848a-444c-84e7-bcfd4f1a8a00', 'Bayar Spp-Ariyanto (Jul 2023)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 06:55:26', '2024-01-04 06:55:26', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('7c51ffd8-9659-42a6-a808-96309f9840fe', 'Bayar Spp-Ariyanto (Jan 2024)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:58:09', '2024-01-04 07:58:09', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('7c79dc08-09ad-4038-ac2f-5c24e72d7538', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:32:00', '2023-09-06 02:32:00', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('7d02b400-3c1e-4660-8f04-ccdead1606f7', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store2', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:25:29', '2023-09-14 08:25:29', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('7d08d1e1-0413-49a8-9295-60d9234606bd', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/a78e10b8-9410-4fc1-a562-42a5eb1d5637', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:57:36', '2023-09-27 10:57:36', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('7d452da1-2817-47ab-9181-7c124badc4d3', 'Perbarui Spp-Cindy Nurcahniaty (Feb 2024)', 'http://127.0.0.1:8000/spp.43951063-2f8d-4bce-a948-541f479eaea2.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 11:27:36', '2024-01-03 11:27:36', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('7dcce62c-fe41-4b66-9118-de886b1ed27d', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:29:34', '2023-09-06 02:29:34', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('7dceed3a-ae7f-42ad-979f-55c551655f2f', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 08:45:51', '2023-09-22 08:45:51', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('7de1e099-2273-4769-9ed6-51ba0eca1a3e', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/7c0196d5-532c-4595-9d3f-1ea1e56f0fc4', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:03:46', '2023-09-06 02:03:46', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('7e7b5def-d2eb-47a0-8d36-6f0da113806e', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/657eee53-36c5-4bf7-a6a3-68d29741f092', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:41:19', '2023-10-05 15:41:19', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('7ece08a1-289a-4dff-9358-6f5eda9e1479', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/3ff98436-0cfe-45a7-b1ed-3db5f8526df7', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:22:54', '2023-09-06 08:22:54', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('7eec5d5b-9d3f-4988-8fb8-91992fb4ee21', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:07:04', '2023-09-19 13:07:04', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('7f2eb854-b50b-49f8-a8ef-bed6838ef27b', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/40aeb086-b457-41ac-8c83-28122e039e93', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:38:08', '2023-09-27 10:38:08', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('7f45a1db-a51b-4981-8cbd-0a53468aab5f', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-01 07:22:01', '2023-09-01 07:22:01', NULL, '180.251.180.199', 'PC', 'Bogor, West Java, ID'),
('7f7aabea-c0e9-4489-b1f3-d74b5ee3605c', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:25:09', '2023-09-06 02:25:09', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('7f81fe4f-a77a-4e3d-bc1e-553f53d55c06', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/b327768e-d0bd-47be-a5ed-2e5dd5e4dc89', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:13:36', '2023-08-26 10:13:36', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('7f97641a-7158-4301-9755-cc6a456db553', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:56:42', '2023-09-19 12:56:42', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('7fbed707-cd2d-4237-9553-13b1b817cb9b', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/6173c743-4713-4f86-81ec-40c92a2ad6f6', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:53:40', '2023-09-27 10:53:40', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('7fcf2dd4-1ef4-483c-8f1c-15c7cb136ba4', 'User Login', 'https://demo.suryatama.tech/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-26 13:48:29', '2023-10-26 13:48:29', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('7fcfed7f-03c3-4e30-a4da-b9ef947145c8', 'Tambah Data Mapel', 'https://admin.smk-almuttaqien.sch.id/mapel', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 08:24:37', '2023-09-22 08:24:37', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('7ffa1b72-8312-43af-9c58-275df25ec0fa', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/a1240add-fdb7-4a69-b80d-396c75f456ad', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:49:48', '2023-09-27 10:49:48', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('800120be-d4d1-4682-ab49-cc3d5c0eb24c', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 03:21:58', '2024-01-03 03:21:59', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('804c47ab-5624-40f7-9ed1-d386e781e7c9', 'Bayar Spp-Muhamad Rehan (Feb 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:29:16', '2023-09-18 09:29:16', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('80617d4c-658b-4130-8fb6-66419c883b6e', 'Tambah kategori', 'https://admin.smk-almuttaqien.sch.id/kategori', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 09:29:57', '2023-08-28 09:29:57', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('80c0ade1-c6d7-41e9-b980-15584150e3ed', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/a51f1b1f-fb74-4f46-9920-4ae0fc6a3f9d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:15:01', '2023-08-26 10:15:01', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('81375a75-da80-4f28-af17-2a85b21a0c69', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-15 09:42:20', '2023-09-15 09:42:20', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('81397465-4e81-4e88-b6f4-400af28b7997', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:01:55', '2023-08-25 09:01:55', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('8148878f-e477-4214-8e25-b5d9ee0cbe3c', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/9c372361-1c97-4719-a7f7-3531045506ef', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:12:41', '2023-08-26 10:12:41', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('8149eb08-4b22-4747-a068-e4d1ed2115ec', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 16:16:39', '2023-10-05 16:16:39', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('81557d8a-b186-4e89-b1bd-59b997b3a4c6', 'Tambah kategori', 'https://admin.smk-almuttaqien.sch.id/kategori', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:00:10', '2023-09-06 02:00:10', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('81785cd6-9def-4394-a6a4-bcb545952667', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 00:54:02', '2023-09-06 00:54:02', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('81f660df-89d6-462e-ad98-6c7538f06a01', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 01:45:20', '2023-11-02 01:45:22', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('81ff759a-7177-4752-b1bd-f8ba3abba7d0', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-11 10:15:15', '2023-10-11 10:15:15', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('8280a470-326f-4da0-badb-76668e6c07ab', 'Hapus Data Kas Oprational', 'http://127.0.0.1:8000/oprational/82ccb92c-52da-4c95-86f3-ae120d07ee1b', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 09:50:26', '2024-01-04 09:50:26', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('82a1ed47-6d04-4bf6-b886-42dc41d652ed', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/e833d5a5-f6f3-4c7b-a402-c8473d1e4a1c', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:25:58', '2023-08-24 20:25:58', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('82a38ec9-0525-48d3-bec8-899d2ed15113', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/2924ccc0-af51-41e4-9565-1814c5052615', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:23:44', '2023-10-05 15:23:44', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('82a3bf85-2f06-481f-b718-fd1ba003cdac', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 12:02:28', '2023-09-14 12:02:28', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('82c8275a-31c2-467d-81ee-56f9d069a83b', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-08-26 20:29:18', '2023-08-26 20:29:18', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('83282bb5-7023-4633-8ee9-e735e90986c7', 'Update File pegawai', 'https://admin.smk-almuttaqien.sch.id/pegawai/a37920d3-59d1-4523-8177-e42ad0dd5d3e', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-15 08:29:16', '2023-09-15 08:29:16', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('832e5e21-6619-48b9-a9d6-07aea91b8dd9', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 08:45:18', '2023-08-25 08:45:18', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('8331410e-a057-43be-a475-188927c63917', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 16:06:39', '2023-10-05 16:06:39', NULL, '158.140.162.155', 'PC', 'Cibinong, West Java, ID'),
('836eb626-df47-44ae-a827-d7e2afbabb3d', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-11 17:45:18', '2023-10-11 17:45:18', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('837763bb-4f4e-496b-aeef-ab875bc839f3', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-21 14:05:28', '2023-09-21 14:05:28', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('83886fc9-477d-4bdd-9bec-04fa91ec3c4f', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:26:12', '2023-09-06 02:26:12', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('83d24ef5-4cd1-4f8b-b743-31db7b89e76a', 'Bayar Spp-Nugi Oliansyah (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-28 16:37:28', '2023-08-28 16:37:28', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('844bf0d4-52c2-4dde-a8eb-d3234427e23c', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:29:16', '2023-09-19 13:29:16', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('84cde327-ae01-494e-be4c-934afad60a23', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '75133634-0814-4d4f-bc96-71e610bb6842', '2023-09-26 11:19:24', '2023-09-26 11:19:24', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('85396e1b-fa14-4c61-a98c-4e07c633afac', 'Edit Surat Masuk', 'https://admin.smk-almuttaqien.sch.id/surat-masuk/ed1ebbd2-3b51-4c44-afb3-7d7a7656470f', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 11:15:21', '2023-08-30 11:15:21', NULL, '114.10.65.28', 'Mobile', 'Jakarta, Jakarta, ID'),
('859deadc-388c-4e9b-9981-3295877c3ed1', 'Bayar Spp-Faisal (Mar 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:45:56', '2023-09-18 09:45:56', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('86027049-24cb-4760-982d-513fbfd4d0d3', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 02:19:12', '2023-11-02 02:19:12', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('86203725-b481-46f9-be40-6d75bb8b9003', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-28 15:21:03', '2023-08-28 15:21:03', NULL, '140.213.132.167', 'Mobile', 'Tangerang, Banten, ID'),
('86333ebe-ce5a-4c7d-98c0-c516eca3d5ad', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-19 12:16:37', '2023-09-19 12:16:37', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('871d7eff-f5cc-45c0-9354-c5e8adea9e5e', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:04:55', '2023-08-25 09:04:55', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('87f5db86-e18d-4f38-91be-a961725af4b7', 'Tambah kategori', 'https://admin.smk-almuttaqien.sch.id/kategori', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:16:36', '2023-09-06 02:16:36', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('887ead76-2b25-486c-a1e8-d0a8210b05b8', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/dd05db76-3a3c-4b9b-b012-8eb9b534b1f3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 09:28:27', '2023-08-28 09:28:27', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('888917f3-8508-406e-a6ac-c7b5ca1d5686', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-07 08:36:34', '2023-09-07 08:36:34', NULL, '120.188.92.37', 'PC', 'Jakarta, Jakarta, ID'),
('889f6b25-d7e5-42a6-84e4-5cc98116378b', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:59:13', '2023-09-19 12:59:13', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('88b43188-7f26-4802-9111-1a4ce7c260b3', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 11:43:05', '2023-09-25 11:43:05', NULL, '114.4.82.59', 'PC', 'Jakarta, Jakarta, ID'),
('88b6746a-c809-49dd-a35c-002a601b4eba', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:36:59', '2023-09-19 12:36:59', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('88b953e7-9fb8-4f9e-a29c-d2f3e597b574', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:28:00', '2023-09-22 09:28:00', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('88db6114-c8e5-4198-85f7-5d67e696a1db', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-26 13:54:07', '2023-09-26 13:54:07', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('88fb9f85-c8b4-495a-ae0d-36605562f66f', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/1ba1886b-c197-4ca4-9dc3-5da707dc5dae', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:07:03', '2023-09-06 02:07:03', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('89572a68-8c82-42f7-82a9-9bf6409fe6c4', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:57:42', '2023-09-19 12:57:42', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('8962b631-0729-4aa6-8a61-8ec411abc168', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-19 10:07:56', '2023-10-19 10:07:56', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('89d445b5-53c4-40ce-b127-eb7db0092915', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-29 08:38:50', '2023-08-29 08:38:50', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('89fc0331-4f3d-45a5-9fda-082cb8caf3ec', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 11:50:45', '2023-09-14 11:50:45', NULL, '180.251.181.119', 'PC', 'Bogor, West Java, ID'),
('8b12d931-af69-4823-8c1b-c87ea5439802', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/6f62e827-ba91-49ed-9ed4-873402b2d364', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:51:04', '2023-09-06 01:51:04', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('8b92807c-f9a6-4e56-a04f-d3d7b5e94103', 'Bayar Spp-Agus Muhammad Dalfa (Dec 2023)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 07:12:50', '2024-01-03 07:12:50', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('8cac6788-d6b3-4da5-85cc-87c0c218ad1b', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-15 15:24:28', '2023-09-15 15:24:28', NULL, '140.213.26.216', 'Mobile', 'Tangerang, Banten, ID'),
('8ce551de-6731-47f9-81e8-563204683867', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/ce81315d-3bc4-454f-b141-3612f784b629', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:51:53', '2023-09-27 10:51:53', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('8d0d45d5-430f-46e7-8448-bc7459d92d98', 'Bayar Spp-Intan Nuraeni (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 09:04:43', '2023-09-14 09:04:43', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('8d6be693-5221-446b-a779-38d9ad88dcfb', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:14:49', '2023-09-19 12:14:49', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('8ddbebde-009a-4606-b631-6adf46b5dfd8', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/88c47483-a63f-4afc-8929-17738d45ae1b', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:49:24', '2023-09-27 10:49:24', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('8e5a8022-e355-482f-95a9-d8fd5a37fabc', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-12 15:36:34', '2023-10-12 15:36:34', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('8e8a9f43-aa35-48cb-b8cd-67bc1bc5a39f', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-08 07:46:48', '2023-09-08 07:46:48', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('8eb46758-c392-452a-b1ad-c2ce741a95ee', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:32:03', '2023-09-22 09:32:03', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('8ed56fd9-fdbd-4e28-a968-76c79bcff69e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-29 08:13:00', '2023-08-29 08:13:00', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('8efaf322-361b-4560-94db-16e37bb4175b', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-12 08:32:06', '2023-10-12 08:32:06', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('8f217c5a-0f28-4362-9425-51f32d6cc955', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-25 17:33:28', '2023-08-25 17:33:28', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('8f3023b6-7e03-433e-ab0d-be2571ccd97a', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-08-26 11:37:13', '2023-08-26 11:37:13', NULL, '120.188.37.224', 'PC', 'Jakarta, Jakarta, ID'),
('8f5f2242-c967-4142-ac83-0cfd0f8627ee', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:07:03', '2023-09-22 09:07:03', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('8f95cc69-cc9f-4f64-b491-6c91963a90d7', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-31 08:45:48', '2023-08-31 08:45:49', NULL, '180.251.181.141', 'Mobile', 'Bogor, West Java, ID'),
('90b021d8-596e-4c85-a2fb-f8157b4df29d', 'Bayar Spp-Adrian (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-28 16:36:29', '2023-08-28 16:36:29', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('90fe5aef-da17-443a-99d9-533db89a7ac3', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:37:55', '2023-09-19 12:37:55', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('91634b2f-f552-4e04-86a2-ee651d5071db', 'Bayar Spp-Sherly Lestiani (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-21 09:13:13', '2023-09-21 09:13:13', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('9179faba-51ee-4c61-9725-1fd3af4c6f3c', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/bc7b25cb-49ef-4e51-b31e-59bf638d4e2c', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:27:47', '2023-09-06 08:27:47', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('91d704b2-9cb4-443e-977c-51dadfa63f8a', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-29 12:05:19', '2023-08-29 12:05:19', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('9272d29c-740f-4fcd-906d-7a93cd00f5d3', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:06:28', '2023-08-25 09:06:28', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('9289005e-a389-448c-90ed-9a75500f0640', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-20 22:19:05', '2023-09-20 22:19:05', NULL, '114.5.145.178', 'Mobile', 'Medan, North Sumatra, ID'),
('92ee579b-c9ca-4c68-9132-d5be891adf9a', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-10 10:49:49', '2023-10-10 10:49:49', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('930c3cfe-0c9f-4203-a207-c1df4da4d498', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:19:46', '2023-09-06 02:19:46', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('93352c1a-1c0e-43c8-ac44-55d02f5a26a9', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-19 08:06:43', '2023-09-19 08:06:43', NULL, '158.140.162.155', 'Mobile', 'Depok, West Java, ID'),
('933f3cba-5145-45af-8869-6a04bb37641b', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:49:15', '2023-09-22 09:49:15', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('93bcdec3-1070-466f-9d83-eb5aae7b2af7', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 02:41:07', '2023-11-02 02:41:07', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('9428f3ec-8529-49c2-938b-475d0d940da0', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:08:58', '2023-09-22 09:08:58', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('94c4a653-6b2b-4d07-b64c-733fc0ad734a', 'Perbarui Spp-Cindy Nurcahniaty (Aug 2023)', 'https://demo.smk-almuttaqien.sch.id/spp/736ec704-c0b7-45a9-a758-9953a506d76b', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-13 08:19:04', '2023-10-13 08:19:04', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('94c69602-26a8-4fba-8c6a-0bfe7658e9ff', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:09:10', '2023-08-25 09:09:10', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('95040deb-0113-44e4-bc97-7e053be99b2d', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-31 08:25:36', '2023-08-31 08:25:37', NULL, '182.3.51.187', 'Mobile', 'Jakarta, Jakarta, ID'),
('951e5b08-602f-491c-97c7-b0b2c2afaad2', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/6034067f-8a89-4cc4-b219-2e6de206275d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:56:30', '2023-09-27 10:56:30', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('95ad2df7-4f22-4076-806f-931a8ad7e3b9', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:16:41', '2023-09-22 09:16:41', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('95c113d2-24bb-4be1-9e79-2229a718e829', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-04 12:00:24', '2023-09-04 12:00:24', NULL, '180.251.180.234', 'Mobile', 'Bogor, West Java, ID'),
('95c7e9c3-c395-44be-965f-68bb7e8c9781', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-01 03:45:30', '2023-12-01 03:45:31', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('95cc792c-7192-4a5e-9d52-c0e39f8ffaa6', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 16:19:24', '2023-09-14 16:19:24', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('95d6a143-2ae0-4ec4-8f11-0084150e3799', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:04:54', '2023-09-19 13:04:54', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('95fa80e5-eb0a-4391-b2ee-f0bf6c514b3c', 'Tambah Data Pemasukan kas BOPDA', 'http://127.0.0.1:8000/kasbopda/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:28:19', '2024-01-03 10:28:19', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('961969fd-c85f-47b5-9c34-dcc32f3c3e34', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/bf1465ff-cd26-4357-aca2-e6dbb50a0294', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:14:37', '2023-08-26 10:14:37', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('961ec17b-ece4-4e04-b78f-47c236e59c5f', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-08 07:50:41', '2023-09-08 07:50:41', NULL, '110.137.194.235', 'PC', 'Jakarta, Jakarta, ID'),
('9652986a-2d47-4c40-9621-d1749119ace2', 'Tambah Data cost$cost', 'http://127.0.0.1:8000/cost/store3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 13:15:49', '2023-12-05 13:15:49', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('9660a576-0383-4bc5-8775-0d6fd4a8242d', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 08:59:56', '2023-08-25 08:59:56', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('96f4e6c6-65f2-4633-bb79-2b9d9b941e34', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-08 11:04:28', '2023-09-08 11:04:28', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('971475ba-58f2-4cc5-ad89-c01d1a24b840', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-15 09:44:48', '2023-09-15 09:44:48', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('9752c310-bed3-402e-a0d0-6cd8d825c254', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store1', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:16:34', '2023-09-14 08:16:34', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('9776e2af-0012-4c95-9c43-b0941c41b1bf', 'melihat Data Kas SPP', 'http://127.0.0.1:8000/kasspp/printPDF', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-23 04:14:17', '2023-08-23 04:14:17', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('980b47d5-2cdd-4a9b-b17a-41d849ef4738', 'Perbarui Spp-Cindy Nurcahniaty (Jan 2024)', 'http://127.0.0.1:8000/spp.b85b76d0-e4f5-4029-8618-91e51ea92c42.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 11:28:50', '2024-01-03 11:28:50', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('98381460-d10e-4f9a-b8ac-756402418fe9', 'Update File pengajuan', 'http://127.0.0.1:8000/pengajuan/257e105c-6d8c-42d7-bdb3-904f46dda1d4', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-23 08:35:00', '2023-08-23 08:35:00', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('98851be2-0f1f-4326-86ee-7fb1f86a071e', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:05:29', '2023-08-24 20:05:29', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('988bbd91-f63b-4a5f-b2fd-27aa1f3fd305', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-13 08:21:26', '2023-10-13 08:21:26', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('98a6f785-1dd1-499c-aeee-01e38b4627cd', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-10-12 15:43:21', '2023-10-12 15:43:21', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('998093d6-7f6f-46df-ba6d-2f75159a45a5', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-30 10:03:15', '2023-08-30 10:03:15', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('9996ec25-6c4f-443c-94c8-9adb91b6a73a', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-08 17:52:20', '2023-09-08 17:52:20', NULL, '103.123.250.71', 'PC', 'Jakarta, Jakarta, ID'),
('999bd134-23a4-4c5c-80b3-f4fb5280764d', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-13 10:13:57', '2023-09-13 10:13:57', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('99c98e7f-8e31-44b1-8c27-bac0a6502473', 'Tambah Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-11 09:00:59', '2023-09-11 09:00:59', NULL, '112.215.225.63', 'Mobile', 'Tangerang, Banten, ID'),
('9a842d72-21eb-4183-9631-98f9eb00a22c', 'Hapus Data Kas UMKM', 'http://127.0.0.1:8000/kasumkm/3a9192ec-6b7c-4cff-99b2-9b6b8931c331', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 10:25:23', '2024-01-04 10:25:23', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('9aa8cbe3-6df4-4910-861a-f98e31f3746c', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:27:06', '2023-09-19 12:27:06', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('9ab46237-8724-4310-bd61-b23c85a9a4f6', 'Bayar Spp-Muhamad Badri Tamami (Nov 2023)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 02:53:50', '2024-01-04 02:53:50', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('9abcb609-62bd-46fd-b919-d0793632677b', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:02:13', '2023-09-19 13:02:13', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('9ad544c7-ed74-4361-863a-41ad8ab4706e', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-12 08:34:10', '2023-10-12 08:34:10', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('9ad8beeb-391e-42a8-a793-446aacda9ea7', 'Bayar Spp-Asih (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-04 09:02:54', '2023-09-04 09:02:54', NULL, '114.10.65.214', 'PC', 'Jakarta, Jakarta, ID'),
('9af222be-0a67-4a30-8567-ae1adc0fffbd', 'Edit Biaya SPP', 'http://127.0.0.1:8000/cost/edit/0af30f28-1adb-4ead-b434-1214f29df466', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-02 10:51:06', '2024-01-02 10:51:06', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('9aff3e9b-485e-4db4-a352-1180e7d2a08e', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store3', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:19:12', '2023-09-14 08:19:12', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('9b5024cf-7f4e-4444-8347-ba0c428eb6fe', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 08:59:41', '2023-09-22 08:59:41', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('9bba09d7-e2ec-4026-a89e-35f173687c2e', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'fdc3cdde-5b16-4b16-b73a-9511d997a4f6', '2023-09-26 11:19:15', '2023-09-26 11:19:15', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('9bc8531a-f79b-4fb0-bf60-ab0be7435fff', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 08:35:01', '2023-09-22 08:35:01', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('9c4e165b-6135-4f5b-8ca1-469387b559fe', 'Hapus Data Pembayaran Spp Siswa', 'https://demo.smk-almuttaqien.sch.id/spp/ccdcb9e0-484d-406d-bfe7-8419d450bc35', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-13 08:38:21', '2023-10-13 08:38:21', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('9cd03a67-680c-42c4-954b-a4badb472230', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:16:40', '2023-09-19 13:16:40', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('9d052c65-65d2-4c11-8b6d-47e546b3a857', 'Tambah Data Pengeluaran Kas Honor', 'https://admin.smk-almuttaqien.sch.id/honor/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:34:01', '2023-09-06 01:34:01', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('9d33c7a2-c007-47da-a947-8edcb72d58f1', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:54:19', '2023-09-19 13:54:19', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('9d35edeb-bfa0-4d0b-af37-6135b1fc6544', 'Bayar Spp-Sarip Hidayatulloh (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-25 08:14:52', '2023-08-25 08:14:52', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('9d3a0f09-ddd6-40b3-b2c2-0a6ed96260db', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-21 06:57:09', '2023-09-21 06:57:10', NULL, '114.4.214.155', 'PC', 'Jakarta, Jakarta, ID'),
('9dc79e17-878d-4b72-98a3-876c79004613', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-13 08:21:33', '2023-10-13 08:21:33', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('9dd299e2-71c2-4399-869b-0500212266a6', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-28 16:15:12', '2023-08-28 16:15:12', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('9e1967ba-af71-4b84-856c-f6145997f806', 'Hapus Data Kas KasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/07d1deef-737f-40da-ad69-4ffde164e796', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:02:02', '2023-09-06 01:02:02', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('9e29ebfc-34fb-4491-8513-aff091f79615', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 06:34:36', '2023-09-14 06:34:36', NULL, '158.140.162.155', 'Mobile', 'Cileungsir, West Java, ID'),
('9e7c44f3-a038-4ed7-8c4e-d6abfa9fb7ff', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:51:01', '2023-09-19 13:51:01', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('9e7cad79-ab17-4980-8b03-048238521ee7', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 20:00:52', '2023-09-06 20:00:52', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('9ea92266-54d6-4810-8de6-a87127aaed94', 'Bayar Spp-Merina (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-21 08:21:58', '2023-09-21 08:21:58', NULL, '114.4.214.155', 'PC', 'Jakarta, Jakarta, ID'),
('9ec61cdc-176e-4d17-b63d-a4d503964656', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-08 09:32:25', '2023-09-08 09:32:25', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('9f0dc14e-f42f-415b-8f7f-957f82e0bcfa', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 04:15:45', '2023-08-26 04:15:45', NULL, '125.161.91.238', 'PC', 'Jakarta, Jakarta, ID'),
('9f3f35d5-aaf0-4f31-8327-e4a9552f2023', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'fdc3cdde-5b16-4b16-b73a-9511d997a4f6', '2023-09-26 11:20:17', '2023-09-26 11:20:17', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('9f8d0ff3-4f5f-4722-8883-a9a781d20e35', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:33:34', '2023-09-19 12:33:34', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('9fc4d154-5081-4b12-9221-f5a4f09a5559', 'Tambah Data Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:43:28', '2023-09-06 08:43:28', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('9fc8136c-b1df-4066-8817-46da3b1e127a', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-19 08:15:20', '2023-10-19 08:15:20', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('9fe73207-6686-4280-8b64-d7b75e9f7174', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-26 11:20:48', '2023-09-26 11:20:48', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('a00bd713-f8d7-49ef-9e00-a6d6291b800d', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-26 14:21:23', '2023-09-26 14:21:23', NULL, '103.123.250.71', 'PC', 'Jakarta, Jakarta, ID'),
('a03652fb-82bd-4914-bcb3-415c6a20d1da', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:12:01', '2023-08-25 09:12:01', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('a0426280-7728-49ff-bac0-061294341ef1', 'Bayar Spp-Cindy Nurcahniaty (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-06 16:25:27', '2023-09-06 16:25:27', NULL, '114.10.12.42', 'PC', 'Jakarta, Jakarta, ID'),
('a04fbb48-1637-4a89-afbd-4130f08e90b8', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 08:13:03', '2023-08-25 08:13:03', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('a0927811-68b4-44fb-a9d9-c5a0a79291ae', 'Hapus Data Kas Oprational', 'https://admin.smk-almuttaqien.sch.id/oprational/79173286-5e04-40d5-9991-6b6c8c6e2a25', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:00:52', '2023-09-06 08:00:52', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('a0c85383-d176-416d-8deb-4f7042f9fa22', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-15 07:52:11', '2023-09-15 07:52:11', NULL, '114.10.30.54', 'PC', 'Jakarta, Jakarta, ID'),
('a10009c9-1620-4d3f-b919-2d9f8d2df262', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-04 12:38:15', '2023-09-04 12:38:15', NULL, '180.251.180.234', 'PC', 'Bogor, West Java, ID'),
('a10963ed-11b3-46ed-b0c5-e2afe6a87782', 'Bayar Spp-Muhamad Aripin (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-21 08:22:42', '2023-09-21 08:22:42', NULL, '114.4.214.155', 'PC', 'Jakarta, Jakarta, ID'),
('a10d41aa-edbf-42e7-b119-faa28a6f8c5d', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-11 10:15:27', '2023-10-11 10:15:27', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('a11c57a0-0258-4a55-9d36-a2b5b35ecec9', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-13 11:05:55', '2023-09-13 11:05:55', NULL, '202.43.190.111', 'PC', 'Jakarta, Jakarta, ID'),
('a16014ed-2918-41d8-9925-9fb3b08e8acb', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-22 06:54:05', '2023-09-22 06:54:05', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('a164be88-669a-4210-8375-cb51c8f661a9', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-04 12:01:18', '2023-09-04 12:01:18', NULL, '180.251.180.234', 'Mobile', 'Bogor, West Java, ID'),
('a166bc2d-8945-48ab-9aac-df5faff48c4c', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-05 18:10:57', '2023-10-05 18:10:57', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('a1cc3eb1-0549-4622-a1b2-2c2f590976a4', 'Tambah data izin', 'https://demo.smk-almuttaqien.sch.id/absen_siswa.buatizin', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-11 17:45:45', '2023-10-11 17:45:45', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('a1cf26e4-fa67-489f-9c64-bd2aea3173eb', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-25 07:26:50', '2023-09-25 07:26:50', NULL, '158.140.162.231', 'Mobile', 'Jakarta, Jakarta, ID'),
('a1f100ab-25ef-4346-b081-8ee475b5a983', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:29:42', '2023-09-06 02:29:42', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('a204accc-3322-4e66-87f4-3c7f6e4d9b34', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:10:28', '2023-08-25 09:10:28', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('a2666d88-e267-499f-a894-f4a08e345b41', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:22:11', '2023-09-19 13:22:11', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('a2a03b57-83d8-462d-83fd-c7b8a090de1e', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:14:40', '2023-08-25 09:14:40', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('a2ac28e4-c26c-4470-a66e-1959262f23b3', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:05:02', '2023-09-14 08:05:02', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('a2b766b7-8f82-4427-881c-52e0081026fa', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 06:06:06', '2023-11-02 06:06:06', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('a2da75b3-25e8-4a1f-b79f-47fcd20af7fe', 'Bayar Spp-Aditya Sauqi Sabililah (Feb 2024)', 'http://127.0.0.1:8000/spp/storereguler', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 03:26:19', '2024-01-03 03:26:19', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('a2f22159-a58c-47b1-976f-1434c9b31af7', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/546089ce-da52-4375-abde-549aa1455292', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:45:53', '2023-09-27 10:45:53', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('a3283610-9d6c-45b8-80cd-47dfc41658b2', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:47:16', '2023-09-22 09:47:16', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('a35214c8-e8f8-4c45-a918-3c9b135e6220', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/17b66535-52ac-48a5-93ba-d0dbe4a6c2eb', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:12:15', '2023-08-26 10:12:15', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('a3b39672-0800-457a-b453-d40a9ca309ab', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 04:33:51', '2023-11-02 04:33:51', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('a3f2a0be-a198-4a23-8bea-f8abefa90065', 'Bayar Spp-Sherly Lestiani (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-28 16:20:47', '2023-08-28 16:20:47', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('a41bed7c-9ab2-48d3-8dac-4c2a277f9ed7', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-25 08:09:21', '2023-09-25 08:09:21', NULL, '140.213.128.120', 'Mobile', 'Jakarta, Jakarta, ID'),
('a422a98d-76f8-4518-a729-95c0e386a258', 'Bayar Spp-Nia Unia (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 08:14:14', '2023-09-25 08:14:14', NULL, '180.252.85.140', 'PC', 'Cibinong, West Java, ID'),
('a45d4970-81ff-40ed-92fe-099ab470bde4', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-10 21:59:29', '2023-09-10 21:59:29', NULL, '110.137.194.235', 'PC', 'Jakarta, Jakarta, ID'),
('a4951955-8b8b-4e2a-b459-23a7d91a2d63', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-08 06:36:09', '2023-12-08 06:36:09', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('a4bad8bd-cd36-4ed3-b88e-914546a58116', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/55b8ea7b-da1b-4563-9f94-7a2e242f8fe7', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:23:48', '2023-08-24 20:23:48', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('a509de12-1495-4a4e-acbc-5258da753ba2', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:16:53', '2023-09-19 12:16:53', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('a54df8bf-5ac6-43d9-a0f1-a1363d4f069d', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-20 20:57:24', '2023-09-20 20:57:24', NULL, '112.215.226.11', 'Mobile', 'Jakarta, Jakarta, ID'),
('a5629302-64ff-4edb-85f3-85cb9a5fe19d', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 11:55:47', '2023-09-19 11:55:47', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('a56872c1-8804-4b78-a187-7c3cc182d281', 'Hapus Data Kas SPP', 'http://127.0.0.1:8000/kaspip/6045a214-5163-48ef-9bba-e208cfb125f2', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:25:53', '2024-01-03 10:25:53', NULL, '127.0.0.1', 'PC', 'Unknown Location');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `ip_address`, `device`, `location`) VALUES
('a5b36353-f5c9-47ed-ae70-0d97d8c7bc04', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-25 21:45:28', '2023-09-25 21:45:28', NULL, '112.215.233.87', 'PC', 'Jakarta, Jakarta, ID'),
('a6026d51-f5d9-468c-8755-c991f1ebffed', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 07:31:20', '2023-09-06 07:31:20', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('a662002a-8b64-4e2c-8dbd-09b346e2c4f0', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/f856b450-8fe5-4411-8066-c33c0525995b', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:59:12', '2023-09-27 10:59:12', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('a6e18f33-6c9e-430b-8a65-387e07eb89fa', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/b5dbf090-492b-4358-ad5c-dd6bec87c9ec', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:35:43', '2023-08-24 20:35:43', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('a6ea9d7c-dfd2-4c03-868b-2f2ecee10b9d', 'Bayar Spp-Adrian (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-28 16:36:55', '2023-08-28 16:36:55', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('a71df562-fbbf-4704-ab2e-35c3ab2118d1', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:06:33', '2023-08-24 20:06:33', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('a7ea394c-4673-4a06-9521-454e14f2292c', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:03:26', '2023-09-22 09:03:26', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('a7f88d05-fbb6-4db5-82da-8aee3b99b26b', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:02:51', '2023-09-19 13:02:51', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('a82070c2-5d4c-4c88-b600-6380e2b83302', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-30 02:39:44', '2023-11-30 02:39:45', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('a8948dc1-67b7-45e9-85ba-a9a1887ca642', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 18:11:02', '2023-10-05 18:11:02', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('a8996d55-7213-4bc3-b504-23cedf7ca34d', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/15686e26-7c4c-4e9f-b950-e2182d946380', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:41:24', '2023-10-05 15:41:24', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('a8b30aa4-97a1-4173-a25a-59b2132638ea', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store1', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:08:58', '2023-09-14 08:08:58', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('a8fe67b5-06d2-4465-9420-2fa11b8c7bcf', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-10 10:39:44', '2023-10-10 10:39:44', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('a9289cc8-d312-4979-9130-abdc5912c72a', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/20654320-54f5-4d47-af86-d6327dbe3e0d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:07:15', '2023-09-06 02:07:15', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('a9784970-0181-49bb-afea-67a6d983c94a', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-21 09:58:50', '2023-09-21 09:58:50', NULL, '140.213.20.87', 'Mobile', 'Jakarta, Jakarta, ID'),
('aa14114d-36b9-4592-8374-c6fba41769b3', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 04:22:15', '2023-08-26 04:22:15', NULL, '125.161.91.238', 'PC', 'Jakarta, Jakarta, ID'),
('aa14baad-1633-4ec5-b091-b1083bcd6844', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-12 10:44:46', '2023-10-12 10:44:46', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('aa349cb8-3b21-4ea7-9497-4fa03af038ea', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-26 07:42:57', '2023-09-26 07:42:57', NULL, '112.215.225.19', 'Mobile', 'Jakarta, Jakarta, ID'),
('aa3d45d8-35c0-4e8c-94ff-a0039bd57850', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store2', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:24:55', '2023-09-14 08:24:55', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('aa6ff12f-6dc2-422e-9b18-d4f93a21e8d1', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-23 04:04:44', '2023-08-23 04:04:44', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('aaae1816-104b-4c06-97a5-0660dfffd1e6', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:17:49', '2023-09-06 02:17:49', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('aaed496d-91d8-4a7f-b19e-ee8784d9b8f5', 'Tambah Data Pengeluaran Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:36:58', '2023-09-06 08:36:58', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('aaf36705-414c-4e8c-b6f3-af3d1da1d26c', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:46:01', '2023-09-22 09:46:01', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('ab0f99d3-452c-4529-9778-52010be381cf', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/63008885-0c9d-4907-89e3-185d7c1d59fc', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:23:12', '2023-08-24 20:23:12', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('ab5272d6-ffc7-4bc8-9919-092cce22e4f8', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store1', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:13:43', '2023-09-14 08:13:43', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('abb95427-74aa-45a4-aac7-9837333fda20', 'Bayar Spp-M Rifaldo (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-15 08:45:54', '2023-09-15 08:45:54', NULL, '114.10.30.54', 'PC', 'Jakarta, Jakarta, ID'),
('abd20d3b-dcf3-4099-8ac3-699f3c853e15', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/17b66535-52ac-48a5-93ba-d0dbe4a6c2eb', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:08:34', '2023-09-06 02:08:34', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('abd59b30-7528-42e7-be94-305fee6db6b1', 'Bayar Spp-Muhammad Yoga Pratama (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 09:02:51', '2023-09-14 09:02:51', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('abef5d80-da3a-4303-93cd-9e5b2ae171ff', 'Edit Biaya Pembayaran', 'https://admin.smk-almuttaqien.sch.id/cost/edit1/8e4a278a-3356-11ee-bfbb-c85b767819e3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 00:50:19', '2023-09-14 00:50:19', NULL, '182.0.230.148', 'PC', 'Jakarta, Jakarta, ID'),
('ac619cce-0369-455c-b329-485f4e65fb95', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:03:04', '2023-08-25 09:03:04', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('ac73b2fc-b98f-4690-9086-edaefad11a78', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/e2699071-3470-4905-a1e6-3673a265b314', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:57:44', '2023-09-27 10:57:44', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('ac7b8b53-85ec-46dc-ba52-0a873c870a1d', 'Bayar Spp-Ariyanto (Feb 2024)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 08:11:51', '2024-01-04 08:11:51', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('ace93000-fadc-4ff4-89eb-f2fb8a8bc21d', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/24b527cd-c782-478c-9505-747396b093e6', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:44:26', '2023-09-27 10:44:26', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('ad16cb9e-24f3-441a-803c-080679b53def', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-25 07:07:15', '2023-08-25 07:07:15', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('ad825c2c-c2b2-41ec-91eb-028683ccd039', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:29:24', '2023-09-22 09:29:24', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('adacda23-1a5a-45c0-898a-d04501867113', 'Tambah Data cost$cost', 'http://127.0.0.1:8000/cost/store2', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 14:08:46', '2023-12-05 14:08:46', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('aded9a81-a98e-47c8-86d2-1b61d4dd14da', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/78a1945d-9274-411d-8e48-53c0f987b255', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:57:14', '2023-09-27 10:57:14', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('aed2e64a-61b6-4263-bd60-e78d9e0dd68a', 'Update File pegawai', 'https://admin.smk-almuttaqien.sch.id/pegawai/e2699071-3470-4905-a1e6-3673a265b314', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-15 08:29:50', '2023-09-15 08:29:50', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('aed9f60f-bfb5-4b8d-9b79-25eaeba8ee25', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-08 09:32:21', '2023-09-08 09:32:21', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('af1124fe-ca5e-4180-886e-1f4154587242', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/7a8ecda4-4b9c-45e4-be82-a6ffa5d5600b', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:41:31', '2023-10-05 15:41:31', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('af11b34b-9d28-44ba-a2fc-45febf864244', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:09:51', '2023-09-19 13:09:51', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('af803471-9091-4f86-bef1-fb654a9ba331', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-21 08:11:25', '2023-09-21 08:11:25', NULL, '158.140.162.231', 'Mobile', 'Jakarta, Jakarta, ID'),
('af97da9e-4b9c-4940-97ed-0823686ea2e8', 'Bayar Spp-Ariyanto (Mar 2024)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 06:59:38', '2024-01-04 06:59:38', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('afb99297-f0d2-4390-9a9b-b84ec236c1f5', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:25:31', '2023-09-19 13:25:31', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('afc6f374-5cd5-415a-ba46-dcae4e68852a', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-05 13:10:00', '2023-09-05 13:10:00', NULL, '180.251.182.173', 'Mobile', 'Bogor, West Java, ID'),
('afdf4223-d1c8-453c-8cbc-9942e50cf398', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/82db9931-3764-414f-bcfc-cb3e2395b7e4', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:58:36', '2023-09-27 10:58:36', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('affcdbff-fdef-4937-9be7-2f57ee0dac4a', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/3e5d4b24-543e-466a-b56e-eb404c95e27b', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:07:09', '2023-09-06 02:07:09', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('b03f346f-58fd-450e-88ef-88c36c5cc635', 'User Logout', 'http://127.0.0.1:8000/logout', '75133634-0814-4d4f-bc96-71e610bb6842', '2023-12-08 08:16:16', '2023-12-08 08:16:16', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('b066fe31-256b-446c-ae84-0b8042d76051', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-25 08:25:42', '2023-09-25 08:25:42', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('b0f8cfe5-ac4a-4b42-a9f7-9541130e7222', 'Edit Data siswa', 'http://127.0.0.1:8000/siswa/a1240add-fdb7-4a69-b80d-396c75f456ad', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 06:23:43', '2024-01-03 06:23:43', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('b114bf86-a5b6-4f3c-8e76-4796154602d3', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:02:27', '2023-08-25 09:02:27', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('b132726d-ccc1-4b51-848a-f9270a42264d', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 12:28:29', '2023-12-05 12:28:30', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('b147029d-4b68-4b9a-ac6e-f55e1873d1a8', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/acdecc04-42b6-4721-a4f4-f88fd595a1d7', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:24:57', '2023-08-24 20:24:57', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('b14a6544-5561-4195-8036-d5f3b9f21e7b', 'Perbarui Spp-Cindy Nurcahniaty (Oct 2023)', 'http://127.0.0.1:8000/spp.3c39435e-e1ed-4715-88af-e76a45504612.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 08:53:20', '2024-01-03 08:53:20', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('b17578bf-3ebe-4ddc-9a9a-9064ead75734', 'Bayar Spp-Muhamad Badri Tamami (Jan 2024)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:54:55', '2024-01-04 07:54:55', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('b189ff69-aa6f-4e75-be7c-22648a649802', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-12 10:20:12', '2023-10-12 10:20:12', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('b19db565-97b2-4b45-9824-95ebc46428bb', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 00:47:00', '2023-09-14 00:47:00', NULL, '182.0.230.148', 'PC', 'Jakarta, Jakarta, ID'),
('b1fbf12b-b1db-4ba6-9a26-ebbcb7a314eb', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-31 08:41:52', '2023-08-31 08:41:52', NULL, '112.215.224.70', 'Mobile', 'Jakarta, Jakarta, ID'),
('b28a2f30-d2c2-4e5b-8537-df4e7abff4d6', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-10 10:36:59', '2023-10-10 10:36:59', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('b2a84323-5411-4fab-926b-78fa4a3de248', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-19 10:41:26', '2023-10-19 10:41:26', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('b2aa7c95-fad6-4d2f-9b66-e0a3faefb2e4', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-19 06:56:13', '2023-10-19 06:56:13', NULL, '182.0.215.210', 'Mobile', 'Jakarta, Jakarta, ID'),
('b2c56621-8409-4b92-9a66-5bb9d47cde6b', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:53:18', '2023-10-05 15:53:18', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('b317eede-56a3-4c34-84af-4d85d219c3f6', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:11:27', '2023-09-06 02:11:27', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('b3528331-30a9-4a55-a756-0b4007118976', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-10-10 10:50:00', '2023-10-10 10:50:00', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('b3886b6a-14d4-4767-b7ce-9d79c276f5b0', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-04 02:12:29', '2023-12-04 02:12:29', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('b4113182-7e9f-4888-91e7-7b83637f2a98', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-06 02:29:48', '2023-09-06 02:29:48', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('b449d51b-cb53-4b0a-ac7d-bfa6acfed027', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-05 09:37:20', '2023-09-05 09:37:20', NULL, '180.251.182.173', 'Mobile', 'Bogor, West Java, ID'),
('b46150c1-3d3c-49e9-b9ab-891aee14098e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 08:26:10', '2023-08-28 08:26:10', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('b48a37b9-b2d3-43ec-8d7a-e4edc85aca07', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-12 08:34:16', '2023-10-12 08:34:16', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('b493ffe8-5300-40fb-b48c-383b639c84b3', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-14 16:18:27', '2023-09-14 16:18:27', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('b4c9d02c-a440-4713-ba08-44399bce5385', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-06 01:57:39', '2023-09-06 01:57:39', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('b4e4b18d-f513-4d05-afec-746b337be670', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-08 06:37:37', '2023-12-08 06:37:37', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('b4fa8a0f-064c-463c-91c8-097f28db91d5', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:01:23', '2023-08-25 09:01:23', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('b553ffbe-10de-42f0-b324-251ec5b2987f', 'Update File pegawai', 'https://admin.smk-almuttaqien.sch.id/pegawai/78a1945d-9274-411d-8e48-53c0f987b255', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-15 08:30:25', '2023-09-15 08:30:25', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('b5649efb-5150-4523-99a2-d410a0925505', 'Bayar Spp-Agus Muhammad Dalfa (Jan 2024)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 08:02:41', '2024-01-04 08:02:41', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('b589a857-cd84-489b-b185-f9824de40117', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/a51f1b1f-fb74-4f46-9920-4ae0fc6a3f9d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:07:54', '2023-09-06 02:07:54', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('b5ad0736-64b8-4770-b798-1b289c53ac29', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-09-18 15:04:11', '2023-09-18 15:04:11', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('b5efb082-31c2-430a-bc6e-e73c1e530aae', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 16:12:49', '2023-10-05 16:12:49', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('b613b477-2ade-4b78-896b-b153c015e7b6', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:58:37', '2023-09-19 12:58:37', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('b6296e2c-6910-4caa-b019-2c555fdc5e03', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-19 06:47:16', '2023-10-19 06:47:16', NULL, '182.0.215.210', 'Mobile', 'Jakarta, Jakarta, ID'),
('b65560e4-c3d9-4b7f-aaf3-a15a31ab45d2', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 10:52:08', '2023-08-25 10:52:08', NULL, '180.252.88.21', 'Mobile', 'Depok, West Java, ID'),
('b6667670-7f1a-4700-be5e-8ebacd5f830d', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:27:27', '2023-09-22 09:27:27', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('b68be16f-d091-4eb2-87f3-0d2156e4a414', 'Bayar Spp-Muhamad Ilham (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-21 08:21:21', '2023-09-21 08:21:21', NULL, '114.4.214.155', 'PC', 'Jakarta, Jakarta, ID'),
('b6c18367-e35f-4394-b078-b87868749812', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-18 07:07:20', '2023-09-18 07:07:20', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('b6c49586-aeab-4512-9219-446632beec46', 'Bayar Spp-Muhamad Badri Tamami (Jan 2024)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 06:21:40', '2024-01-03 06:21:40', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('b6e1af81-0864-4e34-a07e-051543ff7e64', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-15 09:44:39', '2023-09-15 09:44:39', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('b6fe8bdb-e7d3-4d1f-be90-6820ff5f6983', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-22 17:35:59', '2023-09-22 17:35:59', NULL, '110.137.192.23', 'PC', 'Jakarta, Jakarta, ID'),
('b71b20b7-ee97-4f3b-8c3a-201ee87d915a', 'Bayar Spp-Irpan (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-12 07:58:39', '2023-09-12 07:58:39', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('b72adf9a-f0a7-4301-aa33-d69d543fc80d', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/b8fe38f9-d65e-47be-8d7e-d6927f1122c4', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:37:40', '2023-09-27 10:37:40', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('b7b04916-7fb0-436f-bf53-174aea0d09c6', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-06 09:21:17', '2023-12-06 09:21:18', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('b7b46ded-daa7-45fb-b318-9655e18ae0ba', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-28 15:20:30', '2023-08-28 15:20:30', NULL, '140.213.132.167', 'Mobile', 'Tangerang, Banten, ID'),
('b813c3ae-b923-421b-a7f3-be5e86e105e0', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 08:46:51', '2023-09-22 08:46:51', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('b8225f9c-1dd8-4e1a-871d-f7c2f27a45be', 'Perbarui Spp-Aditya Sauqi Sabililah (Jan 2024)', 'http://127.0.0.1:8000/spp.8fad0f3d-d460-4920-b329-e69a3ec2cfe5.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 08:49:14', '2024-01-03 08:49:14', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('b8415697-29ba-438d-9e45-a074d780f471', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:19:09', '2023-09-19 13:19:09', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('b87fb2cc-d893-4133-a0b5-dde5f33abc21', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-08 07:46:56', '2023-09-08 07:46:56', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('b8f4dc23-06bb-401f-9e6a-7980a514d889', 'Bayar Spp-Ai Rahmawati (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 09:03:54', '2023-09-14 09:03:54', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('b915933a-8a06-45ea-a641-c88e1647b080', 'Bayar Spp-Muhamad Badri Tamami (Jan 2024)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:57:25', '2024-01-04 07:57:25', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('b9369cdb-b4aa-4571-915f-489010af5265', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-23 14:35:32', '2023-10-23 14:35:32', NULL, '158.140.162.238', 'PC', 'Cileungsir, West Java, ID'),
('b93c3856-b5ed-4927-b42c-46404350f5a2', 'Perbarui Spp-Cindy Nurcahniaty (Jan 2024)', 'http://127.0.0.1:8000/spp.b85b76d0-e4f5-4029-8618-91e51ea92c42.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 11:33:51', '2024-01-03 11:33:51', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('b93c9311-ba60-422c-9acf-125ea40eddf9', 'Bayar Spp-Fitri Anggita (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-06 16:23:58', '2023-09-06 16:23:58', NULL, '114.10.12.42', 'PC', 'Jakarta, Jakarta, ID'),
('b9842bb9-f0dd-49a3-ae1b-cbf8c7064f05', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:01:26', '2023-09-19 12:01:26', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('ba079e76-c588-4e6c-8be5-1c1708336791', 'Edit Data Pengguna', 'https://admin.smk-almuttaqien.sch.id/pengguna/be37fcf1-7f7d-4b19-941b-da4d223b0c63', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-15 08:44:18', '2023-09-15 08:44:18', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('baca26c2-880e-4617-88ef-a8459e07260d', 'Tambah Surat Keluar', 'https://admin.smk-almuttaqien.sch.id/surat-keluar', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-14 07:02:52', '2023-09-14 07:02:52', NULL, '180.251.181.119', 'Mobile', 'Bogor, West Java, ID'),
('bae9410c-49c4-499c-b6ef-c9168dd2b733', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/ca61508d-63ad-4436-9775-cad9ed154e8d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:26:21', '2023-08-24 20:26:21', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('bafc953f-f0e6-4d94-a589-45bfc9ddfa96', 'Bayar Spp-Siti Romadonnia (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-06 16:24:45', '2023-09-06 16:24:45', NULL, '114.10.12.42', 'PC', 'Jakarta, Jakarta, ID'),
('bb534977-2495-478a-8225-b82a27228d90', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 19:46:34', '2023-08-28 19:46:34', NULL, '182.0.202.172', 'Mobile', 'Jakarta, Jakarta, ID'),
('bbe0db88-8ced-4c9b-8982-c570217c1983', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-13 08:12:02', '2023-10-13 08:12:02', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('bc2f8912-604d-43b5-a378-a096b3c5cc94', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:40:35', '2023-09-19 13:40:35', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('bc86af93-cd52-49fe-b1c1-59e466563fab', 'Tambah data konseling', 'https://admin.smk-almuttaqien.sch.id/konseling', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-25 10:30:00', '2023-09-25 10:30:00', NULL, '180.252.85.140', 'Mobile', 'Cibinong, West Java, ID'),
('bc92a65a-f59c-4077-95f8-59f16361112d', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-05 16:16:29', '2023-10-05 16:16:29', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('bcc77f6e-5afb-4ed0-9941-2b4da9516968', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 16:06:14', '2023-10-05 16:06:14', NULL, '158.140.162.155', 'PC', 'Cibinong, West Java, ID'),
('bcce640b-39d6-4c66-8a41-9f30034faa46', 'User Login', 'https://demo.suryatama.tech/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-31 08:22:39', '2023-10-31 08:22:39', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('bcd916ad-5073-43ef-8905-a0d3e921df56', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-11 11:51:15', '2023-09-11 11:51:15', NULL, '112.215.225.63', 'Mobile', 'Tangerang, Banten, ID'),
('bd1311c8-b8c8-4b53-ace6-f17a1f78e363', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-13 09:14:57', '2023-10-13 09:14:57', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('bd1399d3-9129-45fc-abc6-edb74b2bceed', 'Bayar Spp-Agus Muhammad Dalfa (Jan 2023)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 08:03:40', '2024-01-04 08:03:40', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('bd44e817-346c-4fc9-b97e-7a3ae22a546e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 13:47:59', '2023-08-26 13:47:59', NULL, '158.140.175.235', 'Mobile', 'Depok, West Java, ID'),
('bd7229bd-d746-45a2-bb8c-3791e4e34be4', 'Bayar Spp-Ariyanto (Aug 2023)', 'http://127.0.0.1:8000/spp/storeyatim', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 06:54:42', '2024-01-04 06:54:42', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('bd74857d-d510-499f-bcc7-48a1079932df', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/01bc0a1a-3186-41de-a104-658e96d79a28', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-09-26 11:10:21', '2023-09-26 11:10:21', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('bdbdbe01-67b5-486a-b609-4fdf074dbb6c', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:05:44', '2023-09-19 12:05:44', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('bddec58f-0d4b-4b15-9939-9251e4b21cac', 'Tambah data konseling', 'https://admin.smk-almuttaqien.sch.id/konseling', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-25 10:32:45', '2023-09-25 10:32:45', NULL, '180.252.85.140', 'Mobile', 'Cibinong, West Java, ID'),
('be2a323c-4fea-4ee1-8813-9967d583ab15', 'Bayar Spp-Muhammad Fikri Afriansyah (Jul 2023)', 'http://127.0.0.1:8000/spp/storereguler', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-05 04:34:07', '2024-01-05 04:34:07', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('be2dc35c-f226-461e-91b7-996bb804d378', 'Bayar Spp-Cindy Nurcahniaty (Sep 2023)', 'https://demo.smk-almuttaqien.sch.id/spp/store', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:52:59', '2023-10-05 15:52:59', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('be3067a9-0e01-4cb8-8a5d-15eca00716b2', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:17:17', '2023-09-06 02:17:17', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('beac3064-b2d0-4919-9756-af59e896424e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-12 07:57:36', '2023-09-12 07:57:36', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('bef8362f-c85b-4efd-9324-7db11e4063ae', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:10:53', '2023-08-24 20:10:53', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('bf13e31c-5e0c-4985-8a72-f75f0fd58620', 'Tambah Data Pengeluaran Kas UMKM', 'http://127.0.0.1:8000/kasumkm/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:12:59', '2024-01-03 10:12:59', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('bf3c2486-e572-4286-8b0f-33218d09e689', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-19 10:15:44', '2023-10-19 10:15:44', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('bf4cf648-f0b7-41f5-9dea-c9449e770ee4', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-08 08:19:50', '2023-09-08 08:19:50', NULL, '110.137.194.235', 'PC', 'Jakarta, Jakarta, ID'),
('bf538f96-17f6-4d63-a5cb-52b3604796ce', 'Bayar Spp-Dirga (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 08:39:10', '2023-09-25 08:39:10', NULL, '180.252.85.140', 'PC', 'Cibinong, West Java, ID'),
('bf76e695-9ec2-4bf0-81ff-4a7b2f063b90', 'Tambah Data Pengeluaran Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:45:22', '2023-09-06 01:45:22', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('bf93736f-c8ab-409b-a591-c04111ab01bc', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-08 07:46:51', '2023-09-08 07:46:51', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('bfe3883d-5147-47f2-9fc1-1f9b33385eb4', 'Tambah Surat Keluar', 'https://admin.smk-almuttaqien.sch.id/surat-keluar', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-14 07:01:05', '2023-09-14 07:01:05', NULL, '180.251.181.119', 'Mobile', 'Bogor, West Java, ID'),
('c00ae522-7aed-424a-aa14-6424b78f706e', 'Bayar Spp-Agus Muhammad Dalfa (Sep 2023)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:17:47', '2024-01-04 07:17:47', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('c0293709-52fa-412c-a78d-58574bafca94', 'User Login', 'https://demo.suryatama.tech/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-25 09:45:46', '2023-10-25 09:45:46', NULL, '127.0.0.1', 'Mobile', 'Unknown Location'),
('c03ef69d-dea9-427c-8977-7cc9e9d18ed5', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:58:35', '2023-09-06 01:58:35', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('c04e012b-b482-42b8-a507-ab6f4d9e3c01', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:16:03', '2023-08-25 09:16:03', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('c0f86308-23bb-43b8-80d6-b70aa84660d4', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/56f07d83-3428-44e1-b788-96a3cc1183df', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:30:23', '2023-09-06 01:30:23', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('c169f2bf-5199-4648-85cc-1b224c0b7941', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-25 06:16:50', '2023-09-25 06:16:50', NULL, '110.137.192.23', 'PC', 'Jakarta, Jakarta, ID'),
('c188c74f-28fd-4202-aaf5-e761e58f1c09', 'Bayar Spp-Muhamad Abdul Reza (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-29 12:08:25', '2023-08-29 12:08:25', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('c1dd0e41-2969-4df3-b267-ad21cfa3bfd5', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/3c1c2a0d-f444-4ce8-941e-9f7f723375dd', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 11:03:25', '2023-08-30 11:03:25', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('c1f064cc-5647-4646-8745-d333dce469e2', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/24b527cd-c782-478c-9505-747396b093e6', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 11:08:24', '2023-08-30 11:08:24', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('c228c1e7-8aca-46ab-895c-c0f265a96349', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store2', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:26:14', '2023-09-14 08:26:14', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('c278e97d-48b5-4be5-8ad5-6e83c554de66', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 08:10:36', '2023-08-30 08:10:36', NULL, '140.213.26.1', 'Mobile', 'Tangerang, Banten, ID'),
('c2ae0065-8d90-4715-9311-1c86cf94df1d', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:00:38', '2023-09-22 09:00:38', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('c2f11f8c-a58c-4c50-80cf-a8147307452a', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/8efa66a0-6b22-4b5d-8aa4-4a26017837dc', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:07:38', '2023-09-06 02:07:38', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('c3278e86-5bec-4b5d-9918-ab49758f0c26', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/08ebf28b-ef72-40f5-aedb-f74ff09d6696', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 09:30:47', '2023-08-28 09:30:47', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('c39594c9-9cf0-41ea-ae12-034d47aa8607', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-13 13:23:20', '2023-10-13 13:23:20', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('c3fca092-4d2d-421d-8d81-c46bf5066790', 'Bayar Spp-FAHMI (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-11 09:05:11', '2023-09-11 09:05:11', NULL, '120.188.6.155', 'PC', 'Jakarta, Jakarta, ID'),
('c43332a2-50d4-43dd-801f-8b3289156aaa', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-10 10:37:54', '2023-10-10 10:37:54', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('c449504b-97cd-4751-a1c4-4080ccdd217e', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 11:55:00', '2023-09-19 11:55:00', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('c46f1e49-2ad4-46aa-95e7-dbf78be1fb10', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-31 17:57:36', '2023-08-31 17:57:36', NULL, '182.3.51.187', 'Mobile', 'Jakarta, Jakarta, ID'),
('c4ab1ae1-a3a9-41fd-acd5-2c974e7f79bc', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 20:29:25', '2023-08-26 20:29:25', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('c4eabd31-e755-4053-9247-30a1c6adb24d', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 13:40:28', '2023-09-06 13:40:28', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('c51111a4-2ce3-40bc-9246-25676bbe8609', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-23 12:24:06', '2023-08-23 12:24:07', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('c51dce01-fa5f-46d2-8398-45d7ab8ba616', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-21 08:38:56', '2023-09-21 08:38:56', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('c5277060-da31-497f-9e70-5ceccc8f10f4', 'Hapus barang inventori', 'http://127.0.0.1:8000/baranginventori/29', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-01 06:27:50', '2023-12-01 06:27:52', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('c527a504-b184-4e50-a13e-14595375589c', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-29 15:48:24', '2023-08-29 15:48:24', NULL, '114.124.241.41', 'PC', 'Jakarta, Jakarta, ID'),
('c54af232-4643-4227-8b57-a3002c3008a9', 'Tambah Data Pengeluaran Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:03:04', '2023-09-06 01:03:04', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('c5889dc5-e312-4b3b-be15-46e722712b54', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 01:22:36', '2023-08-24 01:22:36', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('c6083fb3-5f6d-4b0b-a311-5ac59bdc1c9e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-18 07:47:07', '2023-09-18 07:47:08', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('c60d6c66-4c92-495c-9236-d74e7dd8fc05', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-26 11:15:07', '2023-09-26 11:15:07', NULL, '120.188.7.69', 'PC', 'Jakarta, Jakarta, ID'),
('c6530b21-b29f-4a22-9b49-57dfc872219d', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 14:49:53', '2023-09-14 14:49:53', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('c6a48e44-0817-450a-a005-f1ee2a605b62', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 04:32:41', '2023-11-02 04:32:41', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('c6f25f75-c05e-4f9a-8c05-414d0274aac2', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-30 10:10:44', '2023-08-30 10:10:44', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('c7191cea-7f10-4d16-bd9b-76567f173a56', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:02:13', '2023-09-19 12:02:13', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('c731bd77-780f-4fcd-9bc5-1ffbf3c44b67', 'melihat Data Kas yayasan', 'http://127.0.0.1:8000/kasbos/printPDF', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-23 04:07:00', '2023-08-23 04:07:00', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('c76b2f7a-3e5c-4363-aa93-85ba46ec2d83', 'Bayar Spp-Agus Muhammad Dalfa (Jul 2023)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:13:28', '2024-01-04 07:13:28', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('c789f3d9-e443-4206-ba0a-ffdaec7cb558', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:10:24', '2023-09-19 13:10:24', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('c78c7835-9c40-4488-adef-f75909e79cff', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store3', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:19:31', '2023-09-14 08:19:31', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('c7b66df6-0a16-4fd3-a96e-f0cfa49a5483', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:21:53', '2023-09-22 09:21:53', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('c7b73d26-a169-47bc-b73f-74a7f5055c67', 'Edit Data siswa', 'http://127.0.0.1:8000/siswa/070a4cb4-3cd9-4f51-a95e-f1862f8998cc', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 06:50:57', '2023-12-05 06:50:58', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('c812bdea-1ed8-45e2-a8db-3ece9ba3a9f9', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:52:12', '2023-09-19 12:52:12', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('c87f5a56-5b1c-4cbb-b836-9b055ca5f90e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 14:40:30', '2023-08-28 14:40:30', NULL, '103.123.250.71', 'PC', 'Jakarta, Jakarta, ID'),
('c8925dab-579d-4e56-9e57-18433bf98179', 'Tambah data konseling', 'https://admin.smk-almuttaqien.sch.id/konseling', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-25 10:19:08', '2023-09-25 10:19:08', NULL, '180.252.85.140', 'Mobile', 'Cibinong, West Java, ID'),
('c8a0c4e2-de0c-4873-b8e8-7d45ced66fe9', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-05 16:22:08', '2023-10-05 16:22:08', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('c916dac7-b66e-4a96-98f4-06be5e8ed2af', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 11:54:28', '2023-09-19 11:54:28', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('c9b61848-5a49-4248-8ecd-64267e0a8420', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-25 05:39:25', '2023-09-25 05:39:25', NULL, '110.137.192.23', 'PC', 'Jakarta, Jakarta, ID'),
('c9baebc1-000f-4f37-8de4-f42ef227fe88', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:32:16', '2023-09-19 13:32:16', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('c9c36f13-8ca4-46ab-95c6-bc8363b19fdf', 'Hapus Data Pembayaran Pendaftaran', 'https://demo.smk-almuttaqien.sch.id/pemasukan/f79b8637-635b-11ee-910a-ec2a7202c4e0', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:49:40', '2023-10-05 15:49:40', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('ca04d3fd-e885-43ac-8e39-4a7f1d89065c', 'melihat Data Kas SPP', 'http://127.0.0.1:8000/kasumkm/printPDF', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:13:14', '2024-01-03 10:13:14', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('ca0c68b9-056c-4caf-af3d-21635665c3c8', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-19 11:32:07', '2023-09-19 11:32:07', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('cadbaa9e-eedb-49f8-ad33-ba5762ecd07b', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/a980a84f-14fa-4176-9657-211e9223e169', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 09:31:27', '2023-08-28 09:31:27', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('cb0b7b92-bb15-4533-9382-b2f75c637f1c', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-13 09:14:51', '2023-10-13 09:14:51', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('cb9a7ff0-2726-4b6c-bafb-626152189adb', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-28 09:47:50', '2023-08-28 09:47:50', NULL, '112.215.246.250', 'Mobile', 'Tangerang, Banten, ID'),
('cbdb39f9-4c98-4505-a1d8-756042c5f3b0', 'Tambah Data Pengeluaran Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:43:40', '2023-09-06 01:43:40', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('cc03a519-c35a-4d85-ad27-74c6e20873a2', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-15 09:44:53', '2023-09-15 09:44:53', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('cc0e96d8-8d4c-49ec-b90e-95d02143d919', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-07 16:30:57', '2023-09-07 16:30:57', NULL, '182.2.137.195', 'Mobile', 'Jakarta, Jakarta, ID'),
('cc422907-8cd2-4568-a69a-7ab8ad7f851e', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-20 01:52:56', '2023-12-20 01:52:58', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('cc7eefbf-f5e2-4fc7-ad80-c33945c1aea4', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/b8458adb-48b2-4709-892f-dede53f688a2', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:35:45', '2023-08-24 20:35:45', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('cc7f0445-8e8b-4b54-a821-1ff69816aabd', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-26 14:06:33', '2023-09-26 14:06:33', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('cc93a6c5-1ce9-47d1-b0c2-3958ad638be8', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-31 11:20:59', '2023-08-31 11:20:59', NULL, '180.251.181.141', 'Mobile', 'Bogor, West Java, ID'),
('cd16d276-fbf0-4a4a-aa04-e72fc0f5b534', 'Hapus Data Pembayaran Spp Siswa', 'http://127.0.0.1:8000/spp/b3b8b3dd-d869-4932-a13f-2a41f8699da0', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:56:46', '2024-01-04 07:56:47', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('cd3af274-dfa9-4957-be48-23b5fb70df36', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:22:44', '2023-09-22 09:22:44', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('cd9b916b-7fe0-40ac-8b29-e92c53188eef', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 09:31:14', '2023-08-26 09:31:14', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('cda4e9ab-e88a-44c7-b9c3-ce5568313c20', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:05:59', '2023-08-25 09:05:59', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `ip_address`, `device`, `location`) VALUES
('cdb4f11f-77e2-4eb0-97a1-5f43994a42fe', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/3b8bce50-6e81-417b-937d-6dfe48d752f0', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:22:59', '2023-08-24 20:22:59', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('cdd2293d-f958-4bfe-aa78-a7d02b7681e1', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:08:57', '2023-08-25 09:08:57', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('cde54f0d-e582-422e-a2b2-39767f2def10', 'Tambah Data createdKasBos', 'https://admin.smk-almuttaqien.sch.id/kasbos/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 11:35:18', '2023-08-26 11:35:18', NULL, '182.3.42.50', 'PC', 'Jakarta, Jakarta, ID'),
('ce07ed8b-4417-4bb9-9bdc-2582467365f8', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/1dc6b4d4-f334-4d21-9b26-1d8a1bff9c3c', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 09:31:08', '2023-08-28 09:31:08', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('ce496cbc-ef64-4147-8c5e-657247a10e1d', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/9c372361-1c97-4719-a7f7-3531045506ef', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:08:30', '2023-09-06 02:08:30', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('ceb1e53e-553b-4001-aadd-91c33e73e926', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-06 01:58:28', '2023-09-06 01:58:28', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('cec468fc-9221-487f-abf4-2cc1f1f589b2', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 16:19:19', '2023-09-14 16:19:19', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('ced10019-e456-4f1d-8029-ecffdea56914', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/6f62e827-ba91-49ed-9ed4-873402b2d364', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:15:46', '2023-08-26 10:15:46', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('cef148e7-42b9-425a-baa8-a0330b5b7616', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store3', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:18:53', '2023-09-14 08:18:53', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('cf1c6b4e-68ef-4e4e-95d0-7971f7f117d8', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 08:25:54', '2023-09-22 08:25:54', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('cf71a265-6f30-4bf1-b083-787af00ed8a4', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-17 10:21:01', '2023-09-17 10:21:01', NULL, '140.213.136.37', 'Mobile', 'Tangerang, Banten, ID'),
('cf73d82c-bde5-4251-9672-c5886f6c5551', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:06:03', '2023-09-22 09:06:03', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('cf92d5da-b8cd-4281-9e3b-93f1435fe9d1', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 11:58:56', '2023-09-19 11:58:56', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('cfbfce81-f7f4-4833-b195-a9307ee8f20d', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/cdf2bd37-b26a-49b6-a8c6-094b0cc7d357', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:13:00', '2023-09-06 02:13:00', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('cfc12e2c-8ffd-46b9-a9d0-0949482f9037', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/9627b36c-c990-410d-86eb-279833b33311', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-13 08:38:06', '2023-10-13 08:38:06', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('cfc56a55-db64-4295-bb4a-fb06f5072b62', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-13 10:14:43', '2023-09-13 10:14:43', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('cfd32053-3ba4-4544-9692-52bc3c36173d', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:06:58', '2023-08-24 20:06:58', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('cff5d7ad-b8a0-45c2-8ff3-eb87ec369e80', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 16:06:52', '2023-09-14 16:06:52', NULL, '158.140.162.231', 'Mobile', 'Cileungsir, West Java, ID'),
('d0042dd0-e06f-46e0-aa42-78f1a77dceb0', 'Tambah Data Kas Honor', 'https://admin.smk-almuttaqien.sch.id/honor/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:33:40', '2023-09-06 01:33:40', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('d019d04f-6e69-45be-ada6-7a5ad14c1294', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/9eee185f-ab90-45e8-af60-367b861bde34', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-31 11:58:33', '2023-08-31 11:58:33', NULL, '112.215.224.43', 'Mobile', 'Jakarta, Jakarta, ID'),
('d0446ef3-964c-4012-8461-3d9ab12365a0', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-26 08:37:23', '2023-08-26 08:37:23', NULL, '180.252.95.17', 'Mobile', 'Depok, West Java, ID'),
('d06f2373-0e6c-4b08-a35d-975a1c9831a5', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-30 09:59:04', '2023-08-30 09:59:04', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('d0832ff2-c939-4a9f-bf7b-33e1e9bc1205', 'Bayar Spp-Muhamad Fahmi (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 11:44:09', '2023-09-25 11:44:09', NULL, '114.4.82.59', 'PC', 'Jakarta, Jakarta, ID'),
('d0e5eb78-8a15-4dfe-8060-48e636664690', 'Bayar Spp-Muhamad Tomi Aditia (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-07 07:48:10', '2023-09-07 07:48:10', NULL, '180.251.182.39', 'PC', 'Bogor, West Java, ID'),
('d0f1c2b1-8cfa-4096-9e2e-316b8e340542', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:01:01', '2023-09-06 02:01:01', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('d1259e14-bc22-4b83-a899-fa2496907552', 'Tambah Data Pengeluaran Kas Honor', 'https://admin.smk-almuttaqien.sch.id/honor/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 11:41:13', '2023-08-26 11:41:13', NULL, '182.3.42.50', 'PC', 'Jakarta, Jakarta, ID'),
('d159dced-7c02-4603-8512-0fe852a85543', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/9eee185f-ab90-45e8-af60-367b861bde34', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:12:25', '2023-08-25 09:12:25', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('d184e8bb-c651-4fe1-ad24-7b98ca7242db', 'Bayar Spp-Muhammad Atin (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-04 09:03:45', '2023-09-04 09:03:45', NULL, '114.10.65.214', 'PC', 'Jakarta, Jakarta, ID'),
('d197fe19-3d46-4986-ad3e-97e2617a5068', 'User Login', 'http://127.0.0.1:8000/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-08-24 03:02:37', '2023-08-24 03:02:37', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('d1ed02d1-396e-4584-8b28-cb47279f705a', 'Tambah Data Pemasukan kas UMKM', 'http://127.0.0.1:8000/kasumkm/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:12:22', '2024-01-03 10:12:22', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('d1faa3cb-7948-40ce-bad4-2207186e6709', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 09:26:57', '2024-01-04 09:26:57', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('d21546be-4907-4917-9736-16ed04f90679', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-08-26 17:13:08', '2023-08-26 17:13:08', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('d23ef400-1f56-4d89-90e4-e252c7d0be81', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-06 01:58:22', '2023-12-06 01:58:24', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('d245de36-367d-4214-9067-2a7ebbbf2bc0', 'Bayar Spp-Rizki (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 08:12:25', '2023-09-25 08:12:25', NULL, '180.252.85.140', 'PC', 'Cibinong, West Java, ID'),
('d259c35f-ee2d-47c9-896d-8c120084dcf5', 'Tambah Data KasBos', 'https://admin.smk-almuttaqien.sch.id/kasbos/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 00:56:39', '2023-09-06 00:56:39', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('d29129e1-d49d-4823-8a3a-84b5d7855e69', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/9f09d0aa-f86e-476f-888d-2511f151e06b', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:28:05', '2023-10-05 15:28:05', NULL, '158.140.162.155', 'PC', 'Cibinong, West Java, ID'),
('d2b4c945-a9a9-4603-8d46-786dff050b4b', 'User Logout', 'http://127.0.0.1:8000/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2024-01-04 09:27:56', '2024-01-04 09:27:57', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('d2c342a4-4f6d-4930-ab48-b4b4a4d5436d', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/c8489afd-041e-4322-874b-270318f920d4', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:25:29', '2023-08-24 20:25:29', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('d2ec406f-1cee-46df-9a52-f850a81366b4', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-08 08:08:45', '2023-09-08 08:08:45', NULL, '120.188.94.60', 'PC', 'Jakarta, Jakarta, ID'),
('d3339b8b-34aa-45d5-8e03-4cad6171e513', 'Edit Biaya Pembayaran', 'http://127.0.0.1:8000/cost/edit3/2f7d27d6-cf09-418a-abe1-e304957539bb', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 14:09:14', '2023-12-05 14:09:14', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('d34f861b-e5ab-4aca-8be2-8218e03ffc5f', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-15 08:30:34', '2023-09-15 08:30:34', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('d35175e6-3844-44bd-9741-60fb147869d5', 'Bayar Spp-Muhamad Riski (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:39:20', '2023-09-18 09:39:20', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('d3722929-9015-4a60-a8b6-5e34b868185d', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-29 11:37:16', '2023-08-29 11:37:16', NULL, '182.0.232.239', 'Mobile', 'Jakarta, Jakarta, ID'),
('d38b5166-5d29-4585-a14e-df7f69dc0155', 'Bayar Spp-Cindy Nurcahniaty (Aug 2023)', 'https://demo.smk-almuttaqien.sch.id/spp/store', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-13 08:20:12', '2023-10-13 08:20:12', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('d3ddfe0b-0676-4acf-a319-a35fddbff5b3', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 05:54:30', '2023-11-02 05:54:30', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('d413ab95-5360-4e27-8363-97ec8e4827f2', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/d0ca5817-b7e0-48e3-9c32-8dfdd668ddd0', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:47:53', '2023-09-27 10:47:53', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('d41af637-3171-4b0d-a566-4c89bf7f3b09', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-05 15:53:35', '2023-10-05 15:53:35', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('d4cfb4f5-f8f2-49d2-9967-d9dfddd8b3b0', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-09-26 11:13:14', '2023-09-26 11:13:14', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('d4fd512f-d075-48cf-934f-4d06a3af9f02', 'Hapus Data Kas UMKM', 'http://127.0.0.1:8000/kasumkm/baca85d6-9972-40cc-8a68-0c08552c7ecf', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:13:08', '2024-01-03 10:13:08', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('d564f8b0-515d-483b-b5ed-ba81559485be', 'Bayar Spp-Muhamad Abdul Pakih (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 09:03:24', '2023-09-14 09:03:24', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('d656abfd-4636-415f-ae32-2c0434ed2149', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:00:53', '2023-09-19 12:00:53', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('d65c4a89-f2d7-49bc-90b2-33f6f3d5f4f2', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 08:32:12', '2023-09-22 08:32:12', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('d6d0610f-a66f-4c24-951a-118d2a82e920', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 07:25:17', '2023-09-19 07:25:17', NULL, '112.215.246.122', 'Mobile', 'Tangerang, Banten, ID'),
('d712d6b2-7b50-4899-967d-433cd2175fde', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 16:08:48', '2023-09-14 16:08:48', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('d7502033-1f9a-4cef-9b6c-ee55ca5eab20', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-10 10:49:30', '2023-10-10 10:49:30', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('d76fd21e-cd0e-435a-b775-4bcad98773a0', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-02 07:17:33', '2024-01-02 07:17:34', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('d7a3cbdc-6593-49ae-857f-1a0ff620c4af', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:05:44', '2023-09-19 12:05:44', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('d7cb3492-fbef-4fb3-8437-482fffcd6197', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/79f851f5-883f-4ecd-90f7-056ce7a814c7', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:58:54', '2023-09-27 10:58:54', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('d7d88a00-5625-43df-a9fe-63daef9ec616', 'Bayar Spp-Agus Muhammad Dalfa (Jan 2024)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:11:02', '2024-01-04 07:11:02', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('d7e8058c-6143-4178-85a8-875f2da72415', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-15 08:34:32', '2023-09-15 08:34:32', NULL, '114.10.30.54', 'PC', 'Jakarta, Jakarta, ID'),
('d86df67d-d2cb-4cc3-89f5-293f5d06d821', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:03:32', '2023-08-25 09:03:32', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('d8b814bf-dc1a-4189-9ed5-414e929f2713', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store2', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:26:44', '2023-09-14 08:26:44', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('d8bc46a3-10f5-4e4a-9f60-0a38abdc1158', 'User Logout', 'http://127.0.0.1:8000/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-12-08 07:52:21', '2023-12-08 07:52:21', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('d8dcef1f-c1b0-4cca-a0ed-5ed98b550926', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-28 16:56:46', '2023-08-28 16:56:46', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('d92c31ca-4a4e-4c20-aff0-a9d641d73790', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-07 08:36:34', '2023-09-07 08:36:34', NULL, '120.188.92.37', 'PC', 'Jakarta, Jakarta, ID'),
('d9428455-84a8-4106-8b6f-470b3308cb60', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:22:02', '2023-09-06 02:22:02', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('d946c8d6-c959-4d6a-bb57-d1fc49fccee5', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-11 10:35:41', '2023-10-11 10:35:41', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('d9bf5ce4-b095-4a4d-847a-417b4a7d1ca1', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-15 08:30:45', '2023-09-15 08:30:45', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('da1e83f5-8f19-4423-ac62-b0437881a4ef', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-15 09:04:38', '2023-09-15 09:04:38', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('da2ca385-55eb-4698-8ad0-e288236998c7', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/bb59d1f9-2592-4130-a2c6-0aeb75ff493e', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:51:29', '2023-09-27 10:51:29', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('da4cdae4-dd68-4dfd-82e3-b3ab50cf1bd6', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-13 08:43:30', '2023-10-13 08:43:30', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('daea73b2-9455-42f1-9cd6-ea56b8448aa6', 'Tambah Data createdKasBos', 'https://admin.smk-almuttaqien.sch.id/kasbos/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 11:40:33', '2023-08-26 11:40:33', NULL, '182.3.42.50', 'PC', 'Jakarta, Jakarta, ID'),
('db4d1ed5-2571-41b1-b059-511dcf298ad9', 'Bayar Spp-Cindy Nurcahniaty (Jan 2024)', 'http://127.0.0.1:8000/spp/storereguler', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:46:49', '2024-01-03 10:46:49', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('db59147e-6573-4ecc-b250-892cee28d1a9', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 12:01:25', '2023-09-14 12:01:25', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('db60f60d-b12c-4c0a-8131-5e38845e3048', 'Tambah Data Penerimaan Dana BOS', 'http://127.0.0.1:8000/kasbos/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-23 04:07:37', '2023-08-23 04:07:37', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('db7f8a52-7ad1-4c9b-bdc8-9600cf6860a1', 'Hapus Data Kas KasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/335c7fc4-add4-4f68-b511-95ec931033f9', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 13:49:01', '2023-09-06 13:49:01', NULL, '103.123.250.71', 'PC', 'Jakarta, Jakarta, ID'),
('dbb30ccf-9c68-4ae6-afb2-a2050ae42353', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:30:39', '2023-09-22 09:30:39', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('dbd7a888-dd92-4552-99a3-acc32ca7bbb0', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-19 06:34:36', '2023-10-19 06:34:36', NULL, '182.0.215.210', 'PC', 'Jakarta, Jakarta, ID'),
('dbf487b1-ae9e-4371-bcd5-a34a5d74f768', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-15 08:37:36', '2023-09-15 08:37:36', NULL, '114.10.30.54', 'PC', 'Jakarta, Jakarta, ID'),
('dc408a5b-e1c1-4775-b08a-04c086ea54e1', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-08 07:42:01', '2023-12-08 07:42:01', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('dc62870d-17cd-471f-b215-f8ede12d6f2a', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-26 12:01:41', '2023-09-26 12:01:41', NULL, '158.140.162.231', 'Mobile', 'Jakarta, Jakarta, ID'),
('dcb644ea-ed71-4c41-8331-07ca3c02c2ed', 'Bayar Spp-Adrian (Jan 2024)', 'http://127.0.0.1:8000/spp/storereguler', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 08:10:39', '2024-01-04 08:10:39', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('dcd0f061-a80d-4008-a465-be273c198341', 'Hapus Data Pengajuan', 'http://127.0.0.1:8000/pengajuan/71d8daf1-d184-4a8d-bf41-b0d993304a12', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 10:31:23', '2024-01-04 10:31:23', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('dd982c0b-4b04-4c81-9ebf-7af9c660a124', 'Bayar Spp-Nia (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-11 08:50:24', '2023-09-11 08:50:24', NULL, '120.188.6.155', 'PC', 'Jakarta, Jakarta, ID'),
('ddc1e92d-e033-4717-a5db-8e44cb0fdb22', 'Tambah Data Pemasukan kas Donatur', 'http://127.0.0.1:8000/kasdonatur/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:00:52', '2024-01-03 10:00:52', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('ddfaee52-bcd1-4ab5-929f-b44cf21e63b4', 'Update kategori', 'https://demo.smk-almuttaqien.sch.id/kategori/41cc887d-0a07-4bd4-9fec-f74c83dc56ed', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-09 10:48:05', '2023-10-09 10:48:05', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('ddfff35e-4e5f-4506-9c4d-bb2abe0fbc4e', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-10 10:38:14', '2023-10-10 10:38:14', NULL, '158.140.162.231', 'PC', 'Lurah, Banten, ID'),
('de101f9a-bbc8-4e01-afab-ea5817e90025', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:52:47', '2023-09-19 13:52:47', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('de2140e1-d0f0-4588-b0e7-1688ed638c82', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-19 10:43:12', '2023-10-19 10:43:12', NULL, '182.0.212.202', 'PC', 'Jakarta, Jakarta, ID'),
('de70fce1-1d38-40a1-bcff-59465e72b374', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-30 10:04:48', '2023-08-30 10:04:48', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('de73c2f5-9d0a-4965-857c-d451d17f57af', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/e3cca2e1-eeec-44ac-a4df-d1464b80e924', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-11 11:59:56', '2023-09-11 11:59:56', NULL, '112.215.225.63', 'Mobile', 'Tangerang, Banten, ID'),
('ded80222-487c-4574-b8f0-402b17be9e1c', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/df362a40-cf06-4b05-9f09-086fad98f280', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:14:10', '2023-08-26 10:14:10', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('df5bac28-ab4f-41d1-84f7-08b34ba2ba48', 'Tambah Data Pemasukan Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 09:27:19', '2023-09-06 09:27:19', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('dfd4d289-ece1-4819-a046-a42794f2ac5e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-15 09:04:42', '2023-09-15 09:04:42', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('dffcc0cf-eede-4cca-8627-28f257745f7e', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/92a46899-a411-4cf5-8f78-bfe7abf883cb', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:08:14', '2023-09-06 02:08:14', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('e00027b7-bc2a-4dce-afed-39185c3c6d80', 'Perbarui Spp-Aditya Sauqi Sabililah (Jan 2024)', 'http://127.0.0.1:8000/spp.8fad0f3d-d460-4920-b329-e69a3ec2cfe5.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 08:48:52', '2024-01-03 08:48:52', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('e048934a-2759-4cc5-bbd1-d6f1ac151ef0', 'Bayar Spp-Agus Muhammad Dalfa (Dec 2023)', 'http://127.0.0.1:8000/spp/storesktm', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 07:14:20', '2024-01-03 07:14:20', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('e06c827c-688b-4d10-8746-8bf5ac8c3de6', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:52:53', '2023-09-19 12:52:53', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('e08c7aa4-5fd8-407e-a9d6-6a685d145437', 'Hapus Data Kas Donatur', 'http://127.0.0.1:8000/kasdonatur/a464e31b-d893-4747-83e2-2eb5e928d6bd', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:07:09', '2024-01-03 10:07:09', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('e08cfce5-7834-4b10-bd4f-5fdacb90c414', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/2f9d0057-11bc-48d7-a04e-5ed9d8966e13', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-13 08:37:59', '2023-10-13 08:37:59', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('e09d198c-efc1-4a7e-8617-56031b3de39a', 'Perbarui Spp-Aditya Sauqi Sabililah (Jan 2024)', 'http://127.0.0.1:8000/spp.8fad0f3d-d460-4920-b329-e69a3ec2cfe5.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 08:50:22', '2024-01-03 08:50:22', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('e0e5a7f0-c1be-4cf7-9dc9-24311011e5d9', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-05 13:57:44', '2023-10-05 13:57:44', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('e107d943-4770-4dda-b5cc-1c28fdc35ade', 'Bayar Spp-Siti Romadonnia (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:38:11', '2023-09-18 09:38:11', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('e1759d96-124e-4ab0-908b-22e60caca79c', 'Bayar Spp-Alma Febrianti (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-29 08:15:43', '2023-08-29 08:15:43', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('e17959bb-bca7-4b71-a85a-cd9838b14436', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:29:01', '2023-09-06 02:29:01', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('e1ae0359-9a1d-4f28-8962-b4b8b0d28b7e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-01 09:42:35', '2023-09-01 09:42:36', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('e1c64f20-74fa-4923-a2db-8be953aa9547', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/df362a40-cf06-4b05-9f09-086fad98f280', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:08:07', '2023-09-06 02:08:07', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('e1cb9e0a-0a73-4517-8eee-c7e31e793ec5', 'Bayar Spp-Muhamad Abdul Reza (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 08:44:58', '2023-09-25 08:44:58', NULL, '180.252.85.140', 'PC', 'Cibinong, West Java, ID'),
('e22afc97-fa57-4197-8feb-85f0ac7f2472', 'Hapus Data Kas SPP', 'http://127.0.0.1:8000/kasbopda/25b21969-3a6f-4b8f-a642-d1c63f5b258d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:29:01', '2024-01-03 10:29:01', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('e23a0304-72a9-4a5e-8b45-690d228dab2e', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/2001c69b-1e24-44d9-a1b8-4e37c230f246', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:16:48', '2023-08-26 10:16:48', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('e2459ed7-7f2a-4f13-9e06-1a49eca78b2e', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-11 10:36:20', '2023-10-11 10:36:20', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('e261689f-9567-447f-b564-d4da18867b5f', 'Bayar Spp-Adrian (Jan 2024)', 'http://127.0.0.1:8000/spp/storereguler', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 04:12:48', '2024-01-04 04:12:48', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('e2ab1188-2472-4a0f-8c62-c4f7a31f078e', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/528b99c3-129e-4534-9223-b32a1b3b0ce4', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:23:38', '2023-08-24 20:23:38', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('e2cac107-5d4f-4cdd-ae47-4a2ef2d18f82', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-15 08:36:13', '2023-09-15 08:36:13', NULL, '114.10.30.54', 'PC', 'Jakarta, Jakarta, ID'),
('e2ff6fc3-d4bf-4a18-af1a-958cda8e20e0', 'Edit Data siswa', 'http://127.0.0.1:8000/siswa/07cd484a-e136-4e59-8f90-f15680afec6d', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 03:34:19', '2023-08-24 03:34:19', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('e3174dea-62e2-4fa5-8490-73bae52c8d40', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-12 07:30:35', '2023-09-12 07:30:36', NULL, '110.137.194.59', 'PC', 'Jakarta, Jakarta, ID'),
('e3f5a45f-949e-4199-b568-0c124f204b29', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/11ca817e-93c5-427e-a08b-e61051c082f6', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:22:19', '2023-09-06 08:22:19', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('e4332b4f-eaee-40ae-b775-c06c181a8379', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:05:29', '2023-09-22 09:05:29', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('e433cf97-3cb4-47b7-add3-781669a74671', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/2f863bc5-1173-4935-861a-0c2ce94353bb', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 10:16:36', '2023-08-26 10:16:36', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('e4af1188-0fd1-45b5-9ea3-bccbd9c19a82', 'Hapus Data Kas Donatur', 'http://127.0.0.1:8000/kasdonatur/3a496da8-45dd-4690-9884-b67fa88eee71', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:06:53', '2024-01-03 10:06:53', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('e4ddf270-437a-4a9f-ba4e-7010bec0f5b2', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:06:09', '2023-08-24 20:06:09', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('e50b217b-8054-4bb4-9999-7b9db1c0ed70', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store3', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:18:22', '2023-09-14 08:18:22', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('e55262c6-4eb9-4462-a9c2-357113be139c', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-05 16:06:34', '2023-10-05 16:06:34', NULL, '158.140.162.155', 'PC', 'Cibinong, West Java, ID'),
('e59305a5-cdee-4e08-94fe-65497a0308a4', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 18:25:05', '2023-08-28 18:25:05', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('e599d793-e3c5-4064-8225-1b954bcef4c7', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-25 20:14:18', '2023-09-25 20:14:18', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('e5b93bdc-962b-4c31-848a-e6aa9c6c46d5', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:34:04', '2023-09-19 12:34:04', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('e5df1a6f-390d-4e31-84ca-2d62dc5bbc78', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 02:41:28', '2023-11-02 02:41:28', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('e5df5a62-8096-4f77-a792-9d61fc6c04a4', 'Edit Data Pengguna', 'https://admin.smk-almuttaqien.sch.id/pengguna/8554b391-c5d1-4ee3-b2c4-deb443a9c243', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-15 08:43:58', '2023-09-15 08:43:58', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('e5f5d695-09aa-4072-b736-915a9c325508', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 08:56:38', '2023-08-30 08:56:38', NULL, '180.251.182.54', 'PC', 'Bogor, West Java, ID'),
('e678147a-f588-42a9-8fa6-49489eec212f', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:24:08', '2023-09-06 02:24:08', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('e6a3e241-f397-4908-b97d-badad314be74', 'Hapus Data Kas Oprational', 'https://admin.smk-almuttaqien.sch.id/oprational/287c1936-ac82-468a-b658-43a2fbcacfb6', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 07:59:07', '2023-09-06 07:59:07', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('e6b957dc-92c9-45e0-9e0b-d8f0ddd0ecff', 'Bayar Spp-Aditia Teguh Pradana (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 09:00:49', '2023-09-14 09:00:49', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('e6be44ad-61c5-4737-b8b9-cabda57afc6e', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/c228f1d7-a976-40ee-ade8-7c747071d975', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:24:38', '2023-08-24 20:24:38', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('e6f51bee-ccb6-4963-9c86-6a09841d87b5', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:07:36', '2023-09-22 09:07:36', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('e78a6067-4dfd-498d-8c01-daceb63fb5ac', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:31:28', '2023-09-19 13:31:28', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('e7d81578-f551-4776-9376-04a87fe3ea95', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:09:33', '2023-08-24 20:09:33', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('e7e429dd-2168-40bd-b9d5-f0ea0c3424c0', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 03:04:18', '2023-08-24 03:04:18', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('e86faf29-d90e-41d3-9965-979cae88d82b', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/be0cff09-33d7-4d44-a1f1-a3bfa712e909', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:23:08', '2023-10-05 15:23:08', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('e8a390f1-4372-4477-ad5e-4e8e8a6d0171', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-22 19:58:21', '2023-09-22 19:58:21', NULL, '36.69.164.212', 'PC', 'Ciputat, West Java, ID'),
('e90cdac2-32b1-4906-ba25-017751df280e', 'Bayar Spp-Adiansyah Saputra (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-04 09:05:54', '2023-09-04 09:05:54', NULL, '114.10.65.214', 'PC', 'Jakarta, Jakarta, ID'),
('e920c1f7-41b9-47ed-a2a4-91ee04021d08', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-19 06:35:51', '2023-10-19 06:35:51', NULL, '182.0.215.210', 'PC', 'Jakarta, Jakarta, ID'),
('e943f0e6-a759-4e20-bff6-a1c7d404ebcd', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-26 07:01:26', '2023-09-26 07:01:26', NULL, '180.252.90.192', 'PC', 'Bogor, West Java, ID'),
('e9457163-f182-4a6d-b6bd-4b676f0aadcb', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-30 07:13:00', '2023-08-30 07:13:00', NULL, '125.160.146.127', 'PC', 'Jakarta, Jakarta, ID'),
('e96a3363-ede5-4aec-bdbd-807297856cca', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/546089ce-da52-4375-abde-549aa1455292', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-04 13:13:27', '2023-09-04 13:13:27', NULL, '180.251.180.234', 'PC', 'Bogor, West Java, ID'),
('e9c5513d-d8d3-4d74-80e8-bf2cb7b57807', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store1', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:16:09', '2023-09-14 08:16:09', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('ea12326a-8f52-4645-953e-b360fd334bd7', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:47:51', '2023-09-22 09:47:51', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('ea27ff6d-f629-4cc9-aac1-e5e9ee6492ef', 'Hapus Biaya Pembayaran', 'https://admin.smk-almuttaqien.sch.id/cost/2/dc5ab97b-f313-485b-9509-461f31f6d259', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 08:24:10', '2023-09-14 08:24:10', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('ea59e798-edd1-44e0-a65b-315dc844113e', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-08-26 10:58:17', '2023-08-26 10:58:17', NULL, '182.3.42.50', 'PC', 'Jakarta, Jakarta, ID'),
('ea643d81-d589-4ac5-8983-8dba01760d62', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-01 09:48:01', '2023-12-01 09:48:03', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('ea721585-6158-4ccd-a16b-310acabd1769', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-26 08:38:11', '2023-08-26 08:38:11', NULL, '180.252.95.17', 'Mobile', 'Depok, West Java, ID'),
('ea842744-668e-4a83-93f0-406559f2ca23', 'Bayar Spp-Muhamad Fahmi (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 11:44:33', '2023-09-25 11:44:33', NULL, '114.4.82.59', 'PC', 'Jakarta, Jakarta, ID'),
('eab04e6b-9f54-49fe-b656-9e811f442103', 'Update File pegawai', 'https://demo.smk-almuttaqien.sch.id/pegawai/af006134-5c9c-4ba7-9c9b-d3a5938d4ff5', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:55:42', '2023-09-27 10:55:42', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('eac3551c-0d7a-4cea-912e-b88cb04f0d47', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-26 11:21:21', '2023-09-26 11:21:21', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('eac613b2-9ea7-4646-ae23-43cc16a11fb7', 'Tambah Data cost$cost', 'http://127.0.0.1:8000/cost/store2', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 13:15:33', '2023-12-05 13:15:33', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('eb3d0269-61c1-4687-bf5c-fd59156c18ea', 'Hapus Data Kas Oprational', 'https://admin.smk-almuttaqien.sch.id/oprational/5e83d0df-0cfe-45fd-9bdf-0387006a57bd', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 07:58:13', '2023-09-06 07:58:13', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('eb41ba4f-11b7-4e62-b0a7-86f77aaed834', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-18 07:40:58', '2023-09-18 07:40:58', NULL, '158.140.162.155', 'Mobile', 'Bogor, West Java, ID'),
('eb73eed3-56d1-4bff-a60c-b0299b847105', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-22 11:02:36', '2023-09-22 11:02:37', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('ebfec452-58e0-4201-b455-de45b8179be0', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-04 08:53:48', '2023-09-04 08:53:48', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('ec0e0e10-061f-4549-9300-81d2b6414ab8', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:30:20', '2023-09-19 13:30:20', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('ec0ebf21-9135-4c47-bbff-b928a82462d6', 'Hapus Data Pembayaran Spp Siswa', 'http://127.0.0.1:8000/spp/421c5823-bf3c-4cc7-a475-f76ce220d42c', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:48:01', '2024-01-03 10:48:01', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('ec517d76-ba70-410e-9f64-ca571f7dd1d4', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-26 14:47:51', '2023-08-26 14:47:51', NULL, '182.3.42.50', 'PC', 'Jakarta, Jakarta, ID'),
('ec83fd6f-ccdd-4a7d-89dc-1af02014cf94', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-11 04:35:24', '2023-12-11 04:35:25', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('ecbd8ced-2a31-48a0-8729-5c03a65435eb', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:10:19', '2023-09-22 09:10:19', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('ed1abeb7-1cc5-401f-87e6-1486dafc2c03', 'Bayar Spp-Cindy Nurcahniaty (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-06 16:25:55', '2023-09-06 16:25:55', NULL, '114.10.12.42', 'PC', 'Jakarta, Jakarta, ID'),
('ed44bec5-4f6f-41ff-b578-e31601d4e977', 'User Login', 'https://demo.suryatama.tech/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-27 09:59:50', '2023-10-27 09:59:50', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('ed4f4d8f-0e8f-4351-a52b-b585298e37dd', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/ff45e4b4-6435-44bc-9bb8-1012221f08b3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:37:04', '2023-09-06 08:37:04', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('ed504868-04cf-4252-a4b0-1d6579178eb0', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-18 15:04:02', '2023-09-18 15:04:02', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('ee20dace-fc45-4bd9-8288-4d11a899519d', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-15 08:03:28', '2023-09-15 08:03:28', NULL, '180.251.181.46', 'Mobile', 'Bogor, West Java, ID'),
('ee709912-aeb7-4029-9b19-ceafea52459d', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-26 13:16:31', '2023-09-26 13:16:31', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('ef2f503a-7203-4cec-9337-7a20be15e11d', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:13:13', '2023-08-25 09:13:13', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('ef3a073c-5c85-447c-a093-d697aa3a1a40', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-20 13:11:35', '2023-09-20 13:11:35', NULL, '114.4.215.92', 'PC', 'Jakarta, Jakarta, ID'),
('ef3ecc00-8ab9-46e4-af50-18b8e9c86694', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/d5b5ac88-f3c6-4426-871e-366c446104ad', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-06 10:24:41', '2023-10-06 10:24:41', NULL, '158.140.162.155', 'PC', 'Cibinong, West Java, ID'),
('ef60f7de-9a45-4548-a50c-5e16dc8f404a', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/d6a9ab21-0230-4624-ab6d-705ce0c09d8f', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-06 10:24:18', '2023-10-06 10:24:18', NULL, '158.140.162.155', 'PC', 'Cibinong, West Java, ID'),
('ef7136ce-23f1-488a-be85-ce469122b517', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 08:59:34', '2023-08-25 08:59:34', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('efee7b49-cf80-445b-be2d-7ed470195e3c', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:15:16', '2023-09-06 02:15:16', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('f00e38cc-3bea-4253-8c9b-be69b0dbab08', 'melihat Data Kas SPP', 'http://127.0.0.1:8000/kasdonatur/printPDF', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:03:32', '2024-01-03 10:03:32', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('f05c9a42-683f-48bf-8db3-adb663c00bb3', 'Perbarui Spp-Aditya Sauqi Sabililah (Feb 2024)', 'http://127.0.0.1:8000/spp.958ea72d-38bc-4d11-acaf-bd627137657c.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 08:52:56', '2024-01-03 08:52:56', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('f0705c5d-3a05-4863-9872-765f5817dd57', 'Tambah Data Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/debit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 01:02:27', '2023-09-06 01:02:27', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('f08c8a0d-3432-4cba-8f5b-a49c02d6538a', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:13:25', '2023-09-19 13:13:25', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('f08cdd70-dbe5-4690-9631-e59fc4d85990', 'User Login', 'http://127.0.0.1:8000/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-11-02 04:29:17', '2023-11-02 04:29:17', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('f12d40c2-2267-4fc3-a00d-0f141550ac46', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-09-20 22:26:29', '2023-09-20 22:26:29', NULL, '114.5.145.178', 'Mobile', 'Medan, North Sumatra, ID'),
('f1505c7c-1a92-492f-a2dd-ce1701752718', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:14:49', '2023-09-19 12:14:49', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('f1961877-dbc7-4d5b-ad45-23f73c440253', 'Tambah Surat Keluar', 'https://admin.smk-almuttaqien.sch.id/surat-keluar', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 11:19:11', '2023-08-30 11:19:11', NULL, '114.10.65.28', 'Mobile', 'Jakarta, Jakarta, ID'),
('f1999c5e-3a80-42c6-a14f-7b0ed249fb30', 'Tambah data konseling', 'https://admin.smk-almuttaqien.sch.id/konseling', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-25 10:34:58', '2023-09-25 10:34:58', NULL, '180.252.85.140', 'Mobile', 'Cibinong, West Java, ID'),
('f19a6400-c0cf-45bb-bc04-5ac2416c0813', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/5c109736-fe35-49b9-91c2-9b9b8db69a28', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:24:00', '2023-08-24 20:24:00', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('f1f10e4c-7f7d-4c77-9a3a-ac3e2c31cce6', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store1', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:10:55', '2023-09-14 08:10:55', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('f203e29a-3599-48e6-9c61-7223e186feee', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:27:06', '2023-09-19 12:27:06', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('f22fdac1-1348-4854-914d-e26554f48f35', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:10:59', '2023-08-25 09:10:59', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('f244ad09-2edf-45ea-a433-4dfbb063f7e5', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-05 07:42:32', '2023-09-05 07:42:32', NULL, '140.213.132.21', 'Mobile', 'Tangerang, Banten, ID'),
('f250b27f-df53-4e6c-b9e7-a92255650461', 'Update File pegawai', 'https://admin.smk-almuttaqien.sch.id/pegawai/b05e7f1a-2eff-4fff-82ea-8793d28bdecf', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-31 09:02:47', '2023-08-31 09:02:47', NULL, '180.251.181.141', 'Mobile', 'Bogor, West Java, ID'),
('f27873df-8b33-4a78-b5c2-7f96337aeeb4', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:51:34', '2023-09-22 09:51:34', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('f27b66d9-ca58-4c87-a2ae-0537a14f43ae', 'Bayar Spp-Abdul Azis (Apr 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-01 08:27:09', '2023-09-01 08:27:09', NULL, '114.4.215.116', 'PC', 'Jakarta, Jakarta, ID');
INSERT INTO `log_activities` (`id`, `subject`, `url`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `ip_address`, `device`, `location`) VALUES
('f2ab4ceb-5271-4510-a15b-8563ea3a9e4c', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:55:52', '2023-09-19 12:55:52', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('f2eea4bc-132c-4153-8511-db594a7a2e92', 'Update File pegawai', 'https://admin.smk-almuttaqien.sch.id/pegawai/197d100a-e5d9-483b-805c-1f3c04f1fbf6', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 08:38:37', '2023-08-25 08:38:37', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('f2eebadf-1444-4657-8e87-f370eba515f3', 'Edit Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa/3050fc36-de18-4f52-98d0-5f4a8a5338bf', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-30 11:10:29', '2023-08-30 11:10:29', NULL, '114.10.65.28', 'PC', 'Jakarta, Jakarta, ID'),
('f351e329-2034-4e8c-865e-a183a60630bb', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 07:10:49', '2023-09-18 07:10:49', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('f3dfa888-3158-43d5-81c1-15ba9a7e7924', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '1b25bafb-1413-4229-bd9f-3e515569a6d2', '2023-10-12 10:19:48', '2023-10-12 10:19:48', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('f3f80d75-54c5-4d99-a2ed-cc6fb2c255fd', 'Hapus Data Pembayaran Spp Siswa', 'https://demo.smk-almuttaqien.sch.id/spp/736ec704-c0b7-45a9-a758-9953a506d76b', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '2023-10-13 08:19:40', '2023-10-13 08:19:40', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('f422647f-34ab-4ca9-a46e-9da2d62656f1', 'User Login', 'https://demo.suryatama.tech/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-25 11:39:32', '2023-10-25 11:39:32', NULL, '127.0.0.1', 'Mobile', 'Unknown Location'),
('f448b28e-ff6a-41b9-ac78-05f8c7cd93e6', 'Hapus Data Kas SPP', 'http://127.0.0.1:8000/kasspp/99012843-dc27-40fd-8a0b-a66f84a7c7a7', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:48:17', '2024-01-03 10:48:17', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('f4be48c4-b3d2-4be0-800d-26f4489d3b08', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-10-11 16:59:48', '2023-10-11 16:59:48', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('f4ce7489-6da5-4800-b237-3485ebdd1505', 'User Login', 'http://127.0.0.1:8000/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-08-24 03:02:50', '2023-08-24 03:02:50', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('f4d835c6-683b-4355-a320-5b0db58a34a5', 'Tambah Data siswa', 'https://admin.smk-almuttaqien.sch.id/siswa', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-18 09:41:48', '2023-09-18 09:41:48', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('f5205373-bd77-484f-903f-9727c2edea14', 'Update File pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/39dd9447-bf64-4e45-803d-8c490fc18b4a', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-25 09:30:28', '2023-08-25 09:30:28', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('f53ac412-e0d4-434d-8990-18825a37f2b0', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 13:53:35', '2023-10-05 13:53:35', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('f53d46e0-8d30-426c-8603-5898eab0d619', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/5c5958e2-b7fc-4145-bb7d-6f7a07d94c3b', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:07:25', '2023-09-06 02:07:25', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('f583bcb4-2dd0-42ea-8e5c-1acc704952a0', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-10-19 06:55:43', '2023-10-19 06:55:43', NULL, '182.0.215.210', 'Mobile', 'Jakarta, Jakarta, ID'),
('f5edd3c1-e72b-499a-b7db-8d6ff289aee1', 'Data Pengajuan Ditambahkan', 'https://admin.smk-almuttaqien.sch.id/pengajuan', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:14:39', '2023-09-06 02:14:39', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('f60e4288-ff21-4114-a7a4-f1655b90bf3a', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-05 08:29:18', '2023-09-05 08:29:18', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('f61cf756-22f3-4902-9759-0558ac2d5c31', 'User Login', 'http://127.0.0.1:8000/login', 'b167551b-bc25-47e1-8dba-cca96e287559', '2023-12-11 07:55:48', '2023-12-11 07:55:48', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('f631cf7e-8319-4329-ae00-d7f76df5967e', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/bff86729-1d97-42e7-a4c3-e5ee8f5b978f', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:23:43', '2023-09-06 08:23:43', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('f6329e46-b21c-4bb4-93d0-f79f52972936', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-16 07:24:36', '2023-09-16 07:24:36', NULL, '180.251.181.46', 'Mobile', 'Bogor, West Java, ID'),
('f6362f35-7844-43e4-bcd3-4bfca72f3d8d', 'Bayar Spp-Muhidin (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-25 08:44:26', '2023-09-25 08:44:26', NULL, '180.252.85.140', 'PC', 'Cibinong, West Java, ID'),
('f63ff2e6-dc90-4313-9c9e-13fa93b90553', 'User Logout', 'https://demo.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-13 08:38:41', '2023-10-13 08:38:41', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('f663e1ba-4c6f-42d5-b649-c15aaa9f7c20', 'Edit Biaya Pembayaran', 'https://admin.smk-almuttaqien.sch.id/cost/edit3/18229b73-3376-11ee-bfbb-c85b767819e3', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-14 01:23:31', '2023-09-14 01:23:31', NULL, '182.0.230.148', 'PC', 'Jakarta, Jakarta, ID'),
('f7049aa5-5bd1-4704-a26c-3d3480180aaf', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:14:59', '2023-08-25 09:14:59', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('f7bb055a-5005-4119-a4ac-d86fcaf4ae12', 'Hapus Data Pembayaran Spp Online Siswa', 'https://demo.smk-almuttaqien.sch.id/spp2/63c6300f-cda1-419f-a33d-77ac12738591', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-05 15:41:28', '2023-10-05 15:41:28', NULL, '158.140.162.231', 'PC', 'Cibinong, West Java, ID'),
('f857d1eb-cb30-44ec-b5ad-ada540c0dd9d', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-20 07:34:45', '2023-09-20 07:34:45', NULL, '140.213.138.56', 'Mobile', 'Tangerang, Banten, ID'),
('f86e3bd2-5a41-4d59-9e43-b48690fc98ab', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-13 10:01:06', '2023-09-13 10:01:06', NULL, '112.215.224.229', 'Mobile', 'Tangerang, Banten, ID'),
('f881ca74-04c3-4a45-8363-b425a7ca5696', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-21 07:26:33', '2023-09-21 07:26:33', NULL, '140.213.30.92', 'Mobile', 'Jakarta, Jakarta, ID'),
('f8b829d9-f85f-4c45-a389-7b071d72d851', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-13 08:37:23', '2023-10-13 08:37:23', NULL, '158.140.162.155', 'PC', 'Jakarta, Jakarta, ID'),
('f8c3006e-91c1-4b16-b945-34d60455edd6', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:07:07', '2023-08-25 09:07:07', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('f8e4e2e2-b86d-4129-b634-00e6a3411886', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-15 13:00:41', '2023-09-15 13:00:41', NULL, '182.2.132.96', 'Mobile', 'Jakarta, Jakarta, ID'),
('f8f3de34-b798-418d-9afc-01e52817b605', 'Perbarui Spp-Ariyanto (Jul 2023)', 'http://127.0.0.1:8000/spp.ef3e51f7-7751-4606-9167-e9e3a9cd2555.regulerupdate', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-04 07:37:47', '2024-01-04 07:37:47', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('f8fa7a79-6a90-49cd-a6c6-c9bee1092358', 'Bayar Spp-Riki Saputra (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-28 16:38:48', '2023-08-28 16:38:48', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('f9549f58-dc89-40d4-8df5-ecede7178296', 'Tambah Data Pengeluaran Kas SarKasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 13:48:55', '2023-09-06 13:48:55', NULL, '103.123.250.71', 'PC', 'Jakarta, Jakarta, ID'),
('f95812e0-2063-4add-a177-d0c5e8de075b', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-15 08:42:12', '2023-09-15 08:42:12', NULL, '114.10.30.54', 'PC', 'Jakarta, Jakarta, ID'),
('f9d14b11-0cdc-41a4-8daf-514ddfbac431', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/39dd9447-bf64-4e45-803d-8c490fc18b4a', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-25 09:30:36', '2023-08-25 09:30:36', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('fa631e5a-e981-4509-aee6-6a1651c1ffc3', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:20:08', '2023-09-19 12:20:08', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('fa964ddf-da85-4e45-b4f6-512bd2cdf937', 'Hapus Data Kas KasSapras', 'https://admin.smk-almuttaqien.sch.id/sapras/5073c75e-9c52-4ebf-907c-6d2975d0d383', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:44:51', '2023-09-06 08:44:51', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('fa9c1cd8-c44e-4fbc-af7c-44f8ed0c8a28', 'Tambah Data Pengeluaran Sumbangan', 'https://admin.smk-almuttaqien.sch.id/sumbangan/credit', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:09:54', '2023-08-24 20:09:54', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('facd24b8-4d8e-4bc4-918b-01f472eb0ad8', 'Tambah kategori', 'http://127.0.0.1:8000/kategori', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 13:14:25', '2023-12-05 13:14:25', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('fb0fa048-0458-4312-b748-0ffdd5512515', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-14 06:53:08', '2023-09-14 06:53:08', NULL, '180.251.181.119', 'Mobile', 'Bogor, West Java, ID'),
('fb185ec6-937e-489d-ac00-84f97bc9bece', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-09 11:23:31', '2023-09-09 11:23:31', NULL, '182.0.141.214', 'PC', 'Jakarta, Jakarta, ID'),
('fb2c7ddf-d0ec-4312-8b5b-4f77dcc416cf', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-15 09:46:09', '2023-09-15 09:46:09', NULL, '180.251.181.46', 'Mobile', 'Bogor, West Java, ID'),
('fb3f8c07-eb51-4642-a2fb-53acd812694f', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/50b356fe-090d-4900-8e96-e1e8ba904a69', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:23:23', '2023-08-24 20:23:23', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('fb8b2247-2a13-49e0-8579-b6177126ec97', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 13:54:48', '2023-09-19 13:54:48', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('fbd99374-2f6e-4d33-b09d-03c10c9b6411', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-10 21:02:27', '2023-09-10 21:02:27', NULL, '110.137.194.48', 'PC', 'Jakarta, Jakarta, ID'),
('fbee09be-3c87-4383-a90c-8daac143ac4f', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:14:49', '2023-09-19 12:14:49', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('fc44be89-7a5d-4373-9cc4-c885349c69c4', 'Tambah exschool', 'https://admin.smk-almuttaqien.sch.id/exschool', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-08-25 09:12:52', '2023-08-25 09:12:52', NULL, '140.213.26.202', 'PC', 'Tangerang, Banten, ID'),
('fc536c40-2438-4c40-8dc1-3cd0414264d1', 'Hapus Data Pengajuan', 'https://admin.smk-almuttaqien.sch.id/pengajuan/44cb8b2d-d6a4-4601-abed-745013117d2a', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:37:45', '2023-09-06 08:37:45', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('fc97770e-636a-483f-84c5-cc75556f1564', 'Bayar Spp-Sindi (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '2023-09-18 09:37:39', '2023-09-18 09:37:39', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('fc9abf40-c6f7-427f-a2d2-c2d28567f00e', 'Bayar Spp-Muhamad Riski (Jul 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-08-28 16:22:38', '2023-08-28 16:22:38', NULL, '120.188.67.17', 'PC', 'Jakarta, Jakarta, ID'),
('fcb13a02-4af4-4c11-b6bf-c4bbcf308a99', 'Hapus Data Setoran ', 'https://admin.smk-almuttaqien.sch.id/pengeluaran/d151f423-a8d0-4dcf-af72-f1686512d758', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 08:24:53', '2023-09-06 08:24:53', NULL, '158.140.175.235', 'PC', 'Cileungsir, West Java, ID'),
('fcb3e5c9-ee16-4932-9801-f0516a47f989', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/a79647c1-65f1-4a5c-abe3-9f171bf35944', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-28 09:28:14', '2023-08-28 09:28:14', NULL, '158.140.175.186', 'PC', 'Cileungsir, West Java, ID'),
('fccda8bf-bd6f-4e94-8e44-0d8570e95b5e', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-07 07:41:46', '2023-09-07 07:41:46', NULL, '180.251.182.39', 'PC', 'Bogor, West Java, ID'),
('fcd05fd0-4792-4de1-8577-92aaf926cd1f', 'Edit Data Pengguna', 'https://admin.smk-almuttaqien.sch.id/pengguna/be37fcf1-7f7d-4b19-941b-da4d223b0c63', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-15 08:41:46', '2023-09-15 08:41:46', NULL, '158.140.162.231', 'PC', 'Cileungsir, West Java, ID'),
('fd4ddc47-c370-4b1b-8479-b82e535537e2', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/22058eca-bd35-4818-b874-7fbb69aa9f9f', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:22:18', '2023-08-24 20:22:18', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('fd952266-1d19-4fde-b892-26683f98bc89', 'Edit Data siswa', 'https://demo.smk-almuttaqien.sch.id/siswa/46848784-ed38-4bf1-b0a1-97b0702f6aa6', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-27 10:46:15', '2023-09-27 10:46:15', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('fdae82f6-a654-4f0f-9723-23f460ab115f', 'Update kategori', 'https://admin.smk-almuttaqien.sch.id/kategori/e40ada5d-fdb7-4b8c-93a7-626dc707ddf9', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-24 20:26:07', '2023-08-24 20:26:07', NULL, '158.140.175.235', 'PC', 'Depok, West Java, ID'),
('fdcc7d17-9498-4507-a48a-31335302e211', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-18 07:10:14', '2023-09-18 07:10:14', NULL, '114.10.114.134', 'PC', 'Jakarta, Jakarta, ID'),
('fde046b8-6823-4f9d-804e-17082fd65d3a', 'Bayar Spp-Cindy Nurcahniaty (Feb 2024)', 'http://127.0.0.1:8000/spp/storereguler', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2024-01-03 10:54:38', '2024-01-03 10:54:38', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('fdfa2fab-a820-42cf-bc27-cb6513837ae4', 'Bayar Spp-Muhamad Abdul Pakih (Aug 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-12 09:09:17', '2023-09-12 09:09:17', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('fe09f917-1a16-4e88-8ab2-ae11b8e7e779', 'User Login', 'https://admin.smk-almuttaqien.sch.id/login', '077b7a3e-b259-4de2-b76f-149690438ad7', '2023-09-14 16:18:31', '2023-09-14 16:18:31', NULL, '158.140.162.155', 'PC', 'Cileungsir, West Java, ID'),
('fe37ae87-fd0f-4101-8df0-7d6df05b74ef', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-22 09:25:00', '2023-09-22 09:25:00', NULL, '36.70.158.190', 'PC', 'Bogor, West Java, ID'),
('fe3c4ca6-d532-4ad4-9885-1aa3888299a9', 'Hapus Data siswa', 'http://127.0.0.1:8000/siswa/6faa2488-7bd1-4b46-b41d-f542418f1e0c', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-08-23 03:30:12', '2023-08-23 03:30:12', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('fe45424c-4115-4655-83af-75a1bd5515a5', 'Tambah Data cost$cost', 'https://admin.smk-almuttaqien.sch.id/cost/store3', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-14 08:18:10', '2023-09-14 08:18:10', NULL, '114.10.75.251', 'PC', 'Jakarta, Jakarta, ID'),
('fe6b55f2-cceb-4499-a317-93ee631f5ed6', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-10-12 10:45:25', '2023-10-12 10:45:25', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID'),
('fe76df6e-d856-4ad2-a052-5fb85233a50c', 'User Logout', 'https://admin.smk-almuttaqien.sch.id/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-06 02:46:01', '2023-09-06 02:46:01', NULL, '125.165.152.246', 'PC', 'Jakarta, Jakarta, ID'),
('fe829962-f0d1-4f16-8281-ade72c2c33c3', 'Tambah Data Jadwal', 'https://admin.smk-almuttaqien.sch.id/jadwal', '79d20824-524f-4e80-bf48-c30f7f910ed1', '2023-09-19 12:05:44', '2023-09-19 12:05:44', NULL, '36.70.158.190', 'Mobile', 'Bogor, West Java, ID'),
('fea038cc-a649-445b-9fbf-850bb371c1af', 'User Logout', 'http://127.0.0.1:8000/logout', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-12-05 09:32:43', '2023-12-05 09:32:43', NULL, '127.0.0.1', 'PC', 'Unknown Location'),
('ff0e48ec-4435-4365-904d-9040f41ea5f1', 'Bayar Spp-Alwan Nesta (Sep 2023)', 'https://admin.smk-almuttaqien.sch.id/spp/store', '0b094d1b-5391-4ad7-8654-1a9498d0615b', '2023-09-11 08:52:00', '2023-09-11 08:52:00', NULL, '120.188.6.155', 'PC', 'Jakarta, Jakarta, ID'),
('ff717d48-668b-4fc9-a10c-0f10fffac249', 'User Login', 'https://demo.smk-almuttaqien.sch.id/login', '441c5712-b51e-459f-9b13-4f58a95f4c75', '2023-09-26 14:25:21', '2023-09-26 14:25:21', NULL, '158.140.162.231', 'PC', 'Jakarta, Jakarta, ID');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapels`
--

CREATE TABLE `mapels` (
  `id` char(36) NOT NULL,
  `guru` varchar(255) NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `kurikulum` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapels`
--

INSERT INTO `mapels` (`id`, `guru`, `mapel`, `kurikulum`, `created_at`, `updated_at`, `deleted_at`) VALUES
('012c9a3d-f7dd-43f9-8afd-ff3a69541cc1', 'FIRDA HERMINIA FUTRIYANTI, SE', 'Teknologi Perkantoran', '2013', '2023-07-20 13:47:21', '2023-07-20 13:47:21', NULL),
('097dbca7-453b-4573-9973-7c35c4451dce', 'SRI FARIHAH, S.Ag', 'PAI', '2013', '2023-07-18 21:12:10', '2023-07-18 21:12:10', NULL),
('0ce64711-98fe-4ca6-a8c5-fa70680c211f', 'ELA LAELA, S.Pd.I', 'Bahasa Arab', '2013', '2023-07-18 20:30:10', '2023-07-18 20:30:10', NULL),
('12d5513c-a39a-4e9e-ac46-979057828098', 'MUHAMAD HARUNUDIN, A.Md', 'Administrasi Umum', '2013', '2023-07-20 13:58:03', '2023-07-20 13:58:03', NULL),
('1f36b92d-7c93-4604-9f21-2d0c91f842ee', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', 'Seni Budaya (SBK)', '2013', '2023-07-20 14:07:06', '2023-08-10 09:20:25', NULL),
('1f44fa91-f94e-4cea-9bc7-470249ac244b', 'MUHAMAD RAMDANI', 'Food and beverages', '2013', '2023-07-20 14:06:24', '2023-07-20 14:06:24', NULL),
('2ae016da-a415-4bc9-a810-523ab2836875', 'MUHAMAD HARUNUDIN, A.Md', 'Otomatisasi Tata Kelola Humas & Keprotokolan', '2013', '2023-07-20 13:58:50', '2023-07-20 13:58:50', NULL),
('334bead3-3e51-4ad9-ba8a-7f919c40f33c', 'FIRDA HERMINIA FUTRIYANTI, SE', 'Ekonomi Bisnis', '2013', '2023-07-20 13:47:49', '2023-07-20 13:47:49', NULL),
('3ea04e6b-2425-4cd8-aa17-b95fc21e6ab9', 'SRI FARIHAH, S.Ag', 'Aqidah & Akhlaq', '2013', '2023-08-10 09:13:10', '2023-08-10 09:13:10', NULL),
('420ec9d3-3544-4520-a7b7-895ed50f9e23', 'MUHAMAD HARUNUDIN, A.Md', 'Produk Kreatif & Kewirausahaan', '2013', '2023-07-20 13:59:50', '2023-07-20 13:59:50', NULL),
('49ae77c3-0632-4d0a-873b-e3438021a2c9', 'ELA LAELA, S.Pd.I', 'PPKN KLS XII', '2013', '2023-08-10 09:14:40', '2023-08-10 09:14:40', NULL),
('591c0c68-74e5-4317-bd7e-9e2d4aa2d5b4', 'R. HERMAN YUDHARTO, BA', 'Komunikasi Industri Pariwisata', '2013', '2023-07-20 14:01:13', '2023-07-20 14:01:13', NULL),
('5981a855-9947-48b5-9702-5b618a93bb27', 'MUHAMAD RAMDANI', 'Sanitasi, Hygiene, dan Keselamatan Kerja', '2013', '2023-07-20 14:03:57', '2023-07-20 14:03:57', NULL),
('658ad066-920e-4537-b201-d01cd622ddc0', 'FIRDA HERMINIA FUTRIYANTI, SE', 'Otomatisasi Tata Kelola Keuangan', '2013', '2023-07-20 13:48:16', '2023-07-20 13:48:16', NULL),
('65f7f92c-6131-4109-88c0-efc397fe574d', 'OMAY KOMARUDIN', 'PJOK', '2013', '2023-07-20 13:50:57', '2023-07-20 13:50:57', NULL),
('7c47c74e-2821-4dc9-8d63-64c82ad803f3', 'AGUS NAZMUDIN, S.Pd', 'Bahasa Sunda', '2013', '2023-07-20 13:57:19', '2023-07-20 13:57:19', NULL),
('7e799190-96f6-40e7-ae8b-251b725ef387', 'DIDIN JAENUDIN, SE', 'Otomatisasi Tata Kelola Kepegawaian', '2013', '2023-07-20 13:37:31', '2023-07-20 13:37:31', NULL),
('7fa1a5f3-8858-433d-858e-1a6becbffc44', 'DIDIN JAENUDIN, SE', 'Otomatisasi Tata Kelola Sanpras', '2013', '2023-07-20 13:37:59', '2023-07-20 13:37:59', NULL),
('88986ba4-27e9-4058-b598-6d05e022e8fd', 'TITIB, S.Pd', 'IPA/IPAS', '2013', '2023-07-20 13:49:43', '2023-08-10 09:18:00', NULL),
('8d82dc4c-8507-4c02-8623-975e3e562741', 'GRACE YOSIANA, A. Md', 'Front Office', '2013', '2023-07-20 14:02:35', '2023-07-20 14:02:35', NULL),
('9c7618cb-00a7-40e4-8963-88ce55164286', 'HELMI INDRA BUDIMAN, S.Pd', 'Matematika', '2013', '2023-07-20 13:35:56', '2023-07-20 13:35:56', NULL),
('addd2938-00de-441c-9c43-455a618c5a0d', 'R. HERMAN YUDHARTO, BA', 'Bahasa Inggris Hotel', '2013', '2023-07-20 14:00:41', '2023-07-20 14:00:41', NULL),
('b3c6f43f-0415-468e-a136-8c411977cb79', 'DIDIN JAENUDIN, SE', 'Kearsipan', '2013', '2023-07-20 13:38:23', '2023-07-20 13:38:23', NULL),
('b9b0b39f-8359-49b9-9d50-70030fd777d4', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', 'Bahasa Indonesia', '2013', '2023-07-20 14:06:47', '2023-07-20 14:06:47', NULL),
('bfb4ee4e-c9c0-4100-a990-6c3cd2843039', 'R. HERMAN YUDHARTO, BA', 'Housekeeping', '2013', '2023-07-20 14:01:34', '2023-07-20 14:01:34', NULL),
('c6bccfad-1f89-42bc-ba2a-db14b471d1dd', 'MUHAMAD RAMDANI', 'Loundry', '2013', '2023-07-20 14:05:42', '2023-07-20 14:05:42', NULL),
('ce7ee028-6576-4c2a-bd9c-d04793109a91', 'GRACE YOSIANA, A. Md', 'Kepariwisataan', '2013', '2023-07-20 14:02:58', '2023-07-20 14:02:58', NULL),
('d2596195-d0d8-4618-9fc2-132085554551', 'GRACE YOSIANA, A. Md', 'Industri Perhotelan', '2013', '2023-07-20 14:02:15', '2023-07-20 14:02:15', NULL),
('dacda6c1-d7e0-4f6f-8918-c89ce5134b24', 'TITIB, S.Pd', 'Simulasi Digital', '2013', '2023-07-20 13:50:21', '2023-07-20 13:50:21', NULL),
('dbae1310-8337-498b-a260-8020f9e9e614', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', 'PPKN KLS X,XI', '2013', '2023-08-10 09:20:57', '2023-08-10 09:20:57', NULL),
('f14114e0-2002-4d2f-a99d-4eba74c3574e', 'TITIB, S.Pd', 'SEJARAH', '2013', '2023-08-10 09:18:30', '2023-08-10 09:18:30', NULL),
('f202c50f-6a87-4c23-9574-a64b0830d19b', 'TITIK FARIDA, S Pd', 'Bahasa Inggris Umum', '2013', '2023-07-18 20:32:38', '2023-07-18 20:32:38', NULL);

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_08_09_000000_create_users_table', 1),
(4, '2021_08_09_220817_create_siswas_table', 1),
(5, '2021_08_10_024302_create_log_activities_table', 1),
(6, '2021_08_10_111951_create_costs_table', 1),
(7, '2021_08_10_120222_create_registration_costs_table', 1),
(8, '2021_08_10_130637_create_spps_table', 1),
(9, '2021_08_10_134720_create_cash_books_table', 1),
(10, '2021_08_10_152534_create_in_mails_table', 1),
(11, '2021_08_10_154339_create_out_mails_table', 1),
(12, '2023_07_06_130146_create_pegawais_table', 1),
(13, '2023_07_07_103334_create_donaturs_table', 1),
(14, '2023_07_07_205949_create_konselings_table', 1),
(15, '2023_07_08_093242_create_kelass_table', 1),
(16, '2023_07_09_213027_create_mapels_table', 1),
(17, '2023_07_10_084754_create_prestasis_table', 1),
(18, '2023_07_10_095134_create_inventorys_table', 1),
(19, '2023_07_10_132647_create_organisasis_table', 1),
(20, '2023_07_10_141501_create_exschools_table', 1),
(21, '2023_07_10_202743_create_pengajuans_table', 1),
(22, '2023_07_11_085155_create_kategoris_table', 1),
(23, '2023_07_20_100006_create_gambars_table', 1),
(24, '2023_07_21_202633_create_bayars_table', 2),
(25, '2023_07_21_210415_create_banks_table', 3),
(26, '2023_07_23_171816_create_pemasukans_table', 4),
(27, '2023_07_24_101448_create_pengeluarans_table', 5),
(28, '2023_07_26_090808_create_kategoriinventories_table', 6),
(29, '2023_07_26_090808_create_kategoriinventaris_table', 7),
(30, '2023_07_26_104017_create_baranginventaris_table', 7),
(31, '2023_07_26_104017_create_baranginventories_table', 8),
(32, '2023_08_05_121735_create_cost7s_table', 9),
(33, '2023_08_05_164551_create_cost8s_table', 10),
(34, '2023_08_05_164729_create_cost9s_table', 10),
(35, '2023_08_17_194657_create_cash_yayasans_table', 11),
(47, '2023_08_19_065251_create_kas_boss_table', 12),
(49, '2023_08_19_094946_create_kas_sumbangans_table', 12),
(50, '2023_08_19_095008_create_kas_honors_table', 13),
(51, '2023_08_19_095035_create_kas_oprationals_table', 13),
(52, '2023_08_19_094932_create_kas_spps_table', 14),
(53, '2023_09_04_160002_create_izins_table', 15),
(54, '2023_09_19_103941_create_katalogs_table', 16),
(55, '2023_09_19_125919_create_pengarangs_table', 16),
(56, '2023_09_19_130009_create_penerbits_table', 16),
(57, '2024_01_03_161730_create_kas_donaturs_table', 17),
(58, '2024_01_03_161801_create_kas_umkms_table', 17),
(59, '2024_01_03_161914_create_kas_bpmus_table', 17),
(60, '2024_01_03_161924_create_kas_pips_table', 17),
(61, '2024_01_03_161932_create_kas_bopdas_table', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` char(36) NOT NULL,
  `siswa_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `debet` varchar(255) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `status` enum('Unpaid','Paid') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `siswa_id`, `name`, `month`, `year`, `date`, `debet`, `kelas`, `status`, `created_at`, `updated_at`) VALUES
('3e14069e-1095-4dd6-93d4-d389e2f8e3e2', '7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', 'Cindy Nurcahniaty', 'Oct', '2023', '2023-10-19', '175000', '10 OTKP', 'Unpaid', '2023-10-19 10:23:54', '2023-10-19 10:23:54'),
('6ff06f40-3af7-4a9e-8530-d04b0523c9ce', '7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', 'Cindy Nurcahniaty', 'Oct', '2023', '2023-10-19', '175000', '10 OTKP', 'Paid', '2023-10-19 10:24:34', '2023-10-19 10:26:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `organisasis`
--

CREATE TABLE `organisasis` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `organisasi` varchar(255) NOT NULL,
  `pembina` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `organisasis`
--

INSERT INTO `organisasis` (`id`, `name`, `kelas`, `organisasi`, `pembina`, `created_at`, `updated_at`, `deleted_at`) VALUES
('14b7f867-869d-4412-8932-6508f7ff1982', 'Ai Diniah Nur Sopiah', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:19:12', '2023-08-01 12:19:12', NULL),
('24646382-61a5-4d52-9a57-2307ed48ade9', 'Nia', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:12:58', '2023-08-01 12:12:58', NULL),
('253a7480-9bf0-491d-944a-344090879178', 'Muhamad Andri Ali Sandi', 'XII PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:07:14', '2023-08-01 12:07:14', NULL),
('35dced18-28b8-47f3-87fa-d687ac985467', 'Octavia Indrianti', 'XII PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:06:33', '2023-08-01 12:06:33', NULL),
('41224c3d-869e-466a-911c-bb48afbd33d1', 'Intan Nuraeni', 'XII OTKP', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:04:59', '2023-08-01 12:04:59', NULL),
('4579da16-c25c-4ee2-b087-25117dbe24eb', 'Ela Rahmawati', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:10:43', '2023-08-01 12:10:43', NULL),
('4bb52ad3-5dc9-4373-bdf5-b7ff9d10c9d3', 'Muhamad Anggi', 'XII PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:08:25', '2023-08-01 12:08:25', NULL),
('4c319d54-a172-41b7-9be5-03d23f0e7346', 'Sherly Lestiani', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:16:02', '2023-08-01 12:16:02', NULL),
('58d8a7be-524c-416a-81f9-364d644b7030', 'Siti Romadonnia', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:10:15', '2023-08-01 12:10:15', NULL),
('5f992020-4890-4906-97c7-a9cd63a99282', 'Aura Kasih', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:16:27', '2023-08-01 12:16:27', NULL),
('633c8e2e-8cf0-40fb-9dc6-9e95034c20be', 'Alwan Nesta', 'XII PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:08:09', '2023-08-01 12:08:09', NULL),
('63ec4883-596a-4861-845d-b799a9998cbe', 'Faisal', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:18:31', '2023-08-01 12:18:31', NULL),
('67799b94-1465-483a-9a60-4845614125d7', 'Bunga Harvesta', 'XII PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:06:53', '2023-08-01 12:06:53', NULL),
('678b857f-077b-4b91-8ca2-0e406bfecc12', 'Muhamad Yusuf', 'XII OTKP', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:07:53', '2023-08-01 12:07:53', NULL),
('695a85ef-f1f6-4076-be4c-4db4397d2c88', 'Sindi', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:11:20', '2023-08-01 12:11:20', NULL),
('69f8607b-c439-4615-b347-54d7e8420768', 'Muhamad Aripin', 'XII PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:09:26', '2023-08-01 12:09:26', NULL),
('82c0a9b8-b9d7-4190-ad87-21c91c84fb67', 'Riki Saputra', 'XII OTKP', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:09:04', '2023-08-01 12:09:04', NULL),
('8ffadc1a-76e0-4484-8c40-e430b0bc642f', 'Selia Anata', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:15:24', '2023-08-01 12:15:24', NULL),
('9d9b41b4-3ac8-405d-824b-6940ce75d8f6', 'Alma Febrianti', 'XII PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:06:16', '2023-08-01 12:06:16', NULL),
('b6d4ad97-c238-40c5-b513-da0ad7d9f14e', 'Septiyani Saputri', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:14:33', '2023-08-01 12:14:33', NULL),
('cfa070be-c816-4c24-a12c-cf02379ce49e', 'Sarip Hidayatulloh', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:12:15', '2023-08-01 12:12:15', NULL),
('dd34531d-05ee-4e49-81d0-47ac2d363f9b', 'Rahkaman Herdian', 'XII PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:07:34', '2023-08-01 12:07:34', NULL),
('e00cd7cd-facd-4dfc-badd-3c50270dce5c', 'Neng Ratih', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:16:56', '2023-08-01 12:16:56', NULL),
('e3c54a16-01fb-4f66-9663-24304df9f2d7', 'Usman', 'XI OTKP', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:11:56', '2023-08-01 12:11:56', NULL),
('e3d6d32e-c708-4d73-89ff-b61b482f3377', 'Misbah Anugrah', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:18:49', '2023-08-01 12:18:49', NULL),
('e4917222-567d-4f4f-8de0-23dac3fd3438', 'Hilda Fitriyani', 'XII PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:06:00', '2023-08-01 12:06:00', NULL),
('e63cca02-2038-4a3c-8bba-8010e1d0f136', 'Merina', 'XII OTKP', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:05:23', '2023-08-01 12:05:23', NULL),
('ea750664-8ab3-4c3e-9f4a-1ef7674a3f95', 'Ai Rahmawati', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:12:32', '2023-08-01 12:12:32', NULL),
('f04f50b5-d836-4222-9c0c-84bc426bf7cf', 'Rizki', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:18:14', '2023-08-01 12:18:14', NULL),
('f1f69aa2-ba46-4aa3-b3e0-bf0d2304a305', 'Adiansyah Saputra', 'XI PERHOTELAN', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:17:37', '2023-08-01 12:17:37', NULL),
('f8a40b20-6466-4a70-aaf3-2fdfc411a641', 'Fitri Anggita', 'XII OTKP', 'OSIS', 'Anggi Milenia Badrudin Pratama S.Pd', '2023-08-01 12:05:40', '2023-08-01 12:05:40', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `out_mails`
--

CREATE TABLE `out_mails` (
  `id` char(36) NOT NULL,
  `mail_number` varchar(255) NOT NULL,
  `mail_date` date NOT NULL,
  `note` text NOT NULL,
  `sender` varchar(255) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `record_date` date NOT NULL,
  `file_out` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `out_mails`
--

INSERT INTO `out_mails` (`id`, `mail_number`, `mail_date`, `note`, `sender`, `recipient`, `record_date`, `file_out`, `created_at`, `updated_at`, `deleted_at`) VALUES
('01ddfb8b-cabd-4a9d-a1f1-30deb8018f97', '011/SMK/YIA/IX/2023', '2023-09-15', 'Surat Permohonan Praktek Kerja Industri', 'Kepala Sekolah', 'HR. Manager Darmawan Park Hotel', '2023-09-13', 'outmail-1694649665.jpg', '2023-09-14 07:01:05', '2023-09-14 07:01:05', NULL),
('078de363-ca2d-44a1-b5ef-a5d545cef342', '015/SMK/YIA/IX/2023', '2023-09-22', 'Surat Pemberitahuan', 'Arobi', 'Orangtua siswa', '2023-09-21', 'outmail-1695267541.jpg', '2023-09-21 10:39:01', '2023-09-21 10:39:01', NULL),
('394641c4-3165-4a89-be9e-e5259f15f2a6', '002/YIA/SMK/VII/2023', '2023-07-20', 'Surat undangan rapat orang tua', 'Arobi', 'Orangtua Siswa', '2023-07-20', 'outmail-1690174087.jpg', '2023-07-24 11:43:49', '2023-07-24 11:48:07', NULL),
('5ceff20c-c1e4-4e3b-9322-4765b6322a54', '08/SMK/YIA/VIII/2023', '2023-08-28', 'Undangan Rapat Perihal Pencak Silat', 'Waka Kesiswaan', 'Orang Tua siswa', '2023-08-27', 'outmail-1693369151.jpg', '2023-08-30 11:19:11', '2023-08-30 11:19:11', NULL),
('75bad1e7-9599-4988-b87d-ad1b23c46678', '010/SMK/YIA/IX/2023', '2023-09-15', 'Surat Permohonan Praktek Kerja Industri', 'Kepala Sekolah', 'HR. Manager Kedaton 8 Hotel Sentul', '2023-09-13', 'outmail-1694649490.jpg', '2023-09-14 06:58:10', '2023-09-14 06:58:10', NULL),
('9fde5337-06a6-4586-b086-ac0f44dac8fa', '003/YIA/SMK/VII/2023', '2023-08-05', 'Surat Tugas Workshop Bedah Kurikulum Merdeka T. A. 2023/2024', 'Kepala Sekolah', 'Waka Kesiswaan', '2023-08-04', 'outmail-1693446665.jpg', '2023-08-31 08:51:05', '2023-08-31 08:51:05', NULL),
('a68032fb-4589-4447-824b-53443ade4721', '005/SMK/YIA/VI/2023', '2023-08-24', 'Pemberitahuan ANBK', 'Arobi', 'Orangtua Siswa', '2023-08-24', 'outmail-1692860091.jpg', '2023-08-24 13:54:51', '2023-08-24 13:55:28', NULL),
('c3bbdf8f-040e-4477-91d7-ad19a62f3eec', '012/SMK/YIA/IX/2023', '2023-09-15', 'Surat Permohonan Praktek Kerja Industri', 'Kepala Sekolah', 'HR. Manager Fafa Hill Hotel & Resort', '2023-09-13', 'outmail-1694649772.jpg', '2023-09-14 07:02:52', '2023-09-14 07:02:52', NULL),
('f9fe0c6d-930f-4db7-bdaf-3e6c1cba738d', '001/YIA/SMK/VII/2023', '2023-07-18', 'Surat pemberitahuan MPLS', 'Arobi', 'Orangtua Siswa', '2023-07-18', 'outmail-1690174124.jpg', '2023-07-24 11:36:45', '2023-07-24 11:48:44', NULL);

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
-- Struktur dari tabel `pegawais`
--

CREATE TABLE `pegawais` (
  `id` char(36) NOT NULL,
  `user_id` char(50) DEFAULT NULL,
  `nip` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `agama` varchar(40) DEFAULT NULL,
  `birth_place` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `phone` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `child` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `position` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `graduate` varchar(255) NOT NULL,
  `school_old` varchar(255) NOT NULL,
  `school_address_old` text NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `entry_year` year(4) NOT NULL,
  `year_out` year(4) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawais`
--

INSERT INTO `pegawais` (`id`, `user_id`, `nip`, `name`, `gender`, `agama`, `birth_place`, `birth_date`, `phone`, `status`, `child`, `address`, `position`, `unit`, `graduate`, `school_old`, `school_address_old`, `father_name`, `mother_name`, `entry_year`, `year_out`, `photo`, `cv`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
('6034067f-8a89-4cc4-b219-2e6de206275d', 'c0ca4e4d-f67a-453c-b9aa-44fa324218ae', '0', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', 'Laki-laki', 'Islam', 'Bogor', '2000-01-09', '087745454', 'Belum Menikah', '0', 'KP. BABAKAN CIJAYANTI RT. 07/RW. 06 DESA CIJAYANTI', 'PEMBINA OSIS', 'SMK AL MUTTAQIEN', 'STKIP PASUNDAN CIMAHI', 'STKIP PASUNDAN CIMAHI', 'Kota Cimahi', 'Ujang Badrudin', 'Nana nawiroh', '2023', NULL, NULL, NULL, 'guru3@gmail.com', '123456', '2023-08-24 10:19:58', '2023-09-27 10:57:22', NULL),
('78a1945d-9274-411d-8e48-53c0f987b255', 'be37fcf1-7f7d-4b19-941b-da4d223b0c63', '0', 'FIRDA HERMINIA FUTRIYANTI, SE', 'Perempuan', 'Islam', 'Bogor', '1995-01-24', '0856054544545', 'Menikah', '2', 'Kp pasir karet rt 04 rw 04 desa cijayanti  kec babakan madang kab bogor', 'BENDAHARA SEKOLAH', 'SMK AL MUTTAQIEN', 'S1 STIE MBI', 'PT JMtech busana global', 'Jl citerep', 'Anas', 'Lia', '2016', NULL, NULL, NULL, 'bendaharasmk@gmail.com', '123456', '2023-08-24 10:19:58', '2023-09-27 10:57:56', NULL),
('79f851f5-883f-4ecd-90f7-056ce7a814c7', 'ac5e26c3-29c6-4643-b1fe-005adb64840f', '0', 'R. HERMAN YUDHARTO, BA', 'Laki-laki', 'Islam', 'Bogor', '1964-12-05', '05454545', 'Menikah', '2', 'JL. BATU TULIS GG.MASJID NO.36 RT.02/RW.02', 'WK KAPROG PERHOTELAN', 'SMK AL MUTTAQIEN', 'Sarjana Muda Bahasa Inggris ABA Jakarta JAKARTA', 'D3 ABA JAKARTA', 'Samping Polda Metro Jaya', 'R.E. Soenarto', 'HJ. Mulyati', '2019', NULL, NULL, NULL, 'guru6@gmail.com', '123456', '2023-08-24 10:19:58', '2023-09-27 10:58:53', NULL),
('82db9931-3764-414f-bcfc-cb3e2395b7e4', 'ec964efe-064d-44b1-b3d9-493ea1bf4e59', '0', 'OMAY KOMARUDIN', 'Laki-laki', 'Islam', 'Bogor', '1978-12-14', '0838125745875', 'Menikah', '2', 'KP. PARUNG ALENG RT.03/RW.03', 'WK SANPRAS', 'SMK AL MUTTAQIEN', 'SMA PKBM', '-', '-', '-', '-', '2015', NULL, NULL, NULL, 'guru5@gmail.com', '123456', '2023-08-24 10:19:58', '2023-09-27 10:58:36', NULL),
('a37920d3-59d1-4523-8177-e42ad0dd5d3e', '8554b391-c5d1-4ee3-b2c4-deb443a9c243', '0', 'HELMI INDRA BUDIMAN, S.Pd', 'Laki-laki', 'Islam', 'Majalengka', '1973-10-24', '0545787545', 'Menikah', '2', 'Kp. Babakan RT. 003/006 Desa Cijayanti Kec. Babakan Madang', 'KEPALA SEKOLAH', 'SMK AL MUTTAQIEN', 'S1 IKIP JAKARTA', '-', '-', '-', '-', '2012', NULL, 'pegawai-1696920145.jpg', NULL, 'kepalasmk@gmail.com', '123456', '2023-08-24 10:19:58', '2023-10-10 13:42:25', NULL),
('a78e10b8-9410-4fc1-a562-42a5eb1d5637', '0e0217d2-7fa6-4d29-9078-af9d67029e66', '0', 'DIDIN JAENUDIN, SE', 'Laki-laki', 'Islam', 'Bogor', '1989-07-20', '08955454545', 'Menikah', '2', 'Cibedug Pabuaran RT.004 RW.004 Desa Sukatani Kecamatan Sukaraja Kabupaten Bogor', 'WK KAPROG OTKP', 'SMK AL MUTTAQIEN', 'Universitas Pakuan', 'Universitas Pakuan', 'Jl. Ciheuleut Kota Bogor', 'Ma\'mun (Alm)', 'Asiah', '2012', NULL, NULL, NULL, 'guru4@gmail.com', '123456', '2023-08-24 10:19:58', '2023-09-27 10:57:36', NULL),
('af006134-5c9c-4ba7-9c9b-d3a5938d4ff5', '70e502fa-12fe-4c65-9089-0333d5b69393', '0', 'AGUS NAZMUDIN, S.Pd', 'Laki-laki', 'Islam', 'Bogor', '1988-03-13', '0858252452', 'Menikah', '2', 'KP. CIMANGURANG RT.03/RW.02 DESA CIJAYANTI', 'GURU', 'SMK AL MUTTAQIEN', 'S1 SIROJUL FALAH', '-', '-', '-', '-', '2015', NULL, NULL, NULL, 'guru1@gmail.com', '123456', '2023-08-24 10:19:58', '2023-09-27 10:55:42', NULL),
('c531dc3f-d5e9-4e38-9770-a7cb5cd8954d', '7f718290-cb47-4b8e-ad1b-c7f3619449ed', '0', 'Anggi Herawati', 'Perempuan', 'Islam', 'Bogor', '2002-06-23', '08822575454', 'Belum Menikah', '0', 'Kp. Babakan Rt,03/Rw.06 Desa Cijayanti', 'STAFF KEUANGAN', 'SMK AL MUTTAQIEN', 'SMK Al Muttaqien', 'SMK Al Muttaqien', 'Jl Raya Cijayanti Rt.02/Rw.01 Desa Cijayanti', 'Endang', 'Astuti', '2022', NULL, 'pegawai-1693360868.jpeg', NULL, 'guru2@gmail.com', '123456', '2023-08-24 10:19:58', '2023-09-27 10:56:14', NULL),
('e2699071-3470-4905-a1e6-3673a265b314', '79d20824-524f-4e80-bf48-c30f7f910ed1', '0', 'AROBI', 'Laki-laki', 'Islam', 'Bogor', '2000-04-04', '083807575758', 'Belum Menikah', '0', 'Kp. Pasir Karet Rt. 02/ Rw. 04 Desa Cijayanti', 'TATA USAHA', 'SMK AL MUTTAQIEN', 'SMK Al Muttaqien', 'SMK Al Muttaqien', 'Jl. Raya Cijayanti Rt.02/Rw. 01 Desa Cijayanti', 'Abdull Jalil', 'Etih Marpuah', '2022', NULL, NULL, NULL, 'tusmk@gmail.com', '123456', '2023-08-24 10:19:58', '2023-09-27 10:57:44', NULL),
('f856b450-8fe5-4411-8066-c33c0525995b', 'e4fb949b-c343-412f-87d0-8737700330c1', '0002', 'TITIB, S.Pd', 'Laki-laki', 'Islam', 'Bogor', '1988-10-07', '0858454545', 'Menikah', '1', 'KP CIMANGGURANG RT 003 RW 002 DESA CIJAYANTI KECAMATAN BABAKAN MADANG KABUPATEN BOGOR', 'KEPALA LAB KOMPUTER', 'SMK AL MUTTAQIEN', 'STIT DAARUL FATAH', 'STIT DAARUL FATAH', 'TANGERANG', 'UJIB', 'TITIB', '2015', NULL, NULL, NULL, 'guru7@gmail.com', '123456', '2023-08-24 10:19:58', '2023-09-27 10:59:11', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasukans`
--

CREATE TABLE `pemasukans` (
  `id` char(36) NOT NULL,
  `siswa_id` char(36) DEFAULT NULL,
  `cost_id` varchar(50) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `pos` varchar(255) NOT NULL,
  `debet` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemasukans`
--

INSERT INTO `pemasukans` (`id`, `siswa_id`, `cost_id`, `name`, `kelas`, `tanggal`, `pos`, `debet`, `status`, `keterangan`, `created_at`, `updated_at`, `deleted_at`) VALUES
('197cd630-6562-430c-a520-3b0558155667', '7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', '9a1adaf5-078e-44a6-98d6-2fc9d3521290', 'Cindy Nurcahniaty', '10 OTKP', '2024-01-03', 'Pengembangan', '150000', 'Lunas', 'tunggakan kelas 9', '2024-01-05 08:59:27', '2024-01-05 08:59:27', NULL),
('1fdd4b7c-0a6e-4195-9cc0-1ad4b3d5049a', '7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', '9a1adaf5-078e-44a6-98d6-2fc9d3521290', 'Cindy Nurcahniaty', '10 OTKP', '2024-01-05', 'Pengembangan', '50000', 'Nunggak', '-', '2024-01-05 08:57:40', '2024-01-05 08:57:40', NULL),
('20f1f035-74eb-4de4-bc9f-628a017e2001', '7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', '3e06a2d7-7ce5-41b8-9be3-91d7c5ad5938', 'Cindy Nurcahniaty', '10 OTKP', '2023-08-18', 'Pendaftaran', '100000', 'lunas', 'tunggakan kelas 9', '2024-01-05 05:51:33', '2024-01-05 08:52:31', NULL),
('3dcc2099-6696-412e-9f9c-0adca3365a8b', '7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', '34909d83-d964-4139-910c-56083ec59fc1', 'Cindy Nurcahniaty', '10 OTKP', '2023-07-05', 'UAS', '50000', 'Lunas', '-', '2024-01-05 05:45:23', '2024-01-05 05:45:23', NULL),
('9fb3efbf-32d6-4fbe-b34a-0e46a0260eb0', '7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', '9a1adaf5-078e-44a6-98d6-2fc9d3521290', 'Cindy Nurcahniaty', '10 OTKP', '2024-01-05', 'Pengembangan', '50000', 'Nunggak', '-', '2024-01-05 08:58:50', '2024-01-05 08:58:50', NULL),
('a3580fbe-f0c4-42c6-882e-40bcaa7acdf0', '01bc0a1a-3186-41de-a104-658e96d79a28', '80c155de-0758-49ae-a615-503b52de179a', 'Alwan Nesta', '12 PERHOTELAN', '2023-10-31', 'UJIAN SEKOLAH', '1000', 'nungak', '1', '2023-10-31 09:20:49', '2023-10-31 02:30:27', NULL),
('bd5e27bb-52d7-48b2-990f-c2fd855f125a', '7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', '6e2d6dfd-da33-4580-b7a2-43e39caf9787', 'Cindy Nurcahniaty', '10 OTKP', '2023-10-05', 'RAPORT', '75000', 'lunas', '-', '2023-10-05 15:49:33', '2023-10-05 15:52:25', NULL),
('f487f0a8-58c5-4d02-988d-82726ed1ef6f', '7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', '8e4a278a-3356-11ee-bfbb-c85b767819e3', 'Cindy Nurcahniaty', '10 OTKP', '2023-09-14', 'OSIS', '100000', 'nungak', '-', '2023-10-05 15:50:38', '2023-10-31 09:19:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbits`
--

CREATE TABLE `penerbits` (
  `id` char(36) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_number` char(14) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajuans`
--

CREATE TABLE `pengajuans` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `total` int(11) NOT NULL,
  `pos` varchar(50) DEFAULT NULL,
  `keperluan` text NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `sumber_dana` varchar(50) DEFAULT NULL,
  `persetujuan_kepsek` varchar(255) NOT NULL DEFAULT '1',
  `persetujuan_yayasan` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengajuans`
--

INSERT INTO `pengajuans` (`id`, `date`, `name`, `unit`, `total`, `pos`, `keperluan`, `file`, `sumber_dana`, `persetujuan_kepsek`, `persetujuan_yayasan`, `created_at`, `updated_at`, `deleted_at`) VALUES
('71d8daf1-d184-4a8d-bf41-b0d993304a12', '2023-10-13', 'Arobi', 'SMK AL MUTTAQIEN', 500000, 'ATK', 'pembelian ATK', 'pengajuan-1697161777.PNG', 'Kas UMKM', '0', '0', '2023-10-13 08:49:37', '2024-01-04 10:31:14', '2024-01-04 10:31:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengarangs`
--

CREATE TABLE `pengarangs` (
  `id` char(36) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_number` char(14) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluarans`
--

CREATE TABLE `pengeluarans` (
  `id` char(36) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `pos` varchar(255) NOT NULL,
  `kas` varchar(20) DEFAULT NULL,
  `kredit` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` char(36) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `isi`, `tanggal`, `created_at`, `updated_at`) VALUES
('31755bfe-5c16-11ee-8c35-ec2a7202c4e0', 'LIBUR', 'Hari minggu libur', '2023-10-01', NULL, '2023-09-27 10:35:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasis`
--

CREATE TABLE `prestasis` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `prestasi` varchar(255) NOT NULL,
  `tingkat` varchar(255) NOT NULL,
  `tahun` varchar(255) NOT NULL,
  `photo` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `prestasis`
--

INSERT INTO `prestasis` (`id`, `name`, `prestasi`, `tingkat`, `tahun`, `photo`, `created_at`, `updated_at`, `deleted_at`) VALUES
('081f6077-67a6-4688-be1d-3f6fa5918686', 'M. Yusuf', 'Sepak Bola', 'Kecamatan', '2023', NULL, '2023-07-23 11:19:05', '2023-07-23 11:19:05', NULL),
('1efeda42-c3ef-4c0d-8f19-61a714e99c29', 'M. Aditya sauqi Sabililah', 'Sepak Bola', 'Kecamatan', '2023', NULL, '2023-07-23 11:33:12', '2023-07-23 11:33:12', NULL),
('20b43ab6-302f-450c-9a40-f15849089c0e', 'Muhamad Pakih', 'Sepak Bola', 'Kecamatan', '2023', NULL, '2023-07-23 11:31:11', '2023-07-23 11:31:11', NULL),
('4f557470-91c6-4711-acf7-d4f77c9f0ec9', 'M. Badri Tamami', 'Sepak Bola', 'Kecamatan', '2023', NULL, '2023-07-23 11:32:11', '2023-07-23 11:32:11', NULL),
('600e4994-cc30-4856-b97c-bc1dd50745c6', 'Riski', 'Sepak Bola', 'Kecamatan', '2023', NULL, '2023-07-23 11:20:38', '2023-07-23 11:20:38', NULL),
('8b4c28a6-4176-4580-8767-aa9c80227546', 'M. Andri Ali Sandi', 'Sepak Bola', 'Kecamatan', '2023', NULL, '2023-07-23 11:17:41', '2023-07-23 11:17:41', NULL),
('91d09086-a35c-40ab-9907-2d2da5d1eadd', 'Ade Ahmad', 'Sepak Bola', 'Kecamatan', '2023', NULL, '2023-07-23 11:19:49', '2023-07-23 11:19:49', NULL),
('afdb77be-0cb6-4a00-a8d0-47d2250bbfcc', 'Soekarno', 'juara adzan', 'kecamatan', '2022', NULL, '2023-07-20 14:25:38', '2023-07-20 14:29:36', '2023-07-20 14:29:36'),
('b6cf67cd-3eb5-4c05-885d-3ed12b620d4d', 'Herlan Maulana', 'Sepak Bola', 'Kecamatan', '2023', NULL, '2023-07-23 11:31:35', '2023-07-23 11:31:35', NULL),
('bfeadf59-1fad-4c40-b02a-4186a7f85fe9', '01bc0a1a-3186-41de-a104-658e96d79a28', 'juara adzan', 'kecamatan', '2022', NULL, '2023-07-20 14:14:48', '2023-07-20 14:14:52', '2023-07-20 14:14:52'),
('c0faa9f3-f2f8-418b-bf1c-089a513f9089', 'Alwan Nesta', 'Sepak Bola', 'Kecamatan', '2023', NULL, '2023-07-21 07:28:59', '2023-07-21 07:28:59', NULL),
('c2a9b8fc-89e8-411a-81f3-c498531081b3', 'M. Irpan', 'Sepak Bola', 'Kecamatan', '2023', NULL, '2023-07-23 11:18:33', '2023-07-23 11:18:33', NULL),
('dfc6f983-2c5c-4871-a32e-a01d687bcc36', 'M. Aditia Teguh', 'Sepak Bola', 'Kecamatan', '2023', NULL, '2023-07-23 11:32:41', '2023-07-23 11:32:41', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `publishers`
--

CREATE TABLE `publishers` (
  `id` char(36) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_number` char(14) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `email`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
('8445af6c-ba76-4137-92a0-9230a9bf49d8', 'Penerbit Buku Sejahtera', 'info@penerbitansejahtera.com', '629876543210', 'Jl. Penerbitan No. 45, Kota Penerbitan, Indonesia', '2023-09-21 06:55:34', '2023-09-21 06:55:34'),
('c51e5c20-2ba8-41b7-b51a-1eac3b3a28c3', 'Penerbit Cerdas Jaya', 'info@cerdasjaya.co.id', '628765432109', 'Jl. Penerbitan Baru No. 12, Jakarta, Indonesia', '2023-09-21 06:56:42', '2023-09-21 06:56:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `registration_costs`
--

CREATE TABLE `registration_costs` (
  `id` char(36) NOT NULL,
  `pangkal` int(11) NOT NULL,
  `seragam` int(11) NOT NULL,
  `praktek` int(11) NOT NULL,
  `osis` int(11) NOT NULL,
  `ldks` int(11) NOT NULL,
  `siswa_id` char(36) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` char(36) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_sidebar` varchar(255) NOT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `school_name`, `school_sidebar`, `logo_path`, `created_at`, `updated_at`) VALUES
('9c74f6c7-6b1f-4628-9d7a-783bb2f68da8', 'Suryatama Management School', 'SMS', '1698904455.png', '2023-09-22 02:08:40', '2023-12-08 08:16:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswas`
--

CREATE TABLE `siswas` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `nis` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `agama` varchar(40) NOT NULL,
  `address` text NOT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `birth_date` date NOT NULL,
  `phone` varchar(255) NOT NULL,
  `tahun_ajaran` varchar(20) DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `school_old` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `father_job` varchar(255) NOT NULL,
  `mother_job` varchar(255) NOT NULL,
  `parent_phone` varchar(255) NOT NULL,
  `kategori` varchar(40) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `entry_year` year(4) NOT NULL,
  `year_out` year(4) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT '123456',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswas`
--

INSERT INTO `siswas` (`id`, `user_id`, `name`, `nis`, `gender`, `agama`, `address`, `birth_place`, `birth_date`, `phone`, `tahun_ajaran`, `kelas`, `school_old`, `father_name`, `mother_name`, `father_job`, `mother_job`, `parent_phone`, `kategori`, `status`, `entry_year`, `year_out`, `photo`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
('01bc0a1a-3186-41de-a104-658e96d79a28', '75133634-0814-4d4f-bc96-71e610bb6842', 'Alwan Nesta', '012122006', 'Laki-laki', 'Islam', 'Kp. Gunung Batu Rt. 03/Rw. 07', 'Bogor', '2008-02-04', '081574883781', '2023/2024', '12 PERHOTELAN', 'SMP NEGERI 02 BABAKAN MADANG', 'Cecep', 'Milah', 'Buruh', 'Ibu Rumah Tangga', '081290238048', 'Reguler', 'Aktif', '2021', NULL, 'Siswa-1701683992.png', 'siswademo1@gmail.com', '123456', '2023-08-24 10:09:33', '2023-12-04 09:59:52', NULL),
('070a4cb4-3cd9-4f51-a95e-f1862f8998cc', '297f7f1d-abab-46b8-8c81-489ea3828d29', 'Muhamad Aripin', '0121220024', 'Laki-laki', 'Islam', 'Kp. Tapos Rt. 03/Rw. 04', 'Bogor', '2006-10-31', '081285544219', '2023/2024', '12 PERHOTELAN', 'SMPN 2 Babakan Madang', 'Cecep', 'Ipah Saripah', 'Petani', 'Ibu Rumah Tangga', '081290238048', 'Reguler', 'Aktif', '2021', NULL, 'Siswa-1701759056.png', 'siswademo25@gmail.com', '123456', '2023-08-24 10:09:33', '2023-12-05 06:50:56', NULL),
('08ebf28b-ef72-40f5-aedb-f74ff09d6696', 'e43d664f-d0a2-4ea3-b280-513cca359b4d', 'Fajar Feri', '0', 'Laki-laki', 'Islam', 'Kp.Bojong Koneng RT.03/Rw.01 Desa Bojong Koneng', 'Bogor', '2006-02-27', '083808086709', NULL, 'LULUS', '-', '-', 'Nida', '-', 'Ibu Rumah Tangga', '0', 'Reguler', 'Alumni', '2020', '2023', NULL, NULL, NULL, '2023-08-24 10:09:33', '2023-08-28 09:30:47', NULL),
('162a0e2e-e43e-4768-aa37-cc595337ccc9', 'b5989608-8afa-4f32-a97a-1181bcaf11b1', 'Muhamad Badri Tamami', '0121220025', 'Laki-laki', 'Islam', 'Kp. Cikeas  Rt.01/Rw.10', 'Bogor', '2005-05-03', '05697132485', '2023/2024', '12 PERHOTELAN', 'SMPN 02 Babakan Madang', 'Padli', 'naiyah', 'Petani', 'Ibu Rumah Tangga', '081219497621', 'Yatim', 'Aktif', '2021', NULL, 'Siswa-1701759077.png', 'siswademo26@gmail.com', '123456', '2023-08-24 10:09:33', '2023-12-05 06:51:17', NULL),
('1dc6b4d4-f334-4d21-9b26-1d8a1bff9c3c', '048007cb-1730-4894-a998-46d456879c7a', 'Della Tri Kaila Sukatma Putri', '0', 'Perempuan', 'Islam', 'Kp. Cikeas RT.02/RW.10 Desa Bojong Koneng', 'Bogor', '2005-06-12', '082112164211', '2022/2023', 'LULUS', '-', 'Ade Sukatma', 'Nurlaela', 'Buruh', 'Ibu Rumah Tangga', '0', 'Reguler', 'Alumni', '2020', '2023', NULL, NULL, NULL, '2023-08-24 10:09:33', '2023-08-28 09:31:08', NULL),
('22f2158b-2e21-4e11-9df3-a475923364c0', '04bd1746-b2ad-4943-aaa0-a4b05021f1ca', 'Muhamad Anggi', '0121220023', 'Laki-laki', 'Islam', 'Kp. Tapos Rt. 02/Rw. 04', 'Bogor', '2007-02-10', '085770714527', '2023/2024', '12 PERHOTELAN', 'SMPN 2 Babakan madang', 'Hasanudin', 'Icih', 'Petani', 'Ibu Rumah Tangga', '085716614768', 'Reguler', 'Aktif', '2021', NULL, 'Siswa-1701759114.png', 'siswademo24@gmail.com', '123456', '2023-08-24 10:09:33', '2023-12-05 06:51:54', NULL),
('24b527cd-c782-478c-9505-747396b093e6', '55b9ad9b-064a-46a1-a931-46a6f9232d3d', 'Agus Muhammad Dalfa', '102324002', 'Laki-laki', 'Islam', 'Kp. Pasir Karet Rt. 01.Rw.10', 'Bogor', '2007-08-16', '081280168733', '2023/2024', '10 PERHOTELAN', 'PKBM Pancasila', 'Ocid', 'Piah', 'Penjaga Villa', 'Ibu Rumah Tangga', '081323853741', 'SKTM', 'Aktif', '2023', NULL, 'Siswa-1693368504.jpeg', 'siswademo04@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:44:25', NULL),
('257fda09-2263-49fb-b52d-eef00f1463ba', '6ccc2412-1b18-4e6f-bebe-94c7574daa5c', 'Aditya Sauqi Sabililah', '012122003', 'Laki-laki', 'Islam', 'Kp. Garungsang Pasir Rr. 01/Rw.07', 'Bogor', '2008-04-28', '088289589718', '2023/2024', '12 PERHOTELAN', 'SMPN 2 BABAKAN MADANG', 'Asep Caskani', 'Aas', 'Buruh Harian Lepas', 'Ibu Rumah Tangga', '088298897045', 'Reguler', 'Aktif', '2021', NULL, 'siswa-1690810306.jpg', 'siswademo20@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:50:33', NULL),
('3050fc36-de18-4f52-98d0-5f4a8a5338bf', 'b1f1b149-9336-4da1-ac52-0479ee26bfb3', 'Muhamad Riski', '102324014', 'Laki-laki', 'Islam', 'Kp. Pasir Karet Rt. 03/10 Desa Cijayanti', 'Bogor', '2007-08-18', '085772126207', '2023/2024', '11 OTKP', 'Mts Nu\'urul Qur\'an', 'Ujang supriatna', 'Siti kusum', 'wiraswasta', 'Ibu Rumah Tangga', '083867544302', 'Reguler', 'Aktif', '2023', NULL, 'Siswa-1693368629.jpeg', 'siswademo7@gmail.com', '123456', '2023-08-24 10:09:33', '2024-01-05 06:25:02', NULL),
('3c1c2a0d-f444-4ce8-941e-9f7f723375dd', '2d123820-40c9-4274-85e3-4f67ec850347', 'Rama Agus Razabi', '102324022', 'Laki-laki', 'Islam', 'kp. Gunung Batu Rt. 01/11 Desa Bojong Koneng', 'Bogor', '2007-08-04', '085711651857', '2023/2024', '11 OTKP', 'SMPN O2 BABAKAN MADANG', 'Yayat Junaedi', 'tuti Ernawati', 'Wirasawasta', 'Ibu Rumah Tangga', '085714620825', 'Reguler', 'Aktif', '2023', NULL, 'Siswa-1693368204.jpeg', 'siswademo11@gmail.com', '123456', '2023-08-24 10:09:33', '2024-01-05 06:25:02', NULL),
('46848784-ed38-4bf1-b0a1-97b0702f6aa6', '6cafe31f-84c8-41b4-9167-42ae9112051d', 'Muhidin', '102324018', 'Laki-laki', 'Islam', 'Kp. Pasir Karet Rt. 04/10 Desa Cijayanti', 'Bogor', '2007-02-24', '085697129639', '2023/2024', '11 OTKP', 'Smp pkbm Pancasila', 'Samsudin', 'Encih', 'Buruh harian', 'Ibu Rumah Tangga', '083898813834', 'Reguler', 'Aktif', '2023', NULL, 'siswa-1692062825.jpeg', 'siswademo9@gmail.com', '123456', '2023-08-24 10:09:33', '2024-01-05 06:25:02', NULL),
('546089ce-da52-4375-abde-549aa1455292', 'f54ac1ad-0fd0-4e44-a9f9-b5b8c01a0f79', 'Muhammad Saidil Adha', '102324017', 'Laki-laki', 'Islam', 'Kp. Gunung Batu Rt. 03/08 Desa Bojong Koneng', 'Bogor', '2006-01-01', '085880061662', '2023/2024', '10 PERHOTELAN', 'SMPN 2 Babakan Madang', 'Aos', 'Omih', 'Petani', 'Ibu Rumah Tangga', '085881597193', 'Reguler', 'Aktif', '2023', NULL, 'siswa-1691987606.png', 'siswademo8@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:45:53', NULL),
('6173c743-4713-4f86-81ec-40c92a2ad6f6', '28d958c6-5032-452a-8b4e-43246da222d7', 'Octavia Indrianti', '012122034', 'Perempuan', 'Islam', 'Kp. Cimangurang Rt. 07/Rw. 02', 'Bogor', '2005-10-24', '08892159170', '2023/2024', '12 PERHOTELAN', 'MTS Darul Fitri Al -Waasi', 'Hasan Suhendar', 'Dian Puspitasari', 'Buruh', 'Ibu Rumah Tangga', '085810125989', 'Reguler', 'Aktif', '2021', NULL, 'siswa-1691545382.JPG', 'siswademo27@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:53:39', NULL),
('69f19a54-3447-4673-92e5-15c91491d41d', '406cdad7-6fe8-4663-a36d-b3713ea37735', 'Adrian', '102324002', 'Laki-laki', 'Islam', 'Kp. Pasir Karet Rt.01/Rw.10', 'Bogor', '2007-02-19', '085777382879', '2023/2024', '10 PERHOTELAN', 'As-syujaiyah', 'Oce', 'Cacih', 'Buruh harian lepas', 'Ibu Rumah Tangga', '085717242426', 'Reguler', 'Aktif', '2023', NULL, 'Siswa-1693368287.jpeg', 'siswademo4@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:43:58', NULL),
('7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', '1b25bafb-1413-4229-bd9f-3e515569a6d2', 'Cindy Nurcahniaty', '102324007', 'Perempuan', 'Islam', 'Kp. Babakan Rt. 02Rw.06', 'Bogor', '2006-09-13', '088921751940', '2023/2024', '10 OTKP', 'MTS NURUL QUR\"AN', 'Iwan', 'Mella', 'Swasta', 'Ibu Rumah Tangga', '081297678714', 'Reguler', 'Aktif', '2023', NULL, 'Siswa-1697678120.jpg', 'siswademo1@gmail', NULL, '2023-08-24 10:09:33', '2023-10-19 08:15:20', NULL),
('823255e3-fb1e-4d7b-9c28-fd67a030259a', '26a6791c-f10d-4297-8d78-24c182db243c', 'Sherly Lestiani', '102223035', 'Perempuan', 'Islam', 'Kp. Legok Banteng RT 02/RW 07, Desa Cijayanti', 'Bogor', '2006-12-26', '083146284973', '2023/2024', '11 PERHOTELAN', 'SMP AS-SYUJA\'IYAH', 'Iyus', 'Lilis Handayani', 'Karyawan Swasta', 'Ibu Rumah Tangga', '085891772318', 'Reguler', 'Aktif', '2022', NULL, 'siswa-1691556021.JPG', 'siswademo15@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:48:41', NULL),
('88c47483-a63f-4afc-8929-17738d45ae1b', 'c6f9e8e5-58b6-4005-9fec-56c455fd84de', 'Merina', '102122019', 'Perempuan', 'Islam', 'kp. Babakan Desa Cijayanti', 'Bogor', '2005-02-23', '0881024627085', '2023/2024', '12 OTKP', 'Pondok Pesantren Fajrussalam', 'Syaripudin', 'Aminah', 'Buruh harian', 'Ibu Rumah Tangga', '0895414786273', 'Reguler', 'Aktif', '2021', NULL, 'siswa-1691547006.JPG', 'siswademo17@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:49:24', NULL),
('8f5e9ddb-3564-422b-895e-0caa5e958c91', '129f8e24-40d5-4dfc-9183-958c9cc21aba', 'Cikal Zul Karnain', '102324006', 'Laki-laki', 'Islam', 'Kp. Pasir Karet Rt.01/Rw.10', 'Bogor', '2008-03-12', '085694058186', '2023/2024', '10 PERHOTELAN', 'SMP AS-SYUJA\'IYAH', 'Iskandar', 'Nur Habibah', 'Wirasawasta', 'Ibu Rumah Tangga', '081299147180', 'Reguler', 'Aktif', '2023', NULL, 'siswa-1692069824.jpeg', 'siswademo5@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:44:38', NULL),
('a2f41296-4984-4036-9530-6375f91a011c', '04f8bf3b-3465-4bec-a826-c186e30c7b1d', 'Riki Saputra', '102122038', 'Laki-laki', 'Islam', 'kp. Pasir Karet rt. 01/04', 'Bogor', '2004-11-15', '085710210892', '2023/2024', '12 OTKP', 'SMPN 01 Babakan Madang', 'Endang Suwarsa', 'Omah', 'Buruh Harian Lepas', 'Ibu Rumah Tangga', '085778256391', 'Reguler', 'Aktif', '2021', NULL, 'siswa-1691547562.JPG', 'siswademo19@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:50:10', NULL),
('a980a84f-14fa-4176-9657-211e9223e169', '7cf5921c-d98e-476a-ab46-9ba589e2f267', 'Nenden', '0', 'Perempuan', 'Islam', 'Cluster Green Valley Jl. andiroba No. 8', 'Bogor', '2003-12-30', '089512639464', NULL, 'LULUS', '-', 'Soma', 'Diah', 'Buruh', 'Ibu Rumah Tangga', '0', 'Reguler', 'Alumni', '2020', '2023', NULL, NULL, NULL, '2023-08-24 10:09:33', '2023-08-28 09:31:27', NULL),
('a9d2e841-6482-4dc8-976d-f97d2b69730d', '6a2d81cf-57ad-42c2-afba-8576d720a9fd', 'Muhammad Yoga Pratama', '102223025', 'Laki-laki', 'Islam', 'Kp. Gombong RT 03/RW 09, Desa Bojong Koneng', 'Bogor', '2007-03-14', '088294115320', '2023/2024', '11 PERHOTELAN', 'SMPN 2 Babakan Madang', 'Kamaludin', 'Salmah', 'Buruh', 'Ibu Rumah Tangga', '088294115320', 'Reguler', 'Aktif', '2022', NULL, 'siswa-1691646942.JPG', 'siswademo12@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:47:21', NULL),
('b8fe38f9-d65e-47be-8d7e-d6927f1122c4', '0f9a7c57-578e-487d-814b-4b077cbb30f6', 'Muhammad Fikri Afriansyah', '102324016', 'Laki-laki', 'Islam', 'Kp. Babakan Rt02/06 Desa Cijayanti', 'Bogor', '2006-03-09', '0895321221077', '2023/2024', '10 OTKP', 'Mts Nurul Qur\'an', 'Wahyudin', 'Rosidah', 'Buruh', 'Ibu Rumah Tangga', '08881025316474', 'Reguler', 'Aktif', '2023', NULL, 'siswa-1691644500.png', 'siswademo2@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:43:18', NULL),
('bb59d1f9-2592-4130-a2c6-0aeb75ff493e', 'f4c8763d-be3d-4117-ae48-7acb686f5f4f', 'Ariyanto', '012122007', 'Laki-laki', 'Islam', 'Kp. Gunung Batu Rt. 03/Rw. 08', 'Bogor', '2006-12-03', '085882462047', '2023/2024', '12 PERHOTELAN', 'SMPN 02 BABAKAN MADANG', 'H. Udin Ahmad Jaja (Alm)', 'Adah', '-', 'Ibu Rumah Tangga', '085814459928', 'Yatim', 'Aktif', '2021', NULL, 'siswa-1690811012.JPG', 'siswademo22@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:51:29', NULL),
('ce81315d-3bc4-454f-b141-3612f784b629', 'a1643742-81f6-4185-ae19-711beff0b060', 'Muhamad Andri Ali Sandi', '012122030', 'Laki-laki', 'Islam', 'Kp. Curug Rt. 02/Rw. 07', 'Bogor', '2005-12-08', '081399795447', '2023/2024', '12 PERHOTELAN', 'MTS Albasith', 'Ali', 'Mamah', 'Swuasta', 'Ibu Rumah Tangga', '081399795447', 'Reguler', 'Aktif', '2021', NULL, 'Siswa-1692930079.jpg', 'siswademo23@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:51:53', NULL),
('d0ca5817-b7e0-48e3-9c32-8dfdd668ddd0', '25678e18-ed25-48c6-8a9d-b1ed92bef7a6', 'Sarip Hidayatulloh', '102223031', 'Laki-laki', 'Islam', 'Kp. Pasir Karet RT 01/RW 04, Desa Cijayanti', 'Bogor', '2005-12-03', '085810122238', '2023/2024', '11 PERHOTELAN', 'SMP Islam Al Muttaqien', 'Sadili', 'Julaeha', 'Buruh', 'Ibu Rumah Tangga', '081286463962', 'Reguler', 'Aktif', '2022', NULL, 'siswa-1691550123.JPG', 'siswademo13@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:47:52', NULL),
('d5b5ac88-f3c6-4426-871e-366c446104ad', '33afb874-98cf-4d34-bb03-d444d0fde99b', 'Nugi Oliansyah', '102324020', 'Laki-laki', 'Islam', 'Kp. Garungsang Rt. 02/05/ Desa Bojong Koneng', 'Bogor', '2008-03-12', '081218927571', '2023/2024', '10 PERHOTELAN', 'SMPN 2 Babakan Madang', 'Oman', 'Nunung', 'Petani', 'Ibu Rumah Tangga', '088971390709', 'Reguler', 'Aktif', '2023', NULL, 'siswa-1691562316.png', 'siswademo10@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:46:35', NULL),
('d6a9ab21-0230-4624-ab6d-705ce0c09d8f', '72ce6731-4460-4250-abc9-b09c3edae7ab', 'Siti Romadonnia', '102223039', 'Perempuan', 'Islam', 'Kp. Cimangurang RT 07/RW 02, Desa Cijayanti', 'Bogor', '2008-11-20', '085810122247', '2023/2024', '11 PERHOTELAN', 'SMP Islam Al Muttaqien', 'Ibrahim', 'Aisah', 'Buruh', 'Ibu Rumah Tangga', '085781402790', 'Reguler', 'Aktif', '2022', NULL, 'siswa-1691550574.JPG', 'siswademo16@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:49:01', NULL),
('e3edecd7-7cd8-4d9f-b8d0-42869e496460', '8535eba1-af85-4728-804a-c612e12133f1', 'Muhamad Ilham', '102324013', 'Laki-laki', 'Islam', 'Kp.Gunung Batu Rt.03/08 Desa bojong Koneng', 'Bogor', '2008-08-08', '085717519784', '2023/2024', '10 PERHOTELAN', 'SMPN 02 Babakan Madang', 'Yadi Ridana', 'iin', 'Buruh harian lepas', 'Ibu Rumah Tangga', '081290740997', 'Reguler', 'Aktif', '2023', NULL, 'siswa-1691642096.png', 'siswademo6@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:45:06', NULL),
('eaf663db-d2c8-403e-97d3-b30995b0cdf0', '88d38ce7-396c-4669-aa43-74ab0f5cdb4e', 'Septiyani Saputri', '102223034', 'Perempuan', 'Islam', 'Kp. Babakan RT 01/RW 06, Desa Cijayanti', 'Bogor', '2006-09-11', '085810122239', '2023/2024', '11 PERHOTELAN', 'SMP Islam Al Muttaqien', 'Saripan', 'Iti Nurhayati', 'Buruh', 'Ibu Rumah Tangga', '085216653148', 'Reguler', 'Aktif', '2022', NULL, 'siswa-1691553855.JPG', 'siswademo14@gmail.com', '123456', '2023-08-24 10:09:33', '2023-09-27 10:48:15', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sop_pegawais`
--

CREATE TABLE `sop_pegawais` (
  `id` char(36) NOT NULL,
  `sop` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sop_pegawais`
--

INSERT INTO `sop_pegawais` (`id`, `sop`, `file`, `created_at`, `updated_at`) VALUES
('66a820d0-37c9-415e-a00f-3583063c6d0b', 'waktu masuk dan pulang', 'soppegawai-1695365220.pdf', '2023-09-22 06:46:06', '2023-09-22 06:47:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sop_siswas`
--

CREATE TABLE `sop_siswas` (
  `id` char(36) NOT NULL,
  `sop` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sop_siswas`
--

INSERT INTO `sop_siswas` (`id`, `sop`, `file`, `created_at`, `updated_at`) VALUES
('5cea5f15-1358-4db1-afd9-74579565e2e9', 'waktu masuk dan pulang', 'sopsiswa-1695364884.pdf', '2023-09-22 06:41:06', '2023-09-22 06:41:24'),
('c18960b4-2103-4a9c-8963-cb3335e3cb8f', 'waktu masuk dan pulang pegawai', 'sopsiswa-1695696188.pdf', '2023-09-26 09:43:08', '2023-09-26 09:43:08'),
('f9c887c3-a5c8-474c-bf8c-91641d24a9a2', 'waktu masuk dan pulang siswa', 'sopsiswa-1695364824.pdf', '2023-09-22 03:57:12', '2023-09-22 06:40:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spps`
--

CREATE TABLE `spps` (
  `id` char(36) NOT NULL,
  `date` date NOT NULL,
  `month` enum('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec') NOT NULL,
  `year` year(4) NOT NULL,
  `spp` int(11) NOT NULL,
  `siswa_id` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sumber_dana` varchar(255) DEFAULT NULL,
  `kelas` text DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `spps`
--

INSERT INTO `spps` (`id`, `date`, `month`, `year`, `spp`, `siswa_id`, `name`, `sumber_dana`, `kelas`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0f01b939-58d7-4fce-8806-c3b8b1af41f3', '2023-12-13', 'Jan', '2024', 75000, '24b527cd-c782-478c-9505-747396b093e6', 'Agus Muhammad Dalfa', 'BOS', '10 PERHOTELAN', 'SKTM', '2024-01-04 08:02:32', '2024-01-04 08:04:11', NULL),
('24793d91-c9bb-4c80-9940-ff9a94ae9443', '2024-01-04', 'Jan', '2023', 100000, '24b527cd-c782-478c-9505-747396b093e6', 'Agus Muhammad Dalfa', 'Orang Tua/Wali Siswa', '10 PERHOTELAN', 'SKTM', '2024-01-04 08:03:30', '2024-01-04 08:03:30', NULL),
('3e972121-4d1d-4e7a-bf8f-b77e9eb78463', '2024-01-04', 'Jan', '2024', 175000, 'bb59d1f9-2592-4130-a2c6-0aeb75ff493e', 'Ariyanto', 'BOS', '12 PERHOTELAN', 'Yatim', '2024-01-04 07:57:59', '2024-01-04 08:00:43', '2024-01-04 08:00:43'),
('41899ac5-ca83-4a6c-bee3-6757a86c7d95', '2024-01-04', 'Jan', '2024', 175000, '162a0e2e-e43e-4768-aa37-cc595337ccc9', 'Muhamad Badri Tamami', 'Donatur/Yayasan', '12 PERHOTELAN', 'Yatim', '2024-01-04 07:57:15', '2024-01-04 07:57:15', NULL),
('7243737d-c0ac-4376-92a1-3d7685eea2c2', '2024-01-04', 'Feb', '2024', 175000, '162a0e2e-e43e-4768-aa37-cc595337ccc9', 'Muhamad Badri Tamami', 'PIP', '12 PERHOTELAN', 'Yatim', '2024-01-04 08:12:40', '2024-01-04 08:20:17', NULL),
('83df946f-8943-4677-a07f-b67154ec9347', '2024-01-05', 'Jul', '2023', 175000, 'b8fe38f9-d65e-47be-8d7e-d6927f1122c4', 'Muhammad Fikri Afriansyah', 'Orang Tua/Wali Siswa', '10 OTKP', 'Reguler', '2024-01-05 04:33:57', '2024-01-05 04:33:57', NULL),
('ad704fce-5d68-4205-a2cb-4086619d1bf4', '2024-01-05', 'Jul', '2023', 175000, '7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', 'Cindy Nurcahniaty', 'Orang Tua/Wali Siswa', '10 OTKP', 'Reguler', '2024-01-05 03:47:33', '2024-01-05 04:05:03', NULL),
('b3b8b3dd-d869-4932-a13f-2a41f8699da0', '2024-01-04', 'Jan', '2024', 175000, '162a0e2e-e43e-4768-aa37-cc595337ccc9', 'Muhamad Badri Tamami', 'Donatur/Yayasan', '12 PERHOTELAN', 'Yatim', '2024-01-04 07:54:47', '2024-01-04 07:56:46', '2024-01-04 07:56:46'),
('be569240-b0f8-4113-8bbc-68a74a47c84e', '2024-01-04', 'Feb', '2024', 175000, 'bb59d1f9-2592-4130-a2c6-0aeb75ff493e', 'Ariyanto', 'UMKM', '12 PERHOTELAN', 'Yatim', '2024-01-04 08:11:41', '2024-01-04 08:11:41', NULL),
('dbe7e65a-691f-4913-8289-f1d5984c4c1f', '2024-01-04', 'Jan', '2024', 175000, '69f19a54-3447-4673-92e5-15c91491d41d', 'Adrian', 'Orang Tua/Wali Siswa', '10 PERHOTELAN', 'Reguler', '2024-01-04 08:10:29', '2024-01-04 08:10:29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` char(36) NOT NULL,
  `siswa_id` char(36) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `siswa_id`, `date_start`, `date_end`, `status`, `created_at`, `updated_at`) VALUES
('64d7776c-2164-4b55-84c9-793227f9383e', '559bd38c-d6e8-433c-a956-fa45f960c5ad', '2023-09-19', '2023-09-26', 0, '2023-09-21 10:31:08', '2023-09-26 09:37:03'),
('bbbf35f4-0a55-4019-8669-be7e81235fd7', '070a4cb4-3cd9-4f51-a95e-f1862f8998cc', '2023-09-21', '2023-09-26', 0, '2023-09-21 10:29:31', '2023-09-26 09:37:00'),
('f32f646a-0e4c-4d0f-93ff-395983f561ad', 'a9d2e841-6482-4dc8-976d-f97d2b69730d', '2023-10-13', '2023-10-13', 0, '2023-10-13 13:45:56', '2023-10-13 13:48:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` char(36) NOT NULL,
  `transaction_id` char(36) NOT NULL,
  `book_id` char(36) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `book_id`, `qty`, `created_at`, `updated_at`) VALUES
('0edec888-b24c-4fe3-a798-3895be0786fc', '64d7776c-2164-4b55-84c9-793227f9383e', '6dbc97b1-9d4d-49e2-b9e6-dbd33e9e375a', 1, '2023-09-21 10:31:08', '2023-09-21 10:31:08'),
('4e57b496-c6d8-4fe4-908d-35ebe01d28db', 'bbbf35f4-0a55-4019-8669-be7e81235fd7', '6dbc97b1-9d4d-49e2-b9e6-dbd33e9e375a', 1, '2023-09-21 10:29:31', '2023-09-21 10:29:31'),
('756c4198-a80b-47e7-b70b-001a4ee9df48', 'f32f646a-0e4c-4d0f-93ff-395983f561ad', '941d7028-b7e4-4972-ae0e-b87d93281e9b', 1, '2023-10-13 13:45:56', '2023-10-13 13:45:56'),
('7dc45db8-c8d0-4597-878d-cf90eecdf53b', 'f32f646a-0e4c-4d0f-93ff-395983f561ad', '6dbc97b1-9d4d-49e2-b9e6-dbd33e9e375a', 1, '2023-10-13 13:45:56', '2023-10-13 13:45:56'),
('a563910f-14c9-4b48-91b1-2d83bd77e219', '64d7776c-2164-4b55-84c9-793227f9383e', '8cfaa3a0-0a20-4a7f-b5b6-f6ad22e835b7', 1, '2023-09-21 10:31:08', '2023-09-21 10:31:08'),
('b139ae76-b33d-40f3-8c13-0c493d79ac3b', 'bbbf35f4-0a55-4019-8669-be7e81235fd7', '3c8b88f7-57f6-469b-a17f-7e7f81725030', 1, '2023-09-21 10:29:31', '2023-09-21 10:29:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('Yayasan','KepalaSekolah','Bendahara','TU','Staf','Siswa') NOT NULL,
  `siswa_id` char(36) DEFAULT NULL,
  `pegawai_id` char(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `siswa_id`, `pegawai_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('048007cb-1730-4894-a998-46d456879c7a', 'Della Tri Kaila Sukatma Putri', NULL, '$2y$10$QZ..1GlO29rBQqO2eFAWt.raaO1D4bCep13uYU028LK.x.qdnOB0W', 'Siswa', '1dc6b4d4-f334-4d21-9b26-1d8a1bff9c3c', NULL, '2023-08-28 09:31:08', '2023-08-28 09:31:08', NULL),
('04bd1746-b2ad-4943-aaa0-a4b05021f1ca', 'Muhamad Anggi', 'siswademo24@gmail.com', '$2y$10$eLVINCW8/oPUXMtl1ZHf5OAZGkYVO43QQ3cK/YVW/vmcAFvR9KD3W', 'Siswa', '22f2158b-2e21-4e11-9df3-a475923364c0', NULL, '2023-09-27 10:52:28', '2023-12-05 06:51:54', NULL),
('04f8bf3b-3465-4bec-a826-c186e30c7b1d', 'Riki Saputra', 'siswademo19@gmail.com', '$2y$10$oJhVttMsj8D7CNbD92RSyeHhZFpYhJ9lW7h/PwZkQHpSx7RGnSWR.', 'Siswa', 'a2f41296-4984-4036-9530-6375f91a011c', NULL, '2023-09-27 10:50:10', '2023-09-27 10:50:10', NULL),
('077b7a3e-b259-4de2-b76f-149690438ad7', 'Tata Usaha', 'tu@gmail.com', '$2y$10$YeiaExpnJBlbOFWqQsdgt.eKbMgw8tMfiYfYJ1hmBlnMLtFZKOYQC', 'TU', NULL, NULL, '2023-07-21 06:18:26', '2023-07-21 06:18:26', NULL),
('0869e2ae-336b-4a7e-9561-59d6cce6bdaf', 'FAHMI', NULL, '$2y$10$/Gu1uoGXJHuwTbW/X4IHiehw11sjLlv1b4ayUcyt5Et8qw9/OEaWq', 'Siswa', 'db282fc2-2cd3-4935-8c73-50272102ef3e', NULL, '2023-09-11 09:00:59', '2023-09-11 09:00:59', NULL),
('0b094d1b-5391-4ad7-8654-1a9498d0615b', 'Bendahara', 'bendahara@gmail.com', '$2y$10$M/EG7hGbnVUhjqNea4dYbumdReATfw2bKV.pU3uGGMEH9tEcTQCFa', 'Bendahara', NULL, NULL, '2023-07-21 06:18:26', '2023-07-21 06:18:26', NULL),
('0e0217d2-7fa6-4d29-9078-af9d67029e66', 'DIDIN JAENUDIN, SE', 'guru4@gmail.com', '$2y$10$pehY6AXydv4Nb1FlJQqtnONpjoHlO8VTn5seqjoMdNNmWcsZ0Hj/2', 'Staf', NULL, 'a78e10b8-9410-4fc1-a562-42a5eb1d5637', '2023-09-27 10:57:01', '2023-09-27 10:57:36', NULL),
('0f9a7c57-578e-487d-814b-4b077cbb30f6', 'Muhammad Fikri Afriansyah', 'siswademo2@gmail.com', '$2y$10$Dz5BGovo.bu0MdI3q1tedO0Db6n5ZXdBx4p89B293t6UmQNRsthVi', 'Siswa', 'b8fe38f9-d65e-47be-8d7e-d6927f1122c4', NULL, '2023-09-27 10:37:40', '2023-09-27 10:43:18', NULL),
('129f8e24-40d5-4dfc-9183-958c9cc21aba', 'Cikal Zul Karnain', 'siswademo5@gmail.com', '$2y$10$mxLy66tMs.cy.aIVDPHW2.TrQWyKrLwb6pbuS7PNekahuMDEOfJwe', 'Siswa', '8f5e9ddb-3564-422b-895e-0caa5e958c91', NULL, '2023-09-27 10:44:38', '2023-09-27 10:44:38', NULL),
('1b25bafb-1413-4229-bd9f-3e515569a6d2', 'Cindy Nurcahniaty', 'siswademo1@gmail', '$2y$10$Q3nzaNtJNxXLMY8SP09AKerg9aJG6qSYneQXmcPsHJNOUbMzYA5bG', 'Siswa', '7903ce7d-acfa-4de1-a7e0-39c9ae8d4b69', NULL, '2023-09-27 10:37:04', '2023-10-19 08:15:20', NULL),
('1dd42494-cc7a-448a-b3c5-fb58c6fea146', 'Rico Haryanto', NULL, '$2y$10$5ioZv1jWAzJLM4I00U9Ns.UlPqDEgVbokZcuzaX8WQRvROBNVbwLq', 'Siswa', '9eee185f-ab90-45e8-af60-367b861bde34', NULL, '2023-08-25 09:12:25', '2023-08-25 09:12:25', NULL),
('1e1d2691-89a4-4d77-8de0-7442ffb80771', 'Sarah', 'siswademo3@gmail.com', '$2y$10$JzXAkNmSnkAxfO77YDbX/OYnqAGWF27eWibbw2SEx030V3ViUae0K', 'Siswa', '40aeb086-b457-41ac-8c83-28122e039e93', NULL, '2023-09-27 10:38:07', '2023-09-27 10:38:07', NULL),
('25678e18-ed25-48c6-8a9d-b1ed92bef7a6', 'Sarip Hidayatulloh', 'siswademo13@gmail.com', '$2y$10$7iGWqTepuNn3aq9aC62YqOwwyE3dnvvswup7Cqyqg4Da/t0.m87Mq', 'Siswa', 'd0ca5817-b7e0-48e3-9c32-8dfdd668ddd0', NULL, '2023-09-27 10:47:52', '2023-09-27 10:47:52', NULL),
('26a6791c-f10d-4297-8d78-24c182db243c', 'Sherly Lestiani', 'siswademo15@gmail.com', '$2y$10$V.iU7fXJFFXK3OONpJ3MV.akWRBkH9LiehLUEvhcfu7Wk.SQ3CvGy', 'Siswa', '823255e3-fb1e-4d7b-9c28-fd67a030259a', NULL, '2023-09-27 10:48:41', '2023-09-27 10:48:41', NULL),
('28d958c6-5032-452a-8b4e-43246da222d7', 'Octavia Indrianti', 'siswademo27@gmail.com', '$2y$10$wcWhiXpVG7GneDZqDxumLu0alrBLHPxAaOvATBMMfcKlclVmIA80m', 'Siswa', '6173c743-4713-4f86-81ec-40c92a2ad6f6', NULL, '2023-09-27 10:53:39', '2023-09-27 10:53:39', NULL),
('297f7f1d-abab-46b8-8c81-489ea3828d29', 'Muhamad Aripin', 'siswademo25@gmail.com', '$2y$10$/mq.l5b4l4p1wZWBt2jJG.5uKR/38eiTmjdnyEzBSuLpvcUoKAOly', 'Siswa', '070a4cb4-3cd9-4f51-a95e-f1862f8998cc', NULL, '2023-09-27 10:52:50', '2023-12-05 06:50:56', NULL),
('2d123820-40c9-4274-85e3-4f67ec850347', 'Rama Agus Razabi', 'siswademo11@gmail.com', '$2y$10$6tz6Nc5hsnbJkLDATcS7RO2834iz9vHj/8kjeccCVAapPMEPnUqie', 'Siswa', '3c1c2a0d-f444-4ce8-941e-9f7f723375dd', NULL, '2023-08-30 11:03:24', '2023-09-27 10:46:57', NULL),
('33afb874-98cf-4d34-bb03-d444d0fde99b', 'Nugi Oliansyah', 'siswademo10@gmail.com', '$2y$10$kT.ujPBFyZnjPYUWTGgdzOmrLKHEYGCSbYaJE.D.MiLs.WORgZpTu', 'Siswa', 'd5b5ac88-f3c6-4426-871e-366c446104ad', NULL, '2023-09-27 10:46:35', '2023-10-06 10:24:41', NULL),
('406cdad7-6fe8-4663-a36d-b3713ea37735', 'Adrian', 'siswademo4@gmail.com', '$2y$10$f.SUPpqTCzIGFNi1DYOxBuW/DzDGLP644Im3JelXtDFKHCItASN3S', 'Siswa', '69f19a54-3447-4673-92e5-15c91491d41d', NULL, '2023-08-30 11:04:47', '2023-09-27 10:43:58', NULL),
('441c5712-b51e-459f-9b13-4f58a95f4c75', 'Kepala Yayasan', 'yayasan@gmail.com', '$2y$10$BX2JxsZ7uRdSHWkf0cetbOrli5K4ckzrVHk6VuvpqqINHfBwtrasi', 'Yayasan', NULL, NULL, '2023-07-21 06:18:26', '2023-07-21 06:18:26', NULL),
('481f3978-3978-43a7-ba31-82515b28f7a1', 'Muhamad Fahmi', 'mhahh2@gmail.com', '$2y$10$abSlGsAK0pUNRgPkLaeC1uGrG4P.AAGcC2.vN9dRmknEqak14lbxO', 'Siswa', '17e8794f-69c1-44fe-91a4-91b739515fca', NULL, '2023-09-18 09:41:48', '2023-09-18 09:41:48', NULL),
('4e9b4971-0f85-42be-bb76-6c642bcc0de9', 'Nia Unia', NULL, '$2y$10$F2vDZHRAx7TIMUgLhg3k7uVWtqbPUR/Z0ZNMPcRvC3oQodX3Oxuwi', 'Siswa', 'adf1ad20-60fa-4efd-bb15-aa0008a3bc1d', NULL, '2023-08-30 11:02:31', '2023-08-30 11:02:31', NULL),
('4fe9f053-445b-4010-af02-810ff7117604', 'Junaidi Ragil Dewa Pratama', NULL, '$2y$10$itaSC8n08VYgqhsZp0KabOcM6.iZuRTSBUKgBzU13Hl0wnMh/alAK', 'Siswa', 'c4b6f54b-9ee6-4272-a3e1-5dabd75a0bf5', NULL, '2023-08-30 11:06:17', '2023-08-30 11:06:17', NULL),
('55b9ad9b-064a-46a1-a931-46a6f9232d3d', 'Agus Muhammad Dalfa', 'siswademo04@gmail.com', '$2y$10$zbR7qgxX7n..gOlZXvA.GejEVD.4kxS///qxPdVnwb2e5hhXKD85C', 'Siswa', '24b527cd-c782-478c-9505-747396b093e6', NULL, '2023-08-30 11:08:24', '2023-09-27 10:44:26', NULL),
('644fc62f-54e8-4e76-a723-d55cb59725e1', 'SOLEHUDIN', NULL, '$2y$10$f6cORYpkmbN64gV4/5BUx.FH8SlFHFAo2595a50Tvx7GP1gjOocWi', 'Siswa', NULL, NULL, '2023-08-23 02:57:50', '2023-08-23 02:57:50', NULL),
('6649b2ec-1615-4384-b88a-829f23e24282', 'NAYLA ADELIA PUTRI', NULL, '$2y$10$AXEq1N6G86QdJqjFRsoWAODMwt1HoxzdRcCwcgRK8SwY56W9bxQNa', 'Siswa', NULL, NULL, '2023-08-22 08:04:56', '2023-08-22 08:04:56', NULL),
('6a2d81cf-57ad-42c2-afba-8576d720a9fd', 'Muhammad Yoga Pratama', 'siswademo12@gmail.com', '$2y$10$uVkapkTMPOJ68Z4A8XdIHer9WU9m.WnrGzn67kCr/qpf0zULa/u3K', 'Siswa', 'a9d2e841-6482-4dc8-976d-f97d2b69730d', NULL, '2023-09-27 10:47:21', '2023-10-06 10:25:45', NULL),
('6cafe31f-84c8-41b4-9167-42ae9112051d', 'Muhidin', 'siswademo9@gmail.com', '$2y$10$9RAxGTEiYWNQjYONHNyHku5bQPpFwbErBexksn3D4PUqGyLOcaA7y', 'Siswa', '46848784-ed38-4bf1-b0a1-97b0702f6aa6', NULL, '2023-09-27 10:46:15', '2023-09-27 10:46:15', NULL),
('6ccc2412-1b18-4e6f-bebe-94c7574daa5c', 'Aditya Sauqi Sabililah', 'siswademo20@gmail.com', '$2y$10$MjT1Yl0UjyObuy6lRIHmZuvHtOvQrMS757Fqqmnho0k5KhQTwfi5W', 'Siswa', '257fda09-2263-49fb-b52d-eef00f1463ba', NULL, '2023-09-27 10:50:33', '2023-09-27 10:50:33', NULL),
('6f5006d7-63f5-4e7f-a59d-c0cc9c075686', 'test', NULL, '$2y$10$1uRsW5FNykXgy5ZMMOQV8u7bWnJpYGmZfAriEX9Ze1dq9TB5AUtf6', 'Siswa', NULL, NULL, '2023-08-23 03:25:49', '2023-08-23 03:25:49', NULL),
('70e502fa-12fe-4c65-9089-0333d5b69393', 'AGUS NAZMUDIN, S.Pd', 'guru1@gmail.com', '$2y$10$npqsb5EqVmr9o3eEfz2CYeEUVB8DQmYdoSGFbxc/tNiwHLJ41jg.C', 'Staf', NULL, 'af006134-5c9c-4ba7-9c9b-d3a5938d4ff5', '2023-09-27 10:55:42', '2023-09-27 10:55:42', NULL),
('7204225b-c651-42b4-94b0-2393b618388b', 'Bunga Harvesta', NULL, '$2y$10$3YjpqOPLkQgp8l/A8qGZNuMxmKL61VwJo3KvmSLq36N/JIYxSzfeG', 'Siswa', 'bc8a6467-e99a-4738-88ef-8d31c92ed114', NULL, '2023-09-04 10:13:01', '2023-09-04 10:13:01', NULL),
('72ce6731-4460-4250-abc9-b09c3edae7ab', 'Siti Romadonnia', 'siswademo16@gmail.com', '$2y$10$iHr9pGQvWDlculZHRpeSKevf4JJOrd/ruIHrqupA8WJW1KHjFbMxW', 'Siswa', 'd6a9ab21-0230-4624-ab6d-705ce0c09d8f', NULL, '2023-09-27 10:49:01', '2023-10-06 10:26:19', NULL),
('75133634-0814-4d4f-bc96-71e610bb6842', 'Alwan Nesta', 'siswademo1@gmail.com', '$2y$10$9eCOWXmncdhLCUIySWAb2OMDfunXL/..Ku3lmKcUCjNzzfKWIMZ8O', 'Siswa', '01bc0a1a-3186-41de-a104-658e96d79a28', NULL, '2023-09-26 11:10:21', '2023-12-04 09:59:52', NULL),
('79d20824-524f-4e80-bf48-c30f7f910ed1', 'AROBI', 'tusmk@gmail.com', '$2y$10$v3s3.ybCUda.7BnfeDqIyeA6BRcvOZG5Fx8mxPWVNKmjZfdNgXSyS', 'TU', NULL, 'e2699071-3470-4905-a1e6-3673a265b314', '2023-09-15 08:29:50', '2023-09-27 10:57:44', NULL),
('7cf5921c-d98e-476a-ab46-9ba589e2f267', 'Nenden', NULL, '$2y$10$6nPRyxzuu9mcex7d4e1vNuYmVyiQbkhwb.2FyABfxUDFeGU5vcAC6', 'Siswa', 'a980a84f-14fa-4176-9657-211e9223e169', NULL, '2023-08-28 09:31:27', '2023-08-28 09:31:27', NULL),
('7db19f23-58a0-4307-90fc-170419abc83e', 'Muhamad Yusuf', 'siswademo18@gmail.com', '$2y$10$pSWfb/GHB8RoCILNrKgspeMLcqXPraVf7UVFHszdUb/tqec4QknzG', 'Siswa', 'a1240add-fdb7-4a69-b80d-396c75f456ad', NULL, '2023-09-27 10:49:48', '2024-01-03 06:23:33', NULL),
('7f718290-cb47-4b8e-ad1b-c7f3619449ed', 'Anggi Herawati', 'guru2@gmail.com', '$2y$10$squa5rdXXl62GAmwaNSWW.7QDnpguix3QgKi/HODoa8.WiTNHGzUy', 'Staf', NULL, 'c531dc3f-d5e9-4e38-9770-a7cb5cd8954d', '2023-09-27 10:56:14', '2023-09-27 10:56:14', NULL),
('8535eba1-af85-4728-804a-c612e12133f1', 'Muhamad Ilham', 'siswademo6@gmail.com', '$2y$10$YU37veRiFIY.N99LfdyWMexPCJQIIVD81M2V2Le8OTqo9QcYDAPEC', 'Siswa', 'e3edecd7-7cd8-4d9f-b8d0-42869e496460', NULL, '2023-09-27 10:45:06', '2023-09-27 10:45:06', NULL),
('8554b391-c5d1-4ee3-b2c4-deb443a9c243', 'HELMI INDRA BUDIMAN, S.Pd', 'kepalasmk@gmail.com', '$2y$10$/EugR.vQ339rDdGoCkfkae2rgH3u8o8MOQgg72VHc/G/j8H7rW3kq', 'KepalaSekolah', NULL, 'a37920d3-59d1-4523-8177-e42ad0dd5d3e', '2023-09-15 08:29:16', '2023-10-10 13:42:25', NULL),
('86f49516-feeb-47a8-848c-57f10c1c13ac', 'DENI HERMAWAN', NULL, '$2y$10$Pu863e17bJ4lx6zcnmJGGe76c/2Zx5mJDy0bJjkQzuyB7SMWBWtA2', 'Siswa', NULL, NULL, '2023-08-23 02:57:28', '2023-08-23 02:57:28', NULL),
('88d38ce7-396c-4669-aa43-74ab0f5cdb4e', 'Septiyani Saputri', 'siswademo14@gmail.com', '$2y$10$kL4V.ibNYPiVTCxcy3L7HO8peDjFV37WFkUWDuL6unSWrkx2/Su/i', 'Siswa', 'eaf663db-d2c8-403e-97d3-b30995b0cdf0', NULL, '2023-09-27 10:48:15', '2023-09-27 10:48:15', NULL),
('a1643742-81f6-4185-ae19-711beff0b060', 'Muhamad Andri Ali Sandi', 'siswademo23@gmail.com', '$2y$10$10x9Sdyuo8CjzBwNiIJgEOpcAkFC4WX5jIP5wHtOBtjRbhrwn1xci', 'Siswa', 'ce81315d-3bc4-454f-b141-3612f784b629', NULL, '2023-08-25 08:22:51', '2023-09-27 10:51:53', NULL),
('ac5e26c3-29c6-4643-b1fe-005adb64840f', 'R. HERMAN YUDHARTO, BA', 'guru6@gmail.com', '$2y$10$3hsIeRhpzk4fUVZt4SjuNun9jMXYmeA3csZ1pimOiAzsgxDJ3Xaue', 'Staf', NULL, '79f851f5-883f-4ecd-90f7-056ce7a814c7', '2023-09-27 10:58:53', '2023-09-27 10:58:53', NULL),
('b167551b-bc25-47e1-8dba-cca96e287559', 'Kepala Sekolah', 'kepala@gmail.com', '$2y$10$dLI2l3KoPg8Ln2SRQtXsRuyh34hQ0Nd9Oxf523TkoW2tP6tmayC2u', 'KepalaSekolah', NULL, NULL, '2023-07-21 06:18:26', '2023-07-21 06:18:26', NULL),
('b1f1b149-9336-4da1-ac52-0479ee26bfb3', 'Muhamad Riski', 'siswademo7@gmail.com', '$2y$10$wULNxL/To/US354a1Xl4neCRmH7NGTNBV1yBvZdaoOlQtM2ovCSni', 'Siswa', '3050fc36-de18-4f52-98d0-5f4a8a5338bf', NULL, '2023-08-30 11:10:29', '2023-09-27 10:45:27', NULL),
('b5989608-8afa-4f32-a97a-1181bcaf11b1', 'Muhamad Badri Tamami', 'siswademo26@gmail.com', '$2y$10$3sxDPSrnzYGpIvZI044fqOlzU90xH2Xh.DJtV6U7Ff617g5zbgxoO', 'Siswa', '162a0e2e-e43e-4768-aa37-cc595337ccc9', NULL, '2023-09-27 10:53:15', '2023-12-05 06:51:17', NULL),
('bdb648d8-5403-4859-9154-58159f225c2f', 'M Rifaldo', NULL, '$2y$10$WmEoUiryiAqU/ouOYEerw.dGPtgS.6dWGXsZBdWjULxYbO77d8PFm', 'Siswa', 'e3cca2e1-eeec-44ac-a4df-d1464b80e924', NULL, '2023-09-11 11:59:56', '2023-09-11 11:59:56', NULL),
('be37fcf1-7f7d-4b19-941b-da4d223b0c63', 'FIRDA HERMINIA FUTRIYANTI, SE', 'bendaharasmk@gmail.com', '$2y$10$P9A6NhZLfF8lDCkG3mH65ekvVVRGbMYY1aSO20r3K7WhWadQWygpq', 'Bendahara', NULL, '78a1945d-9274-411d-8e48-53c0f987b255', '2023-09-15 08:30:24', '2023-09-27 10:57:56', NULL),
('c0ca4e4d-f67a-453c-b9aa-44fa324218ae', 'ANGGI MILENIA PRATAMA BADRUDIN, S.Pd', 'guru3@gmail.com', '$2y$10$2fHIjzFgjhHtbuMPpasZsuAlYaWv.50NqYNn1XN4JuRNBbgqy1CZ.', 'Staf', NULL, '6034067f-8a89-4cc4-b219-2e6de206275d', '2023-09-27 10:56:30', '2023-09-27 10:57:22', NULL),
('c26f7cec-a463-47bd-ab40-6e141481a5c9', 'Rizki', NULL, '$2y$10$SNtH2esjbEc3cYgVTFKnyuzG1xQY7wbhyo6C3rlBS1IgoyMfVy49u', 'Siswa', '5b589d25-5ddd-4db3-807d-e547fd8deeef', NULL, '2023-08-25 08:30:45', '2023-08-25 08:30:45', NULL),
('c6f9e8e5-58b6-4005-9fec-56c455fd84de', 'Merina', 'siswademo17@gmail.com', '$2y$10$ZM5C3NQ1zlWEWR9SXispLu10sAsoqVaolEaD853veFjVUEyt7k2RK', 'Siswa', '88c47483-a63f-4afc-8929-17738d45ae1b', NULL, '2023-09-27 10:49:24', '2023-09-27 10:49:24', NULL),
('c9a1e383-fbb3-4e85-b11c-5a31366b765c', 'Dirga', NULL, '$2y$10$E8bmY/a7PsVRXujY4Xj61.mJUJZ10ysr161l.Hn0D1pp0JRpqci1O', 'Siswa', '1402695f-99d9-403e-ae5c-25381d6b8b83', NULL, '2023-08-30 10:57:21', '2023-08-30 10:57:21', NULL),
('cc8da4c1-ab28-472c-9704-e0a2ebbc2c33', 'Muhamad. Rizki', NULL, '$2y$10$BKJlANHNBo8jPwTHYXRifuARHA5a8cavXkloTzPf/iLawX69CsEqe', 'Siswa', '19940700-37c0-446c-a621-724071070ee3', NULL, '2023-08-30 11:00:30', '2023-08-30 11:00:30', NULL),
('d9eb53c8-01b0-4bd7-9e9b-d26374e3e8bc', 'Muhamad Fahmi', NULL, '$2y$10$Nr8fMs5YiRhgZuALe/PUVufkbqoM.yhxs8.Z4v7EPukOx6FVCwHVm', 'Siswa', '17e8794f-69c1-44fe-91a4-91b739515fca', NULL, '2023-09-18 09:40:58', '2023-09-18 09:40:58', NULL),
('deade576-9dae-4058-bfd3-8a0a0b887e03', 'Staf', 'staf@gmail.com', '$2y$10$Q0gbaC1ffI/u/BQxEJbzMu6u9.1NALDLbxv5cV5FujjAV57devlkS', 'Staf', NULL, NULL, '2023-07-21 06:18:26', '2023-07-21 06:18:26', NULL),
('e43d664f-d0a2-4ea3-b280-513cca359b4d', 'Fajar Feri', NULL, '$2y$10$OgcrFssD7N2G26bk61xrVeuc2rqmT..7Z6O9JLnRQ9yJbb.REi84W', 'Siswa', '08ebf28b-ef72-40f5-aedb-f74ff09d6696', NULL, '2023-08-28 09:30:47', '2023-08-28 09:30:47', NULL),
('e4fb949b-c343-412f-87d0-8737700330c1', 'TITIB, S.Pd', 'guru7@gmail.com', '$2y$10$kTPSy64yHYsoBHxkK3hGPeMU9dGrIg4nR/E3Vi0UzEONoIbucBHVS', 'Staf', NULL, 'f856b450-8fe5-4411-8066-c33c0525995b', '2023-09-27 10:59:11', '2023-09-27 10:59:11', NULL),
('ec964efe-064d-44b1-b3d9-493ea1bf4e59', 'OMAY KOMARUDIN', 'guru5@gmail.com', '$2y$10$.EUSKU5Napng/zRW.yFVt.vtuQqVzAoNc6LLVFMuCcUhBJURrM4WS', 'Staf', NULL, '82db9931-3764-414f-bcfc-cb3e2395b7e4', '2023-09-27 10:58:36', '2023-09-27 10:58:36', NULL),
('f071fe59-74b8-48c0-8073-066fb341c450', 'Muhamad Hamdani', NULL, '$2y$10$5a5NVOqbNE9OAz7cxgHyf.GX5PZG5ac1SST5dXBUY.CMAwvwnGEwO', 'Siswa', '28d33af8-63c2-41b2-affa-874440792f20', NULL, '2023-09-04 10:13:26', '2023-09-04 10:13:26', NULL),
('f4c8763d-be3d-4117-ae48-7acb686f5f4f', 'Ariyanto', 'siswademo22@gmail.com', '$2y$10$blIAENUipnXb3WqwRKMlvehiatP92j8gimNgn8tjt/Vd8n8QxGtaW', 'Siswa', 'bb59d1f9-2592-4130-a2c6-0aeb75ff493e', NULL, '2023-09-27 10:51:29', '2023-09-27 10:51:29', NULL),
('f54ac1ad-0fd0-4e44-a9f9-b5b8c01a0f79', 'Muhammad Saidil Adha', 'siswademo8@gmail.com', '$2y$10$0xK2LX/SERMg6Lm/eLRayuGKdr5icZpDRJhSrZpR5iqHmkxvzz.EK', 'Siswa', '546089ce-da52-4375-abde-549aa1455292', NULL, '2023-09-04 13:13:27', '2023-09-27 10:45:53', NULL),
('fdc3cdde-5b16-4b16-b73a-9511d997a4f6', 'Usman', 'usman11ot@gmail.com', '$2y$10$xygiJDAChBwUcK/.LoMRq.Cn0bgC/QrhvahBu6mtuXDz/aDF4uy..', 'Siswa', 'b4f22018-4626-4846-b284-d46c525244b8', NULL, '2023-09-12 11:51:30', '2023-09-26 11:12:26', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absensi_siswa_id_foreign` (`siswa_id`),
  ADD KEY `absensi_jadwal_id_foreign` (`jadwal_id`);

--
-- Indeks untuk tabel `absen_pegawais`
--
ALTER TABLE `absen_pegawais`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `absen_siswas`
--
ALTER TABLE `absen_siswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `absen_siswas_user_id_foreign` (`user_id`),
  ADD KEY `absen_siswas_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `baranginventories`
--
ALTER TABLE `baranginventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `baranginventories_nomor_inventaris_unique` (`nomor_inventaris`);

--
-- Indeks untuk tabel `bayars`
--
ALTER TABLE `bayars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_publisher_id_foreign` (`publisher_id`),
  ADD KEY `books_author_id_foreign` (`author_id`),
  ADD KEY `books_catalog_id_foreign` (`catalog_id`);

--
-- Indeks untuk tabel `cash_books`
--
ALTER TABLE `cash_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_books_registration_cost_id_foreign` (`registration_cost_id`),
  ADD KEY `cash_books_spp_id_foreign` (`spp_id`);

--
-- Indeks untuk tabel `cash_yayasans`
--
ALTER TABLE `cash_yayasans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_yayasans_pemasukan_id_foreign` (`pemasukan_id`),
  ADD KEY `cash_yayasans_setoran_id_foreign` (`setoran_id`),
  ADD KEY `cash_yayasans_pengajuan_id_foreign` (`pengajuan_id`),
  ADD KEY `cash_yayasans_spp_id_foreign` (`spp_id`);

--
-- Indeks untuk tabel `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cost1s`
--
ALTER TABLE `cost1s`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cost2s`
--
ALTER TABLE `cost2s`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cost3s`
--
ALTER TABLE `cost3s`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `costs`
--
ALTER TABLE `costs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `donaturs`
--
ALTER TABLE `donaturs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ebooks`
--
ALTER TABLE `ebooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ebooks_publisher_id_foreign` (`publisher_id`),
  ADD KEY `ebooks_author_id_foreign` (`author_id`),
  ADD KEY `ebooks_catalog_id_foreign` (`catalog_id`);

--
-- Indeks untuk tabel `exschools`
--
ALTER TABLE `exschools`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gambars`
--
ALTER TABLE `gambars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inventorys`
--
ALTER TABLE `inventorys`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `in_mails`
--
ALTER TABLE `in_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `izins`
--
ALTER TABLE `izins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `izins_user_id_foreign` (`user_id`),
  ADD KEY `izins_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `izin_pegawais`
--
ALTER TABLE `izin_pegawais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `izin_pegawais_user_id_foreign` (`user_id`),
  ADD KEY `izin_pegawais_pegawai_id_foreign` (`pegawai_id`);

--
-- Indeks untuk tabel `izin_siswas`
--
ALTER TABLE `izin_siswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `izins_user_id_foreign` (`user_id`),
  ADD KEY `izins_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `jadwals`
--
ALTER TABLE `jadwals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurnals`
--
ALTER TABLE `jurnals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kas_bopdas`
--
ALTER TABLE `kas_bopdas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kas_boss`
--
ALTER TABLE `kas_boss`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kas_bpmus`
--
ALTER TABLE `kas_bpmus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kas_donaturs`
--
ALTER TABLE `kas_donaturs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kas_honors`
--
ALTER TABLE `kas_honors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kas_honors_bos_id_foreign` (`bos_id`),
  ADD KEY `kas_honors_setoran_id_foreign` (`setoran_id`);

--
-- Indeks untuk tabel `kas_oprationals`
--
ALTER TABLE `kas_oprationals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kas_oprationals_bos_id_foreign` (`bos_id`),
  ADD KEY `kas_oprationals_setoran_id_foreign` (`setoran_id`),
  ADD KEY `kas_oprationals_pengajuan_id_foreign` (`pengajuan_id`);

--
-- Indeks untuk tabel `kas_pips`
--
ALTER TABLE `kas_pips`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kas_saprass`
--
ALTER TABLE `kas_saprass`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kas_sapras_bos_id_foreign` (`bos_id`);

--
-- Indeks untuk tabel `kas_spps`
--
ALTER TABLE `kas_spps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kas_spps_setoran_id_foreign` (`setoran_id`),
  ADD KEY `kas_spps_spp_id_foreign` (`spp_id`);

--
-- Indeks untuk tabel `kas_sumbangans`
--
ALTER TABLE `kas_sumbangans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kas_sumbangans_pemasukan_id_foreign` (`pemasukan_id`),
  ADD KEY `kas_sumbangans_setoran_id_foreign` (`setoran_id`);

--
-- Indeks untuk tabel `kas_umkms`
--
ALTER TABLE `kas_umkms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `katalogs`
--
ALTER TABLE `katalogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoriinventories`
--
ALTER TABLE `kategoriinventories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelass`
--
ALTER TABLE `kelass`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `konselings`
--
ALTER TABLE `konselings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporan_keuangans`
--
ALTER TABLE `laporan_keuangans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_activities_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `mapels`
--
ALTER TABLE `mapels`
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
-- Indeks untuk tabel `organisasis`
--
ALTER TABLE `organisasis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `out_mails`
--
ALTER TABLE `out_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemasukans`
--
ALTER TABLE `pemasukans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemasukans_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `penerbits`
--
ALTER TABLE `penerbits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengajuans`
--
ALTER TABLE `pengajuans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengarangs`
--
ALTER TABLE `pengarangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengeluarans`
--
ALTER TABLE `pengeluarans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prestasis`
--
ALTER TABLE `prestasis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `registration_costs`
--
ALTER TABLE `registration_costs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_costs_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswas_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `sop_pegawais`
--
ALTER TABLE `sop_pegawais`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sop_siswas`
--
ALTER TABLE `sop_siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `spps`
--
ALTER TABLE `spps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spps_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_siswa_id_foreign` (`siswa_id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_book_id_foreign` (`book_id`);

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
-- AUTO_INCREMENT untuk tabel `baranginventories`
--
ALTER TABLE `baranginventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gambars`
--
ALTER TABLE `gambars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kategoriinventories`
--
ALTER TABLE `kategoriinventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_catalog_id_foreign` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`),
  ADD CONSTRAINT `books_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`);

--
-- Ketidakleluasaan untuk tabel `cash_books`
--
ALTER TABLE `cash_books`
  ADD CONSTRAINT `cash_books_registration_cost_id_foreign` FOREIGN KEY (`registration_cost_id`) REFERENCES `registration_costs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cash_books_spp_id_foreign` FOREIGN KEY (`spp_id`) REFERENCES `spps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cash_yayasans`
--
ALTER TABLE `cash_yayasans`
  ADD CONSTRAINT `cash_yayasans_pemasukan_id_foreign` FOREIGN KEY (`pemasukan_id`) REFERENCES `pemasukans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cash_yayasans_pengajuan_id_foreign` FOREIGN KEY (`pengajuan_id`) REFERENCES `pengajuans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cash_yayasans_setoran_id_foreign` FOREIGN KEY (`setoran_id`) REFERENCES `pengeluarans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cash_yayasans_spp_id_foreign` FOREIGN KEY (`spp_id`) REFERENCES `spps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ebooks`
--
ALTER TABLE `ebooks`
  ADD CONSTRAINT `ebooks_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `ebooks_catalog_id_foreign` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`),
  ADD CONSTRAINT `ebooks_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`);

--
-- Ketidakleluasaan untuk tabel `izins`
--
ALTER TABLE `izins`
  ADD CONSTRAINT `izins_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `izins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kas_honors`
--
ALTER TABLE `kas_honors`
  ADD CONSTRAINT `kas_honors_bos_id_foreign` FOREIGN KEY (`bos_id`) REFERENCES `kas_boss` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kas_honors_setoran_id_foreign` FOREIGN KEY (`setoran_id`) REFERENCES `pengeluarans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kas_oprationals`
--
ALTER TABLE `kas_oprationals`
  ADD CONSTRAINT `kas_oprationals_bos_id_foreign` FOREIGN KEY (`bos_id`) REFERENCES `kas_boss` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kas_oprationals_pengajuan_id_foreign` FOREIGN KEY (`pengajuan_id`) REFERENCES `pengajuans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kas_oprationals_setoran_id_foreign` FOREIGN KEY (`setoran_id`) REFERENCES `pengeluarans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kas_saprass`
--
ALTER TABLE `kas_saprass`
  ADD CONSTRAINT `kas_sapras_bos_id_foreign` FOREIGN KEY (`bos_id`) REFERENCES `kas_boss` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kas_spps`
--
ALTER TABLE `kas_spps`
  ADD CONSTRAINT `kas_spps_setoran_id_foreign` FOREIGN KEY (`setoran_id`) REFERENCES `pengeluarans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kas_spps_spp_id_foreign` FOREIGN KEY (`spp_id`) REFERENCES `spps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kas_sumbangans`
--
ALTER TABLE `kas_sumbangans`
  ADD CONSTRAINT `kas_sumbangans_pemasukan_id_foreign` FOREIGN KEY (`pemasukan_id`) REFERENCES `pemasukans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kas_sumbangans_setoran_id_foreign` FOREIGN KEY (`setoran_id`) REFERENCES `pengeluarans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `log_activities`
--
ALTER TABLE `log_activities`
  ADD CONSTRAINT `log_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemasukans`
--
ALTER TABLE `pemasukans`
  ADD CONSTRAINT `pemasukans_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `registration_costs`
--
ALTER TABLE `registration_costs`
  ADD CONSTRAINT `registration_costs_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswas`
--
ALTER TABLE `siswas`
  ADD CONSTRAINT `siswas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `spps`
--
ALTER TABLE `spps`
  ADD CONSTRAINT `spps_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
