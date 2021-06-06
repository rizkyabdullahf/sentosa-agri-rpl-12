-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2021 at 12:42 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_olshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang_agri`
--

CREATE TABLE `tbl_barang_agri` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `deskripsi` mediumtext,
  `gambar` text,
  `berat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang_agri`
--

INSERT INTO `tbl_barang_agri` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `deskripsi`, `gambar`, `berat`) VALUES
(22, 'Bawang Merah', 10, 13000, 'Harga Barang Per Kilogram', 'bawang_merah_p-removebg-preview.png', 1000),
(23, 'Cabai Merah', 10, 20000, ' Harga Barang Per Kilogram', 'cabaimerah1.png', 1000),
(24, 'Lengkuas', 10, 8000, ' Harga Barang Per Kilogram', 'lengkuas_p-removebg-preview.png', 1000),
(25, 'Cabai Keriting', 10, 24000, ' Harga Barang Per Kilogram ', 'cabaikeriting.png', 10000),
(26, 'Bawang Putih', 10, 18000, ' Harga Barang Per Kilogram', 'bawangputih.png', 1000),
(29, 'Jahe', 10, 14000, ' Harga Barang Per Kilogram ', 'jahe-removebg-preview.png', 1000),
(30, 'Kunyit', 10, 17000, ' Harga Barang Per Kilogram ', 'kunyit-removebg-preview.png', 1000),
(31, 'Kemiri', 10, 6000, ' Harga Barang Per Kilogram ', 'kemiri-removebg-preview.png', 1000),
(32, 'Kencur', 10, 12000, ' Harga Barang Per Kilogram ', 'kencur-removebg-preview.png', 1000),
(33, 'Daging Ayam ', 12, 36000, ' Harga Barang Per Kilogram ', 'daging_ayam.png', 1000),
(34, 'Daging Kambing', 12, 56000, ' Harga Barang Per Kilogram ', 'daging_kambing_lama-removebg-preview.png', 1000),
(35, 'Daging Sapi', 12, 80000, ' Harga Barang Per Kilogram ', 'daging_sapi.png', 1000),
(36, 'Bayam', 11, 4000, ' Harga Barang Per Kilogram ', 'bayam-removebg-preview.png', 1000),
(37, 'Kangkung', 11, 5000, ' Harga Barang Per Kilogram ', 'kangkung-removebg-preview.png', 1000),
(38, 'Kol', 11, 7000, ' Harga Barang Per Kilogram ', 'kol-removebg-preview.png', 1000),
(39, 'Sawi', 11, 6000, ' Harga Barang Per Kilogram ', 'sawi-removebg-preview.png', 1000),
(40, 'Sosis Champ', 13, 16000, ' Harga Barang Per Kilogram ', 'sosis_champ-removebg-preview.png', 1000),
(41, 'Sosis Kimbo Ready', 13, 15000, ' Harga Barang Per Kilogram  ', 'sosis_kimbo-removebg-preview.png', 1000),
(42, 'Nugget Champ', 13, 17000, ' Harga Barang Per Kilogram ', 'nugget_champ-removebg-preview_(1).png', 1000),
(43, 'Nugget Fiesta', 13, 24000, ' Harga Barang Per Kilogram ', 'nugget_fiesta-removebg-preview.png', 1000),
(44, 'Nugget So Good', 13, 22000, ' Harga Barang Per Kilogram ', 'nugget_so_good-removebg-preview.png', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_costumer`
--

CREATE TABLE `tbl_costumer` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telepon` text,
  `foto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_costumer`
--

INSERT INTO `tbl_costumer` (`id_pelanggan`, `nama_pelanggan`, `email`, `password`, `alamat`, `no_telepon`, `foto`) VALUES
(1, 'Ardiasnyah Saputra', 'ardiasnyah123@gmail.com', 'admin123', 'Perumahan Taman Sentosa Blok A1. No.01, Cikarang Selatan, Kabupaten Bekasi, Jawa Barat.', '081509103043', 'gam8.jpg'),
(2, 'Rizky Fadilah', 'rizkyfadilah123@gmail.com', 'admin123', 'Perumahan Taman Sentosa Blok A1. No.02, Cikarang Selatan, Kabupaten Bekasi, Jawa Barat.', '081209103043', 'gam7.jpg'),
(3, 'Ferdiasnyah Asmara', 'ferdiasmara123@gmail.com', 'admin123', 'Perumahan Taman Sentosa Blok A1. No.03, Cikarang Selatan,', '081309103043', 'gam5.jpg'),
(4, 'Muna Kamila', 'munakamila@gmail.com', 'admin123', 'Perumahan Taman Sentosa Blok B1. No.01, Cikarang Selatan, Kabupaten Bekasi, Jawa Barat.', '089609103043', 'gam6.jpg'),
(5, 'Siti Aminah', 'sitiaminah123@gmail.com', 'admin123', 'Perumahan Taman Sentosa Blok B1. No.02, Cikarang Selatan, Kabupaten Bekasi, Jawa Barat', '083809103043', 'img1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gambar`
--

CREATE TABLE `tbl_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `gambar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(10, 'Rempah-Rempah Segar'),
(11, 'Sayur-Sayuran Segar'),
(12, 'Daging Mentah Segar'),
(13, 'Daging Olahan Segar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `id_rekening` int(11) NOT NULL,
  `metode_pembayaran` varchar(255) DEFAULT NULL,
  `no_pembayaran` varchar(255) DEFAULT NULL,
  `atas_nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`id_rekening`, `metode_pembayaran`, `no_pembayaran`, `atas_nama`) VALUES
(1, 'Bank BRI', '0894-0104-7696-530', 'Ade Sutarya'),
(2, 'DANA', '082210358705', 'Ade Sutarya'),
(3, 'Bank BCA', '4399-1677-8104-091', 'Ade Sutarya'),
(4, 'Cash On Delivery (COD)', 'Sistem COD', 'Ade Sutarya');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rincian_transaksi`
--

CREATE TABLE `tbl_rincian_transaksi` (
  `id_rincian` int(11) NOT NULL,
  `no_order` varchar(255) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rincian_transaksi`
--

INSERT INTO `tbl_rincian_transaksi` (`id_rincian`, `no_order`, `id_barang`, `qty`) VALUES
(1, '20210602LBFNWK18', 42, 5),
(2, '20210602IL5OU1BW', 40, 2),
(3, '2021060230YOVGIJ', 43, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id_toko` int(1) NOT NULL,
  `nama_toko` varchar(255) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `alamat_toko` text,
  `no_telepon` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_toko`, `nama_toko`, `lokasi`, `alamat_toko`, `no_telepon`) VALUES
(1, 'Market Sentosa Agri', 55, 'Perumahan Taman Sentosa Blok A1. No. 97, Cikarang Selatan, Kabupaten Bekasi, Jawa Barat', '081289257973');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `no_order` varchar(255) DEFAULT NULL,
  `tanggal_order` date DEFAULT NULL,
  `nama_penerima` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `alamat` text,
  `berat` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `status_bayar` int(1) DEFAULT NULL,
  `bukti_bayar` text,
  `atas_nama` varchar(25) DEFAULT NULL,
  `metode_pembayaran` varchar(25) DEFAULT NULL,
  `no_pembayaran` varchar(25) DEFAULT NULL,
  `status_order` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_pelanggan`, `no_order`, `tanggal_order`, `nama_penerima`, `provinsi`, `kota`, `kecamatan`, `no_telepon`, `alamat`, `berat`, `grand_total`, `total_bayar`, `status_bayar`, `bukti_bayar`, `atas_nama`, `metode_pembayaran`, `no_pembayaran`, `status_order`) VALUES
(1, 5, '20210602LBFNWK18', '2021-06-02', 'Siti Aminah', 'Jawa Barat', 'Bekasi', 'Cikarang Selatan', '083809103043', '	 Perumahan Taman Sentosa Blok B1. No.02, Cikarang Selatan, Kabupaten Bekasi, Jawa Barat.', 5000, 85000, 85000, 1, 'bukti_23.jpg', 'Siti Aminah', 'Bank BCA', '4399-1677-8104-092', 3),
(2, 5, '20210602IL5OU1BW', '2021-06-02', 'Siti Aminah', 'Jawa Barat', 'Bekasi', 'Cikarang Selatan', '083809103043', 'Perumahan Taman Sentosa Blok B1. No.02, Cikarang Selatan, Kabupaten Bekasi, Jawa Barat', 2000, 32000, 32000, 1, 'bukti_24.jpg', 'Siti Aminah', 'Bank BCA', '4399-1677-8104-092', 3),
(3, 5, '2021060230YOVGIJ', '2021-06-02', 'Siti Aminah', 'Jawa Barat', 'Bekasi', 'Cikarang Selatan', '083809103043', 'Perumahan Taman Sentosa Blok B1. No. 02, Cikarang Selatan, Kabupaten Bekasi, Jawa Barat.', 1000, 24000, 24000, 0, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `level_user` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`, `level_user`) VALUES
(1, 'Rizky Abdullah Falah', 'rizky_abdullahf', 'admin123', 1),
(2, 'Siti Aminah', 'sitiaminah123', 'user123', 2),
(3, 'Muna Kamila', 'munakamila123', 'user123', 2),
(4, 'Ardiasnyah Saputra', 'ardiasnyahsaputra123', 'user123', 2),
(5, 'Rizky Fadilah', 'rizkyfadilah123', 'user123', 2),
(6, 'Ferdiasnyah Asmara', 'ferdiasnyahasmara123', 'user123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang_agri`
--
ALTER TABLE `tbl_barang_agri`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tbl_costumer`
--
ALTER TABLE `tbl_costumer`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `tbl_rincian_transaksi`
--
ALTER TABLE `tbl_rincian_transaksi`
  ADD PRIMARY KEY (`id_rincian`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_barang_agri`
--
ALTER TABLE `tbl_barang_agri`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_costumer`
--
ALTER TABLE `tbl_costumer`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_rincian_transaksi`
--
ALTER TABLE `tbl_rincian_transaksi`
  MODIFY `id_rincian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_toko` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
