-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 24, 2023 at 03:16 PM
-- Server version: 8.0.31-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `GoatHerd`
--

CREATE TABLE `GoatHerd` (
  `id` int DEFAULT NULL,
  `name` text NOT NULL,
  `breed` text NOT NULL,
  `gender` text NOT NULL,
  `dob` date NOT NULL,
  `weight` float NOT NULL,
  `vaccines` text NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `GoatHerd`
--

INSERT INTO `GoatHerd` (`id`, `name`, `breed`, `gender`, `dob`, `weight`, `vaccines`, `notes`) VALUES
(0, 'moma', 'pigmy', 'doe', '2015-03-01', 60, 'cdt 2021-4-30\r\ncdt and rabies 2020-3-25', 'mare of the mininubians'),
(1, 'bigboy', 'mininubian', 'wether', '2018-04-01', 175, 'cdt 2021-4-30\r\ncdt and rabies 2020-3-25', 'sire nubiam niko -- doe pigmy moma'),
(2, 'jack', 'mininubian', 'wether', '2018-04-01', 150, 'cdt 2021-4-30\r\ncdt and rabies 2020-3-25', 'sire nubian niko -- doe pigmy moma'),
(3, 'spot', 'mininubian', 'wether', '2019-01-01', 100, 'cdt 2021-4-30\r\ncdt and rabies 2020-3-25', 'sire nubian niko -- doe pigmy moma'),
(4, 'littlebit', 'mininubian', 'doe', '2019-01-01', 150, 'cdt 2021-4-30\r\ncdt and rabies 2020-3-25', 'sire nubian niko -- doe pigmy moma'),
(5, 'baby', 'mininubian', 'wether', '2019-10-01', 100, 'cdt 2021-4-30\r\ncdt and rabies 2020-3-25', 'sire nubian niko -- doe unknown'),
(6, 'daisey', 'dwarf nigerian', 'wether', '2020-04-01', 30, 'cdt 2021-4-30\r\ncdt and rabies 2020-3-25', 'sire unknown -- doe pigmy moma'),
(7, 'homer', 'boar', 'wether', '2021-03-01', 50, 'cdt 2021-4-30\r\ncdt and rabies 2020-5-25', 'harvested 2021-11-02'),
(8, 'dumbledore1', 'wether', 'doe', '2021-08-01', 50, 'unk', 'harvested spring 2022'),
(9, 'dumbledore2', 'wether', 'doe', '2021-08-01', 60, 'unk', 'harvested 2023-02-06 2022'),
(10, 'bucky', 'boar', 'buck', '2022-03-01', 40, 'unk', 'breeding stock');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
