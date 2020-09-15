-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2020 at 08:59 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `octarine`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cId` int(16) NOT NULL,
  `cName` varchar(32) NOT NULL,
  `mName` varchar(32) NOT NULL,
  `sPrice` int(16) NOT NULL,
  `cQuantity` int(16) NOT NULL,
  `cBranch` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cId`, `cName`, `mName`, `sPrice`, `cQuantity`, `cBranch`) VALUES
(1, 'jisan', 'napa', 11, 10, 1),
(2, 'Sabab', 'Ace', 20, 15, 2),
(3, 'yokko', 'Excef', 50, 10, 3),
(4, 'Riazul', 'Mabic', 40, 12, 1),
(5, 'israk', 'napa', 10, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `mId` int(16) NOT NULL,
  `branch` int(16) NOT NULL,
  `mName` varchar(32) NOT NULL,
  `sName` varchar(32) NOT NULL,
  `purchasePrice` int(16) NOT NULL,
  `quantity` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`mId`, `branch`, `mName`, `sName`, `purchasePrice`, `quantity`) VALUES
(12, 1, 'Ace', 'Square', 10, 10),
(13, 1, 'Napa', 'Beximco', 10, 10),
(14, 1, 'Fast', 'Acme', 10, 10),
(15, 2, 'Excef', 'Chemist', 50, 10),
(16, 2, 'Mabic ', 'Genvo', 80, 10),
(17, 3, 'Mac', 'Orion', 60, 10),
(18, 3, 'Magaplus', 'Square', 100, 15),
(19, 2, 'Maxical ', 'Orion', 15, 20),
(20, 3, 'Matrophin', 'Aristopharma', 80, 30),
(21, 3, 'Nuba', 'Bio Pharma', 40, 50),
(22, 3, 'Nuceta', 'Bio Pharma', 80, 25),
(23, 2, 'Pentonics', 'Beximco', 108, 14),
(24, 1, 'Zactrol', 'Peoples Pharma', 26, 100),
(25, 2, 'Zaft', 'Renata', 80, 30),
(26, 3, 'Zadit', 'Popular', 50, 30),
(27, 3, 'Pair', 'Drug International', 80, 20),
(28, 1, 'Paloron', 'Square', 70, 60),
(29, 1, 'MicroOral gel', 'Square', 50, 12),
(30, 2, 'Napa Extra', 'Square', 20, 100),
(31, 2, 'Napa', 'Square', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `id` int(16) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `id`, `password`) VALUES
('arafat', 'a@gmail.com', 1, '123123'),
('assd', 'asd@sadf.ad', 2, '111'),
('qwer', 'qwer@qwer.com', 3, '111'),
('aaa', 'aa@aa.aa', 4, '111'),
('arafat', 'aaa@aaa.com', 5, '123'),
('a', 'a', 6, '1'),
('napa', 'square', 7, '10'),
('jisan', 'jisan@kulukulu.com', 8, '123'),
('Sazidur', 'Sazidur@gmail.com', 9, '123'),
('Md Arafat Hossain', 'thearft@gmail.com', 10, '123'),
('jisan', 'jisan@jisan.com', 11, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`mId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cId` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `mId` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
