-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2015 at 01:28 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `parking`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobno` int(10) NOT NULL,
  `type` varchar(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `email`, `password`, `mobno`, `type`) VALUES
('', '', 'd41d8cd98f00b204e9800998ecf8427e', 0, ''),
('gurlee', 'mail@yahoo.com', 'eee', 100, 'v'),
('gurleennnn', 'mail@yahoo.com', 'eee', 100, 'v'),
('gurleennnnnnnnn', 'mail@yahoo.com', 'eee', 100, ''),
('sanyam', 'sanyamseth_93@yahoo.com', 'a113bd39fd0b16165b6dcb5cf7799a15', 2147483647, 'u');

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE IF NOT EXISTS `slots` (
  `location` varchar(50) NOT NULL,
  `aslots` int(2) NOT NULL,
  `tslots` int(2) NOT NULL,
  PRIMARY KEY (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`location`, `aslots`, `tslots`) VALUES
('Indira Nagar', 34, 98),
('Whitefield', 22, 99);

-- --------------------------------------------------------

--
-- Table structure for table `user_book`
--

CREATE TABLE IF NOT EXISTS `user_book` (
  `carno` varchar(15) NOT NULL,
  `time` time NOT NULL,
  `duration` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  KEY `fk_user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_book`
--

INSERT INTO `user_book` (`carno`, `time`, `duration`, `username`, `location`) VALUES
('fjdjdj', '00:00:39', 5, 'sanyam', 'Whitefield'),
('cccv\n', '00:00:45', 5, 'sanyam', 'Whitefield'),
('Vidushi', '00:00:35', 0, '', 'Whitefield'),
('HR hshs hdhdh s', '00:00:58', 2, 'sanyam', 'Whitefield');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_book`
--

CREATE TABLE IF NOT EXISTS `vendor_book` (
  `carno` varchar(15) NOT NULL,
  `time` time NOT NULL,
  `username` varchar(50) NOT NULL,
  `cloc` varchar(50) NOT NULL,
  `vendor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_book`
--

INSERT INTO `vendor_book` (`carno`, `time`, `username`, `cloc`, `vendor`) VALUES
('xnxnnxnx', '00:00:45', '5', 'Whitefield', 'gurlee');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_book`
--
ALTER TABLE `user_book`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`username`) REFERENCES `registration` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
