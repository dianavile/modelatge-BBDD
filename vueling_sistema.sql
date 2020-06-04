-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 07:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vueling_sistema`
--

-- --------------------------------------------------------

--
-- Table structure for table `taula avions`
--

CREATE TABLE `taula avions` (
  `id_avio` int(11) NOT NULL,
  `capacitat` int(11) NOT NULL,
  `model` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taula avions`
--

INSERT INTO `taula avions` (`id_avio`, `capacitat`, `model`) VALUES
(1, 100, 'VY8300'),
(2, 150, 'VK8319'),
(3, 150, 'VY8302'),
(4, 200, 'VY8308');

-- --------------------------------------------------------

--
-- Table structure for table `taula seients`
--

CREATE TABLE `taula seients` (
  `id_seient` int(11) NOT NULL,
  `avio_id` int(11) NOT NULL,
  `persones` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taula seients`
--

INSERT INTO `taula seients` (`id_seient`, `avio_id`, `persones`) VALUES
(1, 8300, '100'),
(2, 8300, '100'),
(101, 8319, '150'),
(102, 8319, '150'),
(202, 8302, '150'),
(203, 8302, '150'),
(301, 8308, '200'),
(302, 8308, '200');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `taula avions`
--
ALTER TABLE `taula avions`
  ADD PRIMARY KEY (`id_avio`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `taula avions`
--
ALTER TABLE `taula avions`
  MODIFY `id_avio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
