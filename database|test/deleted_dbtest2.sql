-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2015 at 06:03 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `deleted_dbtest2`
--

-- --------------------------------------------------------

--
-- Table structure for table `deleted_address`
--

CREATE TABLE IF NOT EXISTS `deleted_address` (
  `ID` int(10) DEFAULT NULL,
  `LINE1` varchar(30) DEFAULT NULL,
  `LINE2` varchar(30) DEFAULT NULL,
  `PO` varchar(30) DEFAULT NULL,
  `PIN` int(10) DEFAULT NULL,
  `CITY` varchar(10) DEFAULT NULL,
  `STATE` varchar(15) DEFAULT NULL,
  `COUNTRY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deleted_address`
--

INSERT INTO `deleted_address` (`ID`, `LINE1`, `LINE2`, `PO`, `PIN`, `CITY`, `STATE`, `COUNTRY`) VALUES
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'NEAR VRINDAVAN MANDIR', 'SAKET METRO', 'SAKET', 200132, 'NEW DELHI', 'NEW DELHI', 'INDIA1');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_semail`
--

CREATE TABLE IF NOT EXISTS `deleted_semail` (
  `ID` int(10) DEFAULT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deleted_semail`
--

INSERT INTO `deleted_semail` (`ID`, `EMAIL`, `TYPE`) VALUES
(5, NULL, NULL),
(10, 'ar_kriti1@gmail.com', 'P'),
(10, 'kriti11@rediffmail.c', 'S'),
(10, 'ar_kriti1@gmail.com', 'P'),
(10, 'kriti11@rediffmail.c', 'S'),
(10, 'ar_kriti1@gmail.com', 'P'),
(10, 'kriti11@rediffmail.c', 'S'),
(9, 'anshumann_11@gmail.c', 'P'),
(9, 'anshuman_123@gmail.c', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_sphone`
--

CREATE TABLE IF NOT EXISTS `deleted_sphone` (
  `ID` int(10) DEFAULT NULL,
  `NUMBER` int(10) DEFAULT NULL,
  `TYPE` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deleted_sphone`
--

INSERT INTO `deleted_sphone` (`ID`, `NUMBER`, `TYPE`) VALUES
(2, 9999999, 'P'),
(2, 4558888, 'S'),
(2, 9999999, 'P'),
(2, 4558888, 'S'),
(2, 9999999, 'P'),
(2, 4558888, 'S'),
(2, 9999999, 'P'),
(2, 4558888, 'S'),
(2, 9999999, 'P'),
(2, 4558888, 'S'),
(2, 9999999, 'P'),
(5, 9999999, 'P'),
(5, 4558888, 'S'),
(10, 2147483647, 'P'),
(10, 2147483647, 'S'),
(10, 2147483647, 'P'),
(10, 2147483647, 'S'),
(10, 2147483647, 'P'),
(10, 2147483647, 'S'),
(9, 2147483647, 'P'),
(9, 2147483647, 'S');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_subject`
--

CREATE TABLE IF NOT EXISTS `deleted_subject` (
  `ID` int(2) DEFAULT NULL,
  `SEM` int(2) DEFAULT NULL,
  `SUBCOD1` varchar(10) DEFAULT NULL,
  `SUBNAME1` varchar(10) DEFAULT NULL,
  `SUBCREDIT1` int(2) DEFAULT NULL,
  `SUBCOD2` varchar(10) DEFAULT NULL,
  `SUBNAME2` varchar(10) DEFAULT NULL,
  `SUBCREDIT2` int(2) DEFAULT NULL,
  `SUBCOD3` varchar(10) DEFAULT NULL,
  `SUBNAME3` varchar(10) DEFAULT NULL,
  `SUBCREDIT3` int(2) DEFAULT NULL,
  `SUBCOD4` varchar(10) DEFAULT NULL,
  `SUBNAME4` varchar(10) DEFAULT NULL,
  `SUBCREDIT4` int(2) DEFAULT NULL,
  `SUBCOD5` varchar(10) DEFAULT NULL,
  `SUBNAME5` varchar(10) DEFAULT NULL,
  `SUBCREDIT5` int(2) DEFAULT NULL,
  `SUBCOD6` varchar(10) DEFAULT NULL,
  `SUBNAME6` varchar(10) DEFAULT NULL,
  `SUBCREDIT6` int(2) DEFAULT NULL,
  `TCREDIT` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deleted_subject`
--

INSERT INTO `deleted_subject` (`ID`, `SEM`, `SUBCOD1`, `SUBNAME1`, `SUBCREDIT1`, `SUBCOD2`, `SUBNAME2`, `SUBCREDIT2`, `SUBCOD3`, `SUBNAME3`, `SUBCREDIT3`, `SUBCOD4`, `SUBNAME4`, `SUBCREDIT4`, `SUBCOD5`, `SUBNAME5`, `SUBCREDIT5`, `SUBCOD6`, `SUBNAME6`, `SUBCREDIT6`, `TCREDIT`) VALUES
(6, 1, 'qwert', 'zxcvbnm', 5, 'sjdfsj', 'rtrtdg', 0, 'sdffsssggs', 'dfgdtgetwe', 5, 'sgeget', 'rweretete', 0, 'dfgdtdhh', 'erthf', 3, 'gertget', 'wterterhrh', 3, 9),
(6, 1, 'qwert', 'zxcvbnm', 5, 'sjdfsj', 'rtrtdg', 0, 'sdffsssggs', 'dfgdtgetwe', 5, 'sgeget', 'rweretete', 0, 'dfgdtdhh', 'erthf', 3, 'gertget', 'wterterhrh', 3, 9),
(10, 5, 'CSE S201', 'DBMS', 5, 'CSE S202', 'MICROPROCE', 4, 'CSE S203', 'DESIGN & A', 4, 'MTH S301', 'NUMERICAL ', 3, 'CSE S204', 'THEORY OF ', 4, '', '', 0, 20),
(9, 5, 'CSE S201', 'DBMS', 5, 'CSE S202', 'MICROPROCE', 4, 'CSE S203', 'DESIGN & A', 4, 'MTH S301', 'NUMERICAL ', 3, 'CSE S204', 'THEORY OF ', 4, '', '', 0, 20);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
