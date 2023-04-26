-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 17, 2022 at 02:09 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-kasir-ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jual`
--

DROP TABLE IF EXISTS `tbl_jual`;
CREATE TABLE IF NOT EXISTS `tbl_jual` (
  `id_jual` int(11) NOT NULL AUTO_INCREMENT,
  `no_faktur` varchar(15) DEFAULT NULL,
  `tgl_jual` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `dibayar` int(11) DEFAULT NULL,
  `kembalian` int(11) DEFAULT NULL,
  `id_user` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_jual`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jual`
--

INSERT INTO `tbl_jual` (`id_jual`, `no_faktur`, `tgl_jual`, `jam`, `grand_total`, `dibayar`, `kembalian`, `id_user`) VALUES
(22, '202208160002', '2022-08-01', '01:54:01', 122520, 200000, 77480, 1),
(23, '202208160003', '2022-08-02', '01:56:26', 411960, 500000, 88040, 1),
(21, '202208160001', '1900-01-03', '01:40:49', 324240, 400000, 75760, 1),
(20, '202208150004', '1900-01-04', '22:26:10', 9840, 10000, 160, 1),
(19, '202208150003', '1900-01-14', '22:22:58', 176400, 200000, 23600, 1),
(18, '202208150002', '2022-08-15', '22:05:01', 948960, 1000000, 51040, 1),
(17, '202208150001', '2022-06-15', '21:57:20', 246360, 300000, 53640, 1),
(24, '202208160004', '2022-05-16', '01:56:38', 10320, 20000, 9680, 1),
(25, '202208160005', '2022-08-16', '10:56:18', 626280, 700000, 73720, 1),
(26, '202208160006', '2022-08-16', '11:52:25', 1134000, 1200000, 66000, 1),
(27, '202208160007', '2022-08-16', '12:03:59', 483600, 500000, 16400, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `id_kategori` int(2) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Makanan'),
(2, 'Minuman'),
(3, 'Bumbu Masakan'),
(4, 'Elektronik'),
(5, 'Alat Tulis Kantor'),
(6, 'Accessoris');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

DROP TABLE IF EXISTS `tbl_produk`;
CREATE TABLE IF NOT EXISTS `tbl_produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `kode_produk` varchar(25) DEFAULT NULL,
  `nama_produk` varchar(150) DEFAULT NULL,
  `id_kategori` int(2) DEFAULT NULL,
  `id_satuan` int(2) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `kode_produk`, `nama_produk`, `id_kategori`, `id_satuan`, `harga_beli`, `harga_jual`, `stok`) VALUES
(31, '111126', 'Kacang Atom Garuda 15 gr', 1, 13, 8200, 9840, 84),
(27, '111122', 'Kacang Atom Garuda 30 gr', 1, 13, 17700, 21240, 92),
(23, '111118', 'Kacang Atom Panda 10 gr', 1, 13, 17100, 20520, 94),
(30, '111125', 'Kacang Atom Panda 60 gr', 1, 13, 36000, 43200, 89),
(26, '111121', 'Kacang Atom Panda 155 gr', 1, 13, 45000, 54000, 77),
(20, '111115', 'Kacang Kulit Garuda 50 gr', 1, 13, 8600, 10320, 98),
(19, '111114', 'Kacang Kulit Garuda 75 gr', 1, 13, 40300, 48360, 79),
(29, '111124', 'Kacang Kulit Garuda 160 gr', 1, 13, 101000, 121200, 96),
(25, '111120', 'Kacang Kulit Garuda Rasa Bw 55 gr', 1, 13, 40200, 48240, 89),
(22, '111117', 'Kacang Rosta 1000', 1, 13, 16600, 19920, 70),
(18, '111113', 'Kacang Rosta 2000', 1, 13, 16700, 20040, 99),
(28, '111123', 'Kacang Telur Garuda', 1, 13, 16200, 19440, 0),
(24, '111119', 'Kacang Telur Sukses', 1, 13, 17800, 21360, 0),
(21, '111116', 'Kuaci Rebo 70 gr', 1, 13, 91000, 109200, 99),
(16, '111111', 'Kuaci Rebo 1000 gr', 1, 13, 16800, 20160, 98),
(17, '111112', 'Pilus Garuda 24 gr', 1, 13, 8500, 10200, 99);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rinci_jual`
--

DROP TABLE IF EXISTS `tbl_rinci_jual`;
CREATE TABLE IF NOT EXISTS `tbl_rinci_jual` (
  `id_rinci` int(11) NOT NULL AUTO_INCREMENT,
  `no_faktur` varchar(15) DEFAULT NULL,
  `kode_produk` varchar(25) DEFAULT NULL,
  `modal` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `untung` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rinci`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rinci_jual`
--

INSERT INTO `tbl_rinci_jual` (`id_rinci`, `no_faktur`, `kode_produk`, `modal`, `harga`, `qty`, `total_harga`, `untung`) VALUES
(48, '202208160001', '111113', 16700, 20040, 1, 20040, 3340),
(47, '202208160001', '111116', 91000, 109200, 1, 109200, 18200),
(46, '202208160001', '111111', 16800, 20160, 1, 20160, 3360),
(45, '202208160001', '111112', 8500, 10200, 1, 10200, 1700),
(44, '202208150004', '111126', 8200, 9840, 1, 9840, 1640),
(43, '202208150003', '111114', 40300, 48360, 2, 96720, 16120),
(42, '202208150003', '111117', 16600, 19920, 4, 79680, 13280),
(41, '202208150002', '111117', 16600, 19920, 21, 418320, 69720),
(40, '202208150002', '111120', 40200, 48240, 11, 530640, 88440),
(39, '202208150001', '111125', 36000, 43200, 5, 216000, 36000),
(38, '202208150001', '111118', 17100, 20520, 1, 20520, 3420),
(37, '202208150001', '111126', 8200, 9840, 1, 9840, 1640),
(49, '202208160001', '111126', 8200, 9840, 4, 39360, 6560),
(50, '202208160001', '111122', 17700, 21240, 3, 63720, 10620),
(51, '202208160001', '111118', 17100, 20520, 3, 61560, 10260),
(52, '202208160002', '111111', 16800, 20160, 1, 20160, 3360),
(53, '202208160002', '111114', 40300, 48360, 1, 48360, 8060),
(54, '202208160002', '111121', 45000, 54000, 1, 54000, 9000),
(55, '202208160003', '111114', 40300, 48360, 1, 48360, 8060),
(56, '202208160003', '111124', 101000, 121200, 3, 363600, 60600),
(57, '202208160004', '111115', 8600, 10320, 1, 10320, 1720),
(58, '202208160005', '111118', 17100, 20520, 1, 20520, 3420),
(59, '202208160005', '111125', 36000, 43200, 5, 216000, 36000),
(60, '202208160005', '111114', 40300, 48360, 6, 290160, 48360),
(61, '202208160005', '111117', 16600, 19920, 5, 99600, 16600),
(62, '202208160006', '111121', 45000, 54000, 21, 1134000, 189000),
(63, '202208160007', '111114', 40300, 48360, 10, 483600, 80600);

--
-- Triggers `tbl_rinci_jual`
--
DROP TRIGGER IF EXISTS `t_rinci_jual`;
DELIMITER $$
CREATE TRIGGER `t_rinci_jual` AFTER INSERT ON `tbl_rinci_jual` FOR EACH ROW BEGIN
	UPDATE tbl_produk SET stok = stok - NEW.qty
    WHERE kode_produk = NEW.kode_produk;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan`
--

DROP TABLE IF EXISTS `tbl_satuan`;
CREATE TABLE IF NOT EXISTS `tbl_satuan` (
  `id_satuan` int(2) NOT NULL AUTO_INCREMENT,
  `nama_satuan` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_satuan`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`id_satuan`, `nama_satuan`) VALUES
(1, 'PCS'),
(2, 'BOX'),
(3, 'Lusin'),
(4, 'Buah'),
(5, 'KG'),
(6, 'Unit'),
(7, 'BKS'),
(8, 'KRG'),
(9, 'KLG'),
(13, 'PAK'),
(12, 'LTR');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

DROP TABLE IF EXISTS `tbl_setting`;
CREATE TABLE IF NOT EXISTS `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_toko` varchar(25) DEFAULT NULL,
  `slogan` varchar(50) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `no_telpon` varchar(18) DEFAULT NULL,
  `deskripsi` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `slogan`, `alamat`, `no_telpon`, `deskripsi`) VALUES
(1, 'Padang Tekno Store', 'Toko Serba Ada Menyediakan Segalanya', 'Jl. Imam Bonjol No.3 Kec.Padang Utara, Kota Padang', '082284339933', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(2) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email`, `password`, `level`) VALUES
(1, 'Padang Tekno', 'admin@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1),
(2, 'Sumartono', 'kasir@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 2),
(3, 'Budi Hartono', 'budi@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
