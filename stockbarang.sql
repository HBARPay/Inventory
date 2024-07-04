-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 04, 2024 at 11:24 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockbarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `keluar`
--

CREATE TABLE `keluar` (
  `idkeluar` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `penerima` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keluar`
--

INSERT INTO `keluar` (`idkeluar`, `idbarang`, `tanggal`, `penerima`, `qty`) VALUES
(1, 2, '2024-03-08 09:12:09', 'Komal', 5000),
(2, 6, '2024-03-12 16:38:44', 'jajang', 2000),
(4, 8, '2024-03-12 16:42:22', 'kola', 100),
(5, 8, '2024-03-12 17:46:53', 'Humas', 5000),
(7, 11, '2024-03-12 17:58:06', 'Agung', 5000),
(9, 13, '2024-03-12 18:25:19', 'Jamal', 8000),
(10, 4, '2024-03-13 04:01:02', 'Komal', 500);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `iduser` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`iduser`, `username`, `password`) VALUES
(2, 'admin', 'admin'),
(5, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `keterangan` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idbarang`, `tanggal`, `keterangan`, `qty`) VALUES
(1, 2, '2024-03-08 09:07:20', 'Komal', 10000),
(2, 1, '2024-03-08 09:37:15', 'Komal', 10000),
(3, 3, '2024-03-08 09:50:01', 'Komal', 10000),
(4, 5, '2024-03-12 14:58:22', 'Kokom', 10000),
(9, 6, '2024-03-12 16:37:39', 'jajang', 5000),
(11, 8, '2024-03-12 16:41:12', 'kola', 10000),
(12, 8, '2024-03-12 17:46:38', 'Humas', 500),
(14, 11, '2024-03-12 17:55:56', 'Agung', 10000),
(16, 13, '2024-03-12 18:20:22', 'Agun', 10000),
(17, 13, '2024-03-12 18:24:57', 'Jamal', 2000),
(18, 4, '2024-03-13 04:00:06', 'Staff', 700),
(19, 17, '2024-06-04 18:34:05', 'Ojan', 3000),
(21, 21, '2024-07-03 00:35:18', 'Ujang', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `idbarang` int(11) NOT NULL,
  `namabarang` text NOT NULL,
  `deskripsi` text NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`idbarang`, `namabarang`, `deskripsi`, `stock`, `image`) VALUES
(4, 'Pensil 2B', 'Pensil 2B Faber Castell', 1200, '4ca68ff3e5a4a5b4555944ff1592b96f.png'),
(8, 'Buku', 'Buku Tulis', 5500, '40ee2cf29ba58e0a043b4a13e18bba11.png'),
(13, 'Hapusan', 'Hapusan Bentuk Macan', 4100, '76872f7e562dfa9a24eaa054ce0f1580.png'),
(15, 'Spidol', 'snowman', 1000, '2dab19b9c4cccd569c682934722356ac.jpeg'),
(16, 'Meja', 'meja belajar mahasiswa uin sunan gunung djati bandung merk olimpic', 500, 'cf1016790925ef6625ad4a78ac70a994.jpeg'),
(17, 'Rautan', 'Rautan aja', 3100, '76498516d88bcac1c6debd1dccc9f6d6.png'),
(22, 'Penggaris', 'Penggaris Butterfly', 10, '8af39110f37b4b523d020c251a9f0e19.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`idkeluar`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idbarang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
