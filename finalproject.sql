-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Oct 31, 2025 at 01:17 PM
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
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `booking_date` varchar(250) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `showtime_id` int(11) NOT NULL,
  `id` bigint(20) UNSIGNED DEFAULT NULL,
  `totalprice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `booking_date`, `payment_id`, `seat_id`, `showtime_id`, `id`, `totalprice`) VALUES
(501, '2025-10-31 15:00:00', 401, 301, 201, 2, 180),
(502, '2025-10-31 15:05:00', 402, 302, 204, 1, 180),
(503, '2025-10-31 16:10:00', 403, 303, 203, 2, 180),
(504, '2025-10-31 16:20:00', 401, 304, 205, 2, 180),
(505, '2025-10-31 16:30:00', 402, 305, 202, 1, 180);

-- --------------------------------------------------------

--
-- Table structure for table `cinemas`
--

CREATE TABLE `cinemas` (
  `cinema_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cinemas`
--

INSERT INTO `cinemas` (`cinema_id`, `name`) VALUES
(101, 'Cinema 1'),
(102, 'Cinema 2'),
(103, 'Cinema 3'),
(104, 'Cinema 4'),
(105, 'Cinema 5');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `name`) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Horror'),
(4, 'Sci-Fi'),
(5, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `release_date` varchar(250) NOT NULL,
  `running` varchar(250) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `name`, `release_date`, `running`, `genre_id`) VALUES
(1001, 'The Last Stand', '2025-11-15', '120 min', 1),
(1002, 'Laughing Riot', '2025-12-01', '105 min', 2),
(1003, 'Silent Night', '2025-11-20', '95 min', 3),
(1004, 'Cosmic Journey', '2026-01-10', '135 min', 4),
(1005, 'Love Across Time', '2025-12-25', '110 min', 5);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `name`) VALUES
(401, 1),
(402, 2),
(403, 3);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seat_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(250) NOT NULL,
  `cinema_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`seat_id`, `name`, `price`, `status`, `cinema_id`) VALUES
(301, 'A1', 180, 'Available', 101),
(302, 'A2', 180, 'Available', 101),
(303, 'A3', 180, 'Available', 101),
(304, 'A4', 180, 'Available', 101),
(305, 'A5', 180, 'Available', 101),
(306, 'B1', 180, 'Available', 101),
(307, 'B2', 180, 'Available', 101),
(308, 'B3', 180, 'Available', 101),
(309, 'B4', 180, 'Available', 101),
(310, 'B5', 180, 'Available', 101),
(311, 'C1', 180, 'Available', 101),
(312, 'C2', 180, 'Available', 101),
(313, 'C3', 180, 'Available', 101),
(314, 'C4', 180, 'Available', 101),
(315, 'C5', 180, 'Available', 101),
(316, 'D1', 180, 'Available', 101),
(317, 'D2', 180, 'Available', 101),
(318, 'D3', 180, 'Available', 101),
(319, 'D4', 180, 'Available', 101),
(320, 'D5', 180, 'Available', 101),
(321, 'A1', 180, 'Available', 102),
(322, 'A2', 180, 'Available', 102),
(323, 'A3', 180, 'Available', 102),
(324, 'A4', 180, 'Available', 102),
(325, 'A5', 180, 'Available', 102),
(326, 'B1', 180, 'Available', 102),
(327, 'B2', 180, 'Available', 102),
(328, 'B3', 180, 'Available', 102),
(329, 'B4', 180, 'Available', 102),
(330, 'B5', 180, 'Available', 102),
(331, 'C1', 180, 'Available', 102),
(332, 'C2', 180, 'Available', 102),
(333, 'C3', 180, 'Available', 102),
(334, 'C4', 180, 'Available', 102),
(335, 'C5', 180, 'Available', 102),
(336, 'D1', 180, 'Available', 102),
(337, 'D2', 180, 'Available', 102),
(338, 'D3', 180, 'Available', 102),
(339, 'D4', 180, 'Available', 102),
(340, 'D5', 180, 'Available', 102),
(341, 'A1', 180, 'Available', 103),
(342, 'A2', 180, 'Available', 103),
(343, 'A3', 180, 'Available', 103),
(344, 'A4', 180, 'Available', 103),
(345, 'A5', 180, 'Available', 103),
(346, 'B1', 180, 'Available', 103),
(347, 'B2', 180, 'Available', 103),
(348, 'B3', 180, 'Available', 103),
(349, 'B4', 180, 'Available', 103),
(350, 'B5', 180, 'Available', 103),
(351, 'C1', 180, 'Available', 103),
(352, 'C2', 180, 'Available', 103),
(353, 'C3', 180, 'Available', 103),
(354, 'C4', 180, 'Available', 103),
(355, 'C5', 180, 'Available', 103),
(356, 'D1', 180, 'Available', 103),
(357, 'D2', 180, 'Available', 103),
(358, 'D3', 180, 'Available', 103),
(359, 'D4', 180, 'Available', 103),
(360, 'D5', 180, 'Available', 103),
(361, 'A1', 180, 'Available', 104),
(362, 'A2', 180, 'Available', 104),
(363, 'A3', 180, 'Available', 104),
(364, 'A4', 180, 'Available', 104),
(365, 'A5', 180, 'Available', 104),
(366, 'B1', 180, 'Available', 104),
(367, 'B2', 180, 'Available', 104),
(368, 'B3', 180, 'Available', 104),
(369, 'B4', 180, 'Available', 104),
(370, 'B5', 180, 'Available', 104),
(371, 'C1', 180, 'Available', 104),
(372, 'C2', 180, 'Available', 104),
(373, 'C3', 180, 'Available', 104),
(374, 'C4', 180, 'Available', 104),
(375, 'C5', 180, 'Available', 104),
(376, 'D1', 180, 'Available', 104),
(377, 'D2', 180, 'Available', 104),
(378, 'D3', 180, 'Available', 104),
(379, 'D4', 180, 'Available', 104),
(380, 'D5', 180, 'Available', 104),
(381, 'A1', 180, 'Available', 105),
(382, 'A2', 180, 'Available', 105),
(383, 'A3', 180, 'Available', 105),
(384, 'A4', 180, 'Available', 105),
(385, 'A5', 180, 'Available', 105),
(386, 'B1', 180, 'Available', 105),
(387, 'B2', 180, 'Available', 105),
(388, 'B3', 180, 'Available', 105),
(389, 'B4', 180, 'Available', 105),
(390, 'B5', 180, 'Available', 105),
(391, 'C1', 180, 'Available', 105),
(392, 'C2', 180, 'Available', 105),
(393, 'C3', 180, 'Available', 105),
(394, 'C4', 180, 'Available', 105),
(395, 'C5', 180, 'Available', 105),
(396, 'D1', 180, 'Available', 105),
(397, 'D2', 180, 'Available', 105),
(398, 'D3', 180, 'Available', 105),
(399, 'D4', 180, 'Available', 105),
(400, 'D5', 180, 'Available', 105);

-- --------------------------------------------------------

--
-- Table structure for table `showtimes`
--

CREATE TABLE `showtimes` (
  `showtime_id` int(11) NOT NULL,
  `time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `showtimes`
--

INSERT INTO `showtimes` (`showtime_id`, `time`) VALUES
(201, '10:30'),
(202, '13:00'),
(203, '16:00'),
(204, '19:30'),
(205, '22:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` varchar(16) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@my-db.com', '2025-10-31 11:43:40', '$2y$10$RGuRSLsfJUdaELnY9ZUER.w4pqSyoHeiluriZRahtJB1nWBNYUuwW', NULL, 'ADMIN', '2025-10-31 11:43:40', '2025-10-31 11:43:40'),
(2, 'User', 'user@my-db.com', '2025-10-31 11:43:40', '$2y$10$ggNGqa1vmznIwhTFcSRkoeBEI5ZN/EDYTwQAfBeIHYogpxGCNzfJG', NULL, 'USER', '2025-10-31 11:43:40', '2025-10-31 11:43:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `seat_id` (`seat_id`),
  ADD KEY `showtime_id` (`showtime_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `cinemas`
--
ALTER TABLE `cinemas`
  ADD PRIMARY KEY (`cinema_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `cinema_id` (`cinema_id`);

--
-- Indexes for table `showtimes`
--
ALTER TABLE `showtimes`
  ADD PRIMARY KEY (`showtime_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT for table `cinemas`
--
ALTER TABLE `cinemas`
  MODIFY `cinema_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `showtimes`
--
ALTER TABLE `showtimes`
  MODIFY `showtime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`seat_id`),
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`showtime_id`) REFERENCES `showtimes` (`showtime_id`),
  ADD CONSTRAINT `bookings_ibfk_4` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`cinema_id`) REFERENCES `cinemas` (`cinema_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
