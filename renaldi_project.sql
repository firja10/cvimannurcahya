-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Agu 2022 pada 05.27
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
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_materials`
--

INSERT INTO `data_materials` (`id`, `kode`, `nama`, `kategori`, `jenis`, `stock`, `harga_beli`, `created_at`, `updated_at`) VALUES
(1, 'AIS-1015', 'AISI1015', 'Cast Steel', 'AISI', 2, 2000000, '2022-08-07 18:38:04', '2022-08-07 18:38:04'),
(2, 'AIS-1016', 'AISI1016', 'Cast Steel', 'AISI', 3, 250000, '2022-08-07 18:43:18', '2022-08-07 18:43:18'),
(4, 'JIS-1015', 'JIS1015', 'Carbon Steel', 'JIS', 3, 200000, '2022-08-07 19:51:29', '2022-08-07 19:51:29'),
(5, 'JIS-1016', 'JIS1016', 'Stainless Steel', 'JIS', 23, 3000000, '2022-08-07 20:21:12', '2022-08-07 20:21:12');

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
(8, 'Ni-Cr-Mau Steel', 'NMS', '2022-08-18 14:44:35', '2022-08-19 14:44:35'),
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
  `status_verif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '001-TC', 'TURBINE CASING', '2022-08-11 14:44:35', '2022-08-11 14:44:35'),
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
(18, '2022_08_15_030610_add_pemilik_to_users', 11);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelian_materials`
--

INSERT INTO `pembelian_materials` (`id`, `kode`, `nama`, `jenis`, `satuan`, `jumlah`, `harga_beli`, `suplier`, `created_at`, `updated_at`) VALUES
(1, 'AIS202', 'Transistor', 'AISI', 'Buah', 23, NULL, NULL, '2022-08-08 06:06:31', '2022-08-08 06:06:31');

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
  `updated_at` timestamp NULL DEFAULT NULL
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `komponen_turbins`
--
ALTER TABLE `komponen_turbins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
