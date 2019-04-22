-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 08:33 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wolfshop1`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` int(10) NOT NULL,
  `customerName` varchar(99) NOT NULL,
  `customerEmail` varchar(99) NOT NULL,
  `customerPassword` text NOT NULL,
  `customerPhone` varchar(99) NOT NULL,
  `address` text NOT NULL,
  `rememberToken` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderID` int(10) NOT NULL,
  `productID` int(10) NOT NULL,
  `quantityOrderred` int(10) NOT NULL,
  `priceEach` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(10) NOT NULL,
  `orderDate` date NOT NULL,
  `shippedDate` date NOT NULL,
  `status` int(11) NOT NULL,
  `customerID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `customerID` int(10) NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productlines`
--

CREATE TABLE `productlines` (
  `productLineID` int(10) NOT NULL,
  `productLineName` varchar(99) NOT NULL,
  `productLineDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productlines`
--

INSERT INTO `productlines` (`productLineID`, `productLineName`, `productLineDescription`) VALUES
(1, 'Vans', 'It’s a place where imagination lets loose over concrete bowls, art installations, workshops and concert stages, inspiring every person who runs, rolls, or stomps through its door. Located in Brooklyn, New York, Chicago, Illinois and Waterloo, London, as well as pop-ups around the world, the House of Vans is home to the creativity that moves us.'),
(2, 'Adidas', 'Both the company and the adidas AG share continued to receive strong analyst support in 2018. Around 40 analysts from investment banks and brokerage firms regularly publish research reports on adidas. The vast majority of analysts are confident about the medium- and long-term potential of the company. This is reflected in the recommendation split for our share as at December 31, 2018. 59% of analysts recommended investors to ‘buy’ our share (2017: 46%). 36% advised to ‘hold’ our share (2017: 46%) and 5% of the analysts recommended to ‘sell’ our share (2017: 8%).');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productCode` int(10) NOT NULL,
  `productName` varchar(99) NOT NULL,
  `productLineID` int(10) NOT NULL,
  `productImg1` varchar(99) NOT NULL,
  `productImg2` varchar(99) NOT NULL,
  `productImg3` varchar(99) NOT NULL,
  `productPrice` int(19) NOT NULL,
  `productDescription` text NOT NULL,
  `approved` int(10) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productCode`, `productName`, `productLineID`, `productImg1`, `productImg2`, `productImg3`, `productPrice`, `productDescription`, `approved`, `created_at`, `updated_at`) VALUES
(1, 'Checkerboard Slip-On.', 1, 'ComfyCush Checkerboard Slip-On.png', 'ComfyCush Checkerboard Slip-On(1).png', 'ComfyCush Checkerboard Slip-On(2).png', 60, 'Vans has reinvigorated the classic Slip-On by introducing ComfyCush: a new softer, cushiony outsole that gives the ComfyCush Slip-On a first-class fit that feels like walking on a cloud. Newly constructed canvas uppers house simplified one-piece interiors with added arch support and new moisture-wicking lining throughout, resulting in a lightweight experience that assures you’ll Keep It Comfy at all times.', 1, '2019-04-17 13:32:12', '2019-04-17 14:03:20'),
(2, 'SLIP-ON', 1, 'SLIP-ON.png', 'SLIP-ON(1).png', 'SLIP-ON(2).png', 50, 'The Classic Slip-On has a low profile, slip-on canvas upper with all-over checker print, elastic side accents, Vans flag label and Vans original Waffle Outsole.', 1, '2019-04-17 13:32:12', '2019-04-17 13:32:12'),
(3, 'OLD SKOOL', 1, 'OLD SKOOL.png', 'OLD SKOOL(1).png', 'OLD SKOOL(2).png', 60, 'The Old Skool, Vans classic skate shoe and the first to bear the iconic side stripe, has a low-top lace-up silhouette with a durable suede and canvas upper with padded tongue and lining and Vans signature Waffle Outsole.', 1, '2019-04-17 13:37:03', '2019-04-17 13:37:03'),
(4, 'OLD SKOOL GRAY', 1, 'OLD SKOOL GRAY.png', 'OLD SKOOL GRAY(1).png', 'OLD SKOOL GRAY(2).png', 60, 'The Old Skool, the Vans classic skate shoe and first to bear the iconic sidestripe, is a low top lace-up featuring sturdy canvas uppers, re-enforced toecaps to withstand repeated wear, padded collars for support and flexibility, and signature rubber waffle outsoles.', 1, '2019-04-17 13:37:03', '2019-04-17 13:37:03'),
(5, 'CANVAS OLD SKOOL', 1, 'CANVAS OLD SKOOL.png', 'CANVAS OLD SKOOL(1).png', 'CANVAS OLD SKOOL(2).png', 60, 'The Canvas Old Skool, the Vans classic skate shoe and first to bare the iconic sidestripe, is a low top lace-up with sturdy canvas uppers, re-enforced toecaps to withstand repeated wear, signature rubber waffle outsoles, and padded collars for support and flexibility.', 1, '2019-04-17 13:37:03', '2019-04-17 13:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `productlines`
--
ALTER TABLE `productlines`
  ADD PRIMARY KEY (`productLineID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productCode`),
  ADD KEY `productLineID` (`productLineID`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productlines`
--
ALTER TABLE `productlines`
  MODIFY `productLineID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productCode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `products` (`productCode`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productLineID`) REFERENCES `productlines` (`productLineID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
