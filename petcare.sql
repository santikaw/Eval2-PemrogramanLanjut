-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 06:11 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama_pet` varchar(50) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `ras` varchar(50) DEFAULT NULL,
  `pemilik` varchar(50) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama_pet`, `jenis`, `ras`, `pemilik`, `telepon`) VALUES
(1, 'mingmong', 'kucing', 'mixdom', 'santika', '085870808772'),
(2, 'reno', 'Kucing', 'mixdom', 'Santika', '12345567889'),
(3, 'Mango', 'Kucing', 'Suruh Short Hair', 'Nandang', '08812345678'),
(4, 'Molly', 'Anjing', 'Anjing Galak', 'Adit', '0293812345'),
(5, 'Meng', 'Kucing', 'Kucing Oyen', 'Nandang', '089123432457');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id`, `nama`, `harga`) VALUES
(1, 'Kitten Daily Grooming', '50000'),
(2, 'Medical Grooming', '75000'),
(3, 'White Fur Treatment', '75000'),
(4, 'Lion Cut', '75000');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `stok` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`, `stok`) VALUES
(1, 'MeO Creamy Treats', '8000', '345'),
(2, 'Friskies Party Mix 400g', '70000', '132'),
(3, 'Whiskas Wetfood Tuna Adult', '7000', '459'),
(4, 'Whiskas Dry Junior Mackarel', '65000', '234'),
(5, 'Kitchen Flavor Beauty', '45000', '120');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
