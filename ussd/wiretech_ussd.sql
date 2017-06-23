-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2017 at 05:09 AM
-- Server version: 5.6.35-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wiretech_ussd`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `adm_no` int(4) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `mat` int(3) DEFAULT NULL,
  `eng` int(3) DEFAULT NULL,
  `kis` int(3) DEFAULT NULL,
  `bio` int(3) DEFAULT NULL,
  `che` int(3) DEFAULT NULL,
  `phy` int(3) DEFAULT NULL,
  `geo` int(3) DEFAULT NULL,
  `hist` int(3) DEFAULT NULL,
  `cre` int(3) DEFAULT NULL,
  `bst` int(3) DEFAULT NULL,
  `agr` int(3) DEFAULT NULL,
  `comp` int(3) DEFAULT NULL,
  `total` int(3) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `position` int(4) DEFAULT NULL,
  `date_posted` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`adm_no`, `name`, `class`, `mat`, `eng`, `kis`, `bio`, `che`, `phy`, `geo`, `hist`, `cre`, `bst`, `agr`, `comp`, `total`, `grade`, `position`, `date_posted`) VALUES
(2100, 'Khayi Cecilia', '4G', 56, 67, 55, 88, 46, 67, 66, 88, 44, 44, NULL, 56, 650, 'B+', 7, '2017-06-15 05:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `fee_balances`
--

CREATE TABLE `fee_balances` (
  `id` int(11) NOT NULL,
  `adm_no` varchar(4) NOT NULL,
  `student_name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fee_balance` float NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_balances`
--

INSERT INTO `fee_balances` (`id`, `adm_no`, `student_name`, `phone`, `fee_balance`, `date`) VALUES
(1, '2100', 'Khayi Cecilia', '', 23000, '2017-06-20 08:00:00'),
(2, '2101', 'Faith Veronica', '', 13000, '2017-06-20 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` int(11) NOT NULL,
  `adm_no` varchar(5) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `class` varchar(10) NOT NULL,
  `paybill_number` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `date_paid` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_events`
--

CREATE TABLE `upcoming_events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `event_details` varchar(100) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `date_posted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upcoming_events`
--

INSERT INTO `upcoming_events` (`id`, `event_name`, `event_details`, `start_date`, `end_date`, `date_posted`) VALUES
(1, 'Form 4 Career Talk', 'Talk on the various career opportunities available in the market', '2017-06-22 10:00:00', '2017-06-24 10:00:00', '2017-06-21 12:00:00'),
(2, 'Annual General Meeting', 'All parents must attend', '2017-07-14 09:00:00', '2017-07-14 16:00:00', '2017-06-21 05:00:00'),
(3, 'Half Term', 'Students released for half term', '2017-06-19 08:00:00', '2017-06-25 14:00:00', '2017-06-18 09:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`adm_no`);

--
-- Indexes for table `fee_balances`
--
ALTER TABLE `fee_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upcoming_events`
--
ALTER TABLE `upcoming_events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_balances`
--
ALTER TABLE `fee_balances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `upcoming_events`
--
ALTER TABLE `upcoming_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
