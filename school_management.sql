-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2026 at 07:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_details`
--

CREATE TABLE `academic_details` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `previous_schooling_status` varchar(100) DEFAULT NULL,
  `previous_class` varchar(50) DEFAULT NULL,
  `previous_school_name` varchar(150) DEFAULT NULL,
  `previous_board` varchar(100) DEFAULT NULL,
  `year_of_passing` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` int(11) NOT NULL,
  `year_name` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admission_applications`
--

CREATE TABLE `admission_applications` (
  `id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `blood_group` varchar(5) DEFAULT NULL,
  `address` text NOT NULL,
  `previous_school` varchar(150) DEFAULT NULL,
  `aadhaar_number` varchar(20) DEFAULT NULL,
  `parent_name` varchar(100) NOT NULL,
  `parent_phone` varchar(20) NOT NULL,
  `parent_email` varchar(100) NOT NULL,
  `class_applying_for` int(11) NOT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `student_photo` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `caste_category` varchar(50) DEFAULT NULL,
  `mother_tongue` varchar(50) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_mobile` varchar(20) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_mobile` varchar(20) DEFAULT NULL,
  `parents_address` text DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `relation` varchar(50) DEFAULT NULL,
  `guardian_mobile` varchar(20) DEFAULT NULL,
  `guardian_address` text DEFAULT NULL,
  `has_medical_condition` varchar(10) DEFAULT NULL,
  `medical_condition_desc` text DEFAULT NULL,
  `has_disability` varchar(10) DEFAULT NULL,
  `disability_desc` text DEFAULT NULL,
  `has_allergies` varchar(10) DEFAULT NULL,
  `allergies_desc` text DEFAULT NULL,
  `previous_schooling_status` varchar(50) DEFAULT NULL,
  `previous_class` varchar(50) DEFAULT NULL,
  `previous_board` varchar(100) DEFAULT NULL,
  `year_of_passing` varchar(10) DEFAULT NULL,
  `admission_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission_applications`
--

INSERT INTO `admission_applications` (`id`, `student_name`, `dob`, `gender`, `blood_group`, `address`, `previous_school`, `aadhaar_number`, `parent_name`, `parent_phone`, `parent_email`, `class_applying_for`, `status`, `created_at`, `student_photo`, `mobile_number`, `religion`, `caste_category`, `mother_tongue`, `father_name`, `father_mobile`, `mother_name`, `mother_mobile`, `parents_address`, `guardian_name`, `relation`, `guardian_mobile`, `guardian_address`, `has_medical_condition`, `medical_condition_desc`, `has_disability`, `disability_desc`, `has_allergies`, `allergies_desc`, `previous_schooling_status`, `previous_class`, `previous_board`, `year_of_passing`, `admission_number`) VALUES
(1, 'Test Student', '2015-05-15', 'Male', 'O+', '123 Test St', 'Old School', '123412341234', 'Test Parent', '9876543210', 'parent@test.com', 1, 'Approved', '2026-03-03 12:49:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'SHEHNAWAZ', '2020-02-07', 'Male', 'B+', 'VARANASI\r\n8918828677', 'MSES', 'admin', 'RAJU', '08768286053', 'shamba@gmail.com', 9, 'Approved', '2026-03-03 18:45:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'RIZWAN AHMAD', '2016-02-07', 'Male', 'A+', 'BOKTARVITA\r\nRANGALI\r\nBURAGANJ', 'MSES', '', 'Mr. Wangchen Tshering', '08768286053', 'rizzu@gmail.com', 8, 'Pending', '2026-03-03 19:19:55', 'stu_1772565595.png', '+918918828677', 'Hindu', 'OBC-A', 'hindi', 'Mr. Wangchen Tshering', '08768286053', 'NUR', '08918828677', 'HATIDOBA\r\nRANGALI\r\nBURAGANJ', 'LA', 'SON', '08768286053', 'VARANASI\r\n8918828677', '0', '', '0', '', '0', '', 'Transfer Certificate', 'NUR', 'WBBSE', '2025', 'ADM-2026-0003');

-- --------------------------------------------------------

--
-- Table structure for table `admission_requests`
--

CREATE TABLE `admission_requests` (
  `id` int(11) NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `class_applied` varchar(50) DEFAULT NULL,
  `parent_name` varchar(100) DEFAULT NULL,
  `parent_email` varchar(150) DEFAULT NULL,
  `parent_phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `guardian_details` text DEFAULT NULL,
  `student_photo` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `blood_group` varchar(10) DEFAULT NULL,
  `aadhaar_number` varchar(20) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `father_name` varchar(150) DEFAULT NULL,
  `father_mobile` varchar(20) DEFAULT NULL,
  `mother_name` varchar(150) DEFAULT NULL,
  `mother_mobile` varchar(20) DEFAULT NULL,
  `parents_address` text DEFAULT NULL,
  `guardian_name` varchar(150) DEFAULT NULL,
  `relation` varchar(100) DEFAULT NULL,
  `guardian_mobile` varchar(20) DEFAULT NULL,
  `guardian_address` text DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `caste_category` varchar(50) DEFAULT NULL,
  `mother_tongue` varchar(100) DEFAULT NULL,
  `has_medical_condition` tinyint(4) DEFAULT 0,
  `medical_condition_desc` text DEFAULT NULL,
  `has_disability` tinyint(4) DEFAULT 0,
  `disability_desc` text DEFAULT NULL,
  `has_allergies` tinyint(4) DEFAULT 0,
  `allergies_desc` text DEFAULT NULL,
  `previous_schooling_status` varchar(100) DEFAULT NULL,
  `previous_class` varchar(50) DEFAULT NULL,
  `previous_school_name` varchar(150) DEFAULT NULL,
  `previous_board` varchar(100) DEFAULT NULL,
  `year_of_passing` int(11) DEFAULT NULL,
  `previous_school` varchar(150) DEFAULT NULL,
  `admission_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `target_role_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `attachment_path` varchar(255) DEFAULT NULL,
  `attachment_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `content`, `target_role_id`, `created_by`, `created_at`, `attachment_path`, `attachment_type`) VALUES
(1, 'Exam Form Fill-up: Quarterly Exam (Class 10)', 'Dear students of Class 10,\n\nThe exam form fill-up window for Quarterly Exam is now open. The form fee is ₹200.00. Please submit the application form through your dashboard before the deadline: 30 May 2026.', 6, 2, '2026-05-17 03:18:07', NULL, NULL),
(2, 'Exam Form Fill-up: Annual Exam (Class 10)', 'Dear students of Class 10,\n\nThe exam form fill-up window for Annual Exam is now open. The form fee is ₹500.00. Please submit the application form through your dashboard before the deadline: 31 May 2026.', 6, 2, '2026-05-17 03:19:40', NULL, NULL),
(3, 'Exam Form Fill-up: Half Yearly Exam (Class 10)', 'Dear students of Class 10,\n\nThe exam form fill-up window for Half Yearly Exam is now open under Memo No: MEMO/EXAM/2026/7067. The form fee is ₹100.00. Please submit the application form through your dashboard before the deadline: 17 Jun 2026.', 6, 2, '2026-05-17 09:41:45', NULL, NULL),
(4, 'Exam Form Fill-up: Annual Exam (Class 6)', 'Dear students of Class 6,\n\nThe exam form fill-up window for Annual Exam is now open under Memo No: MEMO/EXAM/2026/8142. The form fee is ₹100.00. Please submit the application form through your dashboard before the deadline: 12 Jun 2026.', 6, 2, '2026-05-17 10:03:46', NULL, NULL),
(5, 'anual sports meet', 'dear facultiy and student', NULL, 2, '2026-05-17 13:06:10', 'uploads/notices/1779023170_a43b22d7d59fcdeb.pdf', 'pdf'),
(7, 'Official Results Released: Annual Exam (Class 10)', 'We are pleased to announce that the official examination results for target subject: \"Computer Science\" under \"Annual Exam\" have been officially verified, approved, and published by the Principal. \n\nStudents in Class 10 are hereby advised to log into their Student Portal to view and print their updated digital scorecards.', 6, 2, '2026-05-17 15:57:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `deadline` datetime NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `title`, `description`, `file_path`, `deadline`, `class_id`, `subject_id`, `teacher_id`, `created_at`) VALUES
(1, 'fgesrgf', 'ggsfdg', NULL, '2026-05-21 21:23:00', 3, 31, 436, '2026-05-17 15:53:03');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_submissions`
--

CREATE TABLE `assignment_submissions` (
  `id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `marks` decimal(5,2) DEFAULT NULL,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_submissions`
--

INSERT INTO `assignment_submissions` (`id`, `assignment_id`, `student_id`, `file_path`, `submitted_at`, `marks`, `remarks`) VALUES
(1, 1, 11, 'uploads/assignments/1779033208_91910275469620170815_055509.jpg', '2026-05-17 15:53:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('Present','Absent','Late','Half Day') NOT NULL,
  `marked_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `date`, `status`, `marked_by`) VALUES
(1, 305, '2026-05-17', 'Absent', 436),
(2, 302, '2026-05-17', 'Present', 436),
(3, 11, '2026-05-17', 'Present', 436),
(4, 292, '2026-05-17', 'Present', 436),
(5, 310, '2026-05-17', 'Present', 436),
(6, 15, '2026-05-17', 'Present', 436),
(7, 309, '2026-05-17', 'Present', 436),
(8, 296, '2026-05-17', 'Present', 436),
(9, 300, '2026-05-17', 'Present', 436),
(10, 294, '2026-05-17', 'Present', 436),
(11, 298, '2026-05-17', 'Present', 436),
(12, 301, '2026-05-17', 'Present', 436),
(13, 297, '2026-05-17', 'Present', 436),
(14, 291, '2026-05-17', 'Present', 436),
(15, 293, '2026-05-17', 'Present', 436),
(16, 303, '2026-05-17', 'Present', 436),
(17, 304, '2026-05-17', 'Present', 436),
(18, 299, '2026-05-17', 'Present', 436),
(19, 306, '2026-05-17', 'Present', 436),
(20, 307, '2026-05-17', 'Present', 436),
(21, 295, '2026-05-17', 'Present', 436),
(22, 308, '2026-05-17', 'Present', 436),
(23, 18, '2026-05-17', 'Present', 436),
(24, 305, '2026-05-18', 'Present', 436),
(25, 302, '2026-05-18', 'Present', 436),
(26, 11, '2026-05-18', 'Present', 436),
(27, 292, '2026-05-18', 'Present', 436),
(28, 310, '2026-05-18', 'Present', 436),
(29, 15, '2026-05-18', 'Present', 436),
(30, 309, '2026-05-18', 'Present', 436),
(31, 296, '2026-05-18', 'Present', 436),
(32, 300, '2026-05-18', 'Present', 436),
(33, 294, '2026-05-18', 'Present', 436),
(34, 298, '2026-05-18', 'Present', 436),
(35, 301, '2026-05-18', 'Present', 436),
(36, 297, '2026-05-18', 'Present', 436),
(37, 291, '2026-05-18', 'Present', 436),
(38, 293, '2026-05-18', 'Present', 436),
(39, 303, '2026-05-18', 'Present', 436),
(40, 304, '2026-05-18', 'Present', 436),
(41, 299, '2026-05-18', 'Present', 436),
(42, 306, '2026-05-18', 'Present', 436),
(43, 307, '2026-05-18', 'Present', 436),
(44, 295, '2026-05-18', 'Present', 436),
(45, 308, '2026-05-18', 'Present', 436),
(46, 18, '2026-05-18', 'Present', 436);

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `ip_address`, `created_at`) VALUES
(1, 1, 'Super Admin fetched dashboard records.', NULL, '2026-03-03 13:52:03'),
(2, 7, 'Parent logged in successfully.', NULL, '2026-03-03 13:52:03'),
(3, 1, 'Logged into staff/admin portal', '::1', '2026-03-25 12:55:05'),
(4, 1, 'Logged into staff/admin portal', '::1', '2026-03-25 12:57:20'),
(5, 1, 'Updated student record for Aditya Singh (ID: 136)', '::1', '2026-03-25 13:34:46'),
(6, 1, 'Logged into staff/admin portal', '::1', '2026-03-25 13:48:59'),
(7, 1, 'Logged into staff/admin portal', '::1', '2026-03-25 14:12:12'),
(8, 1, 'Logged into staff/admin portal', '::1', '2026-03-25 15:25:48'),
(9, 1, 'Logged into staff/admin portal', '::1', '2026-03-26 05:21:52'),
(10, 1, 'Logged into staff/admin portal', '::1', '2026-03-26 13:23:35'),
(11, 1, 'Logged into staff/admin portal', '::1', '2026-04-10 05:54:46'),
(12, 1, 'Logged into staff/admin portal', '::1', '2026-04-10 06:46:20'),
(13, 1, 'Logged into staff/admin portal', '::1', '2026-04-12 03:48:12'),
(14, 1, 'Updated student record for Aakanksha Chatterjee (ID: 305)', '::1', '2026-04-12 03:52:53'),
(15, 357, 'Student logged in successfully', '::1', '2026-04-12 04:00:58'),
(16, 104, 'Student logged in successfully', '::1', '2026-05-13 16:36:29'),
(17, 1, 'Logged into staff/admin portal', '::1', '2026-05-13 16:39:34'),
(18, 104, 'Student updated their profile', '::1', '2026-05-13 16:57:15'),
(19, 2, 'Logged into staff/admin portal', '::1', '2026-05-13 17:11:20'),
(20, 3, 'Logged into staff/admin portal', '::1', '2026-05-13 17:12:30'),
(21, 1, 'Logged into staff/admin portal', '::1', '2026-05-13 17:51:21'),
(22, 104, 'Student logged in successfully', '::1', '2026-05-14 03:42:50'),
(23, 1, 'Logged into staff/admin portal', '::1', '2026-05-14 04:02:45'),
(24, 104, 'Student updated their profile', '::1', '2026-05-14 04:04:50'),
(25, 104, 'Student logged in successfully', '::1', '2026-05-14 04:05:22'),
(26, 104, 'Student logged in successfully', '::1', '2026-05-14 04:05:28'),
(27, 104, 'Student logged in successfully', '::1', '2026-05-14 08:26:55'),
(28, 1, 'Logged into staff/admin portal', '::1', '2026-05-14 08:29:07'),
(29, 1, 'Logged into staff/admin portal', '127.0.0.1', '2026-05-15 08:53:48'),
(30, 104, 'Student logged in successfully', '::1', '2026-05-15 08:58:25'),
(31, 1, 'Logged into staff/admin portal', '::1', '2026-05-15 09:11:06'),
(32, 4, 'Logged into staff/admin portal', '::1', '2026-05-15 09:27:24'),
(33, 3, 'Logged into staff/admin portal', '::1', '2026-05-15 09:33:04'),
(34, 3, 'Clerk created fee head: gfddg', '::1', '2026-05-15 09:39:08'),
(35, 3, 'Clerk recorded payment for student ID 104', '::1', '2026-05-15 09:40:01'),
(36, 3, 'Clerk created fee head: admission fee', '::1', '2026-05-15 09:40:55'),
(37, 3, 'Clerk recorded payment for student ID 51', '::1', '2026-05-15 09:41:31'),
(38, 4, 'Logged into staff/admin portal', '::1', '2026-05-15 09:42:36'),
(39, 4, 'Teacher saved attendance for ', '::1', '2026-05-15 09:43:12'),
(40, 104, 'Student logged in successfully', '::1', '2026-05-16 16:45:56'),
(41, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 02:47:06'),
(42, 104, 'Student logged in successfully', '::1', '2026-05-17 02:48:34'),
(43, 2, 'Logged into staff/admin portal', '::1', '2026-05-17 02:53:52'),
(44, 104, 'Student logged in successfully', '::1', '2026-05-17 03:02:13'),
(45, 3, 'Logged into staff/admin portal', '::1', '2026-05-17 03:27:04'),
(46, 2, 'Logged into staff/admin portal', '::1', '2026-05-17 09:20:56'),
(47, 104, 'Student logged in successfully', '::1', '2026-05-17 09:23:42'),
(48, 3, 'Logged into staff/admin portal', '::1', '2026-05-17 09:27:03'),
(49, 2, 'Logged into staff/admin portal', '::1', '2026-05-17 09:41:00'),
(50, 3, 'Logged into staff/admin portal', '::1', '2026-05-17 09:48:55'),
(51, 2, 'Logged into staff/admin portal', '::1', '2026-05-17 09:57:39'),
(52, 3, 'Logged into staff/admin portal', '::1', '2026-05-17 10:03:57'),
(53, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 10:04:41'),
(54, 2, 'Logged into staff/admin portal', '::1', '2026-05-17 10:06:33'),
(55, 97, 'Student logged in successfully', '::1', '2026-05-17 10:07:02'),
(56, 3, 'Logged into staff/admin portal', '::1', '2026-05-17 10:09:21'),
(57, 2, 'Logged into staff/admin portal', '::1', '2026-05-17 10:17:39'),
(58, 104, 'Student logged in successfully', '::1', '2026-05-17 10:18:22'),
(59, 3, 'Logged into staff/admin portal', '::1', '2026-05-17 10:28:56'),
(60, 2, 'Logged into staff/admin portal', '::1', '2026-05-17 10:29:27'),
(61, 4, 'Logged into staff/admin portal', '::1', '2026-05-17 10:54:15'),
(62, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 10:55:42'),
(63, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 10:57:04'),
(64, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 10:58:12'),
(65, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 10:59:38'),
(66, 104, 'Student logged in successfully', '::1', '2026-05-17 12:07:29'),
(67, 4, 'Logged into staff/admin portal', '::1', '2026-05-17 12:07:42'),
(68, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 12:08:33'),
(69, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 12:14:24'),
(70, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 12:15:25'),
(71, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 12:17:33'),
(72, 436, 'Logged into staff/admin portal', '::1', '2026-05-17 12:18:14'),
(73, 436, 'Teacher saved attendance for Class 10', '::1', '2026-05-17 12:19:13'),
(74, 2, 'Logged into staff/admin portal', '::1', '2026-05-17 13:04:53'),
(75, 4, 'Logged into staff/admin portal', '::1', '2026-05-17 13:06:42'),
(76, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 13:20:39'),
(77, 2, 'Logged into staff/admin portal', '::1', '2026-05-17 13:32:52'),
(78, 4, 'Logged into staff/admin portal', '::1', '2026-05-17 13:41:03'),
(79, 2, 'Logged into staff/admin portal', '::1', '2026-05-17 13:44:31'),
(80, 4, 'Logged into staff/admin portal', '::1', '2026-05-17 13:46:37'),
(81, 436, 'Logged into staff/admin portal', '::1', '2026-05-17 15:11:05'),
(82, 436, 'Teacher saved attendance for Class 10', '::1', '2026-05-17 15:12:46'),
(83, 436, 'Teacher saved attendance for Class 10', '::1', '2026-05-17 15:13:05'),
(84, 436, 'Teacher saved attendance for Class 10', '::1', '2026-05-17 15:13:48'),
(85, 4, 'Logged into staff/admin portal', '::1', '2026-05-17 15:16:19'),
(86, 5, 'Logged into staff/admin portal', '::1', '2026-05-17 15:18:07'),
(87, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 15:44:16'),
(88, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 15:46:31'),
(89, 436, 'Logged into staff/admin portal', '::1', '2026-05-17 15:47:36'),
(90, 436, 'Teacher created assignment: fgesrgf', '::1', '2026-05-17 15:53:03'),
(91, 4, 'Logged into staff/admin portal', '::1', '2026-05-17 15:56:22'),
(92, 2, 'Logged into staff/admin portal', '::1', '2026-05-17 15:57:00'),
(93, 104, 'Student logged in successfully', '::1', '2026-05-17 16:00:19'),
(94, 436, 'Logged into staff/admin portal', '::1', '2026-05-17 16:01:01'),
(95, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 16:13:16'),
(96, 436, 'Logged into staff/admin portal', '::1', '2026-05-17 16:15:06'),
(97, 1, 'Logged into staff/admin portal', '::1', '2026-05-17 16:24:29'),
(98, 2, 'Logged into staff/admin portal', '::1', '2026-05-17 16:26:09'),
(99, 3, 'Logged into staff/admin portal', '::1', '2026-05-17 16:31:17'),
(100, 104, 'Student logged in successfully', '::1', '2026-05-18 03:50:39'),
(101, 1, 'Logged into staff/admin portal', '::1', '2026-05-18 04:06:28'),
(102, 437, 'Logged into staff/admin portal', '::1', '2026-05-18 04:30:23'),
(103, 1, 'Logged into staff/admin portal', '::1', '2026-05-18 04:31:38'),
(104, 104, 'Student logged in successfully', '::1', '2026-05-18 05:02:46'),
(105, 2, 'Logged into staff/admin portal', '::1', '2026-05-18 05:06:27'),
(106, 1, 'Logged into staff/admin portal', '::1', '2026-05-18 05:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`) VALUES
(1, 'Class 1'),
(2, 'Class 2'),
(3, 'Class 10'),
(4, 'Pre-Nursery'),
(5, 'Nursery'),
(6, 'LKG'),
(7, 'UKG'),
(8, 'Class 3'),
(9, 'Class 4'),
(10, 'Class 5'),
(11, 'Class 6'),
(12, 'Class 7'),
(13, 'Class 8'),
(14, 'Class 9'),
(15, 'Class 11'),
(16, 'Class 12'),
(17, 'Class 13');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `academic_year_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `start_date`, `end_date`, `academic_year_id`) VALUES
(1, 'Annual Exam', '2026-03-01', '2026-03-15', NULL),
(2, 'Half Yearly Exam', '2025-09-01', '2025-09-15', NULL),
(3, 'Quarterly Exam', '2025-06-01', '2025-06-10', NULL),
(4, 'Unit Test', '2025-05-01', '2025-05-05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_admit_cards`
--

CREATE TABLE `exam_admit_cards` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `academic_year` varchar(50) DEFAULT NULL,
  `memo_no` varchar(50) DEFAULT NULL,
  `roll_number` varchar(50) DEFAULT NULL,
  `admit_card_no` varchar(100) NOT NULL,
  `security_hash` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_admit_cards`
--

INSERT INTO `exam_admit_cards` (`id`, `student_id`, `exam_id`, `class_id`, `academic_year`, `memo_no`, `roll_number`, `admit_card_no`, `security_hash`, `created_at`) VALUES
(1, 2, 1, 3, NULL, NULL, 'ROLL-2026-0002', 'ADM-2026-002-7971', 'f24cc7908cd0bda362ad593c2334d985b6690f92eef57e428c09cf31ae7c84a8', '2026-05-17 10:34:41'),
(2, 9, 1, 3, NULL, NULL, 'ROLL-2026-0009', 'ADM-2026-009-9856', 'a852735edf75e55e76d78594edf36d040720ae8c7c8aacfb9452ee90feae39f4', '2026-05-17 10:34:41'),
(3, 11, 1, 3, NULL, NULL, 'ROLL-2026-0011', 'ADM-2026-011-8919', '4986e251c86f6d6044e35e04667690e64f27bedf16253c2200fe72ddae5529e9', '2026-05-17 10:34:41'),
(4, 15, 1, 3, NULL, NULL, 'ROLL-2026-0015', 'ADM-2026-015-7204', '83d2d4a3521d6eda4e0c2f5bc37e8b4dceaf0851fc477f6b9af935f45985ea97', '2026-05-17 10:34:42'),
(5, 18, 1, 3, NULL, NULL, 'ROLL-2026-0018', 'ADM-2026-018-9161', '80df25b18dcce1e9610e3bdc2ce5754b3c1276b1d3c7589462027081960be91c', '2026-05-17 10:34:42'),
(6, 291, 1, 3, NULL, NULL, 'ROLL-2026-0291', 'ADM-2026-291-4143', '16517d63c6cd5b14e1f63977489eaa6d0f98910f549b3b6f5c9a23e8e5a655fb', '2026-05-17 10:34:42'),
(7, 292, 1, 3, NULL, NULL, 'ROLL-2026-0292', 'ADM-2026-292-8709', '7f716d2ec073591c1736b41714fc4c96c8d1da379574f2412ca50201e4e6baaf', '2026-05-17 10:34:42'),
(8, 293, 1, 3, NULL, NULL, 'ROLL-2026-0293', 'ADM-2026-293-2480', '45ee59fef3c0ee7c39b451f6dab9895b39551b3239820f07cffcbe01175bf103', '2026-05-17 10:34:42'),
(9, 294, 1, 3, NULL, NULL, 'ROLL-2026-0294', 'ADM-2026-294-7854', 'e322fb7e3e41e68c553a753f9d5395d53fba1b36a9860f1a4fc9d50ddfd6b6c7', '2026-05-17 10:34:42'),
(10, 295, 1, 3, NULL, NULL, 'ROLL-2026-0295', 'ADM-2026-295-8602', '6d24308bc095b0c271e8ecbf3dc9eca78d3e666189de31f51b96de100616b721', '2026-05-17 10:34:42'),
(11, 296, 1, 3, NULL, NULL, 'ROLL-2026-0296', 'ADM-2026-296-5318', '73b95373be85e0aae0612e31155676ad21c00a442e729f0d4dc8d135df6609d2', '2026-05-17 10:34:42'),
(12, 297, 1, 3, NULL, NULL, 'ROLL-2026-0297', 'ADM-2026-297-3539', '8e2eaec20190f6bf570c6f6d4d6d6fcd21a87568cbd58dd105a0d27429e89dd5', '2026-05-17 10:34:42'),
(13, 298, 1, 3, NULL, NULL, 'ROLL-2026-0298', 'ADM-2026-298-1255', '5bf91a1e09640ae6be7f5c9f81913bc3d9908f16d638aee25571078411ec71b0', '2026-05-17 10:34:42'),
(14, 299, 1, 3, NULL, NULL, 'ROLL-2026-0299', 'ADM-2026-299-2061', '92167bdaf5804beb341e4c989704b11c6b139005d23ec3bb75733b8fb4f58a2f', '2026-05-17 10:34:42'),
(15, 300, 1, 3, NULL, NULL, 'ROLL-2026-0300', 'ADM-2026-300-2668', '11417116c75bab28e9968735b7fd33fa7b654e7c47f8e317da612c3d0a56e1b7', '2026-05-17 10:34:42'),
(16, 301, 1, 3, NULL, NULL, 'ROLL-2026-0301', 'ADM-2026-301-6481', '10a6997f16936a516b40a326fbba626c0ee00abccbc98a0d10eba763d81759a8', '2026-05-17 10:34:42'),
(17, 302, 1, 3, NULL, NULL, 'ROLL-2026-0302', 'ADM-2026-302-5708', '4068958e74ec740e9c9a0bc885fb8b7a2dd997d12e03501c3723f6bc32112041', '2026-05-17 10:34:42'),
(18, 303, 1, 3, NULL, NULL, 'ROLL-2026-0303', 'ADM-2026-303-6453', '28831e1886d580952d4acc59ffd3d5dff002c65349e6e66c10438a82880184f0', '2026-05-17 10:34:42'),
(19, 304, 1, 3, NULL, NULL, 'ROLL-2026-0304', 'ADM-2026-304-2120', '90e35edcff4e01b859459f04830e8525dfec4ed12e80fa9f38fe9d2f435d5ded', '2026-05-17 10:34:42'),
(20, 305, 1, 3, NULL, NULL, 'ROLL-2026-0305', 'ADM-2026-305-3223', 'bea0252aeee4e8c2137596fa7b1c4c84476838f7df136815d80b28bdbc70d315', '2026-05-17 10:34:42'),
(21, 306, 1, 3, NULL, NULL, 'ROLL-2026-0306', 'ADM-2026-306-9172', '56a9a5f3bda2bd0b7c2b0d81f41cdfa92869f2a3ceebfd5f656cf0e40248a5a3', '2026-05-17 10:34:42'),
(22, 307, 1, 3, NULL, NULL, 'ROLL-2026-0307', 'ADM-2026-307-5076', '7d63f19e52b8096ebdd1d7b87c059efae85ebb66416ed22a36a5f6f3424217da', '2026-05-17 10:34:42'),
(23, 308, 1, 3, NULL, NULL, 'ROLL-2026-0308', 'ADM-2026-308-9267', '55fbd8837df8201c02f053c4dd0b78fb3919d3472d545666603fdb0f4828026a', '2026-05-17 10:34:42'),
(24, 309, 1, 3, NULL, NULL, 'ROLL-2026-0309', 'ADM-2026-309-3712', '445416172221ee4be2a4087d0109206b40b9df0c7cbb185d16fb7a207caf3141', '2026-05-17 10:34:42'),
(25, 310, 1, 3, NULL, NULL, 'ROLL-2026-0310', 'ADM-2026-310-9407', '603fd7964cda9959e1535c5d0ae95b336c39a6c81bb9554377a8c55ce50e8856', '2026-05-17 10:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `exam_form_settings`
--

CREATE TABLE `exam_form_settings` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `is_open` tinyint(1) DEFAULT 0,
  `fee_amount` decimal(10,2) DEFAULT 0.00,
  `deadline` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `memo_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_form_settings`
--

INSERT INTO `exam_form_settings` (`id`, `exam_id`, `class_id`, `is_open`, `fee_amount`, `deadline`, `created_at`, `memo_no`) VALUES
(1, 1, 3, 1, 500.00, '2026-05-30', '2026-05-17 03:01:43', NULL),
(2, 3, 3, 1, 200.00, '2026-05-30', '2026-05-17 03:18:07', NULL),
(4, 2, 3, 1, 100.00, '2026-06-17', '2026-05-17 09:41:45', 'MEMO/EXAM/2026/7067'),
(5, 1, 11, 1, 100.00, '2026-06-12', '2026-05-17 10:03:45', 'MEMO/EXAM/2026/8142');

-- --------------------------------------------------------

--
-- Table structure for table `exam_form_submissions`
--

CREATE TABLE `exam_form_submissions` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `form_data` text DEFAULT NULL,
  `status` enum('Pending','Verified','Approved','Rejected') DEFAULT 'Pending',
  `clerk_id` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `application_sl_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_form_submissions`
--

INSERT INTO `exam_form_submissions` (`id`, `student_id`, `exam_id`, `form_data`, `status`, `clerk_id`, `remarks`, `submitted_at`, `application_sl_no`) VALUES
(1, 11, 1, '{\"Contact Number\":\"7845454565\",\"Address Confirmed\":\"Yes\",\"Optional Subject\":\"Computer Science\",\"Payment Reference\\/Receipt\":\"gsfdg\",\"Payment Reference\":\"gsfdg\"}', 'Approved', 3, 'gf\nPrin. Remarks: ', '2026-05-17 03:25:02', NULL),
(2, 11, 3, '{\"Student Name\":\"Aditya Bansal\",\"Admission No\":\"ADM-2026-0001\",\"Class\":\"Class 10\",\"Date of Birth\":\"2010-05-15\",\"Gender\":\"Male\",\"Blood Group\":\"O+\",\"Aadhaar Number\":\"123456789012\",\"Religion\":\"Hindu\",\"Caste\\/Category\":\"General\",\"Mother Tongue\":\"Hindi\",\"Father Name\":\"Ramesh Sharma\",\"Mother Name\":\"Sunita Sharma\",\"Father Mobile\":\"9876543200\",\"Mother Mobile\":\"9876543202\",\"Present Address\":\"12 MG Road, Delhi\",\"Permanent Address\":\"12 MG Road, Delhi\",\"Student Mobile\":\"9876543201\",\"Student Email\":\"student1@school.com\",\"Optional Subject\":\"Computer Science\",\"Payment Mode\":\"Cash at Counter\",\"Payment Reference\\/Receipt\":\"slip\\/2026\\/54674\",\"Payment Reference\":\"slip\\/2026\\/54674\"}', 'Approved', 3, 'done\nPrin. Remarks: ', '2026-05-17 09:38:23', 'APP/EXAM/2026/88595'),
(3, 11, 2, '{\"Student Name\":\"Aditya Bansal\",\"Admission No\":\"ADM-2026-0001\",\"Class\":\"Class 10\",\"Date of Birth\":\"2010-05-15\",\"Gender\":\"Male\",\"Blood Group\":\"O+\",\"Aadhaar Number\":\"123456789012\",\"Religion\":\"Hindu\",\"Caste\\/Category\":\"General\",\"Mother Tongue\":\"Hindi\",\"Father Name\":\"Ramesh Sharma\",\"Mother Name\":\"Sunita Sharma\",\"Father Mobile\":\"9876543200\",\"Mother Mobile\":\"9876543202\",\"Present Address\":\"12 MG Road, Delhi\",\"Permanent Address\":\"12 MG Road, Delhi\",\"Student Mobile\":\"9876543201\",\"Student Email\":\"student1@school.com\",\"Optional Subject\":\"None\",\"Payment Mode\":\"Cash at Counter\",\"Payment Reference\\/Receipt\":\"hgfhsdhg\",\"Payment Reference\":\"hgfhsdhg\"}', 'Approved', 3, 'fdgsdfg\nPrin. Remarks: ', '2026-05-17 09:42:31', 'APP/EXAM/2026/28021');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `marks_obtained` decimal(5,2) DEFAULT NULL,
  `marks_total` decimal(5,2) DEFAULT 100.00,
  `passing_marks` decimal(5,2) DEFAULT 33.00,
  `is_absent` tinyint(1) DEFAULT 0,
  `status` enum('Draft','Submitted','Approved','Rejected') DEFAULT 'Draft',
  `teacher_id` int(11) NOT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedule_notices`
--

CREATE TABLE `exam_schedule_notices` (
  `id` int(11) NOT NULL,
  `notice_no` varchar(50) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `schedule_data` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` enum('Pending','Approved') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_schedule_notices`
--

INSERT INTO `exam_schedule_notices` (`id`, `notice_no`, `exam_id`, `class_id`, `schedule_data`, `created_by`, `status`, `created_at`) VALUES
(1, 'EXAM-SCH-2026-0001', 1, 3, '[{\"subject\":\"hindi\",\"date\":\"2026-05-05\",\"full_marks\":100,\"time\":\"10:00am to 1:00pm\"}]', 3, 'Approved', '2026-05-17 10:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `academic_year_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `class_id`, `title`, `amount`, `due_date`, `academic_year_id`) VALUES
(1, 1, 'gfddg', 45.00, '2026-04-27', NULL),
(2, 11, 'admission fee', 5000.00, '2026-05-15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `guardian_name` varchar(150) DEFAULT NULL,
  `relation` varchar(100) DEFAULT NULL,
  `guardian_mobile` varchar(20) DEFAULT NULL,
  `guardian_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `health_details`
--

CREATE TABLE `health_details` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `has_medical_condition` tinyint(4) DEFAULT NULL,
  `medical_condition_desc` text DEFAULT NULL,
  `has_disability` tinyint(4) DEFAULT NULL,
  `disability_desc` text DEFAULT NULL,
  `has_allergies` tinyint(4) DEFAULT NULL,
  `allergies_desc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `marks_obtained` decimal(5,2) NOT NULL,
  `total_marks` decimal(5,2) NOT NULL,
  `grade` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `alt_phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `user_id`, `occupation`, `alt_phone`) VALUES
(1, 7, 'Engineer', NULL),
(2, 8, NULL, NULL),
(3, 10, NULL, NULL),
(4, 12, NULL, NULL),
(5, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fee_id` int(11) NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_method` varchar(50) DEFAULT 'Cash',
  `status` enum('Pending','Completed','Failed') DEFAULT 'Completed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `student_id`, `fee_id`, `amount_paid`, `payment_date`, `payment_method`, `status`) VALUES
(1, 104, 1, 45.00, '2026-05-15 09:40:01', 'UPI', 'Completed'),
(2, 51, 2, 500.00, '2026-05-15 09:41:31', 'Cash', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Super Admin'),
(2, 'Principal'),
(3, 'Clerk'),
(4, 'Class Teacher'),
(5, 'Subject Teacher'),
(6, 'Student'),
(7, 'Parent'),
(8, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `class_id`, `class_teacher_id`) VALUES
(1, 'A', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `admission_no` varchar(50) DEFAULT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `parent_name` varchar(100) DEFAULT NULL,
  `parent_email` varchar(150) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `parent_phone` varchar(20) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT 1,
  `application_id` int(11) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `aadhaar_number` varchar(20) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `father_name` varchar(150) DEFAULT NULL,
  `father_mobile` varchar(20) DEFAULT NULL,
  `mother_name` varchar(150) DEFAULT NULL,
  `mother_mobile` varchar(20) DEFAULT NULL,
  `parents_address` text DEFAULT NULL,
  `guardian_name` varchar(150) DEFAULT NULL,
  `relation` varchar(100) DEFAULT NULL,
  `guardian_mobile` varchar(20) DEFAULT NULL,
  `guardian_address` text DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `caste_category` varchar(50) DEFAULT NULL,
  `mother_tongue` varchar(100) DEFAULT NULL,
  `has_medical_condition` tinyint(4) DEFAULT 0,
  `medical_condition_desc` text DEFAULT NULL,
  `has_disability` tinyint(4) DEFAULT 0,
  `disability_desc` text DEFAULT NULL,
  `has_allergies` tinyint(4) DEFAULT 0,
  `allergies_desc` text DEFAULT NULL,
  `previous_schooling_status` varchar(100) DEFAULT NULL,
  `previous_class` varchar(50) DEFAULT NULL,
  `previous_school_name` varchar(150) DEFAULT NULL,
  `previous_board` varchar(100) DEFAULT NULL,
  `year_of_passing` int(11) DEFAULT NULL,
  `previous_school` varchar(150) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `guardian_details` text DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `class_applied` varchar(50) DEFAULT NULL,
  `student_photo` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `admission_number` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `student_mobile` varchar(20) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `admission_no`, `student_name`, `gender`, `dob`, `class`, `parent_name`, `parent_email`, `photo`, `created_at`, `parent_phone`, `is_active`, `application_id`, `blood_group`, `aadhaar_number`, `mobile_number`, `father_name`, `father_mobile`, `mother_name`, `mother_mobile`, `parents_address`, `guardian_name`, `relation`, `guardian_mobile`, `guardian_address`, `religion`, `caste_category`, `mother_tongue`, `has_medical_condition`, `medical_condition_desc`, `has_disability`, `disability_desc`, `has_allergies`, `allergies_desc`, `previous_schooling_status`, `previous_class`, `previous_school_name`, `previous_board`, `year_of_passing`, `previous_school`, `address`, `guardian_details`, `admission_date`, `status`, `class_applied`, `student_photo`, `user_id`, `class_id`, `section_id`, `parent_id`, `admission_number`, `age`, `present_address`, `student_mobile`, `username`, `email`, `password`) VALUES
(2, 'ADM-2026-0002', 'Priya Menon', 'Female', '2019-03-04', '3', 'Father Name 2', 'student2@test.com', 'students/1772898928_2_1644572849.jpg', '2026-03-04 08:06:46', '9998887702', 1, NULL, 'O+', '123456789002', '9888777002', 'Father Name 2', '9998887702', 'Mother Name 2', '9998886602', '122 Main St, Parent City', 'Guardian Name 2', 'Uncle', '9998885502', '122 Main St, Guardian City', 'Hindu', 'General', 'English', 1, 'Minor Asthma', 0, '', 1, 'Peanuts', 'Yes', '2', 'Previous School 2', 'CBSE', 2025, NULL, '122 Main St, Present City', NULL, '2026-03-04', 'Approved', '3', 'students/1772898928_2_1644572849.jpg', 95, NULL, NULL, NULL, NULL, NULL, NULL, '9888777002', NULL, NULL, NULL),
(3, 'ADM-2026-0003', 'Vihaan Sharma', 'Male', '2018-03-04', '4', 'Father Name 3', 'student3@test.com', 'students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', '2026-03-04 08:06:46', '9998887703', 1, NULL, 'O+', '123456789003', '9888777003', 'Father Name 3', '9998887703', 'Mother Name 3', '9998886603', '123 Main St, Parent City', 'Guardian Name 3', 'Uncle', '9998885503', '123 Main St, Guardian City', 'Hindu', 'General', 'English', 1, 'Minor Asthma', 0, '', 1, 'Peanuts', 'Yes', '3', 'Previous School 3', 'CBSE', 2025, NULL, '123 Main St, Present City', NULL, '2026-03-04', 'Approved', '4', 'students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 96, NULL, NULL, NULL, NULL, NULL, NULL, '9888777003', NULL, NULL, NULL),
(4, 'ADM-2026-0004', 'Saanvi Mishra', 'Female', '2017-03-04', '5', 'Father Name 4', 'student4@test.com', 'students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', '2026-03-04 08:06:46', '9998887704', 1, NULL, 'O+', '123456789004', '9888777004', 'Father Name 4', '9998887704', 'Mother Name 4', '9998886604', '124 Main St, Parent City', 'Guardian Name 4', 'Uncle', '9998885504', '124 Main St, Guardian City', 'Hindu', 'General', 'English', 1, 'Minor Asthma', 0, '', 1, 'Peanuts', 'Yes', '4', 'Previous School 4', 'CBSE', 2025, NULL, '124 Main St, Present City', NULL, '2026-03-04', 'Approved', '5', 'students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 97, NULL, NULL, NULL, NULL, NULL, NULL, '9888777004', NULL, NULL, NULL),
(5, 'ADM-2026-0005', 'Sanjay Sen', 'Male', '2021-03-04', '6', 'Father Name 5', 'student5@test.com', 'students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', '2026-03-04 08:06:46', '9998887705', 1, NULL, 'O+', '123456789005', '9888777005', 'Father Name 5', '9998887705', 'Mother Name 5', '9998886605', '125 Main St, Parent City', 'Guardian Name 5', 'Uncle', '9998885505', '125 Main St, Guardian City', 'Hindu', 'General', 'English', 1, 'Minor Asthma', 0, '', 1, 'Peanuts', 'Yes', '5', 'Previous School 5', 'CBSE', 2025, NULL, '125 Main St, Present City', NULL, '2026-03-04', 'Approved', '6', 'students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 98, NULL, NULL, NULL, NULL, NULL, NULL, '9888777005', NULL, NULL, NULL),
(6, NULL, 'Pooja Kumar', 'Female', '2020-03-04', '7', 'Father Name 6', 'student6@test.com', 'students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', '2026-03-04 08:06:46', '9998887706', 1, NULL, 'O+', '123456789006', '9888777006', 'Father Name 6', '9998887706', 'Mother Name 6', '9998886606', '126 Main St, Parent City', 'Guardian Name 6', 'Uncle', '9998885506', '126 Main St, Guardian City', 'Hindu', 'General', 'English', 1, 'Minor Asthma', 0, '', 1, 'Peanuts', 'Yes', '6', 'Previous School 6', 'CBSE', 2025, NULL, '126 Main St, Present City', NULL, NULL, 'Approved', '7', 'students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 99, NULL, NULL, NULL, NULL, NULL, NULL, '9888777006', NULL, NULL, NULL),
(7, NULL, 'Vanya Singh', 'Male', '2019-03-04', '8', 'Father Name 7', 'student7@test.com', 'students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', '2026-03-04 08:06:46', '9998887707', 1, NULL, 'O+', '123456789007', '9888777007', 'Father Name 7', '9998887707', 'Mother Name 7', '9998886607', '127 Main St, Parent City', 'Guardian Name 7', 'Uncle', '9998885507', '127 Main St, Guardian City', 'Hindu', 'General', 'English', 1, 'Minor Asthma', 0, '', 1, 'Peanuts', 'Yes', '7', 'Previous School 7', 'CBSE', 2025, NULL, '127 Main St, Present City', NULL, NULL, 'Approved', '8', 'students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 100, NULL, NULL, NULL, NULL, NULL, NULL, '9888777007', NULL, NULL, NULL),
(8, NULL, 'Vikram Kapoor', 'Female', '2018-03-04', '9', 'Father Name 8', 'student8@test.com', 'students/1772898928_8_8c11dd4a7110a437722370c4663f80ec.jpg', '2026-03-04 08:06:46', '9998887708', 1, NULL, 'O+', '123456789008', '9888777008', 'Father Name 8', '9998887708', 'Mother Name 8', '9998886608', '128 Main St, Parent City', 'Guardian Name 8', 'Uncle', '9998885508', '128 Main St, Guardian City', 'Hindu', 'General', 'English', 1, 'Minor Asthma', 0, '', 1, 'Peanuts', 'Yes', '8', 'Previous School 8', 'CBSE', 2025, NULL, '128 Main St, Present City', NULL, NULL, 'Approved', '9', 'students/1772898928_8_8c11dd4a7110a437722370c4663f80ec.jpg', 101, NULL, NULL, NULL, NULL, NULL, NULL, '9888777008', NULL, NULL, NULL),
(9, NULL, 'Sanjay Kumar', 'Male', '2017-03-04', '10', 'Father Name 9', 'student9@test.com', 'students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', '2026-03-04 08:06:46', '9998887709', 1, NULL, 'O+', '123456789009', '9888777009', 'Father Name 9', '9998887709', 'Mother Name 9', '9998886609', '129 Main St, Parent City', 'Guardian Name 9', 'Uncle', '9998885509', '129 Main St, Guardian City', 'Hindu', 'General', 'English', 1, 'Minor Asthma', 0, '', 1, 'Peanuts', 'Yes', '9', 'Previous School 9', 'CBSE', 2025, NULL, '129 Main St, Present City', NULL, NULL, 'Approved', '10', 'students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 102, NULL, NULL, NULL, NULL, NULL, NULL, '9888777009', NULL, NULL, NULL),
(10, NULL, 'Sai Reddy', 'Female', '2021-03-04', '1', 'Father Name 10', 'student10@test.com', 'students/1772898928_10_EeUI99bUcAMiRFa.jpg', '2026-03-04 08:06:46', '9998887700', 1, NULL, 'O+', '123456789010', '9888777000', 'Father Name 10', '9998887700', 'Mother Name 10', '9998886600', '1210 Main St, Parent City', 'Guardian Name 10', 'Uncle', '9998885500', '1210 Main St, Guardian City', 'Hindu', 'General', 'English', 1, 'Minor Asthma', 0, '', 1, 'Peanuts', 'Yes', '0', 'Previous School 10', 'CBSE', 2025, NULL, '1210 Main St, Present City', NULL, NULL, 'Approved', '1', 'students/1772898928_10_EeUI99bUcAMiRFa.jpg', 103, NULL, NULL, NULL, NULL, NULL, NULL, '9888777000', NULL, NULL, NULL),
(11, 'ADM-2026-0001', 'Aditya Bansal', 'Male', '2010-05-15', NULL, 'Ramesh Sharma', 'ramesh@example.com', 'students/1772898928_11_PARLEEN-KAUR-BAGGA.png', '2026-03-04 15:18:07', '9876543200', 1, NULL, 'O+', '123456789012', '9876543201', 'Ramesh Sharma', '9876543200', 'Sunita Sharma', '9876543202', '12 MG Road, Delhi', 'Uncle Suresh', 'Uncle', '9876543203', '14 MG Road, Delhi', 'Hindu', 'General', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Delhi Public School', 'CBSE', 2025, NULL, '12 MG Road, Delhi', NULL, NULL, 'Approved', 'Class 10', 'stu_104_1778731489.jpg', 104, NULL, NULL, NULL, NULL, 15, '12 MG Road, Delhi', '9876543201', 'student1', 'student1@school.com', '$2y$10$i/mw1ex2VLQgUzKFZr8Ndu4dpU14bkDe0bcBtQ.ElQEjQHP8t4IFy'),
(12, 'ADM-2026-0002', 'Arjun Singh', 'Female', '2011-03-22', NULL, 'Vikram Patel', 'vikram@example.com', 'students/1772898928_12_Passport-size-photo-Vivek-puri.jpg', '2026-03-04 15:18:07', '9876543210', 1, NULL, 'A+', '234567890123', '9876543211', 'Vikram Patel', '9876543210', 'Meena Patel', '9876543212', '45 Nehru Nagar, Mumbai', '', '', '', '', 'Hindu', 'OBC-A', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Mumbai Vidyalay', 'SSC', 2024, NULL, '45 Nehru Nagar, Mumbai', NULL, NULL, 'Approved', 'Class 9', 'students/1772898928_12_Passport-size-photo-Vivek-puri.jpg', 105, NULL, NULL, NULL, NULL, 14, '45 Nehru Nagar, Mumbai', '9876543211', 'student2', 'student2@school.com', '$2y$10$i/mw1ex2VLQgUzKFZr8Ndu4dpU14bkDe0bcBtQ.ElQEjQHP8t4IFy'),
(13, 'ADM-2026-0003', 'Sai Khan', 'Male', '2009-11-08', NULL, 'Abdul Raza', 'abdul@example.com', 'students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', '2026-03-04 15:18:07', '9876543220', 1, NULL, 'B+', '345678901234', '9876543221', 'Abdul Raza', '9876543220', 'Fatima Raza', '9876543222', '78 Station Road, Hyderabad', '', '', '', '', 'Islam', 'OBC-B', 'Urdu', 1, 'Mild Asthma', 0, NULL, 1, 'Dust allergy', 'Transfer Certificate', 'Class 10', 'Hyderabad Govt School', 'SSC', 2024, NULL, '78 Station Road, Hyderabad', NULL, NULL, 'Approved', 'Class 11', 'students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 106, NULL, NULL, NULL, NULL, 16, '78 Station Road, Hyderabad', '9876543221', 'student3', 'student3@school.com', '$2y$10$i/mw1ex2VLQgUzKFZr8Ndu4dpU14bkDe0bcBtQ.ElQEjQHP8t4IFy'),
(14, 'ADM-2026-0004', 'Amara Garg', 'Female', '2012-07-19', NULL, 'Ravi Reddy', 'ravi@example.com', 'students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', '2026-03-04 15:18:07', '9876543230', 1, NULL, 'AB+', '456789012345', '9876543231', 'Ravi Reddy', '9876543230', 'Lakshmi Reddy', '9876543232', '23 Jubilee Hills, Bangalore', 'Aunt Kamala', 'Aunt', '9876543233', '25 Jubilee Hills, Bangalore', 'Hindu', 'SC', 'Telugu', 0, NULL, 1, 'Hearing impaired (mild)', 0, NULL, 'Currently Studying', 'Class 7', 'Bangalore Public School', 'CBSE', 2024, NULL, '23 Jubilee Hills, Bangalore', NULL, NULL, 'Approved', 'Class 8', 'students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 107, NULL, NULL, NULL, NULL, 13, '23 Jubilee Hills, Bangalore', '9876543231', 'student4', 'student4@school.com', '$2y$10$i/mw1ex2VLQgUzKFZr8Ndu4dpU14bkDe0bcBtQ.ElQEjQHP8t4IFy'),
(15, 'ADM-2026-0005', 'Anita Mishra', 'Male', '2010-09-30', NULL, 'Sunil Gupta', 'sunil@example.com', 'students/1772898928_15_gopinathK-1.jpg', '2026-03-04 15:18:07', '9876543240', 1, NULL, 'O-', '567890123456', '9876543241', 'Sunil Gupta', '9876543240', 'Anita Gupta', '9876543242', '56 Civil Lines, Kolkata', '', '', '', '', 'Hindu', 'General', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Kolkata DAV School', 'CBSE', 2025, NULL, '56 Civil Lines, Kolkata', NULL, NULL, 'Approved', 'Class 10', 'students/1772898928_15_gopinathK-1.jpg', 108, NULL, NULL, NULL, NULL, 15, '56 Civil Lines, Kolkata', '9876543241', 'student5', 'student5@school.com', '$2y$10$i/mw1ex2VLQgUzKFZr8Ndu4dpU14bkDe0bcBtQ.ElQEjQHP8t4IFy'),
(16, 'ADM-2026-0006', 'Anita Mishra', 'Female', '2011-02-14', NULL, 'Rajesh Singh', 'rajesh@example.com', 'students/1772898928_16_images1.jpg', '2026-03-04 15:18:07', '9876543250', 1, NULL, 'A-', '678901234567', '9876543251', 'Rajesh Singh', '9876543250', 'Kavita Singh', '9876543252', '34 Awadh Nagar, Lucknow', '', '', '', '', 'Hindu', 'General', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Lucknow Public School', 'CBSE', 2024, NULL, '34 Awadh Nagar, Lucknow', NULL, NULL, 'Approved', 'Class 9', 'students/1772898928_16_images1.jpg', 109, NULL, NULL, NULL, NULL, 14, '34 Awadh Nagar, Lucknow', '9876543251', 'student6', 'student6@school.com', '$2y$10$i/mw1ex2VLQgUzKFZr8Ndu4dpU14bkDe0bcBtQ.ElQEjQHP8t4IFy'),
(17, 'ADM-2026-0007', 'Akash Bansal', 'Male', '2012-06-25', NULL, 'Anil Kumar', 'anil@example.com', 'students/1772898928_17_images10.jpg', '2026-03-04 15:18:07', '9876543260', 1, NULL, 'B-', '789012345678', '9876543261', 'Anil Kumar', '9876543260', 'Usha Kumar', '9876543262', '67 Gandhi Nagar, Chennai', '', '', '', '', 'Hindu', 'OBC-B', 'Tamil', 0, NULL, 0, NULL, 1, 'Seasonal allergy', 'Currently Studying', 'Class 7', 'Chennai Higher Sec School', 'State Board', 2024, NULL, '67 Gandhi Nagar, Chennai', NULL, NULL, 'Approved', 'Class 8', 'students/1772898928_17_images10.jpg', 110, NULL, NULL, NULL, NULL, 13, '67 Gandhi Nagar, Chennai', '9876543261', 'student7', 'student7@school.com', '$2y$10$i/mw1ex2VLQgUzKFZr8Ndu4dpU14bkDe0bcBtQ.ElQEjQHP8t4IFy'),
(18, 'ADM-2026-0008', 'Vikram Nair', 'Female', '2010-12-05', NULL, 'Iqbal Ansari', 'iqbal@example.com', 'students/1772898928_18_images11.jpg', '2026-03-04 15:18:07', '9876543270', 1, NULL, 'O+', '890123456789', '9876543271', 'Iqbal Ansari', '9876543270', 'Zainab Ansari', '9876543272', '89 HB Colony, Pune', 'Uncle Salim', 'Uncle', '9876543273', '91 HB Colony, Pune', 'Islam', 'OBC-A', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Pune Urdu School', 'SSC', 2025, NULL, '89 HB Colony, Pune', NULL, NULL, 'Approved', 'Class 10', 'students/1772898928_18_images11.jpg', 111, NULL, NULL, NULL, NULL, 15, '89 HB Colony, Pune', '9876543271', 'student8', 'student8@school.com', '$2y$10$i/mw1ex2VLQgUzKFZr8Ndu4dpU14bkDe0bcBtQ.ElQEjQHP8t4IFy'),
(19, 'ADM-2026-0009', 'Riya Malhotra', 'Male', '2011-08-18', NULL, 'Mukesh Verma', 'mukesh@example.com', 'students/1772898928_19_images12.jpg', '2026-03-04 15:18:07', '9876543280', 1, NULL, 'AB-', '901234567890', '9876543281', 'Mukesh Verma', '9876543280', 'Geeta Verma', '9876543282', '12 Shastri Nagar, Jaipur', '', '', '', '', 'Hindu', 'ST', 'Hindi', 1, 'Diabetes Type 1', 0, NULL, 0, NULL, 'Transfer Certificate', 'Class 8', 'Jaipur Govt School', 'RBSE', 2024, NULL, '12 Shastri Nagar, Jaipur', NULL, NULL, 'Approved', 'Class 9', 'students/1772898928_19_images12.jpg', 112, NULL, NULL, NULL, NULL, 14, '12 Shastri Nagar, Jaipur', '9876543281', 'student9', 'student9@school.com', '$2y$10$i/mw1ex2VLQgUzKFZr8Ndu4dpU14bkDe0bcBtQ.ElQEjQHP8t4IFy'),
(20, 'ADM-2026-0010', 'Amit Menon', 'Female', '2009-04-10', NULL, 'Suresh Nair', 'suresh@example.com', 'students/1772898928_20_images13.jpg', '2026-03-04 15:18:07', '9876543290', 1, NULL, 'A+', '012345678901', '9876543291', 'Suresh Nair', '9876543290', 'Sujatha Nair', '9876543292', '45 Kozhikode Lane, Kochi', '', '', '', '', 'Hindu', 'General', 'Malayalam', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Kerala Central School', 'CBSE', 2025, NULL, '45 Kozhikode Lane, Kochi', NULL, NULL, 'Approved', 'Class 11', 'students/1772898928_20_images13.jpg', 113, NULL, NULL, NULL, NULL, 16, '45 Kozhikode Lane, Kochi', '9876543291', 'student10', 'student10@school.com', '$2y$10$i/mw1ex2VLQgUzKFZr8Ndu4dpU14bkDe0bcBtQ.ElQEjQHP8t4IFy'),
(21, NULL, 'Test Student 1', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07 19:21:22', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', NULL, NULL, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student1@test.com', NULL),
(22, NULL, 'Test Student 2', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07 19:21:22', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', NULL, NULL, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student2@test.com', NULL),
(23, NULL, 'Test Student 3', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07 19:21:22', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', NULL, NULL, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student3@test.com', NULL),
(24, NULL, 'Test Student 4', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07 19:21:22', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', NULL, NULL, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student4@test.com', NULL),
(25, NULL, 'Test Student 5', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07 19:21:22', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', NULL, NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student5@test.com', NULL),
(26, NULL, 'Test Student 6', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07 19:21:22', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', NULL, NULL, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student6@test.com', NULL),
(27, NULL, 'Test Student 7', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07 19:21:22', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', NULL, NULL, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student7@test.com', NULL),
(28, NULL, 'Test Student 8', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07 19:21:22', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', NULL, NULL, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student8@test.com', NULL),
(29, NULL, 'Test Student 9', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07 19:21:22', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', NULL, NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student9@test.com', NULL),
(30, NULL, 'Test Student 10', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07 19:21:22', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Approved', NULL, NULL, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'student10@test.com', NULL),
(31, 'ADM-2026-0011', 'Aarav Chatterjee', 'Male', '2023-12-21', NULL, 'Vikram Chatterjee', 'vikramchatterjee65@example.com', NULL, '2026-03-24 08:38:39', '9864547416', 1, NULL, 'A-', '464083479985', '9552412000', 'Vikram Chatterjee', '9864547416', 'Meena Chatterjee', '9529265291', '852 Station Road, Mumbai', 'Vikram Chatterjee', 'Father', '9864547416', '852 Station Road, Mumbai', 'Buddhist', 'ST', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-16', 'Approved', 'Play Nursery', 'uploads/students/1772898928_18_images11.jpg', 114, NULL, NULL, NULL, NULL, 3, '852 Station Road, Mumbai', '9552412000', 'student_001', 'student1@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(32, 'ADM-2026-0012', 'Rajesh Pillai', 'Male', '2023-08-05', NULL, 'Deepak Pillai', 'deepakpillai27@example.com', NULL, '2026-03-24 08:38:39', '9628031235', 1, NULL, 'A-', '868789297570', '9144997707', 'Deepak Pillai', '9628031235', 'Ananya Pillai', '9503884195', '485 Gandhi Nagar, Hyderabad', 'Deepak Pillai', 'Father', '9628031235', '485 Gandhi Nagar, Hyderabad', 'Buddhist', 'OBC-A', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-06', 'Approved', 'Play Nursery', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 115, NULL, NULL, NULL, NULL, 3, '485 Gandhi Nagar, Hyderabad', '9144997707', 'student_002', 'student2@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(33, 'ADM-2026-0013', 'Suresh Gupta', 'Male', '2023-12-20', NULL, 'Suresh Gupta', 'sureshgupta70@example.com', NULL, '2026-03-24 08:38:39', '9750346651', 1, NULL, 'A-', '363179144569', '9908647818', 'Suresh Gupta', '9750346651', 'Rekha Gupta', '9915386516', '560 Gandhi Nagar, Hyderabad', 'Suresh Gupta', 'Father', '9750346651', '560 Gandhi Nagar, Hyderabad', 'Hindu', 'OBC-B', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Play Nursery', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 116, NULL, NULL, NULL, NULL, 3, '560 Gandhi Nagar, Hyderabad', '9908647818', 'student_003', 'student3@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(34, 'ADM-2026-0014', 'Vishal Mukherjee', 'Male', '2023-08-17', NULL, 'Sumit Mukherjee', 'sumitmukherjee74@example.com', NULL, '2026-03-24 08:38:39', '9559830155', 1, NULL, 'B+', '597367613953', '9241030329', 'Sumit Mukherjee', '9559830155', 'Simran Mukherjee', '9997051407', '814 Gandhi Nagar, Delhi', 'Sumit Mukherjee', 'Father', '9559830155', '814 Gandhi Nagar, Delhi', 'Buddhist', 'OBC-A', 'Kannada', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-19', 'Approved', 'Play Nursery', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 117, NULL, NULL, NULL, NULL, 3, '814 Gandhi Nagar, Delhi', '9241030329', 'student_004', 'student4@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(35, 'ADM-2026-0015', 'Sumit Reddy', 'Male', '2023-01-28', NULL, 'Abhishek Reddy', 'abhishekreddy78@example.com', NULL, '2026-03-24 08:38:39', '9992073933', 1, NULL, 'B-', '123642919558', '9709282025', 'Abhishek Reddy', '9992073933', 'Riya Reddy', '9127641903', '452 Shastri Nagar, Pune', 'Abhishek Reddy', 'Father', '9992073933', '452 Shastri Nagar, Pune', 'Christian', 'ST', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-01', 'Approved', 'Play Nursery', 'uploads/students/stu_1772563030.png', 118, NULL, NULL, NULL, NULL, 3, '452 Shastri Nagar, Pune', '9709282025', 'student_005', 'student5@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(36, 'ADM-2026-0016', 'Sanjay Verma', 'Male', '2023-02-25', NULL, 'Sunil Verma', 'sunilverma80@example.com', NULL, '2026-03-24 08:38:39', '9668608081', 1, NULL, 'AB-', '313996906108', '9503449298', 'Sunil Verma', '9668608081', 'Simran Verma', '9294870611', '529 Gandhi Nagar, Delhi', 'Sunil Verma', 'Father', '9668608081', '529 Gandhi Nagar, Delhi', 'Buddhist', 'OBC-A', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-27', 'Approved', 'Play Nursery', 'uploads/students/1772898928_17_images10.jpg', 119, NULL, NULL, NULL, NULL, 3, '529 Gandhi Nagar, Delhi', '9503449298', 'student_006', 'student6@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(37, 'ADM-2026-0017', 'Manish Patil', 'Male', '2023-02-20', NULL, 'Sunil Patil', 'sunilpatil24@example.com', NULL, '2026-03-24 08:38:39', '9443405538', 1, NULL, 'A-', '274577716695', '9435798694', 'Sunil Patil', '9443405538', 'Zainab Patil', '9347690249', '759 Gandhi Nagar, Kolkata', 'Sunil Patil', 'Father', '9443405538', '759 Gandhi Nagar, Kolkata', 'Islam', 'OBC-A', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-25', 'Approved', 'Play Nursery', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 120, NULL, NULL, NULL, NULL, 3, '759 Gandhi Nagar, Kolkata', '9435798694', 'student_007', 'student7@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(38, 'ADM-2026-0018', 'Aditya Sen', 'Male', '2023-02-21', NULL, 'Manish Sen', 'manishsen23@example.com', NULL, '2026-03-24 08:38:39', '9121207442', 1, NULL, 'B-', '124288927070', '9336709491', 'Manish Sen', '9121207442', 'Geeta Sen', '9933094821', '526 Gandhi Nagar, Bangalore', 'Manish Sen', 'Father', '9121207442', '526 Gandhi Nagar, Bangalore', 'Christian', 'OBC-A', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-11', 'Approved', 'Play Nursery', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 121, NULL, NULL, NULL, NULL, 3, '526 Gandhi Nagar, Bangalore', '9336709491', 'student_008', 'student8@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(39, 'ADM-2026-0019', 'Karan Mishra', 'Male', '2023-05-13', NULL, 'Vikas Mishra', 'vikasmishra66@example.com', NULL, '2026-03-24 08:38:39', '9922579271', 1, NULL, 'AB-', '353544469647', '9545109523', 'Vikas Mishra', '9922579271', 'Meena Mishra', '9871801672', '494 MG Road, Kolkata', 'Vikas Mishra', 'Father', '9922579271', '494 MG Road, Kolkata', 'Hindu', 'General', 'English', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-15', 'Approved', 'Play Nursery', 'uploads/students/1772898928_17_images10.jpg', 122, NULL, NULL, NULL, NULL, 3, '494 MG Road, Kolkata', '9545109523', 'student_009', 'student9@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(40, 'ADM-2026-0020', 'Deepak Patel', 'Male', '2023-09-11', NULL, 'Rahul Patel', 'rahulpatel49@example.com', NULL, '2026-03-24 08:38:39', '9999197940', 1, NULL, 'AB-', '177689675931', '9128068795', 'Rahul Patel', '9999197940', 'Ananya Patel', '9639575958', '21 Shastri Nagar, Chennai', 'Rahul Patel', 'Father', '9999197940', '21 Shastri Nagar, Chennai', 'Christian', 'OBC-B', 'Kannada', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-27', 'Approved', 'Play Nursery', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 123, NULL, NULL, NULL, NULL, 3, '21 Shastri Nagar, Chennai', '9128068795', 'student_010', 'student10@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(41, 'ADM-2026-0021', 'Nidhi Banerjee', 'Female', '2023-05-22', NULL, 'Vikrant Banerjee', 'vikrantbanerjee40@example.com', NULL, '2026-03-24 08:38:39', '9632078588', 1, NULL, 'A-', '178393872785', '9904774022', 'Vikrant Banerjee', '9632078588', 'Sneha Banerjee', '9254031532', '905 Civil Lines, Kolkata', 'Vikrant Banerjee', 'Father', '9632078588', '905 Civil Lines, Kolkata', 'Islam', 'ST', 'Telugu', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-05', 'Approved', 'Play Nursery', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 124, NULL, NULL, NULL, NULL, 3, '905 Civil Lines, Kolkata', '9904774022', 'student_011', 'student11@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(42, 'ADM-2026-0022', 'Sneha Banerjee', 'Female', '2023-08-26', NULL, 'Arjun Banerjee', 'arjunbanerjee74@example.com', NULL, '2026-03-24 08:38:39', '9643959170', 1, NULL, 'B-', '635887255511', '9153839606', 'Arjun Banerjee', '9643959170', 'Nidhi Banerjee', '9708352386', '662 MG Road, Delhi', 'Arjun Banerjee', 'Father', '9643959170', '662 MG Road, Delhi', 'Hindu', 'OBC-B', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-26', 'Approved', 'Play Nursery', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 125, NULL, NULL, NULL, NULL, 3, '662 MG Road, Delhi', '9153839606', 'student_012', 'student12@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(43, 'ADM-2026-0023', 'Kavita Yadav', 'Female', '2023-03-01', NULL, 'Rahul Yadav', 'rahulyadav86@example.com', NULL, '2026-03-24 08:38:39', '9762502727', 1, NULL, 'AB+', '506787567555', '9973275342', 'Rahul Yadav', '9762502727', 'Kiran Yadav', '9285531510', '149 Shastri Nagar, Mumbai', 'Rahul Yadav', 'Father', '9762502727', '149 Shastri Nagar, Mumbai', 'Christian', 'OBC-B', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-23', 'Approved', 'Play Nursery', 'uploads/students/1772898928_15_gopinathK-1.jpg', 126, NULL, NULL, NULL, NULL, 3, '149 Shastri Nagar, Mumbai', '9973275342', 'student_013', 'student13@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(44, 'ADM-2026-0024', 'Simran Banerjee', 'Female', '2023-08-09', NULL, 'Suresh Banerjee', 'sureshbanerjee83@example.com', NULL, '2026-03-24 08:38:39', '9662086487', 1, NULL, 'AB+', '499076172399', '9378712824', 'Suresh Banerjee', '9662086487', 'Kavita Banerjee', '9300576815', '56 Shastri Nagar, Bangalore', 'Suresh Banerjee', 'Father', '9662086487', '56 Shastri Nagar, Bangalore', 'Islam', 'OBC-B', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-23', 'Approved', 'Play Nursery', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 127, NULL, NULL, NULL, NULL, 3, '56 Shastri Nagar, Bangalore', '9378712824', 'student_014', 'student14@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(45, 'ADM-2026-0025', 'Sita Banerjee', 'Female', '2023-02-26', NULL, 'Sanjay Banerjee', 'sanjaybanerjee18@example.com', NULL, '2026-03-24 08:38:39', '9418002194', 1, NULL, 'AB-', '794714853840', '9924773919', 'Sanjay Banerjee', '9418002194', 'Pooja Banerjee', '9420625154', '103 Gandhi Nagar, Hyderabad', 'Sanjay Banerjee', 'Father', '9418002194', '103 Gandhi Nagar, Hyderabad', 'Hindu', 'General', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-19', 'Approved', 'Play Nursery', 'uploads/students/stu_1772565595.png', 128, NULL, NULL, NULL, NULL, 3, '103 Gandhi Nagar, Hyderabad', '9924773919', 'student_015', 'student15@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(46, 'ADM-2026-0026', 'Zainab Mishra', 'Female', '2023-12-08', NULL, 'Sanjay Mishra', 'sanjaymishra53@example.com', NULL, '2026-03-24 08:38:39', '9185726194', 1, NULL, 'AB+', '535873791269', '9735008102', 'Sanjay Mishra', '9185726194', 'Shweta Mishra', '9345653871', '223 Shastri Nagar, Kolkata', 'Sanjay Mishra', 'Father', '9185726194', '223 Shastri Nagar, Kolkata', 'Islam', 'OBC-A', 'Hindi', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-24', 'Approved', 'Play Nursery', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 129, NULL, NULL, NULL, NULL, 3, '223 Shastri Nagar, Kolkata', '9735008102', 'student_016', 'student16@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(47, 'ADM-2026-0027', 'Ayesha Kumar', 'Female', '2023-06-22', NULL, 'Abhishek Kumar', 'abhishekkumar32@example.com', NULL, '2026-03-24 08:38:39', '9430632109', 1, NULL, 'AB+', '976443435030', '9565301457', 'Abhishek Kumar', '9430632109', 'Swati Kumar', '9920872652', '62 MG Road, Pune', 'Abhishek Kumar', 'Father', '9430632109', '62 MG Road, Pune', 'Hindu', 'General', 'Hindi', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Play Nursery', 'uploads/students/1772898928_17_images10.jpg', 130, NULL, NULL, NULL, NULL, 3, '62 MG Road, Pune', '9565301457', 'student_017', 'student17@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(48, 'ADM-2026-0028', 'Sonia Chatterjee', 'Female', '2023-06-19', NULL, 'Suresh Chatterjee', 'sureshchatterjee18@example.com', NULL, '2026-03-24 08:38:39', '9641269986', 1, NULL, 'O+', '762996845709', '9453552995', 'Suresh Chatterjee', '9641269986', 'Sunita Chatterjee', '9966492730', '928 Gandhi Nagar, Mumbai', 'Suresh Chatterjee', 'Father', '9641269986', '928 Gandhi Nagar, Mumbai', 'Christian', 'OBC-B', 'Urdu', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-09', 'Approved', 'Play Nursery', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 131, NULL, NULL, NULL, NULL, 3, '928 Gandhi Nagar, Mumbai', '9453552995', 'student_018', 'student18@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(49, 'ADM-2026-0029', 'Sonia Pandey', 'Female', '2023-08-14', NULL, 'Kunal Pandey', 'kunalpandey30@example.com', NULL, '2026-03-24 08:38:39', '9764271393', 1, NULL, 'B+', '115523343811', '9985372611', 'Kunal Pandey', '9764271393', 'Ayesha Pandey', '9707450184', '794 Civil Lines, Mumbai', 'Kunal Pandey', 'Father', '9764271393', '794 Civil Lines, Mumbai', 'Islam', 'ST', 'English', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-06', 'Approved', 'Play Nursery', 'uploads/students/1772898928_19_images12.jpg', 132, NULL, NULL, NULL, NULL, 3, '794 Civil Lines, Mumbai', '9985372611', 'student_019', 'student19@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(50, 'ADM-2026-0030', 'Nidhi Sharma', 'Female', '2023-10-09', NULL, 'Suresh Sharma', 'sureshsharma72@example.com', NULL, '2026-03-24 08:38:39', '9422043838', 1, NULL, 'A+', '687821581291', '9899182447', 'Suresh Sharma', '9422043838', 'Nisha Sharma', '9998243696', '319 Shastri Nagar, Mumbai', 'Suresh Sharma', 'Father', '9422043838', '319 Shastri Nagar, Mumbai', 'Christian', 'OBC-A', 'Telugu', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'First Time Schooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-20', 'Approved', 'Play Nursery', 'uploads/students/1772898928_8_8c11dd4a7110a437722370c4663f80ec.jpg', 133, NULL, NULL, NULL, NULL, 3, '319 Shastri Nagar, Mumbai', '9899182447', 'student_020', 'student20@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(51, 'ADM-2026-0031', 'Vikas Bose', 'Male', '2022-04-13', NULL, 'Manoj Bose', 'manojbose74@example.com', NULL, '2026-03-24 08:38:39', '9936428849', 1, NULL, 'AB-', '573222318346', '9845560865', 'Manoj Bose', '9936428849', 'Kavya Bose', '9148771757', '243 MG Road, Chennai', 'Manoj Bose', 'Father', '9936428849', '243 MG Road, Chennai', 'Islam', 'OBC-B', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Nursery', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 134, NULL, NULL, NULL, NULL, 4, '243 MG Road, Chennai', '9845560865', 'student_021', 'student21@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(52, 'ADM-2026-0032', 'Akash Mukherjee', 'Male', '2022-09-12', NULL, 'Vivaan Mukherjee', 'vivaanmukherjee32@example.com', NULL, '2026-03-24 08:38:39', '9588535266', 1, NULL, 'B-', '733262904389', '9953710160', 'Vivaan Mukherjee', '9588535266', 'Geeta Mukherjee', '9790023033', '265 Civil Lines, Kolkata', 'Vivaan Mukherjee', 'Father', '9588535266', '265 Civil Lines, Kolkata', 'Buddhist', 'General', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-16', 'Approved', 'Nursery', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 135, NULL, NULL, NULL, NULL, 4, '265 Civil Lines, Kolkata', '9953710160', 'student_022', 'student22@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(53, 'ADM-2026-0033', 'Sunil Menon', 'Male', '2022-11-04', NULL, 'Ramesh Menon', 'rameshmenon71@example.com', NULL, '2026-03-24 08:38:39', '9159975527', 1, NULL, 'B+', '902541044277', '9439519482', 'Ramesh Menon', '9159975527', 'Ananya Menon', '9396576272', '592 MG Road, Delhi', 'Ramesh Menon', 'Father', '9159975527', '592 MG Road, Delhi', 'Hindu', 'ST', 'Tamil', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-16', 'Approved', 'Nursery', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 136, NULL, NULL, NULL, NULL, 4, '592 MG Road, Delhi', '9439519482', 'student_023', 'student23@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(54, 'ADM-2026-0034', 'Rajesh Patel', 'Male', '2022-06-20', NULL, 'Abhishek Patel', 'abhishekpatel61@example.com', NULL, '2026-03-24 08:38:39', '9269940000', 1, NULL, 'O+', '451086693062', '9576416964', 'Abhishek Patel', '9269940000', 'Simran Patel', '9642850200', '691 Shastri Nagar, Chennai', 'Abhishek Patel', 'Father', '9269940000', '691 Shastri Nagar, Chennai', 'Islam', 'General', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-23', 'Approved', 'Nursery', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 137, NULL, NULL, NULL, NULL, 4, '691 Shastri Nagar, Chennai', '9576416964', 'student_024', 'student24@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(55, 'ADM-2026-0035', 'Ramesh Gupta', 'Male', '2022-10-21', NULL, 'Neeraj Gupta', 'neerajgupta24@example.com', NULL, '2026-03-24 08:38:39', '9660227771', 1, NULL, 'B+', '332195428515', '9379326281', 'Neeraj Gupta', '9660227771', 'Aakanksha Gupta', '9686539428', '167 Civil Lines, Chennai', 'Neeraj Gupta', 'Father', '9660227771', '167 Civil Lines, Chennai', 'Christian', 'OBC-B', 'English', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-02', 'Approved', 'Nursery', 'uploads/students/stu_1772563518.png', 138, NULL, NULL, NULL, NULL, 4, '167 Civil Lines, Chennai', '9379326281', 'student_025', 'student25@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(56, 'ADM-2026-0036', 'Karan Chatterjee', 'Male', '2022-01-06', NULL, 'Ramesh Chatterjee', 'rameshchatterjee69@example.com', NULL, '2026-03-24 08:38:39', '9901688253', 1, NULL, 'AB-', '716796713875', '9424432840', 'Ramesh Chatterjee', '9901688253', 'Fatima Chatterjee', '9343009044', '715 MG Road, Delhi', 'Ramesh Chatterjee', 'Father', '9901688253', '715 MG Road, Delhi', 'Christian', 'OBC-A', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-01', 'Approved', 'Nursery', 'uploads/students/stu_1772563030.png', 139, NULL, NULL, NULL, NULL, 4, '715 MG Road, Delhi', '9424432840', 'student_026', 'student26@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(57, 'ADM-2026-0037', 'Vikas Mukherjee', 'Male', '2022-02-26', NULL, 'Krishna Mukherjee', 'krishnamukherjee41@example.com', NULL, '2026-03-24 08:38:39', '9861644748', 1, NULL, 'O+', '445770698385', '9406505986', 'Krishna Mukherjee', '9861644748', 'Nidhi Mukherjee', '9582748968', '924 Station Road, Bangalore', 'Krishna Mukherjee', 'Father', '9861644748', '924 Station Road, Bangalore', 'Islam', 'OBC-B', 'English', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Nursery', 'uploads/students/stu_1772563030.png', 140, NULL, NULL, NULL, NULL, 4, '924 Station Road, Bangalore', '9406505986', 'student_027', 'student27@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(58, 'ADM-2026-0038', 'Sumit Verma', 'Male', '2022-07-14', NULL, 'Sumit Verma', 'sumitverma33@example.com', NULL, '2026-03-24 08:38:39', '9564807815', 1, NULL, 'AB+', '341558331854', '9959789846', 'Sumit Verma', '9564807815', 'Rekha Verma', '9728594686', '459 Gandhi Nagar, Bangalore', 'Sumit Verma', 'Father', '9564807815', '459 Gandhi Nagar, Bangalore', 'Islam', 'OBC-B', 'Gujarati', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-23', 'Approved', 'Nursery', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 141, NULL, NULL, NULL, NULL, 4, '459 Gandhi Nagar, Bangalore', '9959789846', 'student_028', 'student28@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(59, 'ADM-2026-0039', 'Ravi Gupta', 'Male', '2022-09-09', NULL, 'Amit Gupta', 'amitgupta92@example.com', NULL, '2026-03-24 08:38:39', '9196279148', 1, NULL, 'O-', '988165614362', '9485526172', 'Amit Gupta', '9196279148', 'Sita Gupta', '9204381406', '326 Shastri Nagar, Mumbai', 'Amit Gupta', 'Father', '9196279148', '326 Shastri Nagar, Mumbai', 'Christian', 'OBC-B', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-17', 'Approved', 'Nursery', 'uploads/students/1772898928_18_images11.jpg', 142, NULL, NULL, NULL, NULL, 4, '326 Shastri Nagar, Mumbai', '9485526172', 'student_029', 'student29@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(60, 'ADM-2026-0040', 'Kunal Sharma', 'Male', '2022-03-15', NULL, 'Rahul Sharma', 'rahulsharma70@example.com', NULL, '2026-03-24 08:38:39', '9862861062', 1, NULL, 'AB+', '185976957481', '9709752504', 'Rahul Sharma', '9862861062', 'Nidhi Sharma', '9599381643', '525 MG Road, Pune', 'Rahul Sharma', 'Father', '9862861062', '525 MG Road, Pune', 'Islam', 'General', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-26', 'Approved', 'Nursery', 'uploads/students/1772898928_17_images10.jpg', 143, NULL, NULL, NULL, NULL, 4, '525 MG Road, Pune', '9709752504', 'student_030', 'student30@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(61, 'ADM-2026-0041', 'Swati Chatterjee', 'Female', '2022-11-21', NULL, 'Aditya Chatterjee', 'adityachatterjee15@example.com', NULL, '2026-03-24 08:38:39', '9123340235', 1, NULL, 'B-', '812335472981', '9140045913', 'Aditya Chatterjee', '9123340235', 'Riya Chatterjee', '9309046524', '432 Civil Lines, Chennai', 'Aditya Chatterjee', 'Father', '9123340235', '432 Civil Lines, Chennai', 'Buddhist', 'ST', 'Kannada', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-11', 'Approved', 'Nursery', 'uploads/students/1772898928_2_1644572849.jpg', 144, NULL, NULL, NULL, NULL, 4, '432 Civil Lines, Chennai', '9140045913', 'student_031', 'student31@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(62, 'ADM-2026-0042', 'Sneha Gupta', 'Female', '2022-06-14', NULL, 'Ravi Gupta', 'ravigupta62@example.com', NULL, '2026-03-24 08:38:39', '9899105635', 1, NULL, 'B+', '390956277955', '9935318223', 'Ravi Gupta', '9899105635', 'Sneha Gupta', '9456409941', '461 Station Road, Chennai', 'Ravi Gupta', 'Father', '9899105635', '461 Station Road, Chennai', 'Hindu', 'General', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-24', 'Approved', 'Nursery', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 145, NULL, NULL, NULL, NULL, 4, '461 Station Road, Chennai', '9935318223', 'student_032', 'student32@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(63, 'ADM-2026-0043', 'Kavya Verma', 'Female', '2022-08-01', NULL, 'Vikas Verma', 'vikasverma49@example.com', NULL, '2026-03-24 08:38:39', '9388688221', 1, NULL, 'O-', '791837536250', '9938814949', 'Vikas Verma', '9388688221', 'Sonia Verma', '9324559499', '475 Civil Lines, Hyderabad', 'Vikas Verma', 'Father', '9388688221', '475 Civil Lines, Hyderabad', 'Hindu', 'OBC-B', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-16', 'Approved', 'Nursery', 'uploads/students/stu_1772563030.png', 146, NULL, NULL, NULL, NULL, 4, '475 Civil Lines, Hyderabad', '9938814949', 'student_033', 'student33@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(64, 'ADM-2026-0044', 'Kiran Bhat', 'Female', '2022-06-11', NULL, 'Ramesh Bhat', 'rameshbhat20@example.com', NULL, '2026-03-24 08:38:39', '9455443855', 1, NULL, 'AB-', '421189145021', '9139155426', 'Ramesh Bhat', '9455443855', 'Diya Bhat', '9932281858', '644 Civil Lines, Delhi', 'Ramesh Bhat', 'Father', '9455443855', '644 Civil Lines, Delhi', 'Islam', 'OBC-A', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-27', 'Approved', 'Nursery', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 147, NULL, NULL, NULL, NULL, 4, '644 Civil Lines, Delhi', '9139155426', 'student_034', 'student34@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(65, 'ADM-2026-0045', 'Kavya Kumar', 'Female', '2022-07-20', NULL, 'Sunil Kumar', 'sunilkumar50@example.com', NULL, '2026-03-24 08:38:39', '9951491432', 1, NULL, 'O-', '601944738799', '9996727680', 'Sunil Kumar', '9951491432', 'Geeta Kumar', '9170320484', '271 MG Road, Chennai', 'Sunil Kumar', 'Father', '9951491432', '271 MG Road, Chennai', 'Hindu', 'ST', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-14', 'Approved', 'Nursery', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 148, NULL, NULL, NULL, NULL, 4, '271 MG Road, Chennai', '9996727680', 'student_035', 'student35@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(66, 'ADM-2026-0046', 'Kavita Tiwari', 'Female', '2022-09-10', NULL, 'Suresh Tiwari', 'sureshtiwari73@example.com', NULL, '2026-03-24 08:38:39', '9563390915', 1, NULL, 'A-', '745227924654', '9320533166', 'Suresh Tiwari', '9563390915', 'Divya Tiwari', '9853633450', '289 MG Road, Hyderabad', 'Suresh Tiwari', 'Father', '9563390915', '289 MG Road, Hyderabad', 'Hindu', 'General', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Nursery', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 149, NULL, NULL, NULL, NULL, 4, '289 MG Road, Hyderabad', '9320533166', 'student_036', 'student36@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(67, 'ADM-2026-0047', 'Neha Sen', 'Female', '2022-07-03', NULL, 'Nitin Sen', 'nitinsen70@example.com', NULL, '2026-03-24 08:38:39', '9396721202', 1, NULL, 'A+', '586789464777', '9664822238', 'Nitin Sen', '9396721202', 'Ananya Sen', '9360936489', '690 Gandhi Nagar, Chennai', 'Nitin Sen', 'Father', '9396721202', '690 Gandhi Nagar, Chennai', 'Christian', 'OBC-B', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-26', 'Approved', 'Nursery', 'uploads/students/1772898928_20_images13.jpg', 150, NULL, NULL, NULL, NULL, 4, '690 Gandhi Nagar, Chennai', '9664822238', 'student_037', 'student37@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(68, 'ADM-2026-0048', 'Aakanksha Yadav', 'Female', '2022-05-21', NULL, 'Sumit Yadav', 'sumityadav72@example.com', NULL, '2026-03-24 08:38:39', '9815199927', 1, NULL, 'O-', '418858258914', '9140003834', 'Sumit Yadav', '9815199927', 'Meena Yadav', '9182269621', '591 Shastri Nagar, Hyderabad', 'Sumit Yadav', 'Father', '9815199927', '591 Shastri Nagar, Hyderabad', 'Hindu', 'SC', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-16', 'Approved', 'Nursery', 'uploads/students/1772898928_19_images12.jpg', 151, NULL, NULL, NULL, NULL, 4, '591 Shastri Nagar, Hyderabad', '9140003834', 'student_038', 'student38@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(69, 'ADM-2026-0049', 'Sonia Patil', 'Female', '2022-12-21', NULL, 'Arjun Patil', 'arjunpatil43@example.com', NULL, '2026-03-24 08:38:39', '9974622961', 1, NULL, 'A-', '323716153475', '9521108015', 'Arjun Patil', '9974622961', 'Sonia Patil', '9309658451', '174 MG Road, Chennai', 'Arjun Patil', 'Father', '9974622961', '174 MG Road, Chennai', 'Hindu', 'OBC-B', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-01', 'Approved', 'Nursery', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 152, NULL, NULL, NULL, NULL, 4, '174 MG Road, Chennai', '9521108015', 'student_039', 'student39@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(70, 'ADM-2026-0050', 'Rekha Sen', 'Female', '2022-07-09', NULL, 'Neeraj Sen', 'neerajsen64@example.com', NULL, '2026-03-24 08:38:39', '9140170796', 1, NULL, 'A-', '926842772144', '9838334836', 'Neeraj Sen', '9140170796', 'Neha Sen', '9491187333', '954 Civil Lines, Delhi', 'Neeraj Sen', 'Father', '9140170796', '954 Civil Lines, Delhi', 'Buddhist', 'SC', 'Bengali', 1, 'Asthma', 0, NULL, 1, 'Peanut allergy', 'First Time Schooling', 'Play Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Nursery', 'uploads/students/1772898928_20_images13.jpg', 153, NULL, NULL, NULL, NULL, 4, '954 Civil Lines, Delhi', '9838334836', 'student_040', 'student40@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka');
INSERT INTO `students` (`id`, `admission_no`, `student_name`, `gender`, `dob`, `class`, `parent_name`, `parent_email`, `photo`, `created_at`, `parent_phone`, `is_active`, `application_id`, `blood_group`, `aadhaar_number`, `mobile_number`, `father_name`, `father_mobile`, `mother_name`, `mother_mobile`, `parents_address`, `guardian_name`, `relation`, `guardian_mobile`, `guardian_address`, `religion`, `caste_category`, `mother_tongue`, `has_medical_condition`, `medical_condition_desc`, `has_disability`, `disability_desc`, `has_allergies`, `allergies_desc`, `previous_schooling_status`, `previous_class`, `previous_school_name`, `previous_board`, `year_of_passing`, `previous_school`, `address`, `guardian_details`, `admission_date`, `status`, `class_applied`, `student_photo`, `user_id`, `class_id`, `section_id`, `parent_id`, `admission_number`, `age`, `present_address`, `student_mobile`, `username`, `email`, `password`) VALUES
(71, 'ADM-2026-0051', 'Ramesh Sen', 'Male', '2021-06-17', NULL, 'Vishal Sen', 'vishalsen25@example.com', NULL, '2026-03-24 08:38:39', '9950668981', 1, NULL, 'O-', '266294634644', '9128338324', 'Vishal Sen', '9950668981', 'Neha Sen', '9422654141', '420 Civil Lines, Chennai', 'Vishal Sen', 'Father', '9950668981', '420 Civil Lines, Chennai', 'Buddhist', 'OBC-A', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07', 'Approved', 'LKG', 'uploads/students/1772898928_2_1644572849.jpg', 154, NULL, NULL, NULL, NULL, 5, '420 Civil Lines, Chennai', '9128338324', 'student_041', 'student41@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(72, 'ADM-2026-0052', 'Ravi Sen', 'Male', '2021-03-14', NULL, 'Vijay Sen', 'vijaysen30@example.com', NULL, '2026-03-24 08:38:39', '9203023760', 1, NULL, 'O+', '360523178619', '9737742950', 'Vijay Sen', '9203023760', 'Zainab Sen', '9735032184', '233 Shastri Nagar, Pune', 'Vijay Sen', 'Father', '9203023760', '233 Shastri Nagar, Pune', 'Hindu', 'OBC-A', 'Kannada', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-18', 'Approved', 'LKG', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 155, NULL, NULL, NULL, NULL, 5, '233 Shastri Nagar, Pune', '9737742950', 'student_042', 'student42@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(73, 'ADM-2026-0053', 'Ramesh Yadav', 'Male', '2021-03-26', NULL, 'Suresh Yadav', 'sureshyadav32@example.com', NULL, '2026-03-24 08:38:39', '9738190948', 1, NULL, 'A+', '352399051333', '9471698098', 'Suresh Yadav', '9738190948', 'Preeti Yadav', '9858256822', '165 Station Road, Delhi', 'Suresh Yadav', 'Father', '9738190948', '165 Station Road, Delhi', 'Hindu', 'General', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-22', 'Approved', 'LKG', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 156, NULL, NULL, NULL, NULL, 5, '165 Station Road, Delhi', '9471698098', 'student_043', 'student43@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(74, 'ADM-2026-0054', 'Akash Sharma', 'Male', '2021-06-21', NULL, 'Manish Sharma', 'manishsharma86@example.com', NULL, '2026-03-24 08:38:39', '9929256972', 1, NULL, 'AB-', '178756259256', '9146143400', 'Manish Sharma', '9929256972', 'Priya Sharma', '9509066065', '293 MG Road, Chennai', 'Manish Sharma', 'Father', '9929256972', '293 MG Road, Chennai', 'Buddhist', 'OBC-A', 'Tamil', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-20', 'Approved', 'LKG', 'uploads/students/1772898928_20_images13.jpg', 157, NULL, NULL, NULL, NULL, 5, '293 MG Road, Chennai', '9146143400', 'student_044', 'student44@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(75, 'ADM-2026-0055', 'Vishal Bose', 'Male', '2021-10-02', NULL, 'Vikrant Bose', 'vikrantbose74@example.com', NULL, '2026-03-24 08:38:39', '9688646642', 1, NULL, 'B+', '522228901402', '9125715002', 'Vikrant Bose', '9688646642', 'Zainab Bose', '9580335768', '961 Station Road, Hyderabad', 'Vikrant Bose', 'Father', '9688646642', '961 Station Road, Hyderabad', 'Buddhist', 'OBC-B', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-11', 'Approved', 'LKG', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 158, NULL, NULL, NULL, NULL, 5, '961 Station Road, Hyderabad', '9125715002', 'student_045', 'student45@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(76, 'ADM-2026-0056', 'Rohan Bose', 'Male', '2021-08-24', NULL, 'Deepak Bose', 'deepakbose55@example.com', NULL, '2026-03-24 08:38:39', '9571665927', 1, NULL, 'AB+', '519614196174', '9511186856', 'Deepak Bose', '9571665927', 'Diya Bose', '9110545943', '540 Civil Lines, Kolkata', 'Deepak Bose', 'Father', '9571665927', '540 Civil Lines, Kolkata', 'Hindu', 'SC', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-27', 'Approved', 'LKG', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 159, NULL, NULL, NULL, NULL, 5, '540 Civil Lines, Kolkata', '9511186856', 'student_046', 'student46@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(77, 'ADM-2026-0057', 'Arjun Dubey', 'Male', '2021-01-28', NULL, 'Manish Dubey', 'manishdubey26@example.com', NULL, '2026-03-24 08:38:39', '9859248107', 1, NULL, 'B-', '534743174319', '9166186003', 'Manish Dubey', '9859248107', 'Ayesha Dubey', '9454961843', '105 Civil Lines, Mumbai', 'Manish Dubey', 'Father', '9859248107', '105 Civil Lines, Mumbai', 'Christian', 'SC', 'Tamil', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-23', 'Approved', 'LKG', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 160, NULL, NULL, NULL, NULL, 5, '105 Civil Lines, Mumbai', '9166186003', 'student_047', 'student47@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(78, 'ADM-2026-0058', 'Sanjay Sharma', 'Male', '2021-12-04', NULL, 'Suresh Sharma', 'sureshsharma27@example.com', NULL, '2026-03-24 08:38:39', '9187698114', 1, NULL, 'A+', '988089569948', '9808940105', 'Suresh Sharma', '9187698114', 'Fatima Sharma', '9223285449', '743 MG Road, Pune', 'Suresh Sharma', 'Father', '9187698114', '743 MG Road, Pune', 'Christian', 'OBC-A', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-23', 'Approved', 'LKG', 'uploads/students/1772898928_17_images10.jpg', 161, NULL, NULL, NULL, NULL, 5, '743 MG Road, Pune', '9808940105', 'student_048', 'student48@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(79, 'ADM-2026-0059', 'Ramesh Menon', 'Male', '2021-03-09', NULL, 'Vishal Menon', 'vishalmenon92@example.com', NULL, '2026-03-24 08:38:39', '9952026841', 1, NULL, 'B+', '981913343574', '9630322092', 'Vishal Menon', '9952026841', 'Simran Menon', '9386755535', '616 MG Road, Delhi', 'Vishal Menon', 'Father', '9952026841', '616 MG Road, Delhi', 'Hindu', 'SC', 'Telugu', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-01', 'Approved', 'LKG', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 162, NULL, NULL, NULL, NULL, 5, '616 MG Road, Delhi', '9630322092', 'student_049', 'student49@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(80, 'ADM-2026-0060', 'Ramesh Dubey', 'Male', '2021-12-09', NULL, 'Nitin Dubey', 'nitindubey25@example.com', NULL, '2026-03-24 08:38:39', '9235460314', 1, NULL, 'B+', '158135771495', '9773062640', 'Nitin Dubey', '9235460314', 'Fatima Dubey', '9659266719', '553 Gandhi Nagar, Mumbai', 'Nitin Dubey', 'Father', '9235460314', '553 Gandhi Nagar, Mumbai', 'Islam', 'ST', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-21', 'Approved', 'LKG', 'uploads/students/1772898928_2_1644572849.jpg', 163, NULL, NULL, NULL, NULL, 5, '553 Gandhi Nagar, Mumbai', '9773062640', 'student_050', 'student50@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(81, 'ADM-2026-0061', 'Priya Pillai', 'Female', '2021-07-19', NULL, 'Sunil Pillai', 'sunilpillai31@example.com', NULL, '2026-03-24 08:38:39', '9492967930', 1, NULL, 'O+', '822981954865', '9319369523', 'Sunil Pillai', '9492967930', 'Simran Pillai', '9549869661', '625 Shastri Nagar, Delhi', 'Sunil Pillai', 'Father', '9492967930', '625 Shastri Nagar, Delhi', 'Buddhist', 'OBC-B', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-07', 'Approved', 'LKG', 'uploads/students/1772898928_12_Passport-size-photo-Vivek-puri.jpg', 164, NULL, NULL, NULL, NULL, 5, '625 Shastri Nagar, Delhi', '9319369523', 'student_051', 'student51@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(82, 'ADM-2026-0062', 'Preeti Patel', 'Female', '2021-07-24', NULL, 'Vivaan Patel', 'vivaanpatel70@example.com', NULL, '2026-03-24 08:38:39', '9970186800', 1, NULL, 'A-', '679439587424', '9437915880', 'Vivaan Patel', '9970186800', 'Anita Patel', '9724331422', '469 Station Road, Chennai', 'Vivaan Patel', 'Father', '9970186800', '469 Station Road, Chennai', 'Christian', 'OBC-B', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-22', 'Approved', 'LKG', 'uploads/students/1772898928_8_8c11dd4a7110a437722370c4663f80ec.jpg', 165, NULL, NULL, NULL, NULL, 5, '469 Station Road, Chennai', '9437915880', 'student_052', 'student52@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(83, 'ADM-2026-0063', 'Simran Iyer', 'Female', '2021-03-11', NULL, 'Karan Iyer', 'karaniyer89@example.com', NULL, '2026-03-24 08:38:39', '9167311273', 1, NULL, 'O-', '706925174573', '9956747807', 'Karan Iyer', '9167311273', 'Preeti Iyer', '9567255132', '695 Civil Lines, Kolkata', 'Karan Iyer', 'Father', '9167311273', '695 Civil Lines, Kolkata', 'Hindu', 'SC', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-02', 'Approved', 'LKG', 'uploads/students/1772898928_8_8c11dd4a7110a437722370c4663f80ec.jpg', 166, NULL, NULL, NULL, NULL, 5, '695 Civil Lines, Kolkata', '9956747807', 'student_053', 'student53@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(84, 'ADM-2026-0064', 'Geeta Tiwari', 'Female', '2021-05-03', NULL, 'Ramesh Tiwari', 'rameshtiwari83@example.com', NULL, '2026-03-24 08:38:39', '9896029120', 1, NULL, 'AB+', '692359375937', '9670770600', 'Ramesh Tiwari', '9896029120', 'Kavita Tiwari', '9583555160', '897 Shastri Nagar, Chennai', 'Ramesh Tiwari', 'Father', '9896029120', '897 Shastri Nagar, Chennai', 'Christian', 'ST', 'English', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-22', 'Approved', 'LKG', 'uploads/students/1772898928_17_images10.jpg', 167, NULL, NULL, NULL, NULL, 5, '897 Shastri Nagar, Chennai', '9670770600', 'student_054', 'student54@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(85, 'ADM-2026-0065', 'Anita Singh', 'Female', '2021-05-17', NULL, 'Vikas Singh', 'vikassingh82@example.com', NULL, '2026-03-24 08:38:39', '9225451737', 1, NULL, 'AB-', '847619406329', '9319564053', 'Vikas Singh', '9225451737', 'Sunita Singh', '9632873638', '29 Shastri Nagar, Mumbai', 'Vikas Singh', 'Father', '9225451737', '29 Shastri Nagar, Mumbai', 'Islam', 'SC', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-01', 'Approved', 'LKG', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 168, NULL, NULL, NULL, NULL, 5, '29 Shastri Nagar, Mumbai', '9319564053', 'student_055', 'student55@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(86, 'ADM-2026-0066', 'Aakanksha Nair', 'Female', '2021-08-07', NULL, 'Amit Nair', 'amitnair26@example.com', NULL, '2026-03-24 08:38:39', '9954670350', 1, NULL, 'A-', '601043641372', '9148161628', 'Amit Nair', '9954670350', 'Pooja Nair', '9877595844', '484 Station Road, Chennai', 'Amit Nair', 'Father', '9954670350', '484 Station Road, Chennai', 'Islam', 'SC', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-23', 'Approved', 'LKG', 'uploads/students/stu_1772563030.png', 169, NULL, NULL, NULL, NULL, 5, '484 Station Road, Chennai', '9148161628', 'student_056', 'student56@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(87, 'ADM-2026-0067', 'Geeta Nair', 'Female', '2021-08-16', NULL, 'Sunil Nair', 'sunilnair55@example.com', NULL, '2026-03-24 08:38:39', '9164730748', 1, NULL, 'O-', '786755907815', '9347721864', 'Sunil Nair', '9164730748', 'Neha Nair', '9502640219', '664 MG Road, Mumbai', 'Sunil Nair', 'Father', '9164730748', '664 MG Road, Mumbai', 'Christian', 'OBC-A', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-08', 'Approved', 'LKG', 'uploads/students/1772898928_20_images13.jpg', 170, NULL, NULL, NULL, NULL, 5, '664 MG Road, Mumbai', '9347721864', 'student_057', 'student57@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(88, 'ADM-2026-0068', 'Zainab Chauhan', 'Female', '2021-02-06', NULL, 'Vikrant Chauhan', 'vikrantchauhan48@example.com', NULL, '2026-03-24 08:38:39', '9549357618', 1, NULL, 'B+', '810556563373', '9716137703', 'Vikrant Chauhan', '9549357618', 'Swati Chauhan', '9700891942', '932 Civil Lines, Mumbai', 'Vikrant Chauhan', 'Father', '9549357618', '932 Civil Lines, Mumbai', 'Hindu', 'OBC-B', 'Odia', 0, NULL, 1, 'Mild hearing impairment', 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-28', 'Approved', 'LKG', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 171, NULL, NULL, NULL, NULL, 5, '932 Civil Lines, Mumbai', '9716137703', 'student_058', 'student58@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(89, 'ADM-2026-0069', 'Rekha Mishra', 'Female', '2021-03-11', NULL, 'Akash Mishra', 'akashmishra82@example.com', NULL, '2026-03-24 08:38:39', '9919204910', 1, NULL, 'A-', '116848896572', '9382353957', 'Akash Mishra', '9919204910', 'Aakanksha Mishra', '9699414518', '43 Station Road, Delhi', 'Akash Mishra', 'Father', '9919204910', '43 Station Road, Delhi', 'Islam', 'OBC-A', 'Kannada', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-03', 'Approved', 'LKG', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 172, NULL, NULL, NULL, NULL, 5, '43 Station Road, Delhi', '9382353957', 'student_059', 'student59@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(90, 'ADM-2026-0070', 'Swati Yadav', 'Female', '2021-03-15', NULL, 'Rohan Yadav', 'rohanyadav75@example.com', NULL, '2026-03-24 08:38:39', '9820502875', 1, NULL, 'O+', '441534003423', '9895917143', 'Rohan Yadav', '9820502875', 'Neha Yadav', '9213776163', '863 Civil Lines, Pune', 'Rohan Yadav', 'Father', '9820502875', '863 Civil Lines, Pune', 'Hindu', 'OBC-A', 'English', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'Nursery', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-23', 'Approved', 'LKG', 'uploads/students/1772898928_15_gopinathK-1.jpg', 173, NULL, NULL, NULL, NULL, 5, '863 Civil Lines, Pune', '9895917143', 'student_060', 'student60@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(91, 'ADM-2026-0071', 'Krishna Patil', 'Male', '2020-10-10', NULL, 'Vikas Patil', 'vikaspatil99@example.com', NULL, '2026-03-24 08:38:39', '9769146375', 1, NULL, 'AB+', '719221226734', '9574990335', 'Vikas Patil', '9769146375', 'Geeta Patil', '9837003128', '325 Gandhi Nagar, Kolkata', 'Vikas Patil', 'Father', '9769146375', '325 Gandhi Nagar, Kolkata', 'Hindu', 'OBC-B', 'Telugu', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-15', 'Approved', 'UKG', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 174, NULL, NULL, NULL, NULL, 6, '325 Gandhi Nagar, Kolkata', '9574990335', 'student_061', 'student61@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(92, 'ADM-2026-0072', 'Vikrant Joshi', 'Male', '2020-08-12', NULL, 'Kunal Joshi', 'kunaljoshi89@example.com', NULL, '2026-03-24 08:38:39', '9768459099', 1, NULL, 'A+', '951698267224', '9128527424', 'Kunal Joshi', '9768459099', 'Priya Joshi', '9918569085', '180 Shastri Nagar, Delhi', 'Kunal Joshi', 'Father', '9768459099', '180 Shastri Nagar, Delhi', 'Islam', 'OBC-A', 'Odia', 1, 'Asthma', 0, NULL, 1, 'Peanut allergy', 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-18', 'Approved', 'UKG', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 175, NULL, NULL, NULL, NULL, 6, '180 Shastri Nagar, Delhi', '9128527424', 'student_062', 'student62@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(93, 'ADM-2026-0073', 'Amit Mukherjee', 'Male', '2020-11-21', NULL, 'Vikrant Mukherjee', 'vikrantmukherjee86@example.com', NULL, '2026-03-24 08:38:39', '9700708021', 1, NULL, 'B-', '355938137503', '9238619846', 'Vikrant Mukherjee', '9700708021', 'Preeti Mukherjee', '9824009677', '979 Shastri Nagar, Bangalore', 'Vikrant Mukherjee', 'Father', '9700708021', '979 Shastri Nagar, Bangalore', 'Buddhist', 'OBC-B', 'Kannada', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-16', 'Approved', 'UKG', 'uploads/students/stu_1772563030.png', 176, NULL, NULL, NULL, NULL, 6, '979 Shastri Nagar, Bangalore', '9238619846', 'student_063', 'student63@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(94, 'ADM-2026-0074', 'Vijay Chauhan', 'Male', '2020-06-03', NULL, 'Amit Chauhan', 'amitchauhan96@example.com', NULL, '2026-03-24 08:38:39', '9244150128', 1, NULL, 'A+', '827183517662', '9695585031', 'Amit Chauhan', '9244150128', 'Nisha Chauhan', '9688035734', '914 MG Road, Kolkata', 'Amit Chauhan', 'Father', '9244150128', '914 MG Road, Kolkata', 'Buddhist', 'ST', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-02', 'Approved', 'UKG', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 177, NULL, NULL, NULL, NULL, 6, '914 MG Road, Kolkata', '9695585031', 'student_064', 'student64@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(95, 'ADM-2026-0075', 'Vijay Sharma', 'Male', '2020-06-19', NULL, 'Vivaan Sharma', 'vivaansharma94@example.com', NULL, '2026-03-24 08:38:39', '9929177068', 1, NULL, 'O+', '502499948480', '9923046145', 'Vivaan Sharma', '9929177068', 'Shweta Sharma', '9504725153', '629 Station Road, Hyderabad', 'Vivaan Sharma', 'Father', '9929177068', '629 Station Road, Hyderabad', 'Hindu', 'ST', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-06', 'Approved', 'UKG', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 178, NULL, NULL, NULL, NULL, 6, '629 Station Road, Hyderabad', '9923046145', 'student_065', 'student65@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(96, 'ADM-2026-0076', 'Rahul Menon', 'Male', '2020-07-19', NULL, 'Ramesh Menon', 'rameshmenon24@example.com', NULL, '2026-03-24 08:38:39', '9394417016', 1, NULL, 'AB+', '705254361665', '9128574186', 'Ramesh Menon', '9394417016', 'Sunita Menon', '9354201238', '106 Shastri Nagar, Chennai', 'Ramesh Menon', 'Father', '9394417016', '106 Shastri Nagar, Chennai', 'Hindu', 'OBC-B', 'Kannada', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-14', 'Approved', 'UKG', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 179, NULL, NULL, NULL, NULL, 6, '106 Shastri Nagar, Chennai', '9128574186', 'student_066', 'student66@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(97, 'ADM-2026-0077', 'Vijay Bose', 'Male', '2020-04-01', NULL, 'Aarav Bose', 'aaravbose24@example.com', NULL, '2026-03-24 08:38:39', '9240768550', 1, NULL, 'O+', '870656076804', '9690726671', 'Aarav Bose', '9240768550', 'Swati Bose', '9861532652', '521 Station Road, Mumbai', 'Aarav Bose', 'Father', '9240768550', '521 Station Road, Mumbai', 'Islam', 'General', 'Gujarati', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-02', 'Approved', 'UKG', 'uploads/students/1772898928_20_images13.jpg', 180, NULL, NULL, NULL, NULL, 6, '521 Station Road, Mumbai', '9690726671', 'student_067', 'student67@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(98, 'ADM-2026-0078', 'Rahul Patil', 'Male', '2020-01-11', NULL, 'Vijay Patil', 'vijaypatil82@example.com', NULL, '2026-03-24 08:38:39', '9513811152', 1, NULL, 'A-', '462643431593', '9706790815', 'Vijay Patil', '9513811152', 'Nidhi Patil', '9637931648', '725 Gandhi Nagar, Bangalore', 'Vijay Patil', 'Father', '9513811152', '725 Gandhi Nagar, Bangalore', 'Buddhist', 'OBC-A', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-17', 'Approved', 'UKG', 'uploads/students/1772898928_2_1644572849.jpg', 181, NULL, NULL, NULL, NULL, 6, '725 Gandhi Nagar, Bangalore', '9706790815', 'student_068', 'student68@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(99, 'ADM-2026-0079', 'Sanjay Banerjee', 'Male', '2020-04-15', NULL, 'Rajesh Banerjee', 'rajeshbanerjee39@example.com', NULL, '2026-03-24 08:38:39', '9270174350', 1, NULL, 'O-', '181123965831', '9213720181', 'Rajesh Banerjee', '9270174350', 'Nisha Banerjee', '9927639559', '334 Station Road, Delhi', 'Rajesh Banerjee', 'Father', '9270174350', '334 Station Road, Delhi', 'Islam', 'OBC-B', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-23', 'Approved', 'UKG', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 182, NULL, NULL, NULL, NULL, 6, '334 Station Road, Delhi', '9213720181', 'student_069', 'student69@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(100, 'ADM-2026-0080', 'Rahul Bose', 'Male', '2020-03-27', NULL, 'Sanjay Bose', 'sanjaybose13@example.com', NULL, '2026-03-24 08:38:39', '9953591001', 1, NULL, 'B+', '264025742185', '9371329783', 'Sanjay Bose', '9953591001', 'Ayesha Bose', '9110081230', '338 Shastri Nagar, Pune', 'Sanjay Bose', 'Father', '9953591001', '338 Shastri Nagar, Pune', 'Hindu', 'OBC-A', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-02', 'Approved', 'UKG', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 183, NULL, NULL, NULL, NULL, 6, '338 Shastri Nagar, Pune', '9371329783', 'student_070', 'student70@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(101, 'ADM-2026-0081', 'Sunita Das', 'Female', '2020-10-08', NULL, 'Anil Das', 'anildas39@example.com', NULL, '2026-03-24 08:38:39', '9212341578', 1, NULL, 'O-', '589581215524', '9445889676', 'Anil Das', '9212341578', 'Fatima Das', '9973692482', '886 MG Road, Mumbai', 'Anil Das', 'Father', '9212341578', '886 MG Road, Mumbai', 'Hindu', 'OBC-B', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-26', 'Approved', 'UKG', 'uploads/students/1772898928_19_images12.jpg', 184, NULL, NULL, NULL, NULL, 6, '886 MG Road, Mumbai', '9445889676', 'student_071', 'student71@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(102, 'ADM-2026-0082', 'Shruti Bose', 'Female', '2020-07-28', NULL, 'Abhishek Bose', 'abhishekbose66@example.com', NULL, '2026-03-24 08:38:39', '9246292077', 1, NULL, 'O+', '941079133861', '9565674017', 'Abhishek Bose', '9246292077', 'Kavita Bose', '9718587971', '678 Gandhi Nagar, Delhi', 'Abhishek Bose', 'Father', '9246292077', '678 Gandhi Nagar, Delhi', 'Christian', 'OBC-B', 'English', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-24', 'Approved', 'UKG', 'uploads/students/1772898928_16_images1.jpg', 185, NULL, NULL, NULL, NULL, 6, '678 Gandhi Nagar, Delhi', '9565674017', 'student_072', 'student72@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(103, 'ADM-2026-0083', 'Diya Reddy', 'Female', '2020-02-24', NULL, 'Manoj Reddy', 'manojreddy64@example.com', NULL, '2026-03-24 08:38:39', '9163800863', 1, NULL, 'A+', '497482159966', '9994083941', 'Manoj Reddy', '9163800863', 'Zainab Reddy', '9340140483', '451 Gandhi Nagar, Bangalore', 'Manoj Reddy', 'Father', '9163800863', '451 Gandhi Nagar, Bangalore', 'Christian', 'OBC-A', 'English', 0, NULL, 1, 'Mild hearing impairment', 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-15', 'Approved', 'UKG', 'uploads/students/1772898928_17_images10.jpg', 186, NULL, NULL, NULL, NULL, 6, '451 Gandhi Nagar, Bangalore', '9994083941', 'student_073', 'student73@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(104, 'ADM-2026-0084', 'Diya Pandey', 'Female', '2020-09-28', NULL, 'Manish Pandey', 'manishpandey58@example.com', NULL, '2026-03-24 08:38:39', '9856285310', 1, NULL, 'B-', '689857298438', '9161687784', 'Manish Pandey', '9856285310', 'Preeti Pandey', '9669530912', '155 MG Road, Bangalore', 'Manish Pandey', 'Father', '9856285310', '155 MG Road, Bangalore', 'Hindu', 'OBC-A', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-23', 'Approved', 'UKG', 'uploads/students/1772898928_2_1644572849.jpg', 187, NULL, NULL, NULL, NULL, 6, '155 MG Road, Bangalore', '9161687784', 'student_074', 'student74@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(105, 'ADM-2026-0085', 'Kiran Banerjee', 'Female', '2020-02-24', NULL, 'Manoj Banerjee', 'manojbanerjee80@example.com', NULL, '2026-03-24 08:38:39', '9464901715', 1, NULL, 'A-', '428361601405', '9153353373', 'Manoj Banerjee', '9464901715', 'Nisha Banerjee', '9216681368', '554 MG Road, Delhi', 'Manoj Banerjee', 'Father', '9464901715', '554 MG Road, Delhi', 'Hindu', 'OBC-B', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-14', 'Approved', 'UKG', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 188, NULL, NULL, NULL, NULL, 6, '554 MG Road, Delhi', '9153353373', 'student_075', 'student75@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(106, 'ADM-2026-0086', 'Nidhi Kulkarni', 'Female', '2020-09-06', NULL, 'Akash Kulkarni', 'akashkulkarni13@example.com', NULL, '2026-03-24 08:38:39', '9682763255', 1, NULL, 'A+', '572114254363', '9329056457', 'Akash Kulkarni', '9682763255', 'Shweta Kulkarni', '9233216681', '237 Civil Lines, Chennai', 'Akash Kulkarni', 'Father', '9682763255', '237 Civil Lines, Chennai', 'Christian', 'General', 'Hindi', 1, 'Asthma', 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-05', 'Approved', 'UKG', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 189, NULL, NULL, NULL, NULL, 6, '237 Civil Lines, Chennai', '9329056457', 'student_076', 'student76@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(107, 'ADM-2026-0087', 'Ananya Gupta', 'Female', '2020-09-12', NULL, 'Ramesh Gupta', 'rameshgupta89@example.com', NULL, '2026-03-24 08:38:39', '9560845107', 1, NULL, 'AB-', '411699325675', '9131480789', 'Ramesh Gupta', '9560845107', 'Riya Gupta', '9730655084', '716 Shastri Nagar, Kolkata', 'Ramesh Gupta', 'Father', '9560845107', '716 Shastri Nagar, Kolkata', 'Buddhist', 'OBC-B', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-19', 'Approved', 'UKG', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 190, NULL, NULL, NULL, NULL, 6, '716 Shastri Nagar, Kolkata', '9131480789', 'student_077', 'student77@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(108, 'ADM-2026-0088', 'Kiran Dubey', 'Female', '2020-01-04', NULL, 'Nitin Dubey', 'nitindubey16@example.com', NULL, '2026-03-24 08:38:39', '9667288345', 1, NULL, 'AB+', '904934704431', '9902532865', 'Nitin Dubey', '9667288345', 'Simran Dubey', '9399128773', '715 Station Road, Kolkata', 'Nitin Dubey', 'Father', '9667288345', '715 Station Road, Kolkata', 'Buddhist', 'ST', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-02-26', 'Approved', 'UKG', 'uploads/students/1772898928_19_images12.jpg', 191, NULL, NULL, NULL, NULL, 6, '715 Station Road, Kolkata', '9902532865', 'student_078', 'student78@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(109, 'ADM-2026-0089', 'Sita Iyer', 'Female', '2020-12-18', NULL, 'Vikrant Iyer', 'vikrantiyer68@example.com', NULL, '2026-03-24 08:38:39', '9133615290', 1, NULL, 'O+', '760511575203', '9580820795', 'Vikrant Iyer', '9133615290', 'Kavita Iyer', '9669060894', '283 Station Road, Bangalore', 'Vikrant Iyer', 'Father', '9133615290', '283 Station Road, Bangalore', 'Hindu', 'OBC-A', 'Telugu', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-10', 'Approved', 'UKG', 'uploads/students/1772898928_17_images10.jpg', 192, NULL, NULL, NULL, NULL, 6, '283 Station Road, Bangalore', '9580820795', 'student_079', 'student79@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(110, 'ADM-2026-0090', 'Simran Yadav', 'Female', '2020-12-01', NULL, 'Karan Yadav', 'karanyadav63@example.com', NULL, '2026-03-24 08:38:39', '9449789590', 1, NULL, 'O-', '706682638851', '9338947869', 'Karan Yadav', '9449789590', 'Riya Yadav', '9629358502', '706 Station Road, Hyderabad', 'Karan Yadav', 'Father', '9449789590', '706 Station Road, Hyderabad', 'Buddhist', 'ST', 'Bengali', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'First Time Schooling', 'LKG', NULL, NULL, NULL, NULL, NULL, NULL, '2026-03-14', 'Approved', 'UKG', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 193, NULL, NULL, NULL, NULL, 6, '706 Station Road, Hyderabad', '9338947869', 'student_080', 'student80@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(111, 'ADM-2026-0091', 'Ramesh Das', 'Male', '2019-09-17', NULL, 'Vikram Das', 'vikramdas64@example.com', NULL, '2026-03-24 08:38:39', '9397650209', 1, NULL, 'B-', '345028525821', '9272731189', 'Vikram Das', '9397650209', 'Sneha Das', '9252053002', '309 Station Road, Pune', 'Vikram Das', 'Father', '9397650209', '309 Station Road, Pune', 'Islam', 'General', 'English', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-21', 'Approved', 'Class 1', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 194, NULL, NULL, NULL, NULL, 7, '309 Station Road, Pune', '9272731189', 'student_081', 'student81@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(112, 'ADM-2026-0092', 'Rahul Tiwari', 'Male', '2019-10-04', NULL, 'Sanjay Tiwari', 'sanjaytiwari35@example.com', NULL, '2026-03-24 08:38:39', '9228483917', 1, NULL, 'O+', '623117415494', '9920673176', 'Sanjay Tiwari', '9228483917', 'Diya Tiwari', '9649720255', '691 Shastri Nagar, Hyderabad', 'Sanjay Tiwari', 'Father', '9228483917', '691 Shastri Nagar, Hyderabad', 'Christian', 'OBC-B', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-18', 'Approved', 'Class 1', 'uploads/students/1772898928_15_gopinathK-1.jpg', 195, NULL, NULL, NULL, NULL, 7, '691 Shastri Nagar, Hyderabad', '9920673176', 'student_082', 'student82@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(113, 'ADM-2026-0093', 'Vivaan Reddy', 'Male', '2019-09-26', NULL, 'Sanjay Reddy', 'sanjayreddy23@example.com', NULL, '2026-03-24 08:38:39', '9874727578', 1, NULL, 'B-', '558044457278', '9602307872', 'Sanjay Reddy', '9874727578', 'Anita Reddy', '9163955488', '14 MG Road, Pune', 'Sanjay Reddy', 'Father', '9874727578', '14 MG Road, Pune', 'Christian', 'ST', 'English', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-25', 'Approved', 'Class 1', 'uploads/students/1772898928_15_gopinathK-1.jpg', 196, NULL, NULL, NULL, NULL, 7, '14 MG Road, Pune', '9602307872', 'student_083', 'student83@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(114, 'ADM-2026-0094', 'Kunal Deshmukh', 'Male', '2019-09-21', NULL, 'Krishna Deshmukh', 'krishnadeshmukh11@example.com', NULL, '2026-03-24 08:38:39', '9868742949', 1, NULL, 'AB-', '776895851050', '9580898265', 'Krishna Deshmukh', '9868742949', 'Sneha Deshmukh', '9981044655', '583 Civil Lines, Mumbai', 'Krishna Deshmukh', 'Father', '9868742949', '583 Civil Lines, Mumbai', 'Buddhist', 'ST', 'Telugu', 1, 'Asthma', 1, 'Mild hearing impairment', 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-24', 'Approved', 'Class 1', 'uploads/students/1772898928_18_images11.jpg', 197, NULL, NULL, NULL, NULL, 7, '583 Civil Lines, Mumbai', '9580898265', 'student_084', 'student84@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(115, 'ADM-2026-0095', 'Vikram Reddy', 'Male', '2019-02-15', NULL, 'Krishna Reddy', 'krishnareddy71@example.com', NULL, '2026-03-24 08:38:40', '9964767525', 1, NULL, 'B+', '402610697092', '9353980443', 'Krishna Reddy', '9964767525', 'Sonia Reddy', '9731835699', '680 MG Road, Chennai', 'Krishna Reddy', 'Father', '9964767525', '680 MG Road, Chennai', 'Hindu', 'SC', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-08', 'Approved', 'Class 1', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 198, NULL, NULL, NULL, NULL, 7, '680 MG Road, Chennai', '9353980443', 'student_085', 'student85@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(116, 'ADM-2026-0096', 'Anil Bose', 'Male', '2019-04-24', NULL, 'Vishal Bose', 'vishalbose50@example.com', NULL, '2026-03-24 08:38:40', '9709489481', 1, NULL, 'A-', '194410354209', '9712475757', 'Vishal Bose', '9709489481', 'Kavita Bose', '9792455235', '634 Civil Lines, Bangalore', 'Vishal Bose', 'Father', '9709489481', '634 Civil Lines, Bangalore', 'Islam', 'OBC-B', 'Gujarati', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-01', 'Approved', 'Class 1', 'uploads/students/1772898928_17_images10.jpg', 199, NULL, NULL, NULL, NULL, 7, '634 Civil Lines, Bangalore', '9712475757', 'student_086', 'student86@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(117, 'ADM-2026-0097', 'Vikrant Kumar', 'Male', '2019-01-27', NULL, 'Aditya Kumar', 'adityakumar25@example.com', NULL, '2026-03-24 08:38:40', '9828368666', 1, NULL, 'B-', '738411283693', '9677015050', 'Aditya Kumar', '9828368666', 'Sonia Kumar', '9472145878', '977 Shastri Nagar, Pune', 'Aditya Kumar', 'Father', '9828368666', '977 Shastri Nagar, Pune', 'Christian', 'OBC-B', 'English', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-22', 'Approved', 'Class 1', 'uploads/students/1772898928_17_images10.jpg', 200, NULL, NULL, NULL, NULL, 7, '977 Shastri Nagar, Pune', '9677015050', 'student_087', 'student87@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(118, 'ADM-2026-0098', 'Karan Sharma', 'Male', '2019-01-07', NULL, 'Anil Sharma', 'anilsharma12@example.com', NULL, '2026-03-24 08:38:40', '9667698044', 1, NULL, 'AB+', '312011447644', '9298249291', 'Anil Sharma', '9667698044', 'Priya Sharma', '9843482531', '685 MG Road, Pune', 'Anil Sharma', 'Father', '9667698044', '685 MG Road, Pune', 'Buddhist', 'OBC-A', 'Telugu', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-27', 'Approved', 'Class 1', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 201, NULL, NULL, NULL, NULL, 7, '685 MG Road, Pune', '9298249291', 'student_088', 'student88@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(119, 'ADM-2026-0099', 'Vijay Mistry', 'Male', '2019-11-25', NULL, 'Aditya Mistry', 'adityamistry98@example.com', NULL, '2026-03-24 08:38:40', '9172918271', 1, NULL, 'B-', '210975386278', '9963718244', 'Aditya Mistry', '9172918271', 'Nidhi Mistry', '9713161824', '32 Civil Lines, Pune', 'Aditya Mistry', 'Father', '9172918271', '32 Civil Lines, Pune', 'Hindu', 'SC', 'Gujarati', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-01', 'Approved', 'Class 1', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 202, NULL, NULL, NULL, NULL, 7, '32 Civil Lines, Pune', '9963718244', 'student_089', 'student89@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(120, 'ADM-2026-0100', 'Vikrant Chauhan', 'Male', '2019-02-02', NULL, 'Krishna Chauhan', 'krishnachauhan93@example.com', NULL, '2026-03-24 08:38:40', '9617968673', 1, NULL, 'AB-', '744212094976', '9958543348', 'Krishna Chauhan', '9617968673', 'Ishita Chauhan', '9275958077', '765 Shastri Nagar, Pune', 'Krishna Chauhan', 'Father', '9617968673', '765 Shastri Nagar, Pune', 'Islam', 'OBC-A', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-19', 'Approved', 'Class 1', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 203, NULL, NULL, NULL, NULL, 7, '765 Shastri Nagar, Pune', '9958543348', 'student_090', 'student90@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(121, 'ADM-2026-0101', 'Sunita Chauhan', 'Female', '2019-10-13', NULL, 'Manish Chauhan', 'manishchauhan34@example.com', NULL, '2026-03-24 08:38:40', '9276976946', 1, NULL, 'A+', '453015362441', '9199285665', 'Manish Chauhan', '9276976946', 'Simran Chauhan', '9742622907', '638 Station Road, Kolkata', 'Manish Chauhan', 'Father', '9276976946', '638 Station Road, Kolkata', 'Hindu', 'OBC-B', 'Odia', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-17', 'Approved', 'Class 1', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 204, NULL, NULL, NULL, NULL, 7, '638 Station Road, Kolkata', '9199285665', 'student_091', 'student91@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(122, 'ADM-2026-0102', 'Preeti Pandey', 'Female', '2019-08-06', NULL, 'Ramesh Pandey', 'rameshpandey88@example.com', NULL, '2026-03-24 08:38:40', '9148625575', 1, NULL, 'AB+', '949050625276', '9358702793', 'Ramesh Pandey', '9148625575', 'Kavya Pandey', '9697641158', '405 Shastri Nagar, Kolkata', 'Ramesh Pandey', 'Father', '9148625575', '405 Shastri Nagar, Kolkata', 'Buddhist', 'ST', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Class 1', 'uploads/students/1772898928_2_1644572849.jpg', 205, NULL, NULL, NULL, NULL, 7, '405 Shastri Nagar, Kolkata', '9358702793', 'student_092', 'student92@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(123, 'ADM-2026-0103', 'Ishita Bose', 'Female', '2019-07-23', NULL, 'Akash Bose', 'akashbose20@example.com', NULL, '2026-03-24 08:38:40', '9125571396', 1, NULL, 'B+', '496551945384', '9187527866', 'Akash Bose', '9125571396', 'Meena Bose', '9724263492', '559 Station Road, Mumbai', 'Akash Bose', 'Father', '9125571396', '559 Station Road, Mumbai', 'Christian', 'SC', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-03', 'Approved', 'Class 1', 'uploads/students/1772898928_20_images13.jpg', 206, NULL, NULL, NULL, NULL, 7, '559 Station Road, Mumbai', '9187527866', 'student_093', 'student93@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(124, 'ADM-2026-0104', 'Ishita Joshi', 'Female', '2019-11-14', NULL, 'Manish Joshi', 'manishjoshi68@example.com', NULL, '2026-03-24 08:38:40', '9824472726', 1, NULL, 'A+', '835313966608', '9127258790', 'Manish Joshi', '9824472726', 'Divya Joshi', '9357156556', '581 Station Road, Kolkata', 'Manish Joshi', 'Father', '9824472726', '581 Station Road, Kolkata', 'Hindu', 'SC', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-18', 'Approved', 'Class 1', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 207, NULL, NULL, NULL, NULL, 7, '581 Station Road, Kolkata', '9127258790', 'student_094', 'student94@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(125, 'ADM-2026-0105', 'Swati Sen', 'Female', '2019-01-11', NULL, 'Rahul Sen', 'rahulsen60@example.com', NULL, '2026-03-24 08:38:40', '9876232684', 1, NULL, 'AB+', '931389917693', '9488806056', 'Rahul Sen', '9876232684', 'Simran Sen', '9406279824', '941 MG Road, Kolkata', 'Rahul Sen', 'Father', '9876232684', '941 MG Road, Kolkata', 'Buddhist', 'OBC-B', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Class 1', 'uploads/students/1772898928_2_1644572849.jpg', 208, NULL, NULL, NULL, NULL, 7, '941 MG Road, Kolkata', '9488806056', 'student_095', 'student95@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(126, 'ADM-2026-0106', 'Simran Menon', 'Female', '2019-01-04', NULL, 'Arjun Menon', 'arjunmenon27@example.com', NULL, '2026-03-24 08:38:40', '9921149845', 1, NULL, 'O-', '991741157868', '9843961809', 'Arjun Menon', '9921149845', 'Kavya Menon', '9543358747', '756 Shastri Nagar, Bangalore', 'Arjun Menon', 'Father', '9921149845', '756 Shastri Nagar, Bangalore', 'Hindu', 'ST', 'Hindi', 0, NULL, 1, 'Mild hearing impairment', 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Class 1', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 209, NULL, NULL, NULL, NULL, 7, '756 Shastri Nagar, Bangalore', '9843961809', 'student_096', 'student96@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(127, 'ADM-2026-0107', 'Sneha Iyer', 'Female', '2019-02-16', NULL, 'Rajesh Iyer', 'rajeshiyer60@example.com', NULL, '2026-03-24 08:38:40', '9697575704', 1, NULL, 'A+', '300374746906', '9680906636', 'Rajesh Iyer', '9697575704', 'Kiran Iyer', '9981812133', '649 Station Road, Bangalore', 'Rajesh Iyer', 'Father', '9697575704', '649 Station Road, Bangalore', 'Buddhist', 'ST', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-02', 'Approved', 'Class 1', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 210, NULL, NULL, NULL, NULL, 7, '649 Station Road, Bangalore', '9680906636', 'student_097', 'student97@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(128, 'ADM-2026-0108', 'Swati Chauhan', 'Female', '2019-04-25', NULL, 'Deepak Chauhan', 'deepakchauhan35@example.com', NULL, '2026-03-24 08:38:40', '9462365805', 1, NULL, 'B-', '202247003303', '9177086395', 'Deepak Chauhan', '9462365805', 'Meena Chauhan', '9892121951', '803 Shastri Nagar, Mumbai', 'Deepak Chauhan', 'Father', '9462365805', '803 Shastri Nagar, Mumbai', 'Hindu', 'SC', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-08', 'Approved', 'Class 1', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 211, NULL, NULL, NULL, NULL, 7, '803 Shastri Nagar, Mumbai', '9177086395', 'student_098', 'student98@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(129, 'ADM-2026-0109', 'Nidhi Menon', 'Female', '2019-08-05', NULL, 'Rajesh Menon', 'rajeshmenon59@example.com', NULL, '2026-03-24 08:38:40', '9329222466', 1, NULL, 'B-', '839754501173', '9835496153', 'Rajesh Menon', '9329222466', 'Ananya Menon', '9130944931', '165 Civil Lines, Delhi', 'Rajesh Menon', 'Father', '9329222466', '165 Civil Lines, Delhi', 'Hindu', 'ST', 'Urdu', 0, NULL, 1, 'Mild hearing impairment', 1, 'Peanut allergy', 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-11', 'Approved', 'Class 1', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 212, NULL, NULL, NULL, NULL, 7, '165 Civil Lines, Delhi', '9835496153', 'student_099', 'student99@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(130, 'ADM-2026-0110', 'Kavya Joshi', 'Female', '2019-07-15', NULL, 'Ravi Joshi', 'ravijoshi47@example.com', NULL, '2026-03-24 08:38:40', '9312520032', 1, NULL, 'O-', '772966326614', '9599882024', 'Ravi Joshi', '9312520032', 'Sunita Joshi', '9963281052', '546 MG Road, Hyderabad', 'Ravi Joshi', 'Father', '9312520032', '546 MG Road, Hyderabad', 'Christian', 'SC', 'Bengali', 0, NULL, 1, 'Mild hearing impairment', 0, NULL, 'Passed from Previous School', 'UKG', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-05', 'Approved', 'Class 1', 'uploads/students/stu_1772565595.png', 213, NULL, NULL, NULL, NULL, 7, '546 MG Road, Hyderabad', '9599882024', 'student_100', 'student100@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(131, 'ADM-2026-0111', 'Kunal Yadav', 'Male', '2018-05-23', NULL, 'Vishal Yadav', 'vishalyadav42@example.com', NULL, '2026-03-24 08:38:40', '9887916031', 1, NULL, 'AB-', '935424857879', '9485782960', 'Vishal Yadav', '9887916031', 'Kavita Yadav', '9931643942', '414 Gandhi Nagar, Mumbai', 'Vishal Yadav', 'Father', '9887916031', '414 Gandhi Nagar, Mumbai', 'Islam', 'OBC-A', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-09', 'Approved', 'Class 2', 'uploads/students/1772898928_19_images12.jpg', 214, NULL, NULL, NULL, NULL, 8, '414 Gandhi Nagar, Mumbai', '9485782960', 'student_101', 'student101@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(132, 'ADM-2026-0112', 'Ravi Pillai', 'Male', '2018-05-14', NULL, 'Manoj Pillai', 'manojpillai86@example.com', NULL, '2026-03-24 08:38:40', '9754035149', 1, NULL, 'A+', '308781451050', '9598699093', 'Manoj Pillai', '9754035149', 'Riya Pillai', '9185034265', '746 Shastri Nagar, Hyderabad', 'Manoj Pillai', 'Father', '9754035149', '746 Shastri Nagar, Hyderabad', 'Christian', 'General', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-22', 'Approved', 'Class 2', 'uploads/students/stu_1772565595.png', 215, NULL, NULL, NULL, NULL, 8, '746 Shastri Nagar, Hyderabad', '9598699093', 'student_102', 'student102@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(133, 'ADM-2026-0113', 'Kunal Pillai', 'Male', '2018-05-12', NULL, 'Vikram Pillai', 'vikrampillai98@example.com', NULL, '2026-03-24 08:38:40', '9109188522', 1, NULL, 'O-', '559155564799', '9174724044', 'Vikram Pillai', '9109188522', 'Meena Pillai', '9426850240', '952 Gandhi Nagar, Mumbai', 'Vikram Pillai', 'Father', '9109188522', '952 Gandhi Nagar, Mumbai', 'Islam', 'OBC-A', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-21', 'Approved', 'Class 2', 'uploads/students/1772898928_12_Passport-size-photo-Vivek-puri.jpg', 216, NULL, NULL, NULL, NULL, 8, '952 Gandhi Nagar, Mumbai', '9174724044', 'student_103', 'student103@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka');
INSERT INTO `students` (`id`, `admission_no`, `student_name`, `gender`, `dob`, `class`, `parent_name`, `parent_email`, `photo`, `created_at`, `parent_phone`, `is_active`, `application_id`, `blood_group`, `aadhaar_number`, `mobile_number`, `father_name`, `father_mobile`, `mother_name`, `mother_mobile`, `parents_address`, `guardian_name`, `relation`, `guardian_mobile`, `guardian_address`, `religion`, `caste_category`, `mother_tongue`, `has_medical_condition`, `medical_condition_desc`, `has_disability`, `disability_desc`, `has_allergies`, `allergies_desc`, `previous_schooling_status`, `previous_class`, `previous_school_name`, `previous_board`, `year_of_passing`, `previous_school`, `address`, `guardian_details`, `admission_date`, `status`, `class_applied`, `student_photo`, `user_id`, `class_id`, `section_id`, `parent_id`, `admission_number`, `age`, `present_address`, `student_mobile`, `username`, `email`, `password`) VALUES
(134, 'ADM-2026-0114', 'Kunal Mishra', 'Male', '2018-05-12', NULL, 'Rahul Mishra', 'rahulmishra55@example.com', NULL, '2026-03-24 08:38:40', '9857254728', 1, NULL, 'A+', '700994234103', '9284542152', 'Rahul Mishra', '9857254728', 'Riya Mishra', '9209270838', '124 Gandhi Nagar, Mumbai', 'Rahul Mishra', 'Father', '9857254728', '124 Gandhi Nagar, Mumbai', 'Buddhist', 'OBC-B', 'Hindi', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-05', 'Approved', 'Class 2', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 217, NULL, NULL, NULL, NULL, 8, '124 Gandhi Nagar, Mumbai', '9284542152', 'student_104', 'student104@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(135, 'ADM-2026-0115', 'Akash Nair', 'Male', '2018-01-10', NULL, 'Vijay Nair', 'vijaynair76@example.com', NULL, '2026-03-24 08:38:40', '9583564276', 1, NULL, 'A-', '627694518958', '9662540007', 'Vijay Nair', '9583564276', 'Sneha Nair', '9472529443', '129 Station Road, Chennai', 'Vijay Nair', 'Father', '9583564276', '129 Station Road, Chennai', 'Hindu', 'OBC-B', 'Odia', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-17', 'Approved', 'Class 2', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 218, NULL, NULL, NULL, NULL, 8, '129 Station Road, Chennai', '9662540007', 'student_105', 'student105@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(136, 'ADM-2026-0116', 'Aditya Singh', 'Male', '2018-02-28', 'Class 2', 'Vijay Singh', 'vijaysingh42@example.com', NULL, '2026-03-24 08:38:40', '9370596763', 1, NULL, 'B-', '298373226709', '9259216551', 'Vijay Singh', '9370596763', 'Aakanksha Singh', '9591054373', '559 Shastri Nagar, Delhi', 'Vijay Singh', 'Father', '9370596763', NULL, 'Islam', 'ST', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, 'Previous Public School', '559 Shastri Nagar, Delhi', NULL, '2026-03-05', 'Approved', 'Class 2', 'uploads/students/1772898928_20_images13.jpg', 219, NULL, NULL, NULL, NULL, 8, '559 Shastri Nagar, Delhi', '9259216551', 'student_106_a', 'student106@classschool.com', '$2y$10$G3ceAF/O/vEFfZlMd33bn.iqNGFv2dN8z.M/1r2ULa4cDpYhiHxFm'),
(137, 'ADM-2026-0117', 'Rahul Chauhan', 'Male', '2018-12-27', NULL, 'Sumit Chauhan', 'sumitchauhan42@example.com', NULL, '2026-03-24 08:38:40', '9328784951', 1, NULL, 'A+', '852938121010', '9247656098', 'Sumit Chauhan', '9328784951', 'Kavita Chauhan', '9124932851', '119 Civil Lines, Chennai', 'Sumit Chauhan', 'Father', '9328784951', '119 Civil Lines, Chennai', 'Hindu', 'OBC-A', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-19', 'Approved', 'Class 2', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 220, NULL, NULL, NULL, NULL, 8, '119 Civil Lines, Chennai', '9247656098', 'student_107', 'student107@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(138, 'ADM-2026-0118', 'Vishal Mishra', 'Male', '2018-02-03', NULL, 'Sanjay Mishra', 'sanjaymishra55@example.com', NULL, '2026-03-24 08:38:40', '9662641785', 1, NULL, 'AB-', '460591071474', '9937247472', 'Sanjay Mishra', '9662641785', 'Ayesha Mishra', '9999557015', '754 Station Road, Delhi', 'Sanjay Mishra', 'Father', '9662641785', '754 Station Road, Delhi', 'Christian', 'ST', 'Bengali', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-25', 'Approved', 'Class 2', 'uploads/students/1772898928_2_1644572849.jpg', 221, NULL, NULL, NULL, NULL, 8, '754 Station Road, Delhi', '9937247472', 'student_108', 'student108@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(139, 'ADM-2026-0119', 'Ravi Patel', 'Male', '2018-02-15', NULL, 'Vijay Patel', 'vijaypatel62@example.com', NULL, '2026-03-24 08:38:40', '9893585264', 1, NULL, 'O+', '795474895188', '9106837969', 'Vijay Patel', '9893585264', 'Simran Patel', '9790728533', '829 Shastri Nagar, Pune', 'Vijay Patel', 'Father', '9893585264', '829 Shastri Nagar, Pune', 'Christian', 'ST', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-13', 'Approved', 'Class 2', 'uploads/students/1772898928_16_images1.jpg', 222, NULL, NULL, NULL, NULL, 8, '829 Shastri Nagar, Pune', '9106837969', 'student_109', 'student109@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(140, 'ADM-2026-0120', 'Vikram Gupta', 'Male', '2018-06-14', NULL, 'Nitin Gupta', 'nitingupta42@example.com', NULL, '2026-03-24 08:38:40', '9301504609', 1, NULL, 'B+', '323439612351', '9567053896', 'Nitin Gupta', '9301504609', 'Sunita Gupta', '9894978941', '331 Station Road, Mumbai', 'Nitin Gupta', 'Father', '9301504609', '331 Station Road, Mumbai', 'Christian', 'SC', 'Odia', 0, NULL, 1, 'Mild hearing impairment', 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Class 2', 'uploads/students/stu_1772565595.png', 223, NULL, NULL, NULL, NULL, 8, '331 Station Road, Mumbai', '9567053896', 'student_110', 'student110@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(141, 'ADM-2026-0121', 'Preeti Das', 'Female', '2018-10-03', NULL, 'Aditya Das', 'adityadas28@example.com', NULL, '2026-03-24 08:38:40', '9677743361', 1, NULL, 'B+', '580042991862', '9715074826', 'Aditya Das', '9677743361', 'Sunita Das', '9418689285', '400 MG Road, Hyderabad', 'Aditya Das', 'Father', '9677743361', '400 MG Road, Hyderabad', 'Islam', 'OBC-B', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-20', 'Approved', 'Class 2', 'uploads/students/stu_1772563030.png', 224, NULL, NULL, NULL, NULL, 8, '400 MG Road, Hyderabad', '9715074826', 'student_111', 'student111@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(142, 'ADM-2026-0122', 'Riya Chowdhury', 'Female', '2018-05-27', NULL, 'Suresh Chowdhury', 'sureshchowdhury30@example.com', NULL, '2026-03-24 08:38:40', '9964985051', 1, NULL, 'O+', '737877893345', '9849357394', 'Suresh Chowdhury', '9964985051', 'Priya Chowdhury', '9418732548', '103 Shastri Nagar, Hyderabad', 'Suresh Chowdhury', 'Father', '9964985051', '103 Shastri Nagar, Hyderabad', 'Christian', 'OBC-A', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-20', 'Approved', 'Class 2', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 225, NULL, NULL, NULL, NULL, 8, '103 Shastri Nagar, Hyderabad', '9849357394', 'student_112', 'student112@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(143, 'ADM-2026-0123', 'Ishita Pillai', 'Female', '2018-01-10', NULL, 'Manoj Pillai', 'manojpillai88@example.com', NULL, '2026-03-24 08:38:40', '9896508791', 1, NULL, 'B+', '618924581833', '9372086906', 'Manoj Pillai', '9896508791', 'Divya Pillai', '9908355644', '364 Station Road, Delhi', 'Manoj Pillai', 'Father', '9896508791', '364 Station Road, Delhi', 'Christian', 'OBC-A', 'Telugu', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-15', 'Approved', 'Class 2', 'uploads/students/1772898928_17_images10.jpg', 226, NULL, NULL, NULL, NULL, 8, '364 Station Road, Delhi', '9372086906', 'student_113', 'student113@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(144, 'ADM-2026-0124', 'Shweta Tiwari', 'Female', '2018-05-19', NULL, 'Anil Tiwari', 'aniltiwari92@example.com', NULL, '2026-03-24 08:38:40', '9204739952', 1, NULL, 'B-', '308596944840', '9934693528', 'Anil Tiwari', '9204739952', 'Nidhi Tiwari', '9766146506', '127 Civil Lines, Mumbai', 'Anil Tiwari', 'Father', '9204739952', '127 Civil Lines, Mumbai', 'Christian', 'General', 'Marathi', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-08', 'Approved', 'Class 2', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 227, NULL, NULL, NULL, NULL, 8, '127 Civil Lines, Mumbai', '9934693528', 'student_114', 'student114@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(145, 'ADM-2026-0125', 'Diya Mishra', 'Female', '2018-11-26', NULL, 'Sumit Mishra', 'sumitmishra17@example.com', NULL, '2026-03-24 08:38:40', '9367768289', 1, NULL, 'B+', '927987776306', '9879280303', 'Sumit Mishra', '9367768289', 'Simran Mishra', '9104962424', '426 Station Road, Chennai', 'Sumit Mishra', 'Father', '9367768289', '426 Station Road, Chennai', 'Hindu', 'OBC-A', 'Odia', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-23', 'Approved', 'Class 2', 'uploads/students/1772898928_16_images1.jpg', 228, NULL, NULL, NULL, NULL, 8, '426 Station Road, Chennai', '9879280303', 'student_115', 'student115@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(146, 'ADM-2026-0126', 'Aakanksha Kulkarni', 'Female', '2018-07-11', NULL, 'Abhishek Kulkarni', 'abhishekkulkarni93@example.com', NULL, '2026-03-24 08:38:40', '9682642053', 1, NULL, 'A-', '487464916064', '9195637858', 'Abhishek Kulkarni', '9682642053', 'Sunita Kulkarni', '9482494321', '893 Shastri Nagar, Delhi', 'Abhishek Kulkarni', 'Father', '9682642053', '893 Shastri Nagar, Delhi', 'Buddhist', 'ST', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-01', 'Approved', 'Class 2', 'uploads/students/stu_1772563518.png', 229, NULL, NULL, NULL, NULL, 8, '893 Shastri Nagar, Delhi', '9195637858', 'student_116', 'student116@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(147, 'ADM-2026-0127', 'Priya Sharma', 'Female', '2018-12-13', NULL, 'Neeraj Sharma', 'neerajsharma35@example.com', NULL, '2026-03-24 08:38:40', '9346589207', 1, NULL, 'A+', '107794309043', '9542003720', 'Neeraj Sharma', '9346589207', 'Shweta Sharma', '9363570323', '203 Station Road, Pune', 'Neeraj Sharma', 'Father', '9346589207', '203 Station Road, Pune', 'Christian', 'OBC-B', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-01', 'Approved', 'Class 2', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 230, NULL, NULL, NULL, NULL, 8, '203 Station Road, Pune', '9542003720', 'student_117', 'student117@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(148, 'ADM-2026-0128', 'Pooja Tiwari', 'Female', '2018-05-24', NULL, 'Manoj Tiwari', 'manojtiwari32@example.com', NULL, '2026-03-24 08:38:40', '9322682785', 1, NULL, 'O+', '841430186746', '9828145024', 'Manoj Tiwari', '9322682785', 'Ananya Tiwari', '9920320259', '24 Station Road, Mumbai', 'Manoj Tiwari', 'Father', '9322682785', '24 Station Road, Mumbai', 'Buddhist', 'ST', 'Bengali', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-04', 'Approved', 'Class 2', 'uploads/students/1772898928_12_Passport-size-photo-Vivek-puri.jpg', 231, NULL, NULL, NULL, NULL, 8, '24 Station Road, Mumbai', '9828145024', 'student_118', 'student118@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(149, 'ADM-2026-0129', 'Sita Nair', 'Female', '2018-05-26', NULL, 'Deepak Nair', 'deepaknair53@example.com', NULL, '2026-03-24 08:38:40', '9548245824', 1, NULL, 'AB+', '974532108476', '9309655510', 'Deepak Nair', '9548245824', 'Kiran Nair', '9344893734', '723 Shastri Nagar, Hyderabad', 'Deepak Nair', 'Father', '9548245824', '723 Shastri Nagar, Hyderabad', 'Hindu', 'OBC-A', 'Hindi', 1, 'Asthma', 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-27', 'Approved', 'Class 2', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 232, NULL, NULL, NULL, NULL, 8, '723 Shastri Nagar, Hyderabad', '9309655510', 'student_119', 'student119@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(150, 'ADM-2026-0130', 'Zainab Nair', 'Female', '2018-06-16', NULL, 'Vikas Nair', 'vikasnair66@example.com', NULL, '2026-03-24 08:38:40', '9844242807', 1, NULL, 'A-', '894911186331', '9471341042', 'Vikas Nair', '9844242807', 'Kavya Nair', '9632459851', '698 MG Road, Pune', 'Vikas Nair', 'Father', '9844242807', '698 MG Road, Pune', 'Hindu', 'General', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 1', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-15', 'Approved', 'Class 2', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 233, NULL, NULL, NULL, NULL, 8, '698 MG Road, Pune', '9471341042', 'student_120', 'student120@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(151, 'ADM-2026-0131', 'Neeraj Gupta', 'Male', '2017-02-10', NULL, 'Vikram Gupta', 'vikramgupta36@example.com', NULL, '2026-03-24 08:38:40', '9835320012', 1, NULL, 'O+', '783041966612', '9298331288', 'Vikram Gupta', '9835320012', 'Nidhi Gupta', '9903205141', '243 Shastri Nagar, Chennai', 'Vikram Gupta', 'Father', '9835320012', '243 Shastri Nagar, Chennai', 'Christian', 'OBC-B', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-11', 'Approved', 'Class 3', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 234, NULL, NULL, NULL, NULL, 9, '243 Shastri Nagar, Chennai', '9298331288', 'student_121', 'student121@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(152, 'ADM-2026-0132', 'Sumit Chowdhury', 'Male', '2017-03-25', NULL, 'Arjun Chowdhury', 'arjunchowdhury69@example.com', NULL, '2026-03-24 08:38:40', '9424013201', 1, NULL, 'A+', '578525979598', '9760298850', 'Arjun Chowdhury', '9424013201', 'Nisha Chowdhury', '9663124529', '101 Gandhi Nagar, Kolkata', 'Arjun Chowdhury', 'Father', '9424013201', '101 Gandhi Nagar, Kolkata', 'Christian', 'SC', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Class 3', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 235, NULL, NULL, NULL, NULL, 9, '101 Gandhi Nagar, Kolkata', '9760298850', 'student_122', 'student122@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(153, 'ADM-2026-0133', 'Rohan Deshmukh', 'Male', '2017-05-11', NULL, 'Vijay Deshmukh', 'vijaydeshmukh19@example.com', NULL, '2026-03-24 08:38:40', '9445053118', 1, NULL, 'O+', '592629122779', '9297579137', 'Vijay Deshmukh', '9445053118', 'Fatima Deshmukh', '9938800893', '215 Shastri Nagar, Pune', 'Vijay Deshmukh', 'Father', '9445053118', '215 Shastri Nagar, Pune', 'Islam', 'General', 'Marathi', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-24', 'Approved', 'Class 3', 'uploads/students/stu_1772563518.png', 236, NULL, NULL, NULL, NULL, 9, '215 Shastri Nagar, Pune', '9297579137', 'student_123', 'student123@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(154, 'ADM-2026-0134', 'Vivaan Chowdhury', 'Male', '2017-08-26', NULL, 'Akash Chowdhury', 'akashchowdhury99@example.com', NULL, '2026-03-24 08:38:40', '9977702435', 1, NULL, 'A+', '240746233172', '9450896098', 'Akash Chowdhury', '9977702435', 'Nisha Chowdhury', '9383725697', '581 Station Road, Delhi', 'Akash Chowdhury', 'Father', '9977702435', '581 Station Road, Delhi', 'Islam', 'General', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-08', 'Approved', 'Class 3', 'uploads/students/1772898928_18_images11.jpg', 237, NULL, NULL, NULL, NULL, 9, '581 Station Road, Delhi', '9450896098', 'student_124', 'student124@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(155, 'ADM-2026-0135', 'Manoj Joshi', 'Male', '2017-04-27', NULL, 'Sunil Joshi', 'suniljoshi35@example.com', NULL, '2026-03-24 08:38:40', '9927466870', 1, NULL, 'B-', '157497199464', '9416656357', 'Sunil Joshi', '9927466870', 'Sunita Joshi', '9461414553', '868 Civil Lines, Chennai', 'Sunil Joshi', 'Father', '9927466870', '868 Civil Lines, Chennai', 'Islam', 'ST', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-21', 'Approved', 'Class 3', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 238, NULL, NULL, NULL, NULL, 9, '868 Civil Lines, Chennai', '9416656357', 'student_125', 'student125@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(156, 'ADM-2026-0136', 'Krishna Pandey', 'Male', '2017-08-16', NULL, 'Nitin Pandey', 'nitinpandey25@example.com', NULL, '2026-03-24 08:38:40', '9791074127', 1, NULL, 'A-', '122493026587', '9885623690', 'Nitin Pandey', '9791074127', 'Kavita Pandey', '9743537174', '938 Shastri Nagar, Bangalore', 'Nitin Pandey', 'Father', '9791074127', '938 Shastri Nagar, Bangalore', 'Hindu', 'OBC-B', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Class 3', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 239, NULL, NULL, NULL, NULL, 9, '938 Shastri Nagar, Bangalore', '9885623690', 'student_126', 'student126@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(157, 'ADM-2026-0137', 'Sunil Chowdhury', 'Male', '2017-08-03', NULL, 'Sanjay Chowdhury', 'sanjaychowdhury43@example.com', NULL, '2026-03-24 08:38:40', '9553775479', 1, NULL, 'A+', '824493456187', '9925718226', 'Sanjay Chowdhury', '9553775479', 'Sneha Chowdhury', '9471240016', '253 Shastri Nagar, Mumbai', 'Sanjay Chowdhury', 'Father', '9553775479', '253 Shastri Nagar, Mumbai', 'Islam', 'General', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-28', 'Approved', 'Class 3', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 240, NULL, NULL, NULL, NULL, 9, '253 Shastri Nagar, Mumbai', '9925718226', 'student_127', 'student127@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(158, 'ADM-2026-0138', 'Deepak Banerjee', 'Male', '2017-07-21', NULL, 'Karan Banerjee', 'karanbanerjee39@example.com', NULL, '2026-03-24 08:38:40', '9575606480', 1, NULL, 'A-', '181842877112', '9329376738', 'Karan Banerjee', '9575606480', 'Ishita Banerjee', '9970378230', '414 MG Road, Hyderabad', 'Karan Banerjee', 'Father', '9575606480', '414 MG Road, Hyderabad', 'Buddhist', 'ST', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Class 3', 'uploads/students/stu_1772563518.png', 241, NULL, NULL, NULL, NULL, 9, '414 MG Road, Hyderabad', '9329376738', 'student_128', 'student128@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(159, 'ADM-2026-0139', 'Sunil Das', 'Male', '2017-12-17', NULL, 'Ravi Das', 'ravidas34@example.com', NULL, '2026-03-24 08:38:40', '9728636255', 1, NULL, 'AB+', '880033975994', '9924065639', 'Ravi Das', '9728636255', 'Shweta Das', '9803058411', '196 Gandhi Nagar, Bangalore', 'Ravi Das', 'Father', '9728636255', '196 Gandhi Nagar, Bangalore', 'Buddhist', 'SC', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Class 3', 'uploads/students/stu_1772565595.png', 242, NULL, NULL, NULL, NULL, 9, '196 Gandhi Nagar, Bangalore', '9924065639', 'student_129', 'student129@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(160, 'ADM-2026-0140', 'Akash Chowdhury', 'Male', '2017-08-22', NULL, 'Suresh Chowdhury', 'sureshchowdhury35@example.com', NULL, '2026-03-24 08:38:40', '9940633437', 1, NULL, 'AB-', '616732723006', '9755293600', 'Suresh Chowdhury', '9940633437', 'Ananya Chowdhury', '9350016432', '103 Gandhi Nagar, Mumbai', 'Suresh Chowdhury', 'Father', '9940633437', '103 Gandhi Nagar, Mumbai', 'Hindu', 'SC', 'Urdu', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-02', 'Approved', 'Class 3', 'uploads/students/stu_1772563030.png', 243, NULL, NULL, NULL, NULL, 9, '103 Gandhi Nagar, Mumbai', '9755293600', 'student_130', 'student130@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(161, 'ADM-2026-0141', 'Simran Patel', 'Female', '2017-02-04', NULL, 'Aarav Patel', 'aaravpatel81@example.com', NULL, '2026-03-24 08:38:40', '9476824505', 1, NULL, 'O+', '448232422379', '9372832189', 'Aarav Patel', '9476824505', 'Ayesha Patel', '9854670592', '60 MG Road, Chennai', 'Aarav Patel', 'Father', '9476824505', '60 MG Road, Chennai', 'Hindu', 'OBC-A', 'Gujarati', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Class 3', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 244, NULL, NULL, NULL, NULL, 9, '60 MG Road, Chennai', '9372832189', 'student_131', 'student131@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(162, 'ADM-2026-0142', 'Anita Deshmukh', 'Female', '2017-08-22', NULL, 'Vikrant Deshmukh', 'vikrantdeshmukh82@example.com', NULL, '2026-03-24 08:38:40', '9716682453', 1, NULL, 'O+', '948975852266', '9500933735', 'Vikrant Deshmukh', '9716682453', 'Zainab Deshmukh', '9796305585', '457 MG Road, Mumbai', 'Vikrant Deshmukh', 'Father', '9716682453', '457 MG Road, Mumbai', 'Christian', 'General', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-28', 'Approved', 'Class 3', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 245, NULL, NULL, NULL, NULL, 9, '457 MG Road, Mumbai', '9500933735', 'student_132', 'student132@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(163, 'ADM-2026-0143', 'Diya Chatterjee', 'Female', '2017-08-01', NULL, 'Akash Chatterjee', 'akashchatterjee42@example.com', NULL, '2026-03-24 08:38:40', '9465137660', 1, NULL, 'B-', '363875527890', '9594588842', 'Akash Chatterjee', '9465137660', 'Diya Chatterjee', '9224850307', '902 Shastri Nagar, Mumbai', 'Akash Chatterjee', 'Father', '9465137660', '902 Shastri Nagar, Mumbai', 'Islam', 'General', 'Marathi', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-14', 'Approved', 'Class 3', 'uploads/students/stu_1772565595.png', 246, NULL, NULL, NULL, NULL, 9, '902 Shastri Nagar, Mumbai', '9594588842', 'student_133', 'student133@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(164, 'ADM-2026-0144', 'Sneha Chauhan', 'Female', '2017-08-21', NULL, 'Manish Chauhan', 'manishchauhan19@example.com', NULL, '2026-03-24 08:38:40', '9744370541', 1, NULL, 'AB+', '877880671586', '9753474960', 'Manish Chauhan', '9744370541', 'Sonia Chauhan', '9944626875', '22 Station Road, Chennai', 'Manish Chauhan', 'Father', '9744370541', '22 Station Road, Chennai', 'Buddhist', 'General', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-23', 'Approved', 'Class 3', 'uploads/students/1772898928_16_images1.jpg', 247, NULL, NULL, NULL, NULL, 9, '22 Station Road, Chennai', '9753474960', 'student_134', 'student134@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(165, 'ADM-2026-0145', 'Fatima Mukherjee', 'Female', '2017-11-05', NULL, 'Rohan Mukherjee', 'rohanmukherjee15@example.com', NULL, '2026-03-24 08:38:40', '9510169859', 1, NULL, 'O+', '485569727504', '9504192763', 'Rohan Mukherjee', '9510169859', 'Ishita Mukherjee', '9834727876', '227 Civil Lines, Mumbai', 'Rohan Mukherjee', 'Father', '9510169859', '227 Civil Lines, Mumbai', 'Islam', 'ST', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-15', 'Approved', 'Class 3', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 248, NULL, NULL, NULL, NULL, 9, '227 Civil Lines, Mumbai', '9504192763', 'student_135', 'student135@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(166, 'ADM-2026-0146', 'Shruti Gupta', 'Female', '2017-12-07', NULL, 'Vishal Gupta', 'vishalgupta26@example.com', NULL, '2026-03-24 08:38:40', '9292298521', 1, NULL, 'A+', '136886243435', '9940460322', 'Vishal Gupta', '9292298521', 'Shruti Gupta', '9673982355', '132 MG Road, Hyderabad', 'Vishal Gupta', 'Father', '9292298521', '132 MG Road, Hyderabad', 'Christian', 'OBC-B', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-04', 'Approved', 'Class 3', 'uploads/students/1772898928_15_gopinathK-1.jpg', 249, NULL, NULL, NULL, NULL, 9, '132 MG Road, Hyderabad', '9940460322', 'student_136', 'student136@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(167, 'ADM-2026-0147', 'Neha Das', 'Female', '2017-03-20', NULL, 'Vikram Das', 'vikramdas76@example.com', NULL, '2026-03-24 08:38:40', '9629765890', 1, NULL, 'O-', '668874524274', '9877309031', 'Vikram Das', '9629765890', 'Priya Das', '9242675575', '694 Civil Lines, Kolkata', 'Vikram Das', 'Father', '9629765890', '694 Civil Lines, Kolkata', 'Buddhist', 'General', 'Telugu', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-28', 'Approved', 'Class 3', 'uploads/students/1772898928_15_gopinathK-1.jpg', 250, NULL, NULL, NULL, NULL, 9, '694 Civil Lines, Kolkata', '9877309031', 'student_137', 'student137@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(168, 'ADM-2026-0148', 'Riya Iyer', 'Female', '2017-01-18', NULL, 'Amit Iyer', 'amitiyer66@example.com', NULL, '2026-03-24 08:38:40', '9237805068', 1, NULL, 'B-', '788210165661', '9598493356', 'Amit Iyer', '9237805068', 'Ayesha Iyer', '9214664506', '448 Civil Lines, Mumbai', 'Amit Iyer', 'Father', '9237805068', '448 Civil Lines, Mumbai', 'Buddhist', 'OBC-B', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-17', 'Approved', 'Class 3', 'uploads/students/1772898928_2_1644572849.jpg', 251, NULL, NULL, NULL, NULL, 9, '448 Civil Lines, Mumbai', '9598493356', 'student_138', 'student138@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(169, 'ADM-2026-0149', 'Geeta Patel', 'Female', '2017-03-11', NULL, 'Vishal Patel', 'vishalpatel20@example.com', NULL, '2026-03-24 08:38:40', '9756726453', 1, NULL, 'A+', '772446298785', '9404201311', 'Vishal Patel', '9756726453', 'Nidhi Patel', '9373223465', '414 MG Road, Delhi', 'Vishal Patel', 'Father', '9756726453', '414 MG Road, Delhi', 'Christian', 'SC', 'Odia', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-20', 'Approved', 'Class 3', 'uploads/students/1772898928_17_images10.jpg', 252, NULL, NULL, NULL, NULL, 9, '414 MG Road, Delhi', '9404201311', 'student_139', 'student139@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(170, 'ADM-2026-0150', 'Neha Banerjee', 'Female', '2017-02-17', NULL, 'Ravi Banerjee', 'ravibanerjee54@example.com', NULL, '2026-03-24 08:38:40', '9788843491', 1, NULL, 'B+', '111510684130', '9769516510', 'Ravi Banerjee', '9788843491', 'Geeta Banerjee', '9482896503', '468 Gandhi Nagar, Pune', 'Ravi Banerjee', 'Father', '9788843491', '468 Gandhi Nagar, Pune', 'Hindu', 'OBC-B', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 2', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-24', 'Approved', 'Class 3', 'uploads/students/stu_1772563030.png', 253, NULL, NULL, NULL, NULL, 9, '468 Gandhi Nagar, Pune', '9769516510', 'student_140', 'student140@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(171, 'ADM-2026-0151', 'Arjun Joshi', 'Male', '2016-06-09', NULL, 'Anil Joshi', 'aniljoshi52@example.com', NULL, '2026-03-24 08:38:40', '9445382689', 1, NULL, 'AB-', '615886531778', '9721403447', 'Anil Joshi', '9445382689', 'Diya Joshi', '9177702501', '981 Shastri Nagar, Pune', 'Anil Joshi', 'Father', '9445382689', '981 Shastri Nagar, Pune', 'Islam', 'ST', 'Hindi', 1, 'Asthma', 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-25', 'Approved', 'Class 4', 'uploads/students/stu_1772565595.png', 254, NULL, NULL, NULL, NULL, 10, '981 Shastri Nagar, Pune', '9721403447', 'student_141', 'student141@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(172, 'ADM-2026-0152', 'Aarav Banerjee', 'Male', '2016-05-18', NULL, 'Vivaan Banerjee', 'vivaanbanerjee84@example.com', NULL, '2026-03-24 08:38:40', '9122077393', 1, NULL, 'O+', '216368901192', '9818668265', 'Vivaan Banerjee', '9122077393', 'Neha Banerjee', '9150474658', '617 Gandhi Nagar, Pune', 'Vivaan Banerjee', 'Father', '9122077393', '617 Gandhi Nagar, Pune', 'Islam', 'ST', 'Hindi', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-20', 'Approved', 'Class 4', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 255, NULL, NULL, NULL, NULL, 10, '617 Gandhi Nagar, Pune', '9818668265', 'student_142', 'student142@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(173, 'ADM-2026-0153', 'Manish Iyer', 'Male', '2016-03-23', NULL, 'Nitin Iyer', 'nitiniyer12@example.com', NULL, '2026-03-24 08:38:40', '9826159399', 1, NULL, 'O+', '806238411735', '9874577657', 'Nitin Iyer', '9826159399', 'Fatima Iyer', '9103948445', '509 Shastri Nagar, Chennai', 'Nitin Iyer', 'Father', '9826159399', '509 Shastri Nagar, Chennai', 'Christian', 'ST', 'Marathi', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-19', 'Approved', 'Class 4', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 256, NULL, NULL, NULL, NULL, 10, '509 Shastri Nagar, Chennai', '9874577657', 'student_143', 'student143@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(174, 'ADM-2026-0154', 'Vikrant Menon', 'Male', '2016-02-03', NULL, 'Anil Menon', 'anilmenon89@example.com', NULL, '2026-03-24 08:38:40', '9264899782', 1, NULL, 'A-', '156441459877', '9892219422', 'Anil Menon', '9264899782', 'Nisha Menon', '9446527770', '395 Station Road, Pune', 'Anil Menon', 'Father', '9264899782', '395 Station Road, Pune', 'Buddhist', 'OBC-B', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-23', 'Approved', 'Class 4', 'uploads/students/stu_1772563518.png', 257, NULL, NULL, NULL, NULL, 10, '395 Station Road, Pune', '9892219422', 'student_144', 'student144@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(175, 'ADM-2026-0155', 'Sunil Pandey', 'Male', '2016-07-03', NULL, 'Karan Pandey', 'karanpandey53@example.com', NULL, '2026-03-24 08:38:40', '9528476479', 1, NULL, 'B-', '668990436992', '9357437024', 'Karan Pandey', '9528476479', 'Kavita Pandey', '9624676927', '565 Civil Lines, Delhi', 'Karan Pandey', 'Father', '9528476479', '565 Civil Lines, Delhi', 'Buddhist', 'OBC-B', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-06', 'Approved', 'Class 4', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 258, NULL, NULL, NULL, NULL, 10, '565 Civil Lines, Delhi', '9357437024', 'student_145', 'student145@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(176, 'ADM-2026-0156', 'Rajesh Sharma', 'Male', '2016-05-01', NULL, 'Deepak Sharma', 'deepaksharma40@example.com', NULL, '2026-03-24 08:38:40', '9213314629', 1, NULL, 'A+', '663024424598', '9830384259', 'Deepak Sharma', '9213314629', 'Priya Sharma', '9155644837', '649 Shastri Nagar, Hyderabad', 'Deepak Sharma', 'Father', '9213314629', '649 Shastri Nagar, Hyderabad', 'Christian', 'OBC-B', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-20', 'Approved', 'Class 4', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 259, NULL, NULL, NULL, NULL, 10, '649 Shastri Nagar, Hyderabad', '9830384259', 'student_146', 'student146@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(177, 'ADM-2026-0157', 'Akash Kulkarni', 'Male', '2016-04-22', NULL, 'Neeraj Kulkarni', 'neerajkulkarni42@example.com', NULL, '2026-03-24 08:38:40', '9743117058', 1, NULL, 'A-', '597423086286', '9235149866', 'Neeraj Kulkarni', '9743117058', 'Ananya Kulkarni', '9289350539', '367 Civil Lines, Kolkata', 'Neeraj Kulkarni', 'Father', '9743117058', '367 Civil Lines, Kolkata', 'Christian', 'OBC-A', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-13', 'Approved', 'Class 4', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 260, NULL, NULL, NULL, NULL, 10, '367 Civil Lines, Kolkata', '9235149866', 'student_147', 'student147@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(178, 'ADM-2026-0158', 'Nitin Patil', 'Male', '2016-07-09', NULL, 'Kunal Patil', 'kunalpatil97@example.com', NULL, '2026-03-24 08:38:40', '9183534247', 1, NULL, 'AB+', '906997324027', '9213245851', 'Kunal Patil', '9183534247', 'Aakanksha Patil', '9473758933', '123 Station Road, Hyderabad', 'Kunal Patil', 'Father', '9183534247', '123 Station Road, Hyderabad', 'Christian', 'General', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-28', 'Approved', 'Class 4', 'uploads/students/1772898928_17_images10.jpg', 261, NULL, NULL, NULL, NULL, 10, '123 Station Road, Hyderabad', '9213245851', 'student_148', 'student148@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(179, 'ADM-2026-0159', 'Amit Chauhan', 'Male', '2016-10-23', NULL, 'Sanjay Chauhan', 'sanjaychauhan96@example.com', NULL, '2026-03-24 08:38:40', '9953386776', 1, NULL, 'AB+', '524745365773', '9577145007', 'Sanjay Chauhan', '9953386776', 'Sunita Chauhan', '9437497643', '387 Shastri Nagar, Delhi', 'Sanjay Chauhan', 'Father', '9953386776', '387 Shastri Nagar, Delhi', 'Islam', 'General', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-20', 'Approved', 'Class 4', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 262, NULL, NULL, NULL, NULL, 10, '387 Shastri Nagar, Delhi', '9577145007', 'student_149', 'student149@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(180, 'ADM-2026-0160', 'Akash Chauhan', 'Male', '2016-06-09', NULL, 'Ramesh Chauhan', 'rameshchauhan52@example.com', NULL, '2026-03-24 08:38:40', '9216776105', 1, NULL, 'A+', '579859001046', '9945792297', 'Ramesh Chauhan', '9216776105', 'Sunita Chauhan', '9544114742', '100 Station Road, Chennai', 'Ramesh Chauhan', 'Father', '9216776105', '100 Station Road, Chennai', 'Buddhist', 'SC', 'Tamil', 1, 'Asthma', 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-23', 'Approved', 'Class 4', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 263, NULL, NULL, NULL, NULL, 10, '100 Station Road, Chennai', '9945792297', 'student_150', 'student150@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(181, 'ADM-2026-0161', 'Ayesha Singh', 'Female', '2016-06-14', NULL, 'Vivaan Singh', 'vivaansingh64@example.com', NULL, '2026-03-24 08:38:40', '9147266945', 1, NULL, 'A+', '309312463577', '9999279257', 'Vivaan Singh', '9147266945', 'Sunita Singh', '9425265717', '772 Gandhi Nagar, Hyderabad', 'Vivaan Singh', 'Father', '9147266945', '772 Gandhi Nagar, Hyderabad', 'Islam', 'OBC-B', 'Urdu', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Class 4', 'uploads/students/1772898928_19_images12.jpg', 264, NULL, NULL, NULL, NULL, 10, '772 Gandhi Nagar, Hyderabad', '9999279257', 'student_151', 'student151@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(182, 'ADM-2026-0162', 'Kavita Joshi', 'Female', '2016-09-26', NULL, 'Nitin Joshi', 'nitinjoshi67@example.com', NULL, '2026-03-24 08:38:40', '9134184089', 1, NULL, 'A-', '301792411995', '9732775007', 'Nitin Joshi', '9134184089', 'Neha Joshi', '9412377829', '224 Station Road, Kolkata', 'Nitin Joshi', 'Father', '9134184089', '224 Station Road, Kolkata', 'Hindu', 'OBC-A', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-23', 'Approved', 'Class 4', 'uploads/students/1772898928_17_images10.jpg', 265, NULL, NULL, NULL, NULL, 10, '224 Station Road, Kolkata', '9732775007', 'student_152', 'student152@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(183, 'ADM-2026-0163', 'Kiran Sharma', 'Female', '2016-05-27', NULL, 'Vikas Sharma', 'vikassharma53@example.com', NULL, '2026-03-24 08:38:40', '9375900476', 1, NULL, 'A+', '329762656436', '9936717938', 'Vikas Sharma', '9375900476', 'Sneha Sharma', '9189996086', '634 Gandhi Nagar, Delhi', 'Vikas Sharma', 'Father', '9375900476', '634 Gandhi Nagar, Delhi', 'Christian', 'General', 'Tamil', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-05', 'Approved', 'Class 4', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 266, NULL, NULL, NULL, NULL, 10, '634 Gandhi Nagar, Delhi', '9936717938', 'student_153', 'student153@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(184, 'ADM-2026-0164', 'Aakanksha Deshmukh', 'Female', '2016-07-28', NULL, 'Karan Deshmukh', 'karandeshmukh66@example.com', NULL, '2026-03-24 08:38:40', '9651713193', 1, NULL, 'B-', '963350188920', '9150402334', 'Karan Deshmukh', '9651713193', 'Divya Deshmukh', '9934149469', '65 Civil Lines, Delhi', 'Karan Deshmukh', 'Father', '9651713193', '65 Civil Lines, Delhi', 'Islam', 'ST', 'Gujarati', 1, 'Asthma', 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-26', 'Approved', 'Class 4', 'uploads/students/stu_1772563030.png', 267, NULL, NULL, NULL, NULL, 10, '65 Civil Lines, Delhi', '9150402334', 'student_154', 'student154@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(185, 'ADM-2026-0165', 'Riya Chatterjee', 'Female', '2016-02-03', NULL, 'Vishal Chatterjee', 'vishalchatterjee98@example.com', NULL, '2026-03-24 08:38:40', '9310925553', 1, NULL, 'A-', '764280423463', '9490517350', 'Vishal Chatterjee', '9310925553', 'Divya Chatterjee', '9517250968', '565 Station Road, Mumbai', 'Vishal Chatterjee', 'Father', '9310925553', '565 Station Road, Mumbai', 'Buddhist', 'SC', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Class 4', 'uploads/students/1772898928_17_images10.jpg', 268, NULL, NULL, NULL, NULL, 10, '565 Station Road, Mumbai', '9490517350', 'student_155', 'student155@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(186, 'ADM-2026-0166', 'Aakanksha Sen', 'Female', '2016-10-18', NULL, 'Karan Sen', 'karansen91@example.com', NULL, '2026-03-24 08:38:40', '9577721999', 1, NULL, 'B-', '819310359449', '9389542830', 'Karan Sen', '9577721999', 'Sunita Sen', '9505068635', '838 Shastri Nagar, Delhi', 'Karan Sen', 'Father', '9577721999', '838 Shastri Nagar, Delhi', 'Islam', 'OBC-B', 'Gujarati', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-18', 'Approved', 'Class 4', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 269, NULL, NULL, NULL, NULL, 10, '838 Shastri Nagar, Delhi', '9389542830', 'student_156', 'student156@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(187, 'ADM-2026-0167', 'Pooja Joshi', 'Female', '2016-08-17', NULL, 'Rahul Joshi', 'rahuljoshi60@example.com', NULL, '2026-03-24 08:38:40', '9572706625', 1, NULL, 'O-', '206365161578', '9335906674', 'Rahul Joshi', '9572706625', 'Kavita Joshi', '9982602925', '285 Shastri Nagar, Hyderabad', 'Rahul Joshi', 'Father', '9572706625', '285 Shastri Nagar, Hyderabad', 'Hindu', 'General', 'English', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-23', 'Approved', 'Class 4', 'uploads/students/1772898928_17_images10.jpg', 270, NULL, NULL, NULL, NULL, 10, '285 Shastri Nagar, Hyderabad', '9335906674', 'student_157', 'student157@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(188, 'ADM-2026-0168', 'Fatima Patil', 'Female', '2016-02-15', NULL, 'Rajesh Patil', 'rajeshpatil60@example.com', NULL, '2026-03-24 08:38:40', '9943408258', 1, NULL, 'AB-', '545425107799', '9153233763', 'Rajesh Patil', '9943408258', 'Sita Patil', '9882539665', '502 Shastri Nagar, Delhi', 'Rajesh Patil', 'Father', '9943408258', '502 Shastri Nagar, Delhi', 'Christian', 'General', 'Kannada', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-15', 'Approved', 'Class 4', 'uploads/students/1772898928_18_images11.jpg', 271, NULL, NULL, NULL, NULL, 10, '502 Shastri Nagar, Delhi', '9153233763', 'student_158', 'student158@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(189, 'ADM-2026-0169', 'Kavya Sen', 'Female', '2016-10-28', NULL, 'Suresh Sen', 'sureshsen63@example.com', NULL, '2026-03-24 08:38:40', '9480358345', 1, NULL, 'A-', '707925718498', '9853301250', 'Suresh Sen', '9480358345', 'Simran Sen', '9252775368', '292 Shastri Nagar, Chennai', 'Suresh Sen', 'Father', '9480358345', '292 Shastri Nagar, Chennai', 'Islam', 'OBC-A', 'English', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-28', 'Approved', 'Class 4', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 272, NULL, NULL, NULL, NULL, 10, '292 Shastri Nagar, Chennai', '9853301250', 'student_159', 'student159@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(190, 'ADM-2026-0170', 'Shweta Patil', 'Female', '2016-09-03', NULL, 'Suresh Patil', 'sureshpatil21@example.com', NULL, '2026-03-24 08:38:40', '9219172761', 1, NULL, 'AB+', '111729767948', '9359876434', 'Suresh Patil', '9219172761', 'Zainab Patil', '9957888758', '933 MG Road, Hyderabad', 'Suresh Patil', 'Father', '9219172761', '933 MG Road, Hyderabad', 'Islam', 'SC', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 3', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-10', 'Approved', 'Class 4', 'uploads/students/1772898928_17_images10.jpg', 273, NULL, NULL, NULL, NULL, 10, '933 MG Road, Hyderabad', '9359876434', 'student_160', 'student160@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(191, 'ADM-2026-0171', 'Neeraj Kulkarni', 'Male', '2015-08-27', NULL, 'Vivaan Kulkarni', 'vivaankulkarni49@example.com', NULL, '2026-03-24 08:38:40', '9577101361', 1, NULL, 'B+', '661126549484', '9959905408', 'Vivaan Kulkarni', '9577101361', 'Geeta Kulkarni', '9676157202', '507 MG Road, Kolkata', 'Vivaan Kulkarni', 'Father', '9577101361', '507 MG Road, Kolkata', 'Christian', 'SC', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Class 5', 'uploads/students/stu_1772563518.png', 274, NULL, NULL, NULL, NULL, 11, '507 MG Road, Kolkata', '9959905408', 'student_161', 'student161@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(192, 'ADM-2026-0172', 'Deepak Das', 'Male', '2015-09-01', NULL, 'Neeraj Das', 'neerajdas31@example.com', NULL, '2026-03-24 08:38:40', '9409527747', 1, NULL, 'AB-', '613686231759', '9961299487', 'Neeraj Das', '9409527747', 'Geeta Das', '9916233308', '786 Station Road, Chennai', 'Neeraj Das', 'Father', '9409527747', '786 Station Road, Chennai', 'Islam', 'ST', 'Marathi', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-17', 'Approved', 'Class 5', 'uploads/students/1772898928_2_1644572849.jpg', 275, NULL, NULL, NULL, NULL, 11, '786 Station Road, Chennai', '9961299487', 'student_162', 'student162@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(193, 'ADM-2026-0173', 'Rohan Iyer', 'Male', '2015-10-07', NULL, 'Manish Iyer', 'manishiyer50@example.com', NULL, '2026-03-24 08:38:40', '9746934433', 1, NULL, 'AB-', '432422396785', '9882815163', 'Manish Iyer', '9746934433', 'Simran Iyer', '9513706378', '46 Station Road, Bangalore', 'Manish Iyer', 'Father', '9746934433', '46 Station Road, Bangalore', 'Islam', 'General', 'Tamil', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-17', 'Approved', 'Class 5', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 276, NULL, NULL, NULL, NULL, 11, '46 Station Road, Bangalore', '9882815163', 'student_163', 'student163@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(194, 'ADM-2026-0174', 'Aditya Kulkarni', 'Male', '2015-04-17', NULL, 'Anil Kulkarni', 'anilkulkarni44@example.com', NULL, '2026-03-24 08:38:40', '9468582092', 1, NULL, 'O+', '222987529811', '9358894623', 'Anil Kulkarni', '9468582092', 'Kavita Kulkarni', '9333930622', '558 Civil Lines, Hyderabad', 'Anil Kulkarni', 'Father', '9468582092', '558 Civil Lines, Hyderabad', 'Buddhist', 'ST', 'English', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Class 5', 'uploads/students/stu_1772565595.png', 277, NULL, NULL, NULL, NULL, 11, '558 Civil Lines, Hyderabad', '9358894623', 'student_164', 'student164@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka');
INSERT INTO `students` (`id`, `admission_no`, `student_name`, `gender`, `dob`, `class`, `parent_name`, `parent_email`, `photo`, `created_at`, `parent_phone`, `is_active`, `application_id`, `blood_group`, `aadhaar_number`, `mobile_number`, `father_name`, `father_mobile`, `mother_name`, `mother_mobile`, `parents_address`, `guardian_name`, `relation`, `guardian_mobile`, `guardian_address`, `religion`, `caste_category`, `mother_tongue`, `has_medical_condition`, `medical_condition_desc`, `has_disability`, `disability_desc`, `has_allergies`, `allergies_desc`, `previous_schooling_status`, `previous_class`, `previous_school_name`, `previous_board`, `year_of_passing`, `previous_school`, `address`, `guardian_details`, `admission_date`, `status`, `class_applied`, `student_photo`, `user_id`, `class_id`, `section_id`, `parent_id`, `admission_number`, `age`, `present_address`, `student_mobile`, `username`, `email`, `password`) VALUES
(195, 'ADM-2026-0175', 'Sanjay Mukherjee', 'Male', '2015-06-24', NULL, 'Manish Mukherjee', 'manishmukherjee14@example.com', NULL, '2026-03-24 08:38:40', '9843493669', 1, NULL, 'B+', '710267707705', '9897176806', 'Manish Mukherjee', '9843493669', 'Rekha Mukherjee', '9146306617', '80 Civil Lines, Kolkata', 'Manish Mukherjee', 'Father', '9843493669', '80 Civil Lines, Kolkata', 'Islam', 'SC', 'English', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-06', 'Approved', 'Class 5', 'uploads/students/1772898928_16_images1.jpg', 278, NULL, NULL, NULL, NULL, 11, '80 Civil Lines, Kolkata', '9897176806', 'student_165', 'student165@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(196, 'ADM-2026-0176', 'Arjun Chatterjee', 'Male', '2015-07-26', NULL, 'Akash Chatterjee', 'akashchatterjee63@example.com', NULL, '2026-03-24 08:38:40', '9903464492', 1, NULL, 'A+', '741355255819', '9802966586', 'Akash Chatterjee', '9903464492', 'Swati Chatterjee', '9427690891', '550 Gandhi Nagar, Pune', 'Akash Chatterjee', 'Father', '9903464492', '550 Gandhi Nagar, Pune', 'Christian', 'General', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-15', 'Approved', 'Class 5', 'uploads/students/1772898928_8_8c11dd4a7110a437722370c4663f80ec.jpg', 279, NULL, NULL, NULL, NULL, 11, '550 Gandhi Nagar, Pune', '9802966586', 'student_166', 'student166@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(197, 'ADM-2026-0177', 'Nitin Nair', 'Male', '2015-09-26', NULL, 'Rohan Nair', 'rohannair21@example.com', NULL, '2026-03-24 08:38:40', '9240336075', 1, NULL, 'AB-', '384080675941', '9341589324', 'Rohan Nair', '9240336075', 'Kiran Nair', '9726121163', '888 Civil Lines, Mumbai', 'Rohan Nair', 'Father', '9240336075', '888 Civil Lines, Mumbai', 'Islam', 'OBC-A', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-10', 'Approved', 'Class 5', 'uploads/students/1772898928_8_8c11dd4a7110a437722370c4663f80ec.jpg', 280, NULL, NULL, NULL, NULL, 11, '888 Civil Lines, Mumbai', '9341589324', 'student_167', 'student167@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(198, 'ADM-2026-0178', 'Vikas Kulkarni', 'Male', '2015-04-25', NULL, 'Aarav Kulkarni', 'aaravkulkarni67@example.com', NULL, '2026-03-24 08:38:40', '9166209046', 1, NULL, 'A-', '532696886294', '9941064335', 'Aarav Kulkarni', '9166209046', 'Fatima Kulkarni', '9430681941', '588 Gandhi Nagar, Hyderabad', 'Aarav Kulkarni', 'Father', '9166209046', '588 Gandhi Nagar, Hyderabad', 'Hindu', 'OBC-B', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-25', 'Approved', 'Class 5', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 281, NULL, NULL, NULL, NULL, 11, '588 Gandhi Nagar, Hyderabad', '9941064335', 'student_168', 'student168@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(199, 'ADM-2026-0179', 'Vikram Sen', 'Male', '2015-04-01', NULL, 'Ravi Sen', 'ravisen62@example.com', NULL, '2026-03-24 08:38:40', '9872456486', 1, NULL, 'A-', '522310869800', '9149893888', 'Ravi Sen', '9872456486', 'Aakanksha Sen', '9135740418', '208 MG Road, Delhi', 'Ravi Sen', 'Father', '9872456486', '208 MG Road, Delhi', 'Islam', 'SC', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-16', 'Approved', 'Class 5', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 282, NULL, NULL, NULL, NULL, 11, '208 MG Road, Delhi', '9149893888', 'student_169', 'student169@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(200, 'ADM-2026-0180', 'Ravi Mistry', 'Male', '2015-08-10', NULL, 'Amit Mistry', 'amitmistry80@example.com', NULL, '2026-03-24 08:38:40', '9622534205', 1, NULL, 'B-', '545017455332', '9827607815', 'Amit Mistry', '9622534205', 'Kavya Mistry', '9415181419', '403 Gandhi Nagar, Delhi', 'Amit Mistry', 'Father', '9622534205', '403 Gandhi Nagar, Delhi', 'Islam', 'OBC-B', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-20', 'Approved', 'Class 5', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 283, NULL, NULL, NULL, NULL, 11, '403 Gandhi Nagar, Delhi', '9827607815', 'student_170', 'student170@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(201, 'ADM-2026-0181', 'Anita Tiwari', 'Female', '2015-03-12', NULL, 'Kunal Tiwari', 'kunaltiwari76@example.com', NULL, '2026-03-24 08:38:40', '9445664572', 1, NULL, 'B+', '956592968926', '9471790792', 'Kunal Tiwari', '9445664572', 'Pooja Tiwari', '9130248851', '982 Shastri Nagar, Kolkata', 'Kunal Tiwari', 'Father', '9445664572', '982 Shastri Nagar, Kolkata', 'Islam', 'OBC-A', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-02', 'Approved', 'Class 5', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 284, NULL, NULL, NULL, NULL, 11, '982 Shastri Nagar, Kolkata', '9471790792', 'student_171', 'student171@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(202, 'ADM-2026-0182', 'Pooja Banerjee', 'Female', '2015-07-07', NULL, 'Sumit Banerjee', 'sumitbanerjee43@example.com', NULL, '2026-03-24 08:38:40', '9246960494', 1, NULL, 'A-', '534210972088', '9315360208', 'Sumit Banerjee', '9246960494', 'Priya Banerjee', '9120505092', '131 Station Road, Chennai', 'Sumit Banerjee', 'Father', '9246960494', '131 Station Road, Chennai', 'Christian', 'OBC-B', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-23', 'Approved', 'Class 5', 'uploads/students/1772898928_18_images11.jpg', 285, NULL, NULL, NULL, NULL, 11, '131 Station Road, Chennai', '9315360208', 'student_172', 'student172@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(203, 'ADM-2026-0183', 'Shweta Yadav', 'Female', '2015-08-20', NULL, 'Abhishek Yadav', 'abhishekyadav90@example.com', NULL, '2026-03-24 08:38:40', '9363232755', 1, NULL, 'A-', '990673332084', '9337162688', 'Abhishek Yadav', '9363232755', 'Geeta Yadav', '9304197874', '110 MG Road, Bangalore', 'Abhishek Yadav', 'Father', '9363232755', '110 MG Road, Bangalore', 'Hindu', 'OBC-B', 'Kannada', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-14', 'Approved', 'Class 5', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 286, NULL, NULL, NULL, NULL, 11, '110 MG Road, Bangalore', '9337162688', 'student_173', 'student173@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(204, 'ADM-2026-0184', 'Neha Gupta', 'Female', '2015-04-10', NULL, 'Manoj Gupta', 'manojgupta54@example.com', NULL, '2026-03-24 08:38:40', '9984182126', 1, NULL, 'O-', '922667151106', '9248614643', 'Manoj Gupta', '9984182126', 'Simran Gupta', '9200742867', '108 Civil Lines, Mumbai', 'Manoj Gupta', 'Father', '9984182126', '108 Civil Lines, Mumbai', 'Hindu', 'OBC-B', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-08', 'Approved', 'Class 5', 'uploads/students/1772898928_12_Passport-size-photo-Vivek-puri.jpg', 287, NULL, NULL, NULL, NULL, 11, '108 Civil Lines, Mumbai', '9248614643', 'student_174', 'student174@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(205, 'ADM-2026-0185', 'Neha Bhat', 'Female', '2015-08-13', NULL, 'Vikas Bhat', 'vikasbhat50@example.com', NULL, '2026-03-24 08:38:40', '9885494650', 1, NULL, 'B+', '785136469825', '9268312178', 'Vikas Bhat', '9885494650', 'Nisha Bhat', '9458247918', '259 Shastri Nagar, Kolkata', 'Vikas Bhat', 'Father', '9885494650', '259 Shastri Nagar, Kolkata', 'Islam', 'OBC-A', 'Odia', 0, NULL, 1, 'Mild hearing impairment', 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-25', 'Approved', 'Class 5', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 288, NULL, NULL, NULL, NULL, 11, '259 Shastri Nagar, Kolkata', '9268312178', 'student_175', 'student175@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(206, 'ADM-2026-0186', 'Geeta Sen', 'Female', '2015-06-24', NULL, 'Vikrant Sen', 'vikrantsen59@example.com', NULL, '2026-03-24 08:38:40', '9630047517', 1, NULL, 'A+', '667823012910', '9444978303', 'Vikrant Sen', '9630047517', 'Kavya Sen', '9412808182', '937 MG Road, Hyderabad', 'Vikrant Sen', 'Father', '9630047517', '937 MG Road, Hyderabad', 'Buddhist', 'OBC-B', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-20', 'Approved', 'Class 5', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 289, NULL, NULL, NULL, NULL, 11, '937 MG Road, Hyderabad', '9444978303', 'student_176', 'student176@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(207, 'ADM-2026-0187', 'Pooja Mistry', 'Female', '2015-06-22', NULL, 'Deepak Mistry', 'deepakmistry73@example.com', NULL, '2026-03-24 08:38:40', '9305545172', 1, NULL, 'O-', '151669379139', '9566283882', 'Deepak Mistry', '9305545172', 'Anita Mistry', '9477116680', '282 Shastri Nagar, Delhi', 'Deepak Mistry', 'Father', '9305545172', '282 Shastri Nagar, Delhi', 'Christian', 'OBC-A', 'Gujarati', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-11', 'Approved', 'Class 5', 'uploads/students/1772898928_19_images12.jpg', 290, NULL, NULL, NULL, NULL, 11, '282 Shastri Nagar, Delhi', '9566283882', 'student_177', 'student177@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(208, 'ADM-2026-0188', 'Nisha Chauhan', 'Female', '2015-10-01', NULL, 'Vivaan Chauhan', 'vivaanchauhan42@example.com', NULL, '2026-03-24 08:38:40', '9768502324', 1, NULL, 'O-', '545264618516', '9499414919', 'Vivaan Chauhan', '9768502324', 'Diya Chauhan', '9195045043', '983 MG Road, Pune', 'Vivaan Chauhan', 'Father', '9768502324', '983 MG Road, Pune', 'Christian', 'OBC-A', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-27', 'Approved', 'Class 5', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 291, NULL, NULL, NULL, NULL, 11, '983 MG Road, Pune', '9499414919', 'student_178', 'student178@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(209, 'ADM-2026-0189', 'Shweta Menon', 'Female', '2015-07-21', NULL, 'Suresh Menon', 'sureshmenon39@example.com', NULL, '2026-03-24 08:38:40', '9918849658', 1, NULL, 'A+', '382016494093', '9731758494', 'Suresh Menon', '9918849658', 'Rekha Menon', '9594478972', '473 MG Road, Delhi', 'Suresh Menon', 'Father', '9918849658', '473 MG Road, Delhi', 'Christian', 'General', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-08', 'Approved', 'Class 5', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 292, NULL, NULL, NULL, NULL, 11, '473 MG Road, Delhi', '9731758494', 'student_179', 'student179@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(210, 'ADM-2026-0190', 'Nidhi Kumar', 'Female', '2015-11-26', NULL, 'Rahul Kumar', 'rahulkumar79@example.com', NULL, '2026-03-24 08:38:40', '9818635838', 1, NULL, 'AB+', '908325194924', '9459745486', 'Rahul Kumar', '9818635838', 'Aakanksha Kumar', '9400459199', '267 Station Road, Bangalore', 'Rahul Kumar', 'Father', '9818635838', '267 Station Road, Bangalore', 'Christian', 'OBC-B', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 4', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-21', 'Approved', 'Class 5', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 293, NULL, NULL, NULL, NULL, 11, '267 Station Road, Bangalore', '9459745486', 'student_180', 'student180@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(211, 'ADM-2026-0191', 'Amit Das', 'Male', '2014-05-16', NULL, 'Aditya Das', 'adityadas34@example.com', NULL, '2026-03-24 08:38:40', '9981440112', 1, NULL, 'A-', '488343995774', '9868529715', 'Aditya Das', '9981440112', 'Ayesha Das', '9224874697', '866 Station Road, Hyderabad', 'Aditya Das', 'Father', '9981440112', '866 Station Road, Hyderabad', 'Islam', 'SC', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-27', 'Approved', 'Class 6', 'uploads/students/1772898928_20_images13.jpg', 294, NULL, NULL, NULL, NULL, 12, '866 Station Road, Hyderabad', '9868529715', 'student_181', 'student181@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(212, 'ADM-2026-0192', 'Anil Chowdhury', 'Male', '2014-11-12', NULL, 'Anil Chowdhury', 'anilchowdhury53@example.com', NULL, '2026-03-24 08:38:40', '9686613363', 1, NULL, 'B-', '979619589339', '9720418037', 'Anil Chowdhury', '9686613363', 'Aakanksha Chowdhury', '9456983595', '549 Gandhi Nagar, Mumbai', 'Anil Chowdhury', 'Father', '9686613363', '549 Gandhi Nagar, Mumbai', 'Hindu', 'OBC-B', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-26', 'Approved', 'Class 6', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 295, NULL, NULL, NULL, NULL, 12, '549 Gandhi Nagar, Mumbai', '9720418037', 'student_182', 'student182@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(213, 'ADM-2026-0193', 'Rajesh Kulkarni', 'Male', '2014-03-05', NULL, 'Sumit Kulkarni', 'sumitkulkarni64@example.com', NULL, '2026-03-24 08:38:40', '9205887058', 1, NULL, 'A+', '911191264953', '9628766622', 'Sumit Kulkarni', '9205887058', 'Swati Kulkarni', '9860378595', '510 Station Road, Mumbai', 'Sumit Kulkarni', 'Father', '9205887058', '510 Station Road, Mumbai', 'Islam', 'ST', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-16', 'Approved', 'Class 6', 'uploads/students/1772898928_16_images1.jpg', 296, NULL, NULL, NULL, NULL, 12, '510 Station Road, Mumbai', '9628766622', 'student_183', 'student183@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(214, 'ADM-2026-0194', 'Akash Verma', 'Male', '2014-11-08', NULL, 'Abhishek Verma', 'abhishekverma96@example.com', NULL, '2026-03-24 08:38:40', '9190035606', 1, NULL, 'O-', '520531826693', '9519729817', 'Abhishek Verma', '9190035606', 'Preeti Verma', '9750702552', '826 Station Road, Mumbai', 'Abhishek Verma', 'Father', '9190035606', '826 Station Road, Mumbai', 'Christian', 'OBC-B', 'English', 1, 'Asthma', 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-11', 'Approved', 'Class 6', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 297, NULL, NULL, NULL, NULL, 12, '826 Station Road, Mumbai', '9519729817', 'student_184', 'student184@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(215, 'ADM-2026-0195', 'Aditya Pandey', 'Male', '2014-08-18', NULL, 'Rohan Pandey', 'rohanpandey25@example.com', NULL, '2026-03-24 08:38:40', '9636199153', 1, NULL, 'B-', '373742896081', '9753644538', 'Rohan Pandey', '9636199153', 'Sonia Pandey', '9600244694', '366 MG Road, Mumbai', 'Rohan Pandey', 'Father', '9636199153', '366 MG Road, Mumbai', 'Islam', 'ST', 'Urdu', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-21', 'Approved', 'Class 6', 'uploads/students/stu_1772565595.png', 298, NULL, NULL, NULL, NULL, 12, '366 MG Road, Mumbai', '9753644538', 'student_185', 'student185@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(216, 'ADM-2026-0196', 'Suresh Kulkarni', 'Male', '2014-01-19', NULL, 'Vivaan Kulkarni', 'vivaankulkarni34@example.com', NULL, '2026-03-24 08:38:40', '9929259713', 1, NULL, 'B-', '983358093061', '9463245745', 'Vivaan Kulkarni', '9929259713', 'Shruti Kulkarni', '9197007624', '406 Shastri Nagar, Kolkata', 'Vivaan Kulkarni', 'Father', '9929259713', '406 Shastri Nagar, Kolkata', 'Buddhist', 'OBC-A', 'Urdu', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-01', 'Approved', 'Class 6', 'uploads/students/1772898928_19_images12.jpg', 299, NULL, NULL, NULL, NULL, 12, '406 Shastri Nagar, Kolkata', '9463245745', 'student_186', 'student186@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(217, 'ADM-2026-0197', 'Sumit Kumar', 'Male', '2014-10-14', NULL, 'Vijay Kumar', 'vijaykumar29@example.com', NULL, '2026-03-24 08:38:40', '9860400308', 1, NULL, 'A+', '704957574755', '9157379334', 'Vijay Kumar', '9860400308', 'Sneha Kumar', '9995974341', '457 Station Road, Delhi', 'Vijay Kumar', 'Father', '9860400308', '457 Station Road, Delhi', 'Buddhist', 'OBC-A', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-11', 'Approved', 'Class 6', 'uploads/students/stu_1772565595.png', 300, NULL, NULL, NULL, NULL, 12, '457 Station Road, Delhi', '9157379334', 'student_187', 'student187@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(218, 'ADM-2026-0198', 'Aarav Patel', 'Male', '2014-09-21', NULL, 'Vikas Patel', 'vikaspatel68@example.com', NULL, '2026-03-24 08:38:40', '9125453563', 1, NULL, 'A-', '269496482815', '9874521694', 'Vikas Patel', '9125453563', 'Nisha Patel', '9726101821', '845 Station Road, Kolkata', 'Vikas Patel', 'Father', '9125453563', '845 Station Road, Kolkata', 'Islam', 'OBC-B', 'Telugu', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-23', 'Approved', 'Class 6', 'uploads/students/1772898928_8_8c11dd4a7110a437722370c4663f80ec.jpg', 301, NULL, NULL, NULL, NULL, 12, '845 Station Road, Kolkata', '9874521694', 'student_188', 'student188@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(219, 'ADM-2026-0199', 'Sunil Yadav', 'Male', '2014-10-15', NULL, 'Vikram Yadav', 'vikramyadav30@example.com', NULL, '2026-03-24 08:38:40', '9670759385', 1, NULL, 'B+', '220116527153', '9261391981', 'Vikram Yadav', '9670759385', 'Aakanksha Yadav', '9862416477', '24 Civil Lines, Hyderabad', 'Vikram Yadav', 'Father', '9670759385', '24 Civil Lines, Hyderabad', 'Islam', 'OBC-A', 'Gujarati', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-06', 'Approved', 'Class 6', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 302, NULL, NULL, NULL, NULL, 12, '24 Civil Lines, Hyderabad', '9261391981', 'student_189', 'student189@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(220, 'ADM-2026-0200', 'Nitin Iyer', 'Male', '2014-03-28', NULL, 'Anil Iyer', 'aniliyer59@example.com', NULL, '2026-03-24 08:38:40', '9827073876', 1, NULL, 'O+', '631312258026', '9825307947', 'Anil Iyer', '9827073876', 'Meena Iyer', '9991772941', '811 MG Road, Chennai', 'Anil Iyer', 'Father', '9827073876', '811 MG Road, Chennai', 'Christian', 'OBC-A', 'Tamil', 0, NULL, 1, 'Mild hearing impairment', 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-25', 'Approved', 'Class 6', 'uploads/students/1772898928_15_gopinathK-1.jpg', 303, NULL, NULL, NULL, NULL, 12, '811 MG Road, Chennai', '9825307947', 'student_190', 'student190@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(221, 'ADM-2026-0201', 'Sonia Nair', 'Female', '2014-08-09', NULL, 'Suresh Nair', 'sureshnair91@example.com', NULL, '2026-03-24 08:38:40', '9711379613', 1, NULL, 'A-', '585347675979', '9454277074', 'Suresh Nair', '9711379613', 'Kiran Nair', '9308523395', '741 Civil Lines, Kolkata', 'Suresh Nair', 'Father', '9711379613', '741 Civil Lines, Kolkata', 'Buddhist', 'SC', 'English', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-22', 'Approved', 'Class 6', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 304, NULL, NULL, NULL, NULL, 12, '741 Civil Lines, Kolkata', '9454277074', 'student_191', 'student191@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(222, 'ADM-2026-0202', 'Sneha Singh', 'Female', '2014-05-19', NULL, 'Ramesh Singh', 'rameshsingh85@example.com', NULL, '2026-03-24 08:38:40', '9569851681', 1, NULL, 'AB-', '596453041431', '9367355307', 'Ramesh Singh', '9569851681', 'Swati Singh', '9732808164', '522 Gandhi Nagar, Bangalore', 'Ramesh Singh', 'Father', '9569851681', '522 Gandhi Nagar, Bangalore', 'Christian', 'OBC-B', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-10', 'Approved', 'Class 6', 'uploads/students/1772898928_2_1644572849.jpg', 305, NULL, NULL, NULL, NULL, 12, '522 Gandhi Nagar, Bangalore', '9367355307', 'student_192', 'student192@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(223, 'ADM-2026-0203', 'Rekha Joshi', 'Female', '2014-12-14', NULL, 'Akash Joshi', 'akashjoshi92@example.com', NULL, '2026-03-24 08:38:40', '9341769229', 1, NULL, 'AB+', '439492035476', '9218714981', 'Akash Joshi', '9341769229', 'Pooja Joshi', '9976825886', '416 Civil Lines, Hyderabad', 'Akash Joshi', 'Father', '9341769229', '416 Civil Lines, Hyderabad', 'Hindu', 'SC', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-23', 'Approved', 'Class 6', 'uploads/students/1772898928_20_images13.jpg', 306, NULL, NULL, NULL, NULL, 12, '416 Civil Lines, Hyderabad', '9218714981', 'student_193', 'student193@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(224, 'ADM-2026-0204', 'Swati Reddy', 'Female', '2014-06-14', NULL, 'Sunil Reddy', 'sunilreddy20@example.com', NULL, '2026-03-24 08:38:40', '9140839008', 1, NULL, 'O+', '190836317789', '9274250151', 'Sunil Reddy', '9140839008', 'Divya Reddy', '9819241665', '727 Shastri Nagar, Bangalore', 'Sunil Reddy', 'Father', '9140839008', '727 Shastri Nagar, Bangalore', 'Hindu', 'OBC-A', 'Tamil', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-09', 'Approved', 'Class 6', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 307, NULL, NULL, NULL, NULL, 12, '727 Shastri Nagar, Bangalore', '9274250151', 'student_194', 'student194@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(225, 'ADM-2026-0205', 'Ayesha Verma', 'Female', '2014-02-13', NULL, 'Karan Verma', 'karanverma20@example.com', NULL, '2026-03-24 08:38:40', '9532511270', 1, NULL, 'O-', '106462818622', '9471585680', 'Karan Verma', '9532511270', 'Neha Verma', '9469334146', '932 Shastri Nagar, Pune', 'Karan Verma', 'Father', '9532511270', '932 Shastri Nagar, Pune', 'Christian', 'SC', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-24', 'Approved', 'Class 6', 'uploads/students/stu_1772563518.png', 308, NULL, NULL, NULL, NULL, 12, '932 Shastri Nagar, Pune', '9471585680', 'student_195', 'student195@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(226, 'ADM-2026-0206', 'Kavita Pillai', 'Female', '2014-09-13', NULL, 'Nitin Pillai', 'nitinpillai61@example.com', NULL, '2026-03-24 08:38:40', '9779688660', 1, NULL, 'AB+', '228220966720', '9701302646', 'Nitin Pillai', '9779688660', 'Preeti Pillai', '9314430715', '237 Civil Lines, Pune', 'Nitin Pillai', 'Father', '9779688660', '237 Civil Lines, Pune', 'Buddhist', 'General', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-15', 'Approved', 'Class 6', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 309, NULL, NULL, NULL, NULL, 12, '237 Civil Lines, Pune', '9701302646', 'student_196', 'student196@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(227, 'ADM-2026-0207', 'Nisha Gupta', 'Female', '2014-10-27', NULL, 'Sanjay Gupta', 'sanjaygupta76@example.com', NULL, '2026-03-24 08:38:40', '9849674889', 1, NULL, 'A+', '136294554230', '9362329651', 'Sanjay Gupta', '9849674889', 'Kavita Gupta', '9475761813', '408 Station Road, Chennai', 'Sanjay Gupta', 'Father', '9849674889', '408 Station Road, Chennai', 'Islam', 'OBC-A', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-27', 'Approved', 'Class 6', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 310, NULL, NULL, NULL, NULL, 12, '408 Station Road, Chennai', '9362329651', 'student_197', 'student197@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(228, 'ADM-2026-0208', 'Meena Kulkarni', 'Female', '2014-01-10', NULL, 'Vikrant Kulkarni', 'vikrantkulkarni72@example.com', NULL, '2026-03-24 08:38:40', '9146823107', 1, NULL, 'A-', '665716609538', '9559836716', 'Vikrant Kulkarni', '9146823107', 'Riya Kulkarni', '9434215452', '438 Civil Lines, Pune', 'Vikrant Kulkarni', 'Father', '9146823107', '438 Civil Lines, Pune', 'Hindu', 'ST', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-10', 'Approved', 'Class 6', 'uploads/students/1772898928_8_8c11dd4a7110a437722370c4663f80ec.jpg', 311, NULL, NULL, NULL, NULL, 12, '438 Civil Lines, Pune', '9559836716', 'student_198', 'student198@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(229, 'ADM-2026-0209', 'Shruti Yadav', 'Female', '2014-01-04', NULL, 'Anil Yadav', 'anilyadav86@example.com', NULL, '2026-03-24 08:38:40', '9165408669', 1, NULL, 'AB+', '483791553569', '9613117485', 'Anil Yadav', '9165408669', 'Sita Yadav', '9712485116', '637 Civil Lines, Kolkata', 'Anil Yadav', 'Father', '9165408669', '637 Civil Lines, Kolkata', 'Buddhist', 'OBC-A', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-14', 'Approved', 'Class 6', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 312, NULL, NULL, NULL, NULL, 12, '637 Civil Lines, Kolkata', '9613117485', 'student_199', 'student199@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(230, 'ADM-2026-0210', 'Kavya Banerjee', 'Female', '2014-10-12', NULL, 'Ravi Banerjee', 'ravibanerjee64@example.com', NULL, '2026-03-24 08:38:40', '9331101071', 1, NULL, 'AB+', '212457714695', '9294409248', 'Ravi Banerjee', '9331101071', 'Nidhi Banerjee', '9783977904', '218 MG Road, Kolkata', 'Ravi Banerjee', 'Father', '9331101071', '218 MG Road, Kolkata', 'Islam', 'OBC-A', 'Hindi', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 5', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-09', 'Approved', 'Class 6', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 313, NULL, NULL, NULL, NULL, 12, '218 MG Road, Kolkata', '9294409248', 'student_200', 'student200@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(231, 'ADM-2026-0211', 'Vikrant Chowdhury', 'Male', '2013-09-12', NULL, 'Kunal Chowdhury', 'kunalchowdhury86@example.com', NULL, '2026-03-24 08:38:40', '9460280903', 1, NULL, 'AB+', '977671039239', '9435304172', 'Kunal Chowdhury', '9460280903', 'Sunita Chowdhury', '9811853670', '173 Civil Lines, Kolkata', 'Kunal Chowdhury', 'Father', '9460280903', '173 Civil Lines, Kolkata', 'Buddhist', 'OBC-B', 'Tamil', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-26', 'Approved', 'Class 7', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 314, NULL, NULL, NULL, NULL, 13, '173 Civil Lines, Kolkata', '9435304172', 'student_201', 'student201@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(232, 'ADM-2026-0212', 'Sunil Mishra', 'Male', '2013-08-22', NULL, 'Manish Mishra', 'manishmishra95@example.com', NULL, '2026-03-24 08:38:40', '9544223478', 1, NULL, 'AB-', '115728741881', '9766959174', 'Manish Mishra', '9544223478', 'Sita Mishra', '9853892751', '982 Civil Lines, Delhi', 'Manish Mishra', 'Father', '9544223478', '982 Civil Lines, Delhi', 'Christian', 'OBC-B', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-23', 'Approved', 'Class 7', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 315, NULL, NULL, NULL, NULL, 13, '982 Civil Lines, Delhi', '9766959174', 'student_202', 'student202@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(233, 'ADM-2026-0213', 'Nitin Chowdhury', 'Male', '2013-01-01', NULL, 'Akash Chowdhury', 'akashchowdhury74@example.com', NULL, '2026-03-24 08:38:40', '9319990686', 1, NULL, 'A+', '934489398000', '9415992328', 'Akash Chowdhury', '9319990686', 'Meena Chowdhury', '9591215174', '38 Civil Lines, Bangalore', 'Akash Chowdhury', 'Father', '9319990686', '38 Civil Lines, Bangalore', 'Hindu', 'ST', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-24', 'Approved', 'Class 7', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 316, NULL, NULL, NULL, NULL, 13, '38 Civil Lines, Bangalore', '9415992328', 'student_203', 'student203@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(234, 'ADM-2026-0214', 'Ravi Patil', 'Male', '2013-12-17', NULL, 'Karan Patil', 'karanpatil65@example.com', NULL, '2026-03-24 08:38:40', '9444071934', 1, NULL, 'AB+', '776285653875', '9236552261', 'Karan Patil', '9444071934', 'Aakanksha Patil', '9323086296', '583 Station Road, Kolkata', 'Karan Patil', 'Father', '9444071934', '583 Station Road, Kolkata', 'Hindu', 'OBC-A', 'Gujarati', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-06', 'Approved', 'Class 7', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 317, NULL, NULL, NULL, NULL, 13, '583 Station Road, Kolkata', '9236552261', 'student_204', 'student204@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(235, 'ADM-2026-0215', 'Amit Mistry', 'Male', '2013-02-21', NULL, 'Vikas Mistry', 'vikasmistry85@example.com', NULL, '2026-03-24 08:38:40', '9414186176', 1, NULL, 'A+', '521928989424', '9227247787', 'Vikas Mistry', '9414186176', 'Sunita Mistry', '9103508041', '194 Civil Lines, Kolkata', 'Vikas Mistry', 'Father', '9414186176', '194 Civil Lines, Kolkata', 'Hindu', 'General', 'English', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-13', 'Approved', 'Class 7', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 318, NULL, NULL, NULL, NULL, 13, '194 Civil Lines, Kolkata', '9227247787', 'student_205', 'student205@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(236, 'ADM-2026-0216', 'Anil Kumar', 'Male', '2013-03-08', NULL, 'Aditya Kumar', 'adityakumar53@example.com', NULL, '2026-03-24 08:38:40', '9393057139', 1, NULL, 'O-', '469128129524', '9261115882', 'Aditya Kumar', '9393057139', 'Anita Kumar', '9117907236', '233 Gandhi Nagar, Kolkata', 'Aditya Kumar', 'Father', '9393057139', '233 Gandhi Nagar, Kolkata', 'Islam', 'ST', 'Hindi', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-02', 'Approved', 'Class 7', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 319, NULL, NULL, NULL, NULL, 13, '233 Gandhi Nagar, Kolkata', '9261115882', 'student_206', 'student206@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(237, 'ADM-2026-0217', 'Vikrant Singh', 'Male', '2013-09-18', NULL, 'Aditya Singh', 'adityasingh82@example.com', NULL, '2026-03-24 08:38:40', '9933263029', 1, NULL, 'O+', '207524799654', '9819268241', 'Aditya Singh', '9933263029', 'Sonia Singh', '9469290764', '749 MG Road, Bangalore', 'Aditya Singh', 'Father', '9933263029', '749 MG Road, Bangalore', 'Islam', 'ST', 'Gujarati', 0, NULL, 1, 'Mild hearing impairment', 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-15', 'Approved', 'Class 7', 'uploads/students/1772898928_2_1644572849.jpg', 320, NULL, NULL, NULL, NULL, 13, '749 MG Road, Bangalore', '9819268241', 'student_207', 'student207@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(238, 'ADM-2026-0218', 'Neeraj Patel', 'Male', '2013-03-12', NULL, 'Sunil Patel', 'sunilpatel89@example.com', NULL, '2026-03-24 08:38:40', '9594149011', 1, NULL, 'AB-', '269323722918', '9326245882', 'Sunil Patel', '9594149011', 'Anita Patel', '9112084427', '555 Shastri Nagar, Pune', 'Sunil Patel', 'Father', '9594149011', '555 Shastri Nagar, Pune', 'Christian', 'OBC-A', 'English', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-25', 'Approved', 'Class 7', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 321, NULL, NULL, NULL, NULL, 13, '555 Shastri Nagar, Pune', '9326245882', 'student_208', 'student208@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(239, 'ADM-2026-0219', 'Akash Pandey', 'Male', '2013-08-02', NULL, 'Sanjay Pandey', 'sanjaypandey45@example.com', NULL, '2026-03-24 08:38:40', '9939159648', 1, NULL, 'A-', '289086873709', '9123596755', 'Sanjay Pandey', '9939159648', 'Sonia Pandey', '9556908644', '24 Civil Lines, Kolkata', 'Sanjay Pandey', 'Father', '9939159648', '24 Civil Lines, Kolkata', 'Buddhist', 'General', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-09', 'Approved', 'Class 7', 'uploads/students/stu_1772563030.png', 322, NULL, NULL, NULL, NULL, 13, '24 Civil Lines, Kolkata', '9123596755', 'student_209', 'student209@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(240, 'ADM-2026-0220', 'Abhishek Chauhan', 'Male', '2013-01-26', NULL, 'Karan Chauhan', 'karanchauhan76@example.com', NULL, '2026-03-24 08:38:40', '9169017239', 1, NULL, 'O+', '965649432952', '9578264109', 'Karan Chauhan', '9169017239', 'Sita Chauhan', '9983761104', '386 Gandhi Nagar, Chennai', 'Karan Chauhan', 'Father', '9169017239', '386 Gandhi Nagar, Chennai', 'Islam', 'SC', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-09', 'Approved', 'Class 7', 'uploads/students/1772898928_18_images11.jpg', 323, NULL, NULL, NULL, NULL, 13, '386 Gandhi Nagar, Chennai', '9578264109', 'student_210', 'student210@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(241, 'ADM-2026-0221', 'Divya Pillai', 'Female', '2013-03-18', NULL, 'Manish Pillai', 'manishpillai34@example.com', NULL, '2026-03-24 08:38:40', '9483902589', 1, NULL, 'B+', '168323605107', '9671062903', 'Manish Pillai', '9483902589', 'Neha Pillai', '9988035009', '567 Station Road, Kolkata', 'Manish Pillai', 'Father', '9483902589', '567 Station Road, Kolkata', 'Hindu', 'OBC-A', 'Hindi', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-14', 'Approved', 'Class 7', 'uploads/students/1772898928_8_8c11dd4a7110a437722370c4663f80ec.jpg', 324, NULL, NULL, NULL, NULL, 13, '567 Station Road, Kolkata', '9671062903', 'student_211', 'student211@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(242, 'ADM-2026-0222', 'Sunita Chatterjee', 'Female', '2013-10-16', NULL, 'Manish Chatterjee', 'manishchatterjee42@example.com', NULL, '2026-03-24 08:38:40', '9610853610', 1, NULL, 'B-', '790879947741', '9593987538', 'Manish Chatterjee', '9610853610', 'Riya Chatterjee', '9848033809', '119 Station Road, Delhi', 'Manish Chatterjee', 'Father', '9610853610', '119 Station Road, Delhi', 'Islam', 'OBC-B', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-05', 'Approved', 'Class 7', 'uploads/students/1772898928_2_1644572849.jpg', 325, NULL, NULL, NULL, NULL, 13, '119 Station Road, Delhi', '9593987538', 'student_212', 'student212@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(243, 'ADM-2026-0223', 'Kavita Sen', 'Female', '2013-02-27', NULL, 'Kunal Sen', 'kunalsen84@example.com', NULL, '2026-03-24 08:38:40', '9166207547', 1, NULL, 'O-', '498923472042', '9813842224', 'Kunal Sen', '9166207547', 'Kavya Sen', '9242997487', '76 MG Road, Kolkata', 'Kunal Sen', 'Father', '9166207547', '76 MG Road, Kolkata', 'Hindu', 'General', 'Odia', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-09', 'Approved', 'Class 7', 'uploads/students/1772898928_18_images11.jpg', 326, NULL, NULL, NULL, NULL, 13, '76 MG Road, Kolkata', '9813842224', 'student_213', 'student213@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(244, 'ADM-2026-0224', 'Aakanksha Pandey', 'Female', '2013-05-19', NULL, 'Manish Pandey', 'manishpandey65@example.com', NULL, '2026-03-24 08:38:40', '9547531945', 1, NULL, 'A+', '867159006349', '9287933360', 'Manish Pandey', '9547531945', 'Rekha Pandey', '9622440687', '991 Civil Lines, Pune', 'Manish Pandey', 'Father', '9547531945', '991 Civil Lines, Pune', 'Buddhist', 'SC', 'Gujarati', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-28', 'Approved', 'Class 7', 'uploads/students/1772898928_17_images10.jpg', 327, NULL, NULL, NULL, NULL, 13, '991 Civil Lines, Pune', '9287933360', 'student_214', 'student214@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(245, 'ADM-2026-0225', 'Zainab Deshmukh', 'Female', '2013-02-27', NULL, 'Vishal Deshmukh', 'vishaldeshmukh37@example.com', NULL, '2026-03-24 08:38:40', '9101267983', 1, NULL, 'O+', '739526198636', '9389951578', 'Vishal Deshmukh', '9101267983', 'Preeti Deshmukh', '9482451413', '366 Station Road, Bangalore', 'Vishal Deshmukh', 'Father', '9101267983', '366 Station Road, Bangalore', 'Buddhist', 'OBC-A', 'Telugu', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-22', 'Approved', 'Class 7', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 328, NULL, NULL, NULL, NULL, 13, '366 Station Road, Bangalore', '9389951578', 'student_215', 'student215@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(246, 'ADM-2026-0226', 'Sneha Reddy', 'Female', '2013-12-25', NULL, 'Suresh Reddy', 'sureshreddy41@example.com', NULL, '2026-03-24 08:38:40', '9205052452', 1, NULL, 'AB+', '194234279114', '9840798152', 'Suresh Reddy', '9205052452', 'Kavya Reddy', '9343971306', '304 Civil Lines, Delhi', 'Suresh Reddy', 'Father', '9205052452', '304 Civil Lines, Delhi', 'Islam', 'ST', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-25', 'Approved', 'Class 7', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 329, NULL, NULL, NULL, NULL, 13, '304 Civil Lines, Delhi', '9840798152', 'student_216', 'student216@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(247, 'ADM-2026-0227', 'Ishita Patil', 'Female', '2013-05-15', NULL, 'Ramesh Patil', 'rameshpatil68@example.com', NULL, '2026-03-24 08:38:40', '9261214248', 1, NULL, 'AB-', '246362059388', '9379908252', 'Ramesh Patil', '9261214248', 'Anita Patil', '9947279414', '152 Civil Lines, Hyderabad', 'Ramesh Patil', 'Father', '9261214248', '152 Civil Lines, Hyderabad', 'Hindu', 'OBC-A', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-08', 'Approved', 'Class 7', 'uploads/students/stu_1772563518.png', 330, NULL, NULL, NULL, NULL, 13, '152 Civil Lines, Hyderabad', '9379908252', 'student_217', 'student217@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(248, 'ADM-2026-0228', 'Shweta Verma', 'Female', '2013-12-16', NULL, 'Vikrant Verma', 'vikrantverma85@example.com', NULL, '2026-03-24 08:38:40', '9353206714', 1, NULL, 'A+', '225134803795', '9434020859', 'Vikrant Verma', '9353206714', 'Aakanksha Verma', '9349177486', '575 Station Road, Delhi', 'Vikrant Verma', 'Father', '9353206714', '575 Station Road, Delhi', 'Christian', 'SC', 'Urdu', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-24', 'Approved', 'Class 7', 'uploads/students/1772898928_16_images1.jpg', 331, NULL, NULL, NULL, NULL, 13, '575 Station Road, Delhi', '9434020859', 'student_218', 'student218@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(249, 'ADM-2026-0229', 'Ayesha Mistry', 'Female', '2013-05-05', NULL, 'Deepak Mistry', 'deepakmistry66@example.com', NULL, '2026-03-24 08:38:40', '9828223254', 1, NULL, 'B-', '679662844532', '9649163811', 'Deepak Mistry', '9828223254', 'Fatima Mistry', '9514902836', '815 Shastri Nagar, Hyderabad', 'Deepak Mistry', 'Father', '9828223254', '815 Shastri Nagar, Hyderabad', 'Hindu', 'SC', 'English', 1, 'Asthma', 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-09', 'Approved', 'Class 7', 'uploads/students/stu_1772563030.png', 332, NULL, NULL, NULL, NULL, 13, '815 Shastri Nagar, Hyderabad', '9649163811', 'student_219', 'student219@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(250, 'ADM-2026-0230', 'Sonia Mukherjee', 'Female', '2013-09-20', NULL, 'Vivaan Mukherjee', 'vivaanmukherjee67@example.com', NULL, '2026-03-24 08:38:40', '9548047538', 1, NULL, 'B+', '641987961450', '9163778377', 'Vivaan Mukherjee', '9548047538', 'Anita Mukherjee', '9696380458', '588 Gandhi Nagar, Mumbai', 'Vivaan Mukherjee', 'Father', '9548047538', '588 Gandhi Nagar, Mumbai', 'Hindu', 'SC', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 6', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-23', 'Approved', 'Class 7', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 333, NULL, NULL, NULL, NULL, 13, '588 Gandhi Nagar, Mumbai', '9163778377', 'student_220', 'student220@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(251, 'ADM-2026-0231', 'Ravi Yadav', 'Male', '2012-06-21', NULL, 'Vikrant Yadav', 'vikrantyadav11@example.com', NULL, '2026-03-24 08:38:40', '9227237839', 1, NULL, 'O+', '799816916845', '9242059139', 'Vikrant Yadav', '9227237839', 'Ishita Yadav', '9366053168', '439 Shastri Nagar, Bangalore', 'Vikrant Yadav', 'Father', '9227237839', '439 Shastri Nagar, Bangalore', 'Islam', 'General', 'English', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-10', 'Approved', 'Class 8', 'uploads/students/1772898928_20_images13.jpg', 334, NULL, NULL, NULL, NULL, 14, '439 Shastri Nagar, Bangalore', '9242059139', 'student_221', 'student221@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(252, 'ADM-2026-0232', 'Manoj Reddy', 'Male', '2012-02-28', NULL, 'Rahul Reddy', 'rahulreddy37@example.com', NULL, '2026-03-24 08:38:40', '9171236117', 1, NULL, 'B-', '329715208937', '9773141210', 'Rahul Reddy', '9171236117', 'Sneha Reddy', '9226780282', '564 Gandhi Nagar, Pune', 'Rahul Reddy', 'Father', '9171236117', '564 Gandhi Nagar, Pune', 'Islam', 'OBC-A', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-20', 'Approved', 'Class 8', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 335, NULL, NULL, NULL, NULL, 14, '564 Gandhi Nagar, Pune', '9773141210', 'student_222', 'student222@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(253, 'ADM-2026-0233', 'Rajesh Nair', 'Male', '2012-01-25', NULL, 'Rahul Nair', 'rahulnair98@example.com', NULL, '2026-03-24 08:38:40', '9776141303', 1, NULL, 'O+', '508280809580', '9990752807', 'Rahul Nair', '9776141303', 'Diya Nair', '9332747153', '907 Civil Lines, Kolkata', 'Rahul Nair', 'Father', '9776141303', '907 Civil Lines, Kolkata', 'Buddhist', 'OBC-B', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-15', 'Approved', 'Class 8', 'uploads/students/1772898928_12_Passport-size-photo-Vivek-puri.jpg', 336, NULL, NULL, NULL, NULL, 14, '907 Civil Lines, Kolkata', '9990752807', 'student_223', 'student223@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(254, 'ADM-2026-0234', 'Vikas Iyer', 'Male', '2012-01-23', NULL, 'Ramesh Iyer', 'rameshiyer25@example.com', NULL, '2026-03-24 08:38:40', '9366886145', 1, NULL, 'A-', '374225429458', '9623240134', 'Ramesh Iyer', '9366886145', 'Ayesha Iyer', '9326433199', '510 Shastri Nagar, Hyderabad', 'Ramesh Iyer', 'Father', '9366886145', '510 Shastri Nagar, Hyderabad', 'Islam', 'OBC-A', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-15', 'Approved', 'Class 8', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 337, NULL, NULL, NULL, NULL, 14, '510 Shastri Nagar, Hyderabad', '9623240134', 'student_224', 'student224@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(255, 'ADM-2026-0235', 'Nitin Yadav', 'Male', '2012-01-17', NULL, 'Ramesh Yadav', 'rameshyadav64@example.com', NULL, '2026-03-24 08:38:40', '9294929296', 1, NULL, 'A+', '508597427937', '9808918613', 'Ramesh Yadav', '9294929296', 'Zainab Yadav', '9184980947', '667 Civil Lines, Mumbai', 'Ramesh Yadav', 'Father', '9294929296', '667 Civil Lines, Mumbai', 'Islam', 'SC', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-13', 'Approved', 'Class 8', 'uploads/students/stu_1772563030.png', 338, NULL, NULL, NULL, NULL, 14, '667 Civil Lines, Mumbai', '9808918613', 'student_225', 'student225@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka');
INSERT INTO `students` (`id`, `admission_no`, `student_name`, `gender`, `dob`, `class`, `parent_name`, `parent_email`, `photo`, `created_at`, `parent_phone`, `is_active`, `application_id`, `blood_group`, `aadhaar_number`, `mobile_number`, `father_name`, `father_mobile`, `mother_name`, `mother_mobile`, `parents_address`, `guardian_name`, `relation`, `guardian_mobile`, `guardian_address`, `religion`, `caste_category`, `mother_tongue`, `has_medical_condition`, `medical_condition_desc`, `has_disability`, `disability_desc`, `has_allergies`, `allergies_desc`, `previous_schooling_status`, `previous_class`, `previous_school_name`, `previous_board`, `year_of_passing`, `previous_school`, `address`, `guardian_details`, `admission_date`, `status`, `class_applied`, `student_photo`, `user_id`, `class_id`, `section_id`, `parent_id`, `admission_number`, `age`, `present_address`, `student_mobile`, `username`, `email`, `password`) VALUES
(256, 'ADM-2026-0236', 'Rohan Kulkarni', 'Male', '2012-02-02', NULL, 'Ravi Kulkarni', 'ravikulkarni32@example.com', NULL, '2026-03-24 08:38:40', '9972151803', 1, NULL, 'A-', '624547128870', '9675479494', 'Ravi Kulkarni', '9972151803', 'Swati Kulkarni', '9832903554', '206 Civil Lines, Pune', 'Ravi Kulkarni', 'Father', '9972151803', '206 Civil Lines, Pune', 'Hindu', 'SC', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-04', 'Rejected', 'Class 8', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 339, NULL, NULL, NULL, NULL, 14, '206 Civil Lines, Pune', '9675479494', 'student_226', 'student226@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(257, 'ADM-2026-0237', 'Rajesh Joshi', 'Male', '2012-11-01', NULL, 'Akash Joshi', 'akashjoshi98@example.com', NULL, '2026-03-24 08:38:40', '9836499202', 1, NULL, 'O+', '747186317625', '9320510028', 'Akash Joshi', '9836499202', 'Rekha Joshi', '9520146301', '770 Station Road, Hyderabad', 'Akash Joshi', 'Father', '9836499202', '770 Station Road, Hyderabad', 'Buddhist', 'ST', 'Tamil', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-03', 'Approved', 'Class 8', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 340, NULL, NULL, NULL, NULL, 14, '770 Station Road, Hyderabad', '9320510028', 'student_227', 'student227@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(258, 'ADM-2026-0238', 'Karan Gupta', 'Male', '2012-05-09', NULL, 'Sanjay Gupta', 'sanjaygupta15@example.com', NULL, '2026-03-24 08:38:40', '9785320090', 1, NULL, 'A+', '796254493518', '9939591966', 'Sanjay Gupta', '9785320090', 'Swati Gupta', '9229292596', '826 Station Road, Hyderabad', 'Sanjay Gupta', 'Father', '9785320090', '826 Station Road, Hyderabad', 'Buddhist', 'OBC-B', 'English', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-26', 'Approved', 'Class 8', 'uploads/students/1772898928_12_Passport-size-photo-Vivek-puri.jpg', 341, NULL, NULL, NULL, NULL, 14, '826 Station Road, Hyderabad', '9939591966', 'student_228', 'student228@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(259, 'ADM-2026-0239', 'Sunil Gupta', 'Male', '2012-10-18', NULL, 'Sunil Gupta', 'sunilgupta50@example.com', NULL, '2026-03-24 08:38:40', '9464078419', 1, NULL, 'B+', '876330726427', '9937317780', 'Sunil Gupta', '9464078419', 'Simran Gupta', '9680319530', '106 Shastri Nagar, Mumbai', 'Sunil Gupta', 'Father', '9464078419', '106 Shastri Nagar, Mumbai', 'Christian', 'General', 'Hindi', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Class 8', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 342, NULL, NULL, NULL, NULL, 14, '106 Shastri Nagar, Mumbai', '9937317780', 'student_229', 'student229@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(260, 'ADM-2026-0240', 'Abhishek Mukherjee', 'Male', '2012-05-23', NULL, 'Abhishek Mukherjee', 'abhishekmukherjee93@example.com', NULL, '2026-03-24 08:38:40', '9896387066', 1, NULL, 'A-', '615278918886', '9428892808', 'Abhishek Mukherjee', '9896387066', 'Geeta Mukherjee', '9229918254', '888 Gandhi Nagar, Kolkata', 'Abhishek Mukherjee', 'Father', '9896387066', '888 Gandhi Nagar, Kolkata', 'Christian', 'General', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-28', 'Approved', 'Class 8', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 343, NULL, NULL, NULL, NULL, 14, '888 Gandhi Nagar, Kolkata', '9428892808', 'student_230', 'student230@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(261, 'ADM-2026-0241', 'Simran Chowdhury', 'Female', '2012-02-10', NULL, 'Manish Chowdhury', 'manishchowdhury67@example.com', NULL, '2026-03-24 08:38:40', '9637697203', 1, NULL, 'AB+', '776858548175', '9211563790', 'Manish Chowdhury', '9637697203', 'Nidhi Chowdhury', '9907203970', '862 MG Road, Hyderabad', 'Manish Chowdhury', 'Father', '9637697203', '862 MG Road, Hyderabad', 'Hindu', 'SC', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-09', 'Approved', 'Class 8', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 344, NULL, NULL, NULL, NULL, 14, '862 MG Road, Hyderabad', '9211563790', 'student_231', 'student231@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(262, 'ADM-2026-0242', 'Rekha Mistry', 'Female', '2012-06-18', NULL, 'Amit Mistry', 'amitmistry53@example.com', NULL, '2026-03-24 08:38:40', '9565073847', 1, NULL, 'B+', '562928087166', '9246127703', 'Amit Mistry', '9565073847', 'Diya Mistry', '9239992656', '962 Civil Lines, Kolkata', 'Amit Mistry', 'Father', '9565073847', '962 Civil Lines, Kolkata', 'Hindu', 'SC', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-26', 'Approved', 'Class 8', 'uploads/students/1772898928_18_images11.jpg', 345, NULL, NULL, NULL, NULL, 14, '962 Civil Lines, Kolkata', '9246127703', 'student_232', 'student232@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(263, 'ADM-2026-0243', 'Priya Joshi', 'Female', '2012-03-07', NULL, 'Vikrant Joshi', 'vikrantjoshi50@example.com', NULL, '2026-03-24 08:38:40', '9876559875', 1, NULL, 'B-', '314498893198', '9392497781', 'Vikrant Joshi', '9876559875', 'Diya Joshi', '9402476412', '172 MG Road, Mumbai', 'Vikrant Joshi', 'Father', '9876559875', '172 MG Road, Mumbai', 'Islam', 'General', 'Odia', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-14', 'Approved', 'Class 8', 'uploads/students/stu_1772563518.png', 346, NULL, NULL, NULL, NULL, 14, '172 MG Road, Mumbai', '9392497781', 'student_233', 'student233@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(264, 'ADM-2026-0244', 'Fatima Dubey', 'Female', '2012-11-17', NULL, 'Nitin Dubey', 'nitindubey64@example.com', NULL, '2026-03-24 08:38:40', '9851867897', 1, NULL, 'O-', '386780259967', '9172170893', 'Nitin Dubey', '9851867897', 'Rekha Dubey', '9848296525', '574 Gandhi Nagar, Hyderabad', 'Nitin Dubey', 'Father', '9851867897', '574 Gandhi Nagar, Hyderabad', 'Islam', 'ST', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-13', 'Approved', 'Class 8', 'uploads/students/1772898928_20_images13.jpg', 347, NULL, NULL, NULL, NULL, 14, '574 Gandhi Nagar, Hyderabad', '9172170893', 'student_234', 'student234@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(265, 'ADM-2026-0245', 'Kiran Chauhan', 'Female', '2012-07-02', NULL, 'Rohan Chauhan', 'rohanchauhan54@example.com', NULL, '2026-03-24 08:38:40', '9652376949', 1, NULL, 'B-', '865917537400', '9321049878', 'Rohan Chauhan', '9652376949', 'Rekha Chauhan', '9195921365', '633 Gandhi Nagar, Pune', 'Rohan Chauhan', 'Father', '9652376949', '633 Gandhi Nagar, Pune', 'Hindu', 'SC', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-24', 'Approved', 'Class 8', 'uploads/students/stu_1772563518.png', 348, NULL, NULL, NULL, NULL, 14, '633 Gandhi Nagar, Pune', '9321049878', 'student_235', 'student235@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(266, 'ADM-2026-0246', 'Rekha Banerjee', 'Female', '2012-12-11', NULL, 'Arjun Banerjee', 'arjunbanerjee23@example.com', NULL, '2026-03-24 08:38:40', '9791105940', 1, NULL, 'A+', '539760535816', '9647480963', 'Arjun Banerjee', '9791105940', 'Ananya Banerjee', '9844231494', '303 Station Road, Mumbai', 'Arjun Banerjee', 'Father', '9791105940', '303 Station Road, Mumbai', 'Buddhist', 'OBC-A', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-10', 'Approved', 'Class 8', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 349, NULL, NULL, NULL, NULL, 14, '303 Station Road, Mumbai', '9647480963', 'student_236', 'student236@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(267, 'ADM-2026-0247', 'Pooja Yadav', 'Female', '2012-12-15', NULL, 'Manoj Yadav', 'manojyadav68@example.com', NULL, '2026-03-24 08:38:40', '9143884630', 1, NULL, 'B-', '498639434187', '9706484060', 'Manoj Yadav', '9143884630', 'Kavita Yadav', '9656702520', '53 Station Road, Mumbai', 'Manoj Yadav', 'Father', '9143884630', '53 Station Road, Mumbai', 'Islam', 'SC', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-26', 'Approved', 'Class 8', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 350, NULL, NULL, NULL, NULL, 14, '53 Station Road, Mumbai', '9706484060', 'student_237', 'student237@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(268, 'ADM-2026-0248', 'Sneha Pillai', 'Female', '2012-07-19', NULL, 'Kunal Pillai', 'kunalpillai17@example.com', NULL, '2026-03-24 08:38:40', '9548397783', 1, NULL, 'O+', '758967588919', '9804910902', 'Kunal Pillai', '9548397783', 'Riya Pillai', '9854791291', '657 Gandhi Nagar, Mumbai', 'Kunal Pillai', 'Father', '9548397783', '657 Gandhi Nagar, Mumbai', 'Islam', 'OBC-A', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-02', 'Approved', 'Class 8', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 351, NULL, NULL, NULL, NULL, 14, '657 Gandhi Nagar, Mumbai', '9804910902', 'student_238', 'student238@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(269, 'ADM-2026-0249', 'Riya Reddy', 'Female', '2012-06-04', NULL, 'Vishal Reddy', 'vishalreddy93@example.com', NULL, '2026-03-24 08:38:40', '9269424711', 1, NULL, 'O+', '444631394425', '9862402010', 'Vishal Reddy', '9269424711', 'Neha Reddy', '9250881177', '986 Civil Lines, Kolkata', 'Vishal Reddy', 'Father', '9269424711', '986 Civil Lines, Kolkata', 'Christian', 'OBC-B', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-25', 'Approved', 'Class 8', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 352, NULL, NULL, NULL, NULL, 14, '986 Civil Lines, Kolkata', '9862402010', 'student_239', 'student239@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(270, 'ADM-2026-0250', 'Riya Mistry', 'Female', '2012-06-03', NULL, 'Vikrant Mistry', 'vikrantmistry23@example.com', NULL, '2026-03-24 08:38:40', '9862797697', 1, NULL, 'O+', '883353159217', '9223727325', 'Vikrant Mistry', '9862797697', 'Riya Mistry', '9391459632', '542 Shastri Nagar, Chennai', 'Vikrant Mistry', 'Father', '9862797697', '542 Shastri Nagar, Chennai', 'Hindu', 'General', 'Telugu', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 7', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-19', 'Approved', 'Class 8', 'uploads/students/1772898928_20_images13.jpg', 353, NULL, NULL, NULL, NULL, 14, '542 Shastri Nagar, Chennai', '9223727325', 'student_240', 'student240@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(271, 'ADM-2026-0251', 'Suresh Das', 'Male', '2011-12-06', NULL, 'Suresh Das', 'sureshdas82@example.com', NULL, '2026-03-24 08:38:40', '9327744343', 1, NULL, 'B+', '145432934109', '9807508211', 'Suresh Das', '9327744343', 'Shweta Das', '9308502617', '278 MG Road, Chennai', 'Suresh Das', 'Father', '9327744343', '278 MG Road, Chennai', 'Buddhist', 'OBC-B', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-22', 'Approved', 'Class 9', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 354, NULL, NULL, NULL, NULL, 15, '278 MG Road, Chennai', '9807508211', 'student_241', 'student241@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(272, 'ADM-2026-0252', 'Sanjay Menon', 'Male', '2011-10-19', NULL, 'Abhishek Menon', 'abhishekmenon94@example.com', NULL, '2026-03-24 08:38:40', '9890513978', 1, NULL, 'B+', '324646633864', '9454704538', 'Abhishek Menon', '9890513978', 'Fatima Menon', '9470607287', '68 MG Road, Delhi', 'Abhishek Menon', 'Father', '9890513978', '68 MG Road, Delhi', 'Hindu', 'SC', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Class 9', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 355, NULL, NULL, NULL, NULL, 15, '68 MG Road, Delhi', '9454704538', 'student_242', 'student242@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(273, 'ADM-2026-0253', 'Krishna Tiwari', 'Male', '2011-05-19', NULL, 'Ravi Tiwari', 'ravitiwari66@example.com', NULL, '2026-03-24 08:38:40', '9577094395', 1, NULL, 'A-', '913346159927', '9237715271', 'Ravi Tiwari', '9577094395', 'Pooja Tiwari', '9777794017', '697 Gandhi Nagar, Chennai', 'Ravi Tiwari', 'Father', '9577094395', '697 Gandhi Nagar, Chennai', 'Christian', 'SC', 'Odia', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Class 9', 'uploads/students/1772898928_16_images1.jpg', 356, NULL, NULL, NULL, NULL, 15, '697 Gandhi Nagar, Chennai', '9237715271', 'student_243', 'student243@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(274, 'ADM-2026-0254', 'Nitin Patel', 'Male', '2011-05-01', NULL, 'Deepak Patel', 'deepakpatel24@example.com', NULL, '2026-03-24 08:38:40', '9301500729', 1, NULL, 'A+', '785849102339', '9679786718', 'Deepak Patel', '9301500729', 'Ananya Patel', '9486330491', '185 Civil Lines, Chennai', 'Deepak Patel', 'Father', '9301500729', '185 Civil Lines, Chennai', 'Christian', 'SC', 'Telugu', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-20', 'Approved', 'Class 9', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 357, NULL, NULL, NULL, NULL, 15, '185 Civil Lines, Chennai', '9679786718', 'student_244', 'student244@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(275, 'ADM-2026-0255', 'Krishna Mukherjee', 'Male', '2011-03-24', NULL, 'Vikrant Mukherjee', 'vikrantmukherjee83@example.com', NULL, '2026-03-24 08:38:40', '9200641812', 1, NULL, 'AB-', '834224234138', '9712272405', 'Vikrant Mukherjee', '9200641812', 'Anita Mukherjee', '9313786967', '328 Gandhi Nagar, Hyderabad', 'Vikrant Mukherjee', 'Father', '9200641812', '328 Gandhi Nagar, Hyderabad', 'Hindu', 'OBC-B', 'Urdu', 0, NULL, 1, 'Mild hearing impairment', 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-20', 'Approved', 'Class 9', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 358, NULL, NULL, NULL, NULL, 15, '328 Gandhi Nagar, Hyderabad', '9712272405', 'student_245', 'student245@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(276, 'ADM-2026-0256', 'Manish Nair', 'Male', '2011-04-09', NULL, 'Vivaan Nair', 'vivaannair51@example.com', NULL, '2026-03-24 08:38:40', '9448223096', 1, NULL, 'O+', '253410312589', '9100289502', 'Vivaan Nair', '9448223096', 'Kiran Nair', '9307854140', '946 Civil Lines, Hyderabad', 'Vivaan Nair', 'Father', '9448223096', '946 Civil Lines, Hyderabad', 'Buddhist', 'OBC-A', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-26', 'Approved', 'Class 9', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 359, NULL, NULL, NULL, NULL, 15, '946 Civil Lines, Hyderabad', '9100289502', 'student_246', 'student246@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(277, 'ADM-2026-0257', 'Rohan Dubey', 'Male', '2011-07-10', NULL, 'Manish Dubey', 'manishdubey69@example.com', NULL, '2026-03-24 08:38:40', '9152972349', 1, NULL, 'B-', '481674195650', '9918170949', 'Manish Dubey', '9152972349', 'Rekha Dubey', '9860649811', '440 Shastri Nagar, Kolkata', 'Manish Dubey', 'Father', '9152972349', '440 Shastri Nagar, Kolkata', 'Buddhist', 'ST', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-17', 'Approved', 'Class 9', 'uploads/students/1772898928_2_1644572849.jpg', 360, NULL, NULL, NULL, NULL, 15, '440 Shastri Nagar, Kolkata', '9918170949', 'student_247', 'student247@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(278, 'ADM-2026-0258', 'Sumit Yadav', 'Male', '2011-10-01', NULL, 'Vijay Yadav', 'vijayyadav83@example.com', NULL, '2026-03-24 08:38:40', '9475372382', 1, NULL, 'B+', '394713795858', '9174384786', 'Vijay Yadav', '9475372382', 'Rekha Yadav', '9801773810', '44 Gandhi Nagar, Delhi', 'Vijay Yadav', 'Father', '9475372382', '44 Gandhi Nagar, Delhi', 'Buddhist', 'OBC-A', 'Marathi', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-22', 'Approved', 'Class 9', 'uploads/students/stu_1772563030.png', 361, NULL, NULL, NULL, NULL, 15, '44 Gandhi Nagar, Delhi', '9174384786', 'student_248', 'student248@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(279, 'ADM-2026-0259', 'Amit Joshi', 'Male', '2011-04-19', NULL, 'Vivaan Joshi', 'vivaanjoshi88@example.com', NULL, '2026-03-24 08:38:40', '9749328662', 1, NULL, 'A+', '236649451166', '9974840963', 'Vivaan Joshi', '9749328662', 'Sita Joshi', '9109570368', '873 Gandhi Nagar, Chennai', 'Vivaan Joshi', 'Father', '9749328662', '873 Gandhi Nagar, Chennai', 'Buddhist', 'ST', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-06', 'Approved', 'Class 9', 'uploads/students/1772898928_20_images13.jpg', 362, NULL, NULL, NULL, NULL, 15, '873 Gandhi Nagar, Chennai', '9974840963', 'student_249', 'student249@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(280, 'ADM-2026-0260', 'Sanjay Bhat', 'Male', '2011-03-02', NULL, 'Deepak Bhat', 'deepakbhat64@example.com', NULL, '2026-03-24 08:38:40', '9283628983', 1, NULL, 'A+', '208176778722', '9983115289', 'Deepak Bhat', '9283628983', 'Ayesha Bhat', '9645910155', '956 Gandhi Nagar, Pune', 'Deepak Bhat', 'Father', '9283628983', '956 Gandhi Nagar, Pune', 'Christian', 'OBC-A', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-22', 'Approved', 'Class 9', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 363, NULL, NULL, NULL, NULL, 15, '956 Gandhi Nagar, Pune', '9983115289', 'student_250', 'student250@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(281, 'ADM-2026-0261', 'Rekha Pandey', 'Female', '2011-01-17', NULL, 'Sumit Pandey', 'sumitpandey80@example.com', NULL, '2026-03-24 08:38:40', '9641173392', 1, NULL, 'O-', '801395685228', '9481068516', 'Sumit Pandey', '9641173392', 'Aakanksha Pandey', '9539533531', '523 Gandhi Nagar, Kolkata', 'Sumit Pandey', 'Father', '9641173392', '523 Gandhi Nagar, Kolkata', 'Christian', 'ST', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-17', 'Approved', 'Class 9', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 364, NULL, NULL, NULL, NULL, 15, '523 Gandhi Nagar, Kolkata', '9481068516', 'student_251', 'student251@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(282, 'ADM-2026-0262', 'Sunita Dubey', 'Female', '2011-11-18', NULL, 'Rajesh Dubey', 'rajeshdubey34@example.com', NULL, '2026-03-24 08:38:40', '9160791115', 1, NULL, 'AB-', '495717183802', '9162304618', 'Rajesh Dubey', '9160791115', 'Kavita Dubey', '9879626307', '227 MG Road, Hyderabad', 'Rajesh Dubey', 'Father', '9160791115', '227 MG Road, Hyderabad', 'Islam', 'ST', 'Tamil', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-10', 'Approved', 'Class 9', 'uploads/students/1772898928_2_1644572849.jpg', 365, NULL, NULL, NULL, NULL, 15, '227 MG Road, Hyderabad', '9162304618', 'student_252', 'student252@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(283, 'ADM-2026-0263', 'Pooja Iyer', 'Female', '2011-02-14', NULL, 'Aarav Iyer', 'aaraviyer98@example.com', NULL, '2026-03-24 08:38:40', '9866459563', 1, NULL, 'A+', '234871457183', '9711804773', 'Aarav Iyer', '9866459563', 'Shweta Iyer', '9171321779', '792 Gandhi Nagar, Pune', 'Aarav Iyer', 'Father', '9866459563', '792 Gandhi Nagar, Pune', 'Buddhist', 'SC', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-24', 'Approved', 'Class 9', 'uploads/students/1772898928_19_images12.jpg', 366, NULL, NULL, NULL, NULL, 15, '792 Gandhi Nagar, Pune', '9711804773', 'student_253', 'student253@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(284, 'ADM-2026-0264', 'Geeta Kumar', 'Female', '2011-10-14', NULL, 'Abhishek Kumar', 'abhishekkumar61@example.com', NULL, '2026-03-24 08:38:40', '9296507664', 1, NULL, 'O+', '660648056628', '9945420666', 'Abhishek Kumar', '9296507664', 'Anita Kumar', '9482753410', '394 Gandhi Nagar, Chennai', 'Abhishek Kumar', 'Father', '9296507664', '394 Gandhi Nagar, Chennai', 'Hindu', 'General', 'Hindi', 0, NULL, 1, 'Mild hearing impairment', 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-08', 'Approved', 'Class 9', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 367, NULL, NULL, NULL, NULL, 15, '394 Gandhi Nagar, Chennai', '9945420666', 'student_254', 'student254@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(285, 'ADM-2026-0265', 'Ananya Menon', 'Female', '2011-08-11', NULL, 'Nitin Menon', 'nitinmenon49@example.com', NULL, '2026-03-24 08:38:40', '9974373773', 1, NULL, 'AB-', '840982721737', '9177770258', 'Nitin Menon', '9974373773', 'Divya Menon', '9138783008', '413 Gandhi Nagar, Chennai', 'Nitin Menon', 'Father', '9974373773', '413 Gandhi Nagar, Chennai', 'Islam', 'OBC-B', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-08', 'Approved', 'Class 9', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 368, NULL, NULL, NULL, NULL, 15, '413 Gandhi Nagar, Chennai', '9177770258', 'student_255', 'student255@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(286, 'ADM-2026-0266', 'Priya Chauhan', 'Female', '2011-06-16', NULL, 'Sunil Chauhan', 'sunilchauhan74@example.com', NULL, '2026-03-24 08:38:40', '9607716931', 1, NULL, 'B+', '548266653536', '9589406558', 'Sunil Chauhan', '9607716931', 'Ananya Chauhan', '9946494699', '778 MG Road, Kolkata', 'Sunil Chauhan', 'Father', '9607716931', '778 MG Road, Kolkata', 'Buddhist', 'SC', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-22', 'Approved', 'Class 9', 'uploads/students/stu_1772563518.png', 369, NULL, NULL, NULL, NULL, 15, '778 MG Road, Kolkata', '9589406558', 'student_256', 'student256@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(287, 'ADM-2026-0267', 'Preeti Kumar', 'Female', '2011-09-09', NULL, 'Rohan Kumar', 'rohankumar80@example.com', NULL, '2026-03-24 08:38:40', '9463768680', 1, NULL, 'AB+', '492568524202', '9655126428', 'Rohan Kumar', '9463768680', 'Shweta Kumar', '9401444651', '365 Civil Lines, Bangalore', 'Rohan Kumar', 'Father', '9463768680', '365 Civil Lines, Bangalore', 'Islam', 'ST', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-04', 'Approved', 'Class 9', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 370, NULL, NULL, NULL, NULL, 15, '365 Civil Lines, Bangalore', '9655126428', 'student_257', 'student257@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(288, 'ADM-2026-0268', 'Divya Verma', 'Female', '2011-04-13', NULL, 'Deepak Verma', 'deepakverma44@example.com', NULL, '2026-03-24 08:38:40', '9352597941', 1, NULL, 'O+', '545790265567', '9940837596', 'Deepak Verma', '9352597941', 'Rekha Verma', '9567427572', '22 Station Road, Chennai', 'Deepak Verma', 'Father', '9352597941', '22 Station Road, Chennai', 'Islam', 'ST', 'Bengali', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-03', 'Approved', 'Class 9', 'uploads/students/1772898928_2_1644572849.jpg', 371, NULL, NULL, NULL, NULL, 15, '22 Station Road, Chennai', '9940837596', 'student_258', 'student258@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(289, 'ADM-2026-0269', 'Pooja Pillai', 'Female', '2011-10-17', NULL, 'Aditya Pillai', 'adityapillai30@example.com', NULL, '2026-03-24 08:38:40', '9673016023', 1, NULL, 'AB+', '534835093202', '9672245211', 'Aditya Pillai', '9673016023', 'Aakanksha Pillai', '9512278671', '136 Shastri Nagar, Chennai', 'Aditya Pillai', 'Father', '9673016023', '136 Shastri Nagar, Chennai', 'Buddhist', 'ST', 'Hindi', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-09', 'Approved', 'Class 9', 'uploads/students/1772898928_17_images10.jpg', 372, NULL, NULL, NULL, NULL, 15, '136 Shastri Nagar, Chennai', '9672245211', 'student_259', 'student259@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(290, 'ADM-2026-0270', 'Kavya Pandey', 'Female', '2011-09-14', NULL, 'Ravi Pandey', 'ravipandey20@example.com', NULL, '2026-03-24 08:38:40', '9837603144', 1, NULL, 'AB+', '768750221771', '9394409076', 'Ravi Pandey', '9837603144', 'Zainab Pandey', '9812212019', '304 Shastri Nagar, Bangalore', 'Ravi Pandey', 'Father', '9837603144', '304 Shastri Nagar, Bangalore', 'Christian', 'OBC-A', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 8', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-09', 'Approved', 'Class 9', 'uploads/students/stu_1772563518.png', 373, NULL, NULL, NULL, NULL, 15, '304 Shastri Nagar, Bangalore', '9394409076', 'student_260', 'student260@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(291, 'ADM-2026-0271', 'Ravi Sharma', 'Male', '2010-08-12', NULL, 'Rohan Sharma', 'rohansharma57@example.com', NULL, '2026-03-24 08:38:40', '9232342001', 1, NULL, 'A+', '422760278247', '9820515810', 'Rohan Sharma', '9232342001', 'Riya Sharma', '9551296901', '724 Shastri Nagar, Bangalore', 'Rohan Sharma', 'Father', '9232342001', '724 Shastri Nagar, Bangalore', 'Christian', 'OBC-A', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-02', 'Approved', 'Class 10', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 374, NULL, NULL, NULL, NULL, 16, '724 Shastri Nagar, Bangalore', '9820515810', 'student_261', 'student261@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(292, 'ADM-2026-0272', 'Akash Joshi', 'Male', '2010-11-09', NULL, 'Vishal Joshi', 'vishaljoshi91@example.com', NULL, '2026-03-24 08:38:40', '9977758197', 1, NULL, 'B-', '920734714872', '9793226337', 'Vishal Joshi', '9977758197', 'Meena Joshi', '9380833220', '909 Shastri Nagar, Mumbai', 'Vishal Joshi', 'Father', '9977758197', '909 Shastri Nagar, Mumbai', 'Islam', 'ST', 'English', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-23', 'Approved', 'Class 10', 'uploads/students/1772898928_15_gopinathK-1.jpg', 375, NULL, NULL, NULL, NULL, 16, '909 Shastri Nagar, Mumbai', '9793226337', 'student_262', 'student262@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(293, 'ADM-2026-0273', 'Ravi Verma', 'Male', '2010-08-14', NULL, 'Vikrant Verma', 'vikrantverma93@example.com', NULL, '2026-03-24 08:38:40', '9660682877', 1, NULL, 'B-', '314842927778', '9376957555', 'Vikrant Verma', '9660682877', 'Shweta Verma', '9819052133', '479 Gandhi Nagar, Bangalore', 'Vikrant Verma', 'Father', '9660682877', '479 Gandhi Nagar, Bangalore', 'Buddhist', 'ST', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Class 10', 'uploads/students/1772898928_12_Passport-size-photo-Vivek-puri.jpg', 376, NULL, NULL, NULL, NULL, 16, '479 Gandhi Nagar, Bangalore', '9376957555', 'student_263', 'student263@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(294, 'ADM-2026-0274', 'Manish Dubey', 'Male', '2010-11-09', NULL, 'Neeraj Dubey', 'neerajdubey73@example.com', NULL, '2026-03-24 08:38:40', '9972157263', 1, NULL, 'AB-', '203372895739', '9431050804', 'Neeraj Dubey', '9972157263', 'Pooja Dubey', '9932394736', '276 MG Road, Mumbai', 'Neeraj Dubey', 'Father', '9972157263', '276 MG Road, Mumbai', 'Hindu', 'SC', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-02', 'Approved', 'Class 10', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 377, NULL, NULL, NULL, NULL, 16, '276 MG Road, Mumbai', '9431050804', 'student_264', 'student264@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(295, 'ADM-2026-0275', 'Suresh Nair', 'Male', '2010-12-12', NULL, 'Aarav Nair', 'aaravnair25@example.com', NULL, '2026-03-24 08:38:40', '9921225569', 1, NULL, 'O-', '367520762614', '9314281949', 'Aarav Nair', '9921225569', 'Sonia Nair', '9481522001', '196 Gandhi Nagar, Delhi', 'Aarav Nair', 'Father', '9921225569', '196 Gandhi Nagar, Delhi', 'Hindu', 'OBC-B', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-06', 'Approved', 'Class 10', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 378, NULL, NULL, NULL, NULL, 16, '196 Gandhi Nagar, Delhi', '9314281949', 'student_265', 'student265@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(296, 'ADM-2026-0276', 'Arjun Menon', 'Male', '2010-03-05', NULL, 'Vikram Menon', 'vikrammenon99@example.com', NULL, '2026-03-24 08:38:40', '9588420746', 1, NULL, 'AB+', '382062378082', '9172520789', 'Vikram Menon', '9588420746', 'Meena Menon', '9719731471', '746 Shastri Nagar, Mumbai', 'Vikram Menon', 'Father', '9588420746', '746 Shastri Nagar, Mumbai', 'Buddhist', 'ST', 'Kannada', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Class 10', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 379, NULL, NULL, NULL, NULL, 16, '746 Shastri Nagar, Mumbai', '9172520789', 'student_266', 'student266@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(297, 'ADM-2026-0277', 'Ravi Chatterjee', 'Male', '2010-04-22', NULL, 'Aditya Chatterjee', 'adityachatterjee57@example.com', NULL, '2026-03-24 08:38:40', '9250442579', 1, NULL, 'O-', '155834477516', '9952430340', 'Aditya Chatterjee', '9250442579', 'Sunita Chatterjee', '9448970745', '249 Civil Lines, Chennai', 'Aditya Chatterjee', 'Father', '9250442579', '249 Civil Lines, Chennai', 'Christian', 'SC', 'Urdu', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-23', 'Approved', 'Class 10', 'uploads/students/1772898928_17_images10.jpg', 380, NULL, NULL, NULL, NULL, 16, '249 Civil Lines, Chennai', '9952430340', 'student_267', 'student267@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(298, 'ADM-2026-0278', 'Manish Kulkarni', 'Male', '2010-03-16', NULL, 'Nitin Kulkarni', 'nitinkulkarni92@example.com', NULL, '2026-03-24 08:38:40', '9632403517', 1, NULL, 'A+', '950925049188', '9234694462', 'Nitin Kulkarni', '9632403517', 'Anita Kulkarni', '9606712639', '165 Gandhi Nagar, Mumbai', 'Nitin Kulkarni', 'Father', '9632403517', '165 Gandhi Nagar, Mumbai', 'Islam', 'SC', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-19', 'Approved', 'Class 10', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 381, NULL, NULL, NULL, NULL, 16, '165 Gandhi Nagar, Mumbai', '9234694462', 'student_268', 'student268@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(299, 'ADM-2026-0279', 'Rohan Das', 'Male', '2010-03-10', NULL, 'Rohan Das', 'rohandas76@example.com', NULL, '2026-03-24 08:38:40', '9479729645', 1, NULL, 'AB-', '687361759432', '9421922559', 'Rohan Das', '9479729645', 'Sunita Das', '9367600743', '703 MG Road, Chennai', 'Rohan Das', 'Father', '9479729645', '703 MG Road, Chennai', 'Hindu', 'General', 'Urdu', 0, NULL, 1, 'Mild hearing impairment', 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-21', 'Approved', 'Class 10', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 382, NULL, NULL, NULL, NULL, 16, '703 MG Road, Chennai', '9421922559', 'student_269', 'student269@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(300, 'ADM-2026-0280', 'Arjun Tiwari', 'Male', '2010-11-01', NULL, 'Ramesh Tiwari', 'rameshtiwari84@example.com', NULL, '2026-03-24 08:38:40', '9976624806', 1, NULL, 'B-', '894494971112', '9382754456', 'Ramesh Tiwari', '9976624806', 'Anita Tiwari', '9830083131', '767 Shastri Nagar, Kolkata', 'Ramesh Tiwari', 'Father', '9976624806', '767 Shastri Nagar, Kolkata', 'Hindu', 'General', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-10', 'Approved', 'Class 10', 'uploads/students/1772898928_2_1644572849.jpg', 383, NULL, NULL, NULL, NULL, 16, '767 Shastri Nagar, Kolkata', '9382754456', 'student_270', 'student270@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(301, 'ADM-2026-0281', 'Meena Banerjee', 'Female', '2010-11-14', NULL, 'Rahul Banerjee', 'rahulbanerjee65@example.com', NULL, '2026-03-24 08:38:40', '9504661400', 1, NULL, 'B+', '570053002323', '9292067332', 'Rahul Banerjee', '9504661400', 'Priya Banerjee', '9790532591', '477 Station Road, Delhi', 'Rahul Banerjee', 'Father', '9504661400', '477 Station Road, Delhi', 'Buddhist', 'OBC-B', 'Tamil', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-18', 'Approved', 'Class 10', 'uploads/students/1772898928_15_gopinathK-1.jpg', 384, NULL, NULL, NULL, NULL, 16, '477 Station Road, Delhi', '9292067332', 'student_271', 'student271@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(302, 'ADM-2026-0282', 'Aakanksha Chauhan', 'Female', '2010-02-10', NULL, 'Kunal Chauhan', 'kunalchauhan17@example.com', NULL, '2026-03-24 08:38:40', '9334783785', 1, NULL, 'A+', '405428995519', '9927944614', 'Kunal Chauhan', '9334783785', 'Sunita Chauhan', '9588566462', '682 Station Road, Kolkata', 'Kunal Chauhan', 'Father', '9334783785', '682 Station Road, Kolkata', 'Christian', 'OBC-B', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-02', 'Approved', 'Class 10', 'uploads/students/1772898928_12_Passport-size-photo-Vivek-puri.jpg', 385, NULL, NULL, NULL, NULL, 16, '682 Station Road, Kolkata', '9927944614', 'student_272', 'student272@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(303, 'ADM-2026-0283', 'Riya Chauhan', 'Female', '2010-07-26', NULL, 'Rahul Chauhan', 'rahulchauhan46@example.com', NULL, '2026-03-24 08:38:40', '9554703379', 1, NULL, 'B-', '770698881710', '9975522224', 'Rahul Chauhan', '9554703379', 'Nisha Chauhan', '9642070188', '616 Shastri Nagar, Bangalore', 'Rahul Chauhan', 'Father', '9554703379', '616 Shastri Nagar, Bangalore', 'Buddhist', 'ST', 'Kannada', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-14', 'Approved', 'Class 10', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 386, NULL, NULL, NULL, NULL, 16, '616 Shastri Nagar, Bangalore', '9975522224', 'student_273', 'student273@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(304, 'ADM-2026-0284', 'Riya Pandey', 'Female', '2010-05-18', NULL, 'Vikram Pandey', 'vikrampandey13@example.com', NULL, '2026-03-24 08:38:40', '9742019837', 1, NULL, 'AB-', '527673116421', '9861834308', 'Vikram Pandey', '9742019837', 'Fatima Pandey', '9656729390', '114 Station Road, Chennai', 'Vikram Pandey', 'Father', '9742019837', '114 Station Road, Chennai', 'Hindu', 'OBC-A', 'Bengali', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-20', 'Approved', 'Class 10', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 387, NULL, NULL, NULL, NULL, 16, '114 Station Road, Chennai', '9861834308', 'student_274', 'student274@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(305, 'ADM-2026-0285', 'Aakanksha Chatterjee', 'Female', '2010-09-19', 'Class 10', 'Sumit Chatterjee', 'sumitchatterjee21@example.com', NULL, '2026-03-24 08:38:40', '9625374895', 1, NULL, 'A+', '845436343292', '9927200143', 'Sumit Chatterjee', '9625374895', 'Riya Chatterjee', '9515435048', '727 Station Road, Kolkata', 'Sumit Chatterjee', 'Father', '9625374895', NULL, 'Islam', 'General', 'Tamil', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, 'Previous Public School', '727 Station Road, Kolkata', NULL, '2026-03-23', 'Approved', 'Class 10', 'uploads/students/1772898928_19_images12.jpg', 388, NULL, NULL, NULL, NULL, 16, '727 Station Road, Kolkata', '9927200143', 'student_275', 'student275@classschool.com', '$2y$10$2/jSctTq3xFHPkx4c2MgbuKZpk/SGDbNO75DVF0.OV8XqZJB0A3.6'),
(306, 'ADM-2026-0286', 'Simran Bhat', 'Female', '2010-01-17', NULL, 'Sunil Bhat', 'sunilbhat75@example.com', NULL, '2026-03-24 08:38:40', '9737099490', 1, NULL, 'O-', '895776639158', '9983135068', 'Sunil Bhat', '9737099490', 'Simran Bhat', '9453900589', '204 Station Road, Kolkata', 'Sunil Bhat', 'Father', '9737099490', '204 Station Road, Kolkata', 'Islam', 'OBC-A', 'Hindi', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-02', 'Approved', 'Class 10', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 389, NULL, NULL, NULL, NULL, 16, '204 Station Road, Kolkata', '9983135068', 'student_276', 'student276@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(307, 'ADM-2026-0287', 'Sonia Pillai', 'Female', '2010-03-10', NULL, 'Kunal Pillai', 'kunalpillai60@example.com', NULL, '2026-03-24 08:38:40', '9447059600', 1, NULL, 'A+', '342624295556', '9541257819', 'Kunal Pillai', '9447059600', 'Aakanksha Pillai', '9148165496', '506 Station Road, Bangalore', 'Kunal Pillai', 'Father', '9447059600', '506 Station Road, Bangalore', 'Christian', 'General', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-22', 'Approved', 'Class 10', 'uploads/students/1772898928_2_1644572849.jpg', 390, NULL, NULL, NULL, NULL, 16, '506 Station Road, Bangalore', '9541257819', 'student_277', 'student277@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(308, 'ADM-2026-0288', 'Swati Tiwari', 'Female', '2010-09-04', NULL, 'Manoj Tiwari', 'manojtiwari85@example.com', NULL, '2026-03-24 08:38:40', '9152245853', 1, NULL, 'A-', '446250316085', '9886012320', 'Manoj Tiwari', '9152245853', 'Anita Tiwari', '9734760240', '677 Station Road, Hyderabad', 'Manoj Tiwari', 'Father', '9152245853', '677 Station Road, Hyderabad', 'Hindu', 'OBC-B', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-16', 'Approved', 'Class 10', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 391, NULL, NULL, NULL, NULL, 16, '677 Station Road, Hyderabad', '9886012320', 'student_278', 'student278@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(309, 'ADM-2026-0289', 'Anita Verma', 'Female', '2010-02-21', NULL, 'Abhishek Verma', 'abhishekverma13@example.com', NULL, '2026-03-24 08:38:40', '9494495568', 1, NULL, 'AB-', '167133517361', '9790858320', 'Abhishek Verma', '9494495568', 'Fatima Verma', '9501263843', '9 Shastri Nagar, Chennai', 'Abhishek Verma', 'Father', '9494495568', '9 Shastri Nagar, Chennai', 'Hindu', 'General', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-04', 'Approved', 'Class 10', 'uploads/students/1772898928_17_images10.jpg', 392, NULL, NULL, NULL, NULL, 16, '9 Shastri Nagar, Chennai', '9790858320', 'student_279', 'student279@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(310, 'ADM-2026-0290', 'Ananya Das', 'Female', '2010-04-05', NULL, 'Kunal Das', 'kunaldas22@example.com', NULL, '2026-03-24 08:38:40', '9551516207', 1, NULL, 'A+', '213628718161', '9418118246', 'Kunal Das', '9551516207', 'Kavya Das', '9254122182', '467 Gandhi Nagar, Delhi', 'Kunal Das', 'Father', '9551516207', '467 Gandhi Nagar, Delhi', 'Islam', 'SC', 'Bengali', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 9', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Class 10', 'uploads/students/stu_1772565595.png', 393, NULL, NULL, NULL, NULL, 16, '467 Gandhi Nagar, Delhi', '9418118246', 'student_280', 'student280@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(311, 'ADM-2026-0291', 'Manoj Yadav', 'Male', '2009-05-08', NULL, 'Sunil Yadav', 'sunilyadav13@example.com', NULL, '2026-03-24 08:38:40', '9556853394', 1, NULL, 'O+', '753695515618', '9991647153', 'Sunil Yadav', '9556853394', 'Riya Yadav', '9529419665', '918 Gandhi Nagar, Chennai', 'Sunil Yadav', 'Father', '9556853394', '918 Gandhi Nagar, Chennai', 'Christian', 'OBC-A', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-06', 'Approved', 'Class 11', 'uploads/students/1772898928_2_1644572849.jpg', 394, NULL, NULL, NULL, NULL, 17, '918 Gandhi Nagar, Chennai', '9991647153', 'student_281', 'student281@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(312, 'ADM-2026-0292', 'Krishna Chauhan', 'Male', '2009-10-08', NULL, 'Amit Chauhan', 'amitchauhan91@example.com', NULL, '2026-03-24 08:38:40', '9920828739', 1, NULL, 'B+', '514857328635', '9186308614', 'Amit Chauhan', '9920828739', 'Aakanksha Chauhan', '9665954214', '829 Civil Lines, Kolkata', 'Amit Chauhan', 'Father', '9920828739', '829 Civil Lines, Kolkata', 'Buddhist', 'SC', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-06', 'Approved', 'Class 11', 'uploads/students/1772898928_14_ac1850ddee8ed3b5864a4a68612a12d3.jpg', 395, NULL, NULL, NULL, NULL, 17, '829 Civil Lines, Kolkata', '9186308614', 'student_282', 'student282@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(313, 'ADM-2026-0293', 'Vikrant Mishra', 'Male', '2009-05-28', NULL, 'Aarav Mishra', 'aaravmishra18@example.com', NULL, '2026-03-24 08:38:40', '9864693018', 1, NULL, 'O+', '673155678694', '9741669042', 'Aarav Mishra', '9864693018', 'Meena Mishra', '9674004659', '428 Shastri Nagar, Chennai', 'Aarav Mishra', 'Father', '9864693018', '428 Shastri Nagar, Chennai', 'Buddhist', 'SC', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-19', 'Approved', 'Class 11', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 396, NULL, NULL, NULL, NULL, 17, '428 Shastri Nagar, Chennai', '9741669042', 'student_283', 'student283@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(314, 'ADM-2026-0294', 'Rahul Singh', 'Male', '2009-09-12', NULL, 'Suresh Singh', 'sureshsingh77@example.com', NULL, '2026-03-24 08:38:40', '9560568893', 1, NULL, 'O+', '999262384216', '9755737231', 'Suresh Singh', '9560568893', 'Kavya Singh', '9297240363', '399 Civil Lines, Chennai', 'Suresh Singh', 'Father', '9560568893', '399 Civil Lines, Chennai', 'Hindu', 'OBC-A', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-24', 'Approved', 'Class 11', 'uploads/students/1772898928_19_images12.jpg', 397, NULL, NULL, NULL, NULL, 17, '399 Civil Lines, Chennai', '9755737231', 'student_284', 'student284@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(315, 'ADM-2026-0295', 'Neeraj Mistry', 'Male', '2009-05-04', NULL, 'Ravi Mistry', 'ravimistry41@example.com', NULL, '2026-03-24 08:38:40', '9392550987', 1, NULL, 'B+', '442789636133', '9870477141', 'Ravi Mistry', '9392550987', 'Shweta Mistry', '9444580417', '276 Shastri Nagar, Hyderabad', 'Ravi Mistry', 'Father', '9392550987', '276 Shastri Nagar, Hyderabad', 'Christian', 'General', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-06', 'Approved', 'Class 11', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 398, NULL, NULL, NULL, NULL, 17, '276 Shastri Nagar, Hyderabad', '9870477141', 'student_285', 'student285@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka');
INSERT INTO `students` (`id`, `admission_no`, `student_name`, `gender`, `dob`, `class`, `parent_name`, `parent_email`, `photo`, `created_at`, `parent_phone`, `is_active`, `application_id`, `blood_group`, `aadhaar_number`, `mobile_number`, `father_name`, `father_mobile`, `mother_name`, `mother_mobile`, `parents_address`, `guardian_name`, `relation`, `guardian_mobile`, `guardian_address`, `religion`, `caste_category`, `mother_tongue`, `has_medical_condition`, `medical_condition_desc`, `has_disability`, `disability_desc`, `has_allergies`, `allergies_desc`, `previous_schooling_status`, `previous_class`, `previous_school_name`, `previous_board`, `year_of_passing`, `previous_school`, `address`, `guardian_details`, `admission_date`, `status`, `class_applied`, `student_photo`, `user_id`, `class_id`, `section_id`, `parent_id`, `admission_number`, `age`, `present_address`, `student_mobile`, `username`, `email`, `password`) VALUES
(316, 'ADM-2026-0296', 'Krishna Bose', 'Male', '2009-08-12', NULL, 'Karan Bose', 'karanbose26@example.com', NULL, '2026-03-24 08:38:40', '9186788760', 1, NULL, 'A-', '941262338703', '9135151123', 'Karan Bose', '9186788760', 'Divya Bose', '9251096275', '796 Civil Lines, Delhi', 'Karan Bose', 'Father', '9186788760', '796 Civil Lines, Delhi', 'Christian', 'ST', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-02', 'Approved', 'Class 11', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 399, NULL, NULL, NULL, NULL, 17, '796 Civil Lines, Delhi', '9135151123', 'student_286', 'student286@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(317, 'ADM-2026-0297', 'Vijay Tiwari', 'Male', '2009-08-28', NULL, 'Abhishek Tiwari', 'abhishektiwari81@example.com', NULL, '2026-03-24 08:38:40', '9113303354', 1, NULL, 'O+', '619542098039', '9533282389', 'Abhishek Tiwari', '9113303354', 'Sunita Tiwari', '9149968562', '235 Gandhi Nagar, Hyderabad', 'Abhishek Tiwari', 'Father', '9113303354', '235 Gandhi Nagar, Hyderabad', 'Christian', 'OBC-B', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-25', 'Approved', 'Class 11', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 400, NULL, NULL, NULL, NULL, 17, '235 Gandhi Nagar, Hyderabad', '9533282389', 'student_287', 'student287@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(318, 'ADM-2026-0298', 'Manoj Bhat', 'Male', '2009-04-23', NULL, 'Aditya Bhat', 'adityabhat32@example.com', NULL, '2026-03-24 08:38:40', '9487629806', 1, NULL, 'A+', '213779753729', '9614207277', 'Aditya Bhat', '9487629806', 'Fatima Bhat', '9285574284', '615 Station Road, Chennai', 'Aditya Bhat', 'Father', '9487629806', '615 Station Road, Chennai', 'Christian', 'OBC-A', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-25', 'Approved', 'Class 11', 'uploads/students/stu_1772563030.png', 401, NULL, NULL, NULL, NULL, 17, '615 Station Road, Chennai', '9614207277', 'student_288', 'student288@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(319, 'ADM-2026-0299', 'Vivaan Singh', 'Male', '2009-10-05', NULL, 'Vikas Singh', 'vikassingh25@example.com', NULL, '2026-03-24 08:38:40', '9379762353', 1, NULL, 'A+', '309121949402', '9730922243', 'Vikas Singh', '9379762353', 'Aakanksha Singh', '9684629350', '208 MG Road, Bangalore', 'Vikas Singh', 'Father', '9379762353', '208 MG Road, Bangalore', 'Hindu', 'OBC-A', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-21', 'Approved', 'Class 11', 'uploads/students/1772898928_2_1644572849.jpg', 402, NULL, NULL, NULL, NULL, 17, '208 MG Road, Bangalore', '9730922243', 'student_289', 'student289@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(320, 'ADM-2026-0300', 'Aarav Deshmukh', 'Male', '2009-02-25', NULL, 'Sumit Deshmukh', 'sumitdeshmukh98@example.com', NULL, '2026-03-24 08:38:40', '9384504282', 1, NULL, 'B+', '209076533454', '9959328107', 'Sumit Deshmukh', '9384504282', 'Shweta Deshmukh', '9414887151', '775 MG Road, Pune', 'Sumit Deshmukh', 'Father', '9384504282', '775 MG Road, Pune', 'Islam', 'General', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Class 11', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 403, NULL, NULL, NULL, NULL, 17, '775 MG Road, Pune', '9959328107', 'student_290', 'student290@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(321, 'ADM-2026-0301', 'Riya Tiwari', 'Female', '2009-02-14', NULL, 'Rahul Tiwari', 'rahultiwari62@example.com', NULL, '2026-03-24 08:38:40', '9328230173', 1, NULL, 'AB+', '119971995438', '9290115406', 'Rahul Tiwari', '9328230173', 'Diya Tiwari', '9756733429', '476 MG Road, Hyderabad', 'Rahul Tiwari', 'Father', '9328230173', '476 MG Road, Hyderabad', 'Islam', 'OBC-A', 'Marathi', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Class 11', 'uploads/students/stu_1772565595.png', 404, NULL, NULL, NULL, NULL, 17, '476 MG Road, Hyderabad', '9290115406', 'student_291', 'student291@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(322, 'ADM-2026-0302', 'Preeti Gupta', 'Female', '2009-06-11', NULL, 'Vivaan Gupta', 'vivaangupta46@example.com', NULL, '2026-03-24 08:38:40', '9192573024', 1, NULL, 'A+', '448183192050', '9508734150', 'Vivaan Gupta', '9192573024', 'Fatima Gupta', '9342968694', '344 Gandhi Nagar, Kolkata', 'Vivaan Gupta', 'Father', '9192573024', '344 Gandhi Nagar, Kolkata', 'Hindu', 'OBC-A', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Class 11', 'uploads/students/1772898928_2_1644572849.jpg', 405, NULL, NULL, NULL, NULL, 17, '344 Gandhi Nagar, Kolkata', '9508734150', 'student_292', 'student292@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(323, 'ADM-2026-0303', 'Preeti Bhat', 'Female', '2009-02-19', NULL, 'Rohan Bhat', 'rohanbhat91@example.com', NULL, '2026-03-24 08:38:40', '9619820727', 1, NULL, 'AB-', '801094858089', '9759772426', 'Rohan Bhat', '9619820727', 'Sneha Bhat', '9148074876', '136 Shastri Nagar, Bangalore', 'Rohan Bhat', 'Father', '9619820727', '136 Shastri Nagar, Bangalore', 'Hindu', 'ST', 'English', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-09', 'Approved', 'Class 11', 'uploads/students/1772898928_20_images13.jpg', 406, NULL, NULL, NULL, NULL, 17, '136 Shastri Nagar, Bangalore', '9759772426', 'student_293', 'student293@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(324, 'ADM-2026-0304', 'Sunita Bose', 'Female', '2009-11-15', NULL, 'Vikram Bose', 'vikrambose54@example.com', NULL, '2026-03-24 08:38:40', '9116181391', 1, NULL, 'AB+', '811970593342', '9301923818', 'Vikram Bose', '9116181391', 'Kavita Bose', '9660610393', '674 MG Road, Pune', 'Vikram Bose', 'Father', '9116181391', '674 MG Road, Pune', 'Christian', 'OBC-A', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-19', 'Approved', 'Class 11', 'uploads/students/1772898928_7_8360f6e8e6167d545b0c34de7490cc1e.jpg', 407, NULL, NULL, NULL, NULL, 17, '674 MG Road, Pune', '9301923818', 'student_294', 'student294@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(325, 'ADM-2026-0305', 'Neha Mistry', 'Female', '2009-06-05', NULL, 'Rohan Mistry', 'rohanmistry20@example.com', NULL, '2026-03-24 08:38:40', '9882041709', 1, NULL, 'A+', '984710304595', '9533617529', 'Rohan Mistry', '9882041709', 'Priya Mistry', '9821014983', '866 Gandhi Nagar, Bangalore', 'Rohan Mistry', 'Father', '9882041709', '866 Gandhi Nagar, Bangalore', 'Hindu', 'OBC-B', 'Urdu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-06', 'Approved', 'Class 11', 'uploads/students/stu_1772563518.png', 408, NULL, NULL, NULL, NULL, 17, '866 Gandhi Nagar, Bangalore', '9533617529', 'student_295', 'student295@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(326, 'ADM-2026-0306', 'Priya Chatterjee', 'Female', '2009-02-09', NULL, 'Abhishek Chatterjee', 'abhishekchatterjee78@example.com', NULL, '2026-03-24 08:38:40', '9163607303', 1, NULL, 'B+', '271618628654', '9595639263', 'Abhishek Chatterjee', '9163607303', 'Kavita Chatterjee', '9347037158', '331 Station Road, Kolkata', 'Abhishek Chatterjee', 'Father', '9163607303', '331 Station Road, Kolkata', 'Hindu', 'OBC-A', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-01', 'Approved', 'Class 11', 'uploads/students/stu_1772563518.png', 409, NULL, NULL, NULL, NULL, 17, '331 Station Road, Kolkata', '9595639263', 'student_296', 'student296@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(327, 'ADM-2026-0307', 'Divya Sen', 'Female', '2009-10-04', NULL, 'Vikrant Sen', 'vikrantsen47@example.com', NULL, '2026-03-24 08:38:40', '9912640032', 1, NULL, 'A+', '153457766445', '9143783552', 'Vikrant Sen', '9912640032', 'Swati Sen', '9726695800', '659 Gandhi Nagar, Hyderabad', 'Vikrant Sen', 'Father', '9912640032', '659 Gandhi Nagar, Hyderabad', 'Hindu', 'OBC-B', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-21', 'Approved', 'Class 11', 'uploads/students/1772898928_17_images10.jpg', 410, NULL, NULL, NULL, NULL, 17, '659 Gandhi Nagar, Hyderabad', '9143783552', 'student_297', 'student297@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(328, 'ADM-2026-0308', 'Sonia Menon', 'Female', '2009-11-28', NULL, 'Rajesh Menon', 'rajeshmenon65@example.com', NULL, '2026-03-24 08:38:40', '9612242416', 1, NULL, 'O-', '320694824178', '9190282588', 'Rajesh Menon', '9612242416', 'Sunita Menon', '9480308905', '556 Shastri Nagar, Mumbai', 'Rajesh Menon', 'Father', '9612242416', '556 Shastri Nagar, Mumbai', 'Christian', 'SC', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-27', 'Approved', 'Class 11', 'uploads/students/1772898928_9_ChatGPT-Image-Oct-20-2025-08_49_20-AM-300x300.png', 411, NULL, NULL, NULL, NULL, 17, '556 Shastri Nagar, Mumbai', '9190282588', 'student_298', 'student298@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(329, 'ADM-2026-0309', 'Ananya Yadav', 'Female', '2009-07-21', NULL, 'Sunil Yadav', 'sunilyadav42@example.com', NULL, '2026-03-24 08:38:40', '9626733758', 1, NULL, 'B-', '151583826663', '9614898593', 'Sunil Yadav', '9626733758', 'Meena Yadav', '9649811656', '669 Civil Lines, Hyderabad', 'Sunil Yadav', 'Father', '9626733758', '669 Civil Lines, Hyderabad', 'Islam', 'ST', 'Kannada', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-16', 'Approved', 'Class 11', 'uploads/students/1772898928_2_1644572849.jpg', 412, NULL, NULL, NULL, NULL, 17, '669 Civil Lines, Hyderabad', '9614898593', 'student_299', 'student299@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(330, 'ADM-2026-0310', 'Ishita Chowdhury', 'Female', '2009-11-10', NULL, 'Sanjay Chowdhury', 'sanjaychowdhury69@example.com', NULL, '2026-03-24 08:38:40', '9126673362', 1, NULL, 'B+', '710668188944', '9524269862', 'Sanjay Chowdhury', '9126673362', 'Simran Chowdhury', '9813876973', '43 Station Road, Hyderabad', 'Sanjay Chowdhury', 'Father', '9126673362', '43 Station Road, Hyderabad', 'Christian', 'General', 'Odia', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 10', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-06', 'Approved', 'Class 11', 'uploads/students/1772898928_3_360_F_1017466748_sPimgAiwEJECag85DWHsrufuLsugsh6b.jpg', 413, NULL, NULL, NULL, NULL, 17, '43 Station Road, Hyderabad', '9524269862', 'student_300', 'student300@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(331, 'ADM-2026-0311', 'Neeraj Pandey', 'Male', '2008-08-03', NULL, 'Anil Pandey', 'anilpandey92@example.com', NULL, '2026-03-24 08:38:40', '9153733262', 1, NULL, 'O+', '707798207960', '9638611500', 'Anil Pandey', '9153733262', 'Nidhi Pandey', '9589115842', '147 Civil Lines, Mumbai', 'Anil Pandey', 'Father', '9153733262', '147 Civil Lines, Mumbai', 'Hindu', 'ST', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-08', 'Approved', 'Class 12', 'uploads/students/1772898928_18_images11.jpg', 414, NULL, NULL, NULL, NULL, 18, '147 Civil Lines, Mumbai', '9638611500', 'student_301', 'student301@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(332, 'ADM-2026-0312', 'Amit Tiwari', 'Male', '2008-12-14', NULL, 'Aditya Tiwari', 'adityatiwari90@example.com', NULL, '2026-03-24 08:38:40', '9534536624', 1, NULL, 'A+', '417351101626', '9835830365', 'Aditya Tiwari', '9534536624', 'Riya Tiwari', '9142937843', '135 MG Road, Kolkata', 'Aditya Tiwari', 'Father', '9534536624', '135 MG Road, Kolkata', 'Hindu', 'OBC-B', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-04', 'Approved', 'Class 12', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 415, NULL, NULL, NULL, NULL, 18, '135 MG Road, Kolkata', '9835830365', 'student_302', 'student302@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(333, 'ADM-2026-0313', 'Vijay Banerjee', 'Male', '2008-07-19', NULL, 'Suresh Banerjee', 'sureshbanerjee86@example.com', NULL, '2026-03-24 08:38:40', '9473904989', 1, NULL, 'B+', '232691127886', '9738555257', 'Suresh Banerjee', '9473904989', 'Ayesha Banerjee', '9680741487', '271 MG Road, Delhi', 'Suresh Banerjee', 'Father', '9473904989', '271 MG Road, Delhi', 'Hindu', 'General', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-13', 'Approved', 'Class 12', 'uploads/students/1772898928_10_EeUI99bUcAMiRFa.jpg', 416, NULL, NULL, NULL, NULL, 18, '271 MG Road, Delhi', '9738555257', 'student_303', 'student303@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(334, 'ADM-2026-0314', 'Manoj Menon', 'Male', '2008-12-01', NULL, 'Neeraj Menon', 'neerajmenon29@example.com', NULL, '2026-03-24 08:38:40', '9366492813', 1, NULL, 'B+', '238379959274', '9885774559', 'Neeraj Menon', '9366492813', 'Nidhi Menon', '9307127839', '117 Shastri Nagar, Pune', 'Neeraj Menon', 'Father', '9366492813', '117 Shastri Nagar, Pune', 'Buddhist', 'General', 'Bengali', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-22', 'Approved', 'Class 12', 'uploads/students/stu_1772563518.png', 417, NULL, NULL, NULL, NULL, 18, '117 Shastri Nagar, Pune', '9885774559', 'student_304', 'student304@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(335, 'ADM-2026-0315', 'Sanjay Kulkarni', 'Male', '2008-08-28', NULL, 'Aarav Kulkarni', 'aaravkulkarni78@example.com', NULL, '2026-03-24 08:38:40', '9162212719', 1, NULL, 'O-', '410156308782', '9632517111', 'Aarav Kulkarni', '9162212719', 'Ananya Kulkarni', '9286270697', '804 Shastri Nagar, Bangalore', 'Aarav Kulkarni', 'Father', '9162212719', '804 Shastri Nagar, Bangalore', 'Buddhist', 'General', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-12', 'Approved', 'Class 12', 'uploads/students/1772898928_6_62889562-39E3-468B-BB6A-65FDE32796D4-b27bd6bce60e9960a63cedfeb8c29975.jpeg', 418, NULL, NULL, NULL, NULL, 18, '804 Shastri Nagar, Bangalore', '9632517111', 'student_305', 'student305@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(336, 'ADM-2026-0316', 'Anil Bhat', 'Male', '2008-05-17', NULL, 'Amit Bhat', 'amitbhat61@example.com', NULL, '2026-03-24 08:38:40', '9547257162', 1, NULL, 'A-', '539016726751', '9511910352', 'Amit Bhat', '9547257162', 'Shruti Bhat', '9576637304', '762 Shastri Nagar, Hyderabad', 'Amit Bhat', 'Father', '9547257162', '762 Shastri Nagar, Hyderabad', 'Islam', 'OBC-B', 'English', 0, NULL, 1, 'Mild hearing impairment', 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-02', 'Approved', 'Class 12', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 419, NULL, NULL, NULL, NULL, 18, '762 Shastri Nagar, Hyderabad', '9511910352', 'student_306', 'student306@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(337, 'ADM-2026-0317', 'Rajesh Tiwari', 'Male', '2008-08-28', NULL, 'Ramesh Tiwari', 'rameshtiwari94@example.com', NULL, '2026-03-24 08:38:40', '9947373849', 1, NULL, 'AB-', '347279397569', '9383759516', 'Ramesh Tiwari', '9947373849', 'Neha Tiwari', '9560352703', '856 Shastri Nagar, Delhi', 'Ramesh Tiwari', 'Father', '9947373849', '856 Shastri Nagar, Delhi', 'Buddhist', 'ST', 'Bengali', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-01', 'Approved', 'Class 12', 'uploads/students/1772898928_12_Passport-size-photo-Vivek-puri.jpg', 420, NULL, NULL, NULL, NULL, 18, '856 Shastri Nagar, Delhi', '9383759516', 'student_307', 'student307@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(338, 'ADM-2026-0318', 'Ravi Das', 'Male', '2008-12-10', NULL, 'Vishal Das', 'vishaldas22@example.com', NULL, '2026-03-24 08:38:40', '9213794134', 1, NULL, 'O+', '451695471023', '9743774089', 'Vishal Das', '9213794134', 'Priya Das', '9794380229', '168 Civil Lines, Pune', 'Vishal Das', 'Father', '9213794134', '168 Civil Lines, Pune', 'Christian', 'SC', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-25', 'Approved', 'Class 12', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 421, NULL, NULL, NULL, NULL, 18, '168 Civil Lines, Pune', '9743774089', 'student_308', 'student308@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(339, 'ADM-2026-0319', 'Rajesh Gupta', 'Male', '2008-03-20', NULL, 'Ravi Gupta', 'ravigupta77@example.com', NULL, '2026-03-24 08:38:40', '9361855550', 1, NULL, 'O-', '570662164752', '9410980823', 'Ravi Gupta', '9361855550', 'Ishita Gupta', '9738016078', '538 Shastri Nagar, Hyderabad', 'Ravi Gupta', 'Father', '9361855550', '538 Shastri Nagar, Hyderabad', 'Islam', 'General', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-02', 'Approved', 'Class 12', 'uploads/students/1772898928_2_1644572849.jpg', 422, NULL, NULL, NULL, NULL, 18, '538 Shastri Nagar, Hyderabad', '9410980823', 'student_309', 'student309@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(340, 'ADM-2026-0320', 'Deepak Dubey', 'Male', '2008-12-26', NULL, 'Vijay Dubey', 'vijaydubey64@example.com', NULL, '2026-03-24 08:38:40', '9532943862', 1, NULL, 'O+', '708727372487', '9438097618', 'Vijay Dubey', '9532943862', 'Ayesha Dubey', '9617102752', '801 Gandhi Nagar, Mumbai', 'Vijay Dubey', 'Father', '9532943862', '801 Gandhi Nagar, Mumbai', 'Buddhist', 'SC', 'Telugu', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-07', 'Approved', 'Class 12', 'uploads/students/1772898928_19_images12.jpg', 423, NULL, NULL, NULL, NULL, 18, '801 Gandhi Nagar, Mumbai', '9438097618', 'student_310', 'student310@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(341, 'ADM-2026-0321', 'Shweta Mukherjee', 'Female', '2008-06-26', NULL, 'Rohan Mukherjee', 'rohanmukherjee90@example.com', NULL, '2026-03-24 08:38:40', '9815942646', 1, NULL, 'A-', '686830413600', '9806319367', 'Rohan Mukherjee', '9815942646', 'Neha Mukherjee', '9488064346', '403 MG Road, Pune', 'Rohan Mukherjee', 'Father', '9815942646', '403 MG Road, Pune', 'Islam', 'OBC-B', 'Marathi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-22', 'Approved', 'Class 12', 'uploads/students/1772898928_12_Passport-size-photo-Vivek-puri.jpg', 424, NULL, NULL, NULL, NULL, 18, '403 MG Road, Pune', '9806319367', 'student_311', 'student311@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(342, 'ADM-2026-0322', 'Shweta Patel', 'Female', '2008-10-12', NULL, 'Amit Patel', 'amitpatel26@example.com', NULL, '2026-03-24 08:38:40', '9591550795', 1, NULL, 'AB+', '956040266144', '9403710534', 'Amit Patel', '9591550795', 'Nisha Patel', '9546739151', '496 Shastri Nagar, Mumbai', 'Amit Patel', 'Father', '9591550795', '496 Shastri Nagar, Mumbai', 'Buddhist', 'SC', 'Urdu', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-15', 'Approved', 'Class 12', 'uploads/students/1772898928_17_images10.jpg', 425, NULL, NULL, NULL, NULL, 18, '496 Shastri Nagar, Mumbai', '9403710534', 'student_312', 'student312@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(343, 'ADM-2026-0323', 'Rekha Pillai', 'Female', '2008-04-11', NULL, 'Vikram Pillai', 'vikrampillai83@example.com', NULL, '2026-03-24 08:38:40', '9705224192', 1, NULL, 'A-', '894362411612', '9156236491', 'Vikram Pillai', '9705224192', 'Preeti Pillai', '9439015684', '621 MG Road, Pune', 'Vikram Pillai', 'Father', '9705224192', '621 MG Road, Pune', 'Hindu', 'OBC-B', 'Marathi', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-10', 'Approved', 'Class 12', 'uploads/students/1772898928_11_PARLEEN-KAUR-BAGGA.png', 426, NULL, NULL, NULL, NULL, 18, '621 MG Road, Pune', '9156236491', 'student_313', 'student313@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(344, 'ADM-2026-0324', 'Meena Singh', 'Female', '2008-01-23', NULL, 'Aditya Singh', 'adityasingh74@example.com', NULL, '2026-03-24 08:38:40', '9400202081', 1, NULL, 'B+', '191327667979', '9330304027', 'Aditya Singh', '9400202081', 'Preeti Singh', '9360598817', '541 MG Road, Bangalore', 'Aditya Singh', 'Father', '9400202081', '541 MG Road, Bangalore', 'Christian', 'ST', 'Bengali', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-13', 'Approved', 'Class 12', 'uploads/students/stu_1772563518.png', 427, NULL, NULL, NULL, NULL, 18, '541 MG Road, Bangalore', '9330304027', 'student_314', 'student314@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(345, 'ADM-2026-0325', 'Meena Gupta', 'Female', '2008-11-14', NULL, 'Nitin Gupta', 'nitingupta44@example.com', NULL, '2026-03-24 08:38:40', '9572036584', 1, NULL, 'A-', '125185684002', '9989032616', 'Nitin Gupta', '9572036584', 'Nidhi Gupta', '9452704487', '113 Civil Lines, Delhi', 'Nitin Gupta', 'Father', '9572036584', '113 Civil Lines, Delhi', 'Islam', 'General', 'Hindi', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-02-23', 'Approved', 'Class 12', 'uploads/students/1772898928_13_a37be5b9709175f1527761157463ec38.jpg', 428, NULL, NULL, NULL, NULL, 18, '113 Civil Lines, Delhi', '9989032616', 'student_315', 'student315@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(346, 'ADM-2026-0326', 'Fatima Chowdhury', 'Female', '2008-12-09', NULL, 'Ramesh Chowdhury', 'rameshchowdhury40@example.com', NULL, '2026-03-24 08:38:40', '9455942581', 1, NULL, 'O-', '918133218849', '9323194107', 'Ramesh Chowdhury', '9455942581', 'Shweta Chowdhury', '9643729724', '739 Shastri Nagar, Mumbai', 'Ramesh Chowdhury', 'Father', '9455942581', '739 Shastri Nagar, Mumbai', 'Buddhist', 'OBC-A', 'Gujarati', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-13', 'Approved', 'Class 12', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 429, NULL, NULL, NULL, NULL, 18, '739 Shastri Nagar, Mumbai', '9323194107', 'student_316', 'student316@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(347, 'ADM-2026-0327', 'Riya Menon', 'Female', '2008-05-14', NULL, 'Amit Menon', 'amitmenon28@example.com', NULL, '2026-03-24 08:38:40', '9494834628', 1, NULL, 'B-', '878364102035', '9676318721', 'Amit Menon', '9494834628', 'Kavya Menon', '9673495452', '57 Shastri Nagar, Bangalore', 'Amit Menon', 'Father', '9494834628', '57 Shastri Nagar, Bangalore', 'Buddhist', 'ST', 'Telugu', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-10', 'Approved', 'Class 12', 'uploads/students/1772898928_4_360_F_757612374_09Q9dyxOKbynCiT3hMUyk3iEuoR1RgJy.jpg', 430, NULL, NULL, NULL, NULL, 18, '57 Shastri Nagar, Bangalore', '9676318721', 'student_317', 'student317@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(348, 'ADM-2026-0328', 'Swati Iyer', 'Female', '2008-03-03', NULL, 'Vishal Iyer', 'vishaliyer52@example.com', NULL, '2026-03-24 08:38:40', '9497089256', 1, NULL, 'O-', '307094719749', '9123218355', 'Vishal Iyer', '9497089256', 'Preeti Iyer', '9274796633', '722 MG Road, Delhi', 'Vishal Iyer', 'Father', '9497089256', '722 MG Road, Delhi', 'Hindu', 'SC', 'Gujarati', 1, 'Asthma', 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-17', 'Approved', 'Class 12', 'uploads/students/stu_1772563030.png', 431, NULL, NULL, NULL, NULL, 18, '722 MG Road, Delhi', '9123218355', 'student_318', 'student318@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(349, 'ADM-2026-0329', 'Pooja Gupta', 'Female', '2008-06-13', NULL, 'Neeraj Gupta', 'neerajgupta62@example.com', NULL, '2026-03-24 08:38:40', '9504852654', 1, NULL, 'B+', '873147262416', '9855575211', 'Neeraj Gupta', '9504852654', 'Ishita Gupta', '9762321551', '591 Station Road, Kolkata', 'Neeraj Gupta', 'Father', '9504852654', '591 Station Road, Kolkata', 'Islam', 'OBC-A', 'Tamil', 0, NULL, 0, NULL, 0, NULL, 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-13', 'Approved', 'Class 12', 'uploads/students/1772898928_5_4a5c2f2a828314d79432bb91afeb3ef3.jpg', 432, NULL, NULL, NULL, NULL, 18, '591 Station Road, Kolkata', '9855575211', 'student_319', 'student319@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka'),
(350, 'ADM-2026-0330', 'Ishita Pandey', 'Female', '2008-08-03', NULL, 'Deepak Pandey', 'deepakpandey72@example.com', NULL, '2026-03-24 08:38:40', '9950446534', 1, NULL, 'AB+', '199667123437', '9657189667', 'Deepak Pandey', '9950446534', 'Kavya Pandey', '9121177035', '694 Civil Lines, Pune', 'Deepak Pandey', 'Father', '9950446534', '694 Civil Lines, Pune', 'Christian', 'General', 'Urdu', 0, NULL, 0, NULL, 1, 'Peanut allergy', 'Passed from Previous School', 'Class 11', 'Previous Public School', 'CBSE', 2025, NULL, NULL, NULL, '2026-03-03', 'Approved', 'Class 12', 'uploads/students/1772898928_2_1644572849.jpg', 433, NULL, NULL, NULL, NULL, 18, '694 Civil Lines, Pune', '9657189667', 'student_320', 'student320@classschool.com', '$2y$10$Ie7OCBausDrtH90YFUWSX.dbFDLKgfDvgQUtYCSlXOSXkWcJ.uMka');

-- --------------------------------------------------------

--
-- Table structure for table `students_backup`
--

CREATE TABLE `students_backup` (
  `id` int(11) NOT NULL DEFAULT 0,
  `admission_no` varchar(50) DEFAULT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `parent_name` varchar(100) DEFAULT NULL,
  `parent_email` varchar(150) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `parent_phone` varchar(20) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT 1,
  `application_id` int(11) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `aadhaar_number` varchar(20) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `father_name` varchar(150) DEFAULT NULL,
  `father_mobile` varchar(20) DEFAULT NULL,
  `mother_name` varchar(150) DEFAULT NULL,
  `mother_mobile` varchar(20) DEFAULT NULL,
  `parents_address` text DEFAULT NULL,
  `guardian_name` varchar(150) DEFAULT NULL,
  `relation` varchar(100) DEFAULT NULL,
  `guardian_mobile` varchar(20) DEFAULT NULL,
  `guardian_address` text DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `caste_category` varchar(50) DEFAULT NULL,
  `mother_tongue` varchar(100) DEFAULT NULL,
  `has_medical_condition` tinyint(4) DEFAULT 0,
  `medical_condition_desc` text DEFAULT NULL,
  `has_disability` tinyint(4) DEFAULT 0,
  `disability_desc` text DEFAULT NULL,
  `has_allergies` tinyint(4) DEFAULT 0,
  `allergies_desc` text DEFAULT NULL,
  `previous_schooling_status` varchar(100) DEFAULT NULL,
  `previous_class` varchar(50) DEFAULT NULL,
  `previous_school_name` varchar(150) DEFAULT NULL,
  `previous_board` varchar(100) DEFAULT NULL,
  `year_of_passing` int(11) DEFAULT NULL,
  `previous_school` varchar(150) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `guardian_details` text DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `class_applied` varchar(50) DEFAULT NULL,
  `student_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_backup`
--

INSERT INTO `students_backup` (`id`, `admission_no`, `student_name`, `gender`, `dob`, `class`, `parent_name`, `parent_email`, `photo`, `created_at`, `parent_phone`, `is_active`, `application_id`, `blood_group`, `aadhaar_number`, `mobile_number`, `father_name`, `father_mobile`, `mother_name`, `mother_mobile`, `parents_address`, `guardian_name`, `relation`, `guardian_mobile`, `guardian_address`, `religion`, `caste_category`, `mother_tongue`, `has_medical_condition`, `medical_condition_desc`, `has_disability`, `disability_desc`, `has_allergies`, `allergies_desc`, `previous_schooling_status`, `previous_class`, `previous_school_name`, `previous_board`, `year_of_passing`, `previous_school`, `address`, `guardian_details`, `admission_date`, `status`, `class_applied`, `student_photo`) VALUES
(1, 'ADM-2026-0011', 'Michael Scott', 'Male', '2021-03-04', '1', NULL, 'marnie21@parent.com', NULL, '2026-03-04 11:49:34', '9876543000', 1, NULL, NULL, NULL, NULL, 'Marnie Scott', NULL, 'Marnie Scott Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dunder Mifflin Lane, Scranton PA 18504', 'Marnie Scott (Primary Guardian)', '2026-03-04', 'Rejected', '1', 'default_student.png'),
(2, NULL, 'Pam Beesly', 'Female', '2020-03-04', '2', NULL, 'william99@parent.com', NULL, '2026-03-04 11:49:34', '9876543001', 1, NULL, NULL, NULL, NULL, 'William Beesly', NULL, 'William Beesly Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dunder Mifflin Lane, Scranton PA 18504', 'William Beesly (Primary Guardian)', NULL, 'Pending', '2', 'default_student.png'),
(3, NULL, 'Jim Halpert', 'Male', '2019-03-04', '3', NULL, 'gerald73@parent.com', NULL, '2026-03-04 11:49:34', '9876543002', 1, NULL, NULL, NULL, NULL, 'Gerald Halpert', NULL, 'Gerald Halpert Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dunder Mifflin Lane, Scranton PA 18504', 'Gerald Halpert (Primary Guardian)', NULL, 'Pending', '3', 'default_student.png'),
(4, NULL, 'Dwight Schrute', 'Male', '2018-03-04', '4', NULL, 'ira86@parent.com', NULL, '2026-03-04 11:49:34', '9876543003', 1, NULL, NULL, NULL, NULL, 'Ira Schrute', NULL, 'Ira Schrute Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dunder Mifflin Lane, Scranton PA 18504', 'Ira Schrute (Primary Guardian)', NULL, 'Pending', '4', 'default_student.png'),
(5, NULL, 'Angela Martin', 'Female', '2017-03-04', '5', NULL, 'charles45@parent.com', NULL, '2026-03-04 11:49:34', '9876543004', 1, NULL, NULL, NULL, NULL, 'Charles Martin', NULL, 'Charles Martin Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dunder Mifflin Lane, Scranton PA 18504', 'Charles Martin (Primary Guardian)', NULL, 'Pending', '5', 'default_student.png'),
(6, 'ADM-2026-0006', 'Stanley Hudson', 'Male', '2016-03-04', '6', NULL, 'cynthia41@parent.com', NULL, '2026-03-04 11:49:34', '9876543005', 1, NULL, NULL, NULL, NULL, 'Cynthia Hudson', NULL, 'Cynthia Hudson Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dunder Mifflin Lane, Scranton PA 18504', 'Cynthia Hudson (Primary Guardian)', '2026-03-04', 'Approved', '6', 'default_student.png'),
(7, 'ADM-2026-0007', 'Phyllis Vance', 'Female', '2015-03-04', '7', NULL, 'bob64@parent.com', NULL, '2026-03-04 11:49:34', '9876543006', 1, NULL, NULL, NULL, NULL, 'Bob Vance', NULL, 'Bob Vance Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dunder Mifflin Lane, Scranton PA 18504', 'Bob Vance (Primary Guardian)', '2026-03-04', 'Approved', '7', 'default_student.png'),
(8, 'ADM-2026-0008', 'Kevin Malone', 'Male', '2014-03-04', '8', NULL, 'stacy98@parent.com', NULL, '2026-03-04 11:49:34', '9876543007', 1, NULL, NULL, NULL, NULL, 'Stacy Malone', NULL, 'Stacy Malone Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dunder Mifflin Lane, Scranton PA 18504', 'Stacy Malone (Primary Guardian)', '2026-03-04', 'Approved', '8', 'default_student.png'),
(9, 'ADM-2026-0009', 'Oscar Martinez', 'Male', '2013-03-04', '9', NULL, 'gil51@parent.com', NULL, '2026-03-04 11:49:34', '9876543008', 1, NULL, NULL, NULL, NULL, 'Gil Martinez', NULL, 'Gil Martinez Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dunder Mifflin Lane, Scranton PA 18504', 'Gil Martinez (Primary Guardian)', '2026-03-04', 'Approved', '9', 'default_student.png'),
(10, 'ADM-2026-0010', 'Kelly Kapoor', 'Female', '2012-03-04', '10', NULL, 'ravi11@parent.com', NULL, '2026-03-04 11:49:34', '9876543009', 1, NULL, NULL, NULL, NULL, 'Ravi Kapoor', NULL, 'Ravi Kapoor Mother', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dunder Mifflin Lane, Scranton PA 18504', 'Ravi Kapoor (Primary Guardian)', '2026-03-04', 'Approved', '10', 'default_student.png');

-- --------------------------------------------------------

--
-- Table structure for table `study_materials`
--

CREATE TABLE `study_materials` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `study_materials`
--

INSERT INTO `study_materials` (`id`, `title`, `description`, `file_path`, `class_id`, `subject_id`, `teacher_id`, `created_at`) VALUES
(1, 'gsfeygsd', 'gfdgsdfgsdfg', 'uploads/materials/1779033111_e65b6980eebb7c75.jpg', 3, 30, 436, '2026-05-17 15:51:51'),
(2, 'gtsrdgfd', 'gsdfg', 'uploads/materials/1779034976_0c9a14b291cee1b3.pdf', 3, 26, 436, '2026-05-17 16:22:56'),
(3, 'fvsdvsdf', 'vsdvsdvsdv', 'uploads/materials/1779035060_78a1c63c398ae883.jpg', 10, 110, 436, '2026-05-17 16:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `class_id`) VALUES
(1, 'Mathematics', 1),
(2, 'Science', 1),
(3, 'English', 1),
(4, 'Hindi', 1),
(5, 'Social Science', 1),
(6, 'EVS', 1),
(7, 'Computer Science', 1),
(8, 'General Knowledge', 1),
(9, 'Moral Science', 1),
(10, 'Drawing', 1),
(11, 'Music', 1),
(12, 'Mathematics', 2),
(13, 'Science', 2),
(14, 'English', 2),
(15, 'Hindi', 2),
(16, 'Social Science', 2),
(17, 'EVS', 2),
(18, 'Computer Science', 2),
(19, 'General Knowledge', 2),
(20, 'Moral Science', 2),
(21, 'Drawing', 2),
(22, 'Music', 2),
(23, 'Mathematics', 3),
(24, 'Science', 3),
(30, 'General Knowledge', 3),
(31, 'Moral Science', 3),
(32, 'Drawing', 3),
(33, 'Music', 3),
(34, 'Mathematics', 4),
(35, 'Science', 4),
(36, 'English', 4),
(37, 'Hindi', 4),
(38, 'Social Science', 4),
(39, 'EVS', 4),
(40, 'Computer Science', 4),
(41, 'General Knowledge', 4),
(42, 'Moral Science', 4),
(43, 'Drawing', 4),
(44, 'Music', 4),
(45, 'Mathematics', 5),
(46, 'Science', 5),
(47, 'English', 5),
(48, 'Hindi', 5),
(49, 'Social Science', 5),
(50, 'EVS', 5),
(51, 'Computer Science', 5),
(52, 'General Knowledge', 5),
(53, 'Moral Science', 5),
(54, 'Drawing', 5),
(55, 'Music', 5),
(56, 'Mathematics', 6),
(57, 'Science', 6),
(58, 'English', 6),
(59, 'Hindi', 6),
(60, 'Social Science', 6),
(61, 'EVS', 6),
(62, 'Computer Science', 6),
(63, 'General Knowledge', 6),
(64, 'Moral Science', 6),
(65, 'Drawing', 6),
(66, 'Music', 6),
(67, 'Mathematics', 7),
(68, 'Science', 7),
(69, 'English', 7),
(70, 'Hindi', 7),
(71, 'Social Science', 7),
(72, 'EVS', 7),
(73, 'Computer Science', 7),
(74, 'General Knowledge', 7),
(75, 'Moral Science', 7),
(76, 'Drawing', 7),
(77, 'Music', 7),
(78, 'Mathematics', 8),
(79, 'Science', 8),
(80, 'English', 8),
(81, 'Hindi', 8),
(82, 'Social Science', 8),
(83, 'EVS', 8),
(84, 'Computer Science', 8),
(85, 'General Knowledge', 8),
(86, 'Moral Science', 8),
(87, 'Drawing', 8),
(88, 'Music', 8),
(89, 'Mathematics', 9),
(90, 'Science', 9),
(91, 'English', 9),
(92, 'Hindi', 9),
(93, 'Social Science', 9),
(94, 'EVS', 9),
(95, 'Computer Science', 9),
(96, 'General Knowledge', 9),
(97, 'Moral Science', 9),
(98, 'Drawing', 9),
(99, 'Music', 9),
(100, 'Mathematics', 10),
(101, 'Science', 10),
(102, 'English', 10),
(103, 'Hindi', 10),
(104, 'Social Science', 10),
(105, 'EVS', 10),
(106, 'Computer Science', 10),
(107, 'General Knowledge', 10),
(109, 'Drawing', 10),
(110, 'Music', 10),
(111, 'Mathematics', 11),
(112, 'Science', 11),
(113, 'English', 11),
(114, 'Hindi', 11),
(115, 'Social Science', 11),
(116, 'EVS', 11),
(117, 'Computer Science', 11),
(118, 'General Knowledge', 11),
(119, 'Moral Science', 11),
(120, 'Drawing', 11),
(121, 'Music', 11),
(122, 'Mathematics', 12),
(123, 'Science', 12),
(124, 'English', 12),
(125, 'Hindi', 12),
(126, 'Social Science', 12),
(127, 'EVS', 12),
(128, 'Computer Science', 12),
(129, 'General Knowledge', 12),
(130, 'Moral Science', 12),
(131, 'Drawing', 12),
(132, 'Music', 12),
(133, 'Mathematics', 13),
(134, 'Science', 13),
(135, 'English', 13),
(136, 'Hindi', 13),
(137, 'Social Science', 13),
(138, 'EVS', 13),
(139, 'Computer Science', 13),
(140, 'General Knowledge', 13),
(141, 'Moral Science', 13),
(142, 'Drawing', 13),
(143, 'Music', 13),
(144, 'Mathematics', 14),
(145, 'Science', 14),
(146, 'English', 14),
(147, 'Hindi', 14),
(148, 'Social Science', 14),
(149, 'EVS', 14),
(150, 'Computer Science', 14),
(151, 'General Knowledge', 14),
(152, 'Moral Science', 14),
(153, 'Drawing', 14),
(154, 'Music', 14),
(155, 'Mathematics', 15),
(156, 'Science', 15),
(157, 'English', 15),
(158, 'Hindi', 15),
(159, 'Social Science', 15),
(160, 'EVS', 15),
(161, 'Computer Science', 15),
(162, 'General Knowledge', 15),
(163, 'Moral Science', 15),
(164, 'Drawing', 15),
(165, 'Music', 15),
(166, 'Mathematics', 16),
(167, 'Science', 16),
(168, 'English', 16),
(169, 'Hindi', 16),
(170, 'Social Science', 16),
(171, 'EVS', 16),
(172, 'Computer Science', 16),
(173, 'General Knowledge', 16),
(174, 'Moral Science', 16),
(175, 'Drawing', 16),
(176, 'Music', 16),
(177, 'Mathematics', 17);

-- --------------------------------------------------------

--
-- Table structure for table `super_admin_settings`
--

CREATE TABLE `super_admin_settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `super_admin_settings`
--

INSERT INTO `super_admin_settings` (`id`, `setting_key`, `setting_value`, `updated_at`) VALUES
(1, 'school_logo', 'logo_1772748291.png', '2026-03-05 22:04:51'),
(2, 'school_favicon', 'favicon_1772549847.png', '2026-03-03 14:57:27'),
(3, 'school_name', 'ORANGE LAKE SCHOOL', '2026-03-03 14:57:27'),
(4, 'school_tagline', 'Excellence in Education', '2026-03-03 14:15:16'),
(5, 'school_code', 'SCH-001', '2026-03-03 14:15:16'),
(6, 'school_board', 'CBSE', '2026-03-03 14:15:16'),
(7, 'school_registration_number', '123456789', '2026-03-03 14:15:16'),
(8, 'school_email', 'talivsir@gmail.com', '2026-03-10 07:28:18'),
(9, 'school_phone', '+1234567890', '2026-03-03 14:15:16'),
(10, 'school_website', 'www.school.com', '2026-03-03 14:15:16'),
(11, 'school_address', '123 Main St, City, Country', '2026-03-03 14:15:16'),
(12, 'academic_year', '2023-2024', '2026-03-03 14:15:16'),
(13, 'academic_start_date', '2023-04-01', '2026-03-03 14:15:16'),
(14, 'academic_end_date', '2024-03-31', '2026-03-03 14:15:16'),
(15, 'grade_system', 'Percentage', '2026-03-03 14:15:16'),
(16, 'passing_percentage', '40', '2026-03-03 14:15:16'),
(17, 'attendance_type', 'Daily', '2026-03-03 14:15:16'),
(18, 'timezone', 'Asia/Kolkata', '2026-03-03 14:57:46'),
(19, 'currency', 'INR', '2026-03-03 14:57:46'),
(20, 'date_format', 'Y-m-d', '2026-03-03 14:15:16'),
(21, 'language', 'English', '2026-03-03 14:15:16'),
(22, 'theme', 'Light', '2026-03-03 14:54:02'),
(23, 'maintenance_mode', '0', '2026-05-13 16:55:26'),
(24, 'two_factor_auth', '0', '2026-03-03 14:15:16'),
(25, 'session_timeout', '120', '2026-03-03 14:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `school_name` varchar(150) DEFAULT 'School Management System',
  `school_logo` varchar(255) DEFAULT NULL,
  `school_address` text DEFAULT NULL,
  `school_phone` varchar(50) DEFAULT NULL,
  `school_email` varchar(150) DEFAULT NULL,
  `school_tagline` varchar(255) DEFAULT NULL,
  `school_code` varchar(100) DEFAULT NULL,
  `school_board` varchar(100) DEFAULT NULL,
  `school_registration_number` varchar(100) DEFAULT NULL,
  `school_website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `school_name`, `school_logo`, `school_address`, `school_phone`, `school_email`, `school_tagline`, `school_code`, `school_board`, `school_registration_number`, `school_website`) VALUES
(1, 'Evergreen High School', NULL, '45 Education Road, Knowledge Park, Cityville - 123456', '+91-9876543210', 'contact@evergreenhigh.edu', 'Empowering Minds, Shaping Futures', 'EHS-101', 'CBSE', 'REG-CBSE-998877', 'www.evergreenhigh.edu');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `teacher_id` varchar(50) DEFAULT NULL,
  `full_name` varchar(150) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `aadhaar` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `experience_years` int(11) DEFAULT NULL,
  `previous_school` varchar(255) DEFAULT NULL,
  `year_of_joining` year(4) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `employment_type` varchar(50) DEFAULT NULL,
  `assigned_subject` varchar(100) DEFAULT NULL,
  `assigned_class` varchar(50) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(50) DEFAULT 'subject_teacher',
  `class_teacher_of` varchar(50) DEFAULT NULL,
  `assigned_subject_ids` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `teacher_id`, `full_name`, `gender`, `dob`, `age`, `blood_group`, `aadhaar`, `phone`, `email`, `present_address`, `permanent_address`, `photo`, `qualification`, `specialization`, `experience_years`, `previous_school`, `year_of_joining`, `designation`, `employment_type`, `assigned_subject`, `assigned_class`, `username`, `password`, `status`, `created_at`, `role`, `class_teacher_of`, `assigned_subject_ids`) VALUES
(1, 'TCH-2026-001', 'Kiara Yadav', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500001', 'teacher1_english@school.com', '123 School Avenue', '123 School Avenue', 'teacher_1_1772944771.jpeg', 'M.Ed', 'English', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'English', 'Class 1', 'teacher1_english', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(2, 'TCH-2026-002', 'Meera Das', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500002', 'teacher2_hindi@school.com', '123 School Avenue', '123 School Avenue', 'teacher_2_1772944771.jpg', 'M.Ed', 'Hindi', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'Hindi', 'Class 2', 'teacher2_hindi', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(4, 'TCH-2026-004', 'Ishaan Yadav', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500004', 'teacher4_evs@school.com', '123 School Avenue', '123 School Avenue', 'teacher_4_1772944771.png', 'M.Ed', 'EVS', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'EVS', 'Class 4', 'teacher4_evs', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(5, 'TCH-2026-005', 'Krishna Kapoor', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500005', 'teacher5_science@school.com', '123 School Avenue', '123 School Avenue', 'teacher_5_1772944771.jpg', 'M.Ed', 'Science', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'Science', 'Class 5', 'teacher5_science', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(6, 'TCH-2026-006', 'Rahul Khan', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500006', 'teacher6_socialscience@school.com', '123 School Avenue', '123 School Avenue', 'teacher_6_1772944771.jpg', 'M.Ed', 'Social Science', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'Social Science', 'Class 6', 'teacher6_socialscience', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(7, 'TCH-2026-007', 'Nitin Chauhan', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500007', 'teacher7_computerscience@school.com', '123 School Avenue', '123 School Avenue', 'teacher_7_1772944771.jpg', 'M.Ed', 'Computer Science', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'Computer Science', 'Class 7', 'teacher7_computerscience', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(8, 'TCH-2026-008', 'Sunil Trivedi', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500008', 'teacher8_generalknowledge@school.com', '123 School Avenue', '123 School Avenue', 'teacher_8_1772944771.jpg', 'M.Ed', 'General Knowledge', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'General Knowledge', 'Class 8', 'teacher8_generalknowledge', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(9, 'TCH-2026-009', 'Rajesh Verma', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500009', 'teacher9_moralscience@school.com', '123 School Avenue', '123 School Avenue', 'teacher_9_1772944771.jpg', 'M.Ed', 'Moral Science', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'Moral Science', 'Class 9', 'teacher9_moralscience', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(10, 'TCH-2026-010', 'Karan Kapoor', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500010', 'teacher10_drawing@school.com', '123 School Avenue', '123 School Avenue', 'teacher_10_1772944771.jpg', 'M.Ed', 'Drawing', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'Drawing', 'LKG', 'teacher10_drawing', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(11, 'TCH-2026-011', 'Aavya Yadav', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500011', 'teacher11_music@school.com', '123 School Avenue', '123 School Avenue', 'teacher_11_1772944771.jpg', 'M.Ed', 'Music', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'Music', 'UKG', 'teacher11_music', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(12, 'TCH-2026-012', 'Ayaat Sharma', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500012', 'teacher12_physicaleducation@school.com', '123 School Avenue', '123 School Avenue', 'teacher_12_1772944771.jpg', 'M.Ed', 'Physical Education', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'Physical Education', 'Class 10', 'teacher12_physicaleducation', '$2y$10$vc3En2pQHV0Zt9TJEZPfyeQhpLJBa9IK6LaNPHPNMZKy1E1nUAHYu', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(13, 'TCH-2026-013', 'Saanvi Sharma', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500013', 'teacher13_physics@school.com', '123 School Avenue', '123 School Avenue', 'teacher_13_1772944771.jpg', 'M.Ed', 'Physics', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'Physics', 'Class 11', 'teacher13_physics', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(14, 'TCH-2026-014', 'Vikram Garg', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500014', 'teacher14_chemistry@school.com', '123 School Avenue', '123 School Avenue', 'teacher_14_1772944771.jpg', 'M.Ed', 'Chemistry', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'Chemistry', 'Class 12', 'teacher14_chemistry', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(15, 'TCH-2026-015', 'Amit Reddy', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500015', 'teacher15_biology@school.com', '123 School Avenue', '123 School Avenue', 'teacher_15_1772944771.jpg', 'M.Ed', 'Biology', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'Biology', 'Class 11', 'teacher15_biology', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(16, 'TCH-2026-016', 'Karan Garg', 'Female', '1990-01-01', 35, 'O+', '123412341234', '9876500016', 'teacher16_economics@school.com', '123 School Avenue', '123 School Avenue', 'teacher_16_1772944771.png', 'M.Ed', 'Economics', 5, 'Previous High School', '2020', 'Subject Teacher', 'Full Time', 'Economics', 'Class 12', 'teacher16_economics', '$2y$10$OBNO38WWKhuCrXmjsJ/NyevaIytRuQnPd4jZ.IjcGcOPXZAan7fM2', 'Approved', '2026-03-05 07:18:15', 'subject_teacher', NULL, NULL),
(18, 'TCH-2026-CT01', 'Ishani Menon', 'Male', '1985-05-15', 40, 'O+', '123456780001', '9876543210', 'ct_pre_nursery@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_18_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Assistant Teacher', 'Full Time', 'English', 'Pre-Nursery', 'ct_ishani_menon', '$2y$10$WFqTU3tRS/rxbkXQWECbgOgjMTsJqoFC56973zrjgbZcjOmC7K/Mi', 'Pending', '2026-03-05 17:16:07', 'class_teacher', 'Pre-Nursery', NULL),
(19, 'TCH-2026-CT02', 'Ishaan Deshmukh', 'Female', '1985-05-15', 40, 'O+', '123456780002', '9876500002', 'ct_nursery@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_19_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Class Teacher', 'Full Time', 'General', 'Nursery', 'ct_nursery', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Approved', '2026-03-05 17:16:07', 'class_teacher', 'Nursery', NULL),
(20, 'TCH-2026-CT03', 'Sanjay Das', 'Male', '1985-05-15', 40, 'O+', '123456780003', '9876500003', 'ct_lkg@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_20_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Class Teacher', 'Full Time', 'General', 'LKG', 'ct_lkg', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Approved', '2026-03-05 17:16:07', 'class_teacher', 'LKG', NULL),
(21, 'TCH-2026-CT04', 'Sai Iyer', 'Female', '1985-05-15', 40, 'O+', '123456780004', '9876500004', 'ct_ukg@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_21_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Class Teacher', 'Full Time', 'General', 'UKG', 'ct_ukg', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Approved', '2026-03-05 17:16:07', 'class_teacher', 'UKG', NULL),
(22, 'TCH-2026-CT05', 'Divya Gupta', 'Female', '1985-05-15', 40, 'O+', '123456780005', '9876500005', 'ct_class_1@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_22_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Assistant Teacher', 'Full Time', 'English', 'Class 1', 'ct_class_1', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Approved', '2026-03-05 17:16:07', 'subject_teacher', NULL, NULL),
(23, 'TCH-2026-CT06', 'Advika Mehta', 'Female', '1985-05-15', 40, 'O+', '123456780006', '9876500006', 'ct_class_2@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_23_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Assistant Teacher', 'Full Time', 'Mathematics,General Knowledge,Moral Science,EVS', 'Class 10,Class 3', 'ct_class_2', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Approved', '2026-03-05 17:16:07', 'subject_teacher', NULL, '30,23,31,83'),
(24, 'TCH-2026-CT07', 'Advika Bhat', 'Male', '1985-05-15', 40, 'O+', '123456780007', '9876500007', 'ct_class_3@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_24_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Class Teacher', 'Full Time', 'General', 'Class 3', 'ct_class_3', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Approved', '2026-03-05 17:16:07', 'subject_teacher', NULL, NULL),
(25, 'TCH-2026-CT08', 'Diya Yadav', 'Female', '1985-05-15', 40, 'O+', '123456780008', '9876500008', 'ct_class_4@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_25_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Class Teacher', 'Full Time', 'General', 'Class 4', 'ct_class_4', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Approved', '2026-03-05 17:16:07', 'subject_teacher', NULL, NULL),
(26, 'TCH-2026-CT09', 'Arjun Garg', 'Male', '1985-05-15', 40, 'O+', '123456780009', '9876500009', 'ct_class_5@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_26_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Class Teacher', 'Full Time', 'General', 'Class 5', 'ct_class_5', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Approved', '2026-03-05 17:16:07', 'class_teacher', 'Class 5', NULL),
(27, 'TCH-2026-CT10', 'Ishani Joshi', 'Female', '1985-05-15', 40, 'O+', '123456780010', '9876500010', 'ct_class_6@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_27_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Class Teacher', 'Full Time', 'General', 'Class 6', 'ct_class_6', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Pending', '2026-03-05 17:16:07', 'class_teacher', 'Class 6', NULL),
(28, 'TCH-2026-CT11', 'Vikram Mehta', 'Male', '1985-05-15', 40, 'O+', '123456780011', '9876500011', 'ct_class_7@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_28_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Class Teacher', 'Full Time', 'General', 'Class 7', 'ct_class_7', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Approved', '2026-03-05 17:16:07', 'class_teacher', 'Class 7', NULL),
(29, 'TCH-2026-CT12', 'Arjun Gupta', 'Female', '1985-05-15', 40, 'O+', '123456780012', '9876500012', 'ct_class_8@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_29_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Class Teacher', 'Full Time', 'General', 'Class 8', 'ct_class_8', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Approved', '2026-03-05 17:16:07', 'class_teacher', 'Class 8', NULL),
(30, 'TCH-2026-CT13', 'Rajesh Bhat', 'Male', '1985-05-15', 40, 'O+', '123456780013', '9876500013', 'ct_class_9@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_30_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Class Teacher', 'Full Time', 'General', 'Class 9', 'ct_class_9', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Approved', '2026-03-05 17:16:07', 'class_teacher', 'Class 9', NULL),
(31, 'TCH-2026-CT14', 'Krishna Menon', 'Female', '1985-05-15', 40, 'O+', '123456780014', '9876500014', 'ct_class_10@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_31_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Assistant Teacher', 'Full Time', 'English', 'Class 10', 'ct_class_10', '$2y$10$vJ25NqlpqUV22h2JWt2IfelR7Qt88PeCSQLo35o2Ty50KVZNhXk0W', 'Deleted', '2026-03-05 17:16:07', 'subject_teacher', NULL, NULL),
(32, 'TCH-2026-CT15', 'Akash Singh', 'Male', '1985-05-15', 40, 'O+', '123456780015', '9876500015', 'ct_class_11@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_32_1772944771.jpg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Class Teacher', 'Full Time', 'General', 'Class 11', 'ct_class_11', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Approved', '2026-03-05 17:16:07', 'class_teacher', 'Class 11', NULL),
(33, 'TCH-2026-CT16', 'Akash Mehta', 'Female', '1985-05-15', 40, 'O+', '123456780016', '9876500016', 'ct_class_12@school.com', '123 School Lane, City', '123 School Lane, City', 'teacher_33_1772944771.jpeg', 'M.A., B.Ed.', 'Senior Educator', 10, 'Global Academy', '2024', 'Class Teacher', 'Full Time', 'General', 'Class 12', 'ct_class_12', '$2y$10$eE8DaXAq3.l7QuMzHhYVv.7JIdKxsc84GpC88yN7FKfi8Iaa1tn2S', 'Approved', '2026-03-05 17:16:07', 'class_teacher', 'Class 12', NULL),
(34, 'TCH-2026-007', 'Abdul Barique Ansari', 'Male', '1998-06-08', 28, 'o+', '859725642587', '52486525845', 'abdulbariqueansari720@gmail.com', 'g edjkuhsdfgdsh', 'hgsdfhsdfhds', '1778690874_6a04ab3a38702.jpg', 'ghdsfh', 'fdhsdfh', 2, 'fhsdfh', '2012', 'Senior Teacher', 'Part Time', 'English', 'Class 9', 'abdul', '$2y$10$s1NMxPdMswyl.7RpMEf1EO06bRfhivCDnbzYz.isPh3rMYr5ltblq', 'Deleted', '2026-05-13 16:47:54', 'subject_teacher', NULL, NULL),
(35, 'sdfvsd-hfgh-hg', 'fasdfg', 'Male', '2026-05-11', 56, 'jdg', '67876786', '45645634563', 'alcatrazn9@gmail.com', 'fvsdg', 'sgsdg', '1778697372_6a04c49c7b9f7.jpg', 'dsfv', 'sfsdfs', 423, 'fgbfsdgbfdg', '0000', 'Assistant Teacher', 'Full Time', 'English', 'Pre-Nursery', 'tinku', '$2y$10$uPwbggsVhekkZe8W.pzUYenRY7aJxaaSCLvm.iRLmAShF5QUa5WCm', 'Pending', '2026-05-13 18:36:12', 'subject_teacher', NULL, NULL),
(36, 'TCH-2026-CT142', 'Abdul Barique Ansari', 'Male', '1998-10-29', 22, 'O+', '465845845465', '9876500014', 'abdulbariqueansari2@gmail.com', 'dfsdf', 'sdfsdf', '1779019968_6a09b0c07a753.jpg', 'fsd', 'Senior Educator', 1, 'Global Academy', '2024', 'Assistant Teacher', 'Full Time', 'English,Hindi,Mathematics,EVS,Science,Computer Science', 'Class 5,Class 6,Class 7,Class 8,Class 9,Class 10', 'teacher111@school.com', '$2y$10$9bq96O5q2B7sp2ouqBFNBe1eoU.kQDMncfQ1zTlGra.Ms9CXW7oU2', 'Approved', '2026-05-17 12:12:48', 'class_teacher', 'Class 10', NULL),
(37, 'TCH-34-43', 'kamaal', 'Male', '1994-04-06', 30, 'o+', '874528395872', '453463646346', 'kamaal@school.com', 'gdg', 'gsgsdg', '1779078456_6a0a9538e04fd.jpg', 'fds', 'dfs', 56, 'fdsaf', '2033', 'Assistant Teacher', 'Full Time', '', '', 'kamaal', '$2y$10$YdNs0D4quJ7mtRVKVpOnGOJUs9HLKTqKB6F4FD4yrBNOKy1MBDdlC', 'Approved', '2026-05-18 04:27:37', 'class_teacher', 'Class 3,Class 4', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reset_token` varchar(100) DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `profile_photo`, `email`, `password`, `reset_token`, `reset_expires`, `role_id`, `phone`, `address`, `dob`, `gender`, `is_active`, `created_at`) VALUES
(1, 'Super Admin', 'superadmin', 'profile_69a6f68a8781a.jpg', 'superadmin@school.com', '$2y$10$Po3OcuqHlK.04KIxXxJ8L.EsIL1IX6AlGmdEeCSz4YdWCHjg9xSDu', '4d8ff006dc71b82c1b2740265b97e44030b3e5fa2c8b2c6b1a4cd055187a47bc', '2026-03-25 02:18:30', 1, '8918828677', 'HATIDOBA\r\nRANGALI\r\nBURAGANJ', '1995-02-07', 'Male', 1, '2026-03-03 12:29:24'),
(2, 'Principal', 'principal', NULL, 'principal@school.com', '$2y$10$3psZIYNUEtRLR.uDjNQZ8.luSmr/w57YW0hzdjgWcIDHLUO7YQUSK', NULL, NULL, 2, '2345678901', NULL, NULL, NULL, 1, '2026-03-03 12:29:24'),
(3, 'Clerk', 'clerk', NULL, 'clerk@school.com', '$2y$10$J8q/9f7WW9GHjV1f.tCbfeBReZ0Yvhvjv2NLYmcweaMVurtAk0vtS', NULL, NULL, 3, '3456789012', NULL, NULL, NULL, 1, '2026-03-03 12:29:24'),
(4, 'Class Teacher', 'teacher_4', NULL, 'teacher4@school.com', '$2y$10$UN105uWES3IgI3MsFsBK4egZzq12.4zJpwrPO3Xr66x.KtrlD8qsO', NULL, NULL, 4, '4567890123', NULL, NULL, NULL, 1, '2026-03-03 12:29:24'),
(5, 'Subject Teacher', 'teacher_5', NULL, 'teacher5@school.com', '$2y$10$ISEGbNO3NfSFNw1yWQH6P.yraWoQ.2/oKjEwwUrPdES.qAMi4Wrei', NULL, NULL, 5, '5678901234', NULL, NULL, NULL, 1, '2026-03-03 12:29:24'),
(7, 'Parent', 'parent_7', NULL, 'parent7@school.com', '$2y$10$wH/oGiyQjx9vi0jtMpX7NebNcW7u62ILLMQYCkB8LC4264tYUb3hq', NULL, NULL, 7, '7890123456', NULL, NULL, NULL, 1, '2026-03-03 12:29:24'),
(8, 'TALIVAAN', 'parent_8', NULL, 'parent8@school.com', '$2y$10$WTN6tH39RO1tk7v.7czIsOrrJlXoG9iDONXjqqMKKLLUoWKQ8yO3S', NULL, NULL, 7, '08768286053', NULL, NULL, NULL, 1, '2026-03-03 12:43:00'),
(10, 'Jane Doe', 'parent_10', NULL, 'parent10@school.com', '$2y$10$WR0pO6ycS4gqowkMVIb4OOhT5i1PUgGbhFrVMDTSGAMpgPLJEJYJO', NULL, NULL, 7, '9876543210', NULL, NULL, NULL, 1, '2026-03-03 12:49:35'),
(12, 'Test Parent', 'parent_12', NULL, 'parent12@school.com', '$2y$10$5IjV6n4UK2M7hrZqOdx72evwEM.9yvnfxYBSWmUVv7JPqULEiMgqW', NULL, NULL, 7, '9876543210', NULL, NULL, NULL, 1, '2026-03-03 12:51:34'),
(14, 'RAJU', 'parent_14', NULL, 'parent14@school.com', '$2y$10$AnReBkKfJtbS61eNuJ7k2uB2FvSh6k4.XGYfVfRUefRjwNgbnDLWi', NULL, NULL, 7, '08768286053', NULL, NULL, NULL, 1, '2026-03-04 05:34:17'),
(51, 'Student 1', 'student_21', NULL, 'student21@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-04 12:36:46'),
(52, 'Student 2', 'student_22', NULL, 'student22@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-04 12:36:46'),
(53, 'Student 3', 'student_23', NULL, 'student23@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-04 12:36:46'),
(54, 'Student 4', 'student_24', NULL, 'student24@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-04 12:36:46'),
(55, 'Student 5', 'student_25', NULL, 'student25@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-04 12:36:46'),
(56, 'Student 6', 'student_26', NULL, 'student26@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-04 12:36:46'),
(57, 'Student 7', 'student_27', NULL, 'student27@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-04 12:36:46'),
(58, 'Student 8', 'student_28', NULL, 'student28@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-04 12:36:46'),
(59, 'Student 9', 'student_29', NULL, 'student29@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-04 12:36:46'),
(60, 'Student 10', 'student_30', NULL, 'student30@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-04 12:36:46'),
(62, 'Kiara Yadav', 'teacher_62', NULL, 'teacher62@school.com', '$2y$10$abqWhsZM.czqlUoAgeiTguWyfLHkm2M1PdWS.tmZ/WbzO81ILLfAO', NULL, NULL, 8, '9876500001', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(63, 'Meera Das', 'teacher_63', NULL, 'teacher63@school.com', '$2y$10$XQByPsNY0brf12IP3kSyReSGxarpvCmDVjjs3cMzpKZ41HSD.kmna', NULL, NULL, 8, '9876500002', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(65, 'Ishaan Yadav', 'teacher_65', NULL, 'teacher65@school.com', '$2y$10$TdtWOH2Q4C31M.zkOIEPHOs1O0HysiTEmyFeuBsHn81DE515oobi2', NULL, NULL, 8, '9876500004', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(66, 'Krishna Kapoor', 'teacher_66', NULL, 'teacher66@school.com', '$2y$10$g8ZyaXIhBkqAF2wFKdErn.xkWWC2i3AQs4P4MCO6ZnikAamsvAhgG', NULL, NULL, 8, '9876500005', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(67, 'Rahul Khan', 'teacher_67', NULL, 'teacher67@school.com', '$2y$10$GrHEZtv/hkl/8Y750ywdu.tzmB.4ukfX4xmVoh54Ishg3vQ09mMk6', NULL, NULL, 8, '9876500006', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(68, 'Nitin Chauhan', 'teacher_68', NULL, 'teacher68@school.com', '$2y$10$9UNhf3dKzPDnwSyi0qpEW.EIxov48nfJ5Gpm.nQstZHdXucROrMQi', NULL, NULL, 8, '9876500007', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(69, 'Sunil Trivedi', 'teacher_69', NULL, 'teacher69@school.com', '$2y$10$s53D.wSaSpCaG3xzqEA20uHH0NxXTfjOVERWlJVzQ4IQ4io0vLy0.', NULL, NULL, 8, '9876500008', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(70, 'Rajesh Verma', 'teacher_70', NULL, 'teacher70@school.com', '$2y$10$.LVyF8qwFnaPxJz7wSHePO1YAZILizUCkgbMbY0WlniUkt3Yi/cE2', NULL, NULL, 8, '9876500009', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(71, 'Karan Kapoor', 'teacher_71', NULL, 'teacher71@school.com', '$2y$10$6sjtUtk9P96TGsU1tTRqaeTIS2RN4EbjRhv3almAKLhJ0LyaM3m/i', NULL, NULL, 8, '9876500010', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(72, 'Aavya Yadav', 'teacher_72', NULL, 'teacher72@school.com', '$2y$10$sUTrGxW4XuDv6r/HE9.dpetdSd95TkP5JONV4H3wKE8lb/Zn4Hzei', NULL, NULL, 8, '9876500011', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(73, 'Ayaat Sharma', 'teacher_73', NULL, 'teacher73@school.com', '$2y$10$bnVn0IFaBQu92gjltQ2jUO.f9HRnsmrqnh/DPVXlhphkTvbQkAzrC', NULL, NULL, 8, '9876500012', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(74, 'Saanvi Sharma', 'teacher_74', NULL, 'teacher74@school.com', '$2y$10$5Ee69u0bzly5yuaY421KWOmMM9yuYolyR0PS8qSVPZrt62ilq/dgO', NULL, NULL, 8, '9876500013', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(75, 'Vikram Garg', 'teacher_75', NULL, 'teacher75@school.com', '$2y$10$PkbMxQO6NmRMh6iHWaKWLuOk4Z95yuMPIHrSnxK0oKLenFHi5JI5W', NULL, NULL, 8, '9876500014', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(76, 'Amit Reddy', 'teacher_76', NULL, 'teacher76@school.com', '$2y$10$ivOIIPNVyMqcF87MwYrL4OYfUzS7cMzmHEjkS2DTgjGiG3elJnK/.', NULL, NULL, 8, '9876500015', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(77, 'Karan Garg', 'teacher_77', NULL, 'teacher77@school.com', '$2y$10$9mkZBjpRt5F9bVbxPWBt.e6947Psz26a733eqpgJC4WFOPHwdWFjm', NULL, NULL, 8, '9876500016', NULL, NULL, NULL, 1, '2026-03-05 07:18:15'),
(79, 'Ishani Menon', 'teacher_79', NULL, 'teacher79@school.com', '$2y$10$Xyr273GnIyQCh6zn.SvoV.UOOO6eDP2HXLSS0.2AaMM.bQhLAtEmK', NULL, NULL, 8, '9876500001', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(80, 'Ishaan Deshmukh', 'teacher_80', NULL, 'teacher80@school.com', '$2y$10$X1TBejAkgHrsOWfgA2nZMe0hbDQfEcCvoiZgbnyr7e4likysOI7Aa', NULL, NULL, 8, '9876500002', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(81, 'Sanjay Das', 'teacher_81', NULL, 'teacher81@school.com', '$2y$10$NK..fVw/90X1k5NeR7/lJu1NqRxM2OmvOyQHuanEFA7sNMqtJ9dBW', NULL, NULL, 8, '9876500003', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(82, 'Sai Iyer', 'teacher_82', NULL, 'teacher82@school.com', '$2y$10$nWr0NzRA9xJUeLV7GnnqcOkFsEdJpoNZBwLEnO23TNOxBMjf/iJgC', NULL, NULL, 8, '9876500004', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(83, 'Divya Gupta', 'teacher_83', NULL, 'teacher83@school.com', '$2y$10$S2Ndio8gF0lktURFrZSmJugR2etUvki3yzg3cRXgHw9W2ErMjYAri', NULL, NULL, 8, '9876500005', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(84, 'Advika Mehta', 'teacher_84', NULL, 'teacher84@school.com', '$2y$10$07kkjnZUzavgbABF6srLhevpcNrcCwfKH8Is.CA2VTxLv7XxH6kL6', NULL, NULL, 8, '9876500006', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(85, 'Advika Bhat', 'teacher_85', NULL, 'teacher85@school.com', '$2y$10$QesxHH6sdzyJvhfYy6C/t.NBPS1fkmc88XGE6YTAYX05ZDMeaw7GW', NULL, NULL, 8, '9876500007', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(86, 'Diya Yadav', 'teacher_86', NULL, 'teacher86@school.com', '$2y$10$/30Y2l6Ha2vqRd229HChGuGq/P3REcZEAq5z4Ffkp8fv7KwTdD7kG', NULL, NULL, 8, '9876500008', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(87, 'Arjun Garg', 'teacher_87', NULL, 'teacher87@school.com', '$2y$10$HJQM8H79b88ktjJ5/Uh0z.yU9n1d2x9ge/GoU9x4TeJt5BM9x4FAe', NULL, NULL, 8, '9876500009', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(88, 'Ishani Joshi', 'teacher_88', NULL, 'teacher88@school.com', '$2y$10$0QITv/6KH5jjb07yEN7d0.eAhhzMvXJRBiIf3oK7fycCNcg7naJ/m', NULL, NULL, 8, '9876500010', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(89, 'Vikram Mehta', 'teacher_89', NULL, 'teacher89@school.com', '$2y$10$C2Il5Gzyzlyx0x2F/3e9Mu2XJ9bMo53Eb4kn7OiUOW6l2jklRECsG', NULL, NULL, 8, '9876500011', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(90, 'Arjun Gupta', 'teacher_90', NULL, 'teacher90@school.com', '$2y$10$MVTO/nim3VU.0txGUHrMSOfMY9Psi5pkWrzazY6kxlfGv8TohYrqm', NULL, NULL, 8, '9876500012', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(91, 'Rajesh Bhat', 'teacher_91', NULL, 'teacher91@school.com', '$2y$10$pcw2XMyfDA.6pvenYiEZ5.al35glm3qxvvInaJACBb1ESWHsp5GEG', NULL, NULL, 8, '9876500013', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(92, 'Krishna Menon', 'teacher_92', NULL, 'teacher92@school.com', '$2y$10$ul6p0a.wxPedgr56nwZvQOE4emCHNWYXUoMLCpH0YA/83EDl9vgeG', NULL, NULL, 8, '9876500014', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(93, 'Akash Singh', 'teacher_93', NULL, 'teacher93@school.com', '$2y$10$QqaLpJVKfk3UMT5uPCzOtOmofPYvp3qWGqrWdu7Y53KtuToVHMMS.', NULL, NULL, 8, '9876500015', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(94, 'Akash Mehta', 'teacher_94', NULL, 'teacher94@school.com', '$2y$10$GsTMaoxbfIO9Rdd3YGpubOSdroFs9BMZtfw5mN2OkuVVxohQZ5CWK', NULL, NULL, 8, '9876500016', NULL, NULL, NULL, 1, '2026-03-05 17:16:07'),
(95, 'Priya Menon', 'student_2', NULL, 'student2@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:32'),
(96, 'Vihaan Sharma', 'student_3', NULL, 'student3@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:32'),
(97, 'Saanvi Mishra', 'student_4', NULL, 'student4@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:32'),
(98, 'Sanjay Sen', 'student_5', NULL, 'student5@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:32'),
(99, 'Pooja Kumar', 'student_6', NULL, 'student6@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:32'),
(100, 'Vanya Singh', 'student_7', NULL, 'student7@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(101, 'Vikram Kapoor', 'student_8', NULL, 'student8@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(102, 'Sanjay Kumar', 'student_9', NULL, 'student9@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(103, 'Sai Reddy', 'student_10', NULL, 'student10@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(104, 'Aditya Bansal', 'student_11', 'stu_104_1778731489.jpg', 'student11@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(105, 'Arjun Singh', 'student_12', NULL, 'student12@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(106, 'Sai Khan', 'student_13', NULL, 'student13@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(107, 'Amara Garg', 'student_14', NULL, 'student14@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(108, 'Anita Mishra', 'student_15', NULL, 'student15@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(109, 'Anita Mishra', 'student_16', NULL, 'student16@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(110, 'Akash Bansal', 'student_17', NULL, 'student17@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(111, 'Vikram Nair', 'student_18', NULL, 'student18@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(112, 'Riya Malhotra', 'student_19', NULL, 'student19@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(113, 'Amit Menon', 'student_20', NULL, 'student20@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(114, 'Aarav Chatterjee', 'student_31', NULL, 'student31@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(115, 'Rajesh Pillai', 'student_32', NULL, 'student32@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:33'),
(116, 'Suresh Gupta', 'student_33', NULL, 'student33@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(117, 'Vishal Mukherjee', 'student_34', NULL, 'student34@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(118, 'Sumit Reddy', 'student_35', NULL, 'student35@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(119, 'Sanjay Verma', 'student_36', NULL, 'student36@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(120, 'Manish Patil', 'student_37', NULL, 'student37@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(121, 'Aditya Sen', 'student_38', NULL, 'student38@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(122, 'Karan Mishra', 'student_39', NULL, 'student39@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(123, 'Deepak Patel', 'student_40', NULL, 'student40@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(124, 'Nidhi Banerjee', 'student_41', NULL, 'student41@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(125, 'Sneha Banerjee', 'student_42', NULL, 'student42@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(126, 'Kavita Yadav', 'student_43', NULL, 'student43@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(127, 'Simran Banerjee', 'student_44', NULL, 'student44@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(128, 'Sita Banerjee', 'student_45', NULL, 'student45@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(129, 'Zainab Mishra', 'student_46', NULL, 'student46@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(130, 'Ayesha Kumar', 'student_47', NULL, 'student47@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(131, 'Sonia Chatterjee', 'student_48', NULL, 'student48@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:34'),
(132, 'Sonia Pandey', 'student_49', NULL, 'student49@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(133, 'Nidhi Sharma', 'student_50', NULL, 'student50@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(134, 'Vikas Bose', 'student_51', NULL, 'student51@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(135, 'Akash Mukherjee', 'student_52', NULL, 'student52@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(136, 'Sunil Menon', 'student_53', NULL, 'student53@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(137, 'Rajesh Patel', 'student_54', NULL, 'student54@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(138, 'Ramesh Gupta', 'student_55', NULL, 'student55@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(139, 'Karan Chatterjee', 'student_56', NULL, 'student56@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(140, 'Vikas Mukherjee', 'student_57', NULL, 'student57@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(141, 'Sumit Verma', 'student_58', NULL, 'student58@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(142, 'Ravi Gupta', 'student_59', NULL, 'student59@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(143, 'Kunal Sharma', 'student_60', NULL, 'student60@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(144, 'Swati Chatterjee', 'student_61', NULL, 'student61@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(145, 'Sneha Gupta', 'student_62', NULL, 'student62@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(146, 'Kavya Verma', 'student_63', NULL, 'student63@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(147, 'Kiran Bhat', 'student_64', NULL, 'student64@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:35'),
(148, 'Kavya Kumar', 'student_65', NULL, 'student65@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(149, 'Kavita Tiwari', 'student_66', NULL, 'student66@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(150, 'Neha Sen', 'student_67', NULL, 'student67@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(151, 'Aakanksha Yadav', 'student_68', NULL, 'student68@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(152, 'Sonia Patil', 'student_69', NULL, 'student69@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(153, 'Rekha Sen', 'student_70', NULL, 'student70@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(154, 'Ramesh Sen', 'student_71', NULL, 'student71@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(155, 'Ravi Sen', 'student_72', NULL, 'student72@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(156, 'Ramesh Yadav', 'student_73', NULL, 'student73@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(157, 'Akash Sharma', 'student_74', NULL, 'student74@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(158, 'Vishal Bose', 'student_75', NULL, 'student75@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(159, 'Rohan Bose', 'student_76', NULL, 'student76@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(160, 'Arjun Dubey', 'student_77', NULL, 'student77@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(161, 'Sanjay Sharma', 'student_78', NULL, 'student78@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(162, 'Ramesh Menon', 'student_79', NULL, 'student79@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(163, 'Ramesh Dubey', 'student_80', NULL, 'student80@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:36'),
(164, 'Priya Pillai', 'student_81', NULL, 'student81@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(165, 'Preeti Patel', 'student_82', NULL, 'student82@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(166, 'Simran Iyer', 'student_83', NULL, 'student83@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(167, 'Geeta Tiwari', 'student_84', NULL, 'student84@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(168, 'Anita Singh', 'student_85', NULL, 'student85@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(169, 'Aakanksha Nair', 'student_86', NULL, 'student86@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(170, 'Geeta Nair', 'student_87', NULL, 'student87@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(171, 'Zainab Chauhan', 'student_88', NULL, 'student88@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(172, 'Rekha Mishra', 'student_89', NULL, 'student89@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(173, 'Swati Yadav', 'student_90', NULL, 'student90@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(174, 'Krishna Patil', 'student_91', NULL, 'student91@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(175, 'Vikrant Joshi', 'student_92', NULL, 'student92@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(176, 'Amit Mukherjee', 'student_93', NULL, 'student93@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(177, 'Vijay Chauhan', 'student_94', NULL, 'student94@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(178, 'Vijay Sharma', 'student_95', NULL, 'student95@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(179, 'Rahul Menon', 'student_96', NULL, 'student96@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:37'),
(180, 'Vijay Bose', 'student_97', NULL, 'student97@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(181, 'Rahul Patil', 'student_98', NULL, 'student98@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(182, 'Sanjay Banerjee', 'student_99', NULL, 'student99@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(183, 'Rahul Bose', 'student_100', NULL, 'student100@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(184, 'Sunita Das', 'student_101', NULL, 'student101@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(185, 'Shruti Bose', 'student_102', NULL, 'student102@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(186, 'Diya Reddy', 'student_103', NULL, 'student103@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(187, 'Diya Pandey', 'student_104', NULL, 'student104@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(188, 'Kiran Banerjee', 'student_105', NULL, 'student105@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(189, 'Nidhi Kulkarni', 'student_106', NULL, 'student106@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(190, 'Ananya Gupta', 'student_107', NULL, 'student107@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(191, 'Kiran Dubey', 'student_108', NULL, 'student108@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(192, 'Sita Iyer', 'student_109', NULL, 'student109@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(193, 'Simran Yadav', 'student_110', NULL, 'student110@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(194, 'Ramesh Das', 'student_111', NULL, 'student111@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(195, 'Rahul Tiwari', 'student_112', NULL, 'student112@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:38'),
(196, 'Vivaan Reddy', 'student_113', NULL, 'student113@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(197, 'Kunal Deshmukh', 'student_114', NULL, 'student114@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(198, 'Vikram Reddy', 'student_115', NULL, 'student115@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(199, 'Anil Bose', 'student_116', NULL, 'student116@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(200, 'Vikrant Kumar', 'student_117', NULL, 'student117@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(201, 'Karan Sharma', 'student_118', NULL, 'student118@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(202, 'Vijay Mistry', 'student_119', NULL, 'student119@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(203, 'Vikrant Chauhan', 'student_120', NULL, 'student120@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(204, 'Sunita Chauhan', 'student_121', NULL, 'student121@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(205, 'Preeti Pandey', 'student_122', NULL, 'student122@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(206, 'Ishita Bose', 'student_123', NULL, 'student123@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(207, 'Ishita Joshi', 'student_124', NULL, 'student124@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(208, 'Swati Sen', 'student_125', NULL, 'student125@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(209, 'Simran Menon', 'student_126', NULL, 'student126@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(210, 'Sneha Iyer', 'student_127', NULL, 'student127@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(211, 'Swati Chauhan', 'student_128', NULL, 'student128@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(212, 'Nidhi Menon', 'student_129', NULL, 'student129@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:39'),
(213, 'Kavya Joshi', 'student_130', NULL, 'student130@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(214, 'Kunal Yadav', 'student_131', NULL, 'student131@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(215, 'Ravi Pillai', 'student_132', NULL, 'student132@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(216, 'Kunal Pillai', 'student_133', NULL, 'student133@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(217, 'Kunal Mishra', 'student_134', NULL, 'student134@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(218, 'Akash Nair', 'student_135', NULL, 'student135@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(219, 'Aditya Singh', 'student_106_a', NULL, 'student106@classschool.com', '$2y$10$ltl3r4KokQOLCHf8MFNshe6v/Aey7lc7XsnmS/s6qA/7v3.Xl6ohO', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(220, 'Rahul Chauhan', 'student_137', NULL, 'student137@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(221, 'Vishal Mishra', 'student_138', NULL, 'student138@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(222, 'Ravi Patel', 'student_139', NULL, 'student139@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(223, 'Vikram Gupta', 'student_140', NULL, 'student140@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(224, 'Preeti Das', 'student_141', NULL, 'student141@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(225, 'Riya Chowdhury', 'student_142', NULL, 'student142@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(226, 'Ishita Pillai', 'student_143', NULL, 'student143@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(227, 'Shweta Tiwari', 'student_144', NULL, 'student144@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(228, 'Diya Mishra', 'student_145', NULL, 'student145@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(229, 'Aakanksha Kulkarni', 'student_146', NULL, 'student146@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(230, 'Priya Sharma', 'student_147', NULL, 'student147@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:40'),
(231, 'Pooja Tiwari', 'student_148', NULL, 'student148@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(232, 'Sita Nair', 'student_149', NULL, 'student149@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(233, 'Zainab Nair', 'student_150', NULL, 'student150@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(234, 'Neeraj Gupta', 'student_151', NULL, 'student151@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(235, 'Sumit Chowdhury', 'student_152', NULL, 'student152@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(236, 'Rohan Deshmukh', 'student_153', NULL, 'student153@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(237, 'Vivaan Chowdhury', 'student_154', NULL, 'student154@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(238, 'Manoj Joshi', 'student_155', NULL, 'student155@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(239, 'Krishna Pandey', 'student_156', NULL, 'student156@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(240, 'Sunil Chowdhury', 'student_157', NULL, 'student157@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(241, 'Deepak Banerjee', 'student_158', NULL, 'student158@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(242, 'Sunil Das', 'student_159', NULL, 'student159@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(243, 'Akash Chowdhury', 'student_160', NULL, 'student160@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(244, 'Simran Patel', 'student_161', NULL, 'student161@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(245, 'Anita Deshmukh', 'student_162', NULL, 'student162@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(246, 'Diya Chatterjee', 'student_163', NULL, 'student163@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(247, 'Sneha Chauhan', 'student_164', NULL, 'student164@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:41'),
(248, 'Fatima Mukherjee', 'student_165', NULL, 'student165@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(249, 'Shruti Gupta', 'student_166', NULL, 'student166@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(250, 'Neha Das', 'student_167', NULL, 'student167@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(251, 'Riya Iyer', 'student_168', NULL, 'student168@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(252, 'Geeta Patel', 'student_169', NULL, 'student169@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(253, 'Neha Banerjee', 'student_170', NULL, 'student170@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(254, 'Arjun Joshi', 'student_171', NULL, 'student171@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(255, 'Aarav Banerjee', 'student_172', NULL, 'student172@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(256, 'Manish Iyer', 'student_173', NULL, 'student173@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(257, 'Vikrant Menon', 'student_174', NULL, 'student174@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(258, 'Sunil Pandey', 'student_175', NULL, 'student175@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(259, 'Rajesh Sharma', 'student_176', NULL, 'student176@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(260, 'Akash Kulkarni', 'student_177', NULL, 'student177@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(261, 'Nitin Patil', 'student_178', NULL, 'student178@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(262, 'Amit Chauhan', 'student_179', NULL, 'student179@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(263, 'Akash Chauhan', 'student_180', NULL, 'student180@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:42'),
(264, 'Ayesha Singh', 'student_181', NULL, 'student181@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(265, 'Kavita Joshi', 'student_182', NULL, 'student182@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(266, 'Kiran Sharma', 'student_183', NULL, 'student183@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(267, 'Aakanksha Deshmukh', 'student_184', NULL, 'student184@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(268, 'Riya Chatterjee', 'student_185', NULL, 'student185@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(269, 'Aakanksha Sen', 'student_186', NULL, 'student186@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(270, 'Pooja Joshi', 'student_187', NULL, 'student187@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(271, 'Fatima Patil', 'student_188', NULL, 'student188@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(272, 'Kavya Sen', 'student_189', NULL, 'student189@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(273, 'Shweta Patil', 'student_190', NULL, 'student190@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(274, 'Neeraj Kulkarni', 'student_191', NULL, 'student191@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(275, 'Deepak Das', 'student_192', NULL, 'student192@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(276, 'Rohan Iyer', 'student_193', NULL, 'student193@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(277, 'Aditya Kulkarni', 'student_194', NULL, 'student194@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(278, 'Sanjay Mukherjee', 'student_195', NULL, 'student195@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(279, 'Arjun Chatterjee', 'student_196', NULL, 'student196@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(280, 'Nitin Nair', 'student_197', NULL, 'student197@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:43'),
(281, 'Vikas Kulkarni', 'student_198', NULL, 'student198@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(282, 'Vikram Sen', 'student_199', NULL, 'student199@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(283, 'Ravi Mistry', 'student_200', NULL, 'student200@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(284, 'Anita Tiwari', 'student_201', NULL, 'student201@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(285, 'Pooja Banerjee', 'student_202', NULL, 'student202@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(286, 'Shweta Yadav', 'student_203', NULL, 'student203@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(287, 'Neha Gupta', 'student_204', NULL, 'student204@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(288, 'Neha Bhat', 'student_205', NULL, 'student205@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(289, 'Geeta Sen', 'student_206', NULL, 'student206@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(290, 'Pooja Mistry', 'student_207', NULL, 'student207@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(291, 'Nisha Chauhan', 'student_208', NULL, 'student208@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(292, 'Shweta Menon', 'student_209', NULL, 'student209@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(293, 'Nidhi Kumar', 'student_210', NULL, 'student210@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(294, 'Amit Das', 'student_211', NULL, 'student211@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(295, 'Anil Chowdhury', 'student_212', NULL, 'student212@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(296, 'Rajesh Kulkarni', 'student_213', NULL, 'student213@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44');
INSERT INTO `users` (`id`, `name`, `username`, `profile_photo`, `email`, `password`, `reset_token`, `reset_expires`, `role_id`, `phone`, `address`, `dob`, `gender`, `is_active`, `created_at`) VALUES
(297, 'Akash Verma', 'student_214', NULL, 'student214@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:44'),
(298, 'Aditya Pandey', 'student_215', NULL, 'student215@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(299, 'Suresh Kulkarni', 'student_216', NULL, 'student216@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(300, 'Sumit Kumar', 'student_217', NULL, 'student217@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(301, 'Aarav Patel', 'student_218', NULL, 'student218@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(302, 'Sunil Yadav', 'student_219', NULL, 'student219@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(303, 'Nitin Iyer', 'student_220', NULL, 'student220@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(304, 'Sonia Nair', 'student_221', NULL, 'student221@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(305, 'Sneha Singh', 'student_222', NULL, 'student222@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(306, 'Rekha Joshi', 'student_223', NULL, 'student223@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(307, 'Swati Reddy', 'student_224', NULL, 'student224@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(308, 'Ayesha Verma', 'student_225', NULL, 'student225@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(309, 'Kavita Pillai', 'student_226', NULL, 'student226@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(310, 'Nisha Gupta', 'student_227', NULL, 'student227@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(311, 'Meena Kulkarni', 'student_228', NULL, 'student228@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(312, 'Shruti Yadav', 'student_229', NULL, 'student229@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(313, 'Kavya Banerjee', 'student_230', NULL, 'student230@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:45'),
(314, 'Vikrant Chowdhury', 'student_231', NULL, 'student231@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(315, 'Sunil Mishra', 'student_232', NULL, 'student232@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(316, 'Nitin Chowdhury', 'student_233', NULL, 'student233@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(317, 'Ravi Patil', 'student_234', NULL, 'student234@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(318, 'Amit Mistry', 'student_235', NULL, 'student235@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(319, 'Anil Kumar', 'student_236', NULL, 'student236@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(320, 'Vikrant Singh', 'student_237', NULL, 'student237@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(321, 'Neeraj Patel', 'student_238', NULL, 'student238@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(322, 'Akash Pandey', 'student_239', NULL, 'student239@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(323, 'Abhishek Chauhan', 'student_240', NULL, 'student240@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(324, 'Divya Pillai', 'student_241', NULL, 'student241@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(325, 'Sunita Chatterjee', 'student_242', NULL, 'student242@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(326, 'Kavita Sen', 'student_243', NULL, 'student243@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(327, 'Aakanksha Pandey', 'student_244', NULL, 'student244@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(328, 'Zainab Deshmukh', 'student_245', NULL, 'student245@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(329, 'Sneha Reddy', 'student_246', NULL, 'student246@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(330, 'Ishita Patil', 'student_247', NULL, 'student247@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:46'),
(331, 'Shweta Verma', 'student_248', NULL, 'student248@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(332, 'Ayesha Mistry', 'student_249', NULL, 'student249@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(333, 'Sonia Mukherjee', 'student_250', NULL, 'student250@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(334, 'Ravi Yadav', 'student_251', NULL, 'student251@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(335, 'Manoj Reddy', 'student_252', NULL, 'student252@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(336, 'Rajesh Nair', 'student_253', NULL, 'student253@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(337, 'Vikas Iyer', 'student_254', NULL, 'student254@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(338, 'Nitin Yadav', 'student_255', NULL, 'student255@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(339, 'Rohan Kulkarni', 'student_256', NULL, 'student256@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(340, 'Rajesh Joshi', 'student_257', NULL, 'student257@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(341, 'Karan Gupta', 'student_258', NULL, 'student258@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(342, 'Sunil Gupta', 'student_259', NULL, 'student259@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(343, 'Abhishek Mukherjee', 'student_260', NULL, 'student260@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(344, 'Simran Chowdhury', 'student_261', NULL, 'student261@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(345, 'Rekha Mistry', 'student_262', NULL, 'student262@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(346, 'Priya Joshi', 'student_263', NULL, 'student263@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:47'),
(347, 'Fatima Dubey', 'student_264', NULL, 'student264@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(348, 'Kiran Chauhan', 'student_265', NULL, 'student265@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(349, 'Rekha Banerjee', 'student_266', NULL, 'student266@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(350, 'Pooja Yadav', 'student_267', NULL, 'student267@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(351, 'Sneha Pillai', 'student_268', NULL, 'student268@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(352, 'Riya Reddy', 'student_269', NULL, 'student269@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(353, 'Riya Mistry', 'student_270', NULL, 'student270@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(354, 'Suresh Das', 'student_271', NULL, 'student271@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(355, 'Sanjay Menon', 'student_272', NULL, 'student272@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(356, 'Krishna Tiwari', 'student_273', NULL, 'student273@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(357, 'Nitin Patel', 'student_274', NULL, 'student274@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(358, 'Krishna Mukherjee', 'student_275', NULL, 'student275@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(359, 'Manish Nair', 'student_276', NULL, 'student276@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(360, 'Rohan Dubey', 'student_277', NULL, 'student277@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(361, 'Sumit Yadav', 'student_278', NULL, 'student278@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(362, 'Amit Joshi', 'student_279', NULL, 'student279@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(363, 'Sanjay Bhat', 'student_280', NULL, 'student280@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(364, 'Rekha Pandey', 'student_281', NULL, 'student281@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:48'),
(365, 'Sunita Dubey', 'student_282', NULL, 'student282@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(366, 'Pooja Iyer', 'student_283', NULL, 'student283@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(367, 'Geeta Kumar', 'student_284', NULL, 'student284@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(368, 'Ananya Menon', 'student_285', NULL, 'student285@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(369, 'Priya Chauhan', 'student_286', NULL, 'student286@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(370, 'Preeti Kumar', 'student_287', NULL, 'student287@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(371, 'Divya Verma', 'student_288', NULL, 'student288@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(372, 'Pooja Pillai', 'student_289', NULL, 'student289@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(373, 'Kavya Pandey', 'student_290', NULL, 'student290@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(374, 'Ravi Sharma', 'student_291', NULL, 'student291@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(375, 'Akash Joshi', 'student_292', NULL, 'student292@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(376, 'Ravi Verma', 'student_293', NULL, 'student293@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(377, 'Manish Dubey', 'student_294', NULL, 'student294@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(378, 'Suresh Nair', 'student_295', NULL, 'student295@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(379, 'Arjun Menon', 'student_296', NULL, 'student296@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(380, 'Ravi Chatterjee', 'student_297', NULL, 'student297@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(381, 'Manish Kulkarni', 'student_298', NULL, 'student298@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:49'),
(382, 'Rohan Das', 'student_299', NULL, 'student299@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(383, 'Arjun Tiwari', 'student_300', NULL, 'student300@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(384, 'Meena Banerjee', 'student_301', NULL, 'student301@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(385, 'Aakanksha Chauhan', 'student_302', NULL, 'student302@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(386, 'Riya Chauhan', 'student_303', NULL, 'student303@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(387, 'Riya Pandey', 'student_304', NULL, 'student304@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(388, 'Aakanksha Chatterjee', 'student_305', NULL, 'student305@school.com', '$2y$10$LwSFpLByj.tcerW2y4wZi.RTWMcUNZ6aul9eC40.OpY1qY0Q2TdvO', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(389, 'Simran Bhat', 'student_306', NULL, 'student306@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(390, 'Sonia Pillai', 'student_307', NULL, 'student307@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(391, 'Swati Tiwari', 'student_308', NULL, 'student308@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(392, 'Anita Verma', 'student_309', NULL, 'student309@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(393, 'Ananya Das', 'student_310', NULL, 'student310@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(394, 'Manoj Yadav', 'student_311', NULL, 'student311@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(395, 'Krishna Chauhan', 'student_312', NULL, 'student312@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(396, 'Vikrant Mishra', 'student_313', NULL, 'student313@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(397, 'Rahul Singh', 'student_314', NULL, 'student314@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(398, 'Neeraj Mistry', 'student_315', NULL, 'student315@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:50'),
(399, 'Krishna Bose', 'student_316', NULL, 'student316@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(400, 'Vijay Tiwari', 'student_317', NULL, 'student317@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(401, 'Manoj Bhat', 'student_318', NULL, 'student318@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(402, 'Vivaan Singh', 'student_319', NULL, 'student319@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(403, 'Aarav Deshmukh', 'student_320', NULL, 'student320@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(404, 'Riya Tiwari', 'student_321', NULL, 'student321@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(405, 'Preeti Gupta', 'student_322', NULL, 'student322@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(406, 'Preeti Bhat', 'student_323', NULL, 'student323@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(407, 'Sunita Bose', 'student_324', NULL, 'student324@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(408, 'Neha Mistry', 'student_325', NULL, 'student325@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(409, 'Priya Chatterjee', 'student_326', NULL, 'student326@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(410, 'Divya Sen', 'student_327', NULL, 'student327@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(411, 'Sonia Menon', 'student_328', NULL, 'student328@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(412, 'Ananya Yadav', 'student_329', NULL, 'student329@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(413, 'Ishita Chowdhury', 'student_330', NULL, 'student330@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(414, 'Neeraj Pandey', 'student_331', NULL, 'student331@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(415, 'Amit Tiwari', 'student_332', NULL, 'student332@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:51'),
(416, 'Vijay Banerjee', 'student_333', NULL, 'student333@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(417, 'Manoj Menon', 'student_334', NULL, 'student334@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(418, 'Sanjay Kulkarni', 'student_335', NULL, 'student335@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(419, 'Anil Bhat', 'student_336', NULL, 'student336@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(420, 'Rajesh Tiwari', 'student_337', NULL, 'student337@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(421, 'Ravi Das', 'student_338', NULL, 'student338@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(422, 'Rajesh Gupta', 'student_339', NULL, 'student339@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(423, 'Deepak Dubey', 'student_340', NULL, 'student340@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(424, 'Shweta Mukherjee', 'student_341', NULL, 'student341@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(425, 'Shweta Patel', 'student_342', NULL, 'student342@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(426, 'Rekha Pillai', 'student_343', NULL, 'student343@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(427, 'Meena Singh', 'student_344', NULL, 'student344@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(428, 'Meena Gupta', 'student_345', NULL, 'student345@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(429, 'Fatima Chowdhury', 'student_346', NULL, 'student346@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(430, 'Riya Menon', 'student_347', NULL, 'student347@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(431, 'Swati Iyer', 'student_348', NULL, 'student348@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(432, 'Pooja Gupta', 'student_349', NULL, 'student349@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(433, 'Ishita Pandey', 'student_350', NULL, 'student350@school.com', '$2y$10$b4X4P7hrPBleFeh4VMDN..YHLZorqxz5y35GjdBCTjvuTCq/P5E1S', NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, '2026-03-25 04:18:52'),
(434, 'Abdul Barique Ansari', NULL, NULL, 'abdulbariqueansari720@gmail.com', '$2y$10$s1NMxPdMswyl.7RpMEf1EO06bRfhivCDnbzYz.isPh3rMYr5ltblq', NULL, NULL, 8, '52486525845', NULL, NULL, NULL, 0, '2026-05-13 16:47:54'),
(435, 'fasdfg', NULL, NULL, 'alcatrazn9@gmail.com', '$2y$10$uPwbggsVhekkZe8W.pzUYenRY7aJxaaSCLvm.iRLmAShF5QUa5WCm', NULL, NULL, 8, '45645634563', NULL, NULL, NULL, 0, '2026-05-13 18:36:12'),
(436, 'Abdul Barique Ansari', 'teacher111@school.com', NULL, 'abdulbariqueansari2@gmail.com', '$2y$10$9bq96O5q2B7sp2ouqBFNBe1eoU.kQDMncfQ1zTlGra.Ms9CXW7oU2', NULL, NULL, 4, '9876500014', NULL, NULL, NULL, 1, '2026-05-17 12:12:48'),
(437, 'kamaal', 'kamaal', NULL, 'kamaal@school.com', '$2y$10$YdNs0D4quJ7mtRVKVpOnGOJUs9HLKTqKB6F4FD4yrBNOKy1MBDdlC', NULL, NULL, 4, '453463646346', NULL, NULL, NULL, 1, '2026-05-18 04:27:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_details`
--
ALTER TABLE `academic_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_applications`
--
ALTER TABLE `admission_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admission_number` (`admission_number`),
  ADD KEY `class_applying_for` (`class_applying_for`);

--
-- Indexes for table `admission_requests`
--
ALTER TABLE `admission_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target_role_id` (`target_role_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `assignment_submissions`
--
ALTER TABLE `assignment_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_id` (`assignment_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `marked_by` (`marked_by`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_admit_cards`
--
ALTER TABLE `exam_admit_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admit_card_no` (`admit_card_no`),
  ADD UNIQUE KEY `student_exam_admit` (`student_id`,`exam_id`),
  ADD KEY `fk_admit_exam` (`exam_id`),
  ADD KEY `fk_admit_class` (`class_id`);

--
-- Indexes for table `exam_form_settings`
--
ALTER TABLE `exam_form_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_class` (`exam_id`,`class_id`),
  ADD UNIQUE KEY `memo_no` (`memo_no`),
  ADD KEY `fk_class_settings` (`class_id`);

--
-- Indexes for table `exam_form_submissions`
--
ALTER TABLE `exam_form_submissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_exam` (`student_id`,`exam_id`),
  ADD UNIQUE KEY `application_sl_no` (`application_sl_no`),
  ADD KEY `fk_exam_submission` (`exam_id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_exam_subject` (`student_id`,`exam_id`,`subject_id`),
  ADD KEY `fk_result_exam` (`exam_id`),
  ADD KEY `fk_result_class` (`class_id`),
  ADD KEY `fk_result_subject` (`subject_id`);

--
-- Indexes for table `exam_schedule_notices`
--
ALTER TABLE `exam_schedule_notices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notice_no` (`notice_no`),
  ADD KEY `fk_schedule_exam` (`exam_id`),
  ADD KEY `fk_schedule_class` (`class_id`),
  ADD KEY `fk_schedule_creator` (`created_by`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_details`
--
ALTER TABLE `health_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `fee_id` (`fee_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `class_teacher_id` (`class_teacher_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_materials`
--
ALTER TABLE `study_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `super_admin_settings`
--
ALTER TABLE `super_admin_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_details`
--
ALTER TABLE `academic_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admission_applications`
--
ALTER TABLE `admission_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admission_requests`
--
ALTER TABLE `admission_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment_submissions`
--
ALTER TABLE `assignment_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `exam_admit_cards`
--
ALTER TABLE `exam_admit_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `exam_form_settings`
--
ALTER TABLE `exam_form_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exam_form_submissions`
--
ALTER TABLE `exam_form_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `exam_schedule_notices`
--
ALTER TABLE `exam_schedule_notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `health_details`
--
ALTER TABLE `health_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `study_materials`
--
ALTER TABLE `study_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `super_admin_settings`
--
ALTER TABLE `super_admin_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admission_applications`
--
ALTER TABLE `admission_applications`
  ADD CONSTRAINT `admissions_ibfk_1` FOREIGN KEY (`class_applying_for`) REFERENCES `classes` (`id`);

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`target_role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `announcements_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `assignments_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `assignment_submissions`
--
ALTER TABLE `assignment_submissions`
  ADD CONSTRAINT `submissions_ibfk_1` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`),
  ADD CONSTRAINT `submissions_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`marked_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `exam_admit_cards`
--
ALTER TABLE `exam_admit_cards`
  ADD CONSTRAINT `fk_admit_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_admit_exam` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_admit_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_form_settings`
--
ALTER TABLE `exam_form_settings`
  ADD CONSTRAINT `fk_class_settings` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_exam_settings` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_form_submissions`
--
ALTER TABLE `exam_form_submissions`
  ADD CONSTRAINT `fk_exam_submission` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_student_submission` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD CONSTRAINT `fk_result_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_result_exam` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_result_student` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_result_subject` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_schedule_notices`
--
ALTER TABLE `exam_schedule_notices`
  ADD CONSTRAINT `fk_schedule_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_schedule_creator` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_schedule_exam` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `marks_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parents`
--
ALTER TABLE `parents`
  ADD CONSTRAINT `parents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`fee_id`) REFERENCES `fees` (`id`);

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `sections_ibfk_2` FOREIGN KEY (`class_teacher_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
