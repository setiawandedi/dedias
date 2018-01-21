-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2018 at 03:18 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dedi-advanced`
--

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1512822984),
('m130524_201442_init', 1512822989),
('m180118_153405_create_tbl_tahun_ajaran_table', 1516289661),
('m180118_153440_create_tbl_kelas_table', 1516289698),
('m180118_153524_create_tbl_data_induk_siswa_table', 1516289742),
('m180118_153600_create_tbl_kelas_tahun_ajaran_table', 1516289783),
('m180118_153653_create_tbl_siswa_kelas_tahun_ajaran_table', 1516289832);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `name`, `comment`) VALUES
(1, 'dedi agus setiawan', 'saya hadir hari ini'),
(2, 'daniel', 'saya hadir');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_induk_siswa`
--

CREATE TABLE `tbl_data_induk_siswa` (
  `id` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_ortu` varchar(255) NOT NULL,
  `tahun_masuk` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_induk_siswa`
--

INSERT INTO `tbl_data_induk_siswa` (`id`, `nis`, `nama`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `nama_ortu`, `tahun_masuk`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, 1001, 'Agus', 'Jl Pangeran Sarip Jepara', 'Jepara', '1997-04-10', 'Suhaimin', 2014, '2018-01-21 19:04:49', '2018-01-21 19:04:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id`, `nama`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'x-1', '2018-01-19 00:20:34', '2018-01-19 00:20:34', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas_tahun_ajaran`
--

CREATE TABLE `tbl_kelas_tahun_ajaran` (
  `id` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas_tahun_ajaran`
--

INSERT INTO `tbl_kelas_tahun_ajaran` (`id`, `id_tahun_ajaran`, `id_kelas`, `created_at`, `updated_by`, `created_by`, `updated_at`) VALUES
(6, 3, 1, '2018-01-21 19:06:39', 1, 1, '2018-01-21 19:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa_kelas_tahun_ajaran`
--

CREATE TABLE `tbl_siswa_kelas_tahun_ajaran` (
  `id` int(11) NOT NULL,
  `id_data_induk_siswa` int(11) NOT NULL,
  `id_kelas_tahun_ajaran` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa_kelas_tahun_ajaran`
--

INSERT INTO `tbl_siswa_kelas_tahun_ajaran` (`id`, `id_data_induk_siswa`, `id_kelas_tahun_ajaran`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 2, 6, '2018-01-21 19:07:19', '2018-01-21 19:07:19', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tahun_ajaran`
--

CREATE TABLE `tbl_tahun_ajaran` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tahun_ajaran`
--

INSERT INTO `tbl_tahun_ajaran` (`id`, `nama`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, 'Macos', '2018-01-21 17:37:03', '2018-01-21 17:37:03', 1, 1),
(3, '2012-2013', '2018-01-21 18:51:42', '2018-01-21 18:51:42', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dediagussetiawan', 'QuIRBuSQDV-u1k_A0J7eVh57utLb4x8A', '$2y$13$BG0VkInUIEMgvTvprowESuAAPimAyUjLfUKB0.vD0ZuT2khgh9b4S', NULL, 'dediagussetiawan625@gmail.com', 10, 1512823001, 1512823001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_data_induk_siswa`
--
ALTER TABLE `tbl_data_induk_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-tbl_data_induk_siswa-created_by` (`created_by`),
  ADD KEY `idx-tbl_data_induk_siswa-updated_by` (`updated_by`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-tbl_kelas-created_by` (`created_by`),
  ADD KEY `idx-tbl_kelas-updated_by` (`updated_by`);

--
-- Indexes for table `tbl_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_kelas_tahun_ajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-tbl_kelas_tahun_ajaran-id_tahun_ajaran` (`id_tahun_ajaran`),
  ADD KEY `idx-tbl_kelas_tahun_ajaran-id_kelas` (`id_kelas`),
  ADD KEY `idx-tbl_kelas_tahun_ajaran-created_by` (`created_by`),
  ADD KEY `idx-tbl_kelas_tahun_ajaran-updated_at` (`updated_by`);

--
-- Indexes for table `tbl_siswa_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_siswa_kelas_tahun_ajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-tbl_siswa_kelas_tahun_ajaran-id_data_induk_siswa` (`id_data_induk_siswa`),
  ADD KEY `idx-tbl_siswa_kelas_tahun_ajaran-id_kelas_tahun_ajaran` (`id_kelas_tahun_ajaran`),
  ADD KEY `idx-tbl_siswa_kelas_tahun_ajaran-created_by` (`created_by`),
  ADD KEY `idx-tbl_siswa_kelas_tahun_ajaran-updated_by` (`updated_by`);

--
-- Indexes for table `tbl_tahun_ajaran`
--
ALTER TABLE `tbl_tahun_ajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-tbl_tahun_ajaran-created_by` (`created_by`),
  ADD KEY `idx-tbl_tahun_ajaran-updated_by` (`updated_by`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_data_induk_siswa`
--
ALTER TABLE `tbl_data_induk_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_kelas_tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_siswa_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_siswa_kelas_tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_tahun_ajaran`
--
ALTER TABLE `tbl_tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_data_induk_siswa`
--
ALTER TABLE `tbl_data_induk_siswa`
  ADD CONSTRAINT `fk-tbl_data_induk_siswa-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_data_induk_siswa-updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD CONSTRAINT `fk-tbl_kelas-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_kelas-updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_kelas_tahun_ajaran`
  ADD CONSTRAINT `fk-tbl_kelas_tahun_ajaran-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_kelas_tahun_ajaran-id_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `tbl_kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_kelas_tahun_ajaran-id_tahun_ajaran` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tbl_tahun_ajaran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_kelas_tahun_ajaran-updated_at` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_siswa_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_siswa_kelas_tahun_ajaran`
  ADD CONSTRAINT `fk-tbl_siswa_kelas_tahun_ajaran-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_siswa_kelas_tahun_ajaran-id_data_induk_siswa` FOREIGN KEY (`id_data_induk_siswa`) REFERENCES `tbl_data_induk_siswa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_siswa_kelas_tahun_ajaran-id_kelas_tahun_ajaran` FOREIGN KEY (`id_kelas_tahun_ajaran`) REFERENCES `tbl_kelas_tahun_ajaran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_siswa_kelas_tahun_ajaran-updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_tahun_ajaran`
--
ALTER TABLE `tbl_tahun_ajaran`
  ADD CONSTRAINT `fk-tbl_tahun_ajaran-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_tahun_ajaran-updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
