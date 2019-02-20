-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2018 at 11:21 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rdbms_pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `ADMIN_ID` int(3) NOT NULL,
  `ADMIN_NAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`ADMIN_ID`, `ADMIN_NAME`, `PASSWORD`) VALUES
(1, 'admin1', 'oracle1'),
(2, 'admin2', 'oracle2'),
(3, 'admin3', 'oracle3'),
(4, 'admin4', 'oracle4'),
(5, 'admin5', 'oracle5'),
(6, 'admin6', 'oracle6');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `USERNAME` varchar(15) NOT NULL,
  `NAME` char(35) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  `OCCUPATION` char(15) NOT NULL,
  `EMAIL` varchar(35) NOT NULL,
  `TELEPHONE_NO` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`USERNAME`, `NAME`, `PASSWORD`, `OCCUPATION`, `EMAIL`, `TELEPHONE_NO`) VALUES
('abhipsha1', 'ABHIPSHA DAS', 'abhipsha', 'researcher', 'abbydas@gmail.com', 943767151),
('akansha', 'AKANSHA GUPTA', 'akansha', 'chef', 'akku123@gmail.com', 941818447),
('shivangi12', 'SHIVANGI MAHARANA', 'shivangi', 'student', 'shivangi.maharana@gmail.com', 765707105),
('shreyanshi', 'SHREYANSHI SINGH', 'shreya', 'CEO', 'shreya12@gmail.com', 701367053),
('sumera12', 'SUMERA PRIYADARSHINI', 'sumera', 'Writer', 'sumera.priya@gmail.com', 1234598),
('tanuja2345', 'TANUJA LAVU', 'tanuja', 'banker', 'tanujalavu@gmail.com', 938181184);

-- --------------------------------------------------------

--
-- Table structure for table `indext`
--

CREATE TABLE `indext` (
  `DATE` date NOT NULL,
  `EURO-USD` double NOT NULL,
  `S&P500` double NOT NULL,
  `USD` double NOT NULL,
  `DJ_INDEX` double NOT NULL,
  `NYSE` double NOT NULL,
  `EGC` double NOT NULL,
  `AU` double NOT NULL,
  `ABX` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indext`
--

INSERT INTO `indext` (`DATE`, `EURO-USD`, `S&P500`, `USD`, `DJ_INDEX`, `NYSE`, `EGC`, `AU`, `ABX`) VALUES
('2018-11-01', 1.1403, 2740.37, 96.54, 25380.74, 12356.5, 0.7, 9.86, 13.34),
('2018-11-02', 1.1387, 2723.06, 96.54, 25270.83, 12321.8, 0.72, 9.97, 13.17),
('2018-11-03', 1.1387, 2723.06, 96.54, 25270.83, 12321.8, 0.72, 9.97, 13.17),
('2018-11-04', 1.1399, 2723.06, 96.54, 25270.83, 12321.8, 0.72, 9.97, 13.17),
('2018-11-05', 1.1409, 2738.31, 96.35, 25461.7, 12424.31, 0.73, 10.43, 13.21),
('2018-11-06', 1.1433, 2755.45, 96.32, 25635.01, 12480.06, 0.73, 9.88, 13.14),
('2018-11-07', 1.1435, 2813.89, 96, 26180.3, 12679.1, 0.73, 9.98, 12.98);

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `DT` date NOT NULL,
  `GOLDPRICE_10GM` int(6) NOT NULL,
  `SILVERPRICE_1KG` int(6) NOT NULL,
  `PLATINUMPRICE_10KG` int(6) NOT NULL,
  `PALLADIUMPRICE_10GM` int(6) NOT NULL,
  `OILPRICE_1BBL` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`DT`, `GOLDPRICE_10GM`, `SILVERPRICE_1KG`, `PLATINUMPRICE_10KG`, `PALLADIUMPRICE_10GM`, `OILPRICE_1BBL`) VALUES
('2018-11-01', 31870, 38733, 26380, 25865, 4770),
('2018-11-02', 31750, 38621, 26270, 26008, 4603),
('2018-11-03', 31758, 38624, 26140, 26222, 4617),
('2018-11-04', 31758, 38624, 26140, 26222, 4616),
('2018-11-05', 31734, 38372, 26890, 26488, 4655),
('2018-11-06', 31653, 38152, 26890, 26006, 4618),
('2018-11-07', 31650, 38107, 26890, 26143, 4515);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Indexes for table `indext`
--
ALTER TABLE `indext`
  ADD PRIMARY KEY (`DATE`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`DT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
