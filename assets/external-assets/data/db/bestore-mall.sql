-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2020 at 05:13 AM
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
-- Database: `bestore-mall`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dropship`
--

CREATE TABLE `tb_dropship` (
  `id_dropship` int(11) NOT NULL,
  `id_dropshiper` int(11) NOT NULL,
  `id_distributor` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_follow`
--

CREATE TABLE `tb_follow` (
  `id_follow` int(11) NOT NULL,
  `id_partner` int(11) NOT NULL,
  `id_toko` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id_invoice` int(11) NOT NULL,
  `id_patner` int(11) NOT NULL,
  `ongkos_kirim` int(8) NOT NULL,
  `total_dibayar` int(11) NOT NULL,
  `digit_terakhir` int(3) NOT NULL,
  `metode_kurir` varchar(25) NOT NULL,
  `metode_bayar` varchar(25) NOT NULL,
  `bukti_bayar` varchar(125) NOT NULL,
  `tgl_beli` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tgl_batas` varchar(50) NOT NULL,
  `status_invoice` enum('1','2','3','4','5','6','7','8') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id_invoice`, `id_patner`, `ongkos_kirim`, `total_dibayar`, `digit_terakhir`, `metode_kurir`, `metode_bayar`, `bukti_bayar`, `tgl_beli`, `tgl_batas`, `status_invoice`) VALUES
(2011111, 20110001, 0, 480771, 771, 'JNE', 'Mandiri', '1605066999.png', '2020-11-11 03:56:39', '2020-11-12 10:56:39', '2'),
(2011112, 20110002, 0, 480778, 778, 'JNE', 'Mandiri', '1605077325.png', '2020-11-11 06:48:45', '2020-11-12 07:48:45', '2'),
(2011123, 20110003, 0, 480870, 870, 'JNE', 'Mandiri', '1605155801.png', '2020-11-12 04:36:40', '2020-11-13 11:36:40', '2'),
(2011134, 20110004, 0, 2160845, 845, 'JNE', 'Mandiri', '1605238788.jpeg', '2020-11-13 03:39:48', '2020-11-14 10:39:48', '2'),
(2011135, 20110005, 0, 2160845, 845, 'JNE', 'Mandiri', '1605254307.jpeg', '2020-11-13 07:58:27', '2020-11-14 14:58:27', '2'),
(2011146, 20110006, 0, 2038037, 837, 'JNE', 'Mandiri', '1605323601.jpeg', '2020-11-14 03:13:21', '2020-11-15 10:13:21', '2'),
(2011147, 20110007, 0, 480785, 785, 'JNE', 'Mandiri', '1605323831.jpeg', '2020-11-14 03:17:10', '2020-11-15 10:17:10', '2'),
(2011148, 20110008, 0, 2037996, 796, 'JNE', 'Mandiri', '1605323918.jpeg', '2020-11-14 03:18:37', '2020-11-15 10:18:37', '2'),
(2011149, 20110009, 0, 2038024, 824, 'JNE', 'Mandiri', '1605328652.jpeg', '2020-11-14 04:37:32', '2020-11-15 11:37:32', '2'),
(20111410, 20110010, 0, 2038044, 844, 'JNE', 'Mandiri', '1605338659.jpeg', '2020-11-14 07:24:19', '2020-11-15 14:24:19', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_produk`
--

CREATE TABLE `tb_jenis_produk` (
  `id_jenis_produk` int(11) NOT NULL,
  `id_kategori_sub` int(8) NOT NULL,
  `nama_jenis_produk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jenis_produk`
--

INSERT INTO `tb_jenis_produk` (`id_jenis_produk`, `id_kategori_sub`, `nama_jenis_produk`) VALUES
(1, 1, 'Kursi Tamu'),
(2, 1, 'Kursi Lipat'),
(3, 1, 'Air Bag'),
(4, 2, 'Meja Lipat'),
(5, 2, 'Meja Anak-Anak'),
(6, 3, 'Tas Gunung'),
(7, 4, 'Brilly Bag'),
(8, 5, 'Korean Bagpack');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(45) NOT NULL,
  `img_kategori` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`, `img_kategori`) VALUES
(1, 'Furniture', 'Furniture.svg'),
(2, 'Bag', 'bag.svg'),
(3, 'Buku', 'BUKU.svg'),
(4, 'Dapur', 'Dapur.svg'),
(5, 'Elektronik', 'Electronic.svg'),
(6, 'Fashion Anak & Bayi', 'FashionAnak&Bayi.svg'),
(7, 'Fashion Muslim', 'FashionMuslim.svg'),
(8, 'Fashion Pria', 'FashionPria.svg'),
(9, 'Fashion Wanita', 'FashionWanita.svg'),
(10, 'Film & Musik', 'Film&Music.svg'),
(11, 'Gaming', 'Gaming.svg'),
(12, 'Handphone & Tablet', 'Hanphone&Tablet.svg'),
(13, 'Ibu & Bayi', 'Ibu&bayi.svg'),
(14, 'Kamera', 'Kamera.svg'),
(15, 'Kecantikan', 'kecantikan.svg'),
(16, 'Kesehatan', 'Kesehatan.svg'),
(17, 'Komputer & Laptop', 'Komputer&Laptop.svg'),
(18, 'Logam Mulia', 'LogamMulia.svg'),
(19, 'Mainan & Hobi', 'mainan&hobi.svg'),
(20, 'Makanan & Minuman', 'MAKANANdanMINUMAN.svg'),
(21, 'Office & Stationery', 'office&stationery.svg'),
(22, 'Olahraga', 'olahraga.svg'),
(23, 'Otomotif', 'Otomotif.svg'),
(24, 'Perawatan Hewan', 'Perawatan Hewan.svg'),
(25, 'Perawatan Tubuh', 'Perawatan Tubuh.svg'),
(26, 'Perlengkapan Pesta & Craft', 'PerlengkapanPesta&Craft.svg'),
(27, 'Pertukangan', 'Pertukangan.svg'),
(28, 'Properti', 'Properti.svg'),
(29, 'Rumah Tangga', 'RumahTangga.svg'),
(30, 'Tour & Travel', 'Tour&Travel.svg'),
(31, 'Wedding', 'wedding.svg'),
(32, 'Lain Lain', 'Lain-lain.svg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_sub`
--

CREATE TABLE `tb_kategori_sub` (
  `id_kategori_sub` int(11) NOT NULL,
  `id_kategori` int(8) NOT NULL,
  `nama_kategori_sub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori_sub`
--

INSERT INTO `tb_kategori_sub` (`id_kategori_sub`, `id_kategori`, `nama_kategori_sub`) VALUES
(1, 1, 'Kursi'),
(2, 1, 'Meja'),
(3, 2, 'Tas Ransel Pria'),
(4, 2, 'Tas Kulit Pria'),
(5, 2, 'Tas Ransel Wanita'),
(6, 3, 'Buku Hukum'),
(7, 3, 'Ekonomi & Bisnis'),
(8, 3, 'Kedokteran'),
(9, 3, 'Komik'),
(10, 3, 'Majalah'),
(11, 3, 'Novel & Sastra'),
(12, 20, 'Bahan Kue'),
(13, 20, 'Beras'),
(14, 20, 'Bumbu & Bahan Makanan'),
(15, 20, 'Makanan Kaleng'),
(16, 20, 'Makanan Ringan'),
(17, 20, 'Minuman'),
(18, 26, 'Balon'),
(19, 26, 'Bunga'),
(20, 26, 'Hadiah'),
(21, 26, 'Kerajinan Tangan'),
(22, 19, 'Boneka'),
(23, 19, 'Kostum'),
(24, 19, 'Mainan Anak-anak'),
(25, 19, 'Perlengkapan Sulap'),
(26, 19, 'Puzzle'),
(27, 13, 'Mainan Bayi'),
(28, 13, 'Makanan & Susu Bayi'),
(29, 13, 'Pakaian Ibu Hamil'),
(30, 13, 'Perlengkapan & Perawatan Ibu Bayi'),
(31, 10, 'Film & Serial Tv'),
(32, 10, 'Perlengkapan Alat Musik'),
(33, 5, 'Elektronik Kantor'),
(34, 5, 'Elektronik Dapur'),
(35, 5, 'Elektronik Rumah Tangga'),
(36, 5, 'Tv & Aksesoris'),
(37, 15, 'Aksesoris Rambut'),
(38, 15, 'Make Up Tools'),
(39, 15, 'Make Up Wajah'),
(40, 15, 'Pembersih Make Up'),
(41, 15, 'Perawatan Wajah'),
(42, 22, 'Aksesoris Olahraga'),
(43, 22, 'Alat Pancing'),
(44, 22, 'Batminton'),
(45, 22, 'Baseball'),
(46, 22, 'Basket'),
(47, 22, 'Bela Diri'),
(48, 22, 'Gym & Fitness'),
(49, 22, 'Hiking & Camping'),
(50, 22, 'Olahraga Air'),
(51, 22, 'Pakaian Olahraga Pria'),
(52, 22, 'Pakaian Olahraga Wanita'),
(53, 22, 'Perlengkapan Lari'),
(54, 22, 'Sepak Bola & Futsal'),
(55, 22, 'Sepeda'),
(56, 22, 'Tenis'),
(57, 22, 'Yoga'),
(58, 23, 'Aksesoris Motor'),
(59, 23, 'Aksesoris Sepeda Motor'),
(60, 23, 'Ban Mobil'),
(61, 23, 'Eksterior Mobil'),
(62, 23, 'Helm'),
(63, 23, 'Mobil'),
(64, 23, 'Oli & Penghemat Bahan Bakar'),
(65, 23, 'Sepeda Motor'),
(66, 23, 'Spare Part Mobil'),
(67, 23, 'Spare Part Motor'),
(68, 12, 'Aksesoris Handphone'),
(69, 12, 'Aksesoris Tablet'),
(70, 12, 'Handphone'),
(71, 12, 'Nomor Perdana & Voucher'),
(72, 12, 'Tablet'),
(73, 6, 'Aksesoris Anak'),
(74, 6, 'Aksesoris Bayi'),
(75, 6, 'Pakaian Anak Laki-laki'),
(76, 6, 'Pakaian Anak Perempuan'),
(77, 6, 'Pakaian Dalam Anak'),
(78, 6, 'Sepatu Anak Laki-laki'),
(79, 6, 'Sepatu Anak Perempuan'),
(80, 17, 'Aksesoris Komputer & Laptop'),
(81, 17, 'Kabel & Adepter'),
(82, 17, 'Komponen Komputer & Laptop'),
(83, 17, 'Laptop'),
(84, 17, 'Monitor'),
(85, 17, 'Software'),
(86, 14, 'Aksesoris Kamera'),
(87, 14, 'Baterai & Charger Kamera'),
(88, 14, 'Frame, Album, & Roll Film'),
(89, 14, 'Lighting & Studio'),
(90, 21, 'Alat Tulis'),
(91, 21, 'Buku Tulis'),
(92, 21, 'Kalkulator & Kamus Elektronik'),
(93, 21, 'Kertas'),
(94, 21, 'Meja Kursi Kerja'),
(95, 16, 'Suplemen Diet'),
(96, 16, 'Essential Oil'),
(97, 16, 'Vitamin & Multivitamin'),
(98, 16, 'Obat-obatan'),
(99, 16, 'Perlengkapan Medis'),
(100, 4, 'Aksesoris Dapur'),
(101, 4, 'Alat Masak'),
(102, 4, 'Penyimpanan Makanan'),
(103, 4, 'Peralatan Dapur'),
(104, 4, 'Peralatan Makanan & Minuman'),
(105, 4, 'Peralatan Masak'),
(106, 4, 'Perlengkapan Cuci Piring'),
(107, 29, 'Dekorasi'),
(108, 29, 'Furniture'),
(109, 29, 'Kebersihan'),
(110, 29, 'Tempat Penyimpanan'),
(111, 9, 'Aksesoris Wanita'),
(112, 9, 'Atasan Wanita'),
(113, 9, 'Bawahan Wanita'),
(114, 9, 'Jam Tangan Wanita'),
(115, 9, 'Perhiasan Wanita'),
(116, 9, 'Sepatu Wanita'),
(117, 9, 'Seragam atau Setelan Wanita'),
(118, 9, 'Tas Wanita'),
(119, 8, 'Aksesoris Pria'),
(120, 8, 'Atasan Pria'),
(121, 8, 'Celana Pria'),
(122, 8, 'Jam Tangan Pria'),
(123, 8, 'Perhiasan Pria'),
(124, 8, 'Sepatu Pria'),
(125, 8, 'Seragam Pria'),
(126, 8, 'Tas Pria'),
(127, 11, 'Aksesoris Game Konsol'),
(128, 11, 'CD Game'),
(129, 11, 'Game Console'),
(130, 25, 'Kesehatan Mulut & Gigi'),
(131, 25, 'Parfume, Cologne, & Fragrance'),
(132, 25, 'Perawatan Kulit'),
(133, 25, 'Perawatan Mata'),
(134, 25, 'Perawatan Rambut'),
(135, 25, 'Perawatan Telinga'),
(136, 27, 'Alat Angkut Barang'),
(137, 27, 'Alat Keselamatan'),
(138, 27, 'Alat Pekebunan'),
(139, 27, 'Mesin Produksi'),
(140, 27, 'Perlengkapan Listrik'),
(141, 27, 'Power Tools'),
(142, 24, 'Perawatan Hewan Peliharaan'),
(143, 24, 'Perawatan Hewan Ternak'),
(144, 24, 'Perlengkapan Hewan'),
(145, 28, 'Perumahan'),
(146, 30, 'Paket Tour'),
(147, 30, 'Tiket Transportasi'),
(148, 30, 'Voucher Travel');

-- --------------------------------------------------------

--
-- Table structure for table `tb_keranjang`
--

CREATE TABLE `tb_keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_patner` int(11) NOT NULL,
  `qty` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_paket_fb`
--

CREATE TABLE `tb_paket_fb` (
  `id_paket_fb` int(11) NOT NULL,
  `paket_produk` enum('PA','PD','PQ') NOT NULL,
  `harga` int(11) NOT NULL,
  `pv_paket` int(11) NOT NULL,
  `ket` enum('enabled','disabled','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_paket_fb`
--

INSERT INTO `tb_paket_fb` (`id_paket_fb`, `paket_produk`, `harga`, `pv_paket`, `ket`) VALUES
(1, 'PA', 480000, 240000, 'enabled'),
(3, 'PQ', 2160000, 1380000, 'enabled'),
(4, 'PQ', 2037200, 193380, 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `tb_paket_produk`
--

CREATE TABLE `tb_paket_produk` (
  `id_paket_produk` int(11) NOT NULL,
  `id_paket_fb` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_paket_produk`
--

INSERT INTO `tb_paket_produk` (`id_paket_produk`, `id_paket_fb`, `id_produk`, `qty`) VALUES
(1, 1, 1, 2),
(4, 3, 2, 6),
(5, 3, 1, 4),
(6, 4, 3, 7),
(7, 4, 4, 2),
(8, 4, 5, 1),
(9, 4, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `id_toko` int(8) NOT NULL,
  `nama_produk` varchar(75) NOT NULL,
  `harga` int(8) NOT NULL,
  `deskripsi` text NOT NULL,
  `berat` int(8) NOT NULL,
  `jns_produk` int(8) NOT NULL,
  `stok` int(8) NOT NULL,
  `demand` int(7) NOT NULL,
  `margin` int(5) NOT NULL,
  `harga_produk` int(8) NOT NULL,
  `pv_peritem` int(4) NOT NULL,
  `status_stok` enum('0','1','2') NOT NULL,
  `komisi` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `id_toko`, `nama_produk`, `harga`, `deskripsi`, `berat`, `jns_produk`, `stok`, `demand`, `margin`, `harga_produk`, `pv_peritem`, `status_stok`, `komisi`) VALUES
(1, 0, 'tes', 240000, 'asdasdasdasd', 123, 1, 111, 12, 100, 120000, 100, '1', 0),
(2, 0, 'tes2', 200000, 'ini deskripsi', 200, 3, 1200, 100, 100, 100000, 150, '1', 0),
(3, 0, 'b grow green', 180700, 'ini deskripsi', 120, 1, 120, 7, 178, 65000, 15, '1', 0),
(4, 0, 'b grow ternak', 180700, 'ini deskripsi', 100, 1, 120, 7, 178, 65000, 15, '1', 0),
(5, 0, 'bio pro', 210700, 'asdasd', 12, 1, 120, 11, 145, 86000, 15, '1', 0),
(6, 0, 'permaisuri', 200200, 'sajkdnajs', 120, 1, 121, 1, 160, 77000, 15, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk_img`
--

CREATE TABLE `tb_produk_img` (
  `id_produk_img` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_img` varchar(75) NOT NULL,
  `nama_folder` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_produk_img`
--

INSERT INTO `tb_produk_img` (`id_produk_img`, `id_produk`, `nama_img`, `nama_folder`) VALUES
(1, 1, '16050668641.png', '@bestore-product'),
(2, 2, '16052379421.png', '@bestore-product'),
(3, 3, '16052551691.png', '@bestore-product'),
(4, 4, '16052552121.png', '@bestore-product'),
(5, 5, '16052552901.jpeg', '@bestore-product'),
(6, 6, '16052553241.jpeg', '@bestore-product');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk_video`
--

CREATE TABLE `tb_produk_video` (
  `id_produk_video` int(11) NOT NULL,
  `id_produk` int(8) NOT NULL,
  `nama_video` varchar(15) NOT NULL,
  `nama_folder` varchar(45) NOT NULL,
  `nama_thumb` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_toko`
--

CREATE TABLE `tb_toko` (
  `id_toko` int(11) NOT NULL,
  `id_penjual` int(8) NOT NULL,
  `nama_toko` varchar(50) NOT NULL,
  `logo_img` varchar(50) NOT NULL,
  `no_telp` varchar(14) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(100) NOT NULL,
  `nama_folder` varchar(50) NOT NULL,
  `sub-domain` varchar(145) NOT NULL,
  `lat` varchar(150) NOT NULL,
  `long` varchar(150) NOT NULL,
  `status_toko` enum('1','2') NOT NULL,
  `create-date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_patner` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `qty` int(8) NOT NULL,
  `status_transaksi` enum('1','2','3','4','5') NOT NULL,
  `ket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_produk`, `id_patner`, `id_invoice`, `qty`, `status_transaksi`, `ket`) VALUES
(2011111, 1, 20110001, 2011111, 1, '2', 'Paket'),
(2011112, 1, 20110002, 2011112, 1, '2', 'Paket'),
(2011123, 1, 20110003, 2011123, 1, '2', 'Paket'),
(2011134, 3, 20110004, 2011134, 1, '2', 'Paket'),
(2011135, 4, 20110005, 2011135, 1, '2', 'Paket'),
(2011146, 4, 20110006, 2011146, 1, '2', 'Paket'),
(2011147, 1, 20110007, 2011147, 1, '2', 'Paket'),
(2011148, 4, 20110008, 2011148, 1, '2', 'Paket'),
(2011149, 4, 20110009, 2011149, 1, '2', 'Paket'),
(20111410, 4, 20110010, 20111410, 1, '2', 'Paket');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dropship`
--
ALTER TABLE `tb_dropship`
  ADD PRIMARY KEY (`id_dropship`),
  ADD KEY `id_distributor` (`id_distributor`);

--
-- Indexes for table `tb_follow`
--
ALTER TABLE `tb_follow`
  ADD PRIMARY KEY (`id_follow`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id_invoice`);

--
-- Indexes for table `tb_jenis_produk`
--
ALTER TABLE `tb_jenis_produk`
  ADD PRIMARY KEY (`id_jenis_produk`),
  ADD KEY `id_kategori_sub` (`id_kategori_sub`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_kategori_sub`
--
ALTER TABLE `tb_kategori_sub`
  ADD PRIMARY KEY (`id_kategori_sub`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  ADD PRIMARY KEY (`id_keranjang`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tb_paket_fb`
--
ALTER TABLE `tb_paket_fb`
  ADD PRIMARY KEY (`id_paket_fb`);

--
-- Indexes for table `tb_paket_produk`
--
ALTER TABLE `tb_paket_produk`
  ADD PRIMARY KEY (`id_paket_produk`),
  ADD KEY `id_paket_fb` (`id_paket_fb`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `jns_produk` (`jns_produk`),
  ADD KEY `id_toko` (`id_toko`);

--
-- Indexes for table `tb_produk_img`
--
ALTER TABLE `tb_produk_img`
  ADD PRIMARY KEY (`id_produk_img`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tb_produk_video`
--
ALTER TABLE `tb_produk_video`
  ADD PRIMARY KEY (`id_produk_video`),
  ADD KEY `tb_produk_video_ibfk_1` (`id_produk`);

--
-- Indexes for table `tb_toko`
--
ALTER TABLE `tb_toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_invoice` (`id_invoice`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_dropship`
--
ALTER TABLE `tb_dropship`
  MODIFY `id_dropship` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_follow`
--
ALTER TABLE `tb_follow`
  MODIFY `id_follow` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_jenis_produk`
--
ALTER TABLE `tb_jenis_produk`
  MODIFY `id_jenis_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_kategori_sub`
--
ALTER TABLE `tb_kategori_sub`
  MODIFY `id_kategori_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_paket_fb`
--
ALTER TABLE `tb_paket_fb`
  MODIFY `id_paket_fb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_paket_produk`
--
ALTER TABLE `tb_paket_produk`
  MODIFY `id_paket_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_produk_img`
--
ALTER TABLE `tb_produk_img`
  MODIFY `id_produk_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_produk_video`
--
ALTER TABLE `tb_produk_video`
  MODIFY `id_produk_video` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_toko`
--
ALTER TABLE `tb_toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_dropship`
--
ALTER TABLE `tb_dropship`
  ADD CONSTRAINT `tb_dropship_ibfk_1` FOREIGN KEY (`id_distributor`) REFERENCES `tb_toko` (`id_toko`);

--
-- Constraints for table `tb_jenis_produk`
--
ALTER TABLE `tb_jenis_produk`
  ADD CONSTRAINT `tb_jenis_produk_ibfk_1` FOREIGN KEY (`id_kategori_sub`) REFERENCES `tb_kategori_sub` (`id_kategori_sub`);

--
-- Constraints for table `tb_kategori_sub`
--
ALTER TABLE `tb_kategori_sub`
  ADD CONSTRAINT `tb_kategori_sub_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`);

--
-- Constraints for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  ADD CONSTRAINT `tb_keranjang_ibfk_1` FOREIGN KEY (`id_keranjang`) REFERENCES `tb_produk` (`id_produk`),
  ADD CONSTRAINT `tb_keranjang_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`id_produk`);

--
-- Constraints for table `tb_paket_produk`
--
ALTER TABLE `tb_paket_produk`
  ADD CONSTRAINT `tb_paket_produk_ibfk_1` FOREIGN KEY (`id_paket_fb`) REFERENCES `tb_paket_fb` (`id_paket_fb`),
  ADD CONSTRAINT `tb_paket_produk_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`id_produk`);

--
-- Constraints for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD CONSTRAINT `tb_produk_ibfk_1` FOREIGN KEY (`jns_produk`) REFERENCES `tb_jenis_produk` (`id_jenis_produk`);

--
-- Constraints for table `tb_produk_img`
--
ALTER TABLE `tb_produk_img`
  ADD CONSTRAINT `tb_produk_img_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`id_produk`);

--
-- Constraints for table `tb_produk_video`
--
ALTER TABLE `tb_produk_video`
  ADD CONSTRAINT `tb_produk_video_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`id_produk`);

--
-- Constraints for table `tb_toko`
--
ALTER TABLE `tb_toko`
  ADD CONSTRAINT `tb_toko_ibfk_1` FOREIGN KEY (`id_toko`) REFERENCES `tb_follow` (`id_follow`);

--
-- Constraints for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD CONSTRAINT `tb_transaksi_ibfk_1` FOREIGN KEY (`id_invoice`) REFERENCES `tb_invoice` (`id_invoice`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
