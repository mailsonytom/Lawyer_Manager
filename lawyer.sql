-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2019 at 05:58 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawyer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$h5M5IO4ckHflOGfMFHGmp.mMXFFtMr3vApXeh48.gkgbkXn921IE6');

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `case_id` int(200) NOT NULL,
  `description` text NOT NULL,
  `casetype_id` int(200) NOT NULL,
  `uid` int(200) NOT NULL,
  `lid` int(200) NOT NULL,
  `cid` int(200) NOT NULL,
  `date` date NOT NULL,
  `active_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`case_id`, `description`, `casetype_id`, `uid`, `lid`, `cid`, `date`, `active_status`) VALUES
(24, 'I have a problem with my family property', 24, 10, 5, 35, '2019-12-16', 1),
(25, 'New case', 20, 10, 5, 31, '2019-12-19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `casetype`
--

CREATE TABLE `casetype` (
  `casetype_id` int(200) NOT NULL,
  `casetype` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casetype`
--

INSERT INTO `casetype` (`casetype_id`, `casetype`, `description`) VALUES
(20, 'Civil case', 'A dispute between individuals companies etc'),
(21, 'Criminal case', 'Case to decide whether a person is guilty or not'),
(22, 'Family case', 'Case between family members'),
(23, 'Enforcement case', 'Case on finance tax etc'),
(24, 'Property case', 'Case on a property');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(200) NOT NULL,
  `case_id` int(200) NOT NULL,
  `user` tinyint(1) NOT NULL,
  `comment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `case_id`, `user`, `comment`) VALUES
(543, 24, 1, 'Hello subin');

-- --------------------------------------------------------

--
-- Table structure for table `courts`
--

CREATE TABLE `courts` (
  `cid` int(200) NOT NULL,
  `court_name` text NOT NULL,
  `place` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courts`
--

INSERT INTO `courts` (`cid`, `court_name`, `place`) VALUES
(31, 'District Court', 'Kottayam'),
(32, 'High Court', 'Eranakulam'),
(33, 'District Court', 'Eranakulam'),
(34, 'Supreme Court', 'NewDelhi'),
(35, 'District Court', 'Idukki');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `hid` int(200) NOT NULL,
  `lid` int(200) NOT NULL,
  `case_id` int(200) NOT NULL,
  `history` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`hid`, `lid`, `case_id`, `history`, `date`) VALUES
(15, 5, 24, 'We can start the case', '2019-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `lawyer_details`
--

CREATE TABLE `lawyer_details` (
  `lid` int(200) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `speciality` text NOT NULL,
  `experience` text NOT NULL,
  `fees` text NOT NULL,
  `phone` text NOT NULL,
  `gender` varchar(200) NOT NULL,
  `dob` text NOT NULL,
  `approved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lawyer_details`
--

INSERT INTO `lawyer_details` (`lid`, `name`, `email`, `password`, `speciality`, `experience`, `fees`, `phone`, `gender`, `dob`, `approved`) VALUES
(5, 'Rince philip', 'rince123@gmail.com', '$2y$10$NGuPxI2HQzlWHcBdC9IUDe7T9wAh3w7.yZHiWbPao1s9ltMbCIeY2', 'Civil case', '4yrs ', '10000', '9293456716', 'Male', '1986-11-11', 1),
(16, 'Neena Thomas', 'neenat@gmail.com', '$2y$10$M34WdVNUOD5JEp9EfKxSbulTRKwXGCN1UV45ya9MsD0EqjgZVgq1C', '22', '3 ', '4000', '9870865678', 'Female', '1995-01-18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `uid` int(200) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`uid`, `name`, `email`, `password`, `phone`) VALUES
(10, 'Subin', 'subin12@gmail.com', '$2y$10$s5n26ecD9qgl28NRfAIp7O/jrXcQJTzDx0k99p8zbf2K9VhGjTnAK', '9899767691'),
(19, 'Mathew Varkey', 'mathewv@gmail.com', '$2y$10$Z/iX/TiSYSXTBmoTIp9aJeICjQjnntUSGqcRKx7qeuUZ5Eu1pPMai', '9867547809'),
(20, 'Arun Jacob', 'arunj@gmail.com', '$2y$10$Vklwe55bNxGFohU.ZKgnfOMX2FxfKjKU8qyuJvtKsH65Hrt/qGyia', '8098767789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`case_id`),
  ADD KEY `casetype_id` (`casetype_id`),
  ADD KEY `cid` (`cid`),
  ADD KEY `lid` (`lid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `casetype`
--
ALTER TABLE `casetype`
  ADD PRIMARY KEY (`casetype_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `case_id` (`case_id`);

--
-- Indexes for table `courts`
--
ALTER TABLE `courts`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`hid`),
  ADD KEY `case_id` (`case_id`),
  ADD KEY `lid` (`lid`);

--
-- Indexes for table `lawyer_details`
--
ALTER TABLE `lawyer_details`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `casetype`
--
ALTER TABLE `casetype`
  MODIFY `casetype_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;

--
-- AUTO_INCREMENT for table `courts`
--
ALTER TABLE `courts`
  MODIFY `cid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `hid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `lawyer_details`
--
ALTER TABLE `lawyer_details`
  MODIFY `lid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `uid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cases`
--
ALTER TABLE `cases`
  ADD CONSTRAINT `cases_ibfk_1` FOREIGN KEY (`casetype_id`) REFERENCES `casetype` (`casetype_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cases_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `courts` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cases_ibfk_3` FOREIGN KEY (`lid`) REFERENCES `lawyer_details` (`lid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cases_ibfk_4` FOREIGN KEY (`uid`) REFERENCES `user_details` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `cases` (`case_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `cases` (`case_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`lid`) REFERENCES `lawyer_details` (`lid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
