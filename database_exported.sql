-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2021 at 05:28 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Name` varchar(30) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Phone_no` int(12) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Name`, `Email`, `Phone_no`, `Password`, `user_Id`, `status`) VALUES
('Gaurav', 'gaurav@gmail.com', 11111, '11111', 1, 0),
('Anish', 'anish@mail.com', 22222, '22222', 2, 0),
('kshitij', 'kshtij@mail.com', 33333, '33333', 3, 0),
('nikhil', 'nikhil@mail.com', 44444, '44444', 4, 0),
('tanmay', 'tanmat@gmail.com', 55555, '55555', 5, 0),
('Sakshi', 'sakshi@mail.com', 54321, '54321', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `foodorder`
--

CREATE TABLE `foodorder` (
  `PhoneNo` int(11) NOT NULL,
  `dish` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodorder`
--

INSERT INTO `foodorder` (`PhoneNo`, `dish`, `address`, `value`) VALUES
(54321, '11,12,13,', 'bangalore', 1050);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Order_no` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Phone_no` int(10) NOT NULL,
  `Order` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reservetab`
--

CREATE TABLE `reservetab` (
  `Name` varchar(20) NOT NULL,
  `Phone_no` int(11) NOT NULL,
  `No_Of_Person` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`user_Id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Order_no`);

--
-- Indexes for table `reservetab`
--
ALTER TABLE `reservetab`
  ADD PRIMARY KEY (`Phone_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `Order_no` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
