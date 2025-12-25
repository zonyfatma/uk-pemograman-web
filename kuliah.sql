-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 11 Nov 2025 pada 16.35
-- Versi server: 9.1.0
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuliah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

DROP TABLE IF EXISTS `dosen`;
CREATE TABLE IF NOT EXISTS `dosen` (
  `nidn` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`nidn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama`) VALUES
('1001', 'Muhamad Radzi Rathomi, S.Kom., M.Cs.	'),
('1002', 'Tekad Matulatan, S.Sos., S.Kom., M.Inf.Tech.'),
('1003', 'Hendra Kurniawan, S.Kom., M.Sc.Eng., Ph.D'),
('1004', 'Fortia Magfira, M.Kom'),
('1005', 'Firman Apriansyah, S.Si., M.T.'),
('1006', 'Berta Erwin Slam, S.T., M.Kom'),
('1007', 'Rifaldi Herikson, M.Kom'),
('1008', 'Nolan Efranda, M.Kom');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

DROP TABLE IF EXISTS `jadwal`;
CREATE TABLE IF NOT EXISTS `jadwal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(50) NOT NULL,
  `id_mata_kuliah` int NOT NULL,
  `id_ruangan` int NOT NULL,
  `nidn` varchar(20) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `jam` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_mata_kuliah` (`id_mata_kuliah`),
  KEY `id_ruangan` (`id_ruangan`),
  KEY `nidn` (`nidn`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `nama_kelas`, `id_mata_kuliah`, `id_ruangan`, `nidn`, `hari`, `jam`) VALUES
(1, 'C', 1, 8, '1006', 'Kamis', '13:00 - 15:30'),
(2, 'C', 2, 6, '1002', 'Jumat', '13:00 - 15:30'),
(3, 'C', 3, 3, '1003', 'Kamis', '07.30 - 10.00'),
(4, 'C', 4, 6, '1004', 'Kamis', '10:00 - 12:30'),
(5, 'C', 5, 4, '1004', 'Jumat', '07.30 - 10.00'),
(6, 'C', 6, 2, '1005', 'Rabu', '15:30 - 17.00'),
(7, 'A', 1, 7, '1006', 'Kamis', '13:00 - 15:30'),
(8, 'A', 2, 6, '1002', 'Selasa', '13:00 - 15:30'),
(9, 'A', 3, 6, '1001', 'Selasa', '10:00 - 12:30'),
(10, 'A', 4, 7, '1005', 'Jumat', '13:00 - 15:30'),
(11, 'A', 5, 3, '1007', 'Kamis', '10:00 - 12:30'),
(12, 'A', 6, 2, '1008', 'Senin', '15:30 - 17.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `nim` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`) VALUES
('2301020087', 'Masry Ryzki Yanditar'),
('2301020111', 'Khairul Ilham'),
('2301020028', 'Arya Putra Santoso'),
('2301020009', 'Rani Nadia Sihombing'),
('2301020020', 'Zony Fatma Mulia'),
('2301020021', 'Elfa Dwi Cahyani');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

DROP TABLE IF EXISTS `mata_kuliah`;
CREATE TABLE IF NOT EXISTS `mata_kuliah` (
  `id_mata_kuliah` int NOT NULL AUTO_INCREMENT,
  `kode_mata_kuliah` varchar(20) NOT NULL,
  `nama_mata_kuliah` varchar(150) NOT NULL,
  `sks` int NOT NULL,
  PRIMARY KEY (`id_mata_kuliah`),
  UNIQUE KEY `kode_mata_kuliah` (`kode_mata_kuliah`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_mata_kuliah`, `kode_mata_kuliah`, `nama_mata_kuliah`, `sks`) VALUES
(1, 'IF11017', 'Pemrograman Web', 4),
(2, 'IF11021', 'Penambangan Data', 3),
(3, 'IF11031', 'Sistem Terdistribusi', 3),
(4, 'IF12006', 'Metode Numerik', 3),
(5, 'INF11025', 'Perancangan dan Implementasi Perangkat Lunak', 3),
(6, 'INF12005', 'Statistika dan Probabilitas', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_mutu`
--

DROP TABLE IF EXISTS `nilai_mutu`;
CREATE TABLE IF NOT EXISTS `nilai_mutu` (
  `nilai_huruf` varchar(3) NOT NULL,
  `nilai_mutu` decimal(3,2) NOT NULL,
  PRIMARY KEY (`nilai_huruf`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `nilai_mutu`
--

INSERT INTO `nilai_mutu` (`nilai_huruf`, `nilai_mutu`) VALUES
('A', 4.00),
('A-', 3.50),
('B', 3.00),
('B-', 2.75),
('C', 2.50),
('C-', 2.00),
('D', 1.00),
('E', 0.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rencana_studi`
--

DROP TABLE IF EXISTS `rencana_studi`;
CREATE TABLE IF NOT EXISTS `rencana_studi` (
  `id_rencana_studi` int NOT NULL AUTO_INCREMENT,
  `nim` varchar(20) NOT NULL,
  `id_jadwal` int NOT NULL,
  `nilai_angka` decimal(5,2) DEFAULT NULL,
  `nilai_huruf` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id_rencana_studi`),
  KEY `nim` (`nim`),
  KEY `id_jadwal` (`id_jadwal`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `rencana_studi`
--

INSERT INTO `rencana_studi` (`id_rencana_studi`, `nim`, `id_jadwal`, `nilai_angka`, `nilai_huruf`) VALUES
(1, '2021001', 1, 4.00, 'A'),
(2, '2021001', 2, 4.00, 'A'),
(3, '2021001', 3, 4.00, 'A'),
(4, '2301020087', 1, 4.00, 'A'),
(5, '2301020087', 2, 4.00, 'A'),
(6, '2301020087', 3, 4.00, 'A'),
(7, '2301020087', 4, 4.00, 'A'),
(8, '2301020087', 5, 4.00, 'A'),
(9, '2301020087', 6, 4.00, 'A'),
(10, '2301020111', 1, 4.00, 'A'),
(11, '2301020111', 2, 4.00, 'A'),
(12, '2301020111', 3, 4.00, 'A'),
(14, '2301020009', 7, 4.00, 'A'),
(15, '2301020009', 8, 4.00, 'A'),
(16, '2301020009', 9, 4.00, 'A'),
(17, '2301020009', 10, 4.00, 'A'),
(18, '2301020009', 11, 4.00, 'A'),
(19, '2301020009', 12, 4.00, 'A'),
(20, '2301020111', 4, 4.00, 'A'),
(21, '2301020111', 5, 4.00, 'A'),
(22, '2301020111', 6, 4.00, 'A'),
(23, '2301020028', 7, 4.00, 'A'),
(24, '2301020028', 8, 4.00, 'A'),
(25, '2301020028', 9, 4.00, 'A'),
(26, '2301020028', 10, 4.00, 'A'),
(27, '2301020028', 12, 4.00, 'A'),
(28, '2301020028', 11, 4.00, 'A'),
(29, '2301020021', 7, 4.00, 'A'),
(30, '2301020021', 8, 4.00, 'A'),
(31, '2301020021', 9, 4.00, 'A'),
(32, '2301020021', 10, 4.00, 'A'),
(33, '2301020021', 11, 4.00, 'A'),
(34, '2301020021', 6, 4.00, 'A'),
(35, '2301020020', 7, 4.00, 'A'),
(36, '2301020020', 8, 4.00, 'A'),
(37, '2301020020', 9, 4.00, 'A'),
(38, '2301020020', 10, 4.00, 'A'),
(39, '2301020020', 11, 4.00, 'A'),
(40, '2301020020', 6, 4.00, 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

DROP TABLE IF EXISTS `ruangan`;
CREATE TABLE IF NOT EXISTS `ruangan` (
  `id_ruangan` int NOT NULL AUTO_INCREMENT,
  `nama_ruangan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_ruangan`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`id_ruangan`, `nama_ruangan`) VALUES
(1, 'Ruang 1'),
(2, 'Ruang 2'),
(3, 'Ruang 3'),
(4, 'Ruang 4'),
(5, 'Ruang 5'),
(6, 'Ruang 6'),
(7, 'Ruang 7'),
(8, 'Ruang 8'),
(9, 'Ruang 9'),
(10, 'Ruang 10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','mahasiswa','dosen') NOT NULL,
  `kode_peran` varchar(50) DEFAULT NULL,
  `ref_nim` varchar(20) DEFAULT NULL,
  `ref_nidn` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama_user`, `username`, `password`, `role`, `kode_peran`, `ref_nim`, `ref_nidn`) VALUES
(1, 'Admin', 'admin', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'admin', NULL, NULL, NULL),
(2, 'Masry Ryzki Yanditar', 'creamy', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'mahasiswa', NULL, '2301020087', NULL),
(3, 'Muhamad Radzi Rathomi', 'pakradzi', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'dosen', NULL, NULL, '1001'),
(4, 'Tekad Matulatan', 'paktekad', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'dosen', NULL, NULL, '1002'),
(5, 'Hendra Kurniawan', 'pakhendra', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'dosen', NULL, 'NULL', '1003'),
(6, 'Fortia Magfira', 'bufortia', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'dosen', NULL, 'NULL', '1004'),
(7, 'Firman Apriansyah', 'pakfirman', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'dosen', NULL, 'NULL', '1005'),
(8, 'Khairul Ilham', 'kilham', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'mahasiswa', NULL, '2301020111', 'NULL'),
(9, 'Arya Putra  Santoso', 'arya', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'mahasiswa', NULL, '2301020028', 'NULL'),
(10, 'Rani Nadia Sihombing', 'rani', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'mahasiswa', NULL, '2301020009', 'NULL'),
(11, 'Zony Fatma Mulia', 'fatma', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'mahasiswa', NULL, '2301020020', 'NULL'),
(12, 'Elfa Dwi Cahyani', 'elfa', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'mahasiswa', NULL, '2301020021', 'NULL'),
(13, 'Berta Erwin Slam', 'pakberta', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'dosen', NULL, NULL, '1006'),
(14, 'Rifaldi Herikson', 'pakrifaldi', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'dosen', NULL, NULL, '1007'),
(15, 'Nolan Efranda', 'paknolan', '$2y$10$/UKCFFWZPWPEGonDX/xxU..8m7tAwv8lhSIzFypFATCDlb3BswxWm', 'dosen', NULL, NULL, '1008');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
