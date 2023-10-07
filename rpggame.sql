-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2023 at 07:15 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpggame`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `tgl_daftar` date DEFAULT NULL,
  `id_akun` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`tgl_daftar`, `id_akun`, `nama`) VALUES
('2020-11-03', 1, 'ngap_owi'),
('2020-10-04', 2, 'ngap_arto'),
('2019-05-04', 3, 'ngap_mega');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id_area` int(11) NOT NULL,
  `id_chara` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `iklim` varchar(45) DEFAULT NULL,
  `jenis` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id_area`, `id_chara`, `nama`, `iklim`, `jenis`, `region`) VALUES
(1, 1, 'starfell valley', 'tropis', 'lembah', 'mondstat'),
(2, 1, 'mondstadt', 'tropis', 'kota', 'mondstat'),
(3, 2, 'liyue', 'gugur', 'kota', 'liyue'),
(4, 1, 'bishui plain', 'gugur', 'dataran', 'liyue'),
(5, 1, 'tatarasuna', 'semi', 'lembah', 'inazuma'),
(6, 1, 'mumyou fort', 'hujan', 'kota', 'inazuma');

-- --------------------------------------------------------

--
-- Table structure for table `avatar`
--

CREATE TABLE `avatar` (
  `id_avatar` int(11) NOT NULL,
  `id_akun` int(11) DEFAULT NULL,
  `id_chara` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `avatar`
--

INSERT INTO `avatar` (`id_avatar`, `id_akun`, `id_chara`) VALUES
(5, 1, 2),
(1, 1, 3),
(4, 1, 4),
(3, 2, 2),
(7, 3, 1),
(2, 3, 4),
(6, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `character`
--

CREATE TABLE `character` (
  `id_akun` int(11) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  `id_chara` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `character`
--

INSERT INTO `character` (`id_akun`, `nama`, `class`, `id_chara`) VALUES
(3, 'lumine', 'fighter', 1),
(2, 'amber', 'ranger', 2),
(1, 'kaeya', 'fighter', 3),
(1, 'lisa', 'magician', 4),
(3, 'rosaria', 'rogue', 5);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `jenis` varchar(45) DEFAULT NULL,
  `nama_item` varchar(45) DEFAULT NULL,
  `id_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`jenis`, `nama_item`, `id_item`) VALUES
('konsumsi', 'Roti bakar', 1),
('konsumsi', 'ramuan', 2),
('material', 'kristal', 4),
('material', 'batu', 5),
('material', 'tulang', 6),
('material', 'kain ', 7),
('perlengkapan', 'pedang ', 8),
('perlengkapan', 'artefak', 9);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_email` int(11) NOT NULL,
  `log_info` datetime NOT NULL,
  `id_akun` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_email`, `log_info`, `id_akun`, `id`) VALUES
(109, '2022-11-20 13:56:57', 3, 1),
(136, '2022-11-20 13:57:52', 2, 2),
(139, '2022-11-20 13:57:52', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mob`
--

CREATE TABLE `mob` (
  `id_mob` int(11) NOT NULL,
  `tipe` varchar(45) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `id_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mob`
--

INSERT INTO `mob` (`id_mob`, `tipe`, `nama`, `id_area`) VALUES
(1, 'normal', 'slime', 1),
(2, 'normal ', 'slime', 4),
(3, 'elite', 'fatui skirmisher', 4),
(4, 'elite ', 'kairagi', 5),
(5, 'boss', 'dwalin', 2),
(6, 'boss', 'maguu kenki', 5);

-- --------------------------------------------------------

--
-- Table structure for table `npc`
--

CREATE TABLE `npc` (
  `id_quest` int(11) DEFAULT NULL,
  `id_area` int(11) NOT NULL,
  `pekerjaan` varchar(45) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `id_npc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `npc`
--

INSERT INTO `npc` (`id_quest`, `id_area`, `pekerjaan`, `nama`, `id_npc`) VALUES
(1, 2, 'toko souvenir ', 'Marjorie', 1),
(4, 3, 'toko souvenir', 'Xingxi', 2),
(5, 3, 'koki ', 'Chef Mao', 3),
(4, 6, 'koki ', 'Shimura Kanbei', 4),
(6, 2, 'penempa', 'Wagner & Schulz', 5),
(2, 6, 'penempa', 'Hajime', 6);

-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

CREATE TABLE `quest` (
  `id_quest` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tipe` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quest`
--

INSERT INTO `quest` (`id_quest`, `nama`, `tipe`) VALUES
(1, 'The Outlander Who Caught the Wind', 'main'),
(2, 'For a Tomorrow Without Tears', 'main'),
(3, 'Song of the Dragon and Freedom', 'main'),
(4, 'Of the Land Amidst Monoliths', 'main'),
(5, 'Traveler Observation Report', 'side'),
(6, 'Wind, Courage, and Wings', 'side ');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id_skill` int(11) NOT NULL,
  `id_chara` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `jenis` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id_skill`, `id_chara`, `nama`, `jenis`) VALUES
(1, 1, 'Palm Vortex', 'active'),
(2, 1, 'Second Wind', 'passive'),
(3, 2, 'baron bunny', 'active'),
(4, 2, 'Fiery Rain', 'active'),
(5, 3, 'Frostgnaw', 'active'),
(6, 3, 'Hidden Strength', 'passive'),
(7, 4, 'Violet Arc', 'active'),
(8, 4, 'Lightning Rose', 'active'),
(9, 5, 'Ravaging Confession', 'active'),
(10, 5, 'Shadow Samaritan', 'passive');

-- --------------------------------------------------------

--
-- Table structure for table `tas`
--

CREATE TABLE `tas` (
  `id_akun` int(11) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tas`
--

INSERT INTO `tas` (`id_akun`, `id_item`) VALUES
(1, 1),
(1, 4),
(3, 8),
(3, 7),
(2, 5),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_email` int(11) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_email`, `email`, `date`, `nama`) VALUES
(109, 'abraar@gmail.com', '2003-12-11', 'abrar_jihaad'),
(136, 'ariffatur@gmail.com', '2003-11-12', 'arif_fatur'),
(139, 'nandisya@gmail.com', '2003-10-13', 'faiz_effendi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`) USING BTREE,
  ADD KEY `id_chara` (`id_chara`);

--
-- Indexes for table `avatar`
--
ALTER TABLE `avatar`
  ADD PRIMARY KEY (`id_avatar`),
  ADD KEY `id_akun` (`id_akun`,`id_chara`),
  ADD KEY `id_chara` (`id_chara`);

--
-- Indexes for table `character`
--
ALTER TABLE `character`
  ADD PRIMARY KEY (`id_chara`),
  ADD KEY `id_akun` (`id_akun`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_email` (`id_email`),
  ADD KEY `id_akun` (`id_akun`);

--
-- Indexes for table `mob`
--
ALTER TABLE `mob`
  ADD PRIMARY KEY (`id_mob`),
  ADD KEY `id_area` (`id_area`);

--
-- Indexes for table `npc`
--
ALTER TABLE `npc`
  ADD PRIMARY KEY (`id_npc`),
  ADD KEY `id_quest` (`id_quest`,`id_area`),
  ADD KEY `id_area` (`id_area`);

--
-- Indexes for table `quest`
--
ALTER TABLE `quest`
  ADD PRIMARY KEY (`id_quest`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id_skill`),
  ADD KEY `id_chara` (`id_chara`);

--
-- Indexes for table `tas`
--
ALTER TABLE `tas`
  ADD KEY `id_item` (`id_item`),
  ADD KEY `id_chara` (`id_akun`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id_area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `avatar`
--
ALTER TABLE `avatar`
  MODIFY `id_avatar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `character`
--
ALTER TABLE `character`
  MODIFY `id_chara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `npc`
--
ALTER TABLE `npc`
  MODIFY `id_npc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id_skill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_email` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `area`
--
ALTER TABLE `area`
  ADD CONSTRAINT `area_ibfk_1` FOREIGN KEY (`id_chara`) REFERENCES `character` (`id_chara`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `avatar`
--
ALTER TABLE `avatar`
  ADD CONSTRAINT `avatar_ibfk_1` FOREIGN KEY (`id_chara`) REFERENCES `character` (`id_chara`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `avatar_ibfk_2` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `character`
--
ALTER TABLE `character`
  ADD CONSTRAINT `character_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_email`) REFERENCES `user` (`id_email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mob`
--
ALTER TABLE `mob`
  ADD CONSTRAINT `mob_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `npc`
--
ALTER TABLE `npc`
  ADD CONSTRAINT `npc_ibfk_1` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `npc_ibfk_2` FOREIGN KEY (`id_quest`) REFERENCES `quest` (`id_quest`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skill`
--
ALTER TABLE `skill`
  ADD CONSTRAINT `skill_ibfk_1` FOREIGN KEY (`id_chara`) REFERENCES `character` (`id_chara`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tas`
--
ALTER TABLE `tas`
  ADD CONSTRAINT `tas_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tas_ibfk_3` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
