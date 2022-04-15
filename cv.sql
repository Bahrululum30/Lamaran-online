-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2021 at 06:00 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cv`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id_biodata` varchar(36) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `profile` text NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `gender` char(3) NOT NULL,
  `birthplace` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `phone` char(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `position` varchar(30) NOT NULL,
  `aboutme` text NOT NULL,
  `resume` text NOT NULL,
  `banner` text NOT NULL,
  `fb` text NOT NULL,
  `twitter` text NOT NULL,
  `ig` text NOT NULL,
  `linkedin` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id_biodata`, `username`, `password`, `profile`, `fullname`, `gender`, `birthplace`, `birthdate`, `phone`, `email`, `address`, `position`, `aboutme`, `resume`, `banner`, `fb`, `twitter`, `ig`, `linkedin`, `date`) VALUES
('0bb06a33-9043-11eb-91c1-7085c26e42d5', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', 'admin', '', '', '0000-00-00', '', 'admin@admin.com', '', '', '', '', '', '', '', '', '', '2021-03-29 05:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL,
  `id_biodata` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id_biodata`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
