-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2025 at 10:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crane_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `PropertyID` int(11) NOT NULL,
  `Address` varchar(225) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Type` varchar(50) DEFAULT NULL CHECK (`Type` in ('Residential','Commercial','Industrial')),
  `Size` int(11) NOT NULL,
  `Price` decimal(20,2) NOT NULL,
  `Status` varchar(20) DEFAULT NULL CHECK (`Status` in ('Available','Sold','Rented'))
) ;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`PropertyID`, `Address`, `City`, `Type`, `Size`, `Price`, `Status`) VALUES
(1, 'Plot 10, Kampala Road', 'Kampala', 'Commercial', 2000, 500000.00, 'Sold'),
(2, 'Apartment 20, Kololo', 'Kampala', 'Residential', 1200, 300000.00, 'Available'),
(3, 'House 5, Nakasero Hill', 'Kampala', 'Residential', 1500, 450000.00, 'Available'),
(4, 'Warehouse 15, Industrial Area', 'Kampala', 'Industrial', 5000, 800000.00, 'Available'),
(5, 'Shop 3, Lugogo Mall', 'Kampala', 'Commercial', 800, 250000.00, 'Available'),
(6, 'Factory Unit 7, Namanve', 'Kampala', 'Industrial', 10000, 1200000.00, 'Available'),
(7, 'Villa 12, Muyenga', 'Kampala', 'Residential', 2500, 700000.00, 'Available'),
(8, 'Office Suite 4B, Wampewo Avenue', 'Kampala', 'Commercial', 1000, 350000.00, 'Available'),
(9, 'Apartment 30, Ntinda', 'Kampala', 'Residential', 1300, 320000.00, 'Available'),
(10, 'Store 22, Kikuubo', 'Kampala', 'Commercial', 600, 180000.00, 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`PropertyID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
