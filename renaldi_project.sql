-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Agu 2022 pada 11.28
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `d_ss` int(11) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  `Z` float DEFAULT NULL,
  `SS` int(11) DEFAULT NULL,
  `d_rop` int(11) DEFAULT NULL,
  `ROP` int(11) DEFAULT NULL,
  `AU` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_materials`
--

INSERT INTO `data_materials` (`id`, `kode`, `nama`, `kategori`, `link_kategori`, `jenis`, `stock`, `harga_beli`, `created_at`, `updated_at`, `d_ss`, `L`, `Z`, `SS`, `d_rop`, `ROP`, `AU`) VALUES
(1, 'AIS-1015', 'AISI1015', 'Cast Steel', 'CS', 'AISI', 2, 2500000, '2022-08-07 18:38:04', '2022-08-18 01:27:00', 10, 3, 1.64, 15, 20, 45, 45),
(2, 'AIS-1016', 'AISI1016', 'Cast Steel', 'CS', 'AISI', 350, 250000, '2022-08-07 18:43:18', '2022-08-18 01:24:48', NULL, 20, NULL, 100, NULL, 300, 300),
(4, 'JIS-1015', 'JIS1015', 'Carbon Steel', 'CBS', 'JIS', 3, 200000, '2022-08-07 19:51:29', '2022-08-07 19:51:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'JIS-1016', 'JIS1016', 'Stainless Steel', 'SS', 'JIS', 23, 3000000, '2022-08-07 20:21:12', '2022-08-07 20:21:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'CS-SCP-1', 'Cast Steel SCPH1', 'Cast Steel', 'CS', 'SCP', 35, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 30, 7),
(7, 'CS-SCR-415', 'Cast Steel SCR415H', 'Cast Steel', 'CS', 'SCR', 47, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 27, 6),
(8, 'CS-SCR-420', 'Cast Steel SCR420H', 'Cast Steel', 'CS', 'SCR', 52, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 30, 7),
(9, 'CS-SCR-430', 'Cast Steel SCR430H', 'Cast Steel', 'CS', 'SCR', 33, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 43, 10),
(10, 'CS-SCR-435', 'Cast Steel SCR435H', 'Cast Steel', 'CS', 'SCR', 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 41, 9),
(11, 'CS-SCR-440', 'Cast Steel SCR440H', 'Cast Steel', 'CS', 'SCR', 62, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 27, 6),
(12, 'CS-SCM-415', 'Cast Steel SCM415H', 'Cast Steel', 'CS', 'SCM', 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 22, 5),
(13, 'CS-SCM-418', 'Cast Steel SCM418H', 'Cast Steel', 'CS', 'SCM', 27, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 24, 5),
(14, 'CS-SCM-419', 'Cast Steel SCM419H', 'Cast Steel', 'CS', 'SCM', 11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 28, 6),
(15, 'CS-SCM-420', 'Cast Steel SCM420H', 'Cast Steel', 'CS', 'SCM', 43, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 38, 9),
(16, 'CS-SCM-435', 'Cast Steel SCM435H', 'Cast Steel', 'CS', 'SCM', 76, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 23, 5),
(17, 'CS-SCM-440', 'Cast Steel SCM440H', 'Cast Steel', 'CS', 'SCM', 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 6, NULL, 19, 4),
(18, 'CS-SCM-445', 'Cast Steel SCM445H', 'Cast Steel', 'CS', 'SCM', 47, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 36, 8),
(19, 'CS-SCM-822', 'Cast Steel SCM822H', 'Cast Steel', 'CS', 'SCM', 25, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 21, 5),
(20, 'CS-SCP-5', 'Cast Steel SCPH5', 'Cast Steel', 'CS', 'SCP', 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 16, NULL, 47, 10),
(21, 'CS-SCM-480', 'Cast Steel SCM480H', 'Cast Steel', 'CS', 'SCM', 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 26, 6),
(22, 'CS-SCM-490', 'Cast Steel SCM490H', 'Cast Steel', 'CS', 'SCM', 59, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 42, 9),
(23, 'CS-SCM-465', 'Cast Steel SCM465H', 'Cast Steel', 'CS', 'SCM', 58, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 41, 9),
(24, 'CS-SCP-2', 'Cast Steel SCPH2', 'Cast Steel', 'CS', 'SCP', 62, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 35, 8),
(25, 'CS-SCR-450', 'Cast Steel SCR450H', 'Cast Steel', 'CS', 'SCR', 80, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 20, 4),
(26, 'CS-SCR-465', 'Cast Steel SCR465H', 'Cast Steel', 'CS', 'SCR', 42, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 34, 8),
(27, 'CS-SUS-42J8', 'Cast Steel SUS420J8', 'Cast Steel', 'CS', 'SUS', 57, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 32, 7),
(28, 'CS-SUS-438', 'Cast Steel SUS438', 'Cast Steel', 'CS', 'SUS', 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 6, NULL, 19, 4),
(29, 'CS-SUS-440B', 'Cast Steel SUS440B', 'Cast Steel', 'CS', 'SUS', 72, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 22, 5),
(30, 'CS-SUS-440F', 'Cast Steel SUS440F', 'Cast Steel', 'CS', 'SUS', 77, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 36, 8),
(31, 'CS-SUS-634', 'Cast Steel SUS634', 'Cast Steel', 'CS', 'SC', 75, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 26, 6),
(32, 'CBS-SC-15', 'Carbon Steel S15C', 'Carbon Steel', 'CBS', 'SC', 44, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 17, NULL, 51, 7),
(33, 'CBS-SC-17', 'Carbon Steel S17C', 'Carbon Steel', 'CBS', 'SC', 64, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 17, NULL, 51, 7),
(34, 'CBS-SC-20', 'Carbon Steel S20C', 'Carbon Steel', 'CBS', 'SC', 57, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 20, NULL, 59, 8),
(35, 'CBS-SC-22', 'Carbon Steel S22C', 'Carbon Steel', 'CBS', 'SC', 77, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 20, NULL, 61, 8),
(36, 'CBS-SC-25', 'Carbon Steel S25C', 'Carbon Steel', 'CBS', 'SC', 48, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 17, NULL, 51, 7),
(37, 'CBS-SC-28', 'Carbon Steel S28C', 'Carbon Steel', 'CBS', 'SC', 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 12, NULL, 37, 5),
(38, 'CBS-SC-30', 'Carbon Steel S30C', 'Carbon Steel', 'CBS', 'SC', 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 16, NULL, 49, 7),
(39, 'CBS-SC-38', 'Carbon Steel S38C', 'Carbon Steel', 'CBS', 'SC', 72, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 19, NULL, 58, 8),
(40, 'CBS-SC-40', 'Carbon Steel S40C', 'Carbon Steel', 'CBS', 'SC', 80, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 22, NULL, 66, 9),
(41, 'CBS-SC-43', 'Carbon Steel S43C', 'Carbon Steel', 'CBS', 'SC', 54, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 17, NULL, 50, 7),
(42, 'CBS-SC-45', 'Carbon Steel S45C', 'Carbon Steel', 'CBS', 'SC', 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 12, NULL, 37, 5),
(43, 'CBS-SC-50', 'Carbon Steel S50C', 'Carbon Steel', 'CBS', 'SC', 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 15, NULL, 44, 6),
(44, 'CBS-SC-53', 'Carbon Steel S53C', 'Carbon Steel', 'CBS', 'SC', 53, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 10, NULL, 31, 4),
(45, 'CBS-SC-55', 'Carbon Steel S55C', 'Carbon Steel', 'CBS', 'SC', 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 20, NULL, 59, 8),
(46, 'CBS-SC-58', 'Carbon Steel S58C', 'Carbon Steel', 'CBS', 'SC', 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 15, NULL, 44, 6),
(47, 'CBS-SC-35', 'Carbon Steel S35C', 'Carbon Steel', 'CBS', 'SC', 43, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 19, NULL, 57, 8),
(48, 'CBS-SC-21', 'Carbon Steel S21C', 'Carbon Steel', 'CBS', 'SC', 70, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 21, NULL, 64, 9),
(49, 'CBS-SC-35', 'Carbon Steel S35C', 'Carbon Steel', 'CBS', 'SC', 60, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 20, NULL, 59, 8),
(50, 'CBS-SC-78', 'Carbon Steel S78C', 'Carbon Steel', 'CBS', 'SC', 72, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 25, NULL, 76, 10),
(51, 'CBS-SC-44', 'Carbon Steel S44C', 'Carbon Steel', 'CBS', 'SC', 43, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 13, NULL, 38, 5),
(52, 'CBS-AIS-1015', 'Carbon Steel AISI1015', 'Carbon Steel', 'CBS', 'AISI', 76, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 13, NULL, 38, 5),
(53, 'CBS-AIS-1017', 'Carbon Steel AISI1017', 'Carbon Steel', 'CBS', 'AISI', 33, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 21, NULL, 63, 8),
(54, 'CBS-AIS-1020', 'Carbon Steel AISI1020', 'Carbon Steel', 'CBS', 'AISI', 43, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 21, NULL, 63, 8),
(55, 'CBS-AIS-1023', 'Carbon Steel AISI1023', 'Carbon Steel', 'CBS', 'AISI', 35, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 23, NULL, 70, 9),
(56, 'CBS-AIS-1025', 'Carbon Steel AISI1025', 'Carbon Steel', 'CBS', 'AISI', 39, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 24, NULL, 72, 10),
(57, 'CBS-AIS-1029', 'Carbon Steel AISI1029', 'Carbon Steel', 'CBS', 'AISI', 71, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 24, NULL, 71, 10),
(58, 'CBS-AIS-1030', 'Carbon Steel AISI1030', 'Carbon Steel', 'CBS', 'AISI', 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 15, NULL, 44, 6),
(59, 'CBS-AIS-1038', 'Carbon Steel AISI1038', 'Carbon Steel', 'CBS', 'AISI', 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 26, NULL, 77, 10),
(60, 'CBS-AIS-1040', 'Carbon Steel AISI1040', 'Carbon Steel', 'CBS', 'AISI', 64, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 21, NULL, 62, 8),
(61, 'CBS-AIS-1043', 'Carbon Steel AISI1043', 'Carbon Steel', 'CBS', 'AISI', 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 24, NULL, 72, 10),
(62, 'CBS-AIS-1045', 'Carbon Steel AISI1045', 'Carbon Steel', 'CBS', 'AISI', 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 22, NULL, 65, 9),
(63, 'CBS-AIS-1049', 'Carbon Steel AISI1049', 'Carbon Steel', 'CBS', 'AISI', 46, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 13, NULL, 39, 5),
(64, 'CBS-AIS-1053', 'Carbon Steel AISI1053', 'Carbon Steel', 'CBS', 'AISI', 62, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 26, NULL, 78, 10),
(65, 'CBS-AIS-1055', 'Carbon Steel AISI1055', 'Carbon Steel', 'CBS', 'AISI', 34, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 26, NULL, 78, 10),
(66, 'CBS-AIS-1059', 'Carbon Steel AISI1059', 'Carbon Steel', 'CBS', 'AISI', 22, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 16, NULL, 49, 7),
(67, 'CBS-AIS-1035', 'Carbon Steel AISI1035', 'Carbon Steel', 'CBS', 'AISI', 27, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 12, NULL, 37, 5),
(68, 'CBS-AIS-1010', 'Carbon Steel AISI1010', 'Carbon Steel', 'CBS', 'AISI', 42, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 20, NULL, 59, 8),
(69, 'CBS-AIS-1012', 'Carbon Steel AISI1012', 'Carbon Steel', 'CBS', 'AISI', 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 26, NULL, 77, 10),
(70, 'CBS-AIS-1011', 'Carbon Steel AISI1011', 'Carbon Steel', 'CBS', 'AISI', 47, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 18, NULL, 54, 7),
(71, 'CBS-AIS-1014', 'Carbon Steel AISI1014', 'Carbon Steel', 'CBS', 'AISI', 79, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 19, NULL, 58, 8),
(72, 'CBS-AIS-1062', 'Carbon Steel AISI1061', 'Carbon Steel', 'CBS', 'AISI', 65, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 16, NULL, 49, 7),
(73, 'CBS-AIS-1022', 'Carbon Steel AISI1022', 'Carbon Steel', 'CBS', 'AISI', 45, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 17, NULL, 51, 7),
(74, 'CBS-AIS-1026', 'Carbon Steel AISI1026', 'Carbon Steel', 'CBS', 'AISI', 47, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 15, NULL, 46, 6),
(75, 'CBS-AIS-1027', 'Carbon Steel AISI1027', 'Carbon Steel', 'CBS', 'AISI', 45, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 12, NULL, 36, 5),
(76, 'CBS-AIS-1032', 'Carbon Steel AISI1032', 'Carbon Steel', 'CBS', 'AISI', 66, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 22, NULL, 65, 9),
(77, 'SS-SUS-201', 'Stainless Steel SUS201', 'Stainless Steel', 'SS', 'SUS', 50, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 24, 5),
(78, 'SS-SUS-301', 'Stainless Steel SUS301', 'Stainless Steel', 'SS', 'SUS', 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 43, 10),
(79, 'SS-SUS-302', 'Stainless Steel SUS302', 'Stainless Steel', 'SS', 'SUS', 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 27, 6),
(80, 'SS-SUS-303', 'Stainless Steel SUS303SE', 'Stainless Steel', 'SS', 'SUS', 26, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 33, 7),
(81, 'SS-SUS-304', 'Stainless Steel SUS304L', 'Stainless Steel', 'SS', 'SUS', 53, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 15, NULL, 44, 10),
(82, 'SS-SUS-304L', 'Stainless Steel SUS304LN', 'Stainless Steel', 'SS', 'SUS', 63, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 26, 6),
(83, 'SS-SUS-305', 'Stainless Steel SUS305', 'Stainless Steel', 'SS', 'SUS', 34, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 20, 5),
(84, 'SS-SUS-310', 'Stainless Steel SUS310S', 'Stainless Steel', 'SS', 'SUS', 27, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 34, 8),
(85, 'SS-SUS-316L', 'Stainless Steel SUS316L', 'Stainless Steel', 'SS', 'SUS', 36, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 23, 5),
(86, 'SS-SUS-316N', 'Stainless Steel SUS316N', 'Stainless Steel', 'SS', 'SUS', 9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 42, 9),
(87, 'SS-SUS-316', 'Stainless Steel SUS316LN', 'Stainless Steel', 'SS', 'SUS', 43, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 36, 8),
(88, 'SS-SUS-317', 'Stainless Steel SUS317', 'Stainless Steel', 'SS', 'SUS', 59, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 16, NULL, 47, 10),
(89, 'SS-SUS-317L', 'Stainless Steel SUS317L', 'Stainless Steel', 'SS', 'SUS', 55, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 24, 5),
(90, 'SS-SUS-890', 'Stainless Steel SUS890L', 'Stainless Steel', 'SS', 'SUS', 26, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 15, NULL, 46, 10),
(91, 'SS-SUS-321', 'Stainless Steel SUS321', 'Stainless Steel', 'SS', 'SUS', 71, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 36, 8),
(92, 'SS-SUS-347', 'Stainless Steel SUS347', 'Stainless Steel', 'SS', 'SUS', 46, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 27, 6),
(93, 'SS-SUS-384', 'Stainless Steel SUS384', 'Stainless Steel', 'SS', 'SUS', 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 33, 7),
(94, 'SS-SUS-XM', 'Stainless Steel SUSXM7', 'Stainless Steel', 'SS', 'SUS', 77, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 31, 7),
(95, 'SS-SUS-32J1', 'Stainless Steel SUS329J1', 'Stainless Steel', 'SS', 'SUS', 47, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 35, 8),
(96, 'SS-SUS-32J3', 'Stainless Steel SUS329J3L', 'Stainless Steel', 'SS', 'SUS', 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 36, 8),
(97, 'SS-SUS-32J4', 'Stainless Steel SUS329J4L', 'Stainless Steel', 'SS', 'SUS', 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 29, 6),
(98, 'SS-SUS-405', 'Stainless Steel SUS405', 'Stainless Steel', 'SS', 'SUS', 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 33, 7),
(99, 'SS-SUS-429', 'Stainless Steel SUS429', 'Stainless Steel', 'SS', 'SUS', 68, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 32, 7),
(100, 'SS-SUS-430', 'Stainless Steel SUS430', 'Stainless Steel', 'SS', 'SUS', 27, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 15, NULL, 46, 10),
(101, 'SS-SUS-430F', 'Stainless Steel SUS430F', 'Stainless Steel', 'SS', 'SUS', 68, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 15, NULL, 46, 10),
(102, 'SS-SUS-434', 'Stainless Steel SUS434', 'Stainless Steel', 'SS', 'SUS', 38, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 27, 6),
(103, 'SS-SUS-436', 'Stainless Steel SUS436L', 'Stainless Steel', 'SS', 'SUS', 71, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 35, 8),
(104, 'SS-SUS-444', 'Stainless Steel SUS444', 'Stainless Steel', 'SS', 'SUS', 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 21, 5),
(105, 'SS-SUS-403', 'Stainless Steel SUS403', 'Stainless Steel', 'SS', 'SUS', 33, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 29, 7),
(106, 'SS-SUS-410', 'Stainless Steel SUS410', 'Stainless Steel', 'SS', 'SUS', 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 15, NULL, 46, 10),
(107, 'SS-SUS-410S', 'Stainless Steel SUS410S', 'Stainless Steel', 'SS', 'SUS', 61, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 15, NULL, 45, 10),
(108, 'SS-SUS-416', 'Stainless Steel SUS416', 'Stainless Steel', 'SS', 'SUS', 51, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 30, 7),
(109, 'SS-SUS-42J2', 'Stainless Steel SUS420J2', 'Stainless Steel', 'SS', 'SUS', 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 24, 5),
(110, 'SS-SUS-420F', 'Stainless Steel SUS420F', 'Stainless Steel', 'SS', 'SUS', 54, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 21, 5),
(111, 'SS-SUS-431', 'Stainless Steel SUS431', 'Stainless Steel', 'SS', 'SUS', 59, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 36, 8),
(112, 'SS-SUS-440C', 'Stainless Steel SUS440C', 'Stainless Steel', 'SS', 'SUS', 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 39, 9),
(113, 'SS-SUS-631', 'Stainless Steel SUS631', 'Stainless Steel', 'SS', 'SUS', 73, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 21, 5),
(114, 'SS-SUS-42J7', 'Stainless Steel SUS420J7', 'Stainless Steel', 'SS', 'SUS', 64, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 38, 9),
(115, 'SS-SUS-42F2', 'Stainless Steel SUS420F2', 'Stainless Steel', 'SS', 'SUS', 25, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 41, 9),
(116, 'SS-SUS-501', 'Stainless Steel SUS501', 'Stainless Steel', 'SS', 'SUS', 20, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 34, 8),
(117, 'SS-AIS-3105', 'Stainless Steel AISI3105', 'Stainless Steel', 'SS', 'AISI', 59, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 33, 7),
(118, 'SS-AIS-201', 'Stainless Steel AISI201', 'Stainless Steel', 'SS', 'AISI', 30, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 43, 10),
(119, 'SS-AIS-202', 'Stainless Steel AISI202', 'Stainless Steel', 'SS', 'AISI', 60, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 39, 9),
(120, 'SS-AIS-301', 'Stainless Steel AISI301', 'Stainless Steel', 'SS', 'AISI', 39, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 21, 5),
(121, 'SS-AIS-302', 'Stainless Steel AISI302', 'Stainless Steel', 'SS', 'AISI', 23, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 20, 4),
(122, 'SS-AIS-302B', 'Stainless Steel AISI302B', 'Stainless Steel', 'SS', 'AISI', 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 22, 5),
(123, 'SS-AIS-303', 'Stainless Steel AISI303', 'Stainless Steel', 'SS', 'AISI', 48, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 38, 9),
(124, 'SS-AIS-303S', 'Stainless Steel AISI303SE', 'Stainless Steel', 'SS', 'AISI', 65, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 33, 7),
(125, 'SS-AIS-304', 'Stainless Steel AISI304', 'Stainless Steel', 'SS', 'AISI', 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 34, 8),
(126, 'SS-AIS-304L', 'Stainless Steel AISI304L', 'Stainless Steel', 'SS', 'AISI', 66, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 39, 9),
(127, 'SS-AIS-304N', 'Stainless Steel AISI304N', 'Stainless Steel', 'SS', 'AISI', 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 43, 10),
(128, 'SS-AIS-30LN', 'Stainless Steel AISI304LN', 'Stainless Steel', 'SS', 'AISI', 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 22, 5),
(129, 'SS-S30-431', 'Stainless Steel S30431', 'Stainless Steel', 'SS', 'S', 23, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 34, 8),
(130, 'SS-AIS-305', 'Stainless Steel AISI305', 'Stainless Steel', 'SS', 'AISI', 34, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 37, 8),
(131, 'SS-AIS-309', 'Stainless Steel AISI309S', 'Stainless Steel', 'SS', 'AISI', 58, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 41, 9),
(132, 'SS-AIS-3105', 'Stainless Steel AISI310S', 'Stainless Steel', 'SS', 'AISI', 49, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 30, 7),
(133, 'SS-AIS-316', 'Stainless Steel AISI316', 'Stainless Steel', 'SS', 'AISI', 56, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 40, 9),
(134, 'SS-AIS-316L', 'Stainless Steel AISI316L', 'Stainless Steel', 'SS', 'AISI', 50, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 15, NULL, 44, 10),
(135, 'SS-AIS-316N', 'Stainless Steel AISI316N', 'Stainless Steel', 'SS', 'AISI', 69, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 23, 5),
(136, 'SS-AIS-36LN', 'Stainless Steel AISI316LN', 'Stainless Steel', 'SS', 'AISI', 25, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 33, 7),
(137, 'SS-AIS-317', 'Stainless Steel AISI317', 'Stainless Steel', 'SS', 'AISI', 41, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 23, 5),
(138, 'SS-AIS-317L', 'Stainless Steel AISI317L', 'Stainless Steel', 'SS', 'AISI', 25, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 21, 5),
(139, 'SS-N08-904', 'Stainless Steel N08904', 'Stainless Steel', 'SS', 'N', 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 30, 7),
(140, 'SS-AIS-321', 'Stainless Steel AISI321', 'Stainless Steel', 'SS', 'AISI', 56, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 25, 6),
(141, 'SS-AIS-347', 'Stainless Steel AISI347', 'Stainless Steel', 'SS', 'AISI', 76, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 42, 9),
(142, 'SS-AIS-384', 'Stainless Steel AISI384', 'Stainless Steel', 'SS', 'AISI', 7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 26, 6),
(143, 'SS-AIS-30CU', 'Stainless Steel AISI304CU', 'Stainless Steel', 'SS', 'AISI', 58, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 21, 5),
(144, 'SS-AIS-329', 'Stainless Steel AISI329', 'Stainless Steel', 'SS', 'AISI', 20, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 22, 5),
(145, 'SS-S31-803', 'Stainless Steel S31803', 'Stainless Steel', 'SS', 'S', 40, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 30, 7),
(146, 'SS-S31-260', 'Stainless Steel S31260', 'Stainless Steel', 'SS', 'AISI', 26, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 30, 7),
(147, 'SS-AIS-405', 'Stainless Steel AISI405', 'Stainless Steel', 'SS', 'AISI', 24, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 29, 6),
(148, 'SS-AIS-429', 'Stainless Steel AISI429', 'Stainless Steel', 'SS', 'AISI', 52, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 35, 8),
(149, 'SS-AIS-430', 'Stainless Steel AISI430', 'Stainless Steel', 'SS', 'AISI', 72, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 33, 7),
(150, 'SS-AIS-430F', 'Stainless Steel AISI430F', 'Stainless Steel', 'SS', 'AISI', 38, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 40, 9),
(151, 'SS-AIS-434', 'Stainless Steel AISI434', 'Stainless Steel', 'SS', 'AISI', 38, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 15, NULL, 45, 10),
(152, 'SS-AIS-436', 'Stainless Steel AISI436', 'Stainless Steel', 'SS', 'AISI', 8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 20, 4),
(153, 'SS-AIS-444', 'Stainless Steel AISI444', 'Stainless Steel', 'SS', 'AISI', 68, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 15, NULL, 46, 10),
(154, 'SS-AIS-403', 'Stainless Steel AISI403', 'Stainless Steel', 'SS', 'AISI', 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 30, 7),
(155, 'SS-AIS-410', 'Stainless Steel AISI410', 'Stainless Steel', 'SS', 'AISI', 12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 38, 8),
(156, 'SS-AIS-410S', 'Stainless Steel AISI410S', 'Stainless Steel', 'SS', 'AISI', 58, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 24, 5),
(157, 'SS-AIS-416', 'Stainless Steel AISI416', 'Stainless Steel', 'SS', 'AISI', 57, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 37, 8),
(158, 'SS-AIS-426', 'Stainless Steel AISI426', 'Stainless Steel', 'SS', 'AISI', 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 41, 9),
(159, 'SS-AIS-429', 'Stainless Steel AISI429', 'Stainless Steel', 'SS', 'AISI', 64, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 39, 9),
(160, 'SS-AIS-420F', 'Stainless Steel AISI420F', 'Stainless Steel', 'SS', 'AISI', 72, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 21, 5),
(161, 'SS-AIS-439', 'Stainless Steel AISI439', 'Stainless Steel', 'SS', 'AISI', 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 6, NULL, 19, 4),
(162, 'SS-AIS-440A', 'Stainless Steel AISI440A', 'Stainless Steel', 'SS', 'AISI', 41, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 39, 9),
(163, 'SS-AIS-440B', 'Stainless Steel AISI440B', 'Stainless Steel', 'SS', 'AISI', 79, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 15, NULL, 44, 10),
(164, 'SS-AIS-440C', 'Stainless Steel AISI440C', 'Stainless Steel', 'SS', 'AISI', 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 33, 7),
(165, 'SS-S44-02L', 'Stainless Steel S44020L', 'Stainless Steel', 'SS', 'S', 23, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 21, 5),
(166, 'SS-S17-400', 'Stainless Steel S17400', 'Stainless Steel', 'SS', 'S', 31, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 21, 5),
(167, 'SS-S17-700', 'Stainless Steel S17700', 'Stainless Steel', 'SS', 'S', 21, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 21, 5),
(168, 'SS-AIS-422', 'Stainless Steel AISI422', 'Stainless Steel', 'SS', 'AISI', 56, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 24, 5),
(169, 'SS-AIS-424', 'Stainless Steel AISI424', 'Stainless Steel', 'SS', 'AISI', 43, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 16, NULL, 47, 10),
(170, 'SS-AIS-420F', 'Stainless Steel AISI420F', 'Stainless Steel', 'SS', 'AISI', 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 32, 7),
(171, 'SS-AIS-436', 'Stainless Steel AISI436', 'Stainless Steel', 'SS', 'AISI', 67, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 32, 7),
(172, 'SS-AIS-441A', 'Stainless Steel AISI441A', 'Stainless Steel', 'SS', 'AISI', 45, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 21, 5),
(173, 'SS-AIS-441B', 'Stainless Steel AISI441B', 'Stainless Steel', 'SS', 'AISI', 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 41, 9),
(174, 'SS-AIS-441C', 'Stainless Steel AISI441C', 'Stainless Steel', 'SS', 'AISI', 17, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 27, 6),
(175, 'SS-S44-02N', 'Stainless Steel S44020N', 'Stainless Steel', 'SS', 'S', 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 39, 9),
(176, 'SS-S17-406', 'Stainless Steel S17406', 'Stainless Steel', 'SS', 'S', 32, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 29, 6),
(177, 'SS-S17-767', 'Stainless Steel S17767', 'Stainless Steel', 'SS', 'S', 65, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 16, NULL, 47, 10),
(178, 'SS-AIS-420Z', 'Stainless Steel AISI420Z', 'Stainless Steel', 'SS', 'AISI', 14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 21, 5),
(179, 'SS-AIS-420G', 'Stainless Steel AISI420G', 'Stainless Steel', 'SS', 'AISI', 60, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 41, 9),
(180, 'SS-AIS-420F', 'Stainless Steel AISI420F', 'Stainless Steel', 'SS', 'AISI', 20, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 26, 6),
(181, 'SS-AIS-438', 'Stainless Steel AISI438', 'Stainless Steel', 'SS', 'AISI', 43, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 32, 7),
(182, 'SS-AIS-444A', 'Stainless Steel AISI444A', 'Stainless Steel', 'SS', 'AISI', 37, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 33, 7),
(183, 'SS-AIS-444B', 'Stainless Steel AISI444B', 'Stainless Steel', 'SS', 'AISI', 78, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 24, 5),
(184, 'SS-AIS-444C', 'Stainless Steel AISI444C', 'Stainless Steel', 'SS', 'AISI', 66, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 38, 9),
(185, 'SS-S44-020', 'Stainless Steel S44020', 'Stainless Steel', 'SS', 'S', 70, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 43, 10),
(186, 'SS-S17-457', 'Stainless Steel S17457', 'Stainless Steel', 'SS', 'S', 45, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 15, NULL, 45, 10),
(187, 'SS-S17-748', 'Stainless Steel S17748', 'Stainless Steel', 'SS', 'S', 40, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 43, 10),
(188, 'SS-AIS-420N', 'Stainless Steel AISI420N', 'Stainless Steel', 'SS', 'AISI', 47, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 23, 5),
(189, 'SS-AIS-420J', 'Stainless Steel AISI420J', 'Stainless Steel', 'SS', 'AISI', 55, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 7, NULL, 22, 5),
(190, 'SS-AIS-420F', 'Stainless Steel AISI420F', 'Stainless Steel', 'SS', 'AISI', 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 38, 8),
(191, 'SS-AIS-431', 'Stainless Steel AISI431', 'Stainless Steel', 'SS', 'AISI', 66, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 15, NULL, 46, 10),
(192, 'HRS-SUH-616', 'Heat-Resiting Steel SUH616', 'Heat Resiting Steel', 'HRS', 'SUH', 57, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 25, NULL, 76, 10),
(193, 'HRS-SUH-21', 'Heat-Resiting Steel SUH21', 'Heat Resiting Steel', 'HRS', 'SUH', 16, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 24, NULL, 71, 10),
(194, 'HRS-SUH-409', 'Heat-Resiting Steel SUH409', 'Heat Resiting Steel', 'HRS', 'SUH', 63, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 16, NULL, 48, 6),
(195, 'HRS-SUH-409L', 'Heat-Resiting Steel SUH409L', 'Heat Resiting Steel', 'HRS', 'SUH', 18, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 19, NULL, 56, 8),
(196, 'HRS-SUH-446', 'Heat-Resiting Steel SUH446', 'Heat Resiting Steel', 'HRS', 'SUH', 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 21, NULL, 64, 9),
(197, 'HRS-SUH-1', 'Heat-Resiting Steel SUH1', 'Heat Resiting Steel', 'HRS', 'SUH', 56, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 15, NULL, 46, 6),
(198, 'HRS-SUH-3', 'Heat-Resiting Steel SUH3', 'Heat Resiting Steel', 'HRS', 'SUH', 68, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 23, NULL, 69, 9),
(199, 'HRS-SUH-4', 'Heat-Resiting Steel SUH4', 'Heat Resiting Steel', 'HRS', 'SUH', 77, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 23, NULL, 70, 9),
(200, 'HRS-SUH-11', 'Heat-Resiting Steel SUH11', 'Heat Resiting Steel', 'HRS', 'SUH', 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 23, NULL, 70, 9),
(201, 'HRS-SUH-600', 'Heat-Resiting Steel SUH600', 'Heat Resiting Steel', 'HRS', 'SUH', 21, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 18, NULL, 54, 7),
(202, 'HRS-AIS-309', 'Heat-Resiting Steel AISI309', 'Heat Resiting Steel', 'HRS', 'AISI', 78, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 24, 5),
(203, 'HRS-AIS-310', 'Heat-Resiting Steel AISI310', 'Heat Resiting Steel', 'HRS', 'AISI', 15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 29, 7),
(204, 'HRS-N08-330', 'Heat-Resiting Steel N08330', 'Heat Resiting Steel', 'HRS', 'N', 10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 25, 6),
(205, 'HRS-AIS-409', 'Heat-Resiting Steel AISI409', 'Heat Resiting Steel', 'HRS', 'AISI', 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 32, 7),
(206, 'HRS-AIS-446', 'Heat-Resiting Steel AISI446', 'Heat Resiting Steel', 'HRS', 'AISI', 35, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 37, 8),
(207, 'FS-SF-540', 'Forged Steel SF540A', 'Forged Steel', 'FS', 'SF', 57, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 14, NULL, 43, 6),
(208, 'FS-SF-440', 'Forged Steel SF440A', 'Forged Steel', 'FS', 'SF', 3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 18, NULL, 53, 7),
(209, 'FS-SF-490', 'Forged Steel SF490A', 'Forged Steel', 'FS', 'SF', 74, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 16, NULL, 49, 7),
(210, 'FS-SF-580', 'Forged Steel SF580A', 'Forged Steel', 'FS', 'SF', 63, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 24, NULL, 71, 10),
(211, 'FS-AIS-4345', 'Stainless Steel AISI4345', 'Forged Steel', 'FS', 'AISI', 46, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 18, NULL, 54, 7),
(212, 'AAM-A-40', 'Al-Alloy Metal A40', 'Al-Alloy-Metal', 'AAM', 'A', 23, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 23, NULL, 70, 9),
(213, 'AAM-SNM-625', 'Al-Alloy Metal SNCM625', 'Al-Alloy-Metal', 'AAM', 'SNM', 62, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 32, 7),
(214, 'AAM-SNM-630', 'Al-Alloy Metal SNCM630', 'Al-Alloy-Metal', 'AAM', 'SNM', 38, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 12, NULL, 35, 8),
(215, 'AAM-SNM-815', 'Al-Alloy Metal SNCM815', 'Al-Alloy-Metal', 'AAM', 'SNM', 73, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 34, 8),
(216, 'AAM-AIS-1046', 'Al-Alloy-Metal AISI1046', 'Al-Alloy-Metal', 'AAM', 'AISI', 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 12, NULL, 35, 5),
(217, 'WM-WJ-2', 'White Metal WJ2', 'White Metal', 'WM', 'WJ', 77, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 26, NULL, 77, 10),
(218, 'WM-WJ-2B', 'White Metal WJ2B', 'White Metal', 'WM', 'WJ', 13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 14, NULL, 43, 6),
(219, 'WM-AIS-1045', 'White Metal AISI1045', 'White Metal', 'WM', 'AISI', 33, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 16, NULL, 47, 6),
(220, 'NMS-AIS-4340', 'Ni-Cr-Mo Steel AISI4340', 'Ni-Cr-Mo Steel', 'NMS', 'AISI', 52, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 21, NULL, 63, 8),
(221, 'NCS-SNC-236', 'Ni-Cr Steel SNC236', 'Ni-Cr Steel', 'NCS', 'SNC', 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 10, NULL, 29, 6),
(222, 'NCS-SNC-631', 'Ni-Cr Steel SNC631', 'Ni-Cr Steel', 'NCS', 'SNC', 67, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 15, NULL, 45, 10),
(223, 'NCS-SNC-815', 'Ni-Cr Steel SNC815', 'Ni-Cr Steel', 'NCS', 'SNC', 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 24, 5),
(224, 'NCS-SNM-220', 'Ni-Cr Steel SNCM220', 'Ni-Cr Steel', 'NCS', 'SNM', 29, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 27, 6),
(225, 'NCS-SNM-240', 'Ni-Cr Steel SNCM240', 'Ni-Cr Steel', 'NCS', 'SNM', 6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 8, NULL, 23, 5),
(226, 'NCS-SNM-420', 'Ni-Cr Steel SNCM420', 'Ni-Cr Steel', 'NCS', 'SNM', 19, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 14, NULL, 42, 9),
(227, 'NCS-SNM-431', 'Ni-Cr Steel SNCM431', 'Ni-Cr Steel', 'NCS', 'SNM', 20, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 11, NULL, 33, 7),
(228, 'NCS-AIS-8620', 'Ni-Cr Steel AISI8620', 'Ni-Cr Steel', 'NCS', 'AISI', 61, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 9, NULL, 26, 6),
(229, 'NCS-AIS-8637', 'Ni-Cr Steel AISI8637', 'Ni-Cr Steel', 'NCS', 'AISI', 27, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 3, NULL, 13, NULL, 39, 9),
(230, 'NCS-AIS-4320', 'Ni-Cr Steel AISI4320', 'Ni-Cr Steel', 'NCS', 'AISI', 47, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 12, NULL, 37, 5),
(231, 'NCS-AIS-4340', 'Ni-Cr Steel AISI4340', 'Ni-Cr Steel', 'NCS', 'AISI', 56, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 5, NULL, 24, NULL, 73, 10);

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
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_verif` int(11) DEFAULT NULL,
  `status_repairing` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kebutuhan_materials`
--

INSERT INTO `kebutuhan_materials` (`id`, `komponen`, `nama`, `jenis`, `satuan`, `jumlah`, `created_at`, `updated_at`, `status_verif`, `status_repairing`) VALUES
(1, 'Transistor', 'BD139', 'JIS', 'Meter', 23, '2022-08-16 03:54:01', '2022-08-17 23:50:00', 3, NULL),
(3, 'Turbin Casing', 'AISI1016', 'AISI', 'Meter', 23, '2022-08-16 17:37:17', '2022-08-16 17:37:17', NULL, NULL);

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
(24, '2022_08_18_080004_add_average_user_to_data_materials', 17);

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
  `status_verif` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelian_materials`
--

INSERT INTO `pembelian_materials` (`id`, `kode`, `nama`, `jenis`, `satuan`, `jumlah`, `harga_beli`, `suplier`, `status_verif`, `created_at`, `updated_at`) VALUES
(1, 'AIS202', 'Transistor', 'AISI', 'Buah', 23, NULL, NULL, 1, '2022-08-08 06:06:31', '2022-08-08 06:06:31');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `komponen_turbins`
--
ALTER TABLE `komponen_turbins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `pembelian_materials`
--
ALTER TABLE `pembelian_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `repairings`
--
ALTER TABLE `repairings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
