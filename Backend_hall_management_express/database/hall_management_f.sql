-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 08:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hall_management_f`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepted_student`
--

CREATE TABLE `accepted_student` (
  `RegNo` int(10) DEFAULT NULL,
  `Allocated_room` int(6) DEFAULT NULL,
  `authority_id` int(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accepted_student`
--

INSERT INTO `accepted_student` (`RegNo`, `Allocated_room`, `authority_id`, `user_id`) VALUES
(2019533068, 105, 2, NULL),
(2019333069, 105, 2, NULL),
(2019446067, 105, 2, NULL),
(2020533057, 106, 3, NULL),
(2020831001, 106, 3, NULL),
(2020447067, 106, 3, NULL),
(2020449067, 201, 4, NULL),
(2020533068, 201, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assign_role`
--

CREATE TABLE `assign_role` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `authority_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign_role`
--

INSERT INTO `assign_role` (`id`, `role_id`, `user_id`, `authority_id`) VALUES
(1, 4, 43, 54),
(2, 3, 44, 41),
(3, 3, 45, 41),
(4, 3, 46, 41),
(5, 3, 47, 41),
(6, 3, 48, 41),
(7, 3, 49, 41),
(8, 3, 50, 41),
(9, 3, 51, 41),
(10, 4, 52, 54),
(11, 3, 53, 41),
(12, 5, 54, 54),
(13, 3, 55, 54);

-- --------------------------------------------------------

--
-- Table structure for table `authority`
--

CREATE TABLE `authority` (
  `Name` varchar(20) DEFAULT NULL,
  `Designation` varchar(20) DEFAULT NULL,
  `PhoneNo` varchar(15) NOT NULL,
  `ID` int(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`Name`, `Designation`, `PhoneNo`, `ID`, `user_id`) VALUES
('Dr. Mohammad Mizanur', 'Provost', '01712185663', 1, NULL),
('Mr.Kawshik Saha', 'Assistant Provost', '01712852564', 2, NULL),
('Mr.Asish Kumar Banik', 'Assistant Provost', '01739060516', 3, NULL),
('Mr. Mohammad Abul Ha', 'Assstant Provost', '01710525919', 4, NULL),
('Mr.Md.Masum Talukdar', 'Assistant Provost', '01716310110', 5, NULL),
('Mr. A.S.M. Sayem', 'Assistant Provost', '01717342010', 6, NULL),
('Mr. Asif Mohammad Sa', 'Assistant Provost', '01718168496', 7, NULL),
('Mr. Md. Amirul Haque', 'Administrative Offic', '01716253577', 8, NULL),
('Mr. Md. Anwarul Haqu', 'Imam', '01738768628', 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `canteen_staff`
--

CREATE TABLE `canteen_staff` (
  `Name` varchar(20) DEFAULT NULL,
  `Designation` varchar(15) DEFAULT NULL,
  `Salary` int(6) DEFAULT NULL,
  `Salary_date` date DEFAULT NULL,
  `authority_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `canteen_staff`
--

INSERT INTO `canteen_staff` (`Name`, `Designation`, `Salary`, `Salary_date`, `authority_id`) VALUES
('Abdul Bachith', 'Main Chef', 3300, '2022-04-01', 1),
('Siddik Mia', 'Main Chef', 3300, '2022-04-01', 1),
('MD. Rekan Ahmed', 'Table Boy', 1400, '2022-04-01', 1),
('MD. Anwarul', 'Table Boy', 1400, '2022-04-01', 2),
('MD. Badrul', 'Table Boy', 1400, '2022-04-01', 2),
('Rehana Begum', 'Khala', 1200, '2022-04-01', 2),
('Hayatun Nessa', 'Khala', 1200, '2022-04-01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `VoucherNo` varchar(10) DEFAULT NULL,
  `Note_image_link` varchar(70) DEFAULT NULL,
  `Voucher_image_link` varchar(70) DEFAULT NULL,
  `Amount` int(10) DEFAULT NULL,
  `Reteurn_amount` int(10) DEFAULT NULL,
  `Bank_receipt_no` varchar(15) DEFAULT NULL,
  `The_date` date DEFAULT NULL,
  `authority_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`VoucherNo`, `Note_image_link`, `Voucher_image_link`, `Amount`, `Reteurn_amount`, `Bank_receipt_no`, `The_date`, `authority_id`) VALUES
('01', NULL, NULL, 1000, 200, '432556', '2022-04-12', 2),
('02', NULL, NULL, 500, 100, '432786', '2022-04-12', 2),
('03', NULL, NULL, 500, 100, '402786', '2022-04-20', 2),
('04', NULL, NULL, 200, 0, '430086', '2022-04-20', 3),
('05', NULL, NULL, 1000, 200, '432856', '2022-04-12', 3);

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `IssueNo` int(10) NOT NULL,
  `RoomNo` int(3) DEFAULT NULL,
  `RegNo` int(10) DEFAULT NULL,
  `Issue_date` date DEFAULT NULL,
  `Description` varchar(70) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `issue_type_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`IssueNo`, `RoomNo`, `RegNo`, `Issue_date`, `Description`, `status`, `issue_type_id`) VALUES
(1, 101, 2017331067, '2022-04-01', 'Broken bed', 'solved', NULL),
(2, 102, 2017332067, '2022-04-02', 'Broken chair', 'solved', NULL),
(3, 103, 2018335067, '2022-04-16', 'Broken table', 'solved', NULL),
(4, 201, 2017333069, '2022-04-04', 'Damaged light', 'solved', NULL),
(5, 202, 2018335067, '2022-04-18', 'Broken bed', 'solved', NULL),
(6, 205, 2018337005, '2022-04-12', 'Damaged Door Lock', 'unsolved', NULL),
(7, 301, 2018337067, '2022-04-11', 'Broken bed', 'unsolved', NULL),
(8, 302, 2018831026, '2022-03-16', 'Broken window glass', 'unsolved', NULL),
(9, 303, 2018831029, '2022-04-06', 'Water filter needed', 'unsolved', NULL),
(10, 401, 2018831090, '2022-04-07', 'Broken Water tap', 'unsolved', NULL),
(11, 403, 2019333069, '2022-04-25', 'Broken chair', 'unsolved', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `issue_type`
--

CREATE TABLE `issue_type` (
  `id` int(10) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `IssueNo` int(10) DEFAULT NULL,
  `Withdraw_amount` int(10) DEFAULT NULL,
  `Bank_receipt_no` varchar(15) NOT NULL,
  `Note_date` date DEFAULT NULL,
  `Description` varchar(70) DEFAULT NULL,
  `authority_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`IssueNo`, `Withdraw_amount`, `Bank_receipt_no`, `Note_date`, `Description`, `authority_id`) VALUES
(3, 500, '402786', '2022-04-20', 'Bought a Table', 2),
(4, 200, '430086', '2022-04-20', 'Bought a Light Bulb', 3),
(1, 1000, '432556', '2022-04-12', 'Bought a Bed', 2),
(2, 500, '432786', '2022-04-12', 'Bought a Chair', 2),
(5, 1000, '432856', '2022-04-12', 'Bought a Bed', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(10) NOT NULL,
  `notice` varchar(1000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `authority_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_record`
--

CREATE TABLE `payment_record` (
  `RegNo` int(10) DEFAULT NULL,
  `Amount` int(8) DEFAULT NULL,
  `Bank_recipt_no` int(11) NOT NULL,
  `Payment_date` date DEFAULT NULL,
  `Expiration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_record`
--

INSERT INTO `payment_record` (`RegNo`, `Amount`, `Bank_recipt_no`, `Payment_date`, `Expiration_date`) VALUES
(2017451044, 1700, 1, '2018-01-01', '2019-01-01'),
(2017831048, 1700, 2, '2018-01-01', '2019-01-01'),
(2017831044, 1700, 3, '2018-01-01', '2019-01-01'),
(2017831008, 1700, 4, '2018-01-01', '2019-01-01'),
(2017831011, 1700, 5, '2018-01-01', '2019-01-01'),
(2017831013, 1700, 6, '2019-01-01', '2020-01-01'),
(2017831010, 1700, 23, '2017-03-25', '2018-01-01'),
(2017831040, 1700, 24, '2017-01-14', '2018-01-01'),
(2017831009, 1700, 25, '2017-05-04', '2018-01-01'),
(2017334067, 1700, 26, '2017-05-11', '2018-01-01'),
(2017831021, 1700, 27, '2017-05-18', '2018-01-01'),
(2018831044, 1700, 28, '2018-01-02', '2019-01-01'),
(2018337067, 1700, 29, '2018-02-22', '2019-01-01'),
(2018831029, 1700, 30, '2018-04-24', '2019-01-01'),
(2018831026, 1700, 31, '2018-04-27', '2019-01-01'),
(2018337005, 1700, 32, '2018-04-08', '2019-01-01'),
(2019338067, 1700, 38, '2019-03-25', '2020-01-01'),
(2019339067, 1700, 39, '2019-01-14', '2020-01-01'),
(2019331043, 1700, 40, '2019-05-04', '2020-01-01'),
(2019533057, 1700, 41, '2019-05-11', '2020-01-01'),
(2019444067, 1700, 42, '2019-05-18', '2020-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `reciept`
--

CREATE TABLE `reciept` (
  `VoucherNo` varchar(10) NOT NULL,
  `Amount` int(10) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Description` varchar(70) DEFAULT NULL,
  `IssueNo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reciept`
--

INSERT INTO `reciept` (`VoucherNo`, `Amount`, `Address`, `Description`, `IssueNo`) VALUES
('01', 1000, 'Ma Bedding', 'Bought a bed', 1),
('02', 500, 'Ma Furniture', 'Bought a chair', 2),
('03', 500, 'Ma Furniture', 'Bought a table', 3),
('04', 200, 'Ma Electronics', 'Bought a light bulb', 4),
('05', 1000, 'Ma Bedding', 'Bought a bed', 5);

-- --------------------------------------------------------

--
-- Table structure for table `resident`
--

CREATE TABLE `resident` (
  `RegNo` int(10) DEFAULT NULL,
  `RoomNo` int(3) DEFAULT NULL,
  `Admission_date` date DEFAULT NULL,
  `Expire_date` date DEFAULT NULL,
  `Studentship_expiration` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resident`
--

INSERT INTO `resident` (`RegNo`, `RoomNo`, `Admission_date`, `Expire_date`, `Studentship_expiration`) VALUES
(2017451044, 105, '2018-01-01', '2019-01-01', '2022-01-01'),
(2017831048, 202, '2018-01-01', '2019-01-01', '2022-01-01'),
(2017831044, 206, '2018-01-01', '2019-01-01', '2022-01-01'),
(2017831008, 302, '2018-01-01', '2019-01-01', '2022-01-01'),
(2017831011, 305, '2018-01-01', '2019-01-01', '2022-01-01'),
(2017831013, 102, '2019-01-01', '2020-01-01', '2023-01-01'),
(2017831010, 101, '2017-03-25', '2018-01-01', '2022-01-01'),
(2017831040, 101, '2017-01-14', '2018-01-01', '2022-01-01'),
(2017831009, 101, '2017-05-04', '2018-01-01', '2022-01-01'),
(2017334067, 101, '2017-05-11', '2018-01-01', '2022-01-01'),
(2017831021, 102, '2017-05-18', '2018-01-01', '2022-01-01'),
(2018831044, 102, '2018-01-02', '2019-01-01', '2023-01-01'),
(2018337067, 102, '2018-02-22', '2019-01-01', '2023-01-01'),
(2018831029, 103, '2018-04-24', '2019-01-01', '2023-01-01'),
(2018831026, 103, '2018-04-27', '2019-01-01', '2023-01-01'),
(2018337005, 103, '2018-04-08', '2019-01-01', '2023-01-01'),
(2019338067, 103, '2019-03-25', '2020-01-01', '2024-01-01'),
(2019339067, 104, '2019-01-14', '2020-01-01', '2024-01-01'),
(2019331043, 104, '2019-05-04', '2020-01-01', '2024-01-01'),
(2019533057, 104, '2019-05-11', '2020-01-01', '2024-01-01'),
(2019444067, 104, '2019-05-18', '2020-01-01', '2024-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role`) VALUES
(1, 'APPLICANT'),
(2, 'SYSTEM'),
(3, 'PUBLIC'),
(4, 'RESIDENT'),
(5, 'AUTHORITY'),
(6, 'DEPT_HEAD'),
(7, 'PROVOST');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomNo` int(3) NOT NULL,
  `Block` varchar(3) DEFAULT NULL,
  `Floor` int(3) DEFAULT NULL,
  `Capacity` int(3) DEFAULT NULL,
  `Resident_number` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNo`, `Block`, `Floor`, `Capacity`, `Resident_number`) VALUES
(101, 'A', 1, 4, 4),
(102, 'A', 1, 4, 4),
(103, 'B', 1, 4, 4),
(104, 'A', 1, 4, 4),
(105, 'B', 1, 4, 4),
(106, 'B', 1, 4, 4),
(201, 'A', 2, 4, 2),
(202, 'A', 2, 4, 1),
(203, 'B', 2, 3, 0),
(204, 'A', 2, 3, 0),
(205, 'B', 2, 4, 0),
(206, 'B', 2, 4, 1),
(301, 'A', 3, 4, 0),
(302, 'A', 3, 4, 1),
(303, 'B', 3, 3, 0),
(304, 'A', 3, 3, 0),
(305, 'B', 3, 4, 1),
(306, 'B', 3, 4, 2),
(401, 'A', 4, 3, 0),
(402, 'A', 4, 4, 0),
(403, 'B', 4, 4, -1),
(404, 'A', 4, 4, 0),
(405, 'B', 4, 4, 0),
(406, 'B', 4, 3, 0),
(510, 'A', 5, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_application`
--

CREATE TABLE `student_application` (
  `Name` varchar(255) DEFAULT NULL,
  `RegNo` int(10) NOT NULL,
  `PhoneNo` varchar(14) DEFAULT NULL,
  `Father_name` varchar(255) DEFAULT NULL,
  `Mother_name` varchar(255) DEFAULT NULL,
  `Permanent_address` varchar(255) DEFAULT NULL,
  `Present_address` varchar(255) DEFAULT NULL,
  `Department` varchar(20) DEFAULT NULL,
  `Semester` int(2) DEFAULT NULL,
  `Last_result` float DEFAULT NULL,
  `Merit_position` int(10) DEFAULT NULL,
  `Approval_status` varchar(20) DEFAULT NULL,
  `Addmission_year` int(5) DEFAULT NULL,
  `Session` varchar(10) DEFAULT NULL,
  `Application_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_application`
--

INSERT INTO `student_application` (`Name`, `RegNo`, `PhoneNo`, `Father_name`, `Mother_name`, `Permanent_address`, `Present_address`, `Department`, `Semester`, `Last_result`, `Merit_position`, `Approval_status`, `Addmission_year`, `Session`, `Application_date`, `user_id`) VALUES
('ss', 1010, '+880', 'f', 'm', 's', 'a', 'SWE', 4, 3.33, 1001, 'ADMITTED', 2018, '2018-19', '2022-11-23 16:12:58', 52),
('sourav', 1028, '+880', 'f', 'm', 's', 'a', 'SWE', 4, 3.33, 1001, 'PENDING', 2018, '2018-19', '2022-11-22 18:00:00', 54),
('sourav', 10288, '+880', 'f', 'm', 's', 'a', 'SWE', 4, 3.33, 1001, 'PENDING', 2018, '2018-19', '2022-11-23 05:20:00', 54),
('sourav', 102881, '+880', 'f', 'm', 's', 'a', 'SWE', 4, 3.33, 1001, 'PENDING', 2018, '2018-19', '0000-00-00 00:00:00', 54),
('sourav', 1028811, '+880', 'f', 'm', 's', 'a', 'SWE', 4, 3.33, 1001, 'PENDING', 2018, '2018-19', '2022-11-23 05:25:01', 54),
('sourav', 10288111, '+880', 'f', 'm', 's', 'a', 'SWE', 4, 3.33, 1001, 'PENDING', 2018, '2018-19', '0000-00-00 00:00:00', 54),
('sourav', 102881111, '+880', 'f', 'm', 's', 'a', 'SWE', 4, 3.33, 1001, 'PENDING', 2018, '2018-19', '2022-11-23 11:27:52', 54),
('StudentTest', 1111111111, '+880', 'f', 'm', 's', 'a', 'SWE', 4, 3.33, 1001, 'ADMITTED', 2018, '2018-19', '2022-11-23 15:41:08', 54),
('Farhan Mahi', 2017330045, '01760727456', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'CSE', 7, 3.31, 1235, 'Submitted', 2017, '2017-18', '2022-05-24 14:45:01', NULL),
('Fahim Efto', 2017331067, '01760727123', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'EEE', 7, 3.35, 213, 'Submitted', 2017, '2017-18', '2022-05-24 14:45:01', NULL),
('Zubayer Hossain', 2017332067, '01760727234', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'CEE', 7, 3.43, 124, 'Submitted', 2017, '2017-18', '2022-05-24 14:45:01', NULL),
('Prapty Roy', 2017333067, '01760727345', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'CEP', 7, 3.53, 235, 'Submitted', 2017, '2017-18', '2022-05-24 14:47:52', NULL),
('Ahnaf Shariar', 2017333069, '01760727554', 'A.K.M Azizul Islam', 'Lata Yasmin', 'Mymensingh', 'Sylhet', 'FES', 7, 3.55, 2920, 'Submitted', 2017, '2017-18', '2022-05-24 14:47:52', NULL),
('Arif Shuvo', 2017334067, '01760727567', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'GEB', 7, 3.63, 2352, 'Admitted', 2017, '2017-18', '2022-05-24 16:01:08', NULL),
('Bipul Karmokar', 2017433069, '01760727554', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'FES', 7, 3.15, 120, 'Submitted', 2016, '2016-17', '2022-05-24 14:45:01', NULL),
('Emon', 2017451044, '01762891245', 'Abbas Shikder', 'Kulsuma Begum', 'Khulna', 'Sylhet', 'GEB', 7, 3.38, 2011, 'Admitted', 2017, '2017-18', '2022-05-24 16:01:08', NULL),
('Riddhiman Debnath', 2017533055, '01755727554', 'Hashem Ali', 'Sadia Sultana', 'Chattogram', 'Sylhet', 'MAT', 7, 3.45, 172, 'Submitted', 2016, '2016-17', '2022-05-24 14:47:52', NULL),
('Ariful Islam', 2017533057, '01755727554', 'Hashem Ali', 'Sadia Sultana', 'Chattogram', 'Sylhet', 'MAT', 7, 3.45, 1720, 'Submitted', 2017, '2017-18', '2022-05-24 14:47:52', NULL),
('Mahin Abid', 2017533069, '01760778554', 'Ali Mahmud', 'Zakera Begum', 'Bogura', 'Sylhet', 'MEE', 7, 3.55, 1020, 'Submitted', 2017, '2017-18', '2022-05-24 14:47:52', NULL),
('Rafid Noor', 2017733069, '01760778554', 'Ali Mahmud', 'Zakera Begum', 'Bogura', 'Sylhet', 'MEE', 7, 3.25, 1020, 'Submitted', 2017, '2017-18', '2022-05-24 14:45:01', NULL),
('Fahim', 2017831008, '01992356718', 'Abu karim', 'Abu Hasnat', 'Barishal', 'Sylhet', 'SWE', 7, 2.98, 883, 'Admitted', 2017, '2017-18', '2022-05-24 16:01:08', NULL),
('Durjoy', 2017831009, '01723167834', 'Abdur Rahman', 'ZIna Begum', 'Cumilla', 'Sylhet', 'CHE', 7, 3.66, 5099, 'Admitted', 2017, '2017-18', '2022-05-24 16:01:08', NULL),
(' Rakib ', 2017831010, '01317893310', 'Sayem Haque', 'Rina HAque', 'Bandarban', 'Sylhet', ' FET ', 7, 3.76, 1084, 'Admitted', 2017, '2017-18', '2022-05-24 16:01:08', NULL),
(' Gourav ', 2017831011, '01824536719', 'Biman Saha', 'Bithi Saha', 'Barishal', 'Sylhet', ' GEB ', 7, 3.1, 2145, 'Admitted', 2017, '2017-18', '2022-05-24 16:01:08', NULL),
(' Rafid ', 2017831013, '01561234178', 'Khaled Mahmud', 'Anju Akter', 'Khulna', 'Sylhet', ' ENG ', 7, 3.16, 5231, 'Admitted', 2017, '2017-18', '2022-05-24 16:01:08', NULL),
('Avishek', 2017831021, '01764231456', 'Sumon Dey', 'Kirti Dey', 'Chattogram', 'Sylhet', 'PHY', 7, 3.57, 3456, 'Admitted', 2017, '2017-18', '2022-05-24 16:01:08', NULL),
('Autul', 2017831040, '01893124567', 'Md.Shakil ', 'Fatema Karim', 'Noakhali', 'Sylhet', 'MAT', 7, 3.69, 3421, 'Admitted', 2017, '2017-18', '2022-05-24 16:01:08', NULL),
('Arnab Saha', 2017831044, '01516782910', 'Pritom Saha', 'Tithi Shaha', 'Dhaka', 'Sylhet', 'MEE', 7, 3.03, 1985, 'Admitted', 2017, '2017-18', '2022-05-24 16:01:08', NULL),
('Akib Laam', 2017831048, '0198123433', 'Rakib Laam', 'Mina Akter', 'Khulna', 'Sylhet', 'FET', 7, 2.97, 2122, 'Admitted', 2017, '2017-18', '2022-05-24 16:01:08', NULL),
('kishowar Sadaf', 2018335067, '01760727456', 'Karim Ali', 'Radia Akhter', 'Dhaka', 'Sylhet', 'BMB', 5, 3.38, 346, 'Submitted', 2018, '2018-19', '2022-05-24 14:45:01', NULL),
('Fariha Tasnim', 2018337005, '01760727534', 'MD. Akhtar Hossain', 'Rowshan Ara', 'Manikganj', 'Sylhet', 'FET', 5, 3.53, 1357, 'Admitted', 2018, '2018-19', '2022-05-24 16:01:08', NULL),
('Iftekhar Fuad', 2018337067, '01760727897', 'Karim Mahmud', 'Radia Khatun', 'Dhaka', 'Sylhet', 'OCG', 5, 3.73, 3463, 'Admitted', 2018, '2018-19', '2022-05-24 16:01:08', NULL),
('Navid Hasan', 2018831026, '01760725456', 'Kamruzzaman', 'Nargis Sultana', 'Jashore', 'Sylhet', 'SWE', 5, 3.53, 810, 'Admitted', 2018, '2018-19', '2022-05-24 16:01:08', NULL),
('Nishat Tafannum', 2018831029, '01456725654', 'Rahim Ali', 'Sadia Akhter', 'Chattogram', 'Sylhet', 'SWE', 5, 3.63, 810, 'Admitted', 2018, '2018-19', '2022-05-24 16:01:08', NULL),
('Rahat', 2018831044, '01883125678', 'Rahim Ali', 'Kulsuma Akter', 'Dhaka', 'Sylhet', 'SWE', 5, 3.76, 910, 'Admitted', 2018, '2018-19', '2022-05-24 16:01:08', NULL),
('Sourav Ahmed', 2018831068, '01760725654', 'Moslem Uddin Ahmed', 'Mashuara Ahmed', 'Manikganj', 'Sylhet', 'SWE', 5, 3.5, 920, 'Submitted', 2018, '2018-19', '2022-05-24 14:45:01', NULL),
('Sourav Rahman', 2018831090, '01760755654', 'Moslem Uddin Ahmed', 'Mashuara Ahmed', 'Manikganj', 'Sylhet', 'SWE', 5, 3.5, 920, 'Submitted', 2018, '2018-19', '2022-05-24 14:45:01', NULL),
('Mahanur Rahman', 2019331043, '01560727554', 'Kashem Ali', 'Sabana Akhter', 'Potuakhali', 'Sylhet', 'CSE', 3, 3.75, 220, 'Admitted', 2019, '2019-20', '2022-05-24 21:01:33', NULL),
('Raef Al Hasan', 2019333069, '01760727554', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'FES', 3, 3.15, 1210, 'Pending', 2019, '2019-20', '2022-05-25 00:45:05', NULL),
('Tamjid Rahman', 2019338067, '01760743727', 'Karim Ali', 'Radia Akhter', 'Dhaka', 'Sylhet', 'PME', 3, 3.93, 2372, 'Admitted', 2019, '2019-20', '2022-05-24 21:01:33', NULL),
('Jamshed Chowdhury', 2019339067, '01760678727', 'Karim Ali', 'Radia Akhter', 'Dhaka', 'Sylhet', 'CEE', 3, 3.83, 2345, 'APPROVEDBYDEPTHEAD', 2019, '2019-20', '2022-11-23 13:42:39', NULL),
('Geroge Lincoln', 2019444067, '01760727567', 'Karim Ali', 'Radia Akhter', 'Dhaka', 'Sylhet', 'FET', 3, 3.3, 2455, 'Admitted', 2019, '2019-20', '2022-05-24 21:01:33', NULL),
('Maruf Ahmed', 2019446067, '01760456727', 'Karim Ali', 'Radia Akhter', 'Dhaka', 'Sylhet', 'ECO', 3, 3.12, 1234, 'Pending', 2019, '2019-20', '2022-05-25 00:45:05', NULL),
('Prottoy Ahmed', 2019533057, '01755727554', 'Hashem Ali', 'Sadia Sultana', 'Chattogram', 'Sylhet', 'MAT', 3, 3.45, 1072, 'Admitted', 2019, '2019-20', '2022-05-24 21:01:33', NULL),
('Akash Ahmed', 2019533068, '01760778554', 'Ali Mahmud', 'Zakera Begum', 'Bogura', 'Sylhet', 'MEE', 3, 3.25, 127, 'Pending', 2019, '2019-20', '2022-05-25 00:45:05', NULL),
('Anindo Sarkar', 2020333069, '01760727554', 'Karim Ali', 'Radia Akhter', 'Mymensingh', 'Sylhet', 'FES', 1, 0, 3456, 'Submitted', 2020, '2020-21', '2022-05-24 14:45:01', NULL),
('Suhaib Ahmed', 2020445067, '01769670727', 'Karim Ali', 'Radia Akhter', 'Chattogram', 'Sylhet', 'PHY', 1, 0, 2354, 'Submitted', 2020, '2020-21', '2022-05-24 14:45:01', NULL),
('Emon Chowdhury', 2020447067, '01760486727', 'Karim Ali', 'Radia Akhter', 'Chattogram', 'Sylhet', 'CHE', 1, 0, 865, 'Pending', 2020, '2020-21', '2022-05-25 00:45:55', NULL),
('Masud Arsalan', 2020449067, '01760679727', 'Karim Ali', 'Radia Akhter', 'Chattogram', 'Sylhet', 'EEE', 1, 0, 967, 'Pending', 2020, '2020-21', '2022-05-25 00:45:55', NULL),
('Mahadi Mahi', 2020533057, '01755727554', 'Hashem Ali', 'Sadia Sultana', 'Chattogram', 'Sylhet', 'MAT', 1, 0, 4, 'Pending', 2020, '2020-21', '2022-05-25 00:45:55', NULL),
('Shawon haque', 2020533068, '01760778554', 'Ali Mahmud', 'Zakera Begum', 'Bogura', 'Sylhet', 'MEE', 1, 0, 1002, 'Pending', 2020, '2020-21', '2022-05-25 00:45:55', NULL),
('Prottoy Roy', 2020831001, '01760727754', 'Ali Seikh', 'halima Khatun', 'Manikgang', 'Sylhet', 'SWE', 1, 0, 520, 'Pending', 2020, '2020-21', '2022-05-25 00:45:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `reg` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `reg`) VALUES
(1, 'email@gmail.com', 'pass', 'sourav', 2018831068),
(2, 'email@gmail.com', 'pass', 'sourav', 2018831068),
(3, 'email@gmail.com', 'pass', 'sourav', 2018831068),
(4, 'email@gmail.com', 'pass', 'sourav', 2018831068),
(5, 'email@gmail.com', 'pass', 'sourav', 2018831068),
(6, 'email@gmail.com', 'pass', 'sourav', 2018831068),
(7, 'email@gmail.com', 'pass', 'sourav', 2018831068),
(8, 'email@gmail.com', 'pass', 'sourav', 2018831068),
(9, 'email@gmail.com', 'pass', 'sourav', 2018831068),
(10, 'email@gmail.com', 'pass', 'sourav', 2018831068),
(11, 'email@gmail.com', 'pass', 'sourav', 2018831068),
(12, 'email@gmail.com', 'pass', 'sourav2', 2018831068),
(13, 'email@gmail.com', 'pass', 'sourav2', 2018831068),
(14, 'ema2il@gmail.com', 'pass', 'sourav2', 2018831068),
(15, 'ema2il@gmail.com', 'pass', 'sourav2', 2018831068),
(16, 'ema2il@gmail.com', 'pass', 'sourav2', 2018831068),
(17, 'ema2il@gmail.com', 'pass', 'sourav2', 2018831068),
(18, 'ema2il@gmail.com', 'pass', 'sourav2', 2018831068),
(19, 'ema2il@gmail.com', 'pass', 'sourav2', 2018831068),
(20, 'ema21il@gmail.com', 'pass', 'sourav2', 2018831068),
(21, 'ema211il@gmail.com1', 'pass', 'sourav2', 2018831068),
(22, 'ema211ilgmail.com', 'pass', 'sourav2', 2018831068),
(23, 'ema211ildaffgmail.com', 'pass', 'sourav2', 2018831068),
(24, 'ema211ildaffgmailom', 'pass', 'sourav2', 2018831068),
(26, 'sourav.ahmed56fs54@gmail.com', 'pass', 'sourav2', 2018831068),
(27, 'sourav.ahmed5fda6fs54@gmail.com', 'pass', 'sourav2', 2018831068),
(28, 'sourav.ahmefasfd5fda6fs54@gmail.com', 'pass', 'sourav2', 2018831068),
(29, 'sourav.ahmefasfd5fda6fs54@gmail.comdf', 'pass', 'sourav2', 2018831068),
(30, 'souraasfv.ahmefasfd5fda6fs54@gmail.comdf', 'pass', 'sourav2', 2018831068),
(31, 'souraasfv.ahmefasfd5fda6fs54@gmail.comdffa', 'pass', 'sourav2', 2018831068),
(32, 'souraasfv.ahmefasfdasdf5fda6fs54@gmail.comdffa', 'pass', 'sourav2', 2018831068),
(33, 'souraasfadsv.ahmefasfdasdf5fda6fs54@gmail.comdffa', 'pass', 'sourav2', 2018831068),
(34, 'souraasfadsv.ahmefasfdasdf5fda6fs54@gmail.comdffaa', 'pass', 'sourav2', 2018831068),
(35, 'souraasfadsv.ahmefasfdasdf5fda6fs54@gmail.comdffaa', 'pass', 'sourav2', 2018831068),
(36, 'souraasfasfadsv.ahmefasfdasdf5fda6fs54@gmail.comdf', 'pass', 'sourav2', 2018831068),
(37, 'souraasfasfadjkllsv.ahmefasfdasdf5fda6fs54@gmail.c', 'pass', 'sourav2', 2018831068),
(38, 'sourjlaasfasfadjkllsv.ahmefasfdasdf5fda6fs54@gmail', 'pass', 'sourav2', 2018831068),
(39, 'sourjlafaasfasfadjkllsv.ahmefasfdasdf5fda6fs54@gma', 'pass', 'sourav2', 2018831068),
(40, 'sourjlafaasfasfadjkllsv.ahmefasfdasdf5fda6fs54@gma', 'pass', 'sourav2', 2018831068),
(41, 'SYSTEM@gmail.com', 'SYSTEM', 'SYSTEM', 1111111111),
(42, 's@gmail.com', '123456', 'Sourav', 12345679),
(43, 's2@gmail.com', '123456', 'Sourav', 12345679),
(44, 's22@gmail.com', '123456', 'Sourav', 12345679),
(45, 's122@gmail.com', '123456', 'Sourav', 12345679),
(46, 's1222@gmail.com', '123456', 'Sourav', 12345679),
(47, 's12223@gmail.com', '123456', 'Sourav', 12345679),
(48, 's122233@gmail.com', '123456', 'Sourav', 12345679),
(49, 's1222323@gmail.com', '123456', 'Sourav', 12345679),
(50, 's12221323@gmail.com', '123456', 'Sourav', 12345679),
(51, 's122221323@gmail.com', '123456', 'Sourav', 12345679),
(52, 'ss@gmail.com', '123456', 'Sourav', 12345679),
(53, 'ss3@gmail.com', '123456', 'Sourav', 12345679),
(54, 'AuthorityTest@gmail.com', '123456', 'Auth', 12345679),
(55, 'studenttest@gmail.com', '123456', 'student', 1111111111);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted_student`
--
ALTER TABLE `accepted_student`
  ADD KEY `RegNo` (`RegNo`),
  ADD KEY `Allocated_room` (`Allocated_room`),
  ADD KEY `authority_id` (`authority_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `assign_role`
--
ALTER TABLE `assign_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `canteen_staff`
--
ALTER TABLE `canteen_staff`
  ADD KEY `authority_id` (`authority_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD KEY `VoucherNo` (`VoucherNo`),
  ADD KEY `Bank_receipt_no` (`Bank_receipt_no`),
  ADD KEY `authority_id` (`authority_id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`IssueNo`),
  ADD KEY `RoomNo` (`RoomNo`),
  ADD KEY `RegNo` (`RegNo`),
  ADD KEY `issue_type_id` (`issue_type_id`);

--
-- Indexes for table `issue_type`
--
ALTER TABLE `issue_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`Bank_receipt_no`),
  ADD KEY `IssueNo` (`IssueNo`),
  ADD KEY `authority_id` (`authority_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authority_id` (`authority_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payment_record`
--
ALTER TABLE `payment_record`
  ADD PRIMARY KEY (`Bank_recipt_no`),
  ADD KEY `RegNo` (`RegNo`);

--
-- Indexes for table `reciept`
--
ALTER TABLE `reciept`
  ADD PRIMARY KEY (`VoucherNo`),
  ADD KEY `IssueNo` (`IssueNo`);

--
-- Indexes for table `resident`
--
ALTER TABLE `resident`
  ADD KEY `RegNo` (`RegNo`),
  ADD KEY `RoomNo` (`RoomNo`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomNo`);

--
-- Indexes for table `student_application`
--
ALTER TABLE `student_application`
  ADD PRIMARY KEY (`RegNo`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_role`
--
ALTER TABLE `assign_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_record`
--
ALTER TABLE `payment_record`
  MODIFY `Bank_recipt_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accepted_student`
--
ALTER TABLE `accepted_student`
  ADD CONSTRAINT `accepted_student_ibfk_1` FOREIGN KEY (`RegNo`) REFERENCES `student_application` (`RegNo`),
  ADD CONSTRAINT `accepted_student_ibfk_2` FOREIGN KEY (`Allocated_room`) REFERENCES `room` (`RoomNo`),
  ADD CONSTRAINT `accepted_student_ibfk_3` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `accepted_student_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `assign_role`
--
ALTER TABLE `assign_role`
  ADD CONSTRAINT `assign_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `assign_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `authority`
--
ALTER TABLE `authority`
  ADD CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `canteen_staff`
--
ALTER TABLE `canteen_staff`
  ADD CONSTRAINT `canteen_staff_ibfk_1` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`VoucherNo`) REFERENCES `reciept` (`VoucherNo`),
  ADD CONSTRAINT `expenses_ibfk_2` FOREIGN KEY (`Bank_receipt_no`) REFERENCES `note` (`Bank_receipt_no`),
  ADD CONSTRAINT `expenses_ibfk_3` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `issues`
--
ALTER TABLE `issues`
  ADD CONSTRAINT `issues_ibfk_1` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`),
  ADD CONSTRAINT `issues_ibfk_2` FOREIGN KEY (`RegNo`) REFERENCES `student_application` (`RegNo`),
  ADD CONSTRAINT `issues_ibfk_3` FOREIGN KEY (`issue_type_id`) REFERENCES `issue_type` (`id`);

--
-- Constraints for table `issue_type`
--
ALTER TABLE `issue_type`
  ADD CONSTRAINT `issue_type_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`IssueNo`) REFERENCES `issues` (`IssueNo`),
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `notice`
--
ALTER TABLE `notice`
  ADD CONSTRAINT `notice_ibfk_1` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`ID`),
  ADD CONSTRAINT `notice_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payment_record`
--
ALTER TABLE `payment_record`
  ADD CONSTRAINT `payment_record_ibfk_1` FOREIGN KEY (`RegNo`) REFERENCES `student_application` (`RegNo`);

--
-- Constraints for table `reciept`
--
ALTER TABLE `reciept`
  ADD CONSTRAINT `reciept_ibfk_1` FOREIGN KEY (`IssueNo`) REFERENCES `issues` (`IssueNo`);

--
-- Constraints for table `resident`
--
ALTER TABLE `resident`
  ADD CONSTRAINT `resident_ibfk_1` FOREIGN KEY (`RegNo`) REFERENCES `student_application` (`RegNo`),
  ADD CONSTRAINT `resident_ibfk_2` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`);

--
-- Constraints for table `student_application`
--
ALTER TABLE `student_application`
  ADD CONSTRAINT `student_application_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
