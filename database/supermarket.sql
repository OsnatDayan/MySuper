-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2022 at 11:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `create_date`) VALUES
(1, '2156987', '2022-08-12 11:15:12'),
(2, '789456', '2022-08-13 22:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `item_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `price` double NOT NULL,
  `cart_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`item_id`, `product_id`, `amount`, `price`, `cart_id`) VALUES
(2, 4, 1, 4, 1),
(3, 4, 3, 4, 2),
(5, 10, 1, 25, 1),
(9, 6, 1, 20, 1),
(11, 8, 2, 9.2, 1),
(13, 18, 2, 16, 2),
(14, 15, 1, 9.8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(55) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'All Products'),
(2, 'Meats&Fish'),
(3, 'Vegetables&Fruits'),
(4, 'Wine&Drinks'),
(5, 'Snacks&Candies'),
(6, 'Milk&Eggs'),
(7, 'Bakery&Bread'),
(8, 'Cereals'),
(9, 'Ice Creams');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `cart_id` int(255) NOT NULL,
  `total_price` double NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `shipping_date` datetime NOT NULL,
  `order_date` datetime NOT NULL,
  `4_digits` varchar(4) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(55) COLLATE utf8mb4_bin NOT NULL,
  `product_category` int(11) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `price`, `image`) VALUES
(1, 'milk', 6, 5.8, 'milk.jpg'),
(2, 'white cheese', 6, 12.8, 'whiteCheese.jpg'),
(3, 'milk chocolate', 5, 5.9, 'milkchocolate.jpg'),
(4, 'bamba', 5, 4, 'bamba.jpg'),
(5, 'Chocolate Ice Cream', 9, 23, 'chocolateIce.jpg'),
(6, 'vanilla Ice Cream', 9, 20, 'vanillaIce.jpg'),
(7, 'bread', 7, 5.5, 'bread.jpg'),
(8, 'croissant', 7, 4.6, 'croissant.jpg'),
(9, 'cornflakes', 8, 20, 'cornflakes.jpg'),
(10, 'Cheerios', 8, 25, 'cheerios.jpg'),
(11, 'Salomon', 2, 45, 'Salomon.jpg'),
(12, 'bakala', 2, 40, 'bakala.jpg'),
(13, 'steak', 2, 69, 'steak.jpg'),
(14, 'XL eggs', 6, 30, 'eggs.jpg'),
(15, 'tomato', 3, 9.8, 'tomato.jpg'),
(16, 'banana', 3, 6.9, 'banana.jpg'),
(17, 'white wine', 4, 45, 'whitewine.jpg'),
(18, 'coca cola', 4, 8, 'cocacola.jpg'),
(19, 'bisli Greel', 5, 4, 'bisli.jpg'),
(20, 'Goldstar Beer', 4, 7.5, 'goldstartBeer.jpg'),
(22, 'Doritos', 5, 3.5, 'doritos.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `first_name` varchar(55) COLLATE utf8mb4_bin NOT NULL,
  `last_name` varchar(55) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `city` varchar(55) COLLATE utf8mb4_bin DEFAULT NULL,
  `street` varchar(55) COLLATE utf8mb4_bin DEFAULT NULL,
  `role` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `city`, `street`, `role`) VALUES
('21278596', 'Yael', 'Poor', 'yaelPoor@gmail.com', 'yp1234**', NULL, NULL, 0),
('212796854', 'Osnat', 'Dayan', 'os@gmail.com', 'aa11', NULL, NULL, 1),
('2156987', 'Hadassa', 'Dayan', 'hd@gmail.com', 'hh81', 'Jerusalem', 'Bar-Ilan', 0),
('3335698', 'david', 'be', 'daybe@gmail.com', 'db6593', NULL, NULL, 0),
('336598', 'gila', 'lewis', 'gl@gmail.com', 'gila47', NULL, NULL, 0),
('555369', 'Chaim', 'Levi', 'ch@gmail.com', 'chch56', NULL, NULL, 0),
('789456', 'michel', 'key', 'mk@gmail.com', 'mkmk12', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `from users to cart` (`user_id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `from products to cart_item` (`product_id`),
  ADD KEY `from cart to cart_item` (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `from users to orders` (`user_id`),
  ADD KEY `from cart to orders` (`cart_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `from category to products` (`product_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `item_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `from users to cart` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `from cart to cart_item` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  ADD CONSTRAINT `from products to cart_item` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `from cart to orders` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  ADD CONSTRAINT `from users to orders` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `from category to products` FOREIGN KEY (`product_category`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
