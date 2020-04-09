-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2020 at 06:26 AM
-- Server version: 5.7.20-log
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrent`
--

-- --------------------------------------------------------

--
-- Table structure for table `carregistration`
--

DROP TABLE IF EXISTS `carregistration`;
CREATE TABLE IF NOT EXISTS `carregistration` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `car_No` varchar(255) NOT NULL,
  `vehicaltype` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `available` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carregistration`
--

INSERT INTO `carregistration` (`Id`, `car_No`, `vehicaltype`, `brand`, `model`, `year`, `available`) VALUES
(1, 'C0001', 'Car', 'toyota', 'alion', '2018', 'Yes'),
(4, 'C0004', 'Van ', 'toyota', 'kdh', '2017', 'yes'),
(5, 'C0005', 'Bus', 'toyota', 'coaster', '2017', 'Yes'),
(6, 'C0006', 'Van ', 'nissan', 'caravan', '2013', 'Yes'),
(8, 'C0007', 'Car', 'suzuki', 'swift', '2018', 'Yes'),
(10, 'C0003', 'Car', 'honda', 'grace', '2014', 'Yes'),
(11, 'C0008', 'Van ', 'mazda', 'vanette', '2010', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `mobile` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `cust_id`, `name`, `address`, `mobile`) VALUES
(1, 'A0001', 'manodya', 'kandegoda\ngonapinuwala', 772581601),
(2, 'A0002', 'heshan', 'majuwana', 776594136),
(3, 'A0003', 'malith', 'matara', 772686327),
(4, 'A0004', 'lahiru', 'kataragama', 759489455);

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
CREATE TABLE IF NOT EXISTS `rental` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` varchar(255) NOT NULL,
  `cust_id` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returncar`
--

DROP TABLE IF EXISTS `returncar`;
CREATE TABLE IF NOT EXISTS `returncar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carid` varchar(255) NOT NULL,
  `custid` varchar(255) NOT NULL,
  `return_date` varchar(255) NOT NULL,
  `elap` int(11) NOT NULL,
  `fine` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returncar`
--

INSERT INTO `returncar` (`id`, `carid`, `custid`, `return_date`, `elap`, `fine`) VALUES
(1, 'c0001', 'A0001', '2020-04-10', 0, 0),
(2, 'C0005', 'A0004', '2020-04-05', 2, 200),
(3, 'C0004', 'A0003', '2020-04-09', 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
