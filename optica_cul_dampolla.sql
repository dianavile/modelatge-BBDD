-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 08:31 PM
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
-- Database: `optica_cul_dampolla`
--

-- --------------------------------------------------------

--
-- Table structure for table `empleat`
--

CREATE TABLE `empleat` (
  `id_empleat` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `ullera` varchar(255) NOT NULL,
  `marca` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empleat`
--

INSERT INTO `empleat` (`id_empleat`, `nom`, `ullera`, `marca`) VALUES
(1, 'sandra', 'Carrera', 897),
(2, 'Pascale', 'RAY-BAN', 88);

-- --------------------------------------------------------

--
-- Table structure for table `proveïdor`
--

CREATE TABLE `proveïdor` (
  `nom` int(11) NOT NULL,
  `adreça` text DEFAULT NULL,
  `telèfon` int(11) NOT NULL,
  `fax` int(11) NOT NULL,
  `NIF` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proveïdor`
--

INSERT INTO `proveïdor` (`nom`, `adreça`, `telèfon`, `fax`, `NIF`) VALUES
(1, 'Optica Universitaria\r\nMadrid_Bravo Murillo\r\nCalle Bravo Murillo 120', 915985060, 0, 58442500),
(0, 'Optica Universitaria\r\nBarcelona_Plaza Universitat \r\nCalle Plaza Universitat 112 ', 934697399, 0, 33424725);

-- --------------------------------------------------------

--
-- Table structure for table `ulleres`
--

CREATE TABLE `ulleres` (
  `marca` text NOT NULL,
  `graduació` varchar(255) NOT NULL DEFAULT '''esquerra'', ''dreta''',
  `tipu_montura` varchar(255) NOT NULL,
  `color_muntura` varchar(255) NOT NULL,
  `preu` mediumint(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ulleres`
--

INSERT INTO `ulleres` (`marca`, `graduació`, `tipu_montura`, `color_muntura`, `preu`) VALUES
('Carrera', '\'esquerra\', \'dreta\' \'1\', \'0.25\'', ' 5018 ', 'black', 71),
('RAY-BAN', '\'esquerra\', \'dreta\', \'2\', \'1.5\'', '3016', 'brown', 85);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `empleat`
--
ALTER TABLE `empleat`
  ADD PRIMARY KEY (`id_empleat`),
  ADD UNIQUE KEY `marca_ullera` (`marca`),
  ADD KEY `ullera_marca_venut` (`ullera`(250));

--
-- Indexes for table `proveïdor`
--
ALTER TABLE `proveïdor`
  ADD KEY `adreça_proveïdor` (`adreça`(250));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `empleat`
--
ALTER TABLE `empleat`
  MODIFY `id_empleat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
