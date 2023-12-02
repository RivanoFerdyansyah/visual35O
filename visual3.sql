-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 03:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visual3`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jk` enum('laki-laki','perempuan') DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nik`, `nama`, `jk`, `no_hp`, `alamat`, `email`) VALUES
(1, '48', 'Zee', 'perempuan', '0848', 'FX', 'Zee@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hanggar`
--

CREATE TABLE `hanggar` (
  `id` int(11) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `nama_hanggar` varchar(15) DEFAULT NULL,
  `parkir_hanggar` varchar(15) DEFAULT NULL,
  `kondisi_pesawat` enum('Perbaikan','Layak Terbang') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hanggar`
--

INSERT INTO `hanggar` (`id`, `pegawai_id`, `nama_hanggar`, `parkir_hanggar`, `kondisi_pesawat`) VALUES
(1, 1, 'Alpha', 'A1', 'Layak Terbang');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jabatan` enum('Manager','Supervisor','Staff') DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `jk` enum('Laki-Laki','Perempuan') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `jabatan`, `no_hp`, `alamat`, `jk`) VALUES
(1, 'Rivano', 'Manager', '0998', 'Gambut', 'Laki-Laki');

-- --------------------------------------------------------

--
-- Table structure for table `pesawat`
--

CREATE TABLE `pesawat` (
  `id` int(11) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `hanggar_id` int(11) DEFAULT NULL,
  `nama_pesawat` varchar(15) DEFAULT NULL,
  `jenis_pesawat` enum('Besar','Sedang','Kecil') DEFAULT NULL,
  `kode_pesawat` varchar(10) DEFAULT NULL,
  `status_pesawat` enum('Tersedia','Tidak Tersedia') DEFAULT NULL,
  `harga_sewa` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesawat`
--

INSERT INTO `pesawat` (`id`, `pegawai_id`, `hanggar_id`, `nama_pesawat`, `jenis_pesawat`, `kode_pesawat`, `status_pesawat`, `harga_sewa`) VALUES
(1, 1, 1, 'Gulfstream 400', 'Kecil', 'GS402', 'Tersedia', '50000000');

-- --------------------------------------------------------

--
-- Table structure for table `sewa`
--

CREATE TABLE `sewa` (
  `id` int(11) NOT NULL,
  `pesawat_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `rute` varchar(20) DEFAULT NULL,
  `tanggal_sewa` varchar(10) DEFAULT NULL,
  `waktu` varchar(5) DEFAULT NULL,
  `harga_sewa` varchar(50) DEFAULT NULL,
  `jenis_penerbangan` enum('Domestik','Internasional') DEFAULT NULL,
  `status` enum('Lunas','Tidak Lunas') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `pesawat_id` int(11) DEFAULT NULL,
  `sewa_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `tanggal_sewa` varchar(10) DEFAULT NULL,
  `jenis_pesawat` enum('Besar','Sedang','Kecil') DEFAULT NULL,
  `perjalanan` enum('Pulang Pergi','Sekali Jalan') DEFAULT NULL,
  `jenis_penerbangan` enum('Domestik','Internasional') DEFAULT NULL,
  `total_pembayaran` varchar(50) DEFAULT NULL,
  `pembayaran` enum('M-Banking','Paylater') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `level` enum('pegawai','customer','admin') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(1, 'Vano', 'Maeng', 'admin'),
(3, 'Zee', 'Zoya', 'pegawai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hanggar`
--
ALTER TABLE `hanggar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawai_id` (`pegawai_id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesawat`
--
ALTER TABLE `pesawat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawai_id` (`pegawai_id`,`hanggar_id`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pesawat_id` (`pesawat_id`,`customer_id`,`pegawai_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pesawat_id` (`pesawat_id`,`sewa_id`,`customer_id`,`pegawai_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hanggar`
--
ALTER TABLE `hanggar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesawat`
--
ALTER TABLE `pesawat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sewa`
--
ALTER TABLE `sewa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
