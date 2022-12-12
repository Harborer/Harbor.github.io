-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2019 at 04:37 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `forum_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerinfo`
--

CREATE TABLE IF NOT EXISTS `customerinfo` (
`CustomerID` bigint(20) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Email_address` varchar(255) NOT NULL,
  `Contact_no` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Birthdate` varchar(255) NOT NULL,
  `Occupation` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL DEFAULT 'Active',
  `DateRegistered` varchar(255) NOT NULL,
  `Type` varchar(255) NOT NULL DEFAULT 'New Customer'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerinfo`
--

INSERT INTO `customerinfo` (`CustomerID`, `Name`, `Gender`, `Email_address`, `Contact_no`, `Username`, `Password`, `Address`, `Birthdate`, `Occupation`, `Status`, `DateRegistered`, `Type`) VALUES
(21, 'Mascarenas, Matthew  Cruzado', 'Male', 'mjohnmatthews38@gmail.com', '09216912596', 'matteo', 'matteo', 'Roque St., N/A, N/A, Marinduque', '1995-09-21', 'N/A', 'Active', '2016-06-02', 'New Customer'),
(22, 'den, harry  abcd', 'Male', 'asdada@asd.com', '85455555550', 'harry', 'pass', 'esob, easds, sadasd, adasd', '1989-02-01', 'Engineer', 'Active', '2019-02-25', 'New Customer');

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE IF NOT EXISTS `forums` (
`ForumID` bigint(20) NOT NULL,
  `Date_posted` date NOT NULL,
  `CustomerID` bigint(20) NOT NULL,
  `Contents` varchar(255) NOT NULL,
  `Files` varchar(255) NOT NULL DEFAULT 'No content'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`ForumID`, `Date_posted`, `CustomerID`, `Contents`, `Files`) VALUES
(1, '2016-06-02', 21, 'Sample Flash animation. I am not the owner of this animation.', 'Animated Background by OmZool.swf'),
(2, '2016-06-02', 21, 'Screenshots of the system', 'LINKS OF SOURCE CODE AND PROGRAM.pdf'),
(3, '2019-02-25', 22, 'demo message', 'No content');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerinfo`
--
ALTER TABLE `customerinfo`
 ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
 ADD PRIMARY KEY (`ForumID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerinfo`
--
ALTER TABLE `customerinfo`
MODIFY `CustomerID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
MODIFY `ForumID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
