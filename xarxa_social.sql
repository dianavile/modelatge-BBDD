-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 08:18 PM
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
-- Database: `xarxa_social`
--

-- --------------------------------------------------------

--
-- Table structure for table `usuari`
--

CREATE TABLE `usuari` (
  `id_usuari_xarxa` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contraseny` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuari`
--

INSERT INTO `usuari` (`id_usuari_xarxa`, `nom`, `email`, `contraseny`) VALUES
(8, 'Gerard Pique', 'gerard.pique@barca.cat', '395034vza!'),
(9, 'Shakira Pique', 'shakira.pique@shakira.com', '395034cuca!');

-- --------------------------------------------------------

--
-- Table structure for table `xarxa_social`
--

CREATE TABLE `xarxa_social` (
  `com_conegut` varchar(255) NOT NULL,
  `lloc` text NOT NULL,
  `codi_xarxa` int(11) NOT NULL,
  `URL` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xarxa_social`
--

INSERT INTO `xarxa_social` (`com_conegut`, `lloc`, `codi_xarxa`, `URL`) VALUES
('marit', 'instagram', 1, 'https://www.instagram.com/3gerardpique/?hl=es'),
('muller', 'instagram', 2, 'https://www.instagram.com/shakira/?hl=es');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuari`
--
ALTER TABLE `usuari`
  ADD UNIQUE KEY `usuari_xarxa` (`id_usuari_xarxa`);

--
-- Indexes for table `xarxa_social`
--
ALTER TABLE `xarxa_social`
  ADD PRIMARY KEY (`codi_xarxa`),
  ADD UNIQUE KEY `URL_fotografia` (`URL`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuari`
--
ALTER TABLE `usuari`
  MODIFY `id_usuari_xarxa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `xarxa_social`
--
ALTER TABLE `xarxa_social`
  MODIFY `codi_xarxa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
