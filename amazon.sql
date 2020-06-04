-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 08:12 PM
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
-- Database: `amazon`
--

-- --------------------------------------------------------

--
-- Table structure for table `autor`
--

CREATE TABLE `autor` (
  `id_autor` int(11) NOT NULL,
  `direcció` varchar(255) NOT NULL,
  `llibre` enum('0','1','2') DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`id_autor`, `direcció`, `llibre`) VALUES
(0, 'Jay Alphey', '1'),
(0, '', '2'),
(1591293698, 'The Power of Agile Teams-Jay Alphey', '1'),
(1591293567, 'Python para Principiantes- Programming Languages A.', '2');

-- --------------------------------------------------------

--
-- Table structure for table `cataleg_de_llibres`
--

CREATE TABLE `cataleg_de_llibres` (
  `id_llibres` int(11) NOT NULL,
  `unitats_disponible` int(11) DEFAULT 0,
  `preu` smallint(11) NOT NULL,
  `autor` varchar(255) DEFAULT 'anonim'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cataleg_de_llibres`
--

INSERT INTO `cataleg_de_llibres` (`id_llibres`, `unitats_disponible`, `preu`, `autor`) VALUES
(1591293567, 3, 17, 'Python para Principiantes- Programming Languages Academy'),
(1591293698, 8, 18, 'The Power of Agile Teams-Jay Alphey');

-- --------------------------------------------------------

--
-- Table structure for table `compra`
--

CREATE TABLE `compra` (
  `id_usuari` int(11) NOT NULL,
  `llibre` enum('1','1+') DEFAULT '1',
  `factura` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `compra`
--

INSERT INTO `compra` (`id_usuari`, `llibre`, `factura`) VALUES
(1, '1', 'The Power of Agile Teams-Jay Alphey'),
(2, '1+', 'Python para Principiantes- Programming Languages A.');

-- --------------------------------------------------------

--
-- Table structure for table `usuari`
--

CREATE TABLE `usuari` (
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contraseny` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuari`
--

INSERT INTO `usuari` (`nom`, `email`, `contraseny`) VALUES
('Agatha', 'agatha.Brown@gmail.com', 214748364),
('Bertomeu', 'Bertomeu.Vera@gmail.com', 364721474);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_usuari`),
  ADD KEY `id_usuari` (`id_usuari`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `compra`
--
ALTER TABLE `compra`
  MODIFY `id_usuari` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
