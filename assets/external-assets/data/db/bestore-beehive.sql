-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2020 at 05:12 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bestore-beehive`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(75) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(150) NOT NULL,
  `no_telp` int(15) NOT NULL,
  `user_status` enum('0','1') NOT NULL,
  `user_jenis_kelamin` enum('1','2') NOT NULL,
  `user_id_partner` int(11) NOT NULL,
  `user_paket_partner` enum('1','2','3','4','5') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(75) NOT NULL,
  `email_admin` varchar(75) NOT NULL,
  `password_admin` varchar(225) NOT NULL,
  `status_admin` enum('Super Admin','Akunting','Admin Penjualan','Finance','Data Patner') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_admin`, `email_admin`, `password_admin`, `status_admin`) VALUES
(1, 'super Admin', 'bestore@bestore-sys.com', '$2y$10$4Wbycwezp3BrZFs0Ufwv1OzT7fdIzACu0FEkLTQ6clKVRTL7wFOfC', 'Super Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nest`
--

CREATE TABLE `tb_nest` (
  `id_nest` int(11) NOT NULL,
  `id_wallace` int(11) NOT NULL,
  `id_affiliater` int(11) NOT NULL,
  `id_affiliate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_nest`
--

INSERT INTO `tb_nest` (`id_nest`, `id_wallace`, `id_affiliater`, `id_affiliate`) VALUES
(16, 20090001, 20090001, 20090001),
(63, 20090001, 20090001, 20110001),
(64, 20090001, 20110001, 20110002),
(65, 20090001, 20110002, 20110003),
(66, 20090001, 20110001, 20110004),
(67, 20090001, 20110001, 20110005),
(68, 20090001, 20110004, 20110006),
(69, 20090001, 20110004, 20110007),
(70, 20090001, 20110004, 20110008),
(71, 20090001, 20110004, 20110009),
(72, 20090001, 20110007, 20110010);

-- --------------------------------------------------------

--
-- Table structure for table `tb_paket`
--

CREATE TABLE `tb_paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(50) NOT NULL,
  `kode_paket` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_paket`
--

INSERT INTO `tb_paket` (`id_paket`, `nama_paket`, `kode_paket`) VALUES
(1, 'Free', 'FE'),
(2, 'Army', 'AY'),
(3, 'Drone', 'DE'),
(4, 'Queen', 'QN'),
(5, 'Wallace', 'WLC');

-- --------------------------------------------------------

--
-- Table structure for table `tb_partner`
--

CREATE TABLE `tb_partner` (
  `id_partner` int(10) NOT NULL,
  `nama_partner` varchar(75) NOT NULL,
  `email_partner` varchar(75) NOT NULL,
  `password_partner` varchar(115) NOT NULL,
  `foto_partner` varchar(100) NOT NULL,
  `telp_partner` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `provinsi` varchar(35) NOT NULL,
  `kota` varchar(35) NOT NULL,
  `tipe_bank` varchar(25) NOT NULL,
  `no_rek` int(50) NOT NULL,
  `anb` varchar(100) NOT NULL,
  `file_mou` varchar(75) NOT NULL,
  `date-register` date NOT NULL,
  `gender` enum('men','women') NOT NULL,
  `status_partner` int(11) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_partner`
--

INSERT INTO `tb_partner` (`id_partner`, `nama_partner`, `email_partner`, `password_partner`, `foto_partner`, `telp_partner`, `alamat`, `provinsi`, `kota`, `tipe_bank`, `no_rek`, `anb`, `file_mou`, `date-register`, `gender`, `status_partner`, `ket`) VALUES
(20090001, 'PT. BESTORE DIGITAL SOLUSINDO', 'bestore.cpanel@gmail.com', '$2y$10$xzCQ.E3EpqMbJhiCbcTjFu0j91tWDJibBZY9haGt4BgaKADkzV3bq', 'wallace-img.jpeg', '628126600662', 'Tanggerang', 'Kalimantan Selatan', 'Kota Banjarmasin', 'BRI', 2147483647, '0', '1600836289.pdf', '2020-10-15', 'men', 5, 'Approve'),
(20110001, 'Rizky Afdhillah', 'rizkyafdhillah2rpl@gmail.com', '$2y$10$0G67C8zVQvLeiXl88PHMruBA.FAaoU0yPpwH0ZOt3KzKjHfn.fESq', 'queen-img.png', '085249945381', 'HKSN Permai', '', '', '', 0, '', '', '2020-11-11', 'men', 4, 'Approve'),
(20110002, 'kiky', 'kiky7.yxz@gmail.com', '$2y$10$jcHzK3kpfOAQ.gUERMpPuOl4L5NZhkJROZBMSWZGuv9ylwu3lPRA.', 'army-img.jpeg', '0852469642797', 'Jl. HKSN Blok 2A, No 18', '13', '36', '', 0, '', '', '2020-11-11', 'men', 2, 'Approve'),
(20110003, 'rizky00', 'rizky.afdhillah00@gmail.com', '$2y$10$KvdQTigPGKTcUmaVgN3ujObUA9YIM7lsjAEDTOyQbp6j2yqtHTPze', 'army-img.jpeg', '085246962797', 'Jl. HKSN Blok 2A, No 18', '', '', '', 0, '', '', '2020-11-12', 'men', 2, 'Approve'),
(20110004, 'kiky queen', 'rizky@gmail.com', '$2y$10$dgruIAD5YB7KTB9E7G7ADeJY/OFudgukpEC5r8QeYNIDDagvXvBzG', 'queen-img.png', '0852469642797', 'HKSN', '', '', 'BRI', 2147483647, 'Rizky Afdhillah', '', '2020-11-13', 'men', 4, 'Approve'),
(20110005, 'daffa localhost', 'daffaramherriza2412@gmail.com', '$2y$10$dgruIAD5YB7KTB9E7G7ADeJY/OFudgukpEC5r8QeYNIDDagvXvBzG', 'queen-img.png', '0852469642797', 'Jln Sultan Adam', '', '', '', 0, '', '', '2020-11-13', 'men', 4, 'Approve'),
(20110006, 'Rizky queen 2', 'rizky2@gmail.com', '$2y$10$NURelGsCrP.ibPODeEkp/eu96iUpR5eM5zqiowfPTMvdEKklazxqK', 'queen-img.png', '0852469642797', 'Jln Sultan Adam', '', '', '', 0, '', '', '2020-11-14', 'men', 4, 'Approve'),
(20110007, 'rizky army', 'rizky3@gmail.com', '$2y$10$xzCQ.E3EpqMbJhiCbcTjFu0j91tWDJibBZY9haGt4BgaKADkzV3bq', 'army-img.jpeg', '085246962797', 'Komp. Hksn Blok 2A. No 18, Rt.26, Rw.002', '', '', '', 0, '', '', '2020-11-14', 'men', 2, 'Approve'),
(20110008, 'rizky queen 2', 'rizky4@gmail.com', '$2y$10$BLLHh2EQaT.ClsPgT1sSBe5z4DSNGzVzt2ULIKEURiT5smafOfoze', 'queen-img.png', '0852469642797', 'Jl. HKSN Blok 2A, No 18', '', '', '', 0, '', '', '2020-11-14', 'men', 4, 'Approve'),
(20110009, 'rizky queen 5', 'rizky5@gmail.com', '$2y$10$AcBvhWBG0Pyzwnv76/L0eu9nvvLzYfo3IiMr.MId1uQ6.MbZ7LG6e', 'queen-img.png', '0852469642797', 'hksn', '', '', '', 0, '', '', '2020-11-14', 'men', 4, 'Approve'),
(20110010, 'Rizky Queen 6', 'rizky6@gmail.com', '$2y$10$KHBEP5Jw7uuV.B7.1PERGuSfFfIYpe.oQ6/st7cQICqNnckYM0fty', 'queen-img.png', '0852469642797', 'Komp. Hksn Blok 2A. No 18, Rt.26, Rw.002', '', '', '', 0, '', '', '2020-11-14', 'men', 4, 'Approve');

-- --------------------------------------------------------

--
-- Table structure for table `tb_saldo_rek`
--

CREATE TABLE `tb_saldo_rek` (
  `id_saldo_rek` int(11) NOT NULL,
  `id_affiliater` int(11) NOT NULL,
  `id_nest` int(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `status_rek` enum('Masuk','Keluar') NOT NULL,
  `tipe_saldo` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status_klaim` enum('1','2','3','4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_saldo_rek`
--

INSERT INTO `tb_saldo_rek` (`id_saldo_rek`, `id_affiliater`, `id_nest`, `saldo`, `status_rek`, `tipe_saldo`, `date_created`, `status_klaim`) VALUES
(84, 20110002, 65, 48000, 'Masuk', 9, '2020-11-12 07:36:44', '1'),
(85, 20110001, 65, 40800, 'Masuk', 9, '2020-11-12 07:36:44', '1'),
(86, 20090001, 65, 36000, 'Masuk', 9, '2020-11-12 07:36:44', '1'),
(87, 20110002, 65, 48000, 'Masuk', 2, '2020-11-12 07:36:44', '1'),
(94, 20110001, 64, 48000, 'Masuk', 9, '2020-11-12 07:55:31', '1'),
(95, 20090001, 64, 40800, 'Masuk', 9, '2020-11-12 07:55:31', '1'),
(96, 20110001, 64, 48000, 'Masuk', 2, '2020-11-12 07:55:31', '1'),
(97, 20110001, 66, 276000, 'Masuk', 9, '2020-11-13 03:40:57', '1'),
(98, 20090001, 66, 234600, 'Masuk', 9, '2020-11-13 03:40:57', '1'),
(99, 20110001, 66, 216000, 'Masuk', 2, '2020-11-13 03:40:57', '1'),
(118, 20110001, 67, 38676, 'Masuk', 9, '2020-11-13 08:30:41', '1'),
(119, 20090001, 67, 32875, 'Masuk', 9, '2020-11-13 08:30:41', '1'),
(120, 20110001, 67, 203720, 'Masuk', 2, '2020-11-13 08:30:41', '1'),
(121, 20110004, 67, 54791, 'Masuk', 4, '2020-11-14 06:27:46', '4'),
(122, 20110004, 68, 38676, 'Masuk', 9, '2020-11-14 03:13:28', '1'),
(123, 20110001, 68, 32874, 'Masuk', 9, '2020-11-14 03:13:28', '1'),
(124, 20090001, 68, 29007, 'Masuk', 9, '2020-11-14 03:13:28', '1'),
(125, 20110004, 68, 203720, 'Masuk', 2, '2020-11-14 03:13:28', '1'),
(126, 20110004, 68, 27395, 'Masuk', 4, '2020-11-14 06:27:46', '4'),
(127, 20110005, 68, 27395, 'Masuk', 4, '2020-11-14 03:13:28', '1'),
(128, 20110004, 69, 48000, 'Masuk', 9, '2020-11-14 03:17:18', '1'),
(129, 20110001, 69, 40800, 'Masuk', 9, '2020-11-14 03:17:18', '1'),
(130, 20090001, 69, 36000, 'Masuk', 9, '2020-11-14 03:17:18', '1'),
(131, 20110004, 69, 48000, 'Masuk', 2, '2020-11-14 03:17:18', '1'),
(135, 20110004, 70, 38676, 'Masuk', 9, '2020-11-14 04:38:00', '1'),
(136, 20110001, 70, 32874, 'Masuk', 9, '2020-11-14 04:38:00', '1'),
(137, 20090001, 70, 29007, 'Masuk', 9, '2020-11-14 04:38:00', '1'),
(138, 20110004, 70, 203720, 'Masuk', 2, '2020-11-14 04:38:00', '1'),
(139, 20110004, 70, 18263, 'Masuk', 4, '2020-11-14 06:27:46', '4'),
(140, 20110005, 70, 18263, 'Masuk', 4, '2020-11-14 04:38:00', '1'),
(141, 20110006, 70, 18263, 'Masuk', 4, '2020-11-14 04:38:00', '1'),
(142, 20110004, 71, 38676, 'Masuk', 9, '2020-11-14 04:38:16', '1'),
(143, 20110001, 71, 32874, 'Masuk', 9, '2020-11-14 04:38:16', '1'),
(144, 20090001, 71, 29007, 'Masuk', 9, '2020-11-14 04:38:16', '1'),
(145, 20110004, 71, 203720, 'Masuk', 2, '2020-11-14 04:38:16', '1'),
(146, 20110004, 71, 13697, 'Masuk', 4, '2020-11-14 06:27:46', '4'),
(147, 20110005, 71, 13697, 'Masuk', 4, '2020-11-14 04:38:16', '1'),
(148, 20110006, 71, 13697, 'Masuk', 4, '2020-11-14 04:38:16', '1'),
(149, 20110008, 71, 13697, 'Masuk', 4, '2020-11-14 04:38:16', '1'),
(152, 20110004, 0, 114146, 'Keluar', 4, '2020-11-14 06:27:46', '4'),
(168, 20110007, 72, 38676, 'Masuk', 9, '2020-11-14 07:31:41', '1'),
(169, 20110004, 72, 32874, 'Masuk', 9, '2020-11-14 07:31:41', '1'),
(170, 20110001, 72, 29007, 'Masuk', 9, '2020-11-14 07:31:41', '1'),
(171, 20090001, 72, 24172, 'Masuk', 9, '2020-11-14 07:31:41', '1'),
(172, 20110001, 72, 7827, 'Masuk', 4, '2020-11-14 07:31:41', '1'),
(173, 20110004, 72, 7827, 'Masuk', 4, '2020-11-14 07:31:41', '1'),
(174, 20110005, 72, 7827, 'Masuk', 4, '2020-11-14 07:31:41', '1'),
(175, 20110006, 72, 7827, 'Masuk', 4, '2020-11-14 07:31:41', '1'),
(176, 20110008, 72, 7827, 'Masuk', 4, '2020-11-14 07:31:41', '1'),
(177, 20110009, 72, 7827, 'Masuk', 4, '2020-11-14 07:31:41', '1'),
(178, 20090001, 72, 7827, 'Masuk', 4, '2020-11-14 07:31:41', '1'),
(179, 20110004, 72, 73054, 'Masuk', 3, '2020-11-14 07:31:41', '1'),
(180, 20110001, 72, 73054, 'Masuk', 3, '2020-11-14 07:31:41', '1'),
(181, 20110007, 72, 203720, 'Masuk', 2, '2020-11-14 07:31:41', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_saldo_tipe`
--

CREATE TABLE `tb_saldo_tipe` (
  `id_tipe_saldo` int(11) NOT NULL,
  `nama_tipe_saldo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_saldo_tipe`
--

INSERT INTO `tb_saldo_tipe` (`id_tipe_saldo`, `nama_tipe_saldo`) VALUES
(1, 'Dana Masuk'),
(2, 'Rek. Sponsor'),
(3, 'Rek. RPS'),
(4, 'Rek. GPS'),
(5, 'Rek. BE'),
(6, 'Rek. Wallace'),
(7, 'Rek. Reward'),
(8, 'Rek. MNG'),
(9, 'Rek. Leveling');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_nest`
--
ALTER TABLE `tb_nest`
  ADD PRIMARY KEY (`id_nest`),
  ADD KEY `id_wallace` (`id_wallace`),
  ADD KEY `id_affiliater` (`id_affiliater`),
  ADD KEY `id_affiliate` (`id_affiliate`);

--
-- Indexes for table `tb_paket`
--
ALTER TABLE `tb_paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `tb_partner`
--
ALTER TABLE `tb_partner`
  ADD PRIMARY KEY (`id_partner`),
  ADD KEY `status_partner` (`status_partner`);

--
-- Indexes for table `tb_saldo_rek`
--
ALTER TABLE `tb_saldo_rek`
  ADD PRIMARY KEY (`id_saldo_rek`),
  ADD KEY `id_nest` (`id_affiliater`),
  ADD KEY `tipe_saldo` (`tipe_saldo`);

--
-- Indexes for table `tb_saldo_tipe`
--
ALTER TABLE `tb_saldo_tipe`
  ADD PRIMARY KEY (`id_tipe_saldo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_nest`
--
ALTER TABLE `tb_nest`
  MODIFY `id_nest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tb_paket`
--
ALTER TABLE `tb_paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_saldo_rek`
--
ALTER TABLE `tb_saldo_rek`
  MODIFY `id_saldo_rek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `tb_saldo_tipe`
--
ALTER TABLE `tb_saldo_tipe`
  MODIFY `id_tipe_saldo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_nest`
--
ALTER TABLE `tb_nest`
  ADD CONSTRAINT `tb_nest_ibfk_1` FOREIGN KEY (`id_wallace`) REFERENCES `tb_partner` (`id_partner`),
  ADD CONSTRAINT `tb_nest_ibfk_2` FOREIGN KEY (`id_affiliater`) REFERENCES `tb_partner` (`id_partner`),
  ADD CONSTRAINT `tb_nest_ibfk_3` FOREIGN KEY (`id_affiliate`) REFERENCES `tb_partner` (`id_partner`);

--
-- Constraints for table `tb_partner`
--
ALTER TABLE `tb_partner`
  ADD CONSTRAINT `tb_partner_ibfk_1` FOREIGN KEY (`status_partner`) REFERENCES `tb_paket` (`id_paket`);

--
-- Constraints for table `tb_saldo_rek`
--
ALTER TABLE `tb_saldo_rek`
  ADD CONSTRAINT `tb_saldo_rek_ibfk_2` FOREIGN KEY (`tipe_saldo`) REFERENCES `tb_saldo_tipe` (`id_tipe_saldo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
