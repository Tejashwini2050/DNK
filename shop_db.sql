-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 09:24 AM
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
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone_no` int(10) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`, `phone_no`, `email`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 0, ''),
(11, 'Vikas', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, ''),
(12, 'Shrinidhi', 'afc97ea131fd7e2695a98ef34013608f97f34e1d', 0, ''),
(13, 'Shreejit', 'cfa1150f1787186742a9a884b73a43d8cf219f9b', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `business_profile`
--

CREATE TABLE `business_profile` (
  `bid` int(11) NOT NULL,
  `adminid` int(100) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `companyname` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` int(6) NOT NULL,
  `ieccode` char(10) NOT NULL,
  `adcode` char(14) NOT NULL,
  `gstin` char(15) NOT NULL,
  `lutcode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business_profile`
--

INSERT INTO `business_profile` (`bid`, `adminid`, `fname`, `lname`, `companyname`, `address`, `city`, `state`, `pincode`, `ieccode`, `adcode`, `gstin`, `lutcode`) VALUES
(1, 11, 'Vikas', 'Satrasala', 'Sateyre', '#16,ChurchStreet,bangalore,Karnataka-560058', 'Bangalore', 'Karnataka', 560058, '1234567890', '13245678908765', '234567890-98765', '21341'),
(2, 13, 'Shreejit', 'C', 'Shreejipvtltd', '#34,MainStreet,Bangalore,Karnataka,560001', 'Mangalore', 'Karnataka', 560001, '1876543211', '12345679765213', '324567898765434', '13245');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` int(10) NOT NULL,
  `message` varchar(500) NOT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `delivery_charge` decimal(10,2) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `pid`, `pname`, `name`, `number`, `email`, `method`, `address`, `quantity`, `price`, `delivery_charge`, `total_price`, `placed_on`, `payment_status`) VALUES
(19, 8, 9, 'Blue Pottery', 'Shivani', '9988776689', 'shivu@gmail.com', 'cash on delivery', 'flat no. 12, Chicago, Illinois, Chicago, USA - 121212', 1, 7000, 1590.00, 8590, '2023-09-22', 'pending'),
(20, 9, 14, 'Miniature Painting', 'Srishti', '8615566741', 'sri@gmail.com', 'cash on delivery', 'flat no. 06, George Street, Melbourne, Victoria, Australia - 323211', 1, 250000, 2580.00, 252580, '2023-09-22', 'pending'),
(21, 9, 12, 'Kachh Embroidery', 'Srishti', '8615566741', 'sri@gmail.com', 'cash on delivery', 'flat no. 06, George Street, Melbourne, Victoria, Australia - 323211', 1, 10000, 86.00, 10086, '2023-09-22', 'pending'),
(22, 10, 16, 'Pashmina scarf', 'Tejashwini', '8987968766', 'tej@gmail.com', 'cash on delivery', 'flat no. 55, Wall Street, New York, New York, USA - 121415', 1, 5000, 0.00, 5000, '2023-09-22', 'pending'),
(23, 10, 13, 'Handicrafts', 'Tejashwini', '8987968766', 'tej@gmail.com', 'cash on delivery', 'flat no. 55, Wall Street, New York, New York, USA - 121415', 1, 1000, 318.00, 1318, '2023-09-22', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL,
  `adminid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `name`, `details`, `weight`, `price`, `image_01`, `image_02`, `image_03`, `adminid`) VALUES
(9, 'Blue Pottery', 'Famous in Jodhpur', 1000.00, 7000, 'Blue.jpg', '', '', 11),
(11, 'Necklace set', 'With kundan work.', 150.00, 200000, '28 Stylish Cute Fancy Choker Jewelry Designs _ Trending Crafts Jewelry Designs.jpg', '', '', 11),
(12, 'Kachh Embroidery', 'Comes from tribal community of the Kutch district in Gujarat', 100.00, 10000, 'Kachchh.jpg', '', '', 11),
(13, 'Handicrafts', 'It showcases the essence of India&#39;s diverse heritage and artistic traditions', 200.00, 1000, 'Handicraft at Delhi Haat.jpg', '', '', 12),
(14, 'Miniature Painting', 'Finely wrought portrait executed on vellum', 3000.00, 250000, 'miniature painting.jpeg', '', '', 12),
(15, 'Ayurvedic Products', 'Use ancient herbal compounds and minerals', 2000.00, 5000, 'Top 12 Ayurvedic Tonics For Weight Gain.jpg', '', '', 13),
(16, 'Pashmina scarf', 'Woven beautifully with raw unspun wool', 0.00, 5000, 'Pash.jpeg', '', '', 13);

-- --------------------------------------------------------

--
-- Table structure for table `tariff`
--

CREATE TABLE `tariff` (
  `tid` int(11) NOT NULL,
  `country` varchar(30) NOT NULL,
  `tariff` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tariff`
--

INSERT INTO `tariff` (`tid`, `country`, `tariff`) VALUES
(1, 'Australia', 0.86),
(2, 'Canada', 1.47),
(3, 'China', 3.39),
(4, 'France', 1.69),
(5, 'Ireland', 1.69),
(6, 'Japan', 2.45),
(7, 'New Zealand', 1.35),
(8, 'UAE', 4.40),
(9, 'USA', 1.59),
(10, 'UK', 1.69);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'sheik', 'sheik@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(2, 'a', 'a@gmail.com', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8'),
(3, 'q', '12@gmail.com', '356a192b7913b04c54574d18c28d46e6395428ab'),
(4, 's', 's@gmail.com', 'a0f1490a20d0211c997b44bc357e1972deab8ae3'),
(5, 'q', 'q@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(6, 'xxx', '123@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(7, 'aaa', 'aaa@gmail.com', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(8, 'Shivani', 'shivu@gmail.com', 'eaa67f3a93d0acb08d8a5e8ff9866f51983b3c3b'),
(9, 'Srishti', 'sri@gmail.com', '43814346e21444aaf4f70841bf7ed5ae93f55a9d'),
(10, 'Tejashwini', 'tej@gmail.com', '9a3e61b6bcc8abec08f195526c3132d5a4a98cc0');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(2, 2, 1, 'Fridge', 70000, 'fridge-1.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_profile`
--
ALTER TABLE `business_profile`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `ieccode` (`ieccode`),
  ADD UNIQUE KEY `gstin` (`gstin`),
  ADD KEY `adminid` (`adminid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `F1` (`adminid`);

--
-- Indexes for table `tariff`
--
ALTER TABLE `tariff`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `business_profile`
--
ALTER TABLE `business_profile`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tariff`
--
ALTER TABLE `tariff`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `business_profile`
--
ALTER TABLE `business_profile`
  ADD CONSTRAINT `business_profile_ibfk_1` FOREIGN KEY (`adminid`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `products` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `F1` FOREIGN KEY (`adminid`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
