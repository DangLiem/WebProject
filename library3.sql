-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2019 at 07:52 AM
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
-- Database: `library3`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) NOT NULL,
  `date_order` datetime NOT NULL,
  `total` float NOT NULL,
  `payment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity_orderred` int(11) NOT NULL,
  `price_each` float NOT NULL,
  `id_type` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` varchar(200) NOT NULL
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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_type` int(10) NOT NULL,
  `price` int(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(300) NOT NULL,
  `quantity` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `id_type`, `price`, `description`, `image`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'ULTRABOOST 19.', 1, 180, 'Running reinvented. These high-performance neutral running shoes deliver unrivalled comfort and energy return. The lightweight and propulsive shoes have a seamless knit upper that\'s engineere.', 'ULTRABOOST 19 SHOES.jpg', 100, '2019-03-03 18:03:46', '2019-03-03 18:03:46'),
(2, 'ALPHABOUNCE.', 1, 120, 'The athlete\'s running shoe. ', 'ALPHABOUNCE INSTINCT SHOES.jpg', 100, '2019-03-03 18:03:51', '2019-03-03 18:03:51'),
(3, 'ASWEEGO SHOES.', 1, 80, 'Shoes with flexibility and responsiveness for multisport training.', 'ASWEEGO SHOES.jpg', 100, '2019-03-03 18:03:55', '2019-03-03 18:03:55'),
(4, 'TERREX TWO SHOES.', 1, 200, 'Made for longer trail runs, these shoes are built with a ventilating open mesh upper for breathable comfort. ', 'TERREX TWO SHOES.jpg', 100, '2019-03-04 05:05:24', '2019-03-04 05:05:24'),
(5, 'RAPIDARUN X SHOES.', 1, 60, 'Running shoes designed just for girls. ', 'RAPIDARUN X SHOES.jpg', 100, '2019-03-04 05:05:31', '2019-03-04 05:05:31'),
(6, 'RAPIDARUN SHOES.', 1, 60, 'Kids have places to go and things to do.', 'RAPIDARUN SHOES.jpg', 100, '2019-03-04 05:05:38', '2019-03-04 05:05:38'),
(7, 'RAPIDARUN KNIT SHOES.', 1, 33, 'Build endurance and confidence in these juniors\' r...', 'RAPIDARUN KNIT SHOES.jpg', 100, '2019-03-04 05:05:42', '2019-03-04 05:05:42'),
(8, 'RAPIDARUN BTH SHOES.', 1, 60, 'Triple-digit temperatures can\'t stop you from trai...', 'RAPIDARUN BTH SHOES.jpg', 100, '2019-03-04 05:05:46', '2019-03-04 05:05:46'),
(9, 'PAMPA LITE + CUFF WP.', 2, 125, 'boots.', 'PAMPA LITE + CUFF WP.jpg', 100, '2019-03-04 05:05:49', '2019-03-04 05:05:49'),
(10, 'PAMPA LITE CYBER SKIN.', 2, 85, 'boots.', 'PAMPA LITE CYBER SKIN.png', 99, '2019-03-04 05:05:56', '2019-03-04 05:05:56'),
(11, 'PAMPA LITE SKIN.', 2, 1000, 'Rich\'s shoes.', 'ULTRABOOST 19 SHOES.jpg', 99, '2019-03-04 05:06:00', '2019-03-04 05:06:00'),
(12, 'Chuck Taylor Classic.', 3, 52, 'classic.', 'CHUCK TAYLOR CLASSIC.jpg', 99, '2019-03-04 05:06:02', '2019-03-04 05:06:02'),
(13, 'One Star Academy.', 3, 77, 'Converse One Star.', 'One Star Academy.jpg', 99, '2019-03-04 05:06:05', '2019-03-04 05:06:05'),
(14, 'CONVERSE RICH.', 3, 2000, 'Priceless Shoes.', 'RICH.gif', 99, '2019-03-04 05:06:07', '2019-03-04 05:06:07'),
(15, 'ULTRABOOST 19.', 1, 180, 'Running reinvented. These high-performance neutral running shoes deliver unrivalled comfort and energy return. The lightweight and propulsive shoes have a seamless knit upper that\'s engineere.', 'ULTRABOOST 19 SHOES.jpg', 100, '2019-03-04 05:06:09', '2019-03-04 05:06:09'),
(16, 'ALPHABOUNCE.', 1, 120, 'The athlete\'s running shoe. ', 'ALPHABOUNCE INSTINCT SHOES.jpg', 100, '2019-03-04 05:06:16', '2019-03-04 05:06:16'),
(17, 'ASWEEGO SHOES.', 1, 80, 'Shoes with flexibility and responsiveness for multisport training.', 'ASWEEGO SHOES.jpg', 100, '2019-03-04 05:06:19', '2019-03-04 05:06:19'),
(18, 'TERREX TWO SHOES.', 1, 200, 'Made for longer trail runs, these shoes are built with a ventilating open mesh upper for breathable comfort. ', 'TERREX TWO SHOES.jpg', 100, '2019-03-04 05:06:23', '2019-03-04 05:06:23'),
(19, 'RAPIDARUN X SHOES.', 1, 60, 'Running shoes designed just for girls. ', 'RAPIDARUN X SHOES.jpg', 100, '2019-03-04 05:06:26', '2019-03-04 05:06:26'),
(20, 'RAPIDARUN SHOES.', 1, 60, 'Kids have places to go and things to do.', 'RAPIDARUN SHOES.jpg', 100, '2019-03-04 05:06:29', '2019-03-04 05:06:29'),
(21, 'RAPIDARUN KNIT SHOES.', 1, 33, 'Build endurance and confidence in these juniors\' r...', 'RAPIDARUN KNIT SHOES.jpg', 100, '2019-03-04 05:06:39', '2019-03-04 05:06:39'),
(22, 'RAPIDARUN BTH SHOES.', 1, 60, 'Triple-digit temperatures can\'t stop you from trai...', 'RAPIDARUN BTH SHOES.jpg', 100, '2019-03-04 05:06:42', '2019-03-04 05:06:42'),
(23, 'PAMPA LITE + CUFF WP.', 2, 125, 'boots.', 'PAMPA LITE + CUFF WP.jpg', 100, '2019-03-04 05:06:44', '2019-03-04 05:06:44'),
(24, 'PAMPA LITE CYBER SKIN.', 2, 85, 'boots.', 'PAMPA LITE CYBER SKIN.png', 99, '2019-03-04 05:06:46', '2019-03-04 05:06:46'),
(25, 'PAMPA LITE SKIN.', 2, 1000, 'Rich\'s shoes.', 'ULTRABOOST 19 SHOES.jpg', 99, '2019-03-04 05:06:48', '2019-03-04 05:06:48'),
(40, 'Chuck Taylor Classic.', 3, 52, 'classic.', 'CHUCK TAYLOR CLASSIC.jpg', 99, '2019-03-03 18:13:17', '2019-03-03 18:13:17'),
(41, 'One Star Academy.', 3, 77, 'Converse One Star.', 'One Star Academy.jpg', 99, '2019-03-03 18:13:17', '2019-03-03 18:13:17'),
(42, 'CONVERSE RICH.', 3, 2000, 'Priceless Shoes.', 'RICH.gif', 99, '2019-03-03 18:15:20', '2019-03-03 18:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'ADIDAS.', 'Famous shoes brands.', 'ADIDAS.jpg', '2019-03-03 17:47:11', '0000-00-00 00:00:00'),
(2, 'PALADIUM.', 'Famous shoes brands.', 'PALLADIUM.png', '2019-03-03 17:54:31', '0000-00-00 00:00:00'),
(3, 'CONVERSE.', 'Famous shoes brands.', 'CONVERSE.png', '2019-03-03 17:55:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
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
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`);

--
-- Constraints for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD CONSTRAINT `bill_details_ibfk_1` FOREIGN KEY (`id`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `bill_details_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `product_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
