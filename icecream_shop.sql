-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 10, 2024 at 10:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icecream_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_tel` varchar(12) NOT NULL,
  `customer_point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flavors`
--

CREATE TABLE `flavors` (
  `flavor_id` int(11) NOT NULL,
  `flavor_nameEN` varchar(30) NOT NULL,
  `flavor_nameTH` varchar(30) NOT NULL,
  `flavor_price` decimal(10,2) NOT NULL,
  `flavor_pic` varchar(100) NOT NULL,
  `flavor_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flavors`
--

INSERT INTO `flavors` (`flavor_id`, `flavor_nameEN`, `flavor_nameTH`, `flavor_price`, `flavor_pic`, `flavor_status`) VALUES
(1, 'Apple Pie', 'พายแอปเปิ้ล', 30.00, '/images/order/flavors/Apple-Pie-Ice-Cream.jpg', 0),
(2, 'Blueberry', 'บลูเบอร์รี่', 30.00, '/images/order/flavors/BlueberryIceCream.jpg', 1),
(3, 'Blueberry Cheesecake', 'บลูเบอร์รี่ชีสเค้ก', 30.00, '/images/order/flavors/Blueberry-Cheesecake-Ice-Cream.webp', 1),
(4, 'Chocolate', 'ช็อกโกแลต', 30.00, '/images/order/flavors/ic-choc.jpg', 1),
(5, 'Chocolate with Cookie & Cream', 'ช็อกโกแลตคุกกี้แอนด์ครีม', 30.00, '/images/order/flavors/Chocolate-Cookie-Ice-Cream.jpg', 1),
(6, 'Cinnamon', 'ซินนามอน (อบเชย)', 30.00, '\\images\\order\\flavors\\Cinnamon-Swirl-Ice-Cream.jpg', 0),
(7, 'Graham', 'เกรแฮม', 30.00, '\\images\\order\\flavors\\Honey-Graham-Ice-Cream.jpg', 1),
(8, 'Lemon', 'เลม่อน', 30.00, '\\images\\order\\flavors\\Lemon-Ice-Cream.webp', 1),
(9, 'Mint Chocolate', 'มินต์ช็อกโกแลต', 30.00, '\\images\\order\\flavors\\Mint-Ice-Cream.jpg', 1),
(10, 'Pumpkin Spice', 'พัมพ์กิน สไปซ์', 30.00, '\\images\\order\\flavors\\Pumpkin-Spice-Ice-Cream.jpg', 1),
(11, 'Red Velvet', 'เรดเวลเวต', 30.00, '\\images\\order\\flavors\\Red-Velvet-Ice-Cream.webp', 1),
(12, 'S’more', 'สมอร์', 30.00, '\\images\\order\\flavors\\Smores-Ice-Cream.webp', 0),
(13, 'Strawberry', 'สตรอว์เบอร์รี่', 30.00, '\\images\\order\\flavors\\Strawberry-Ice-Cream.jpg', 1),
(14, 'Vanilla', 'วานิลลา', 30.00, '\\images\\order\\flavors\\ic-vani.webp', 1),
(15, 'Vanilla with Cookie & Cream', 'วานิลลาคุกกี้แอนด์ครีม', 30.00, '\\images\\order\\flavors\\ic-cookievani.webp', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `order_price` decimal(10,2) DEFAULT NULL,
  `customer_tel` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_item_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items_flavors`
--

CREATE TABLE `order_items_flavors` (
  `order_item_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items_packages`
--

CREATE TABLE `order_items_packages` (
  `order_item_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items_sauces`
--

CREATE TABLE `order_items_sauces` (
  `order_item_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items_toppings`
--

CREATE TABLE `order_items_toppings` (
  `order_item_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(11) NOT NULL,
  `package_nameEN` varchar(30) NOT NULL,
  `package_nameTH` varchar(30) NOT NULL,
  `package_price` decimal(10,2) NOT NULL,
  `package_pic` varchar(100) NOT NULL,
  `package_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_nameEN`, `package_nameTH`, `package_price`, `package_pic`, `package_status`) VALUES
(1, 'Chocolate-Dipped Cone', 'โคนเคลือบช็อกโกแลต', 15.00, '\\images\\order\\package\\chocDippedCone.jpeg', 0),
(2, 'Fish Cone', 'โคนรูปปลา', 15.00, '\\images\\order\\package\\fishCone.jpg', 1),
(3, 'Pretzel Cone', 'โคนเพรตเซล', 15.00, '\\images\\order\\package\\pretzelCone.jpg', 1),
(4, 'Waffle Cone', 'โคนวาฟเฟิล', 15.00, '\\images\\order\\package\\waffleCone.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_method` varchar(30) NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sauces`
--

CREATE TABLE `sauces` (
  `sauce_id` int(11) NOT NULL,
  `sauce_nameEN` varchar(30) NOT NULL,
  `sauce_nameTH` varchar(30) NOT NULL,
  `sauce_price` decimal(10,2) NOT NULL,
  `sauce_pic` varchar(100) NOT NULL,
  `sauce_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sauces`
--

INSERT INTO `sauces` (`sauce_id`, `sauce_nameEN`, `sauce_nameTH`, `sauce_price`, `sauce_pic`, `sauce_status`) VALUES
(1, 'Blueberry Coulis', 'ซอสบลูเบอร์รี่', 10.00, '\\images\\order\\sauce\\blueberry.jpg', 1),
(2, 'Caramel Sauce', 'ซอสคาราเมล', 10.00, '\\images\\order\\sauce\\caramel.jpg', 1),
(3, 'Cherry Compote', 'ซอสเชอร์รี่คอมโพท', 10.00, '\\images\\order\\sauce\\cherryCompote.jpg', 1),
(4, 'Chocolate Sauce', 'ซอสช็อกโกแลต', 10.00, '\\images\\order\\sauce\\chocolate.webp', 0),
(5, 'Lemon Zest Glaze', 'ซอสเลม่อน', 10.00, '\\images\\order\\sauce\\lemonGlaze.png', 1),
(6, 'Maple Syrup', 'เมเปิล ไซรัป', 10.00, '\\images\\order\\sauce\\mapleSyrup.jpg', 1),
(7, 'Mint Chocolate Syrup', 'ซอสมิ้นต์ช็อกโกแลต', 10.00, '\\images\\order\\sauce\\mintChocolate.png', 1),
(8, 'Orange Maple Cranberry Sauce', 'ซอสไซรัปส้มแครนเบอร์รี่', 10.00, '\\images\\order\\sauce\\OrangeMapleCranberry.jpg', 1),
(9, 'Strawberry Sauce', 'ซอสสตอร์วเบอร์รี่', 10.00, '\\images\\order\\sauce\\strawberry.webp', 1),
(10, 'White Chocolate Sauce', 'ซอสไวท์ช็อกโกแลต', 10.00, '\\images\\order\\sauce\\whiteChocolate.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `toppings`
--

CREATE TABLE `toppings` (
  `topping_id` int(11) NOT NULL,
  `topping_nameEN` varchar(30) NOT NULL,
  `topping_nameTH` varchar(30) NOT NULL,
  `topping_price` decimal(10,2) NOT NULL,
  `topping_pic` varchar(100) NOT NULL,
  `topping_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toppings`
--

INSERT INTO `toppings` (`topping_id`, `topping_nameEN`, `topping_nameTH`, `topping_price`, `topping_pic`, `topping_status`) VALUES
(1, 'Brownie Bites', 'บราวนี่ไบท์', 10.00, '\\images\\order\\topping\\brownie-bite.jpg', 1),
(2, 'Brown Sugar Jelly', 'บุกบราวน์ชูการ์', 10.00, '\\images\\order\\topping\\brownsugar-jelly.png', 1),
(3, 'Cherry', 'เชอร์รี่', 10.00, '\\images\\order\\topping\\cherry.webp', 1),
(4, 'Chocolate Chips', 'ช็อกโกแลตชิป', 10.00, '\\images\\order\\topping\\choc-chip.png', 1),
(5, 'Gummy Bears', 'กัมมี่แบร์', 10.00, '\\images\\order\\topping\\gummy-bear.jpg', 1),
(6, 'Marshmallow', 'มาร์ชแมลโลว์', 10.00, '\\images\\order\\topping\\mashmellow.png', 1),
(7, 'Oreo Crumbs', 'โอริโอ้บด', 10.00, '\\images\\order\\topping\\oreo-crumble.png', 1),
(8, 'Rainbow Sprinkles', 'เกล็ดน้ำตาลเรนโบว์', 10.00, '\\images\\order\\topping\\rainbow.png', 1),
(9, 'Wafer Stick', 'เวเฟอร์แท่ง', 10.00, '\\images\\order\\topping\\waferStick.jpg', 1),
(10, 'Whipped Cream', 'วิปครีม', 10.00, '\\images\\order\\topping\\whipped-cream.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_tel`);

--
-- Indexes for table `flavors`
--
ALTER TABLE `flavors`
  ADD PRIMARY KEY (`flavor_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_tel` (`customer_tel`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order_items_flavors`
--
ALTER TABLE `order_items_flavors`
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_items_packages`
--
ALTER TABLE `order_items_packages`
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_items_sauces`
--
ALTER TABLE `order_items_sauces`
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_items_toppings`
--
ALTER TABLE `order_items_toppings`
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `sauces`
--
ALTER TABLE `sauces`
  ADD PRIMARY KEY (`sauce_id`);

--
-- Indexes for table `toppings`
--
ALTER TABLE `toppings`
  ADD PRIMARY KEY (`topping_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flavors`
--
ALTER TABLE `flavors`
  MODIFY `flavor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sauces`
--
ALTER TABLE `sauces`
  MODIFY `sauce_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `toppings`
--
ALTER TABLE `toppings`
  MODIFY `topping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_tel`) REFERENCES `customers` (`customer_tel`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `order_items_flavors`
--
ALTER TABLE `order_items_flavors`
  ADD CONSTRAINT `order_items_flavors_ibfk_1` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`order_item_id`),
  ADD CONSTRAINT `order_items_flavors_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `flavors` (`flavor_id`);

--
-- Constraints for table `order_items_packages`
--
ALTER TABLE `order_items_packages`
  ADD CONSTRAINT `order_items_packages_ibfk_1` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`order_item_id`),
  ADD CONSTRAINT `order_items_packages_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `packages` (`package_id`);

--
-- Constraints for table `order_items_sauces`
--
ALTER TABLE `order_items_sauces`
  ADD CONSTRAINT `order_items_sauces_ibfk_1` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`order_item_id`),
  ADD CONSTRAINT `order_items_sauces_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `sauces` (`sauce_id`);

--
-- Constraints for table `order_items_toppings`
--
ALTER TABLE `order_items_toppings`
  ADD CONSTRAINT `order_items_toppings_ibfk_1` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`order_item_id`),
  ADD CONSTRAINT `order_items_toppings_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `toppings` (`topping_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
