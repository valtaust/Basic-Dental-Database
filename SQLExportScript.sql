-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 08:17 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corkdental`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `APP_ID` int(11) NOT NULL,
  `APP_TIME` varchar(50) NOT NULL,
  `REMINDER` varchar(50) NOT NULL,
  `APP_CANCEL_TIME` varchar(50) DEFAULT NULL,
  `APP_CANCELFEE` decimal(9,2) DEFAULT NULL,
  `PAT_ID` int(11) NOT NULL,
  `BILL_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`APP_ID`, `APP_TIME`, `REMINDER`, `APP_CANCEL_TIME`, `APP_CANCELFEE`, `PAT_ID`, `BILL_ID`) VALUES
(1, '9:00 12th September 2020', 'sent', 'null', '0.00', 1, 1),
(2, '09:00 20th October 2020', 'sent', 'null', '0.00', 2, 2),
(3, '10:00 15th May 2020', 'sent', 'null', '0.00', 3, 3),
(4, '10:00 22nd June 2020', 'sent', '10.00', '0.00', 4, 4),
(5, '09:00 25th January 2020', 'sent', 'null', '0.00', 5, 5),
(6, '15:00 15th March 2021', 'sent', '10.00', '0.00', 6, 6),
(8, '10:00 1rst April 2021', 'sent', 'null', '0.00', 8, 8),
(9, '09:30 5th January 2021 ', 'sent', 'null', '0.00', 9, 9),
(10, '09:00 10th April 2021', 'sent', 'null', '0.00', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `patientrecords`
--

CREATE TABLE `patientrecords` (
  `PAT_ID` int(11) NOT NULL,
  `PAT_NAME` varchar(50) NOT NULL,
  `PAT_DOB` date NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PAT_ADDRESS` varchar(50) NOT NULL,
  `SPEC_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientrecords`
--

INSERT INTO `patientrecords` (`PAT_ID`, `PAT_NAME`, `PAT_DOB`, `EMAIL`, `PAT_ADDRESS`, `SPEC_ID`) VALUES
(0, 'Cian Mullvany', '1993-10-07', 'cianmullvany@gmail.com', '58 North Charleville Co. Cork', 0),
(1, 'Patrick Devaney', '1993-12-17', 'pdev@gmit.ie', '12 Knock Tur Co. Cork', 1),
(2, 'Michelle Birmingham', '1993-12-18', 'mbirm@gmail.com', '12 Birmingham palace, Co. Cork', 2),
(3, 'Cian O\'Leary', '1993-07-19', 'cianoleary@gmit.ie', '12 Sunnyside Co. Cork', 1),
(4, 'Ciara Mulqueen', '1995-08-10', 'Cmuq@gmail.com', '25 Inchicore Co. Cork', 3),
(5, 'Eoin Ryan', '1996-10-20', 'erian@yahoo.com', '03 Estate City Co. Cork', 1),
(6, 'Ryan McGowan', '1998-11-10', 'rmcgowan@gmail.com', '22 Ocrside Co. Cork', 0),
(8, 'Trish Mulcahy', '1992-12-10', 'trsha@hotmail.com', '10 Finbarr Co. Cork', 0),
(9, 'Connor Byrne', '1991-05-10', 'cbyrn@gmail.com', '25 LibraryStreet Co. Cork', 0),
(10, 'John Burns', '1996-06-10', 'jburns@gmail.com', '14 Southside Mallow Co. Cork', 0),
(11, 'Cian Mulloy', '1993-10-07', 'cianmulloy@gmail.com', '55 North Charleville Co. Cork', 0),
(12, 'Cian McGrath', '1993-10-11', 'cianmcgrath@gmail.com', '70 North Charleville Co. Cork', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `BILL_ID` int(11) NOT NULL,
  `BILL_TOTAL_AMOUNT` decimal(9,2) NOT NULL,
  `BILL_DUE_AMOUNT` decimal(9,2) NOT NULL,
  `BILL_PAID_AMOUNT` decimal(9,2) NOT NULL,
  `PAY_TYPE` varchar(50) DEFAULT NULL,
  `APP_ID` int(11) NOT NULL,
  `TREAT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`BILL_ID`, `BILL_TOTAL_AMOUNT`, `BILL_DUE_AMOUNT`, `BILL_PAID_AMOUNT`, `PAY_TYPE`, `APP_ID`, `TREAT_ID`) VALUES
(1, '100.00', '0.00', '100.00', 'Visa debit', 1, 1),
(2, '250.00', '0.00', '250.00', 'credit card', 2, 2),
(3, '150.00', '0.00', '150.00', 'debit card', 3, 3),
(4, '110.00', '110.00', '0.00', 'null', 4, 1),
(5, '150.00', '0.00', '150.00', 'Visa debit', 5, 3),
(6, '110.00', '110.00', '0.00', 'null', 6, 1),
(8, '100.00', '100.00', '0.00', 'null', 8, 1),
(9, '250.00', '0.00', '250.00', 'Visa debit', 9, 2),
(10, '150.00', '0.00', '150.00', 'Postoffice', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `SPEC_ID` int(11) NOT NULL,
  `SPEC_NAME` varchar(30) NOT NULL,
  `SPEC_ADDRESS` varchar(50) NOT NULL,
  `SPEC_TREATMENT` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`SPEC_ID`, `SPEC_NAME`, `SPEC_ADDRESS`, `SPEC_TREATMENT`) VALUES
(1, 'Dr Christian Tucker', 'CUH hospital', 'OPG X-Ray (Panoramic)'),
(2, 'Dr Cillian Turner', 'CUH hospital', 'Wisdom tooth removal'),
(3, 'Dr Amanda McNamara', 'CUH hospital', 'Oral mucosal infection'),
(4, 'Colm McRyan', 'Orthodontics, Military Hill\r\nSaint Lukes\r\nCork,', 'Braces');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `TREAT_ID` int(11) NOT NULL,
  `Treat_DESC` varchar(50) NOT NULL,
  `TREAT_PRICE` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`TREAT_ID`, `Treat_DESC`, `TREAT_PRICE`) VALUES
(1, 'Dental filling', '100.00'),
(2, 'Retainers', '250.00'),
(3, 'Tooth extraction', '150.00'),
(4, 'Routine examination', '45.00'),
(5, 'Dental hygiene', '45.00'),
(6, 'Teeth whitening', '50.00'),
(7, 'Dental fillings', '80.00'),
(8, 'Sport shield', '80.00'),
(9, 'Root canal treatment', '450.00'),
(10, 'X-ray', '25.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`APP_ID`),
  ADD KEY `appointments_ibfk_1` (`PAT_ID`),
  ADD KEY `appointments_ibfk_2` (`BILL_ID`);

--
-- Indexes for table `patientrecords`
--
ALTER TABLE `patientrecords`
  ADD PRIMARY KEY (`PAT_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`BILL_ID`),
  ADD KEY `payment_ibfk_1` (`APP_ID`),
  ADD KEY `payment_ibfk_2` (`TREAT_ID`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`SPEC_ID`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`TREAT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `specialist`
--
ALTER TABLE `specialist`
  MODIFY `SPEC_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`PAT_ID`) REFERENCES `patientrecords` (`PAT_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`BILL_ID`) REFERENCES `payment` (`BILL_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`APP_ID`) REFERENCES `appointments` (`APP_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`TREAT_ID`) REFERENCES `treatment` (`TREAT_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
