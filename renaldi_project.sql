-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Agu 2022 pada 14.04
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
  `Z` float DEFAULT NULL,
  `SS` float DEFAULT NULL,
  `d_rop` int(11) DEFAULT NULL,
  `ROP` int(11) DEFAULT NULL,
  `AU` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_materials`
--

INSERT INTO `data_materials` (`id`, `kode`, `nama`, `kategori`, `link_kategori`, `jenis`, `stock`, `harga_beli`, `suplier`, `tanggal_masuk`, `tanggal_update`, `created_at`, `updated_at`, `d_ss`, `L`, `Z`, `SS`, `d_rop`, `ROP`, `AU`) VALUES
(1, 'AIS-1015', 'AISI1015', 'Cast Steel', 'CS', 'AISI', 2, 2500000, 'Rakan Pratama Mandiri', '2022-08-02', NULL, '2022-08-07 18:38:04', '2022-08-19 05:34:34', 10, 3, 1.64, 38, 20, 113, 25),
(2, 'AIS-1016', 'AISI1016', 'Cast Steel', 'CS', 'AISI', 352, 250000, 'Rakan Pratama Mandiri', '2022-08-20', NULL, '2022-08-07 18:43:18', '2022-08-20 19:48:04', NULL, 20, NULL, 100, NULL, 300, 300),
(4, 'JIS-1015', 'JIS1015', 'Carbon Steel', 'CBS', 'JIS', 3, 200000, 'Rakan Pratama Mandiri', '2022-08-20', NULL, '2022-08-07 19:51:29', '2022-08-21 03:14:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'JIS-1016', 'JIS1016', 'Stainless Steel', 'SS', 'JIS', 23, 3000000, 'Rakan Pratama Mandiri', NULL, NULL, '2022-08-07 20:21:12', '2022-08-21 03:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'CS-SCP-1', 'Cast Steel SCPH1', 'Cast Steel', 'CS', 'JIS', 35, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(7, 'CS-SCR-415', 'Cast Steel SCR415H', 'Cast Steel', 'CS', 'JIS', 47, NULL, 'Rahayu Teknik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(8, 'CS-SCR-420', 'Cast Steel SCR420H', 'Cast Steel', 'CS', 'JIS', 52, NULL, 'Rahayu Teknik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(9, 'CS-SCR-430', 'Cast Steel SCR430H', 'Cast Steel', 'CS', 'JIS', 33, NULL, 'Rahayu Teknik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(10, 'CS-SCR-435', 'Cast Steel SCR435H', 'Cast Steel', 'CS', 'JIS', 12, NULL, 'Rahayu Teknik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(11, 'CS-SCR-440', 'Cast Steel SCR440H', 'Cast Steel', 'CS', 'JIS', 62, NULL, 'Rahayu Teknik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(12, 'CS-SCM-415', 'Cast Steel SCM415H', 'Cast Steel', 'CS', 'JIS', 17, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(13, 'CS-SCM-418', 'Cast Steel SCM418H', 'Cast Steel', 'CS', 'JIS', 27, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(14, 'CS-SCM-419', 'Cast Steel SCM419H', 'Cast Steel', 'CS', 'JIS', 11, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(15, 'CS-SCM-420', 'Cast Steel SCM420H', 'Cast Steel', 'CS', 'JIS', 43, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(16, 'CS-SCM-435', 'Cast Steel SCM435H', 'Cast Steel', 'CS', 'JIS', 76, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(17, 'CS-SCM-440', 'Cast Steel SCM440H', 'Cast Steel', 'CS', 'JIS', 31, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(18, 'CS-SCM-445', 'Cast Steel SCM445H', 'Cast Steel', 'CS', 'JIS', 47, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(19, 'CS-SCM-822', 'Cast Steel SCM822H', 'Cast Steel', 'CS', 'JIS', 25, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(20, 'CS-SCP-5', 'Cast Steel SCPH5', 'Cast Steel', 'CS', 'JIS', 29, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(21, 'CS-SCM-480', 'Cast Steel SCM480H', 'Cast Steel', 'CS', 'JIS', 6, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(22, 'CS-SCM-490', 'Cast Steel SCM490H', 'Cast Steel', 'CS', 'JIS', 59, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(23, 'CS-SCM-465', 'Cast Steel SCM465H', 'Cast Steel', 'CS', 'JIS', 58, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(24, 'CS-SCP-2', 'Cast Steel SCPH2', 'Cast Steel', 'CS', 'JIS', 62, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(25, 'CS-SCR-450', 'Cast Steel SCR450H', 'Cast Steel', 'CS', 'JIS', 80, NULL, 'Rahayu Teknik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(26, 'CS-SCR-465', 'Cast Steel SCR465H', 'Cast Steel', 'CS', 'JIS', 42, NULL, 'Rahayu Teknik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(27, 'CS-SUS-42J8', 'Cast Steel SUS420J8', 'Cast Steel', 'CS', 'JIS', 57, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(28, 'CS-SUS-438', 'Cast Steel SUS438', 'Cast Steel', 'CS', 'JIS', 18, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(29, 'CS-SUS-440B', 'Cast Steel SUS440B', 'Cast Steel', 'CS', 'JIS', 72, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(30, 'CS-SUS-440F', 'Cast Steel SUS440F', 'Cast Steel', 'CS', 'JIS', 77, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(31, 'CS-SUS-634', 'Cast Steel SUS634', 'Cast Steel', 'CS', 'JIS', 75, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(32, 'CBS-SC-15', 'Carbon Steel S15C', 'Carbon Steel', 'CBS', 'JIS', 44, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(33, 'CBS-SC-17', 'Carbon Steel S17C', 'Carbon Steel', 'CBS', 'JIS', 64, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(34, 'CBS-SC-20', 'Carbon Steel S20C', 'Carbon Steel', 'CBS', 'JIS', 57, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 10, 2),
(35, 'CBS-SC-22', 'Carbon Steel S22C', 'Carbon Steel', 'CBS', 'JIS', 77, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(36, 'CBS-SC-25', 'Carbon Steel S25C', 'Carbon Steel', 'CBS', 'JIS', 48, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(37, 'CBS-SC-28', 'Carbon Steel S28C', 'Carbon Steel', 'CBS', 'JIS', 13, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(38, 'CBS-SC-30', 'Carbon Steel S30C', 'Carbon Steel', 'CBS', 'JIS', 15, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(39, 'CBS-SC-38', 'Carbon Steel S38C', 'Carbon Steel', 'CBS', 'JIS', 72, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(40, 'CBS-SC-40', 'Carbon Steel S40C', 'Carbon Steel', 'CBS', 'JIS', 80, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 9, 2),
(41, 'CBS-SC-43', 'Carbon Steel S43C', 'Carbon Steel', 'CBS', 'JIS', 54, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(42, 'CBS-SC-45', 'Carbon Steel S45C', 'Carbon Steel', 'CBS', 'JIS', 32, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(43, 'CBS-SC-50', 'Carbon Steel S50C', 'Carbon Steel', 'CBS', 'JIS', 13, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(44, 'CBS-SC-53', 'Carbon Steel S53C', 'Carbon Steel', 'CBS', 'JIS', 53, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(45, 'CBS-SC-55', 'Carbon Steel S55C', 'Carbon Steel', 'CBS', 'JIS', 12, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(46, 'CBS-SC-58', 'Carbon Steel S58C', 'Carbon Steel', 'CBS', 'JIS', 32, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(47, 'CBS-SC-35', 'Carbon Steel S35C', 'Carbon Steel', 'CBS', 'JIS', 43, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 9, 2),
(48, 'CBS-SC-21', 'Carbon Steel S21C', 'Carbon Steel', 'CBS', 'JIS', 70, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(49, 'CBS-SC-35', 'Carbon Steel S35C', 'Carbon Steel', 'CBS', 'JIS', 60, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(50, 'CBS-SC-78', 'Carbon Steel S78C', 'Carbon Steel', 'CBS', 'JIS', 72, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(51, 'CBS-SC-44', 'Carbon Steel S44C', 'Carbon Steel', 'CBS', 'JIS', 43, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(52, 'CBS-AIS-1015', 'Carbon Steel AISI1015', 'Carbon Steel', 'CBS', 'AISI', 76, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(53, 'CBS-AIS-1017', 'Carbon Steel AISI1017', 'Carbon Steel', 'CBS', 'AISI', 33, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(54, 'CBS-AIS-1020', 'Carbon Steel AISI1020', 'Carbon Steel', 'CBS', 'AISI', 43, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 8, 2),
(55, 'CBS-AIS-1023', 'Carbon Steel AISI1023', 'Carbon Steel', 'CBS', 'AISI', 35, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.7, NULL, 8, 1),
(56, 'CBS-AIS-1025', 'Carbon Steel AISI1025', 'Carbon Steel', 'CBS', 'AISI', 39, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(57, 'CBS-AIS-1029', 'Carbon Steel AISI1029', 'Carbon Steel', 'CBS', 'AISI', 71, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 9, 2),
(58, 'CBS-AIS-1030', 'Carbon Steel AISI1030', 'Carbon Steel', 'CBS', 'AISI', 6, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 9, 2),
(59, 'CBS-AIS-1038', 'Carbon Steel AISI1038', 'Carbon Steel', 'CBS', 'AISI', 14, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(60, 'CBS-AIS-1040', 'Carbon Steel AISI1040', 'Carbon Steel', 'CBS', 'AISI', 64, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(61, 'CBS-AIS-1043', 'Carbon Steel AISI1043', 'Carbon Steel', 'CBS', 'AISI', 3, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(62, 'CBS-AIS-1045', 'Carbon Steel AISI1045', 'Carbon Steel', 'CBS', 'AISI', 15, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.7, NULL, 8, 1),
(63, 'CBS-AIS-1049', 'Carbon Steel AISI1049', 'Carbon Steel', 'CBS', 'AISI', 46, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(64, 'CBS-AIS-1053', 'Carbon Steel AISI1053', 'Carbon Steel', 'CBS', 'AISI', 62, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(65, 'CBS-AIS-1055', 'Carbon Steel AISI1055', 'Carbon Steel', 'CBS', 'AISI', 34, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(66, 'CBS-AIS-1059', 'Carbon Steel AISI1059', 'Carbon Steel', 'CBS', 'AISI', 22, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(67, 'CBS-AIS-1035', 'Carbon Steel AISI1035', 'Carbon Steel', 'CBS', 'AISI', 27, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(68, 'CBS-AIS-1010', 'Carbon Steel AISI1010', 'Carbon Steel', 'CBS', 'AISI', 42, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(69, 'CBS-AIS-1012', 'Carbon Steel AISI1012', 'Carbon Steel', 'CBS', 'AISI', 14, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(70, 'CBS-AIS-1011', 'Carbon Steel AISI1011', 'Carbon Steel', 'CBS', 'AISI', 47, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 8, 2),
(71, 'CBS-AIS-1014', 'Carbon Steel AISI1014', 'Carbon Steel', 'CBS', 'AISI', 79, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 8, 2),
(72, 'CBS-AIS-1062', 'Carbon Steel AISI1061', 'Carbon Steel', 'CBS', 'AISI', 65, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(73, 'CBS-AIS-1022', 'Carbon Steel AISI1022', 'Carbon Steel', 'CBS', 'AISI', 45, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(74, 'CBS-AIS-1026', 'Carbon Steel AISI1026', 'Carbon Steel', 'CBS', 'AISI', 47, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(75, 'CBS-AIS-1027', 'Carbon Steel AISI1027', 'Carbon Steel', 'CBS', 'AISI', 45, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(76, 'CBS-AIS-1032', 'Carbon Steel AISI1032', 'Carbon Steel', 'CBS', 'AISI', 66, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.7, NULL, 8, 1),
(77, 'SS-SUS-201', 'Stainless Steel SUS201', 'Stainless Steel', 'SS', 'JIS', 50, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(78, 'SS-SUS-301', 'Stainless Steel SUS301', 'Stainless Steel', 'SS', 'JIS', 31, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(79, 'SS-SUS-302', 'Stainless Steel SUS302', 'Stainless Steel', 'SS', 'JIS', 15, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(80, 'SS-SUS-303', 'Stainless Steel SUS303SE', 'Stainless Steel', 'SS', 'JIS', 26, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(81, 'SS-SUS-304', 'Stainless Steel SUS304L', 'Stainless Steel', 'SS', 'JIS', 53, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(82, 'SS-SUS-304L', 'Stainless Steel SUS304LN', 'Stainless Steel', 'SS', 'JIS', 63, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(83, 'SS-SUS-305', 'Stainless Steel SUS305', 'Stainless Steel', 'SS', 'JIS', 34, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(84, 'SS-SUS-310', 'Stainless Steel SUS310S', 'Stainless Steel', 'SS', 'JIS', 27, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(85, 'SS-SUS-316L', 'Stainless Steel SUS316L', 'Stainless Steel', 'SS', 'JIS', 36, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(86, 'SS-SUS-316N', 'Stainless Steel SUS316N', 'Stainless Steel', 'SS', 'JIS', 9, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(87, 'SS-SUS-316', 'Stainless Steel SUS316LN', 'Stainless Steel', 'SS', 'JIS', 43, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(88, 'SS-SUS-317', 'Stainless Steel SUS317', 'Stainless Steel', 'SS', 'JIS', 59, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(89, 'SS-SUS-317L', 'Stainless Steel SUS317L', 'Stainless Steel', 'SS', 'JIS', 55, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(90, 'SS-SUS-890', 'Stainless Steel SUS890L', 'Stainless Steel', 'SS', 'JIS', 26, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(91, 'SS-SUS-321', 'Stainless Steel SUS321', 'Stainless Steel', 'SS', 'JIS', 71, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(92, 'SS-SUS-347', 'Stainless Steel SUS347', 'Stainless Steel', 'SS', 'JIS', 46, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(93, 'SS-SUS-384', 'Stainless Steel SUS384', 'Stainless Steel', 'SS', 'JIS', 18, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(94, 'SS-SUS-XM', 'Stainless Steel SUSXM7', 'Stainless Steel', 'SS', 'JIS', 77, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(95, 'SS-SUS-32J1', 'Stainless Steel SUS329J1', 'Stainless Steel', 'SS', 'JIS', 47, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(96, 'SS-SUS-32J3', 'Stainless Steel SUS329J3L', 'Stainless Steel', 'SS', 'JIS', 13, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(97, 'SS-SUS-32J4', 'Stainless Steel SUS329J4L', 'Stainless Steel', 'SS', 'JIS', 8, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(98, 'SS-SUS-405', 'Stainless Steel SUS405', 'Stainless Steel', 'SS', 'JIS', 29, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(99, 'SS-SUS-429', 'Stainless Steel SUS429', 'Stainless Steel', 'SS', 'JIS', 68, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(100, 'SS-SUS-430', 'Stainless Steel SUS430', 'Stainless Steel', 'SS', 'JIS', 27, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(101, 'SS-SUS-430F', 'Stainless Steel SUS430F', 'Stainless Steel', 'SS', 'JIS', 68, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(102, 'SS-SUS-434', 'Stainless Steel SUS434', 'Stainless Steel', 'SS', 'JIS', 38, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(103, 'SS-SUS-436', 'Stainless Steel SUS436L', 'Stainless Steel', 'SS', 'JIS', 71, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(104, 'SS-SUS-444', 'Stainless Steel SUS444', 'Stainless Steel', 'SS', 'JIS', 14, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(105, 'SS-SUS-403', 'Stainless Steel SUS403', 'Stainless Steel', 'SS', 'JIS', 33, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(106, 'SS-SUS-410', 'Stainless Steel SUS410', 'Stainless Steel', 'SS', 'JIS', 16, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(107, 'SS-SUS-410S', 'Stainless Steel SUS410S', 'Stainless Steel', 'SS', 'JIS', 61, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(108, 'SS-SUS-416', 'Stainless Steel SUS416', 'Stainless Steel', 'SS', 'JIS', 51, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(109, 'SS-SUS-42J2', 'Stainless Steel SUS420J2', 'Stainless Steel', 'SS', 'JIS', 6, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(110, 'SS-SUS-420F', 'Stainless Steel SUS420F', 'Stainless Steel', 'SS', 'JIS', 54, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(111, 'SS-SUS-431', 'Stainless Steel SUS431', 'Stainless Steel', 'SS', 'JIS', 59, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(112, 'SS-SUS-440C', 'Stainless Steel SUS440C', 'Stainless Steel', 'SS', 'JIS', 10, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(113, 'SS-SUS-631', 'Stainless Steel SUS631', 'Stainless Steel', 'SS', 'JIS', 73, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(114, 'SS-SUS-42J7', 'Stainless Steel SUS420J7', 'Stainless Steel', 'SS', 'JIS', 64, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(115, 'SS-SUS-42F2', 'Stainless Steel SUS420F2', 'Stainless Steel', 'SS', 'JIS', 25, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(116, 'SS-SUS-501', 'Stainless Steel SUS501', 'Stainless Steel', 'SS', 'JIS', 20, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(117, 'SS-AIS-3105', 'Stainless Steel AISI3105', 'Stainless Steel', 'SS', 'AISI', 59, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(118, 'SS-AIS-201', 'Stainless Steel AISI201', 'Stainless Steel', 'SS', 'AISI', 30, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(119, 'SS-AIS-202', 'Stainless Steel AISI202', 'Stainless Steel', 'SS', 'AISI', 60, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(120, 'SS-AIS-301', 'Stainless Steel AISI301', 'Stainless Steel', 'SS', 'AISI', 39, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(121, 'SS-AIS-302', 'Stainless Steel AISI302', 'Stainless Steel', 'SS', 'AISI', 23, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(122, 'SS-AIS-302B', 'Stainless Steel AISI302B', 'Stainless Steel', 'SS', 'AISI', 29, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(123, 'SS-AIS-303', 'Stainless Steel AISI303', 'Stainless Steel', 'SS', 'AISI', 48, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(124, 'SS-AIS-303S', 'Stainless Steel AISI303SE', 'Stainless Steel', 'SS', 'AISI', 65, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(125, 'SS-AIS-304', 'Stainless Steel AISI304', 'Stainless Steel', 'SS', 'AISI', 1, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(126, 'SS-AIS-304L', 'Stainless Steel AISI304L', 'Stainless Steel', 'SS', 'AISI', 66, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(127, 'SS-AIS-304N', 'Stainless Steel AISI304N', 'Stainless Steel', 'SS', 'AISI', 8, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(128, 'SS-AIS-30LN', 'Stainless Steel AISI304LN', 'Stainless Steel', 'SS', 'AISI', 10, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(129, 'SS-S30-431', 'Stainless Steel S30431', 'Stainless Steel', 'SS', 'AISI', 23, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(130, 'SS-AIS-305', 'Stainless Steel AISI305', 'Stainless Steel', 'SS', 'AISI', 34, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(131, 'SS-AIS-309', 'Stainless Steel AISI309S', 'Stainless Steel', 'SS', 'AISI', 58, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(132, 'SS-AIS-3105', 'Stainless Steel AISI310S', 'Stainless Steel', 'SS', 'AISI', 49, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(133, 'SS-AIS-316', 'Stainless Steel AISI316', 'Stainless Steel', 'SS', 'AISI', 56, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(134, 'SS-AIS-316L', 'Stainless Steel AISI316L', 'Stainless Steel', 'SS', 'AISI', 50, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(135, 'SS-AIS-316N', 'Stainless Steel AISI316N', 'Stainless Steel', 'SS', 'AISI', 69, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(136, 'SS-AIS-36LN', 'Stainless Steel AISI316LN', 'Stainless Steel', 'SS', 'AISI', 25, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(137, 'SS-AIS-317', 'Stainless Steel AISI317', 'Stainless Steel', 'SS', 'AISI', 41, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(138, 'SS-AIS-317L', 'Stainless Steel AISI317L', 'Stainless Steel', 'SS', 'AISI', 25, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(139, 'SS-N08-904', 'Stainless Steel N08904', 'Stainless Steel', 'SS', 'AISI', 15, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(140, 'SS-AIS-321', 'Stainless Steel AISI321', 'Stainless Steel', 'SS', 'AISI', 56, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(141, 'SS-AIS-347', 'Stainless Steel AISI347', 'Stainless Steel', 'SS', 'AISI', 76, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(142, 'SS-AIS-384', 'Stainless Steel AISI384', 'Stainless Steel', 'SS', 'AISI', 7, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(143, 'SS-AIS-30CU', 'Stainless Steel AISI304CU', 'Stainless Steel', 'SS', 'AISI', 58, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(144, 'SS-AIS-329', 'Stainless Steel AISI329', 'Stainless Steel', 'SS', 'AISI', 20, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(145, 'SS-S31-803', 'Stainless Steel S31803', 'Stainless Steel', 'SS', 'AISI', 40, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(146, 'SS-S31-260', 'Stainless Steel S31260', 'Stainless Steel', 'SS', 'AISI', 26, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(147, 'SS-AIS-405', 'Stainless Steel AISI405', 'Stainless Steel', 'SS', 'AISI', 24, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(148, 'SS-AIS-429', 'Stainless Steel AISI429', 'Stainless Steel', 'SS', 'AISI', 52, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(149, 'SS-AIS-430', 'Stainless Steel AISI430', 'Stainless Steel', 'SS', 'AISI', 72, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(150, 'SS-AIS-430F', 'Stainless Steel AISI430F', 'Stainless Steel', 'SS', 'AISI', 38, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(151, 'SS-AIS-434', 'Stainless Steel AISI434', 'Stainless Steel', 'SS', 'AISI', 38, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(152, 'SS-AIS-436', 'Stainless Steel AISI436', 'Stainless Steel', 'SS', 'AISI', 8, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(153, 'SS-AIS-444', 'Stainless Steel AISI444', 'Stainless Steel', 'SS', 'AISI', 68, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(154, 'SS-AIS-403', 'Stainless Steel AISI403', 'Stainless Steel', 'SS', 'AISI', 6, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(155, 'SS-AIS-410', 'Stainless Steel AISI410', 'Stainless Steel', 'SS', 'AISI', 12, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(156, 'SS-AIS-410S', 'Stainless Steel AISI410S', 'Stainless Steel', 'SS', 'AISI', 58, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(157, 'SS-AIS-416', 'Stainless Steel AISI416', 'Stainless Steel', 'SS', 'AISI', 57, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(158, 'SS-AIS-426', 'Stainless Steel AISI426', 'Stainless Steel', 'SS', 'AISI', 2, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(159, 'SS-AIS-429', 'Stainless Steel AISI429', 'Stainless Steel', 'SS', 'AISI', 64, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(160, 'SS-AIS-420F', 'Stainless Steel AISI420F', 'Stainless Steel', 'SS', 'AISI', 72, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(161, 'SS-AIS-439', 'Stainless Steel AISI439', 'Stainless Steel', 'SS', 'AISI', 16, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(162, 'SS-AIS-440A', 'Stainless Steel AISI440A', 'Stainless Steel', 'SS', 'AISI', 41, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(163, 'SS-AIS-440B', 'Stainless Steel AISI440B', 'Stainless Steel', 'SS', 'AISI', 79, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(164, 'SS-AIS-440C', 'Stainless Steel AISI440C', 'Stainless Steel', 'SS', 'AISI', 15, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(165, 'SS-S44-02L', 'Stainless Steel S44020L', 'Stainless Steel', 'SS', 'AISI', 23, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(166, 'SS-S17-400', 'Stainless Steel S17400', 'Stainless Steel', 'SS', 'AISI', 31, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(167, 'SS-S17-700', 'Stainless Steel S17700', 'Stainless Steel', 'SS', 'AISI', 21, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(168, 'SS-AIS-422', 'Stainless Steel AISI422', 'Stainless Steel', 'SS', 'AISI', 56, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(169, 'SS-AIS-424', 'Stainless Steel AISI424', 'Stainless Steel', 'SS', 'AISI', 43, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(170, 'SS-AIS-420F', 'Stainless Steel AISI420F', 'Stainless Steel', 'SS', 'AISI', 0, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(171, 'SS-AIS-436', 'Stainless Steel AISI436', 'Stainless Steel', 'SS', 'AISI', 67, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(172, 'SS-AIS-441A', 'Stainless Steel AISI441A', 'Stainless Steel', 'SS', 'AISI', 45, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(173, 'SS-AIS-441B', 'Stainless Steel AISI441B', 'Stainless Steel', 'SS', 'AISI', 3, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(174, 'SS-AIS-441C', 'Stainless Steel AISI441C', 'Stainless Steel', 'SS', 'AISI', 17, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(175, 'SS-S44-02N', 'Stainless Steel S44020N', 'Stainless Steel', 'SS', 'AISI', 1, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(176, 'SS-S17-406', 'Stainless Steel S17406', 'Stainless Steel', 'SS', 'AISI', 32, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(177, 'SS-S17-767', 'Stainless Steel S17767', 'Stainless Steel', 'SS', 'AISI', 65, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(178, 'SS-AIS-420Z', 'Stainless Steel AISI420Z', 'Stainless Steel', 'SS', 'AISI', 14, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(179, 'SS-AIS-420G', 'Stainless Steel AISI420G', 'Stainless Steel', 'SS', 'AISI', 60, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(180, 'SS-AIS-420F', 'Stainless Steel AISI420F', 'Stainless Steel', 'SS', 'AISI', 20, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(181, 'SS-AIS-438', 'Stainless Steel AISI438', 'Stainless Steel', 'SS', 'AISI', 43, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(182, 'SS-AIS-444A', 'Stainless Steel AISI444A', 'Stainless Steel', 'SS', 'AISI', 37, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(183, 'SS-AIS-444B', 'Stainless Steel AISI444B', 'Stainless Steel', 'SS', 'AISI', 78, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(184, 'SS-AIS-444C', 'Stainless Steel AISI444C', 'Stainless Steel', 'SS', 'AISI', 66, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.4, NULL, 5, 1),
(185, 'SS-S44-020', 'Stainless Steel S44020', 'Stainless Steel', 'SS', 'AISI', 70, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(186, 'SS-S17-457', 'Stainless Steel S17457', 'Stainless Steel', 'SS', 'AISI', 45, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(187, 'SS-S17-748', 'Stainless Steel S17748', 'Stainless Steel', 'SS', 'AISI', 40, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(188, 'SS-AIS-420N', 'Stainless Steel AISI420N', 'Stainless Steel', 'SS', 'AISI', 47, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(189, 'SS-AIS-420J', 'Stainless Steel AISI420J', 'Stainless Steel', 'SS', 'AISI', 55, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(190, 'SS-AIS-420F', 'Stainless Steel AISI420F', 'Stainless Steel', 'SS', 'AISI', 3, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(191, 'SS-AIS-431', 'Stainless Steel AISI431', 'Stainless Steel', 'SS', 'AISI', 66, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(192, 'HRS-SUH-616', 'Heat-Resiting Steel SUH616', 'Heat Resiting Steel', 'HRS', 'JIS', 57, NULL, 'CV. Bintang Jaya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(193, 'HRS-SUH-21', 'Heat-Resiting Steel SUH21', 'Heat Resiting Steel', 'HRS', 'JIS', 16, NULL, 'CV. Bintang Jaya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 8, 2),
(194, 'HRS-SUH-409', 'Heat-Resiting Steel SUH409', 'Heat Resiting Steel', 'HRS', 'JIS', 63, NULL, 'CV. Bintang Jaya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(195, 'HRS-SUH-409L', 'Heat-Resiting Steel SUH409L', 'Heat Resiting Steel', 'HRS', 'JIS', 18, NULL, 'CV. Bintang Jaya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 8, 2),
(196, 'HRS-SUH-446', 'Heat-Resiting Steel SUH446', 'Heat Resiting Steel', 'HRS', 'JIS', 3, NULL, 'CV. Bintang Jaya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(197, 'HRS-SUH-1', 'Heat-Resiting Steel SUH1', 'Heat Resiting Steel', 'HRS', 'JIS', 56, NULL, 'CV. Bintang Jaya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(198, 'HRS-SUH-3', 'Heat-Resiting Steel SUH3', 'Heat Resiting Steel', 'HRS', 'JIS', 68, NULL, 'CV. Bintang Jaya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 8, 2),
(199, 'HRS-SUH-4', 'Heat-Resiting Steel SUH4', 'Heat Resiting Steel', 'HRS', 'JIS', 77, NULL, 'CV. Bintang Jaya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(200, 'HRS-SUH-11', 'Heat-Resiting Steel SUH11', 'Heat Resiting Steel', 'HRS', 'JIS', 5, NULL, 'CV. Bintang Jaya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(201, 'HRS-SUH-600', 'Heat-Resiting Steel SUH600', 'Heat Resiting Steel', 'HRS', 'JIS', 21, NULL, 'CV. Bintang Jaya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(202, 'HRS-AIS-309', 'Heat-Resiting Steel AISI309', 'Heat Resiting Steel', 'HRS', 'AISI', 78, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(203, 'HRS-AIS-310', 'Heat-Resiting Steel AISI310', 'Heat Resiting Steel', 'HRS', 'AISI', 15, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 6, 2),
(204, 'HRS-N08-330', 'Heat-Resiting Steel N08330', 'Heat Resiting Steel', 'HRS', 'AISI', 10, NULL, 'Rakan Pratama Mandiri', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(205, 'HRS-AIS-409', 'Heat-Resiting Steel AISI409', 'Heat Resiting Steel', 'HRS', 'AISI', 19, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(206, 'HRS-AIS-446', 'Heat-Resiting Steel AISI446', 'Heat Resiting Steel', 'HRS', 'AISI', 35, NULL, 'Inti Sarana Kreasi', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(207, 'FS-SF-540', 'Forged Steel SF540A', 'Forged Steel', 'FS', 'JIS', 57, NULL, 'Willy Teknhik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(208, 'FS-SF-440', 'Forged Steel SF440A', 'Forged Steel', 'FS', 'JIS', 3, NULL, 'Willy Teknhik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(209, 'FS-SF-490', 'Forged Steel SF490A', 'Forged Steel', 'FS', 'JIS', 74, NULL, 'Willy Teknhik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(210, 'FS-SF-580', 'Forged Steel SF580A', 'Forged Steel', 'FS', 'JIS', 63, NULL, 'Willy Teknhik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(211, 'FS-AIS-4345', 'Stainless Steel AISI4345', 'Forged Steel', 'FS', 'AISI', 46, NULL, 'Willy Teknhik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(212, 'AAM-A-40', 'Al-Alloy Metal A40', 'Al-Alloy-Metal', 'AAM', 'JIS', 23, NULL, 'Centralindo Sealing', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(213, 'AAM-SNM-625', 'Al-Alloy Metal SNCM625', 'Al-Alloy-Metal', 'AAM', 'JIS', 62, NULL, 'Centralindo Sealing', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(214, 'AAM-SNM-630', 'Al-Alloy Metal SNCM630', 'Al-Alloy-Metal', 'AAM', 'JIS', 38, NULL, 'Centralindo Sealing', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(215, 'AAM-SNM-815', 'Al-Alloy Metal SNCM815', 'Al-Alloy-Metal', 'AAM', 'JIS', 73, NULL, 'Centralindo Sealing', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(216, 'AAM-AIS-1046', 'Al-Alloy-Metal AISI1046', 'Al-Alloy-Metal', 'AAM', 'AISI', 6, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(217, 'WM-WJ-2', 'White Metal WJ2', 'White Metal', 'WM', 'JIS', 77, NULL, 'Willy Teknhik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(218, 'WM-WJ-2B', 'White Metal WJ2B', 'White Metal', 'WM', 'JIS', 13, NULL, 'Willy Teknhik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(219, 'WM-AIS-1045', 'White Metal AISI1045', 'White Metal', 'WM', 'AISI', 33, NULL, 'PT. Gemilang Mahakarya', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.9, NULL, 10, 2),
(220, 'NMS-AIS-4340', 'Ni-Cr-Mo Steel AISI4340', 'Ni-Cr-Mo Steel', 'NMS', 'AISI', 52, NULL, 'Willy Teknhik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2),
(221, 'NCS-SNC-236', 'Ni-Cr Steel SNC236', 'Ni-Cr Steel', 'NCS', 'JIS', 5, NULL, 'Centralindo Sealing', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(222, 'NCS-SNC-631', 'Ni-Cr Steel SNC631', 'Ni-Cr Steel', 'NCS', 'JIS', 67, NULL, 'Centralindo Sealing', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(223, 'NCS-SNC-815', 'Ni-Cr Steel SNC815', 'Ni-Cr Steel', 'NCS', 'JIS', 29, NULL, 'Centralindo Sealing', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(224, 'NCS-SNM-220', 'Ni-Cr Steel SNCM220', 'Ni-Cr Steel', 'NCS', 'JIS', 29, NULL, 'Centralindo Sealing', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(225, 'NCS-SNM-240', 'Ni-Cr Steel SNCM240', 'Ni-Cr Steel', 'NCS', 'JIS', 6, NULL, 'Centralindo Sealing', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(226, 'NCS-SNM-420', 'Ni-Cr Steel SNCM420', 'Ni-Cr Steel', 'NCS', 'JIS', 19, NULL, 'Centralindo Sealing', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.6, NULL, 7, 2),
(227, 'NCS-SNM-431', 'Ni-Cr Steel SNCM431', 'Ni-Cr Steel', 'NCS', 'JIS', 20, NULL, 'Centralindo Sealing', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(228, 'NCS-AIS-8620', 'Ni-Cr Steel AISI8620', 'Ni-Cr Steel', 'NCS', 'AISI', 61, NULL, 'Centralindo Sealing', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 5, 2),
(229, 'NCS-AIS-8637', 'Ni-Cr Steel AISI8637', 'Ni-Cr Steel', 'NCS', 'AISI', 27, NULL, 'Centralindo Sealing', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 0.5, NULL, 6, 2),
(230, 'NCS-AIS-4320', 'Ni-Cr Steel AISI4320', 'Ni-Cr Steel', 'NCS', 'AISI', 47, NULL, 'Willy Teknhik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 1, NULL, 11, 2),
(231, 'NCS-AIS-4340', 'Ni-Cr Steel AISI4340', 'Ni-Cr Steel', 'NCS', 'AISI', 56, NULL, 'Willy Teknhik', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 0.8, NULL, 9, 2);

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
  `status_repairing` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kebutuhan_materials`
--

INSERT INTO `kebutuhan_materials` (`id`, `komponen`, `kode`, `nama`, `jenis`, `satuan`, `jumlah`, `harga_beli`, `suplier`, `tanggal_masuk`, `tanggal_update`, `created_at`, `updated_at`, `status_verif`, `status_repairing`) VALUES
(19, 'LABYRINTH PACKING', 'JIS-1015', 'JIS1015', 'JIS', 'Meter', 1, 200000, 'Rakan Pratama Mandiri', '2022-08-21', '2022-08-21', '2022-08-21 03:13:46', '2022-08-21 03:14:32', 5, NULL);

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
(34, '2022_08_20_103535_add_tanggal_to_repairings', 25);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelian_materials`
--

INSERT INTO `pembelian_materials` (`id`, `kode`, `nama`, `jenis`, `satuan`, `jumlah`, `harga_beli`, `suplier`, `tanggal_masuk`, `tanggal_update`, `status_verif`, `created_at`, `updated_at`) VALUES
(12, 'JIS-1015', 'JIS1015', 'JIS', 'Meter', 2, 200000, 'Rakan Pratama Mandiri', NULL, NULL, 2, '2022-08-18 19:05:18', '2022-08-20 11:32:34'),
(14, 'JIS-1015', 'JIS1015', 'JIS', 'Meter', 1, 100000, 'Rakan Pratama Mandiri', NULL, NULL, 2, '2022-08-18 19:38:15', '2022-08-20 11:36:28'),
(15, 'AIS-1016', 'AISI1016', 'AISI', 'Meter', 2, 500000, 'Rakan Pratama Mandiri', NULL, NULL, 2, '2022-08-19 05:51:15', '2022-08-20 11:37:10'),
(16, 'AIS-1016', 'AISI1016', 'AISI', 'Meter', 2, 500000, 'Rakan Pratama Mandiri', '2022-08-20', '2022-08-20', NULL, '2022-08-20 16:41:54', '2022-08-20 16:41:54');

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
  `status_verif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `komponen_turbins`
--
ALTER TABLE `komponen_turbins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `pembelian_materials`
--
ALTER TABLE `pembelian_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `repairings`
--
ALTER TABLE `repairings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
