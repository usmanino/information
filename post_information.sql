-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 10, 2022 at 01:39 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `post_information`
--

-- --------------------------------------------------------

--
-- Table structure for table `information_table`
--

CREATE TABLE `information_table` (
  `id` int(11) NOT NULL,
  `info_id` varchar(255) NOT NULL,
  `info_title` varchar(255) NOT NULL,
  `info_body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `information_table`
--

INSERT INTO `information_table` (`id`, `info_id`, `info_title`, `info_body`, `created_at`) VALUES
(1, 'Notice94452', 'Experienced quality ICT solutions', 'wefwefewfewf', '2020-12-08 16:30:13'),
(2, 'info94122', 'Experienced quality ICT solutions22', 'wfwefewf', '2020-12-08 16:30:13'),
(3, 'info96310', 'Experienced quality ICT solutions22', 'wfwefewf', '2020-12-08 16:30:13'),
(4, 'info93923', 'defwef333', 'wfwefew', '2020-12-08 16:30:13'),
(5, 'info94741', 'defwef333', 'wfwefew', '2020-12-08 16:30:13'),
(6, 'info97001', 'defwef333', 'wfwefew', '2020-12-08 16:30:13'),
(7, 'info96830', 'This', 'That that that that', '2020-12-08 16:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `created_at`) VALUES
(1, 'admin@admin.com', 'admin', '2022-03-10 10:08:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `information_table`
--
ALTER TABLE `information_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `information_table`
--
ALTER TABLE `information_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
