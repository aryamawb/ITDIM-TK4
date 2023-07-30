-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2023 at 04:45 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roti_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori_masakan`
--

CREATE TABLE `kategori_masakan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_masakan`
--

INSERT INTO `kategori_masakan` (`id`, `nama`) VALUES
(1, 'Roti'),
(2, 'Cake'),
(3, 'Pastry'),
(4, 'Snack'),
(5, 'Pie'),
(6, 'Donut');

-- --------------------------------------------------------

--
-- Table structure for table `masakan`
--

CREATE TABLE `masakan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `harga` int(7) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masakan`
--

INSERT INTO `masakan` (`id`, `nama`, `id_kategori`, `harga`, `gambar`) VALUES
(1, 'Croissant', 3, 25000, 'kwasong.jpg'),
(2, 'Bolen', 4, 30000, 'bolen.jpg'),
(3, 'Roti Bakar India', 1, 10000, 'food_table_cafe_snack_sauce_coca_43756_800x600.jpg'),
(4, 'Birthday cake', 5, 220000, 'Chocolate-Birthday-Cake.jpg'),
(5, 'Donat warna warni', 6, 12000, 'donat.jpg'),
(6, 'Sweet bagels', 4, 20000, 'bagel.jpg'),
(7, 'Donat Polos', 6, 10000, 'donat-polos.jpg'),
(8, 'Blueberry Pie', 5, 80000, 'pai.jpg'),
(9, 'Pumpkin Pie', 5, 75000, 'pai1.jpg'),
(10, 'Roti Tawar', 1, 22000, 'roti-tawar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `id` int(11) NOT NULL,
  `no_meja` int(3) NOT NULL,
  `jumlah_kursi` int(11) NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id`, `no_meja`, `jumlah_kursi`, `status`) VALUES
(1, 1, 4, '1'),
(3, 2, 5, '1'),
(4, 3, 2, '0');

-- --------------------------------------------------------

--
-- Table structure for table `ordermeja`
--

CREATE TABLE `ordermeja` (
  `id` int(11) NOT NULL,
  `no_meja` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordermeja`
--

INSERT INTO `ordermeja` (`id`, `no_meja`, `tanggal`, `keterangan`) VALUES
(5, 3, '2023-05-30', 'Lunch'),
(6, 1, '2023-05-30', 'Dinner');

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`nama`, `alamat`) VALUES
('ROTI BERUTU', 'Jl. Seroja raya No. A6');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`) VALUES
(14, 'izza', '$2y$10$nsP8IrzxLB8GloUa/mzQ0e9McWnZcBefqNwod4rTLTmBZCgRLQp4y'),
(15, 'anggi', '$2y$10$M9K14JvM9PeqTmd.H..fQ.V8fWou3In2YrBJa9bYf/O7E0vto9YoC'),
(16, 'alip', '$2y$10$dz6vyTwPSI9Kyqqb5XwhX.7K.YhK9aw2LN.h6ilaoZzPKTKqic7fq'),
(24, 'anggi@gmail.com', '$2y$10$pdILVheHNtidbzPTOPIbA.l0wbIlb1Q.6BHOB8Yolg2jVwt9HRE8G'),
(33, 'manajer', '$2y$10$fk8c4d7dz8DNVw0JGTu2MedNLGXvwvhtikB.CtOiZuW5.7G.xy7V6');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `masakan` varchar(100) NOT NULL,
  `total` varchar(11) NOT NULL,
  `no_meja` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `harga` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `masakan`, `total`, `no_meja`, `tanggal`, `harga`, `status`) VALUES
(6, 'Molen,Gado Gado,Roti Bakar India', '1,2,2', 2, '2023-05-30', '5000,10000,10000', ''),
(8, 'Molen,Gado Gado,Pizza', '2,3,1', 1, '2023-05-31', '5000,10000,25000', 'Diproses'),
(10, 'Croissant,Bolen,Roti Bakar India', '2,1,3', 0, '2023-06-30', '25000,30000,10000', 'Diproses'),
(11, 'Birthday cake,Sweet bagels', '1,3', 0, '2023-06-30', '220000,20000', 'Diproses'),
(12, 'Roti Bakar India', '5', 0, '2023-06-30', '10000', 'Diproses'),
(13, 'Donat warna warni,Donat Polos', '10,6', 0, '2023-06-30', '12000,10000', 'Diproses'),
(14, 'Pumpkin Pie,Roti Tawar', '1,2', 0, '2023-06-30', '75000,22000', 'Diproses'),
(15, 'Roti Bakar India,Birthday cake', '3,1', 0, '2023-06-30', '10000,220000', ''),
(16, 'Donat Polos,Bolen', '2,1', 0, '2023-06-30', '10000,30000', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori_masakan`
--
ALTER TABLE `kategori_masakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masakan`
--
ALTER TABLE `masakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_meja` (`no_meja`);

--
-- Indexes for table `ordermeja`
--
ALTER TABLE `ordermeja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD KEY `nama` (`nama`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori_masakan`
--
ALTER TABLE `kategori_masakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `masakan`
--
ALTER TABLE `masakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordermeja`
--
ALTER TABLE `ordermeja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
