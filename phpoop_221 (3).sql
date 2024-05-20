-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 03:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpoop_221`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthday` date NOT NULL DEFAULT current_timestamp(),
  `sex` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  `user_profile_picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`firstname`, `lastname`, `birthday`, `sex`, `email`, `user_id`, `user_name`, `user_pass`, `user_profile_picture`) VALUES
('Benedict', 'Galgo', '2024-05-07', 'Male', 'Beneboy@gmail.com', 26, 'Beneboyyyy', '$2y$10$m2DlmCm/5awWvWjScZUllO1jBFZjy.eZf7Af5EMfceVFY3Ecd8qku', 'uploads/Screenshot 2024-05-20 074023_1716162777.png'),
('Keith', 'Marquez', '1000-05-02', 'Male', 'Keith01@gmail.com', 31, 'Keith', '$2y$10$fQ8cuGprLXb3ybe9kmrSHOKotO1ZWQoM41CLLwJ.QtvnYzvduP2Nu', 'uploads/Screenshot 2024-05-20 081003_1716167035.png'),
('Ald', 'Marquez', '2001-06-05', 'Male', 'Ald@gmail.com', 32, 'Ald', '$2y$10$GnMcPoN.djJuwHvmngTK2Ox.VTeB5qfzIF2ybdq5R7SHcs0rsMwry', 'uploads/Screenshot 2024-05-20 084026_1716167489.png'),
('Keith', 'Ayala', '2001-06-02', 'Female', 'Keith@gmail.com', 34, 'Beneboyyyy', '$2y$10$7Bv33UD2QDEkZc1jRhrOqOgQaHgzRzsgCpHdhQ.PKQvmrCvqHC4BS', 'uploads/Screenshot 2024-05-20 092033.png'),
('Jei', 'Pastrana', '1999-02-01', 'Male', 'JeiP@gmail.com', 35, 'jeisquared', '$2y$10$kuPItyThfaSCZd7KaioKie3wiuB0oBU61jx7sUNWO7zf0LFW5dfgy', 'uploads/Screenshot 2024-05-20 085629_1716168364.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `user_address_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_street` varchar(255) DEFAULT NULL,
  `user_barangay` varchar(255) DEFAULT NULL,
  `user_city` varchar(255) DEFAULT NULL,
  `user_province` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`user_address_id`, `user_id`, `user_street`, `user_barangay`, `user_city`, `user_province`) VALUES
(13, 26, 'N/a', 'Mayuro', 'Rosario', 'Region IV-A (CALABARZON)'),
(18, 31, '1234', 'Almacen', 'Hermosa', 'Region III (Central Luzon)'),
(19, 32, '123456', 'Calabgan', 'Casiguran', 'Region III (Central Luzon)'),
(21, 34, 'n/a', 'Afusing Bato', 'Alcala', 'Region II (Cagayan Valley)'),
(22, 35, 'n/a', 'Caguray', 'Magsaysay', 'MIMAROPA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`user_address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `user_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
