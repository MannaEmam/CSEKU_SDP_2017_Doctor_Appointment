-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2017 at 09:11 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor_appointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(10) UNSIGNED NOT NULL,
  `department` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`) VALUES
(3, 'Cardiology'),
(1, 'E.N.T'),
(2, 'Neurology'),
(4, 'Surgery');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `bio` text NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `username`, `email`, `phone`, `department_id`, `bio`, `password`) VALUES
(14, 'Abdul Kalam', 'kalam@gmail.com', '01747171692', 1, 'MBBS in E.N.T', 'c4ca4238a0b923820dcc509a6f75849b'),
(19, 'Sheikh Abdul Kader', 'kader@gmail.com', '01711171692', 2, 'MBBS,FCPS,FRCPS in neurology.', 'c4ca4238a0b923820dcc509a6f75849b'),
(20, 'Abdul Halim', 'halim@gmail.com', '01711171692', 3, 'MBBS,FCPS,FRCPS,in E.N.T.', 'c4ca4238a0b923820dcc509a6f75849b'),
(23, 'Tarequl Islam', 'tareq@gmail.com', '01670181359', 1, 'MBBS,FCPS,FRCPS,in E.N.T.', 'c4ca4238a0b923820dcc509a6f75849b'),
(24, 'abdul ahad', 'aahad@gmail.com', '01732456783', 1, 'specialist in E.N.T', 'c4ca4238a0b923820dcc509a6f75849b'),
(25, 'Sharmin Akhter', 'sakhter@gmail.com', '01971091456', 4, 'M.B.B.S , F.C.P.S from Dhaka Medical College ', 'c4ca4238a0b923820dcc509a6f75849b'),
(26, 'khaled morshed', 'khaled@gmail.com', '01712342657', 2, 'specialist in neurosurgeon  ', 'c4ca4238a0b923820dcc509a6f75849b'),
(27, 'Shahin Alom', 'shahinalom@gmail.com', '01943267854', 2, 'neurosurgeon ', 'c4ca4238a0b923820dcc509a6f75849b'),
(28, 'Abdul hadi', 'abdulhadi@gmail.com', '01765348769', 4, 'specialized in surgery   ', 'c4ca4238a0b923820dcc509a6f75849b'),
(29, 'Akash Kumar Mondol', 'akash@yahoo.com', '01687564893', 3, 'consultant cardiology dept KMC ', 'c4ca4238a0b923820dcc509a6f75849b'),
(30, 'kazi md anisuzaman ', 'anisuzaman@gmail.com', '01685473623', 3, 'F.C.P.S (MEDICINE) ,MD(CARDIOLOGY)', 'c4ca4238a0b923820dcc509a6f75849b'),
(31, 'Biplob kumar das', 'das@gmail.com', '01543675438', 2, 'M.B.B.S bcs ,MD (neuroscience )', 'c4ca4238a0b923820dcc509a6f75849b'),
(32, 'Sheikh Saidur Rahman', 'said@gmail.com', '01786459870', 4, 'F.C.P.S(surgery ), FRCS (Glasgo)', 'c4ca4238a0b923820dcc509a6f75849b'),
(33, 'M.M Kamrul Haque', 'kamrul@gmail.com', '01985463723', 3, 'MBBS ,MD(cardiology ) Heart ,medicine specialist  ', 'c4ca4238a0b923820dcc509a6f75849b'),
(34, 'Abdul Salam', 'salam@gmail.com', '01971234583', 2, 'MBBS,MD (neurology ) ,Neuroscience- fellow: asepa ', 'c4ca4238a0b923820dcc509a6f75849b'),
(36, 'Nazmus Shakeef', 'nazmus@gmail.com', '01685493901', 2, 'MBBS,FCPS,FRCPS,in neurology.', 'c4ca4238a0b923820dcc509a6f75849b'),
(38, 'Abdul Basit', 'basit@gmail.com', '01521202682', 2, 'Mbbs in neurology', 'c4ca4238a0b923820dcc509a6f75849b'),
(39, 'Tausif Ahmed', 'tausif@gmail.com', '01521312676', 3, 'MBBS in Cardiology', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(255) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `pat_name` varchar(255) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `serial` int(11) DEFAULT NULL,
  `is_morning` tinyint(1) NOT NULL,
  `pat_age` int(255) NOT NULL,
  `pat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `date`, `pat_name`, `doc_id`, `serial`, `is_morning`, `pat_age`, `pat_id`) VALUES
(221, '2017-11-04', 'Rakib Raihan', 19, 1, 1, 22, 0),
(222, '2017-11-04', 'Rakib Raihan', 19, 2, 1, 22, 0),
(223, '2017-11-04', 'Rakib Raihan', 19, 1, 0, 22, 0),
(224, '2017-11-04', 'Rakib Raihan', 19, 3, 1, 22, 0),
(225, '2017-11-04', 'Rakib Raihan', 19, 2, 0, 22, 0),
(226, '2017-11-04', 'Rakib Raihan', 19, 4, 1, 22, 0),
(227, '2017-11-04', 'Rakib Raihan', 19, 5, 1, 22, 18),
(228, '2017-11-04', 'Rakib Raihan', 19, 3, 0, 22, 18),
(229, '2017-11-04', 'Aswad Alam', 19, 6, 1, 21, 19),
(234, '2017-11-05', 'Aswad Alam', 19, 1, 1, 21, 19),
(235, '2017-11-05', 'Aswad Alam', 19, 2, 1, 21, 19),
(236, '2017-11-05', 'Rakib Raihan', 39, 1, 0, 22, 18),
(237, '2017-11-05', 'Aswad Alam', 39, 2, 0, 21, 19),
(238, '2017-11-05', 'Aswad Alam', 39, 1, 1, 21, 19),
(239, '2017-11-05', 'Foysal Islam', 39, 3, 0, 23, 26),
(240, '2017-11-05', 'Redwan Islam Abir', 39, 4, 0, 23, 27),
(241, '2017-11-05', 'Redwan Islam Abir', 39, 2, 1, 23, 27),
(242, '2017-11-05', 'Sumit Kumar Dam', 39, 5, 0, 22, 35),
(243, '2017-11-05', 'Sumit Kumar Dam', 39, 3, 1, 22, 35),
(244, '2017-11-05', 'Anam Islam', 39, 4, 1, 22, 36),
(245, '2017-11-05', 'Anam Islam', 39, 6, 0, 22, 36),
(246, '2017-11-07', 'Niloy Rahman', 39, 1, 1, 21, 40),
(247, '2017-11-05', 'Aswad Alam', 20, 1, 0, 21, 19);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `username`, `age`, `email`, `phone`, `password`) VALUES
(18, 'Rakib Raihan', 22, 'rakibraihan47@gmail.com', '01685394901', 'e10adc3949ba59abbe56e057f20f883e'),
(19, 'Aswad Alam', 21, 'aswad@gmail.com', '1521312676', 'e10adc3949ba59abbe56e057f20f883e'),
(21, 'Hadiuzzaman Bappy', 20, 'bappy@gmail.com', '1612160219', 'e10adc3949ba59abbe56e057f20f883e'),
(26, 'Foysal Islam', 23, 'foysal@gmail.com', '1521312676', 'e10adc3949ba59abbe56e057f20f883e'),
(27, 'Redwan Islam Abir', 23, 'abir@gmail.com', '1773245231', 'e10adc3949ba59abbe56e057f20f883e'),
(28, 'Abdul Lotif', 22, 'lotif@gmail.com', '1627837837', 'e10adc3949ba59abbe56e057f20f883e'),
(35, 'Sumit Kumar Dam', 22, 'sumit@gmail.com', '01685493901', 'e10adc3949ba59abbe56e057f20f883e'),
(36, 'Anam Islam', 22, 'anam@gmail.com', '01685493901', 'e10adc3949ba59abbe56e057f20f883e'),
(37, 'Biddut', 21, 'biddut@gmail.com', '0152312676', 'e10adc3949ba59abbe56e057f20f883e'),
(38, 'Emamul Haque Manna', 22, 'mannaemam@gmail.com', '01682715574', 'e10adc3949ba59abbe56e057f20f883e'),
(40, 'Niloy Rahman', 21, 'niloy@gmail.com', '01623167839', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `pat_name` varchar(255) NOT NULL,
  `pat_age` varchar(255) NOT NULL,
  `doc_name` varchar(255) NOT NULL,
  `doc_bio` text NOT NULL,
  `doc_phone` varchar(255) NOT NULL,
  `prescribe` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `pat_name`, `pat_age`, `doc_name`, `doc_bio`, `doc_phone`, `prescribe`, `date`) VALUES
(13, 'Rakib Raihan', '22', 'Sheikh Abdul Kader', 'MBBS,FCPS,FRCPS in neurology.', '01711171692', 'Tab:Napa', '2017-11-04'),
(14, 'Rakib Raihan', '22', 'Sheikh Abdul Kader', 'MBBS,FCPS,FRCPS in neurology.', '01711171692', 'Tab:Alatrol', '2017-11-04'),
(15, 'Rakib Raihan', '22', 'Sheikh Abdul Kader', 'MBBS,FCPS,FRCPS in neurology.', '01711171692', 'Tab:Neotec', '2017-11-04'),
(16, 'Aswad Alam', '21', 'Sheikh Abdul Kader', 'MBBS,FCPS,FRCPS in neurology.', '01711171692', 'Tab:Relaxation', '2017-11-04'),
(17, 'Aswad Alam', '21', 'Sheikh Abdul Kader', 'MBBS,FCPS,FRCPS in neurology.', '01711171692', 'Tab:Napa', '2017-11-05'),
(18, 'Niloy Rahman', '21', 'Tausif Ahmed', 'MBBS in Cardiology', '01521312676', 'Tab:Napa\r\nTab:Alatrol', '2017-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `morning_max` int(11) UNSIGNED NOT NULL,
  `evening_max` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `doctor_id`, `date`, `morning_max`, `evening_max`) VALUES
(23, 19, '2017-10-24', 19, 24),
(24, 19, '2017-10-25', 23, 26),
(25, 19, '2017-10-26', 22, 26),
(26, 19, '2017-10-27', 23, 25),
(30, 20, '2017-10-24', 9, 14),
(31, 20, '2017-10-25', 11, 13),
(32, 19, '2017-10-31', 0, 0),
(33, 19, '2017-10-30', 12, 12),
(34, 19, '2017-11-04', 15, 15),
(37, 19, '2017-11-05', 25, 28),
(38, 19, '2017-11-06', 25, 25),
(39, 19, '2017-11-07', 20, 20),
(40, 19, '2017-11-08', 25, 25),
(41, 19, '2017-11-09', 25, 25),
(42, 19, '2017-11-12', 30, 30),
(43, 19, '2017-11-12', 20, 20),
(44, 14, '2017-11-05', 25, 25),
(45, 14, '2017-11-06', 25, 25),
(46, 14, '2017-11-07', 30, 30),
(47, 14, '2017-11-09', 30, 30),
(48, 14, '2017-11-10', 25, 25),
(49, 14, '2017-11-11', 20, 20),
(50, 20, '2017-11-05', 24, 25),
(51, 20, '2017-11-06', 30, 30),
(52, 20, '2017-11-08', 20, 20),
(58, 25, '2017-11-07', 15, 15),
(59, 25, '2017-11-07', 20, 20),
(60, 25, '2017-11-10', 1, 1),
(65, 38, '2017-11-05', 25, 30),
(66, 38, '2017-11-06', 25, 30),
(67, 38, '2017-11-07', 25, 25),
(68, 38, '2017-11-08', 15, 20),
(69, 38, '2017-11-09', 0, 2),
(70, 39, '2017-11-05', 14, 21),
(71, 39, '2017-11-06', 20, 20),
(72, 39, '2017-11-07', 15, 19),
(73, 39, '2017-11-08', 2, 0),
(74, 19, '2017-11-07', 25, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department` (`department`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `department_id_2` (`department_id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doc_id` (`doc_id`),
  ADD KEY `pat_id` (`pat_id`),
  ADD KEY `pat_id_2` (`pat_id`),
  ADD KEY `pat_id_3` (`pat_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `list`
--
ALTER TABLE `list`
  ADD CONSTRAINT `list_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
