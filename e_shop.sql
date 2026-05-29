-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2026 at 01:03 PM
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
