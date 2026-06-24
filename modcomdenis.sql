-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 24, 2026 at 11:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modcomdenis`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text DEFAULT NULL,
  `hire_data` date DEFAULT NULL,
  `salary` int(50) DEFAULT NULL,
  `dept_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_data`, `salary`, `dept_id`) VALUES
(1, 'peter wilson', '1990-06-15', 40000, 1),
(2, 'mary', '2026-06-20', 50000, 2),
(3, 'John Kamau', '2018-03-12', 45000, 1),
(4, 'Grace Achieng', '2019-07-25', 55000, 3),
(5, 'David Kiptoo', '2021-01-10', 38000, 2),
(6, 'Jane Njeri', '2017-11-05', 62000, 4),
(7, 'Samuel Otieno', '2022-04-18', 35000, 3),
(8, 'Faith Chebet', '2016-09-30', 70000, 4),
(9, 'Brian Mutua', '2023-02-14', 32000, 2),
(10, 'Mercy Wairimu', '2015-08-22', 80000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text DEFAULT NULL,
  `product_cost` int(50) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  `product_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `VENDORS`
--

CREATE TABLE `VENDORS` (
  `vendors_id` int(50) NOT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `VENDORS`
--

INSERT INTO `VENDORS` (`vendors_id`, `vendor_name`, `phone_number`, `email`, `city`) VALUES
(1, 'ABC Suppliers', '0712345678', 'ABC@gmail.com', 'Nairobi'),
(2, 'DMC Legacy', '0112981061', 'Red@gmail.com', 'Nairobi'),
(3, 'Seph Star', '0736584153', 'Seph@gmail.com', 'ombasa'),
(4, 'Modcom', '0140700538', 'Modcom@gmali.com', 'Nairobi'),
(5, 'Jumia', '150004679', 'Jumia@gmail.com', 'Kiambu'),
(6, 'KiliMall', '787654321', 'Kilimall@gmail', 'Nairobi'),
(7, 'Denis', '0798765432', 'Denis@gmail.com', 'Nyeri'),
(8, 'Cimas', '0112345678', 'Cimasi@gmail.com', 'kiambu'),
(9, 'HP', '098765432', 'HP@gmail.com', 'New York'),
(10, 'Toshiba', '0123456789', 'Toshiba@gmail.com', 'Japan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `VENDORS`
--
ALTER TABLE `VENDORS`
  ADD PRIMARY KEY (`vendors_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `VENDORS`
--
ALTER TABLE `VENDORS`
  MODIFY `vendors_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
