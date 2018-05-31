-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2018 at 11:15 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mini_apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `id` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id`, `pass`) VALUES
('admines', 'admines'),
('admins', 'admins'),
('adminshaber', 'adminshaber'),
('reinandy', 'reinandy'),
('wqerty', 'wqerty');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id` int(10) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `obat_untuk` varchar(15) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id`, `nama_obat`, `obat_untuk`, `jenis`, `stok`) VALUES
(1, 'a', 'Dewasa', 'bubuk', 2000),
(2, 'ab', 'Anak-anak', 'cair', 20000),
(3, 'abc', 'Dewasa', 'kapsul', 25000),
(4, 'obat', 'Dewasa', 'cair', 20000),
(5, 'abcde', 'Anak-anak', 'kapsul', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(10) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `obat_untuk` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `jumlah_beli` int(50) NOT NULL,
  `total` int(50) NOT NULL,
  `bayar` int(50) NOT NULL,
  `kembali` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `nama_obat`, `obat_untuk`, `jenis`, `harga`, `jumlah_beli`, `total`, `bayar`, `kembali`) VALUES
(1, 'abc', 'Dewasa', 'cair', 25000, 2, 50000, 100000, 50000),
(2, 'a', 'Dewasa', 'bubuk', 2000, 5, 10000, 50000, 40000),
(3, 'ab', 'Anak-anak', 'cair', 20000, 2, 40000, 50000, 10000),
(4, 'ab', 'Anak-anak', 'cair', 20000, 3, 60000, 70000, 10000),
(5, 'a', 'Dewasa', 'bubuk', 2000, 4, 8000, 10000, 2000),
(6, 'abcd', 'Anak-anak', 'cair', 5000, 2, 10000, 100000, 90000),
(7, 'abc', 'Dewasa', 'kapsul', 25000, 2, 50000, 500000, 450000),
(8, 'ab', 'Anak-anak', 'cair', 20000, 2, 40000, 50000, 10000),
(9, 'ab', 'Anak-anak', 'cair', 20000, 4, 80000, 100000, 20000),
(10, 'ab', 'Anak-anak', 'cair', 20000, 1, 20000, 50000, 30000),
(11, 'abc', 'Dewasa', 'kapsul', 25000, 2, 50000, 499999, 449999),
(12, 'obat', 'Dewasa', 'cair', 20000, 2, 40000, 50000, 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_obat`
--
ALTER TABLE `tb_obat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
