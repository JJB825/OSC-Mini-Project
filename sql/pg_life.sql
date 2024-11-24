-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2022 at 06:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
Database: `pg_life`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `type`, `icon`) VALUES
(1, 'Power Backup', 'Building', 'powerbackup'),
(2, 'Wifi', 'Common Area', 'wifi'),
(3, 'Bed with Mattress', 'Bedroom', 'bed'),
(4, 'Geyser', 'Washroom', 'geyser'),
(5, 'Fire Extinguisher', 'Building', 'fireext'),
(6, 'TV', 'Common Area', 'tv'),
(7, 'Air Conditioner', 'Bedroom', 'ac'),
(8, 'Bathtub', 'Washroom', 'bathtub'),
(9, 'Parking', 'Building', 'parking'),
(10, 'Water Purifier', 'Common Area', 'rowater'),
(11, 'Wardrobe', 'Bedroom', 'wardrobe'),
(12, 'Mirror', 'Washroom', 'mirror'),
(13, 'Lift', 'Building', 'lift'),
(14, 'Dining', 'Common Area', 'dining'),
(15, 'Study Table', 'Bedroom', 'studytable'),
(16, 'Shower', 'Washroom', 'shower'),
(17, 'CCTV', 'Building', 'cctv'),
(18, 'Microwave', 'Common Area', 'microwave'),
(19, 'Blanket and Pillows', 'Bedroom', 'bedding'),
(20, 'Toilet Paper Holder', 'Washroom', 'toiletholder'),
(21, 'Security Guard', 'Building', 'securityguard'),
(22, 'Refrigerator', 'Common Area', 'refrigerator'),
(23, 'Nightstand', 'Bedroom', 'nightstand'),
(24, 'Towel Rack', 'Washroom', 'towelrack'),
(25, 'Garden', 'Building', 'garden'),
(26, 'Coffee Machine', 'Common Area', 'coffeemachine'),
(27, 'Curtains', 'Bedroom', 'curtains'),
(28, 'Exhaust Fan', 'Washroom', 'exhaustfan'),
(29, 'Solar Panels', 'Building', 'solarpanels'),
(30, 'Shared Workspace', 'Common Area', 'workspace'),
(31, 'Headboard', 'Bedroom', 'headboard'),
(32, 'Hand Dryer', 'Washroom', 'handdryer');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(3, 'Bengaluru'),
(1, 'Delhi'),
(4, 'Hyderabad'),
(2, 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `interested_users_properties`
--

CREATE TABLE `interested_users_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interested_users_properties`
--

INSERT INTO `interested_users_properties` (`id`, `user_id`, `property_id`) VALUES
(28, 28, 4);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `rent` int(11) NOT NULL,
  `rating_clean` float(3,1) DEFAULT NULL,
  `rating_food` float(3,1) DEFAULT NULL,
  `rating_safety` float(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `city_id`, `name`, `address`, `description`, `gender`, `rent`, `rating_clean`, `rating_food`, `rating_safety`) VALUES
(1, 1, `Saxena's Paying Guest`, `H.No. 3958 Kaseru Walan, Pahar Ganj, New Delhi, Delhi 110055`, `Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there's always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What's nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.`, `male`, 5000, 4.3, 3.4, 4.8),
(2, 1, `Navrang PG Home`, `644-C,Mohalla Baoli 6 Tooti Chowk, Paharganj, New Delhi, Delhi 110055`, `Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there's always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What's nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.`, `male`, 6000, 2.9, 3.4, 3.8),
(3, 2, 'Navkar Paying Guest', '44, Juhu Scheme, Juhu, Mumbai, Maharashtra 400058', `Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there's always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What's nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.`, 'female', 9500, 3.9, 3.8, 4.9),
(4, 2, 'PG for Girls Borivali West', 'Plot no.258/D4, Gorai no.2, Borivali West, Mumbai, Maharashtra 400092', `Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there's always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What's nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.`, 'female', 8000, 4.2, 4.1, 4.5),
(5, 2, 'Ganpati Paying Guest', 'Police Beat, Sainath Complex, Besides, SV Rd, Daulat Nagar, Borivali East, Mumbai - 400066', `Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there's always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What's nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.`, 'male', 8500, 4.2, 3.9, 4.6);

-- --------------------------------------------------------

--
-- Table structure for table `properties_amenities`
--

CREATE TABLE `properties_amenities` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `amenity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `properties_amenities`
--

INSERT INTO `properties_amenities` (`id`, `property_id`, `amenity_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 10),
(11, 6, 11),
(12, 6, 12),
(13, 7, 13),
(14, 7, 14),
(15, 8, 15),
(16, 8, 16),
(17, 9, 17),
(18, 9, 18),
(19, 10, 19),
(20, 10, 20),
(21, 11, 21),
(22, 11, 22),
(23, 12, 23),
(24, 12, 24),
(25, 13, 25),
(26, 13, 26),
(27, 14, 27),
(28, 14, 28),
(29, 15, 29),
(30, 15, 30),
(31, 16, 31),
(32, 16, 32),
(33, 1, 32),
(34, 1, 31),
(35, 2, 30),
(36, 2, 29),
(37, 3, 28),
(38, 3, 27),
(39, 4, 26),
(40, 4, 25),
(41, 5, 24),
(42, 5, 23),
(43, 6, 22),
(44, 6, 21),
(45, 7, 20),
(46, 7, 19),
(47, 8, 18),
(48, 8, 17),
(49, 9, 16),
(50, 9, 15),
(51, 10, 14),
(52, 10, 13),
(53, 11, 12),
(54, 11, 11),
(55, 12, 10),
(56, 12, 9),
(57, 13, 8),
(58, 13, 7),
(59, 14, 6),
(60, 14, 5),
(61, 15, 4),
(62, 15, 3),
(63, 16, 2),
(64, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `content` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `property_id`, `user_name`, `content`) VALUES
(17, 9, 'Ananya R.', 'The house was clean and well-maintained when I moved in. It felt like home right away!'),
(18, 9, 'Varun D.', 'Great stay! The combination of good amenities, responsive landlord, and affordable rent made this place perfect for me.'),
(19, 10, 'Ramesh T.', 'My stay was incredibly peaceful, and the neighborhood is quiet and safe. Perfect for families.'),
(20, 10, 'Mona V.', 'I ve rented multiple places, but this was by far the best experience in terms of comfort and value for money.'),
(21, 11, 'Sanya D.', 'The place had a cozy vibe, and I never had any issues with utilities or noise.'),
(22, 11, 'Rajeev K.', 'The housekeeping services were excellent. They really kept the place spotless.'),
(23, 12, 'Karan J.', 'Having high-speed internet included in the rent was a huge plus for me as a remote worker.'),
(24, 12, 'Shweta L.', 'The maintenance team was always available. Any repair request was handled within a day!'),
(25, 13, 'Sneha M.', 'Loved the shared gym and pool in the building! A fantastic perk for fitness enthusiasts.'),
(26, 13, 'Akhil N.','Parking availability was a lifesaver, and the CCTV cameras ensured safety for all residents.'),
(27, 14, 'Rahul S.', 'The kitchen came fully equipped, and the modern appliances made my life so much easier.'),
(28, 14, 'Deepika T.', 'I loved the gated community setup. The gardens and walking tracks were a nice touch.'),
(29, 15, 'Mehul V.', 'The landlord was very accommodating and promptly resolved any maintenance issues.'),
(30, 15, 'Arvind P.', 'The building had 24/7 security and power backup, which gave me great peace of mind.'),
(31, 16, 'Priya C.', 'I ve had bad landlords in the past, but this one was respectful and understanding. Great experience!'),
(32, 16, 'Amrita G.', 'The owner ensured a smooth handover and even helped with local area tips. Super friendly!');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `college_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full_name`, `phone`, `gender`, `college_name`) VALUES
(1, 'anuj.kalbalia@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Anuj Kalbalia', '9535100112', 'male', 'NITD'),
(2, 'shadab@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Shadab Alam', '9876543210', 'male', 'NITJ'),
(3, 'aditya@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Aditya Sood', '9876543210', 'male', 'Chandigarh University'),
(4, 'radhika@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Radhika Bhatia', '9876543210', 'female', 'Delhi University'),
(28, 'deba@gmail.com', 'ffff23497a2aefbefd9e6d198431cd49fde42559', 'Debanjan Sarkar', '8978562574', 'male', 'Jalpaiguri Government Engineering College');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `amenity_id` (`amenity_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD CONSTRAINT `interested_users_properties_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `interested_users_properties_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD CONSTRAINT `properties_amenities_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`),
  ADD CONSTRAINT `properties_amenities_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`);

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
