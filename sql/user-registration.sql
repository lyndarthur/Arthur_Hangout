-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 12:55 AM
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
-- Database: `user-registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_room`
--

CREATE TABLE `activity_room` (
  `name` varchar(40) DEFAULT NULL,
  `room_number` varchar(10) NOT NULL,
  `funactivityID` varchar(5) NOT NULL,
  `employeeID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `personID` varchar(10) NOT NULL,
  `Streetname` varchar(30) DEFAULT NULL,
  `houseNumber` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`personID`, `Streetname`, `houseNumber`, `city`, `region`) VALUES
('la457', 'jfjr93', '12', 'jv v', 'Greater Accra'),
('kd345', 'jfjr93', '12', 'jv v', 'Greater Accra'),
('fvvhj', 'jfjr93', '12', 'jv v', 'Greater Accra'),
('la457', 'jfjr93', '12', 'jv v', 'Greater Accra'),
('kd293', 'jfjr93f', '12', 'jv v', 'Greater Accra'),
('kd355', 'jfjr93', '12', 'jv v', 'Greater Accra');

-- --------------------------------------------------------

--
-- Table structure for table `appeal_info`
--

CREATE TABLE `appeal_info` (
  `appealinfoID` int(11) NOT NULL,
  `centreID` varchar(10) DEFAULT NULL,
  `healthcentreID` varchar(10) DEFAULT NULL,
  `appealinfoDate` date DEFAULT NULL,
  `customerID` varchar(10) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `centre`
--

CREATE TABLE `centre` (
  `centreID` varchar(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `location` varchar(40) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `name`, `email`, `phone`, `city`) VALUES
(40, 'divya', 'atra7000@gmail.com', '9114950911', 'balasore'),
(42, 'Divyasundar sahu', 'amohap00@gmail.com', '999999999', 'balasore'),
(43, 'arpita', 'amohapatra7000@gmail.com', '9114950911', 'balasore');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` varchar(10) NOT NULL,
  `job` varchar(50) DEFAULT NULL,
  `employeeID` varchar(10) DEFAULT NULL,
  `walk_inDate` date DEFAULT NULL,
  `personID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeID` varchar(10) NOT NULL,
  `role` varchar(20) NOT NULL,
  `work_email` varchar(60) NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `SSN` int(11) DEFAULT NULL,
  `joinedDate` date NOT NULL,
  `centreID` varchar(10) DEFAULT NULL,
  `personID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fun_activity`
--

CREATE TABLE `fun_activity` (
  `funactivityID` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `centreID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fun_activitypartaken`
--

CREATE TABLE `fun_activitypartaken` (
  `funactivityID` varchar(5) DEFAULT NULL,
  `customerID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `health_centre`
--

CREATE TABLE `health_centre` (
  `healthcentreID` varchar(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `personID` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `age` int(3) NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(60) NOT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `personal_email` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`personID`, `fname`, `lname`, `gender`, `age`, `dob`, `nationality`, `tel`, `personal_email`) VALUES
('fvvhj', 'fvnjg', 'v nvj ', '', 18, '2020-10-07', 'v v v', '345fvhj', 'vhfuhbuf988v@gmail.com'),
('kd293', 'kfrjf', 'dvv', '', 18, '2020-10-07', 'ghdbssb', '3474983293', 'vhfdvg38228fyyu7@gmail.com'),
('kd345', 'kfrjf', 'dvv', '', 18, '2020-10-07', 'ghanaian', '345', 'vhfmvdmu7@gmail.com'),
('kd355', 'kfrjf', 'dvv', '', 18, '2020-10-07', 'ghanaian', '02023939355', 'vhfuhsfbbufv@gmail.com'),
('la457', 'lyn', 'art', 'Male', 12, '2020-10-07', 'ghanaian', '02983229457', 'vhfuhbufv@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `snack_meals_available`
--

CREATE TABLE `snack_meals_available` (
  `SNACK_MEALS_AVAILABLEID` varchar(20) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `snack_meals_order`
--

CREATE TABLE `snack_meals_order` (
  `SNACK_MEALS_AVAILABLEID` varchar(20) NOT NULL,
  `customerID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `username`, `password`, `email`, `create_at`) VALUES
(1, 'lyn', '$2y$10$ZyDmn6QL44eWkgOLdhiGreAZoIYB1hyqn7q1I2VavDjrG5TW4j58i', 'vhfuhbufv@gmail.com', '2021-12-12 22:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `testNumber` int(11) NOT NULL,
  `customerID` varchar(10) DEFAULT NULL,
  `employeeID` varchar(10) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` enum('yes','no') DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `testresults`
--

CREATE TABLE `testresults` (
  `personid` varchar(10) DEFAULT NULL,
  `results` enum('yes','no') DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testresults`
--

INSERT INTO `testresults` (`personid`, `results`, `reason`) VALUES
('la457', '', 'dcfgdgfvb'),
('kd345', '', 'dhfvjhdbdhbv'),
('fvvhj', 'yes', 'dhfvjhdbdhbv'),
('la457', 'no', 'dcfgdgfvb'),
('kd293', 'no', 'dvhvuvfhuvhuysg'),
('kd355', 'yes', 'fgbjrfn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_room`
--
ALTER TABLE `activity_room`
  ADD PRIMARY KEY (`funactivityID`),
  ADD KEY `employeeID` (`employeeID`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD KEY `personID` (`personID`);

--
-- Indexes for table `appeal_info`
--
ALTER TABLE `appeal_info`
  ADD PRIMARY KEY (`appealinfoID`),
  ADD KEY `centreID` (`centreID`),
  ADD KEY `healthcentreID` (`healthcentreID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `centre`
--
ALTER TABLE `centre`
  ADD PRIMARY KEY (`centreID`),
  ADD UNIQUE KEY `tel` (`tel`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`),
  ADD KEY `employeeID` (`employeeID`),
  ADD KEY `personID` (`personID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`),
  ADD UNIQUE KEY `work_email` (`work_email`),
  ADD UNIQUE KEY `SSN` (`SSN`),
  ADD KEY `personID` (`personID`),
  ADD KEY `centreID` (`centreID`);

--
-- Indexes for table `fun_activity`
--
ALTER TABLE `fun_activity`
  ADD PRIMARY KEY (`funactivityID`),
  ADD KEY `centreID` (`centreID`);

--
-- Indexes for table `fun_activitypartaken`
--
ALTER TABLE `fun_activitypartaken`
  ADD KEY `customerID` (`customerID`),
  ADD KEY `funactivityID` (`funactivityID`);

--
-- Indexes for table `health_centre`
--
ALTER TABLE `health_centre`
  ADD PRIMARY KEY (`healthcentreID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`personID`),
  ADD UNIQUE KEY `tel` (`tel`),
  ADD UNIQUE KEY `personal_email` (`personal_email`);

--
-- Indexes for table `snack_meals_available`
--
ALTER TABLE `snack_meals_available`
  ADD PRIMARY KEY (`SNACK_MEALS_AVAILABLEID`);

--
-- Indexes for table `snack_meals_order`
--
ALTER TABLE `snack_meals_order`
  ADD KEY `SNACK_MEALS_AVAILABLEID` (`SNACK_MEALS_AVAILABLEID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`testNumber`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `employeeID` (`employeeID`);

--
-- Indexes for table `testresults`
--
ALTER TABLE `testresults`
  ADD KEY `personid` (`personid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appeal_info`
--
ALTER TABLE `appeal_info`
  MODIFY `appealinfoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `testNumber` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_room`
--
ALTER TABLE `activity_room`
  ADD CONSTRAINT `activity_room_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activity_room_ibfk_2` FOREIGN KEY (`funactivityID`) REFERENCES `fun_activity` (`funactivityID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`personID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `appeal_info`
--
ALTER TABLE `appeal_info`
  ADD CONSTRAINT `appeal_info_ibfk_1` FOREIGN KEY (`centreID`) REFERENCES `centre` (`centreID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appeal_info_ibfk_2` FOREIGN KEY (`healthcentreID`) REFERENCES `health_centre` (`healthcentreID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appeal_info_ibfk_3` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`personID`) REFERENCES `person` (`personID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`personID`) REFERENCES `person` (`personID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`centreID`) REFERENCES `centre` (`centreID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fun_activity`
--
ALTER TABLE `fun_activity`
  ADD CONSTRAINT `fun_activity_ibfk_1` FOREIGN KEY (`centreID`) REFERENCES `centre` (`centreID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fun_activitypartaken`
--
ALTER TABLE `fun_activitypartaken`
  ADD CONSTRAINT `fun_activitypartaken_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fun_activitypartaken_ibfk_2` FOREIGN KEY (`funactivityID`) REFERENCES `fun_activity` (`funactivityID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `snack_meals_order`
--
ALTER TABLE `snack_meals_order`
  ADD CONSTRAINT `snack_meals_order_ibfk_1` FOREIGN KEY (`SNACK_MEALS_AVAILABLEID`) REFERENCES `snack_meals_available` (`SNACK_MEALS_AVAILABLEID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `snack_meals_order_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `test_ibfk_2` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `testresults`
--
ALTER TABLE `testresults`
  ADD CONSTRAINT `testresults_ibfk_1` FOREIGN KEY (`personid`) REFERENCES `person` (`personID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
