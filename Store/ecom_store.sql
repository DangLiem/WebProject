-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 04, 2019 lúc 01:29 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecom_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `size`) VALUES
(2, '::1', 1, 'Medium');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(5, 'Men', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet'),
(6, 'Women', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet'),
(7, 'Kids', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet'),
(8, 'Other', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_img4` text NOT NULL,
  `product_price` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_img4`, `product_price`, `product_keywords`, `product_desc`) VALUES
(1, 3, 6, '2019-03-02 14:02:27', 'ComfyCush Canvas Era Shop At Vans', 'ComfyCush Canvas Era Shop At Vans-1.jpg', 'ComfyCush Canvas Era Shop At Vans-2.jpg', 'ComfyCush Canvas Era Shop At Vans-3.jpg', 'ComfyCush Canvas Era Shop At Vans-4.jpg', '60', 'shoes', 'ComfyCush Canvas Era Shop At Vans is a Vans'),
(2, 3, 5, '2019-03-02 13:45:54', 'ComfyCush Sk8-Hi Shop At Vans', 'ComfyCush Sk8-Hi Shop At Vans-1.jpg', 'ComfyCush Sk8-Hi Shop At Vans-2.jpg', 'ComfyCush Sk8-Hi Shop At Vans-3.jpg', 'ComfyCush Sk8-Hi Shop At Vans-4.jpg', '90', 'Shoes', '<p>kkkkkkk</p>'),
(4, 3, 6, '2019-03-03 08:10:22', 'ComfyCush Sidestripe Check Vans Old Skool', 'ComfyCush Sidestripe Check Vans Old Skool-1.jpg', 'ComfyCush Sidestripe Check Vans Old Skool-2.jpg', 'ComfyCush Sidestripe Check Vans Old Skool-3.jpg', 'ComfyCush Sidestripe Check Vans Old Skool-4.jpg', '70', 'Shoes', '<p>kkkkk</p>'),
(5, 5, 5, '2019-03-03 09:35:42', 'Balenciaga Triple S Black Shoes', 'Balenciaga Triple S-1.jpg', 'Balenciaga Triple S-2 .jpg', 'Balenciaga Triple S-3.jpg', 'Balenciaga Triple S-4.jpg', '499', 'Shoes', '<p>jjjjjjj</p>'),
(6, 3, 5, '2019-03-03 08:30:37', 'Primary Check Old Skool Shop At Vans', 'Primary Check Old Skool Shop At Vans-1.jpg', 'Primary Check Old Skool Shop At Vans-2.jpg', 'Primary Check Old Skool Shop At Vans-3.jpg', 'Primary Check Old Skool Shop At Vans-4.jpg', '65', 'Shoes', '<p>gggggg</p>'),
(8, 2, 5, '2019-03-03 09:36:25', 'Adidas Prophere Perfect Pro Shoes', 'Adidas Prophere-1.jpg', 'Adidas Prophere-2.jpg', 'Adidas Prophere-3.jpg', 'Adidas Prophere-4.jpg', '100', 'Shoes', '<p>hhhhh</p>'),
(9, 1, 6, '2019-03-03 09:13:13', 'Nike Air Max Dia White-Pink', 'Nike Air Max Dia -1.jpg', 'Nike Air Max Dia -2.jpg', 'Nike Air Max Dia -3.jpg', 'Nike Air Max Dia -4.jpg', '90', 'Shoes', '<p>lllll</p>'),
(10, 1, 5, '2019-03-03 09:13:37', 'Nike Air Max 97 White-Blue', 'Nike Air Max 97 -1.jpg', 'Nike Air Max 97 -2.jpg', 'Nike Air Max 97 -3.jpg', 'Nike Air Max 97 -4.jpg', '150', 'Shoes', '<p>jjjjjj</p>'),
(11, 3, 7, '2019-03-03 09:11:07', 'Kids Checkerboard Old Skool V Vans', 'Kids Checkerboard Old Skool V Vans-3.jpg', 'Kids Checkerboard Old Skool V Vans-2.jpg', 'Kids Checkerboard Old Skool V Vans-1.jpg', 'Kids Checkerboard Old Skool V Vans-4.jpg', '60', 'Shoes', '<p>ggggg</p>'),
(15, 1, 5, '2019-03-03 09:34:41', 'Nike Air Jordan 9 Retro Shoes', 'Air Jordan 9 Retro  Shoe Nike-1.jpg', 'Air Jordan 9 Retro  Shoe Nike-2.jpg', 'Air Jordan 9 Retro  Shoe Nike-3.jpg', 'Air Jordan 9 Retro Shoe Nike-4.jpg', '300', 'Shoes', '<p>llll</p>'),
(16, 1, 5, '2019-03-03 09:29:21', 'Nike Zoom Pegasus Turbo  Shoe', 'Nike Zoom Pegasus Turbo  Shoe-1.jpg', 'Nike Zoom Pegasus Turbo  Shoe-2.jpg', 'Nike Zoom Pegasus Turbo  Shoe-3.jpg', 'Nike Zoom Pegasus Turbo  Shoe-4.jpg', '150', 'Shoes', '<p>jjjjj</p>'),
(17, 4, 5, '2019-03-03 09:33:46', 'Chuck Taylor All Star Cordura 1980', 'Product-3b.jpg', 'Screenshot_2019-03-02 GiÃ y Thá»ƒ Thao XSPORT All Star Cá»• Cao â€“ GIÃ€Y XSHOP(4).jpg', 'Screenshot_2019-03-02 GiÃ y Thá»ƒ Thao XSPORT All Star Cá»• Cao â€“ GIÃ€Y XSHOP(5).jpg', 'Screenshot_2019-03-02 GiÃ y Thá»ƒ Thao XSPORT All Star Cá»• Cao â€“ GIÃ€Y XSHOP(6).jpg', '70', 'Shoes', '<p>xxxx</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Nike', 'nike'),
(2, 'Adidas', 'adidas'),
(3, 'Vans', 'vans'),
(4, 'Converse', 'converse'),
(5, 'Balenciaga', 'balenciaga');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` text NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', 'slide-1.jpg'),
(2, 'Slide number 2', 'slide-2.jpg'),
(3, 'Slide number 3', 'slide-3.jpg'),
(4, 'Slide number 4', 'slide-4.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
