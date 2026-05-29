-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2026 at 12:12 PM
-- Server version: 8.0.45-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `kosik`
--

CREATE TABLE `kosik` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `mnozstvi` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='idk košík';

--
-- Dumping data for table `kosik`
--

INSERT INTO `kosik` (`id`, `product_id`, `mnozstvi`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 2, 1),
(4, 2, 1),
(5, 2, 1),
(6, 2, 1),
(7, 2, 1),
(8, 2, 1),
(9, 2, 1),
(10, 2, 1),
(11, 2, 1),
(12, 2, 1),
(13, 2, 1),
(14, 2, 1),
(15, 1, 1),
(16, 1, 1),
(17, 1, 1),
(18, 3, 1),
(19, 3, 1),
(20, 3, 1),
(21, 3, 1),
(22, 3, 1),
(23, 3, 1),
(24, 3, 1),
(25, 3, 1),
(26, 4, 1),
(27, 2, 1),
(28, 4, 1),
(29, 5, 1),
(30, 4, 1),
(31, 2, 1),
(32, 5, 1),
(33, 2, 1),
(34, 2, 1),
(35, 2, 1),
(36, 5, 1),
(37, 2, 1),
(38, 2, 1),
(39, 2, 1),
(40, 2, 1),
(41, 2, 1),
(42, 2, 1),
(43, 2, 1),
(44, 2, 1),
(45, 2, 1),
(46, 2, 1),
(47, 2, 1),
(48, 2, 1),
(49, 2, 1),
(50, 2, 1),
(51, 4, 1),
(52, 5, 1),
(53, 6, 1),
(54, 1, 1),
(55, 5, 1),
(56, 5, 1),
(57, 5, 1),
(58, 5, 1),
(59, 5, 1),
(60, 5, 1),
(61, 5, 1),
(62, 5, 1),
(63, 5, 1),
(64, 5, 1),
(65, 5, 1),
(66, 8, 1),
(67, 8, 1),
(68, 8, 1),
(69, 8, 1),
(70, 8, 1),
(71, 8, 1),
(72, 8, 1),
(73, 6, 1),
(74, 6, 1),
(75, 6, 1),
(76, 6, 1),
(77, 5, 1),
(78, 5, 1),
(79, 5, 1),
(80, 5, 1),
(81, 5, 1),
(82, 5, 1),
(83, 6, 1),
(84, 6, 1),
(85, 4, 1),
(86, 4, 1),
(87, 4, 1),
(88, 4, 1),
(89, 4, 1),
(90, 9, 1),
(91, 9, 1),
(92, 9, 1),
(93, 9, 1),
(94, 9, 1),
(95, 9, 1),
(96, 9, 1),
(97, 9, 1),
(98, 11, 1),
(99, 10, 1),
(100, 11, 1),
(101, 12, 1),
(102, 11, 1),
(103, 11, 1),
(104, 11, 1),
(105, 11, 1),
(106, 11, 1),
(107, 12, 1),
(108, 12, 1),
(109, 10, 1),
(110, 10, 1),
(111, 11, 1),
(112, 14, 1),
(113, 14, 1),
(114, 14, 1),
(115, 15, 1),
(116, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plushie`
--

CREATE TABLE `plushie` (
  `id` int NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `popis` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `Unit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `plushie`
--

INSERT INTO `plushie` (`id`, `img`, `name`, `popis`, `price`, `Unit`) VALUES
(1, 'img/anby.png', 'Anby Demara Plyšák', 'Tichá bojovnice.', 499.00, 'Cunning Hares'),
(2, 'img/nicole.png', 'Nicole Demara Plyšák', 'Vůdkyně Cunning Hares.', 550.00, 'Cunning Hares'),
(3, 'img/billy.png', 'Billy Kid Plyšák', 'Fanoušek akčních filmů.', 590.00, 'Cunning Hares'),
(4, 'img/miyabi.png', 'Hoshimi Miyabi', 'Mistr techniky s hlubokým klidem.', 999.00, 'HSOS6'),
(5, 'img/yanagi.png', 'Tsukishiro Yanagi', 'Rychlá a elegantní bojovnice.', 459.00, 'HSOS6'),
(6, 'img/soukaku.png', 'Soukaku', 'Duch, který rád vyvolává chaos.', 529.00, 'HSOS6'),
(7, 'img/vivian.png', 'Vivian', 'Elegantní a tajemná. Vivian přináší do týmu MockingBird klidnou sílu a precizní strategii.', 549.00, 'MockingBird'),
(8, 'img/hugo.png', 'Hugo', 'Hugo je známý svou neuvěřitelnou odolností a schopností vyřešit jakýkoliv problém hrubou silou i důvtipem.', 499.00, 'MockingBird'),
(9, 'img/lycaon.png', 'Von Lycaon', 'Vynikající sluha a ještě lepší bojovník. Lycaon představuje vrchol etikety a smrtící efektivity.', 579.00, 'MockingBird'),
(10, 'img/lucy.png', 'Lucy', 'Lucy je mozkem operací Sons of Calydon. I když pochází z aristokratické rodiny, její styl boje s baseballovou pálkou a doprovodem malých prasátek Guardiao je nekompromisní.', 499.00, 'SonsOfCalydon'),
(11, 'img/lighter.png', 'Lighter', 'Lighter je šampionem Outer Rim. Své nepřátele spaluje bleskovými údery a ohnivou energií. Je symbolem síly a odvahy celé frakce.', 529.00, 'SonsOfCalydon'),
(12, 'img/burnice.png', 'Burnice', 'Burnice miluje oheň a míchání drinků. Její plamenomety dokáží na bojišti vytvořit pekelnou atmosféru, zatímco ona se neustále usmívá.', 559.00, 'SonsOfCalydon'),
(13, 'img/bangboo1.png', 'Sharkboo', 'Žralocí model Bangboo. Věrný společník pro každou expedici do Hollow.', 399.00, 'Bangboo'),
(14, 'img/bangboo2.png', 'Paper bag bangboo', 'Vylepšená verze Bangboo s unikátním senzorem pro vyhledávání vzácných materiálů.', 399.00, 'Bangboo'),
(15, 'img/limited1.png', 'Sběratelský Special Edition', 'Tento kousek je určen pro ty nejvášnivější sběratele. Vyrobeno z prémiových materiálů s unikátními detaily.', 799.00, 'Limited');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kosik`
--
ALTER TABLE `kosik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plushie`
--
ALTER TABLE `plushie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kosik`
--
ALTER TABLE `kosik`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `plushie`
--
ALTER TABLE `plushie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
