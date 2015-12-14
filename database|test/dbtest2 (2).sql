-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2015 at 06:02 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbtest2`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `LINE1` varchar(50) DEFAULT NULL,
  `LINE2` varchar(50) DEFAULT NULL,
  `PO` varchar(15) DEFAULT NULL,
  `PIN` int(5) DEFAULT NULL,
  `CITY` varchar(18) DEFAULT NULL,
  `STATE` varchar(15) DEFAULT NULL,
  `COUNTRY` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `COUNTRY` (`COUNTRY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`ID`, `LINE1`, `LINE2`, `PO`, `PIN`, `CITY`, `STATE`, `COUNTRY`) VALUES
(1, 'OLD SBI STREET', 'BILTHARA ROAD', 'BALLIA', 221715, 'BALLIA', 'UTTAR PRADESH', 'INDIA'),
(99999, 'QWERTY', '', '', 0, '', 'SDR', 'QWERTY');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE IF NOT EXISTS `cars` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `year`) VALUES
(1, 'Mercedes', '2000'),
(2, 'BMW', '2004'),
(3, 'Audi', '2001'),
(6, NULL, '2014'),
(7, 'Jaguar', '2015');

-- --------------------------------------------------------

--
-- Table structure for table `fee_detail`
--

CREATE TABLE IF NOT EXISTS `fee_detail` (
  `T_F` int(10) DEFAULT NULL,
  `EX_F` int(10) DEFAULT NULL,
  `EN_F` int(10) DEFAULT NULL,
  `PR_F` int(10) DEFAULT NULL,
  `DEG_F` int(10) DEFAULT NULL,
  `INS_F` int(10) DEFAULT NULL,
  `LT_F` int(10) DEFAULT NULL,
  `MIS_F` int(10) DEFAULT NULL,
  `TO_F` int(10) DEFAULT NULL,
  `FE_W` varchar(30) DEFAULT NULL,
  `CBB_N` varchar(30) DEFAULT NULL,
  `BNK` varchar(30) DEFAULT NULL,
  `ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_detail`
--

INSERT INTO `fee_detail` (`T_F`, `EX_F`, `EN_F`, `PR_F`, `DEG_F`, `INS_F`, `LT_F`, `MIS_F`, `TO_F`, `FE_W`, `CBB_N`, `BNK`, `ID`) VALUES
(10000, 50000, 200, 300, 500, 9000, 1000, 500, 3000000, 'three thosands', '9999', 'bob', 11111),
(10000, 50000, 200, 300, 500, 9000, 1000, 500, 3000000, 'three thosands', '9999', 'bob', 11111),
(0, 0, 0, 0, 0, 0, 0, 0, 0, 'zero', '000', 'bob', 99999),
(50000, 300, 100, 100, 0, 0, 0, 0, 55000, 'FIFTY FIVE THOUSAND', '01234', 'BANK OF BARODA', 1),
(50000, 300, 100, 100, 0, 0, 0, 0, 55000, 'FIFTY FIVE THOUSAND', '01235', 'BANK OF BARODA', 2),
(50000, 300, 100, 100, 0, 0, 0, 0, 55000, 'FIFTY FIVE THOUSAND', '01236', 'BANK OF BARODA', 3),
(50000, 300, 100, 100, 0, 0, 0, 0, 55000, 'FIFTY FIVE THOUSAND', '01237', 'BANK OF BARODA', 4),
(50000, 300, 100, 100, 0, 0, 0, 0, 55000, 'FIFTY FIVE THOUSAND', '01238', 'BANK OF BARODA', 5),
(50000, 300, 100, 100, 0, 0, 0, 0, 55000, 'FIFTY FIVE THOUSAND', '01239', 'BANK OF BARODA', 6),
(50000, 300, 100, 100, 0, 0, 0, 0, 55000, 'FIFTY FIVE THOUSAND', '01240', 'BANK OF BARODA', 7),
(50000, 300, 100, 100, 0, 0, 0, 0, 55000, 'FIFTY FIVE THOUSAND', '01241', 'BANK OF BARODA', 8),
(50000, 300, 100, 100, 0, 0, 0, 0, 55000, 'FIFTY FIVE THOUSAND', '01242', 'BANK OF BARODA', 9),
(50000, 300, 100, 100, 0, 0, 0, 0, 55000, 'FIFTY FIVE THOUSAND', '01243', 'BANK OF BARODA', 10);

-- --------------------------------------------------------

--
-- Table structure for table `fee_sub`
--

CREATE TABLE IF NOT EXISTS `fee_sub` (
  `INSTITUTE` varchar(20) DEFAULT NULL,
  `ACC` int(20) DEFAULT NULL,
  `STU_NAME` varchar(15) DEFAULT NULL,
  `FN` varchar(15) DEFAULT NULL,
  `SEM` int(2) DEFAULT NULL,
  `YR` int(10) DEFAULT NULL,
  `BR` varchar(10) DEFAULT NULL,
  `ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_sub`
--

INSERT INTO `fee_sub` (`INSTITUTE`, `ACC`, `STU_NAME`, `FN`, `SEM`, `YR`, `BR`, `ID`) VALUES
('uiet', 12345678, 'raj', 'qwerty', 6, 1990, 'cse', 11111),
('uiet', 123456789, 'raj', 'raj', 3, 1990, 'cse', 99999),
('UIET CSJM UNIVERSITY', 2147483647, 'AMIT KUMAR JAIS', 'CHANDRASHEKHAR ', 5, 3, 'CSE', 1),
('UIET CSJM UNIVERSITY', 2147483647, 'RAJ KUMAR MAURY', 'SL MAURYA', 5, 3, 'CSE', 2),
('UIET CSJM UNIVERSITY', 2147483647, 'VIKASH KUMAR CH', 'SHANKAR LAL CHA', 5, 3, 'CSE', 3),
('UIET CSJM UNIVERSITY', 2147483647, 'DHANANJAY MAURY', 'SUNIL MAURYA', 5, 3, 'CSE', 4),
('UIET CSJM UNIVERSITY', 2147483647, 'AYESHA REHMAN', 'MUJIBURR REHMAN', 5, 3, 'CSE', 5),
('UIET CSJM UNIVERSITY', 2147483647, 'ARUSHI SINGH', 'VAIBHAV SINGH', 5, 3, 'CSE', 6),
('UIET CSJM UNIVERSITY', 2147483647, 'BHARGAVA REDDY', 'ABHINAV RAJAGOP', 5, 3, 'CSE', 7),
('UIET CSJM UNIVERSITY', 2147483647, 'ROHAN PRINJA', 'VISWA MOHAN RAI', 5, 3, 'CSE', 8),
('UIET CSJM UNIVERSITY', 2147483647, 'ANSHUMAN SINGH', 'BHAGWAN SINGH', 5, 3, 'CSE', 9),
('UIET CSJM UNIVERSITY', 2147483647, 'KRITI ARYA', 'ARYAN DAMODAR', 5, 3, 'CSE', 10);

-- --------------------------------------------------------

--
-- Table structure for table `id_pass`
--

CREATE TABLE IF NOT EXISTS `id_pass` (
  `ID` int(10) DEFAULT NULL,
  `PASSWORD` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `id_pass`
--

INSERT INTO `id_pass` (`ID`, `PASSWORD`) VALUES
(12345, 'maharaj');

-- --------------------------------------------------------

--
-- Table structure for table `semail`
--

CREATE TABLE IF NOT EXISTS `semail` (
  `ID` int(5) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `TYPE` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semail`
--

INSERT INTO `semail` (`ID`, `EMAIL`, `TYPE`) VALUES
(99999, 'R@G', 'P'),
(1, 'amitkumarj441@gmail.com', 'P'),
(1, 'amit_gkp@live.in', 'S'),
(2, 'rkmaurya1@gmail.com', 'P'),
(2, 'rm_111@gmail.com', 'S'),
(3, 'vkcbltr1@gmail.com', 'P'),
(3, 'vkc12@gmail.com', 'S'),
(4, 'dj123@gmail.com', 'P'),
(4, 'd_maurya11@gmail.com', 'S'),
(5, 'ayesha001@gmail.com', 'P'),
(5, 'ayesha_11@gmail.com', 'S'),
(6, 'arushi_11@gmail.com', 'P'),
(6, 'arushi_11@gmail.com', 'S'),
(7, 'bhargava_iimi@gmail.com', 'P'),
(7, 'bhargava111@gmail.com', 'S'),
(8, 'viswamohan_11@gmail.com', 'P'),
(8, 'viswa_11m@gmail.com', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `sphone`
--

CREATE TABLE IF NOT EXISTS `sphone` (
  `ID` int(5) DEFAULT NULL,
  `NUMBER` int(10) DEFAULT NULL,
  `TYPE` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sphone`
--

INSERT INTO `sphone` (`ID`, `NUMBER`, `TYPE`) VALUES
(1, 2147483647, 'P'),
(1, 2147483647, 'S'),
(2, 2147483647, 'P'),
(2, 2147483647, 'S'),
(3, 2147483647, 'P'),
(3, 2147483647, 'S'),
(4, 2147483647, 'P'),
(4, 2147483647, 'S'),
(5, 2147483647, 'P'),
(5, 2147483647, 'S'),
(6, 2147483647, 'P'),
(6, 2147483647, 'S'),
(7, 2147483647, 'P'),
(7, 2147483647, 'S'),
(8, 2147483647, 'P'),
(8, 2147483647, 'S');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `ID` int(5) DEFAULT NULL,
  `ROLL` int(10) DEFAULT NULL,
  `FIRSTNAME` varchar(10) DEFAULT NULL,
  `MIDNAME` varchar(10) DEFAULT NULL,
  `LASTNAME` varchar(10) DEFAULT NULL,
  `DOB` int(10) DEFAULT NULL,
  `GENDER` varchar(2) DEFAULT NULL,
  `FFN` varchar(10) DEFAULT NULL,
  `FMN` varchar(10) DEFAULT NULL,
  `FLN` varchar(10) DEFAULT NULL,
  `MFN` varchar(10) DEFAULT NULL,
  `MMN` varchar(10) DEFAULT NULL,
  `MLN` varchar(10) DEFAULT NULL,
  `DID` int(5) DEFAULT NULL,
  `PASSWORD` varchar(10) DEFAULT NULL,
  `SEM` varchar(20) DEFAULT NULL,
  `YEAR` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`ID`, `ROLL`, `FIRSTNAME`, `MIDNAME`, `LASTNAME`, `DOB`, `GENDER`, `FFN`, `FMN`, `FLN`, `MFN`, `MMN`, `MLN`, `DID`, `PASSWORD`, `SEM`, `YEAR`) VALUES
(1, 1, 'AMIT ', 'KUMAR', 'JAISWAL', 14, 'Ma', 'CHANDRASHE', '', 'JAISWAL', 'ANITA', '', 'DEVI', NULL, NULL, 'CSE', 2013),
(2, 2, 'RAJ', 'KUMAR', 'MAURYA', 14, 'Ma', 'SL', '', 'MAURYA', 'SAKUNTALA', '', 'DEVI', NULL, NULL, 'CSE', 2013),
(3, 3, 'VIKASH ', 'KUMAR', 'CHAURASIA', 12, 'Ma', 'SHANKAR', 'LAL', 'CHAURASIA', 'SIROMANI', '', 'DEVI', NULL, NULL, 'CSE', 2013),
(4, 4, 'DHANANJAY', '', 'MAURYA', 13, 'Ma', 'SUNIL', 'KUMAR', 'MAURYA', 'PARIDHI', '', 'DEVI', NULL, NULL, 'CSE', 2013),
(5, 5, 'AYESHA', '', 'REHMAN', 13, 'Fe', 'MUJIBURR ', '', 'REHMAN', 'ZAFRA', '', 'KHATOON', NULL, NULL, 'CSE', 2013),
(6, 6, 'ARUSHI', '', 'SINGH', 12, 'Fe', 'VAIBHAV', '', 'SINGH', 'ANURADHA', '', 'DEVI', NULL, NULL, 'CSE', 2013),
(7, 7, 'BHARGAVA', '', 'REDDY', 11, 'Ma', 'ABHINAV ', '', 'RAJAGOPALA', 'ANUKRITI', '', 'DEVI', NULL, NULL, 'CSE', 2013),
(8, 8, 'ROHAN', '', 'PRINJA', 10, 'Ma', 'VISWA ', 'MOHAN', 'RAI', 'HARIPRIYA', '', 'RAI', NULL, NULL, 'CSE', 2013),
(9, 9, 'ANSHUMAN', '', 'SINGH', 12, 'Ma', 'HARIDEV', '', 'SINGH', 'PRAMILA', '', 'SINGH', NULL, NULL, 'CSE', 2013),
(10, 10, 'KRITI ', '', 'ARYA', 21, 'Fe', 'ARYAN', '', 'DAMODAR', 'SAKSHI', 'PARIMAL', 'DEVANI', NULL, NULL, 'CSE', 2013),
(10, 10, 'KRITI ', '', 'ARYA', 21, 'Fe', 'ARYAN', '', 'DAMODAR', 'SAKSHI', 'PARIMAL', 'DEVANI', NULL, NULL, 'CSE', 2013),
(10, 10, 'KRITI ', '', 'ARYA', 21, 'Fe', 'ARYAN', '', 'DAMODAR', 'SAKSHI', 'PARIMAL', 'DEVANI', NULL, NULL, 'CSE', 2013);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `ID` int(5) NOT NULL DEFAULT '0',
  `SEM` int(2) DEFAULT NULL,
  `SUBCOD1` varchar(10) DEFAULT NULL,
  `SUBNAME1` varchar(15) DEFAULT NULL,
  `SUBCREDIT1` int(2) DEFAULT NULL,
  `SUBCOD2` varchar(10) DEFAULT NULL,
  `SUBNAME2` varchar(15) DEFAULT NULL,
  `SUBCREDIT2` int(2) DEFAULT NULL,
  `SUBCOD3` varchar(10) DEFAULT NULL,
  `SUBNAME3` varchar(15) DEFAULT NULL,
  `SUBCREDIT3` int(2) DEFAULT NULL,
  `SUBCOD4` varchar(10) DEFAULT NULL,
  `SUBNAME4` varchar(15) DEFAULT NULL,
  `SUBCREDIT4` int(2) DEFAULT NULL,
  `SUBCOD5` varchar(10) DEFAULT NULL,
  `SUBNAME5` varchar(15) DEFAULT NULL,
  `SUBCREDIT5` int(2) DEFAULT NULL,
  `SUBCOD6` varchar(10) DEFAULT NULL,
  `SUBNAME6` varchar(15) DEFAULT NULL,
  `SUBCREDIT6` int(2) DEFAULT NULL,
  `TCREDIT` int(3) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`ID`, `SEM`, `SUBCOD1`, `SUBNAME1`, `SUBCREDIT1`, `SUBCOD2`, `SUBNAME2`, `SUBCREDIT2`, `SUBCOD3`, `SUBNAME3`, `SUBCREDIT3`, `SUBCOD4`, `SUBNAME4`, `SUBCREDIT4`, `SUBCOD5`, `SUBNAME5`, `SUBCREDIT5`, `SUBCOD6`, `SUBNAME6`, `SUBCREDIT6`, `TCREDIT`) VALUES
(1, 5, 'CSE S201', 'DBMS', 5, 'CSE S202', 'MICROPROCESSOR', 4, 'CSE S203', 'DESIGN & ANALYS', 4, 'MTH S301', 'NUMERICAL METHO', 3, 'CSE S204', 'THEORY OF COMPU', 4, '', '', 0, 20),
(2, 5, 'CSE S201', 'DBMS', 5, 'CSE S202', 'MICROPROCESSOR', 4, 'CSE S203', 'DESIGN & ANALYS', 4, 'MTH S301', 'NUMERICAL METHO', 3, 'CSE S204', 'THEORY OF COMPU', 4, '', '', 0, 20),
(3, 5, 'CSE S201', 'DBMS', 5, 'CSE S202', 'MICROPROCESSOR', 4, 'CSE S203', 'DESIGN & ANALYS', 4, 'MTH S301', 'NUMERICAL METHO', 3, 'CSE S204', 'THEORY OF COMPU', 4, '', '', 0, 20),
(4, 5, 'CSE S201', 'DBMS', 5, 'CSE S202', 'MICROPROCESSOR', 4, 'CSE S203', 'DESIGN & ANALYS', 4, 'MTH S301', 'NUMERICAL METHO', 3, 'CSE S204', 'THEORY OF COMPU', 4, '', '', 0, 20),
(5, 5, 'CSE S201', 'DBMS', 5, 'CSE S202', 'MICROPROCESSOR', 4, 'CSE S203', 'DESIGN & ANALYS', 4, 'MTH S301', 'NUMERICAL METHO', 3, 'CSE S204', 'THEORY OF COMPU', 4, '', '', 0, 20),
(6, 5, 'CSE S201', 'DBMS', 5, 'CSE S202', 'MICROPROCESSOR', 4, 'CSE S203', 'DESIGN & ANALYS', 4, 'MTH S301', 'NUMERICAL METHO', 3, 'CSE S204', 'THEORY OF COMPU', 4, '', '', 0, 20),
(7, 5, 'CSE S201', 'DBMS', 5, 'CSE S202', 'MICROPROCESSOR', 4, 'CSE S203', 'DESIGN & ANALYS', 4, 'MTH S301', 'NUMERICAL METHO', 3, 'CSE S204', 'THEORY OF COMPU', 4, '', '', 0, 20),
(8, 5, 'CSE S201', 'DBMS', 5, 'CSE S202', 'MICROPROCESSOR', 4, 'CSE S203', 'DESIGN & ANALYS', 4, 'MTH S301', 'NUMERICAL METHO', 3, 'CSE S204', 'THEORY OF COMPU', 4, '', '', 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `subject1`
--

CREATE TABLE IF NOT EXISTS `subject1` (
  `ID` int(5) DEFAULT NULL,
  `ELECTIVE` varchar(20) DEFAULT NULL,
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject1`
--

INSERT INTO `subject1` (`ID`, `ELECTIVE`) VALUES
(1, 'CRYPTOGRAPHY'),
(2, 'WEB TECHNOLOGY'),
(3, 'ADVANCED DBMS'),
(3, 'ADVANCED DBMS'),
(4, 'VLSI'),
(5, 'MOBILE COMPUTING'),
(6, 'DISTRIBUTED SYSTEMS'),
(7, 'ARTIFICIAL INTELLIGE'),
(8, 'BIOINFORMATICS');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subject1`
--
ALTER TABLE `subject1`
  ADD CONSTRAINT `subject1_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `subject` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
