-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2019 at 09:13 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cet`
--

-- --------------------------------------------------------

--
-- Table structure for table `stes_test_questions`
--

CREATE TABLE `stes_test_questions` (
  `question_id` int(11) NOT NULL,
  `question` varchar(400) NOT NULL,
  `option1` varchar(400) NOT NULL,
  `option2` varchar(400) NOT NULL,
  `option3` varchar(400) NOT NULL,
  `option4` varchar(400) NOT NULL,
  `answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stes_test_questions`
--

INSERT INTO `stes_test_questions` (`question_id`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'Question 1', 'option 1', 'option 2', 'option 3', 'option 4', 1),
(2, 'Question 2', 'option 1', 'option 2', 'option 3', 'option 4', 2),
(3, 'Question 3', 'option 1', 'option 2', 'option 3', 'option 4', 3),
(4, 'Question 4', 'option 1', 'option 2', 'option 3', 'option 4', 4),
(5, 'Question 5', 'option 1', 'option 2', 'option 3', 'option 4', 1),
(6, 'Question 6', 'option 1', 'option 2', 'option 3', 'option 4', 2),
(7, 'Question 7', 'option 1', 'option 2', 'option 3', 'option 4', 3),
(8, 'Question 8', 'option 1', 'option 2', 'option 3', 'option 4', 4),
(9, 'Question 9', 'option 1', 'option 2', 'option 3', 'option 4', 1),
(10, 'Question 10', 'option 1', 'option 2', 'option 3', 'option 4', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stes_test_questions`
--
ALTER TABLE `stes_test_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stes_test_questions`
--
ALTER TABLE `stes_test_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
