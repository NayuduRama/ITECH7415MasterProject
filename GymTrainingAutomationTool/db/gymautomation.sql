-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 07, 2020 at 08:13 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gymautomation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE IF NOT EXISTS `certificate` (
  `Username` text NOT NULL,
  `cer1` text NOT NULL,
  `cer2` text NOT NULL,
  `cer3` text NOT NULL,
  `cer4` text NOT NULL,
  `cer5` text NOT NULL,
  `cer6` text NOT NULL,
  `cer7` text NOT NULL,
  `Other` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`Username`, `cer1`, `cer2`, `cer3`, `cer4`, `cer5`, `cer6`, `cer7`, `Other`) VALUES
('vijay', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Nothing');

-- --------------------------------------------------------

--
-- Table structure for table `forgetpassword`
--

CREATE TABLE IF NOT EXISTS `forgetpassword` (
  `Username` text NOT NULL,
  `Email` text NOT NULL,
  `Key` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forgetpassword`
--

INSERT INTO `forgetpassword` (`Username`, `Email`, `Key`) VALUES
('vijay', 'vijaysancheti60@gmail.com', 2250);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `password`, `email`) VALUES
('paresh', '5678', 'aherparesh@gmail.com'),
('vijay', '3456', 'vijaysancheti60@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `workout`
--

CREATE TABLE IF NOT EXISTS `workout` (
  `Username` text NOT NULL,
  `Date` text NOT NULL,
  `From` text NOT NULL,
  `To` text NOT NULL,
  `WarmUpTime` text NOT NULL,
  `HardCore` text NOT NULL,
  `HardCoreTime` text NOT NULL,
  `Cardio` text NOT NULL,
  `CardioTime` text NOT NULL,
  `Abs` text NOT NULL,
  `AbsTime` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workout`
--

INSERT INTO `workout` (`Username`, `Date`, `From`, `To`, `WarmUpTime`, `HardCore`, `HardCoreTime`, `Cardio`, `CardioTime`, `Abs`, `AbsTime`) VALUES
('vijay', '2020-06-07', '11:00', '12:01', '10', 'Chest', '30', 'Trademill', '10', 'moutnainClimbers', '11');
