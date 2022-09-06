-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Sep 2022 pada 06.27
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renaldi_project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_materials`
--

CREATE TABLE `data_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `suplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_update` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `d_ss` int(11) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  `Z` int(11) DEFAULT NULL,
  `SS` int(11) DEFAULT NULL,
  `d_rop` int(11) DEFAULT NULL,
  `ROP` int(11) DEFAULT NULL,
  `AU` int(11) DEFAULT NULL,
  `stock_max` int(11) DEFAULT NULL,
  `jumlah_harus_beli` int(11) DEFAULT NULL,
  `status_material` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_materials`
--

INSERT INTO `data_materials` (`id`, `kode`, `nama`, `kategori`, `link_kategori`, `jenis`, `stock`, `harga_beli`, `suplier`, `tanggal_masuk`, `tanggal_update`, `created_at`, `updated_at`, `d_ss`, `L`, `Z`, `SS`, `d_rop`, `ROP`, `AU`, `stock_max`, `jumlah_harus_beli`, `status_material`) VALUES
(6, 'CS-SCP-1', 'Cast Steel SCPH1', 'Cast Steel', 'CS', 'JIS', 14, 250000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 28, NULL),
(7, 'CS-SCR-415', 'Cast Steel SCR415H', 'Cast Steel', 'CS', 'JIS', 42, 200000, 'Rahayu Teknik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 0, NULL),
(8, 'CS-SCR-420', 'Cast Steel SCR420H', 'Cast Steel', 'CS', 'JIS', 13, 300000, 'Rahayu Teknik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 29, NULL),
(9, 'CS-SCR-430', 'Cast Steel SCR430H', 'Cast Steel', 'CS', 'JIS', 42, 150000, 'Rahayu Teknik', '2022-09-06', '0000-00-00', '0000-00-00 00:00:00', '2022-09-05 21:08:52', NULL, 3, NULL, 2, NULL, 8, 2, 42, 0, NULL),
(10, 'CS-SCR-435', 'Cast Steel SCR435H', 'Cast Steel', 'CS', 'JIS', 1, 250000, 'Rahayu Teknik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '2022-09-05 20:20:40', NULL, 3, NULL, 2, NULL, 8, 2, 42, 41, NULL),
(11, 'CS-SCR-440', 'Cast Steel SCR440H', 'Cast Steel', 'CS', 'JIS', 19, 200000, 'Rahayu Teknik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 23, NULL),
(12, 'CS-SCM-415', 'Cast Steel SCM415H', 'Cast Steel', 'CS', 'JIS', 20, 300000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 22, NULL),
(13, 'CS-SCM-418', 'Cast Steel SCM418H', 'Cast Steel', 'CS', 'JIS', 19, 150000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 23, NULL),
(14, 'CS-SCM-419', 'Cast Steel SCM419H', 'Cast Steel', 'CS', 'JIS', 6, 250000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 36, NULL),
(15, 'CS-SCM-420', 'Cast Steel SCM420H', 'Cast Steel', 'CS', 'JIS', 38, 200000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 4, NULL),
(16, 'CS-SCM-435', 'Cast Steel SCM435H', 'Cast Steel', 'CS', 'JIS', 28, 300000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 14, NULL),
(17, 'CS-SCM-440', 'Cast Steel SCM440H', 'Cast Steel', 'CS', 'JIS', 23, 250000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 19, NULL),
(18, 'CS-SCM-445', 'Cast Steel SCM445H', 'Cast Steel', 'CS', 'JIS', 24, 200000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 18, NULL),
(19, 'CS-SCM-822', 'Cast Steel SCM822H', 'Cast Steel', 'CS', 'JIS', 34, 300000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 8, NULL),
(20, 'CS-SCP-5', 'Cast Steel SCPH5', 'Cast Steel', 'CS', 'JIS', 6, 150000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 36, NULL),
(21, 'CS-SCM-480', 'Cast Steel SCM480H', 'Cast Steel', 'CS', 'JIS', 37, 250000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 5, NULL),
(22, 'CS-SCM-490', 'Cast Steel SCM490H', 'Cast Steel', 'CS', 'JIS', 14, 200000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 28, NULL),
(23, 'CS-SCM-465', 'Cast Steel SCM465H', 'Cast Steel', 'CS', 'JIS', 24, 250000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 18, NULL),
(24, 'CS-SCP-2', 'Cast Steel SCPH2', 'Cast Steel', 'CS', 'JIS', 3, 200000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 39, NULL),
(25, 'CS-SCR-450', 'Cast Steel SCR450H', 'Cast Steel', 'CS', 'JIS', 31, 250000, 'Rahayu Teknik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 11, NULL),
(26, 'CS-SCR-465', 'Cast Steel SCR465H', 'Cast Steel', 'CS', 'JIS', 9, 200000, 'Rahayu Teknik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 33, NULL),
(27, 'CS-SUS-42J8', 'Cast Steel SUS420J8', 'Cast Steel', 'CS', 'JIS', 22, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 20, NULL),
(28, 'CS-SUS-438', 'Cast Steel SUS438', 'Cast Steel', 'CS', 'JIS', 35, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 7, NULL),
(29, 'CS-SUS-440B', 'Cast Steel SUS440B', 'Cast Steel', 'CS', 'JIS', 32, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 10, NULL),
(30, 'CS-SUS-440F', 'Cast Steel SUS440F', 'Cast Steel', 'CS', 'JIS', 10, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 32, NULL),
(31, 'CS-SUS-634', 'Cast Steel SUS634', 'Cast Steel', 'CS', 'JIS', 26, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 16, NULL),
(32, 'CBS-SC-15', 'Carbon Steel S15C', 'Carbon Steel', 'CBS', 'JIS', 42, 150000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 0, NULL),
(33, 'CBS-SC-17', 'Carbon Steel S17C', 'Carbon Steel', 'CBS', 'JIS', 33, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 9, NULL),
(34, 'CBS-SC-20', 'Carbon Steel S20C', 'Carbon Steel', 'CBS', 'JIS', 40, 200000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 2, NULL),
(35, 'CBS-SC-22', 'Carbon Steel S22C', 'Carbon Steel', 'CBS', 'JIS', 20, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 22, NULL),
(36, 'CBS-SC-25', 'Carbon Steel S25C', 'Carbon Steel', 'CBS', 'JIS', 35, 200000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 7, NULL),
(37, 'CBS-SC-28', 'Carbon Steel S28C', 'Carbon Steel', 'CBS', 'JIS', 0, 300000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 42, NULL),
(38, 'CBS-SC-30', 'Carbon Steel S30C', 'Carbon Steel', 'CBS', 'JIS', 2, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 40, NULL),
(39, 'CBS-SC-38', 'Carbon Steel S38C', 'Carbon Steel', 'CBS', 'JIS', 25, 200000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 17, NULL),
(40, 'CBS-SC-40', 'Carbon Steel S40C', 'Carbon Steel', 'CBS', 'JIS', 0, 300000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 42, NULL),
(41, 'CBS-SC-43', 'Carbon Steel S43C', 'Carbon Steel', 'CBS', 'JIS', 12, 150000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 30, NULL),
(42, 'CBS-SC-45', 'Carbon Steel S45C', 'Carbon Steel', 'CBS', 'JIS', 4, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 38, NULL),
(43, 'CBS-SC-50', 'Carbon Steel S50C', 'Carbon Steel', 'CBS', 'JIS', 37, 200000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 5, NULL),
(44, 'CBS-SC-53', 'Carbon Steel S53C', 'Carbon Steel', 'CBS', 'JIS', 19, 300000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 23, NULL),
(45, 'CBS-SC-55', 'Carbon Steel S55C', 'Carbon Steel', 'CBS', 'JIS', 3, 150000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 39, NULL),
(46, 'CBS-SC-58', 'Carbon Steel S58C', 'Carbon Steel', 'CBS', 'JIS', 13, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 29, NULL),
(47, 'CBS-SC-35', 'Carbon Steel S35C', 'Carbon Steel', 'CBS', 'JIS', 41, 200000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 1, NULL),
(48, 'CBS-SC-21', 'Carbon Steel S21C', 'Carbon Steel', 'CBS', 'JIS', 22, 300000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 20, NULL),
(49, 'CBS-SC-35', 'Carbon Steel S35C', 'Carbon Steel', 'CBS', 'JIS', 8, 150000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 34, NULL),
(50, 'CBS-SC-78', 'Carbon Steel S78C', 'Carbon Steel', 'CBS', 'JIS', 9, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 33, NULL),
(51, 'CBS-SC-44', 'Carbon Steel S44C', 'Carbon Steel', 'CBS', 'JIS', 27, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 15, NULL),
(52, 'CBS-AIS-1015', 'Carbon Steel AISI1015', 'Carbon Steel', 'CBS', 'AISI', 34, 200000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 8, NULL),
(53, 'CBS-AIS-1017', 'Carbon Steel AISI1017', 'Carbon Steel', 'CBS', 'AISI', 39, 300000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 3, NULL),
(54, 'CBS-AIS-1020', 'Carbon Steel AISI1020', 'Carbon Steel', 'CBS', 'AISI', 8, 150000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 34, NULL),
(55, 'CBS-AIS-1023', 'Carbon Steel AISI1023', 'Carbon Steel', 'CBS', 'AISI', 14, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 1, 42, 28, NULL),
(56, 'CBS-AIS-1025', 'Carbon Steel AISI1025', 'Carbon Steel', 'CBS', 'AISI', 31, 200000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 11, NULL),
(57, 'CBS-AIS-1029', 'Carbon Steel AISI1029', 'Carbon Steel', 'CBS', 'AISI', 4, 300000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 38, NULL),
(58, 'CBS-AIS-1030', 'Carbon Steel AISI1030', 'Carbon Steel', 'CBS', 'AISI', 2, 150000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 40, NULL),
(59, 'CBS-AIS-1038', 'Carbon Steel AISI1038', 'Carbon Steel', 'CBS', 'AISI', 37, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 5, NULL),
(60, 'CBS-AIS-1040', 'Carbon Steel AISI1040', 'Carbon Steel', 'CBS', 'AISI', 3, 200000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 39, NULL),
(61, 'CBS-AIS-1043', 'Carbon Steel AISI1043', 'Carbon Steel', 'CBS', 'AISI', 27, 300000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 15, NULL),
(62, 'CBS-AIS-1045', 'Carbon Steel AISI1045', 'Carbon Steel', 'CBS', 'AISI', 8, 150000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 1, 42, 34, NULL),
(63, 'CBS-AIS-1049', 'Carbon Steel AISI1049', 'Carbon Steel', 'CBS', 'AISI', 30, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 12, NULL),
(64, 'CBS-AIS-1053', 'Carbon Steel AISI1053', 'Carbon Steel', 'CBS', 'AISI', 16, 200000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 26, NULL),
(65, 'CBS-AIS-1055', 'Carbon Steel AISI1055', 'Carbon Steel', 'CBS', 'AISI', 6, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 36, NULL),
(66, 'CBS-AIS-1059', 'Carbon Steel AISI1059', 'Carbon Steel', 'CBS', 'AISI', 11, 200000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 31, NULL),
(67, 'CBS-AIS-1035', 'Carbon Steel AISI1035', 'Carbon Steel', 'CBS', 'AISI', 15, 300000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 27, NULL),
(68, 'CBS-AIS-1010', 'Carbon Steel AISI1010', 'Carbon Steel', 'CBS', 'AISI', 24, 150000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 18, NULL),
(69, 'CBS-AIS-1012', 'Carbon Steel AISI1012', 'Carbon Steel', 'CBS', 'AISI', 38, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 4, NULL),
(70, 'CBS-AIS-1011', 'Carbon Steel AISI1011', 'Carbon Steel', 'CBS', 'AISI', 42, 200000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 0, NULL),
(71, 'CBS-AIS-1014', 'Carbon Steel AISI1014', 'Carbon Steel', 'CBS', 'AISI', 21, 300000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 21, NULL),
(72, 'CBS-AIS-1062', 'Carbon Steel AISI1061', 'Carbon Steel', 'CBS', 'AISI', 23, 150000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 19, NULL),
(73, 'CBS-AIS-1022', 'Carbon Steel AISI1022', 'Carbon Steel', 'CBS', 'AISI', 3, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 39, NULL),
(74, 'CBS-AIS-1026', 'Carbon Steel AISI1026', 'Carbon Steel', 'CBS', 'AISI', 14, 200000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 28, NULL),
(75, 'CBS-AIS-1027', 'Carbon Steel AISI1027', 'Carbon Steel', 'CBS', 'AISI', 38, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 4, NULL),
(76, 'CBS-AIS-1032', 'Carbon Steel AISI1032', 'Carbon Steel', 'CBS', 'AISI', 25, 200000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 1, 42, 17, NULL),
(77, 'SS-SUS-201', 'Stainless Steel SUS201', 'Stainless Steel', 'SS', 'JIS', 6, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 36, NULL),
(78, 'SS-SUS-301', 'Stainless Steel SUS301', 'Stainless Steel', 'SS', 'JIS', 13, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 29, NULL),
(79, 'SS-SUS-302', 'Stainless Steel SUS302', 'Stainless Steel', 'SS', 'JIS', 11, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 31, NULL),
(80, 'SS-SUS-303', 'Stainless Steel SUS303SE', 'Stainless Steel', 'SS', 'JIS', 23, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 19, NULL),
(81, 'SS-SUS-304', 'Stainless Steel SUS304L', 'Stainless Steel', 'SS', 'JIS', 37, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 5, NULL),
(82, 'SS-SUS-304L', 'Stainless Steel SUS304LN', 'Stainless Steel', 'SS', 'JIS', 24, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 18, NULL),
(83, 'SS-SUS-305', 'Stainless Steel SUS305', 'Stainless Steel', 'SS', 'JIS', 23, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 19, NULL),
(84, 'SS-SUS-310', 'Stainless Steel SUS310S', 'Stainless Steel', 'SS', 'JIS', 4, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 38, NULL),
(85, 'SS-SUS-316L', 'Stainless Steel SUS316L', 'Stainless Steel', 'SS', 'JIS', 39, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 3, NULL),
(86, 'SS-SUS-316N', 'Stainless Steel SUS316N', 'Stainless Steel', 'SS', 'JIS', 5, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 37, NULL),
(87, 'SS-SUS-316', 'Stainless Steel SUS316LN', 'Stainless Steel', 'SS', 'JIS', 2, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 40, NULL),
(88, 'SS-SUS-317', 'Stainless Steel SUS317', 'Stainless Steel', 'SS', 'JIS', 35, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 7, NULL),
(89, 'SS-SUS-317L', 'Stainless Steel SUS317L', 'Stainless Steel', 'SS', 'JIS', 9, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 33, NULL),
(90, 'SS-SUS-890', 'Stainless Steel SUS890L', 'Stainless Steel', 'SS', 'JIS', 39, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 3, NULL),
(91, 'SS-SUS-321', 'Stainless Steel SUS321', 'Stainless Steel', 'SS', 'JIS', 37, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 5, NULL),
(92, 'SS-SUS-347', 'Stainless Steel SUS347', 'Stainless Steel', 'SS', 'JIS', 32, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 10, NULL),
(93, 'SS-SUS-384', 'Stainless Steel SUS384', 'Stainless Steel', 'SS', 'JIS', 20, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 22, NULL),
(94, 'SS-SUS-XM', 'Stainless Steel SUSXM7', 'Stainless Steel', 'SS', 'JIS', 1, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 41, NULL),
(95, 'SS-SUS-32J1', 'Stainless Steel SUS329J1', 'Stainless Steel', 'SS', 'JIS', 32, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 10, NULL),
(96, 'SS-SUS-32J3', 'Stainless Steel SUS329J3L', 'Stainless Steel', 'SS', 'JIS', 3, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 39, NULL),
(97, 'SS-SUS-32J4', 'Stainless Steel SUS329J4L', 'Stainless Steel', 'SS', 'JIS', 26, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 16, NULL),
(98, 'SS-SUS-405', 'Stainless Steel SUS405', 'Stainless Steel', 'SS', 'JIS', 25, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 17, NULL),
(99, 'SS-SUS-429', 'Stainless Steel SUS429', 'Stainless Steel', 'SS', 'JIS', 38, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 4, NULL),
(100, 'SS-SUS-430', 'Stainless Steel SUS430', 'Stainless Steel', 'SS', 'JIS', 2, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 40, NULL),
(101, 'SS-SUS-430F', 'Stainless Steel SUS430F', 'Stainless Steel', 'SS', 'JIS', 27, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 15, NULL),
(102, 'SS-SUS-434', 'Stainless Steel SUS434', 'Stainless Steel', 'SS', 'JIS', 23, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 19, NULL),
(103, 'SS-SUS-436', 'Stainless Steel SUS436L', 'Stainless Steel', 'SS', 'JIS', 15, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 27, NULL),
(104, 'SS-SUS-444', 'Stainless Steel SUS444', 'Stainless Steel', 'SS', 'JIS', 42, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 0, NULL),
(105, 'SS-SUS-403', 'Stainless Steel SUS403', 'Stainless Steel', 'SS', 'JIS', 38, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 4, NULL),
(106, 'SS-SUS-410', 'Stainless Steel SUS410', 'Stainless Steel', 'SS', 'JIS', 17, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 25, NULL),
(107, 'SS-SUS-410S', 'Stainless Steel SUS410S', 'Stainless Steel', 'SS', 'JIS', 2, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 40, NULL),
(108, 'SS-SUS-416', 'Stainless Steel SUS416', 'Stainless Steel', 'SS', 'JIS', 17, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 25, NULL),
(109, 'SS-SUS-42J2', 'Stainless Steel SUS420J2', 'Stainless Steel', 'SS', 'JIS', 0, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 42, NULL),
(110, 'SS-SUS-420F', 'Stainless Steel SUS420F', 'Stainless Steel', 'SS', 'JIS', 30, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 12, NULL),
(111, 'SS-SUS-431', 'Stainless Steel SUS431', 'Stainless Steel', 'SS', 'JIS', 25, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 17, NULL),
(112, 'SS-SUS-440C', 'Stainless Steel SUS440C', 'Stainless Steel', 'SS', 'JIS', 21, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 21, NULL),
(113, 'SS-SUS-631', 'Stainless Steel SUS631', 'Stainless Steel', 'SS', 'JIS', 13, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 29, NULL),
(114, 'SS-SUS-42J7', 'Stainless Steel SUS420J7', 'Stainless Steel', 'SS', 'JIS', 11, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 31, NULL),
(115, 'SS-SUS-42F2', 'Stainless Steel SUS420F2', 'Stainless Steel', 'SS', 'JIS', 2, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 40, NULL),
(116, 'SS-SUS-501', 'Stainless Steel SUS501', 'Stainless Steel', 'SS', 'JIS', 16, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 26, NULL),
(117, 'SS-AIS-3105', 'Stainless Steel AISI3105', 'Stainless Steel', 'SS', 'AISI', 31, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 11, NULL),
(118, 'SS-AIS-201', 'Stainless Steel AISI201', 'Stainless Steel', 'SS', 'AISI', 19, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 23, NULL),
(119, 'SS-AIS-202', 'Stainless Steel AISI202', 'Stainless Steel', 'SS', 'AISI', 14, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 28, NULL),
(120, 'SS-AIS-301', 'Stainless Steel AISI301', 'Stainless Steel', 'SS', 'AISI', 33, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 9, NULL),
(121, 'SS-AIS-302', 'Stainless Steel AISI302', 'Stainless Steel', 'SS', 'AISI', 15, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 27, NULL),
(122, 'SS-AIS-302B', 'Stainless Steel AISI302B', 'Stainless Steel', 'SS', 'AISI', 25, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 17, NULL),
(123, 'SS-AIS-303', 'Stainless Steel AISI303', 'Stainless Steel', 'SS', 'AISI', 15, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 27, NULL),
(124, 'SS-AIS-303S', 'Stainless Steel AISI303SE', 'Stainless Steel', 'SS', 'AISI', 23, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 19, NULL),
(125, 'SS-AIS-304', 'Stainless Steel AISI304', 'Stainless Steel', 'SS', 'AISI', 16, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 26, NULL),
(126, 'SS-AIS-304L', 'Stainless Steel AISI304L', 'Stainless Steel', 'SS', 'AISI', 15, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 27, NULL),
(127, 'SS-AIS-304N', 'Stainless Steel AISI304N', 'Stainless Steel', 'SS', 'AISI', 30, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 12, NULL),
(128, 'SS-AIS-30LN', 'Stainless Steel AISI304LN', 'Stainless Steel', 'SS', 'AISI', 16, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 26, NULL),
(129, 'SS-S30-431', 'Stainless Steel S30431', 'Stainless Steel', 'SS', 'AISI', 27, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 15, NULL),
(130, 'SS-AIS-305', 'Stainless Steel AISI305', 'Stainless Steel', 'SS', 'AISI', 18, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 24, NULL),
(131, 'SS-AIS-309', 'Stainless Steel AISI309S', 'Stainless Steel', 'SS', 'AISI', 40, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 2, NULL),
(132, 'SS-AIS-3105', 'Stainless Steel AISI310S', 'Stainless Steel', 'SS', 'AISI', 15, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 27, NULL),
(133, 'SS-AIS-316', 'Stainless Steel AISI316', 'Stainless Steel', 'SS', 'AISI', 10, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 32, NULL),
(134, 'SS-AIS-316L', 'Stainless Steel AISI316L', 'Stainless Steel', 'SS', 'AISI', 9, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 33, NULL),
(135, 'SS-AIS-316N', 'Stainless Steel AISI316N', 'Stainless Steel', 'SS', 'AISI', 21, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 21, NULL),
(136, 'SS-AIS-36LN', 'Stainless Steel AISI316LN', 'Stainless Steel', 'SS', 'AISI', 21, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 21, NULL),
(137, 'SS-AIS-317', 'Stainless Steel AISI317', 'Stainless Steel', 'SS', 'AISI', 5, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 37, NULL),
(138, 'SS-AIS-317L', 'Stainless Steel AISI317L', 'Stainless Steel', 'SS', 'AISI', 37, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 5, NULL),
(139, 'SS-N08-904', 'Stainless Steel N08904', 'Stainless Steel', 'SS', 'AISI', 9, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 33, NULL),
(140, 'SS-AIS-321', 'Stainless Steel AISI321', 'Stainless Steel', 'SS', 'AISI', 0, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 42, NULL),
(141, 'SS-AIS-347', 'Stainless Steel AISI347', 'Stainless Steel', 'SS', 'AISI', 28, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 14, NULL),
(142, 'SS-AIS-384', 'Stainless Steel AISI384', 'Stainless Steel', 'SS', 'AISI', 37, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 5, NULL),
(143, 'SS-AIS-30CU', 'Stainless Steel AISI304CU', 'Stainless Steel', 'SS', 'AISI', 21, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 21, NULL),
(144, 'SS-AIS-329', 'Stainless Steel AISI329', 'Stainless Steel', 'SS', 'AISI', 25, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 17, NULL),
(145, 'SS-S31-803', 'Stainless Steel S31803', 'Stainless Steel', 'SS', 'AISI', 13, 250000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 29, NULL),
(146, 'SS-S31-260', 'Stainless Steel S31260', 'Stainless Steel', 'SS', 'AISI', 29, 200000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 13, NULL),
(147, 'SS-AIS-405', 'Stainless Steel AISI405', 'Stainless Steel', 'SS', 'AISI', 32, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 10, NULL),
(148, 'SS-AIS-429', 'Stainless Steel AISI429', 'Stainless Steel', 'SS', 'AISI', 8, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 34, NULL),
(149, 'SS-AIS-430', 'Stainless Steel AISI430', 'Stainless Steel', 'SS', 'AISI', 24, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 18, NULL),
(150, 'SS-AIS-430F', 'Stainless Steel AISI430F', 'Stainless Steel', 'SS', 'AISI', 23, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 19, NULL),
(151, 'SS-AIS-434', 'Stainless Steel AISI434', 'Stainless Steel', 'SS', 'AISI', 16, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 26, NULL),
(152, 'SS-AIS-436', 'Stainless Steel AISI436', 'Stainless Steel', 'SS', 'AISI', 33, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 9, NULL),
(153, 'SS-AIS-444', 'Stainless Steel AISI444', 'Stainless Steel', 'SS', 'AISI', 20, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 22, NULL),
(154, 'SS-AIS-403', 'Stainless Steel AISI403', 'Stainless Steel', 'SS', 'AISI', 9, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 33, NULL),
(155, 'SS-AIS-410', 'Stainless Steel AISI410', 'Stainless Steel', 'SS', 'AISI', 14, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 28, NULL),
(156, 'SS-AIS-410S', 'Stainless Steel AISI410S', 'Stainless Steel', 'SS', 'AISI', 28, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 14, NULL),
(157, 'SS-AIS-416', 'Stainless Steel AISI416', 'Stainless Steel', 'SS', 'AISI', 0, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 42, NULL),
(158, 'SS-AIS-426', 'Stainless Steel AISI426', 'Stainless Steel', 'SS', 'AISI', 27, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 15, NULL),
(159, 'SS-AIS-429', 'Stainless Steel AISI429', 'Stainless Steel', 'SS', 'AISI', 38, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 4, NULL),
(160, 'SS-AIS-420F', 'Stainless Steel AISI420F', 'Stainless Steel', 'SS', 'AISI', 39, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 3, NULL),
(161, 'SS-AIS-439', 'Stainless Steel AISI439', 'Stainless Steel', 'SS', 'AISI', 32, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 10, NULL),
(162, 'SS-AIS-440A', 'Stainless Steel AISI440A', 'Stainless Steel', 'SS', 'AISI', 5, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 37, NULL),
(163, 'SS-AIS-440B', 'Stainless Steel AISI440B', 'Stainless Steel', 'SS', 'AISI', 7, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 35, NULL),
(164, 'SS-AIS-440C', 'Stainless Steel AISI440C', 'Stainless Steel', 'SS', 'AISI', 2, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 40, NULL),
(165, 'SS-S44-02L', 'Stainless Steel S44020L', 'Stainless Steel', 'SS', 'AISI', 40, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 2, NULL),
(166, 'SS-S17-400', 'Stainless Steel S17400', 'Stainless Steel', 'SS', 'AISI', 6, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 36, NULL),
(167, 'SS-S17-700', 'Stainless Steel S17700', 'Stainless Steel', 'SS', 'AISI', 13, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 29, NULL),
(168, 'SS-AIS-422', 'Stainless Steel AISI422', 'Stainless Steel', 'SS', 'AISI', 39, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 3, NULL),
(169, 'SS-AIS-424', 'Stainless Steel AISI424', 'Stainless Steel', 'SS', 'AISI', 38, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 4, NULL),
(170, 'SS-AIS-420F', 'Stainless Steel AISI420F', 'Stainless Steel', 'SS', 'AISI', 17, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 25, NULL),
(171, 'SS-AIS-436', 'Stainless Steel AISI436', 'Stainless Steel', 'SS', 'AISI', 27, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 15, NULL),
(172, 'SS-AIS-441A', 'Stainless Steel AISI441A', 'Stainless Steel', 'SS', 'AISI', 30, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 12, NULL),
(173, 'SS-AIS-441B', 'Stainless Steel AISI441B', 'Stainless Steel', 'SS', 'AISI', 21, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 21, NULL),
(174, 'SS-AIS-441C', 'Stainless Steel AISI441C', 'Stainless Steel', 'SS', 'AISI', 42, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 0, NULL),
(175, 'SS-S44-02N', 'Stainless Steel S44020N', 'Stainless Steel', 'SS', 'AISI', 32, 300000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 10, NULL),
(176, 'SS-S17-406', 'Stainless Steel S17406', 'Stainless Steel', 'SS', 'AISI', 26, 150000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 16, NULL),
(177, 'SS-S17-767', 'Stainless Steel S17767', 'Stainless Steel', 'SS', 'AISI', 29, 250000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 13, NULL),
(178, 'SS-AIS-420Z', 'Stainless Steel AISI420Z', 'Stainless Steel', 'SS', 'AISI', 34, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 8, NULL),
(179, 'SS-AIS-420G', 'Stainless Steel AISI420G', 'Stainless Steel', 'SS', 'AISI', 3, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 39, NULL),
(180, 'SS-AIS-420F', 'Stainless Steel AISI420F', 'Stainless Steel', 'SS', 'AISI', 6, 150000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 36, NULL),
(181, 'SS-AIS-438', 'Stainless Steel AISI438', 'Stainless Steel', 'SS', 'AISI', 33, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 9, NULL),
(182, 'SS-AIS-444A', 'Stainless Steel AISI444A', 'Stainless Steel', 'SS', 'AISI', 7, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 35, NULL),
(183, 'SS-AIS-444B', 'Stainless Steel AISI444B', 'Stainless Steel', 'SS', 'AISI', 19, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 23, NULL),
(184, 'SS-AIS-444C', 'Stainless Steel AISI444C', 'Stainless Steel', 'SS', 'AISI', 35, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 1, 42, 7, NULL),
(185, 'SS-S44-020', 'Stainless Steel S44020', 'Stainless Steel', 'SS', 'AISI', 5, 200000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 37, NULL),
(186, 'SS-S17-457', 'Stainless Steel S17457', 'Stainless Steel', 'SS', 'AISI', 12, 300000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 30, NULL),
(187, 'SS-S17-748', 'Stainless Steel S17748', 'Stainless Steel', 'SS', 'AISI', 27, 150000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 15, NULL),
(188, 'SS-AIS-420N', 'Stainless Steel AISI420N', 'Stainless Steel', 'SS', 'AISI', 41, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 1, NULL),
(189, 'SS-AIS-420J', 'Stainless Steel AISI420J', 'Stainless Steel', 'SS', 'AISI', 23, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 19, NULL),
(190, 'SS-AIS-420F', 'Stainless Steel AISI420F', 'Stainless Steel', 'SS', 'AISI', 30, 300000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 12, NULL),
(191, 'SS-AIS-431', 'Stainless Steel AISI431', 'Stainless Steel', 'SS', 'AISI', 8, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 34, NULL),
(192, 'HRS-SUH-616', 'Heat-Resiting Steel SUH616', 'Heat Resiting Steel', 'HRS', 'JIS', 4, 200000, 'CV. Bintang Jaya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 38, NULL),
(193, 'HRS-SUH-21', 'Heat-Resiting Steel SUH21', 'Heat Resiting Steel', 'HRS', 'JIS', 5, 300000, 'CV. Bintang Jaya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 37, NULL),
(194, 'HRS-SUH-409', 'Heat-Resiting Steel SUH409', 'Heat Resiting Steel', 'HRS', 'JIS', 11, 250000, 'CV. Bintang Jaya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 31, NULL),
(195, 'HRS-SUH-409L', 'Heat-Resiting Steel SUH409L', 'Heat Resiting Steel', 'HRS', 'JIS', 18, 200000, 'CV. Bintang Jaya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 24, NULL),
(196, 'HRS-SUH-446', 'Heat-Resiting Steel SUH446', 'Heat Resiting Steel', 'HRS', 'JIS', 26, 300000, 'CV. Bintang Jaya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 16, NULL),
(197, 'HRS-SUH-1', 'Heat-Resiting Steel SUH1', 'Heat Resiting Steel', 'HRS', 'JIS', 11, 150000, 'CV. Bintang Jaya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 31, NULL),
(198, 'HRS-SUH-3', 'Heat-Resiting Steel SUH3', 'Heat Resiting Steel', 'HRS', 'JIS', 2, 250000, 'CV. Bintang Jaya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 40, NULL),
(199, 'HRS-SUH-4', 'Heat-Resiting Steel SUH4', 'Heat Resiting Steel', 'HRS', 'JIS', 38, 200000, 'CV. Bintang Jaya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 4, NULL),
(200, 'HRS-SUH-11', 'Heat-Resiting Steel SUH11', 'Heat Resiting Steel', 'HRS', 'JIS', 32, 300000, 'CV. Bintang Jaya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 10, NULL),
(201, 'HRS-SUH-600', 'Heat-Resiting Steel SUH600', 'Heat Resiting Steel', 'HRS', 'JIS', 8, 150000, 'CV. Bintang Jaya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 34, NULL),
(202, 'HRS-AIS-309', 'Heat-Resiting Steel AISI309', 'Heat Resiting Steel', 'HRS', 'AISI', 35, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 7, NULL),
(203, 'HRS-AIS-310', 'Heat-Resiting Steel AISI310', 'Heat Resiting Steel', 'HRS', 'AISI', 6, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 36, NULL),
(204, 'HRS-N08-330', 'Heat-Resiting Steel N08330', 'Heat Resiting Steel', 'HRS', 'AISI', 11, 300000, 'Rakan Pratama Mandiri', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 31, NULL),
(205, 'HRS-AIS-409', 'Heat-Resiting Steel AISI409', 'Heat Resiting Steel', 'HRS', 'AISI', 39, 250000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 3, NULL),
(206, 'HRS-AIS-446', 'Heat-Resiting Steel AISI446', 'Heat Resiting Steel', 'HRS', 'AISI', 10, 200000, 'Inti Sarana Kreasi', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 32, NULL),
(207, 'FS-SF-540', 'Forged Steel SF540A', 'Forged Steel', 'FS', 'JIS', 5, 300000, 'Willy Teknhik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 37, NULL),
(208, 'FS-SF-440', 'Forged Steel SF440A', 'Forged Steel', 'FS', 'JIS', 4, 150000, 'Willy Teknhik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 38, NULL),
(209, 'FS-SF-490', 'Forged Steel SF490A', 'Forged Steel', 'FS', 'JIS', 34, 250000, 'Willy Teknhik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 8, NULL),
(210, 'FS-SF-580', 'Forged Steel SF580A', 'Forged Steel', 'FS', 'JIS', 25, 200000, 'Willy Teknhik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 17, NULL),
(211, 'FS-AIS-4345', 'Stainless Steel AISI4345', 'Forged Steel', 'FS', 'AISI', 34, 300000, 'Willy Teknhik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 8, NULL),
(212, 'AAM-A-40', 'Al-Alloy Metal A40', 'Al-Alloy-Metal', 'AAM', 'JIS', 24, 150000, 'Centralindo Sealing', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 18, NULL),
(213, 'AAM-SNM-625', 'Al-Alloy Metal SNCM625', 'Al-Alloy-Metal', 'AAM', 'JIS', 7, 250000, 'Centralindo Sealing', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 35, NULL),
(214, 'AAM-SNM-630', 'Al-Alloy Metal SNCM630', 'Al-Alloy-Metal', 'AAM', 'JIS', 6, 200000, 'Centralindo Sealing', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 36, NULL),
(215, 'AAM-SNM-815', 'Al-Alloy Metal SNCM815', 'Al-Alloy-Metal', 'AAM', 'JIS', 35, 300000, 'Centralindo Sealing', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 7, NULL),
(216, 'AAM-AIS-1046', 'Al-Alloy-Metal AISI1046', 'Al-Alloy-Metal', 'AAM', 'AISI', 9, 150000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 33, NULL),
(217, 'WM-WJ-2', 'White Metal WJ2', 'White Metal', 'WM', 'JIS', 15, 250000, 'Willy Teknhik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 27, NULL),
(218, 'WM-WJ-2B', 'White Metal WJ2B', 'White Metal', 'WM', 'JIS', 24, 200000, 'Willy Teknhik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 18, NULL),
(219, 'WM-AIS-1045', 'White Metal AISI1045', 'White Metal', 'WM', 'AISI', 40, 250000, 'PT. Gemilang Mahakarya', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 2, NULL),
(220, 'NMS-AIS-4340', 'Ni-Cr-Mo Steel AISI4340', 'Ni-Cr-Mo Steel', 'NMS', 'AISI', 19, 200000, 'Willy Teknhik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 23, NULL),
(221, 'NCS-SNC-236', 'Ni-Cr Steel SNC236', 'Ni-Cr Steel', 'NCS', 'JIS', 1, 300000, 'Centralindo Sealing', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 41, NULL),
(222, 'NCS-SNC-631', 'Ni-Cr Steel SNC631', 'Ni-Cr Steel', 'NCS', 'JIS', 17, 250000, 'Centralindo Sealing', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 25, NULL);
INSERT INTO `data_materials` (`id`, `kode`, `nama`, `kategori`, `link_kategori`, `jenis`, `stock`, `harga_beli`, `suplier`, `tanggal_masuk`, `tanggal_update`, `created_at`, `updated_at`, `d_ss`, `L`, `Z`, `SS`, `d_rop`, `ROP`, `AU`, `stock_max`, `jumlah_harus_beli`, `status_material`) VALUES
(223, 'NCS-SNC-815', 'Ni-Cr Steel SNC815', 'Ni-Cr Steel', 'NCS', 'JIS', 13, 200000, 'Centralindo Sealing', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 29, NULL),
(224, 'NCS-SNM-220', 'Ni-Cr Steel SNCM220', 'Ni-Cr Steel', 'NCS', 'JIS', 14, 300000, 'Centralindo Sealing', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 28, NULL),
(225, 'NCS-SNM-240', 'Ni-Cr Steel SNCM240', 'Ni-Cr Steel', 'NCS', 'JIS', 30, 150000, 'Centralindo Sealing', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 12, NULL),
(226, 'NCS-SNM-420', 'Ni-Cr Steel SNCM420', 'Ni-Cr Steel', 'NCS', 'JIS', 13, 250000, 'Centralindo Sealing', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 29, NULL),
(227, 'NCS-SNM-431', 'Ni-Cr Steel SNCM431', 'Ni-Cr Steel', 'NCS', 'JIS', 20, 200000, 'Centralindo Sealing', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 22, NULL),
(228, 'NCS-AIS-8620', 'Ni-Cr Steel AISI8620', 'Ni-Cr Steel', 'NCS', 'AISI', 40, 250000, 'Centralindo Sealing', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 2, NULL),
(229, 'NCS-AIS-8637', 'Ni-Cr Steel AISI8637', 'Ni-Cr Steel', 'NCS', 'AISI', 30, 200000, 'Centralindo Sealing', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 2, NULL, 8, 2, 42, 12, NULL),
(230, 'NCS-AIS-4320', 'Ni-Cr Steel AISI4320', 'Ni-Cr Steel', 'NCS', 'AISI', 11, 300000, 'Willy Teknhik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 31, NULL),
(231, 'NCS-AIS-4340', 'Ni-Cr Steel AISI4340', 'Ni-Cr Steel', 'NCS', 'AISI', 30, 150000, 'Willy Teknhik', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 3, NULL, 13, 2, 42, 12, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_material_masuks`
--

CREATE TABLE `data_material_masuks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jenis_materials`
--

CREATE TABLE `jenis_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_kategori` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_materials`
--

CREATE TABLE `kategori_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_materials`
--

INSERT INTO `kategori_materials` (`id`, `nama_kategori`, `link_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Cast Steel', 'CS', '2022-08-11 14:44:35', '2022-08-12 14:44:35'),
(2, 'Carbon Steel', 'CBS', '2022-08-12 14:44:35', '2022-08-13 14:44:35'),
(3, 'Stainless Steel', 'SS', '2022-08-13 14:44:35', '2022-08-14 14:44:35'),
(4, 'Heat Resiting Steel', 'HRS', '2022-08-14 14:44:35', '2022-08-15 14:44:35'),
(5, 'Forged Steel', 'FS', '2022-08-15 14:44:35', '2022-08-16 14:44:35'),
(6, 'Al-Alloy-Metal', 'AAM', '2022-08-16 14:44:35', '2022-08-17 14:44:35'),
(7, 'White Metal', 'WM', '2022-08-17 14:44:35', '2022-08-18 14:44:35'),
(8, 'Ni-Cr-Mo Steel', 'NMS', '2022-08-18 14:44:35', '2022-08-19 14:44:35'),
(9, 'N-Cr Steel', 'NCS', '2022-08-19 14:44:35', '2022-08-20 14:44:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kebutuhan_materials`
--

CREATE TABLE `kebutuhan_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `komponen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `suplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_update` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_verif` int(11) DEFAULT NULL,
  `status_repairing` int(11) DEFAULT NULL,
  `status_beli` int(11) DEFAULT NULL,
  `stock_max` int(11) DEFAULT NULL,
  `jumlah_harus_beli` int(11) DEFAULT NULL,
  `stok_repairing` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kebutuhan_materials`
--

INSERT INTO `kebutuhan_materials` (`id`, `komponen`, `kode`, `nama`, `jenis`, `satuan`, `jumlah`, `harga_beli`, `suplier`, `tanggal_masuk`, `tanggal_update`, `created_at`, `updated_at`, `status_verif`, `status_repairing`, `status_beli`, `stock_max`, `jumlah_harus_beli`, `stok_repairing`) VALUES
(82, 'CASING CASE', 'CS-SCR-430', 'Cast Steel SCR430H', 'JIS', 'Meter', 34, 750000, 'Rahayu Teknik', '2022-09-06', '2022-09-06', '2022-09-05 21:01:36', '2022-09-05 21:09:03', 1, 1, 2, 42, 34, 5),
(83, 'NOZZLE', 'CS-SCR-415', 'Cast Steel SCR415H', 'JIS', 'Meter', 4, 800000, 'Rahayu Teknik', '2022-09-06', '2022-09-06', '2022-09-05 21:24:09', '2022-09-05 21:25:18', 1, 1, NULL, 42, 0, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komponen_turbins`
--

CREATE TABLE `komponen_turbins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_komponen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_komponen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `komponen_turbins`
--

INSERT INTO `komponen_turbins` (`id`, `kode_komponen`, `nama_komponen`, `created_at`, `updated_at`) VALUES
(1, '001-TC', 'TURBINE', '2022-08-11 14:44:35', '2022-08-16 17:02:48'),
(2, '002-CC', 'CASING CASE', '2022-08-12 14:44:35', '2022-08-12 14:44:35'),
(3, '003-LP', 'LABYRINTH PACKING', '2022-08-13 14:44:35', '2022-08-13 14:44:35'),
(4, '004-NZ', 'NOZZLE', '2022-08-14 14:44:35', '2022-08-14 14:44:35'),
(5, '005-SBS', 'STATIONARY BLADE SEAT', '2022-08-15 14:44:35', '2022-08-15 14:44:35'),
(6, '006-ESVC', 'EMERGENCY STOP VALVE CASING', '2022-08-16 14:44:35', '2022-08-16 14:44:35'),
(7, '008-VV', 'VALVE', '2022-08-17 14:44:35', '2022-08-17 14:44:35'),
(8, '009-GVCC', 'GOVERNOR VALVE CASING COVER', '2022-08-18 14:44:35', '2022-08-18 14:44:35'),
(9, '010-VS', 'VALVE STEM', '2022-08-19 14:44:35', '2022-08-19 14:44:35'),
(10, '011-GV', 'GOVERNOR VALVE', '2022-08-20 14:44:35', '2022-08-20 14:44:35'),
(11, '013-TS', 'TURBINE SHAFT', '2022-08-21 14:44:35', '2022-08-21 14:44:35'),
(12, '014-DR', 'DISC ROTOR', '2022-08-22 14:44:35', '2022-08-22 14:44:35'),
(13, '015-OTS', 'OVERSPEED TRIP SHAFT', '2022-08-23 14:44:35', '2022-08-23 14:44:35'),
(14, '016-MB', 'MOVING BLADE', '2022-08-24 14:44:35', '2022-08-24 14:44:35'),
(15, '017-BM', 'BEARING METAL', '2022-08-25 14:44:35', '2022-08-25 14:44:35'),
(16, '018-PN', 'PINION', '2022-08-26 14:44:35', '2022-08-26 14:44:35'),
(17, '019-TBM', 'THRUST BEARING METAL', '2022-08-27 14:44:35', '2022-08-27 14:44:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_08_07_143021_create_komponen_turbins_table', 2),
(6, '2022_08_07_143741_create_data_materials_table', 3),
(7, '2022_08_07_144316_create_kebutuhan_materials_table', 4),
(8, '2022_08_07_150133_add_harga_beli_to_data_materials', 4),
(9, '2022_08_07_150817_create_pembelian_materials_table', 5),
(10, '2022_08_07_190248_create_repairings_table', 6),
(11, '2022_08_08_111323_create_suppliers_table', 7),
(12, '2022_08_11_135022_create_kategori_materials_table', 7),
(13, '2022_08_11_150102_create_jenis_materials_table', 8),
(14, '2022_08_11_153532_add_fk_to_jenis_materials', 9),
(15, '2022_08_11_154533_add_link_to_kategori_materials', 9),
(16, '2022_08_13_042918_add_kode_to_kategori_materials', 10),
(17, '2022_08_14_093641_add_status_verif_to_kebutuhan_materials', 10),
(18, '2022_08_15_030610_add_pemilik_to_users', 11),
(19, '2022_08_16_111757_add_status_verif_to_pembelian_materials', 12),
(20, '2022_08_16_112228_add_status_verif_to_repairings', 13),
(21, '2022_08_17_024012_add_status_repairing_to_kebutuhan_materials', 14),
(22, '2022_08_17_085421_add_link_kategori_to_data_materials', 15),
(23, '2022_08_17_101656_add_rop_ss_to_data_materials', 16),
(24, '2022_08_18_080004_add_average_user_to_data_materials', 17),
(25, '2022_08_18_232149_add_name_to_suppliers', 18),
(26, '2022_08_19_000451_add_kode_to_kebutuhan_materials', 18),
(27, '2022_08_19_001219_add_suplier_to_data_materials', 19),
(28, '2022_08_19_001655_add_harga_beli_to_kebutuhan_materials', 20),
(29, '2022_08_19_015846_add_suplier_to_kebutuhan_materials', 21),
(30, '2022_08_20_065755_add_tanggal_to_kebutuhan_materials', 22),
(31, '2022_08_20_075301_add_tanggal_to_pembelian_materials', 23),
(32, '2022_08_20_075705_create_data_material_masuks_table', 24),
(33, '2022_08_20_075843_add_tanggal_to_data_materials', 24),
(34, '2022_08_20_103535_add_tanggal_to_repairings', 25),
(35, '2022_08_23_070648_add_status_beli_to_pembelian_materials', 26),
(36, '2022_08_23_070928_add_status_beli_to_kebutuhan_materials', 26),
(37, '2022_08_25_030928_add_status_repairing_to_repairings', 27),
(38, '2022_08_25_074920_create_notifikasis_table', 28),
(39, '2022_08_25_080856_add_status_to_notifikasis', 29),
(40, '2022_08_25_094723_add_link_to_notifikasis', 30),
(41, '2022_08_28_164557_add_jumlah_max_to_data_materials', 31),
(42, '2022_08_29_001134_add_jumlah_max_to_kebutuhan_materials', 32),
(43, '2022_08_29_014250_add_status_warning_to_data_materials', 33),
(44, '2022_09_06_032234_add_stok_repairing_to_kebutuhan_materials', 34),
(45, '2022_09_06_032655_add_stok_repairing_to_repairings', 34);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasis`
--

CREATE TABLE `notifikasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_notifikasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengirim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_kirim` date DEFAULT NULL,
  `jenis_notifikasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_notif` int(11) DEFAULT NULL,
  `kebutuhan_material_id` int(11) DEFAULT NULL,
  `pembelian_material_id` int(11) DEFAULT NULL,
  `repairing_id` int(11) DEFAULT NULL,
  `deskripsi_link` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_notif` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notifikasis`
--

INSERT INTO `notifikasis` (`id`, `nama_notifikasi`, `deskripsi`, `pengirim`, `tanggal_kirim`, `jenis_notifikasi`, `created_at`, `updated_at`, `status_notif`, `kebutuhan_material_id`, `pembelian_material_id`, `repairing_id`, `deskripsi_link`, `link_notif`) VALUES
(1, 'Tambah Kebutuhan Material AISI1015', 'Telah dilaksanakan Penambahan Kebutuhan Material AISI1015 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-25', 'Tambah Kebutuhan Material', '2022-08-25 02:19:29', '2022-08-25 03:50:28', 1, NULL, NULL, NULL, NULL, NULL),
(2, 'Tambah Kebutuhan Material AISI1016', 'Telah dilaksanakan Penambahan Kebutuhan Material AISI1016 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-25', 'Tambah Kebutuhan Material', '2022-08-25 02:37:47', '2022-08-25 02:37:47', 0, 59, NULL, NULL, NULL, NULL),
(3, 'Tambah Kebutuhan Material AISI1015', 'Telah dilaksanakan Penambahan Kebutuhan Material AISI1015 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-25', 'Tambah Kebutuhan Material', '2022-08-25 03:57:50', '2022-08-25 04:27:53', 1, 60, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'kebutuhan_material'),
(4, 'Tambah Pembelian Material AISI1015', 'Telah dilaksanakan Penambahan Pembelian Material AISI1015 oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-08-25', 'Tambah Pembelian Material', '2022-08-25 03:58:22', '2022-08-25 04:03:59', 1, NULL, 47, NULL, 'Berikut merupakan Link untuk melihat Pembelian material : ', 'pembelian_material'),
(5, 'Tambah Kebutuhan Material AISI1015', 'Telah dilaksanakan Penambahan Kebutuhan Material AISI1015 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-25', 'Tambah Kebutuhan Material', '2022-08-25 04:06:47', '2022-08-25 04:08:14', 1, 61, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(6, 'Tambah Pembelian Material AISI1015', 'Telah dilaksanakan Penambahan Pembelian Material AISI1015 oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-08-25', 'Tambah Pembelian Material', '2022-08-25 04:08:32', '2022-08-25 04:08:57', 1, NULL, 48, NULL, 'Berikut merupakan Link untuk melihat Pembelian material : ', 'pembelian_material'),
(7, 'Tambah Kebutuhan Material AISI1015', 'Telah dilaksanakan Penambahan Kebutuhan Material AISI1015 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-25', 'Tambah Kebutuhan Material', '2022-08-25 04:29:10', '2022-08-25 04:29:41', 1, 62, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(8, 'Tambah Pembelian Material AISI1015', 'Telah dilaksanakan Penambahan Pembelian Material AISI1015 oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-08-25', 'Tambah Pembelian Material', '2022-08-25 04:31:27', '2022-08-25 04:31:40', 1, NULL, 49, NULL, 'Berikut merupakan Link untuk melihat Pembelian material : ', 'persetujuan/pembelian_material'),
(9, 'Tambah Data Repairing AISI1015', 'Telah dilaksanakan Penambahan Repairing AISI1015 oleh PPIC Omegamon', 'Omegamon', '2022-08-25', 'Tambah Kebutuhan Material', '2022-08-25 04:35:51', '2022-08-25 04:36:02', 1, NULL, NULL, 24, 'Berikut merupakan Link untuk melihat Data Repairing : ', 'data_repairing'),
(10, 'Tambah Kebutuhan Material Cast Steel SCPH1', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCPH1 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-25', 'Tambah Kebutuhan Material', '2022-08-25 07:54:11', '2022-08-25 08:11:13', 1, 63, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(11, 'Tambah Kebutuhan Material Stainless Steel AISI304', 'Telah dilaksanakan Penambahan Kebutuhan Material Stainless Steel AISI304 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-25', 'Tambah Kebutuhan Material', '2022-08-25 08:01:43', '2022-08-25 08:11:11', 1, 64, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(12, 'Tambah Pembelian Material Stainless', 'Telah dilaksanakan Penambahan Pembelian Material Stainless oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-08-25', 'Tambah Pembelian Material', '2022-08-25 08:05:25', '2022-08-25 08:11:04', 1, NULL, 50, NULL, 'Berikut merupakan Link untuk melihat Pembelian material : ', 'persetujuan/pembelian_material'),
(13, 'Tambah Kebutuhan Material Stainless Steel AISI304', 'Telah dilaksanakan Penambahan Kebutuhan Material Stainless Steel AISI304 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-25', 'Tambah Kebutuhan Material', '2022-08-25 08:07:19', '2022-08-25 08:11:01', 1, 65, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(14, 'Tambah Pembelian Material Stainless', 'Telah dilaksanakan Penambahan Pembelian Material Stainless oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-08-25', 'Tambah Pembelian Material', '2022-08-25 08:09:59', '2022-08-25 08:11:08', 1, NULL, 51, NULL, 'Berikut merupakan Link untuk melihat Pembelian material : ', 'persetujuan/pembelian_material'),
(15, 'Tambah Kebutuhan Material Stainless Steel AISI304', 'Telah dilaksanakan Penambahan Kebutuhan Material Stainless Steel AISI304 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-25', 'Tambah Kebutuhan Material', '2022-08-25 08:12:04', '2022-08-25 08:12:04', 0, 66, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(16, 'Tambah Pembelian Material Stainless', 'Telah dilaksanakan Penambahan Pembelian Material Stainless oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-08-25', 'Tambah Pembelian Material', '2022-08-25 08:12:23', '2022-09-02 06:33:02', 1, NULL, 52, NULL, 'Berikut merupakan Link untuk melihat Pembelian material : ', 'persetujuan/pembelian_material'),
(17, 'Tambah Kebutuhan Material Stainless Steel AISI304', 'Telah dilaksanakan Penambahan Kebutuhan Material Stainless Steel AISI304 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-25', 'Tambah Kebutuhan Material', '2022-08-25 08:29:07', '2022-09-02 07:13:41', 1, 67, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(18, 'Tambah Pembelian Material Stainless Steel AISI304', 'Telah dilaksanakan Penambahan Pembelian Material Stainless Steel AISI304 oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-08-25', 'Tambah Pembelian Material', '2022-08-25 08:29:59', '2022-09-02 07:14:49', 1, NULL, 53, NULL, 'Berikut merupakan Link untuk melihat Pembelian material : ', 'persetujuan/pembelian_material'),
(19, 'Tambah Kebutuhan Material Stainless Steel AISI304', 'Telah dilaksanakan Penambahan Kebutuhan Material Stainless Steel AISI304 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-25', 'Tambah Kebutuhan Material', '2022-08-25 08:39:44', '2022-09-02 07:48:48', 1, 68, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(20, 'Tambah Pembelian Material Stainless Steel AISI304', 'Telah dilaksanakan Penambahan Pembelian Material Stainless Steel AISI304 oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-08-25', 'Tambah Pembelian Material', '2022-08-25 08:43:35', '2022-08-25 08:48:52', 1, NULL, 54, NULL, 'Berikut merupakan Link untuk melihat Pembelian material : ', 'persetujuan/pembelian_material'),
(21, 'Tambah Data Repairing Stainless Steel AISI304', 'Telah dilaksanakan Penambahan Repairing Stainless Steel AISI304 oleh PPIC Omegamon', 'Omegamon', '2022-08-25', 'Tambah Kebutuhan Material', '2022-08-25 08:51:46', '2022-09-02 07:49:30', 1, NULL, NULL, 25, 'Berikut merupakan Link untuk melihat Data Repairing : ', 'data_repairing'),
(22, 'Tambah Kebutuhan Material Cast Steel SCR420H', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCR420H oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-26', 'Tambah Kebutuhan Material', '2022-08-25 17:00:48', '2022-09-02 07:49:34', 1, 69, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(23, 'Tambah Kebutuhan Material Cast Steel SCR415H', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCR415H oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-26', 'Tambah Kebutuhan Material', '2022-08-25 17:01:51', '2022-09-05 21:06:41', 1, 70, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(24, 'Tambah Pembelian Material Cast Steel SCR415H', 'Telah dilaksanakan Penambahan Pembelian Material Cast Steel SCR415H oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-08-26', 'Tambah Pembelian Material', '2022-08-25 17:02:14', '2022-08-25 17:02:34', 1, NULL, 55, NULL, 'Berikut merupakan Link untuk melihat Pembelian material : ', 'persetujuan/pembelian_material'),
(25, 'Tambah Data Repairing Cast Steel SCR415H', 'Telah dilaksanakan Penambahan Repairing Cast Steel SCR415H oleh PPIC Omegamon', 'Omegamon', '2022-08-26', 'Tambah Kebutuhan Material', '2022-08-25 17:07:36', '2022-08-25 17:08:38', 1, NULL, NULL, 27, 'Berikut merupakan Link untuk melihat Data Repairing : ', 'data_repairing'),
(26, 'Tambah Kebutuhan Material Cast Steel SCPH1', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCPH1 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-26', 'Tambah Kebutuhan Material', '2022-08-25 17:11:17', '2022-09-05 21:07:56', 1, 71, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(27, 'Tambah Pemesanan Material Cast Steel SCPH1', 'Telah dilaksanakan Penambahan Pemesanan Material Cast Steel SCPH1 oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-08-26', 'Tambah Pemesanan Material', '2022-08-25 17:11:38', '2022-08-25 17:11:55', 1, NULL, 56, NULL, 'Berikut merupakan Link untuk melihat Pemesanan material : ', 'persetujuan/pembelian_material'),
(28, 'Tambah Kebutuhan Material Cast Steel SCR435H', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCR435H oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-26', 'Tambah Kebutuhan Material', '2022-08-25 17:37:02', '2022-08-25 17:37:12', 1, 72, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(29, 'Tambah Kebutuhan Material Cast Steel SCR435H', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCR435H oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-27', 'Tambah Kebutuhan Material', '2022-08-27 14:25:41', '2022-08-27 14:25:53', 1, 73, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(30, 'Tambah Data Repairing Cast Steel SCR435H', 'Telah dilaksanakan Penambahan Repairing Cast Steel SCR435H oleh PPIC Omegamon', 'Omegamon', '2022-08-27', 'Tambah Kebutuhan Material', '2022-08-27 14:27:39', '2022-08-27 14:27:48', 1, NULL, NULL, 30, 'Berikut merupakan Link untuk melihat Data Repairing : ', 'data_repairing'),
(31, 'Tambah Kebutuhan Material Cast Steel SCR420H', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCR420H oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-27', 'Tambah Kebutuhan Material', '2022-08-27 14:34:11', '2022-08-27 14:34:11', 0, 74, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(32, 'Tambah Kebutuhan Material Cast Steel SCPH1', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCPH1 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-27', 'Tambah Kebutuhan Material', '2022-08-27 14:34:27', '2022-08-27 14:35:49', 1, 75, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(33, 'Tambah Data Repairing Cast Steel SCPH1', 'Telah dilaksanakan Penambahan Repairing Cast Steel SCPH1 oleh PPIC Omegamon', 'Omegamon', '2022-08-27', 'Tambah Kebutuhan Material', '2022-08-27 14:37:15', '2022-08-27 14:37:15', 0, NULL, NULL, 31, 'Berikut merupakan Link untuk melihat Data Repairing : ', 'data_repairing'),
(34, 'Tambah Kebutuhan Material Cast Steel SCPH1', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCPH1 oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-29', 'Tambah Kebutuhan Material', '2022-08-29 08:37:44', '2022-08-29 08:37:44', 0, 76, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(35, 'Tambah Kebutuhan Material Cast Steel SCR435H', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCR435H oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-30', 'Tambah Kebutuhan Material', '2022-08-29 19:54:08', '2022-08-29 19:54:36', 1, 77, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(36, 'Tambah Pemesanan Material Cast Steel SCR435H', 'Telah dilaksanakan Penambahan Pemesanan Material Cast Steel SCR435H oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-08-30', 'Tambah Pemesanan Material', '2022-08-29 19:55:03', '2022-08-29 19:56:00', 1, NULL, 57, NULL, 'Berikut merupakan Link untuk melihat Pemesanan material : ', 'persetujuan/pembelian_material'),
(37, 'Tambah Data Repairing Cast Steel SCR415H', 'Telah dilaksanakan Penambahan Repairing Cast Steel SCR415H oleh PPIC Omegamon', 'Omegamon', '2022-08-30', 'Tambah Kebutuhan Material', '2022-08-29 19:59:18', '2022-08-29 19:59:18', 0, NULL, NULL, 27, 'Berikut merupakan Link untuk melihat Data Repairing : ', 'data_repairing'),
(38, 'Tambah Kebutuhan Material Cast Steel SCM419H', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCM419H oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-31', 'Tambah Kebutuhan Material', '2022-08-31 06:03:24', '2022-08-31 06:03:39', 1, 78, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(39, 'Tambah Pemesanan Material Cast Steel SCM419H', 'Telah dilaksanakan Penambahan Pemesanan Material Cast Steel SCM419H oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-08-31', 'Tambah Pemesanan Material', '2022-08-31 06:04:08', '2022-08-31 06:04:21', 1, NULL, 58, NULL, 'Berikut merupakan Link untuk melihat Pemesanan material : ', 'persetujuan/pembelian_material'),
(40, 'Tambah Kebutuhan Material Cast Steel SCR435H', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCR435H oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-08-31', 'Tambah Kebutuhan Material', '2022-08-31 06:11:52', '2022-08-31 06:11:52', 0, 79, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(41, 'Tambah Kebutuhan Material Cast Steel SCR435H', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCR435H oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-09-02', 'Tambah Kebutuhan Material', '2022-09-02 07:12:22', '2022-09-02 07:12:22', 0, 80, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(42, 'Tambah Pemesanan Material Cast Steel SCR435H', 'Telah dilaksanakan Penambahan Pemesanan Material Cast Steel SCR435H oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-09-02', 'Tambah Pemesanan Material', '2022-09-02 07:14:26', '2022-09-02 07:14:26', 0, NULL, 59, NULL, 'Berikut merupakan Link untuk melihat Pemesanan material : ', 'persetujuan/pembelian_material'),
(43, 'Tambah Data Repairing Cast Steel SCPH1', 'Telah dilaksanakan Penambahan Repairing Cast Steel SCPH1 oleh PPIC Omegamon', 'Omegamon', '2022-09-02', 'Tambah Kebutuhan Material', '2022-09-02 07:17:52', '2022-09-02 07:17:52', 0, NULL, NULL, 31, 'Berikut merupakan Link untuk melihat Data Repairing : ', 'data_repairing'),
(44, 'Tambah Kebutuhan Material Cast Steel SCR435H', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCR435H oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-09-02', 'Tambah Kebutuhan Material', '2022-09-02 07:43:38', '2022-09-02 07:43:38', 0, 81, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(45, 'Tambah Pemesanan Material Cast Steel SCR435H', 'Telah dilaksanakan Penambahan Pemesanan Material Cast Steel SCR435H oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-09-02', 'Tambah Pemesanan Material', '2022-09-02 07:49:14', '2022-09-02 07:49:14', 0, NULL, 60, NULL, 'Berikut merupakan Link untuk melihat Pemesanan material : ', 'persetujuan/pembelian_material'),
(46, 'Tambah Data Repairing Cast Steel SCR435H', 'Telah dilaksanakan Penambahan Repairing Cast Steel SCR435H oleh PPIC Hilwanul Fikri', 'Hilwanul Fikri', '2022-09-03', 'Tambah Kebutuhan Material', '2022-09-03 15:36:31', '2022-09-03 15:36:31', 0, NULL, NULL, 35, 'Berikut merupakan Link untuk melihat Data Repairing : ', 'data_repairing'),
(47, 'Tambah Kebutuhan Material Cast Steel SCR430H', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCR430H oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-09-06', 'Tambah Kebutuhan Material', '2022-09-05 21:01:36', '2022-09-05 21:01:36', 0, 82, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material'),
(48, 'Tambah Pemesanan Material Cast Steel SCR430H', 'Telah dilaksanakan Penambahan Pemesanan Material Cast Steel SCR430H oleh Bagian Gudang Gallantmon', 'Gallantmon', '2022-09-06', 'Tambah Pemesanan Material', '2022-09-05 21:07:04', '2022-09-05 21:07:04', 0, NULL, 61, NULL, 'Berikut merupakan Link untuk melihat Pemesanan material : ', 'persetujuan/pembelian_material'),
(49, 'Tambah Kebutuhan Material Cast Steel SCR415H', 'Telah dilaksanakan Penambahan Kebutuhan Material Cast Steel SCR415H oleh PPIC Takato Matsuda', 'Takato Matsuda', '2022-09-06', 'Tambah Kebutuhan Material', '2022-09-05 21:24:09', '2022-09-05 21:24:09', 0, 83, NULL, NULL, 'Berikut merupakan Link untuk melihat Kebutuhan material : ', 'persetujuan/kebutuhan_material');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_materials`
--

CREATE TABLE `pembelian_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `suplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_update` date DEFAULT NULL,
  `status_verif` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_beli` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelian_materials`
--

INSERT INTO `pembelian_materials` (`id`, `kode`, `nama`, `jenis`, `satuan`, `jumlah`, `harga_beli`, `suplier`, `tanggal_masuk`, `tanggal_update`, `status_verif`, `created_at`, `updated_at`, `status_beli`) VALUES
(60, 'CS-SCR-435', 'Cast Steel SCR435H', 'JIS', 'Meter', 31, 250000, 'Rahayu Teknik', '2022-09-02', '2022-09-03', 2, '2022-09-02 07:49:13', '2022-09-02 17:49:40', NULL),
(61, 'CS-SCR-430', 'Cast Steel SCR430H', 'JIS', 'Meter', 34, 150000, 'Rahayu Teknik', '2022-09-06', '2022-09-06', 2, '2022-09-05 21:07:04', '2022-09-05 21:08:52', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `repairings`
--

CREATE TABLE `repairings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `komponen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_update` date DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_verif` int(11) DEFAULT NULL,
  `status_repairing` int(11) DEFAULT NULL,
  `stok_repairing` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `repairings`
--

INSERT INTO `repairings` (`id`, `komponen`, `nama`, `jenis`, `satuan`, `jumlah`, `tanggal_masuk`, `tanggal_update`, `keterangan`, `created_at`, `updated_at`, `status_verif`, `status_repairing`, `stok_repairing`) VALUES
(35, 'LABYRINTH PACKING', 'Cast Steel SCR435H', 'JIS', 'Meter', 31, '2022-09-03', '2022-09-03', NULL, '2022-09-03 15:35:53', '2022-09-03 15:36:31', 2, 1, NULL),
(36, 'CASING CASE', 'Cast Steel SCR430H', 'JIS', 'Meter', 5, '2022-09-06', '2022-09-06', NULL, '2022-09-05 21:09:03', '2022-09-05 21:09:03', 2, NULL, NULL),
(37, 'NOZZLE', 'Cast Steel SCR415H', 'JIS', 'Meter', 4, '2022-09-06', '2022-09-06', NULL, '2022-09-05 21:25:18', '2022-09-05 21:25:18', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_supplier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_manager` int(11) DEFAULT NULL,
  `is_ppic` int(11) DEFAULT NULL,
  `is_bagiangudang` int(11) DEFAULT NULL,
  `is_bagianrepairing` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_pemilik` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_manager`, `is_ppic`, `is_bagiangudang`, `is_bagianrepairing`, `remember_token`, `created_at`, `updated_at`, `is_pemilik`) VALUES
(1, 'Fairuz Firjatullah', 'fairuzfirjatullah3@gmail.com', NULL, '$2y$10$J5emZnRmUrE4FiBzPlASW.Sv6hjadaFAnfIhlOVzYjA7Ck7zgo0K2', 1, NULL, NULL, NULL, NULL, '2022-08-07 23:17:59', '2022-08-07 23:17:59', NULL),
(2, 'Takato Matsuda', 'kmtctasik@gmail.com', NULL, '$2y$10$BHmGhUXV/oL5xpU1B4cCO.A1.EmamWJCmqhmmTSHrLL71ssUYNabm', NULL, 1, NULL, NULL, NULL, '2022-08-13 02:21:29', '2022-08-13 02:21:29', NULL),
(3, 'Gallantmon', 'fairuzf1010@gmail.com', NULL, '$2y$10$X2JClP/Xoxap.I4LCRZAve6fo9uLAjW.TYLFWbxVqZRY5PV9snCN2', NULL, NULL, 1, NULL, NULL, '2022-08-13 02:25:46', '2022-08-13 02:25:46', NULL),
(4, 'Omegamon', 'bintangr1304@gmail.com', NULL, '$2y$10$9WzcSzkJ7RY19y731ehcB.RZ9PEzr686hr/AhSZTQkDl.stZNE3/q', NULL, NULL, NULL, 1, NULL, '2022-08-13 02:28:30', '2022-08-13 02:28:30', NULL),
(5, 'Suryanto', 'yanto13@gmail.com', NULL, '$2y$10$ZwLWz5XqsWDR1qKKAadjSOw.UYC7IJ63xuDnRgchhSbH3WlK89MDq', NULL, NULL, NULL, NULL, NULL, '2022-08-14 20:05:19', '2022-08-14 20:05:19', 1),
(6, 'Yayan Rohman', 'yayanrohman10@gmail.com', NULL, '$2y$10$VyyXsQ7is54qHh9rDm0PZeWT5voJmZs0mLU3DIO8Y0e8EayFOR11i', 1, NULL, NULL, NULL, NULL, '2022-08-14 20:15:59', '2022-08-14 20:15:59', NULL),
(7, 'Hardi', 'hardi10@gmail.com', NULL, '$2y$10$Ygn6qXT3NVbggXXdXFuysuH6xeSEhdLbkGdoHbvzU7GtcBG3vd2X.', NULL, 1, NULL, NULL, NULL, '2022-08-14 20:22:42', '2022-08-14 20:22:42', NULL),
(8, 'Suwandi', 'suwandi10@gmail.com', NULL, '$2y$10$bE.kRSZnPI8nvDZVnKF83.PaoqrkrjP866aphD4uonApnlhLno6F.', NULL, NULL, 1, NULL, NULL, '2022-08-14 20:24:34', '2022-08-14 20:24:34', NULL),
(9, 'Hilwanul Fikri', 'hilwanulfikri10@gmail.com', NULL, '$2y$10$xFw80pKz4Vlrpr/wKq5SYe5nCLpBx17Z8VbghqunaTsFf/pUf20HC', NULL, NULL, NULL, 1, NULL, '2022-08-14 20:25:33', '2022-08-14 20:25:33', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_materials`
--
ALTER TABLE `data_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_material_masuks`
--
ALTER TABLE `data_material_masuks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jenis_materials`
--
ALTER TABLE `jenis_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis_materials_id_kategori_foreign` (`id_kategori`);

--
-- Indeks untuk tabel `kategori_materials`
--
ALTER TABLE `kategori_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kebutuhan_materials`
--
ALTER TABLE `kebutuhan_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komponen_turbins`
--
ALTER TABLE `komponen_turbins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifikasis`
--
ALTER TABLE `notifikasis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pembelian_materials`
--
ALTER TABLE `pembelian_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `repairings`
--
ALTER TABLE `repairings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
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
-- AUTO_INCREMENT untuk tabel `data_materials`
--
ALTER TABLE `data_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT untuk tabel `data_material_masuks`
--
ALTER TABLE `data_material_masuks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jenis_materials`
--
ALTER TABLE `jenis_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_materials`
--
ALTER TABLE `kategori_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `kebutuhan_materials`
--
ALTER TABLE `kebutuhan_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `komponen_turbins`
--
ALTER TABLE `komponen_turbins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `notifikasis`
--
ALTER TABLE `notifikasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `pembelian_materials`
--
ALTER TABLE `pembelian_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `repairings`
--
ALTER TABLE `repairings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jenis_materials`
--
ALTER TABLE `jenis_materials`
  ADD CONSTRAINT `jenis_materials_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_materials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
