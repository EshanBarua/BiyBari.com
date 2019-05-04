-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2019 at 10:23 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biyebari`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `fname`, `lname`, `email`, `pass`) VALUES
(2, 'hafizur111', 'Hafizur', 'Rahman', 'hafizur@yahoo.com', '12345'),
(3, 'nahid226', 'Nahid', 'Babu', 'nahid@yahoo.com', 'nahid'),
(4, 'badhan21', 'Saddat', 'Hasan', 'badhan@gmail.com', 'badhan'),
(5, 'eshan2019', 'Eshan', 'Barua', 'eshan@yahoo.com', 'eshan'),
(6, 'samanta', 'Samanta', 'Afrin', 'samanta@gmail.com', 'samanta');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `uid` int(30) DEFAULT NULL,
  `pid` int(30) DEFAULT NULL,
  `quantity` int(30) DEFAULT NULL,
  `isOrdered` int(10) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`uid`, `pid`, `quantity`, `isOrdered`, `date`, `time`) VALUES
(11, 301, 4, 1, '2017-06-26', '11:41:25'),
(11, 361, 3, 1, '2017-06-26', '11:41:25'),
(11, 309, 1, 0, '0000-00-00', '00:00:00'),
(11, 357, 5, 0, '0000-00-00', '00:00:00'),
(11, 307, 5, 0, '0000-00-00', '00:00:00'),
(13, 301, 5, 1, '2017-06-27', '02:08:45'),
(13, 362, 3, 1, '2017-06-27', '02:08:45'),
(13, 361, 7, 1, '2017-06-27', '02:08:45'),
(11, 304, 2, 0, '0000-00-00', '00:00:00'),
(13, 303, 1, 1, '2019-05-03', '17:27:28'),
(13, 307, 2, 1, '2019-05-03', '17:30:53'),
(13, 309, 1, 1, '2019-05-03', '17:31:20'),
(13, 336, 1, 1, '2019-05-03', '21:38:41'),
(13, 369, 2, 1, '2019-05-03', '21:38:41'),
(13, 366, 2, 1, '2019-05-03', '21:38:41'),
(14, 303, 1, 1, '2019-05-04', '11:35:46'),
(14, 338, 2, 1, '2019-05-04', '11:35:46'),
(14, 369, 2, 1, '2019-05-04', '11:35:46'),
(14, 342, 2, 1, '2019-05-04', '11:35:46'),
(14, 328, 1, 1, '2019-05-04', '11:36:18'),
(15, 303, 1, 1, '2019-05-04', '12:45:55'),
(15, 323, 2, 1, '2019-05-04', '12:45:55'),
(15, 318, 2, 1, '2019-05-04', '12:45:55'),
(16, 307, 4, 1, '2019-05-04', '13:41:17'),
(16, 362, 1, 1, '2019-05-04', '13:41:17'),
(16, 363, 2, 1, '2019-05-04', '13:41:17'),
(16, 353, 1, 1, '2019-05-04', '13:41:17'),
(16, 304, 3, 1, '2019-05-04', '13:41:17'),
(16, 356, 5, 1, '2019-05-04', '13:41:17'),
(16, 330, 3, 1, '2019-05-04', '13:41:17'),
(16, 366, 3, 1, '2019-05-04', '13:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `faq` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(30) NOT NULL,
  `type` int(10) NOT NULL,
  `location` varchar(30) NOT NULL,
  `price` int(10) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `type`, `location`, `price`, `name`) VALUES
(303, 1, 'images/stage_decoration/north-', 100, 'Gate Decoration 1'),
(304, 4, 'images/reception/1.jpg', 345, 'Reception Style 1'),
(305, 5, 'images/card/1.jpg', 10, 'Invitation Card 1'),
(306, 6, 'images/dress/1.jpg', 125, 'Wedding Dress 1'),
(307, 1, 'images/stage_decoration/2.jpg', 445, 'Wedding Stage 2'),
(308, 2, 'images/car/4.jpg', 32, 'Car Decoration 4'),
(309, 1, 'images/stage_decoration/8.jpg', 150, 'Wedding Stage 8'),
(310, 4, 'images/reception/5.jpg', 165, 'Reception Style 5'),
(311, 5, 'images/card/2.jpg', 12, 'Invitation Card 2'),
(312, 1, 'images/stage_decoration/3.jpg', 49, 'Wedding Stage 3'),
(313, 6, 'images/dress/5.jpg', 180, 'Wedding Dress 5'),
(314, 4, 'images/reception/2.jpg', 425, 'Reception Style 2'),
(315, 2, 'images/car/2.jpg', 40, 'Car Decoration 2'),
(316, 3, 'images/gate/6.jpg', 135, 'Gate Decoration 6'),
(317, 5, 'images/card/5.jpg', 11, 'Invitation Card 5'),
(318, 6, 'images/dress/7.jpg', 110, 'Wedding Dress 7'),
(319, 5, 'images/card/6.jpg', 15, 'Invitation Card 6'),
(320, 1, 'images/stage_decoration/9.jpg', 50, 'Wedding Stage 9'),
(321, 2, 'images/car/7.jpg', 36, 'Car Decoration 7'),
(322, 3, 'images/gate/4.jpg', 70, 'Gate Decoration 4'),
(323, 5, 'images/card/3.jpg', 15, 'Invitation Card 3'),
(324, 1, 'images/stage_decoration/5.jpg', 125, 'Wedding Stage 5'),
(325, 2, 'images/car/5.jpg', 67, 'Car Decoration 5'),
(326, 3, 'images/gate/7.jpg', 65, 'Gate Decoration 7'),
(327, 1, 'images/stage_decoration/4.jpg', 75, 'Wedding Stage 4'),
(328, 2, 'images/car/9.jpg', 33, 'Car Decoration 9'),
(329, 3, 'images/gate/8.jpg', 125, 'Gate Decoration 8'),
(330, 6, 'images/dress/2.jpg', 128, 'Wedding Dress 2'),
(331, 4, 'images/reception/6.jpg', 185, 'Reception Style 6'),
(332, 3, 'images/gate/5.jpg', 130, 'Gate Decoration 5'),
(333, 3, 'images/gate/10.jpg', 145, 'Gate Decoration 10'),
(334, 2, 'images/car/11.jpg', 50, 'Car Decoration 11'),
(335, 1, 'images/stage_decoration/6.jpg', 135, 'Wedding Stage 6'),
(336, 6, 'images/dress/4.jpg', 148, 'Wedding Dress 4'),
(337, 6, 'images/dress/11.jpg', 128, 'Wedding Dress 11'),
(338, 6, 'images/dress/8.jpg', 170, 'Wedding Dress 8'),
(339, 4, 'images/reception/8.jpg', 385, 'Reception Style 8'),
(340, 5, 'images/card/4.jpg', 16, 'Invitation Card 4'),
(341, 6, 'images/dress/9.jpg', 155, 'Wedding Dress 9'),
(342, 2, 'images/car/8.jpg', 35, 'Car Decoration 8'),
(343, 4, 'images/reception/9.jpg', 345, 'Reception Style 9'),
(344, 4, 'images/reception/4.jpg', 265, 'Reception Style 4'),
(345, 1, 'images/stage_decoration/7.jpg', 86, 'Wedding Stage 7'),
(346, 3, 'images/gate/9.jpg', 155, 'Gate Decoration 9'),
(347, 5, 'images/card/10.jpg', 12, 'Invitation Card 10'),
(348, 2, 'images/car/6.jpg', 26, 'Car Decoration 6'),
(349, 4, 'images/reception/7.jpg', 285, 'Reception Style 7'),
(350, 6, 'images/dress/3.jpg', 138, 'Wedding Dress 3'),
(351, 4, 'images/reception/10.jpg', 525, 'Reception Style 10'),
(352, 1, 'images/stage_decoration/10.jpg', 80, 'Wedding Stage 10'),
(353, 2, 'images/car/3.jpg', 42, 'Car Decoration 3'),
(354, 6, 'images/dress/10.jpg', 158, 'Wedding Dress 10'),
(355, 5, 'images/card/8.jpg', 10, 'Invitation Card 8'),
(356, 5, 'images/card/9.jpg', 9, 'Invitation Card 9'),
(357, 3, 'images/gate/2.jpg', 120, 'Gate Decoration 2'),
(358, 1, 'images/stage_decoration/11.jpg', 90, 'Wedding Stage 11'),
(359, 6, 'images/dress/6.jpg', 130, 'Wedding Dress 6'),
(360, 2, 'images/car/10.jpg', 47, 'Car Decoration 10'),
(361, 4, 'images/reception/3.jpg', 225, 'Reception Style 3'),
(362, 5, 'images/card/7.jpg', 13, 'Invitation Card 7'),
(363, 3, 'images/gate/3.jpg', 110, 'Gate Decoration 3'),
(364, 7, 'images/parlour/1.jpg', 40, 'Parlour Design 1'),
(366, 7, 'images/parlour/2.jpg', 46, 'Parlour Design 2'),
(368, 7, 'images/parlour/3.jpg', 47, 'Parlour Design 3'),
(369, 7, 'images/parlour/4.jpg', 57, 'Parlour Design 4'),
(370, 7, 'images/parlour/5.jpg', 47, 'Parlour Design 5');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `image` varchar(100) DEFAULT 'images/users/3.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `uname`, `fname`, `lname`, `email`, `pass`, `image`) VALUES
(16, 'hafizur111', 'Hafizur', 'Rahman', 'hafizur@gmail.com', '1234', 'images/users/p2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `uid` int(30) DEFAULT NULL,
  `pid` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`uid`, `pid`) VALUES
(11, 301),
(11, 307),
(13, 309),
(14, 310),
(14, 368),
(15, 321),
(15, 358),
(16, 349),
(16, 307),
(16, 357);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
