-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 07:57 PM
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
-- Database: `stube`
--

-- --------------------------------------------------------

--
-- Table structure for table `stube_llistat_de_videos`
--

CREATE TABLE `stube_llistat_de_videos` (
  `id_video` varchar(255) NOT NULL,
  `descripció` text NOT NULL,
  `autor` int(11) NOT NULL,
  `usuari` varchar(255) NOT NULL,
  `URL` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stube_llistat_de_videos`
--

INSERT INTO `stube_llistat_de_videos` (`id_video`, `descripció`, `autor`, `usuari`, `URL`) VALUES
('2udImFN_xaE', 'Web portfolio review', 0, '', 'https://youtu.be/2udImFN_xaE'),
('2udImFN_xaE', 'web_portfolio_review', 1, '155', 'https://www.youtube.com/watch?v=2udImFN_xaE'),
('sppSnBQVt0k&t=2s', 'FrontEnd_Web_Developer_Guide_2020', 299, '18', 'https://www.youtube.com/watch?v=sppSnBQVt0k&t=2s');

-- --------------------------------------------------------

--
-- Table structure for table `usuari`
--

CREATE TABLE `usuari` (
  `id_usuari` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `contraseny` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuari`
--

INSERT INTO `usuari` (`id_usuari`, `email`, `contraseny`) VALUES
(299, 'dani_developer@gmail.com\r\n', 'webdesign291%!'),
(18, 'david.gonzalez@hotmail.com', '1234=insegura&');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
