-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2025 at 10:00 AM
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
-- Database: `mikastore`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_address` varchar(100) NOT NULL,
  `cust_phone` varchar(15) NOT NULL,
  `cust_email` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`cust_id`, `cust_name`, `cust_address`, `cust_phone`, `cust_email`, `password`) VALUES
(8, 'test', 'test', '09480482488', 'kokomon@fasfasf', '$2y$10$GuybEf7zM3gfnAePT6P7fegGZFo0cELLfS/A0XQnJR95P/vVvUdnC'),
(9, 'kiko', 'bayanan', '6664646', 'kokomon@gmail.com', 'kiko04'),
(10, 'mik', 'kiko', 'kiko', 'kiko@email.com', 'kiko@email.com'),
(11, 'jared vue mancia', 'Muntinlupa City', '5656565', 'jared@email.com', 'vue123'),
(12, 'Java mancia', 'ayananan', '6565656', 'java@email.com', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cust_cart`
--

CREATE TABLE `tbl_cust_cart` (
  `cart_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `pnt_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_painting_infos`
--

CREATE TABLE `tbl_painting_infos` (
  `pnt_id` int(11) NOT NULL,
  `pnt_name` varchar(100) NOT NULL,
  `descriptions` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `total_qty` int(11) NOT NULL,
  `last_qty` int(11) NOT NULL,
  `date_update` date NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_painting_infos`
--

INSERT INTO `tbl_painting_infos` (`pnt_id`, `pnt_name`, `descriptions`, `price`, `total_qty`, `last_qty`, `date_update`, `img`) VALUES
(7, 'Painting Name', 'Descriptions', 99, 2, 0, '0000-00-00', 'coastal-1920x1080-tranquil-seaside-ocean-peaceful-26590.jpg'),
(10, 'Self-Portrait', 'One of Vincent van Gogh’s famous self-portraits, painted in 1887.', 12550.5, 1, 0, '0000-00-00', 'Tutte le dimensioni _Vincent van Gogh - Self….jpeg'),
(11, 'Metamorphic Woman with Lilies (inspired by Octavio Ocampo’s metamorphic style)', 'This surrealist painting portrays a woman’s face seamlessly blended with calla lilies and lush leaves, a hallmark of Octavio Ocampo’s “metamorphic art” style.', 3, 1, 0, '0000-00-00', 'Absolutely in love with Octavio Ocampo.jpeg'),
(12, 'Solitude on the Edge', 'This striking artwork depicts a lone figure standing on a rocky cliff beside a tall tree, overlooking a tranquil body of water.', 99, 1, 0, '0000-00-00', 'b2d2e9ca-8814-4647-9cdc-240d27f0b885.jpeg'),
(13, 'Sunset Over the River', 'A watercolor landscape capturing a vibrant sunset.', 51, 1, 0, '0000-00-00', 'Discover a vibrant collection of 30 watercolor….jpeg'),
(14, 'The Silent Guardian', 'A finely detailed pencil sketch of an angel, gracefully seated in contemplation.', 99, 1, 0, '0000-00-00', 'Step into the enchanting realm of angel drawing….jpeg'),
(15, 'The Lady in the Crowd', 'A vibrant and expressive painting capturing a bustling crowd adorned with elegant hats of every color and style.', 99, 1, 0, '0000-00-00', 'This Digital Prints item by Veseleil has 33….jpeg'),
(16, 'Dual Faces in Harmony', 'A modern abstract painting featuring two overlapping faces created with geometric shapes and earthy tones.', 12000, 1, 0, '0000-00-00', 'Transform your outdoor space with stunning….jpeg'),
(20, 'The Unblinking Witness', 'Captures a fleeting moment from a noir dreamscape.', 2572.2, 20, 0, '0000-00-00', '@inktober day 16_ Grungy Digital inking using….jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_cust_cart`
--
ALTER TABLE `tbl_cust_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_painting_infos`
--
ALTER TABLE `tbl_painting_infos`
  ADD PRIMARY KEY (`pnt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_cust_cart`
--
ALTER TABLE `tbl_cust_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_painting_infos`
--
ALTER TABLE `tbl_painting_infos`
  MODIFY `pnt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
