-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 28, 2023 at 09:28 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `EMP_DEPT_9`
--

-- --------------------------------------------------------

--
-- Table structure for table `DEPARTMENT`
--

CREATE TABLE `DEPARTMENT` (
  `Dno` int(11) NOT NULL,
  `Dname` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT 'NEW DELHI'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DEPARTMENT`
--

INSERT INTO `DEPARTMENT` (`Dno`, `Dname`, `Location`) VALUES
(10, 'Accounting', 'NEW YORK'),
(20, 'Research', 'Dallas'),
(30, 'Sales', 'Chicago'),
(40, 'Operation', 'Boston'),
(50, 'Marketing', 'New Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE `EMPLOYEE` (
  `Eno` char(3) NOT NULL,
  `Ename` varchar(50) NOT NULL,
  `Job_type` varchar(50) NOT NULL,
  `SupervisonENO` char(3) DEFAULT NULL,
  `Hire_date` date NOT NULL,
  `Dno` int(11) DEFAULT NULL,
  `Commission` decimal(10,2) DEFAULT NULL,
  `SALARY` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`Eno`, `Ename`, `Job_type`, `SupervisonENO`, `Hire_date`, `Dno`, `Commission`, `SALARY`) VALUES
('736', 'Smith', 'Clerk', '790', '1980-12-17', 20, '0.00', '1000.00'),
('749', 'Allan', 'Sales_man', '769', '1981-02-20', 30, '300.00', '2000.00'),
('752', 'Ward', 'Sales_man', '769', '1981-02-22', 30, '500.00', '1300.00'),
('756', 'Jones', 'Manager', '783', '1981-04-02', 20, '0.00', '2300.00'),
('765', 'Martin', 'Sales_man', '736', '1981-04-22', 30, '1400.00', '1250.00'),
('769', 'Blake', 'Manager', '783', '1981-05-01', 30, '0.00', '2870.00'),
('778', 'Clark', 'Manager', '783', '1981-06-09', 10, '0.00', '2900.00'),
('783', 'King', 'President', NULL, '1981-11-17', 10, '0.00', '2950.00'),
('784', 'Turner', 'Sales_man', '769', '1981-09-08', 30, '0.00', '1450.00'),
('787', 'Adams', 'Clerk', '778', '1983-01-12', 20, '0.00', '1150.00'),
('788', 'Scott', 'Analyst', '756', '1982-12-09', 20, '0.00', '2850.00'),
('790', 'James', 'Clerk', '769', '1981-12-03', 30, '0.00', '950.00'),
('792', 'Ford', 'Analyst', '756', '1981-12-03', 20, '0.00', '2600.00'),
('793', 'Miller', 'Clerk', '788', '1982-01-23', 40, '0.00', '1300.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DEPARTMENT`
--
ALTER TABLE `DEPARTMENT`
  ADD PRIMARY KEY (`Dno`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`Eno`),
  ADD KEY `Dno` (`Dno`),
  ADD KEY `SupervisonENO` (`SupervisonENO`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD CONSTRAINT `EMPLOYEE_ibfk_1` FOREIGN KEY (`Dno`) REFERENCES `DEPARTMENT` (`Dno`),
  ADD CONSTRAINT `EMPLOYEE_ibfk_2` FOREIGN KEY (`SupervisonENO`) REFERENCES `EMPLOYEE` (`Eno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
