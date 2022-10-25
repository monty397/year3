-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 08:50 PM
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
-- Database: `covid_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `covid_info`
--

CREATE TABLE `covid_info` (
  `id` int(11) NOT NULL,
  `vaccination_site` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `other` varchar(200) DEFAULT NULL,
  `dob` date NOT NULL,
  `gender` varchar(200) NOT NULL,
  `identification` varchar(200) NOT NULL,
  `age` varchar(200) NOT NULL,
  `nationality` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contactNum` varchar(200) NOT NULL,
  `nameOfNextKin` varchar(200) NOT NULL,
  `occupationLocation` varchar(200) NOT NULL,
  `nextOfKinCon` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dateOfVaccination` date NOT NULL,
  `vaccineName` varchar(200) DEFAULT NULL,
  `expiryDate` date NOT NULL,
  `nextAppointment` date NOT NULL,
  `vaccinatorName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `covid_info`
--

INSERT INTO `covid_info` (`id`, `vaccination_site`, `last_name`, `first_name`, `other`, `dob`, `gender`, `identification`, `age`, `nationality`, `address`, `contactNum`, `nameOfNextKin`, `occupationLocation`, `nextOfKinCon`, `email`, `dateOfVaccination`, `vaccineName`, `expiryDate`, `nextAppointment`, `vaccinatorName`) VALUES
(1, 'Fyzabad', 'Montrose', 'Akhil', 'Darran', '1997-04-03', 'Male', '19970403016', '24', 'Trinidad and Tobago', '35B Easy St.', '275-5992', 'Darran Montrose', 'None', '123-4567', 'akhilmontrose62@gmail.com', '2021-11-05', 'Sinopharm', '2021-12-10', '2021-11-19', 'FELIX'),
(2, 'Fyzabad', 'Montrose', 'De Aundre', 'Richard', '1999-12-17', 'Male', '19991217016', '21', 'Trinidad and Tobago', '35B Easy St.', '271-2391', 'Darran Montrose', 'La Brea', '123-4567', 'deaundremontrose@gmail.com', '2021-11-05', 'Sinopharm', '2021-12-10', '2021-11-19', 'FELIX'),
(3, 'Fyzabad', 'Smith', 'Jones', 'John', '2021-11-05', 'Male', '2000403016', '19', 'Trinidad and Tobago', 'Fyzabad', '271-2391', 'Smith', 'None', '123-4054', 'js@gmail.com', '2021-11-05', 'Sinopharm', '2021-11-05', '2021-11-05', 'JOHN'),
(4, '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '0000-00-00', ''),
(5, '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '0000-00-00', '0000-00-00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `covid_info`
--
ALTER TABLE `covid_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `covid_info`
--
ALTER TABLE `covid_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
