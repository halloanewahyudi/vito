-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 18, 2018 at 09:59 PM
-- Server version: 5.5.60-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vitokeme_ane`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `post_id`, `comment`, `date_added`) VALUES
(5, 1, 3, 'Test komentar untuk ini', '2018-08-11 07:00:37'),
(6, 1, 3, 'test komentar lagi brow...', '2018-08-11 07:08:50'),
(7, 1, 6, 'test comments', '2018-08-11 10:27:56'),
(8, 6, 7, 'test', '2018-08-12 01:41:54'),
(9, 1, 3, 'test commentar lagi secara online', '2018-08-17 04:11:16'),
(10, 7, 29, 'test comentar', '2018-08-20 01:18:33'),
(11, 27, 78, 'Bagaimana dengan rencana sosialiasi di ITB Berlin?', '2018-08-23 11:09:06'),
(12, 10, 78, 'sepertinya hal itu sulit untuk dilakukan', '2018-08-23 11:09:44'),
(13, 27, 111, 'that''s great bu Shely', '2018-09-04 05:39:47'),
(14, 27, 113, 'Thank you for coming to KJRI', '2018-09-24 07:48:26'),
(15, 33, 178, 'Very good, please add Singapore and Vietnam in your report too\r\n', '2018-09-25 02:32:05'),
(16, 11, 178, 'Okay, will do. Thanks', '2018-09-25 02:33:00'),
(17, 11, 178, 'Please check the updated files, thx', '2018-10-12 03:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `flag`) VALUES
(1, 'Singapore', 'singapore1.svg'),
(2, 'Malaysia', 'malaysia.svg'),
(3, 'Australia (Sydney)', 'australia2.svg'),
(4, 'Australia (Melbourne)', 'australia1.svg'),
(5, 'China (Beijing)', 'china.svg'),
(6, 'China (Guangzhou)', 'china1.svg'),
(7, 'China (Hongkong - Macau)', 'china4.svg'),
(8, 'China (Shanghai)', 'china5.svg'),
(9, 'South Korea (Busan)', 'south-korea.svg'),
(10, 'South Korea (Seoul)', 'south-korea1.svg'),
(24, 'Indonesia', 'Indonesia_flag.jpg'),
(11, 'Japan', 'japan.svg'),
(12, 'India (New Delhi)', 'india1.svg'),
(13, 'India (Mumbai)', 'india.svg'),
(14, 'Saudi Arabia', 'saudi-arabia.svg'),
(15, 'Middle East', '600px-Map_of_Middle_East.png'),
(16, 'United Kingdom', 'united-kingdom.svg'),
(17, 'France', 'france.svg'),
(18, 'The Netherlands', 'netherlands.svg'),
(19, 'Germany', 'germany.svg'),
(20, 'Russia', 'russia.svg'),
(21, 'Australia (E-VITO)', 'australia3.svg'),
(22, 'Cruise Tourism Officer', 'cruise-58-151777.png'),
(23, 'Halal Tourism Officer', 'halal-512.png');

-- --------------------------------------------------------

--
-- Table structure for table `ev`
--

CREATE TABLE IF NOT EXISTS `ev` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(200) NOT NULL,
  `nilai` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `penilai_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ev`
--

INSERT INTO `ev` (`id`, `kriteria`, `nilai`, `group_id`, `user_id`, `penilai_id`) VALUES
(1, '', 4, 0, 10, 0),
(136, 'Sociable: mampu bersosialisasi atau menjalin hubungan baik dengan\r\npara stakeholder, termasuk TKV, Kemenpar dan sesama Vito', 4, 1, 10, 27),
(135, 'Sociable: mampu bersosialisasi atau menjalin hubungan baik dengan\r\npara stakeholder, termasuk TKV, Kemenpar dan sesama Vito', 4, 1, 10, 27),
(134, 'Profesional: Ahli, memiliki wawasan luas di bidangnya,\r\nmemiliki etika dan menerapkannya mampu ber bahasa inggris\r\nyang baik dan benar', 2, 1, 10, 27),
(133, 'Berinisiatif: Mempunyai inisiatif untuk memberi nilai tambah', 4, 1, 10, 27),
(132, 'Kooperatif: Siap bekerja sama dan bersedia membantu', 3, 1, 10, 27),
(131, 'Aktif: Giat bekerja, dinamis', 2, 1, 10, 27);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE IF NOT EXISTS `evaluation` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(200) NOT NULL,
  `nilai` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `penilai_id` int(11) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `sub_title` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`id`, `kriteria`, `nilai`, `total`, `group_id`, `user_id`, `penilai_id`, `keterangan`, `sub_title`) VALUES
(1, 'Aktif: Giat bekerja, dinamis', 1, 0, 1, 18, 27, '', ''),
(2, 'Kooperatif: Siap bekerja sama dan bersedia membantu', 3, 0, 1, 18, 27, '', ''),
(3, 'Berinisiatif: Mempunyai inisiatif untuk memberi nilai tambah', 2, 0, 1, 18, 27, '', ''),
(4, 'Profesional: Ahli, memiliki wawasan luas di bidangnya,\r\nmemiliki etika dan menerapkannya mampu ber bahasa inggris\r\nyang baik dan benar', 1, 0, 1, 18, 27, '', ''),
(5, 'Sociable: mampu bersosialisasi atau menjalin hubungan baik dengan\r\npara stakeholder, termasuk TKV, Kemenpar dan sesama Vito', 5, 0, 1, 18, 27, '', ''),
(6, 'Kemampuan mencari dan menyajikan informasi yang relevan bagi Kemenpar.', 2, 0, 2, 10, 27, '', ''),
(7, 'Kemampuan memberikan rekomendasi berdasarkan data dan informasi.', 3, 0, 2, 10, 27, '', ''),
(24, 'Ketepatan waktu dalam menyampaikan laporan mingguan.', 3, 0, 2, 10, 27, '', ''),
(25, 'Menyajikan laporan bulanan secara utuh.', 2, 0, 2, 10, 27, '', 'LAPORAN BULANAN'),
(26, 'Kemampuan menyajikan data sesuai panduan.', 1, 0, 2, 10, 27, '', 'LAPORAN BULANAN'),
(27, 'Kemampuan menganalisis data menjadi informasi yang relevan.', 3, 0, 2, 10, 27, '', 'LAPORAN BULANAN'),
(28, 'Ketepatan waktu dalam menyampaikan laporan bulanan.', 4, 0, 2, 10, 27, '', 'LAPORAN BULANAN'),
(29, 'Responsif dalam menanggapi dan menyampaikan laporan/analisis yang diminta.', 4, 0, 2, 10, 27, '', 'LAPORAN ATAU ANALISIS ISU-ISU TERTENTU'),
(30, 'Mampu memberikan laporan/analisis sesuai permintaan, valid, dan relevan.', 3, 0, 2, 10, 27, '', 'LAPORAN ATAU ANALISIS ISU-ISU TERTENTU'),
(31, 'Kemampuan memberikan bantuan atau solusi terhadap penyelenggaraan promosi yang efektif.', 3, 0, 3, 10, 27, '', ''),
(32, 'Kemampuan memberikan masukan pada tahap persiapan kegiatan promosi (contohnya mencarikan peserta untuk famtrip atau sales mission).', 2, 0, 3, 10, 27, '', ''),
(33, 'Profesionalisme dalam seluruh kegiatan promosi.', 2, 0, 3, 10, 27, '', ''),
(34, 'Kemampuan memberikan evaluasi pascakegiatan promosi.', 3, 0, 3, 10, 27, '', ''),
(35, 'Kemampuan memberikan bantuan atau solusi terhadap kegiatan komunikasi pemasaran yang efektif.', 1, 0, 4, 10, 27, '', ''),
(36, 'Kemampuan memberikan masukan pada tahap persiapan kegiatan komunikasi pemasaran (contohnya memberikan informasi media yang berpengaruh di pasar).', 1, 0, 4, 10, 27, '', ''),
(37, 'Profesionalisme dalam seluruh kegiatan komunikasi pemasaran.', 1, 0, 4, 10, 27, '', ''),
(38, 'Kemampuan memberikan evaluasi pascakegiatan komunikasi pemasaran.', 1, 0, 4, 10, 27, '', ''),
(39, 'Memiliki jaringan dengan media setempat maupun internasional.', 2, 0, 4, 10, 27, '', ''),
(40, 'Memiliki jaringan dengan top influencer setempat maupun internasional.', 3, 0, 4, 10, 27, '', ''),
(41, 'Kemampuan menjalin kerja sama dengan institusi dan perwakilan Indonesia di luar negeri maupun pemerintah setempat.', 2, 0, 5, 10, 27, '', ''),
(42, 'Memiliki jejaring dengan TA/TO/wholesaler maupun pemain industri (hotel, airlines, dll), asosiasi dan komunitas tertentu lainnya.', 3, 0, 5, 10, 27, '', ''),
(43, 'Kemampuan mengoptimalkan jejaring dengan industri untuk mendukung program Kemenpar.', 2, 0, 5, 10, 27, '', ''),
(44, 'Memiliki jejaring dengan media setempat maupun international.', 5, 0, 5, 10, 27, '', ''),
(45, 'Kemampuan mengoptimalkan jejaring dengan media untuk mendukung program Kemenpar.', 2, 0, 5, 10, 27, '', ''),
(46, 'Percaya diri: positif terhadap diri sendiri, mandiri dalam bertindak, berani berpendapat', 0, 0, 1, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ev_b1`
--

CREATE TABLE IF NOT EXISTS `ev_b1` (
  `id` int(11) NOT NULL,
  `q1` int(11) NOT NULL,
  `q2` int(11) NOT NULL,
  `q3` int(11) NOT NULL,
  `q4` int(11) NOT NULL,
  `q5` int(11) NOT NULL,
  `q6` int(11) NOT NULL,
  `q7` int(11) NOT NULL,
  `q8` int(11) NOT NULL,
  `q9` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `penilai_id` int(11) NOT NULL,
  `waktu_nilai` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total` int(11) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ev_b1`
--

INSERT INTO `ev_b1` (`id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `user_id`, `penilai_id`, `waktu_nilai`, `total`, `catatan`) VALUES
(1, 3, 2, 1, 2, 3, 4, 5, 4, 3, 18, 37, '2018-09-09 16:19:17', 27, ''),
(2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 18, 37, '2018-09-09 21:21:22', 9, ''),
(3, 1, 5, 1, 1, 1, 1, 1, 1, 1, 18, 37, '2018-09-09 21:26:56', 13, ''),
(4, 1, 5, 1, 1, 1, 1, 1, 1, 1, 18, 37, '2018-09-09 21:29:31', 13, ''),
(5, 1, 1, 1, 2, 2, 2, 2, 3, 3, 18, 37, '2018-09-09 22:00:28', 17, 'test terpisah'),
(6, 2, 2, 2, 2, 2, 2, 2, 2, 2, 18, 1, '2018-09-10 01:02:01', 18, ''),
(7, 2, 3, 1, 3, 1, 3, 1, 3, 1, 18, 1, '2018-09-10 01:02:22', 18, ''),
(8, 2, 3, 1, 3, 1, 3, 1, 3, 1, 18, 1, '2018-09-10 01:05:16', 18, ''),
(9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 18, 1, '2018-09-10 01:05:33', 9, ''),
(10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 18, 1, '2018-09-10 01:09:16', 9, ''),
(11, 1, 1, 5, 1, 1, 1, 1, 1, 1, 18, 1, '2018-09-10 01:09:55', 13, ''),
(12, 1, 1, 5, 1, 1, 1, 1, 1, 1, 18, 1, '2018-09-10 01:11:04', 13, ''),
(13, 2, 2, 2, 2, 2, 2, 2, 2, 2, 18, 1, '2018-09-10 01:11:32', 18, ''),
(14, 2, 2, 2, 2, 2, 2, 2, 2, 2, 18, 1, '2018-09-10 01:14:03', 18, ''),
(15, 2, 2, 5, 2, 2, 5, 2, 2, 5, 18, 1, '2018-09-10 01:14:28', 27, ''),
(16, 2, 2, 5, 2, 2, 5, 2, 2, 5, 18, 1, '2018-09-10 01:15:58', 27, ''),
(17, 1, 1, 1, 1, 1, 1, 1, 1, 1, 18, 1, '2018-09-10 01:16:14', 9, ''),
(18, 5, 5, 5, 5, 5, 5, 5, 5, 5, 18, 38, '2018-09-10 02:38:05', 45, ''),
(19, 1, 1, 1, 1, 1, 1, 1, 1, 1, 18, 38, '2018-09-10 03:10:28', 9, ''),
(20, 2, 2, 2, 2, 2, 2, 2, 2, 2, 18, 38, '2018-09-10 03:13:56', 18, '');

-- --------------------------------------------------------

--
-- Table structure for table `ev_b2`
--

CREATE TABLE IF NOT EXISTS `ev_b2` (
  `id` int(11) NOT NULL,
  `q1` int(11) NOT NULL,
  `q2` int(11) NOT NULL,
  `q3` int(11) NOT NULL,
  `q4` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `penilai_id` int(11) NOT NULL,
  `waktu_nilai` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total` int(11) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ev_b2`
--

INSERT INTO `ev_b2` (`id`, `q1`, `q2`, `q3`, `q4`, `user_id`, `penilai_id`, `waktu_nilai`, `total`, `catatan`) VALUES
(1, 1, 1, 1, 1, 18, 37, '2018-09-09 21:21:22', 4, ''),
(2, 1, 5, 1, 1, 18, 37, '2018-09-09 21:26:56', 8, ''),
(3, 1, 5, 1, 1, 18, 37, '2018-09-09 21:29:31', 8, ''),
(4, 1, 5, 5, 5, 18, 37, '2018-09-09 22:02:36', 16, 'test dengan submit'),
(5, 1, 1, 1, 2, 18, 38, '2018-09-10 03:09:56', 5, ''),
(6, 1, 5, 1, 5, 18, 38, '2018-09-10 03:14:08', 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `ev_b3`
--

CREATE TABLE IF NOT EXISTS `ev_b3` (
  `id` int(11) NOT NULL,
  `q1` int(11) NOT NULL,
  `q2` int(11) NOT NULL,
  `q3` int(11) NOT NULL,
  `q4` int(11) NOT NULL,
  `q5` int(11) NOT NULL,
  `q6` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `penilai_id` int(11) NOT NULL,
  `waktu_nilai` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ev_b3`
--

INSERT INTO `ev_b3` (`id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `user_id`, `penilai_id`, `waktu_nilai`, `total`, `catatan`) VALUES
(1, 1, 1, 1, 1, 1, 1, 18, 37, 0, 6, ''),
(2, 1, 5, 1, 1, 1, 1, 18, 37, 0, 10, ''),
(3, 1, 5, 1, 1, 1, 1, 18, 37, 0, 10, ''),
(4, 1, 5, 1, 5, 1, 5, 18, 37, 0, 18, 'test dengan submit catatan'),
(5, 1, 1, 1, 1, 1, 1, 18, 38, 0, 6, ''),
(6, 2, 2, 2, 2, 2, 2, 18, 38, 0, 12, ''),
(7, 5, 2, 2, 2, 2, 2, 18, 38, 0, 15, ''),
(8, 1, 1, 5, 3, 3, 3, 13, 39, 0, 16, 'test dengan catatan');

-- --------------------------------------------------------

--
-- Table structure for table `ev_c`
--

CREATE TABLE IF NOT EXISTS `ev_c` (
  `id` int(11) NOT NULL,
  `q1` int(11) NOT NULL,
  `q2` int(11) NOT NULL,
  `q3` int(11) NOT NULL,
  `q4` int(11) NOT NULL,
  `q5` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `penilai_id` int(11) NOT NULL,
  `waktu_nilai` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total` int(11) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ev_c`
--

INSERT INTO `ev_c` (`id`, `q1`, `q2`, `q3`, `q4`, `q5`, `user_id`, `penilai_id`, `waktu_nilai`, `total`, `catatan`) VALUES
(1, 2, 2, 2, 2, 2, 18, 37, '2018-09-09 22:11:20', 10, ''),
(2, 2, 2, 2, 2, 2, 18, 37, '2018-09-09 22:11:33', 10, 'dengan keterangan  ini '),
(3, 2, 2, 2, 2, 2, 18, 37, '2018-09-09 22:15:56', 10, 'dengan keterangan  ini '),
(4, 2, 2, 2, 2, 2, 18, 37, '2018-09-09 22:16:39', 10, 'dengan keterangan  ini '),
(5, 2, 2, 2, 2, 2, 18, 37, '2018-09-09 22:17:53', 10, 'dengan keterangan  ini '),
(6, 2, 2, 2, 2, 2, 18, 37, '2018-09-09 22:19:59', 10, 'dengan keterangan  ini '),
(7, 1, 1, 1, 1, 1, 18, 38, '2018-09-10 03:10:28', 5, ''),
(8, 1, 5, 5, 5, 5, 18, 38, '2018-09-10 03:14:30', 21, ''),
(9, 5, 1, 5, 1, 5, 18, 38, '2018-09-10 03:14:54', 17, ''),
(10, 5, 1, 5, 1, 5, 18, 38, '2018-09-10 03:16:17', 17, '');

-- --------------------------------------------------------

--
-- Table structure for table `ev_group`
--

CREATE TABLE IF NOT EXISTS `ev_group` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ev_group`
--

INSERT INTO `ev_group` (`id`, `name`) VALUES
(1, 'A. Karakter'),
(2, 'B1. Kompentensi Market Intelligence'),
(3, 'B2. Kompetensi - Fasilitas Kegiatan Promosi di Dalam dan Luar Negeri'),
(4, 'B3. Kompetensi - Dukungan Kegiatan Komunikasi Multi Media dan Kmunikasi Media Digital'),
(5, 'C. Kolaborasi - Jejaring dan Humas');

-- --------------------------------------------------------

--
-- Table structure for table `ev_karakter`
--

CREATE TABLE IF NOT EXISTS `ev_karakter` (
  `id` int(11) NOT NULL,
  `q1` int(11) NOT NULL,
  `q2` int(11) NOT NULL,
  `q3` int(11) NOT NULL,
  `q4` int(11) NOT NULL,
  `q5` int(11) NOT NULL,
  `q6` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `penilai_id` int(11) NOT NULL,
  `waktu_nilai` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total` int(11) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ev_karakter`
--

INSERT INTO `ev_karakter` (`id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `user_id`, `penilai_id`, `waktu_nilai`, `total`, `catatan`) VALUES
(123, 2, 2, 2, 2, 2, 5, 18, 37, '2018-09-09 21:57:24', 15, 'dengani ini keterangan nya'),
(117, 1, 3, 2, 1, 3, 2, 18, 37, '2018-09-09 21:20:59', 12, 'test catatan lagi'),
(118, 1, 1, 1, 1, 1, 1, 18, 37, '2018-09-09 21:21:22', 6, ''),
(119, 2, 5, 1, 1, 1, 1, 18, 37, '2018-09-09 21:26:33', 11, ''),
(120, 1, 5, 1, 1, 1, 1, 18, 37, '2018-09-09 21:26:56', 10, ''),
(121, 1, 5, 1, 1, 1, 1, 18, 37, '2018-09-09 21:29:31', 10, ''),
(122, 2, 5, 2, 2, 2, 5, 18, 37, '2018-09-09 21:57:03', 18, ''),
(147, 1, 1, 1, 1, 1, 1, 18, 27, '2018-09-10 03:23:15', 6, ''),
(146, 1, 1, 1, 1, 1, 1, 18, 38, '2018-09-10 03:10:28', 6, ''),
(144, 2, 5, 2, 2, 2, 2, 18, 38, '2018-09-10 02:38:25', 15, ''),
(145, 2, 5, 2, 2, 2, 2, 18, 38, '2018-09-10 02:40:56', 15, ''),
(143, 5, 5, 5, 5, 5, 5, 18, 38, '2018-09-10 02:38:05', 30, ''),
(116, 3, 1, 2, 1, 2, 1, 18, 37, '2018-09-09 21:20:26', 10, 'test catatan lagi'),
(91, 3, 3, 3, 3, 3, 5, 18, 37, '2018-09-09 15:23:40', 20, 'test catatan lagi'),
(148, 3, 3, 1, 2, 2, 2, 18, 38, '2018-10-04 09:11:57', 13, '');

-- --------------------------------------------------------

--
-- Table structure for table `form_builder`
--

CREATE TABLE IF NOT EXISTS `form_builder` (
  `id` int(11) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `attributes` varchar(20) NOT NULL,
  `remark` text NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User'),
(3, 'TKV', 'Team Koordinator Vito'),
(4, 'Vito', 'vito'),
(5, 'REG', 'regional'),
(6, 'ADS2', 'ads2'),
(7, 'HLN1', 'hln1'),
(8, 'KMD', ''),
(9, 'KMM', '');

-- --------------------------------------------------------

--
-- Table structure for table `gt_evaluation`
--

CREATE TABLE IF NOT EXISTS `gt_evaluation` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `penilai` int(11) NOT NULL,
  `catatan` text,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gt_evaluation`
--

INSERT INTO `gt_evaluation` (`id`, `group_id`, `total`, `penilai`, `catatan`, `user_id`) VALUES
(4, 3, 10, 27, NULL, 10),
(2, 1, 19, 27, 'test lagi nih', 10),
(3, 2, 25, 27, NULL, 10),
(5, 4, 9, 27, NULL, 10),
(6, 5, 14, 27, NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `caption` varchar(200) NOT NULL,
  `link` int(11) NOT NULL,
  `create_on` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `week` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `title`, `image`, `caption`, `link`, `create_on`, `user_id`, `status`, `week`, `month`, `year`) VALUES
(6, 'di tambahin lagi nih', '4882752318_3193b71e7e_z.jpg', 'test aje brow', 0, 1534179447, 25, 'gallery', 0, 0, 0),
(7, 'lagi ', '5070822819_17c9c1b5a6_z.jpg', 'ini test lagi', 0, 1534180094, 25, 'gallery', 0, 0, 0),
(8, 'judulnya', '', 'test', 0, 1534181100, 25, 'gallery', 0, 0, 0),
(9, 'test image', '16016891506_0d120d2496_z1.jpg', 'loremipsum doloret sitamet', 0, 0, 0, '', 0, 0, 0),
(10, 'judul', '2060536873_7654036126_z2.jpg', '', 0, 0, 1, '', 0, 0, 0),
(11, 'Tambah lagi', '', 'yenykdhd  lorem ipsum doloret sitamet', 0, 1534230069, 1, '', 0, 0, 0),
(12, 'ttesss', '01-thumbnail.jpg', 'ini adalah sebuah caption', 0, 1534230090, 1, '', 0, 0, 0),
(20, '', 'vito_mumbai.jpg', 'Coverage of Indonesia Sales Mission in Mumbai\r\nhttps://destinationreporterindia.com/2018/08/26/indonesia-tourism-sales-mission-roadshow-held-in-mumbai/', 0, 1536031533, 18, '', 3, 9, 2018),
(21, '', 'Capture.PNG', 'test', 0, 1536974955, 38, '', 3, 9, 2018),
(22, '', 'PHOTO-2018-09-07-19-40-17.jpg', 'CDM Ad Design 1', 0, 1537842868, 11, '', 3, 9, 2018),
(23, '', 'PHOTO-2018-09-07-19-40-19.jpg', 'CDM ad design 2', 0, 1537842888, 11, '', 3, 9, 2018),
(24, '', 'PHOTO-2018-09-07-19-40-20.jpg', 'CDM ad design 3', 0, 1537842903, 11, '', 3, 9, 2018);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE IF NOT EXISTS `month` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `month` varchar(20) NOT NULL,
  `file` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`id`, `title`, `month`, `file`, `user_id`) VALUES
(4, 'test lagi', '1', '', 9),
(5, 'test lagi', 'May', '', 9),
(6, 'Test Monthly', 'July', '', 10),
(7, 'judul', 'May', '', 38);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `create_on` int(11) NOT NULL,
  `update_on` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `meta_id` int(11) NOT NULL,
  `waktu` date NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `image`, `create_on`, `update_on`, `status`, `user_id`, `week`, `month`, `year`, `meta_id`, `waktu`, `remark`) VALUES
(1, 'Test Networking telah di edit', '', 'singapore.svg', 1533963774, 1534493165, 'networking', 1, 0, 0, 0, 0, '0000-00-00', ''),
(2, 'Loremipsum nya di edit', '<p>lipsum.com aye... iye</p>', '', 1533967057, 1534498841, 'networking', 1, 4, 0, 0, 0, '0000-00-00', ''),
(3, 'Networking yang ke 3 di editnl lagi biar panjang', '<p>ini adalah networking yang ke 3</p>', '', 1533967362, 1534496321, 'networking', 1, 4, 0, 0, 0, '0000-00-00', ''),
(4, 'Test Market Intelligence', '<p>ini adalah lorem ipsum doloretsitamet</p>', '', 1533977698, 0, 'market_intelligence', 1, 0, 0, 0, 0, '0000-00-00', ''),
(5, 'sebuah judul News Update', '<p>Ini adalah sebuah isi dari[ada news update</p>', '03-thumbnail1.jpg', 1533978992, 1533979215, 'news_update', 1, 0, 0, 0, 0, '0000-00-00', ''),
(6, 'Test COmpetitor Activity', '<p>ini adalah sebuah test competitor activity</p>', '', 1533983240, 0, 'competitor_activity', 1, 0, 0, 0, 0, '0000-00-00', ''),
(8, 'Test Other', '<p>ini adalah loremipsum doloret sitamet</p>\r\n\r\n<p><img alt="" src="/vito/kcfinder/upload/files/04-full.jpg" xss=removed></p>', '', 1534051559, 0, 'other', 6, 0, 0, 0, 0, '0000-00-00', ''),
(10, 'test gallery', '<p><img alt="test" src="/vito/kcfinder/upload/files/02-thumbnail.jpg" xss=removed><img alt="" src="/vito/kcfinder/upload/files/04-thumbnail.jpg" xss=removed></p>', '', 1534084550, 0, 'news_update', 1, 0, 0, 0, 0, '0000-00-00', ''),
(11, 'test lagi', '<p>okeh<img alt="" src="/vito/kcfinder/upload/files/jualpulsa.pdf"></p>', '', 1534085111, 0, 'news_update', 1, 0, 0, 0, 0, '0000-00-00', ''),
(12, 'judul gallery', '', '', 1534087461, 0, 'activities', 1, 0, 0, 0, 0, '0000-00-00', ''),
(24, 'lagi nih di create', '', '', 1534170819, 0, 'activities', 1, 0, 0, 0, 0, '0000-00-00', ''),
(25, 'Judul sebuah gallery', '', '', 1534171267, 0, 'activities', 1, 0, 0, 0, 0, '0000-00-00', ''),
(26, 'judul', '', 'jualpulsa7.pdf', 1534184608, 1534184700, 'monthly', 1, 0, 0, 0, 0, '0000-00-00', ''),
(27, 'New Other', '<p>loremipsum doloret sitamet</p>', '', 1534187706, 0, 'other', 1, 0, 0, 0, 0, '0000-00-00', ''),
(34, 'test tkv', '', 'jualpulsa1.pdf', 1534514498, 0, 'tkv', 6, 0, 0, 0, 0, '0000-00-00', ''),
(69, 'test lagi update', '', '', 1534823924, 1535526045, 'monthly', 27, 0, 4, 2018, 0, '0000-00-00', ''),
(80, 'judul tester', '', '', 1535081667, 0, 'monthly', 32, 0, 9, 2018, 0, '0000-00-00', ''),
(87, 'test', '<p>test</p>', '', 1535168687, 0, 'networking', 27, 2, 8, 2018, 0, '0000-00-00', ''),
(91, '', '<p>loremipsum doloret sitamet</p>', '', 1535172050, 0, 'networking', 27, 2, 8, 2018, 0, '0000-00-00', ''),
(92, '', '<p>test saja</p>', '', 1535173142, 0, 'facilitation', 27, 2, 8, 2018, 0, '0000-00-00', ''),
(93, '', '<p>test</p>', '', 1535173188, 0, 'facilitation', 27, 2, 8, 2018, 0, '0000-00-00', ''),
(106, 'Lorem Ipsum', '<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s,</p>\r\n\r\n<p>when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', 1535894983, 1535895206, 'other', 10, 0, 0, 0, 0, '0000-00-00', ''),
(113, '', '<p>Attend Eid Lunch at KJRI</p>', '', 1536030263, 0, 'facilitation', 18, 3, 9, 2018, 0, '0000-00-00', ''),
(114, 'tesfery', '<p>feryyy</p>', '', 1536062931, 0, 'other', 18, 0, 0, 0, 0, '0000-00-00', ''),
(115, 'mantap', '<p>•ourism Minister launches new Incredible India website for deeper engagement with travellers: K J Alphons, Union Minister of State (I/C) for Tourism has launched the new Incredible India website which showcases India as a holistic destination, revolving around major experiences, such as, spirituality, heritage, adventure, culture, yoga, wellness and more..</p>\r\n\r\n<p>•The GDP in Delhi in terms of travel and tourism is set to experience double-digit growth over each of the next 10 years (10.8%), according to a recent report by World Travel & Tourism Council (WTTC).</p>\r\n\r\n<p>Yatra Online has signed a Memorandum of Understanding</p>', '', 1536062981, 0, 'other', 18, 0, 0, 0, 0, '0000-00-00', ''),
(116, '', '<p>Test Networkiing</p>', '', 1536271389, 1536274237, 'networking', 10, 1, 8, 2018, 0, '0000-00-00', ''),
(117, '', '<p>Test Updates lagi</p>', '', 1536275189, 1536275202, 'competitor_update', 10, 3, 9, 2018, 0, '0000-00-00', ''),
(118, '', '<p>Test link <a href="http://vitokemenpar.com">http://vitokemenpar.com</a> </p>', '', 1536376148, 1536391445, 'networking', 37, 3, 2, 2018, 0, '0000-00-00', ''),
(119, '', '', '/kcfinder/upload/files/big-logo.png', 1536379433, 1536379462, 'monthly', 37, 0, 8, 2018, 0, '0000-00-00', ''),
(124, 'test aja', '<p>test aja</p>', '', 1536850502, 0, 'news_update', 38, 0, 0, 0, 0, '0000-00-00', ''),
(129, '', '', '', 1536939787, 1536973854, 'monthly', 38, 0, 1, 2018, 0, '0000-00-00', ''),
(131, 'test 1', '', '', 1536974824, 0, 'activities', 38, 0, 0, 0, 0, '0000-00-00', ''),
(132, 'tambah judul', '', '', 1536974843, 0, 'activities', 38, 0, 0, 0, 0, '0000-00-00', ''),
(133, 'test', '<p>test content</p>', 'FireShot_Screen_Capture_007_-_Guru_Ahli_-__D__PROJECT_BIMBELONLINE_website-ga_dashboard2_html.png', 1536975816, 0, 'news_update', 38, 0, 0, 0, 0, '0000-00-00', ''),
(137, '', '', 'jualpulsa.pdf', 1536976340, 1536977453, 'monthly', 38, 0, 1, 2018, 0, '0000-00-00', ''),
(141, '', '', 'tutorial_dasar_laravel1.pdf', 1537012341, 0, 'monthly', 38, 0, 7, 2018, 0, '0000-00-00', ''),
(143, '', '', '1__20180731_VITO_Singapore_-_July_Fin.docx', 1537165211, 0, 'monthly', 6, 0, 7, 2018, 0, '0000-00-00', ''),
(144, '', '', '2__20180801_VITO_Malaysia_-_July_Fin.docx', 1537165260, 0, 'monthly', 8, 0, 7, 2018, 0, '0000-00-00', ''),
(145, '', '', '3__20180808_VITO_Sydney_-_July_updated.docx', 1537165305, 0, 'monthly', 9, 0, 7, 2018, 0, '0000-00-00', ''),
(146, '', '', '4__20180731_VITO_Melbourne_-_July.docx', 1537165386, 0, 'monthly', 10, 0, 7, 2018, 0, '0000-00-00', ''),
(147, '', '', '5__180731_VITO_Beijing_-_July.docx', 1537165417, 0, 'monthly', 11, 0, 7, 2018, 0, '0000-00-00', ''),
(148, '', '', '6__180731_VITO_Guangzhou_-_July.docx', 1537165461, 0, 'monthly', 36, 0, 7, 2018, 0, '0000-00-00', ''),
(149, '', '', '8__180731_VITO_Shangai_-_July.docx', 1537165561, 0, 'monthly', 13, 0, 7, 2018, 0, '0000-00-00', ''),
(150, '', '', '9__20180731_VITO_Busan-_July.docx', 1537165610, 0, 'monthly', 14, 0, 7, 2018, 0, '0000-00-00', ''),
(151, '', '', '11__20180731_VITO_Japan_-_July.docx', 1537165693, 0, 'monthly', 16, 0, 7, 2018, 0, '0000-00-00', ''),
(152, '', '', '12__20180731_VITO_New_Delhi_-_Juli.docx', 1537165754, 0, 'monthly', 17, 0, 7, 2018, 0, '0000-00-00', ''),
(153, '', '', '13__20180731_VITO_Mumbai_-_Juli.docx', 1537165814, 0, 'monthly', 18, 0, 7, 2018, 0, '0000-00-00', ''),
(154, '', '', '14__20180702_VITO_Saudi_Arabian_-_July.docx', 1537165856, 0, 'monthly', 19, 0, 7, 2018, 0, '0000-00-00', ''),
(155, '', '', '15__20180731_VITO_Middle_East_-_July.docx', 1537166018, 0, 'monthly', 20, 0, 7, 2018, 0, '0000-00-00', ''),
(156, '', '', '16__20180731_VITO_United_Kingdom_-_July.docx', 1537166051, 0, 'monthly', 21, 0, 7, 2018, 0, '0000-00-00', ''),
(157, '', '', '17__20180731_VITO_France_-_July.docx', 1537166097, 0, 'monthly', 22, 0, 7, 2018, 0, '0000-00-00', ''),
(158, '', '', '18__20180731_VITO_Ntherlands_-_July.docx', 1537166126, 0, 'monthly', 23, 0, 7, 2018, 0, '0000-00-00', ''),
(159, '', '', '19__20180701_VITO_Germany_-_July.docx', 1537166264, 0, 'monthly', 24, 0, 7, 2018, 0, '0000-00-00', ''),
(160, '', '', '20__20180731_VITO_Russia_-_July.docx', 1537166333, 0, 'monthly', 28, 0, 7, 2018, 0, '0000-00-00', ''),
(161, '', '', '23__20180810_EVITO_MONTHLY_REPORT_JULY_2018_v_2_0.docx', 1537166360, 0, 'monthly', 29, 0, 7, 2018, 0, '0000-00-00', ''),
(162, '', '', '21__180731_VITO_Cruise_-_July.pdf', 1537166722, 0, 'monthly', 30, 0, 7, 2018, 0, '0000-00-00', ''),
(163, '', '', '22__180803_VITO_Halal_-_July.pdf', 1537166754, 0, 'monthly', 31, 0, 7, 2018, 0, '0000-00-00', ''),
(164, '', '', '7__180731_VITO_Hong_Kong_-_July.docx', 1537167209, 0, 'monthly', 12, 0, 7, 2018, 0, '0000-00-00', ''),
(165, '', '', '10_ 20180807 VITO Seoul- July.docx', 1537167456, 0, 'monthly', 15, 0, 7, 2018, 0, '0000-00-00', ''),
(166, '', '<p>selain gemar melakukan sharing khususnya</p>\r\n\r\n<p>di</p>\r\n\r\n<p>bidang web d</p>\r\n\r\n<p>evelopment dan open source, lagi</p>', '', 1537184140, 1537299943, 'competitor_activity', 38, 2, 2, 2018, 0, '0000-00-00', ''),
(167, '', '<p>membuat satu aplikasi</p>\r\n\r\n<p>otomatis yang berfungsi untuk mencari infor</p>\r\n\r\n<p>masi sekaligus menyebarkanny</p>', '', 1537184264, 0, 'competitor_update', 38, 3, 9, 2018, 0, '0000-00-00', ''),
(168, '', '<p>Untuk info</p>\r\n\r\n<p>lebih lanjut mengenai penulis anda dapat mengunjungi websiteny</p>\r\n\r\n<p>a langsung</p>', '', 1537184492, 0, 'facilitation', 38, 3, 9, 2018, 0, '0000-00-00', ''),
(169, '', '<ul>\r\n <li>Singapore will have a new passenger terminal at the Seletar Airport. It will be operational at by end of 2018. The airport will only be two-stories high, with 10,000 sqm, will be able to handle 700,000 passenger movements a year.</li>\r\n <li>The reoccurance of Mt Agung’s eruption was captured in the local news. However, not much coverage was reported. However, there are some enquiries from the travel trade and VITO Singapore shared the news from Tourism Bali.</li>\r\n</ul>', '', 1537253334, 1537253635, 'competitor_update', 6, 3, 9, 2018, 0, '0000-00-00', ''),
(170, '', '<ul>\r\n <li> <strong>THAILAND – </strong>worked together with Thai Airways for a Singapore Agents Educational Trip to Chiang Mai and Lamphun from2 to 6 July 2018</li>\r\n <li><strong>THAILAND</strong> - is targeting the LGBT market. They invited travel buyers and media from all around the world to the LGBT + Travel Symposium for a two-day networking and educational event</li>\r\n <li> <strong>MALAYSIA – </strong>appointed their Minister and Deputy Minister for the Ministry of Tourism, Arts and Culture. This will in turn start the activities of Tourism Malaysia in Singapore.</li>\r\n</ul>', '', 1537253370, 1537253667, 'competitor_activity', 6, 3, 9, 2018, 0, '0000-00-00', ''),
(171, '', '<ul>\r\n <li>Meeting with GEM Vacation and Travel. They have enlisted our support and assistance for their program from a Philippines Association of Universities. They are organizing a convention in Batam and requested for MoT’s support</li>\r\n <li>Meeting with Ms Amanda from Transperfect. She has shared and proposed on a global marketing for Indonesia Tourism for Singapore. Currently the company is working with Tourism Australia and Singapore Tourism Board</li>\r\n <li>Pak Sulaiman met Pak Indroyono, special advisor to the Minister of Tourism, upon arrival at Changi Airport. They attended the launching of Dream Cruise to Bintan</li>\r\n</ul>', '', 1537253409, 0, 'networking', 6, 1, 7, 2018, 0, '0000-00-00', ''),
(172, '', '<ul>\r\n <li>Setting up meetings with a few Airlines (Jetstar, Scoot, etc) in Singapore for the connectivity team from Mot. The meetings will be regards to connectivity development</li>\r\n <li>Connected a media agency with Mot’s Multimedia Communication Division for concerns over some media placements. Suggested for MoT to share which agency the PCO is working with, in order for VITO Singapore to discuss further with the company</li>\r\n <li>Meeting with CAG team, TELIN &Pak Sigit from the Indonesian embassy to further discuss on coordinating and support for the CAG in-airport event from 31st Aug – 5th Oct</li>\r\n <li>Meeting with AIM Co and Indonesian embassy to discuss on MoT’s support for the Wonderful Indonesia booth at the ‘Rising Fashion’ event at Paragon on 8th – 19th August.</li>\r\n</ul>', '', 1537253458, 1537253624, 'facilitation', 6, 3, 9, 2018, 0, '0000-00-00', ''),
(173, '', '<p>test lagi di update</p>', '', 1537271595, 1537275719, 'competitor_update', 38, 1, 5, 2018, 0, '0000-00-00', ''),
(174, '', '<p>Meeting TKV</p>', '', 1537774228, 0, 'competitor_update', 18, 4, 9, 2018, 0, '0000-00-00', ''),
(175, '', '<p>meeting TKV lagi</p>', '', 1537774258, 0, 'competitor_activity', 18, 4, 9, 2018, 0, '0000-00-00', ''),
(176, '', '<p>a) Recently ,the news about Indonesia are quite often. There are information about sports like Golf master competition, sustained attention on Lombok about after-earthquake situation and Chinese investment in e-commerce market of Indonesia.</p>\r\n\r\n<p>b) Due to the increasing of helopyra cases, in the earthquake areas of Lombok declared a state of emergency</p>\r\n\r\n<p>c) Chinese tourists use Alipay and WeChat to pay RMB directly to merchants in Bali Island  </p>\r\n\r\n<p><strong>MoT</strong><strong> Actions: </strong>And at present, the concern for Lombok or the attention about investment, they are all good for us to be famous and shorten the distance between Chinese and Indonesia.</p>', '', 1537842009, 0, 'competitor_update', 33, 3, 9, 2018, 0, '0000-00-00', ''),
(177, '', '<p>a) Recently ,the news about Indonesia are quite often. There are information about sports like Golf master competition, sustained attention on Lombok about after-earthquake situation and Chinese investment in e-commerce market of Indonesia.</p>\r\n\r\n<p>b )Due to the increasing of helopyra cases, in the earthquake areas of Lombok declared a state of emergency</p>\r\n\r\n<p>c) Chinese tourists use Alipay and WeChat to pay RMB directly to merchants in Bali Island  </p>\r\n\r\n<p><strong>MoT</strong><strong> Actions: </strong>And at present, the concern for Lombok or the attention about investment, they are all good for us to be famous and shorten the distance between Chinese and Indonesia.</p>', '', 1537842499, 0, 'competitor_update', 11, 3, 9, 2018, 0, '0000-00-00', ''),
(178, '', '<p>a. <strong>Japan: </strong>After talking with several wholesale, they reflected generally that the booking orders to Japan during Golden Week is the best. After search the information about “travel in Japan during Golden Week”, it appears information involves shopping, food, culture, scenery, attractions, hotels etc. That means, Japan are very mature and popular among Chinese market.</p>\r\n\r\n<p>b. <strong>Malaysia</strong> and Chinese company has jointly launched a variety show, with the integration of famous online stars from 2 countries. Through this program, the Chinese consumers can be led to feel the infinite scenery of Malaysia.</p>\r\n\r\n<p>c. <strong>Thailand: </strong>2018 is the 50th anniversary of the founding of the Tourist Association of Thailand. TAT held roadshows on September 17 (Tianjin), September 18 (Qingdao), September 20 (Hefei ) and September 21 (Nanjing) to promoting tourism resources and products and attracting more high-income Chinese tourists.</p>\r\n\r\n<p><strong>MoT</strong><strong> Actions</strong>:</p>\r\n\r\n<p>a. Even with the very unhappy history, Chinese are still with high interests in traveling to Japan. The most important reason is that, tourists are all feeling comfortable, warm and safety in there.</p>\r\n\r\n<p>b. Movies and variety shows are great tools to promote destinations.A lot of customers told me that, the first time they knew Manado is because a very famous Chinese movie call “The Ex-file?The Return Of The Exes”.</p>\r\n\r\n<p> </p>', '', 1537842542, 0, 'competitor_activity', 11, 3, 9, 2018, 0, '0000-00-00', ''),
(179, '', '<p>Spring tour: This company is the most high quality wholesale in China. Started from low-price products. After several years operating, they achieved a successful transformation from low price products to high-end service provider. They are now focusing on VIP designed tours, family tours, and high-quality tour. The star products are: -Thailand Bangkok + Pattaya, 6days, 15,800 rmb/ person. -Da Nang, Vietnam, 6days, 15,800 rmb/ person.-Sri Lanka, 8days 6nights, 11,800rmb/ person.-Phu Quoc, Vietnam, 6days, 13,899rmb/ person. They are now planing to explore the possibility of Bali island as a high-end quality destination, and will investigate Bali after this Golden Week.</p>\r\n\r\n<p><strong>MoT</strong><strong> Actions: </strong>This wholesale has a very good reputation among both tourism industry and customers. If this company would like to promote a high-end product of Bali island, it will be very helpful for purifying the competitive environment of price war in current Chinese market. In the end, it is valuable for MoT to better explore the Chinese market in the future. I suggest that, from the starting of product design, MoT provides necessary guidance, policies or other services they need to ensure both of us will meet the goals.</p>', '', 1537842572, 0, 'networking', 11, 3, 9, 2018, 0, '0000-00-00', ''),
(182, '', '<p>Citilink Indonesia held a press conference in Jakarta, capital of Indonesia, announcing the official entry into the Chinese market and the launch of regular direct flights to key second and third tier cities in China. They are also planning to open up regular direct flights in key second and third tier cities in China in the future</p>\r\n\r\n<p><strong>MoT</strong> <strong>Actions: </strong>The increase of low-cost airlines will increase the number of Chinese tourists traveling to Indonesia. In the future, MOT can consider promoting the cooperation and development between domestic low-cost airlines in Indonesia and China and increasing the direct flights from China to Indonesia</p>', '', 1537843637, 0, 'competitor_update', 13, 2, 9, 2018, 0, '0000-00-00', ''),
(183, '', '<p>a.<strong>Malaysia </strong>-  On 10 Sep, 2018, Malaysia tourism board together with 11 representatives from Malaysia&#39;s sarawak tourism industry, successfully held a Malaysia (Sarawak) travel sharing session at the Wanda mandarin hotel in Nanning, Guangxi. Ms he suyin, director of south China office of Malaysia tourism bureau, Mr Nathan lee, assistant minister of tourism, arts and culture of sarawak, and Ms Lin huichao, deputy director of nanning tourism development committee, were present at the sharing session to share Malaysia sarawak&#39;s rich tourism resources with all guests and media.</p>\r\n\r\n<p>b.<strong>Myanmar</strong> - Chinese overseas net reported on September 12?that on September 11, the ministry of labor and immigration of Myanmar, the ministry of immigration and immigration, the Yangon international airport issued a notice, any passenger who takes the plane to enter Myanmar from Naypyitaw, Yangon, Mandalay international airport, from September 12 will not need to fill in the ARRIVAL CARD and DEPARTURE CARD. The notice said that in order to facilitate the entry of international tourists into Myanmar and improve the service level of tourism in Myanmar, neither Burmese nor foreigners need to fill in the ARRIVAL CARD and DEPARTURE CARD. Airlines are also not required to issue immigration forms to visitors.</p>\r\n\r\n<p><strong>MoT Actions:</strong> Ten new Bali plan recognition in China currently is not equal to Bali, according to a new data from Tuniu, China&#39;s tier 2 and tier 3 cities of consumption level and the number of outbound tourism is has a tendency to rise, so we can select two lines and three cities in China, hold and share similar activities, not only invited the media, at the same time, also can invite KOL, it will improve the potential of Chinese tourists know other destinations in addition to Bali, to attract Chinese tourists traveling to Indonesia.</p>', '', 1537843681, 0, 'competitor_activity', 13, 2, 9, 2018, 0, '0000-00-00', ''),
(184, '', '<p>Putike information technology co. LTD</p>\r\n\r\n<p>1.VITO Shanghai meet with Mr Blair which belongs Putike’ CEO, communicated with Ms zhu of Putike&#39;s sales director about online program publicity, and learned about the marketing strategy of the program, which included promotion and KPI indicators for the online destinations of Lombok and Komodo. There are also some Suggestions on VITO Shanghai for the project of Putike, and they will make appropriate adjustments to the plan, waiting for them to complete the plan and send it to MOT for review .</p>\r\n\r\n<p>2.Invite the travel agency of Nanjing and Shanghai to explain the event related matters and specific time and other details. Help PCO to follow up the campaign publicity of nanjing and Shanghai, communicate the cost with PCO, synchronize the information to media (Oriental guardian), and follow up related matters.</p>\r\n\r\n<p>3.Anhui province foreign affairs office of the government plan in October or November to organize a delegation to Indonesia government, with the increasing number of outbound tourism in Anhui province, Anhui provincial government of Anhui province in overseas visitors travel security issues of concern is also growing, so I hope can take this opportunity in Jakarta can hold a meeting with tourism officials, in-depth on tourism destination Indonesia security communication and exchange of views   </p>\r\n\r\n<p><strong>MoT Actions: </strong>Putike information technology co. LTD is a located in China&#39;s tourism with Mid-end and high-end consumption levels, which has been spread niche destination travel, Putike average consumption level of potential tourists will be far more than other OTAs, to enhance the comfort and the destination of tourists word-of-mouth, The MOT should target ten new Bali destinations to Mid-end and high-end products, therefore Putike is a very appropriate partner. VITO Shanghai will continue to follow up the progress of Putike&#39;s scheme and timely synchronize the information to MOT .</p>', '', 1537843715, 0, 'networking', 13, 2, 9, 2018, 0, '0000-00-00', ''),
(185, '', '<p>1.Participating in the 2018 restaurant selection activity of Shanghai jiao tong broadcasting FM105.7, the organizer also added the lottery stage of Manado double tour. According to statistics, Indonesia was listed in the top ten favorite food tourist destinations of Chinese people and awarded the trophy to VITO Shanghai .</p>\r\n\r\n<p>2.Invited to attend the 73rd anniversary dinner of the republic of Indonesia hosted by the Indonesian consul general in Shanghai.</p>\r\n\r\n<p><strong>MoT Actions: </strong>FM105.7 invited VITO Shanghai to attend the activity which in the Shanghai food selection, and Indonesia became one of the top ten most popular food destinations. Chinese tourists are still concerned about what they eat when they go abroad, so MOT can add the introduction of Indonesian special food in future activities to attract Chinese potential tourists to visit Indonesia. I believe that the beautiful scenery and delicious food will greatly attract Chinese tourists</p>', 'PHOTO-2018-09-07-19-40-33.jpg', 1537843763, 0, 'facilitation', 13, 2, 9, 2018, 0, '0000-00-00', ''),
(186, '', '<p>test aje</p>', '', 1537857664, 0, 'networking', 38, 2, 12, 2018, 0, '0000-00-00', ''),
(187, '', '<p>Reported the sales mission in Nanchang, Jiangxi Province, organized by MoT.</p>\r\n\r\n<p>http://finance.huanqiu.com/cjrd/2018-09/13071822.html</p>\r\n\r\n<p><strong>MoT</strong><strong> Actions: </strong>According to meetings with wholesales in Beijing, they all reflected that the market performance of Bali island in this Golden Week is not that satisfying. Influenced by earthquakes and accident in Phuket island, Southeast Asia tourism market shows badly during this period. It is very necessary to release some positive signals to the market, for example, inviting journalists or KOL to Bali and other destinations, or keep releasing positive articles through Chinese medias</p>', '', 1539146552, 0, 'facilitation', 11, 3, 9, 2018, 0, '0000-00-00', ''),
(188, '', '', '5__180901_VITO_Beijing_-_August.pdf', 1539315602, 0, 'monthly', 11, 0, 8, 2018, 0, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `fax` int(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `flag` varchar(50) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `position`, `fax`, `address`, `photo`, `flag`, `banner`, `user_id`) VALUES
(1, 'Country manager', 2147483647, 'alamat palsu', '05-thumbnail.jpg', 'Malaysia', '02-full2.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `regional`
--

CREATE TABLE IF NOT EXISTS `regional` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` int(11) NOT NULL,
  `address` varchar(200) NOT NULL,
  `country` varchar(50) NOT NULL,
  `u_positon` varchar(20) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `fax`, `address`, `country`, `u_positon`, `photo`, `banner`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1536534135, 1, 'Admin', 'istrator', 'ADMIN', '0', 0, '', '', '', '', ''),
(6, '::1', 'ane@gmail.com', '$2y$08$qonhZw18vzMwu23CenhcEu9tBbNOlM.hwG8EjzP5uyYqOybrfxBLu', NULL, 'shahirah-vito@hotmail.com', NULL, 'Uczfr-vCs475c6Ng.LrW0.4b11fe2cc4fa970925', 1533902102, 'LDCoPxXpiGLGE8o.Flqi/u', 1533771975, 1537357179, 1, 'Sulaiman', 'Shehdek', 'test company', '+65-6298-8277', 65, '390 Victoria Street, #03-44 Village Hotel Bugis, SINGAPORE, 188061', 'Singapore', '', '13529145_10153710865729142_505406365818198557_n.jpg', '13529145_10153710865729142_505406365818198557_n.jpg'),
(8, '202.62.16.227', 'vito.my@aviareps.com', '$2y$08$/i0Xn2lj7YNy2Ir/bRUBt.MAluateEo1gKYfhWioV9A9RxeldMImW', NULL, 'vito.my@aviareps.com', NULL, NULL, NULL, 'cP0tm3gu8hbaAtgy4zt7cO', 1534471427, 1537165243, 1, 'Kelvin', 'Ong', 'Country Manager', '+603 2148 8033', 603, 'C/o Aviareps Malaysia, Suite 2701, Level 27 Central Plaza 34 \r\nJalan Sultan Ismail, 50250, Kuala Lumpur, Malaysia', 'Malaysia', '', 'wonderful_Indonesia.png', 'wonderful_Indonesia.png'),
(9, '202.62.16.126', 'mtulevski@apmd.com.au', '$2y$08$Yy4swsjXXqp3SMuVyHp55uOiLoPSVqk.1EMVlnJDVQYlZXjA6wIVC', NULL, 'mtulevski@apmd.com.au', NULL, NULL, NULL, 'W.cypwl6Wu39tPq4mBgWbO', 1534549572, 1537165282, 1, 'Miriam', 'Tulevski', '', '+61-41-9-425455', 0, 'PO-Box 7080 Alexandria, NSW2015, AUSTRALIA', 'Australia (Sydney)', '', '10608268_10152748068466532_6267628505889710225_o3.jpg', 'Logo_Baru_WI5.png'),
(10, '202.62.16.126', 'emil.ridwan@vitomelbourne.com.au', '$2y$08$trF4WEUBt7FUMzU1D8fIKO1wF2P4s833zksd3GgrcSB3l4C1evXGG', NULL, 'emil.ridwan@vitomelbourne.com.au', NULL, NULL, NULL, 'pmmpQK0e3vuB4Bwn7SZTn.', 1534565612, 1539312142, 1, 'Emil Hardy', 'Ridwan', 'Country Manager', '+61-3-9005 6634', 61, 'Suite 743, 1 Queens Road  Melbourne, VIC 3004, AUSTRALIA', 'Australia (Melbourne)', '', 'wonderful_Indonesia1.png', 'wonderful_Indonesia1.png'),
(11, '202.62.16.126', 'vitobeijing@163.com', '$2y$08$YfzAtzjkoYaIpDJpYYhiR.PGpPF1slKIO4kR.NnUIEhgUifh.wzRG', NULL, 'vitobeijing@163.com', NULL, NULL, NULL, 'pjrybNDxZ9tgq7xtSPIL6.', 1534567235, 1539659314, 1, 'Xiaofei Wang', 'Sophie', 'Country Manager', '+86-130-5110-8633', 86, '16/F China Youth Plaza, No. 19, North Street,\r\nEast 3rd Ring Road, Chaoyang District, Beijing, P.R. China', 'China (Beijing)', '', 'wonderful_Indonesia3.png', 'wonderful_Indonesia3.png'),
(12, '103.235.35.105', 'ricky@rickytse.com', '$2y$08$ZtDmUijYeLAzfDaFpUiJb.UjqA15IwKPjO5jU/sWnNyIJ2i2yuv3C', NULL, 'ricky@rickytse.com', NULL, NULL, NULL, '9elM2k26uMJi/izBRWDa7O', 1534731200, 1537167176, 1, 'Ricky', 'Tse', '', '+852-2793-9998', 852, 'Unit D2, 16/F., Gemstar Tower, 23 Man Lok Street, Hung Hom, Kowloon,Hong Kong, S.A.R. of P.R. China', 'China (Hongkong - Macau)', '', 'wonderful_Indonesia4.png', 'wonderful_Indonesia4.png'),
(13, '103.235.35.105', 'vitoshanghai@163.com', '$2y$08$GzyKeekWS/AVOTutavQniONyI/aTtDI0S7AaWpaLmRZcxqx7uM0Wy', NULL, 'vitoshanghai@163.com', NULL, NULL, NULL, NULL, 1534731310, 1539308311, 1, 'Tang', 'Hongfei', '', '+86-186-5167-0924', 86, 'Gonghe international Plaza, B 815, No. 3737 Gonghexin Road, Jingan District, Shanghai, P.R. China', 'China (Shanghai)', '', 'wonderful_Indonesia5.png', 'wonderful_Indonesia5.png'),
(14, '103.235.35.105', 'ksi@bufs.ac.kr', '$2y$08$fezQShV6eieaj7ggVRcsfuWyFSwANWVsptMUI0JfjM8v14KeH7Ch6', NULL, 'ksi@bufs.ac.kr', NULL, NULL, NULL, NULL, 1534731449, 1537165577, 1, 'Kim', 'Soo Il', '', '+82-51-612-0041', 82, '4th Fl. Busan Indonesia Center, No.1900, Geumgog-dong, Bug-gu, Busan, Republic of Korea', 'South Korea (Busan)', '', 'wonderful_Indonesia6.png', 'wonderful_Indonesia6.png'),
(15, '103.235.35.105', 'daisyparkkorea@gmail.com', '$2y$08$duuZL6JW09JhQUEQHhahdetC95JCCaykOttDLRPyF6lw3s0fNSyjy', NULL, 'daisyparkkorea@gmail.com', NULL, NULL, NULL, 'KJCh2x8gzgS9sqs1DNVo5u', 1534731623, 1537167437, 1, 'Daisy', 'Park', '', '+82-70-7501-5112', 82, '7 Toegye-ro, 31-gil, Junggu, Seoul, Republic of Korea', 'South Korea (Seoul)', '', '18301721_1395379770541891_3704825386778809983_n1.jpg', 'Logo_Baru_WI4.png'),
(16, '103.235.35.105', 'naomi@vmc-j.net', '$2y$08$PZz3vhBR2SLuua3..yI2WORHL7aLl5dK/bQNik2zpci9dN5y7mRf2', NULL, 'naomi@vmc-j.net', NULL, NULL, NULL, NULL, 1534733246, 1537165658, 1, 'Tadahiko', 'Narita', '', '+81-3-5363-0158', 81, 'Tomii Bldg. 2Fl., 8-23 Sumiyoshi-cho, Shinjuku-ku, Tokyo 162-0065, Japan', 'Japan', '', 'wonderful_Indonesia7.png', 'wonderful_Indonesia7.png'),
(17, '103.235.35.105', 'sondhi@omtourism.com', '$2y$08$jSvRh2yDRXBP0eIfdw6sXegsPSC1U5AFW3nufviiOXkSSPCWuUdIe', NULL, 'sondhi@omtourism.com', NULL, NULL, NULL, NULL, 1534733413, 1537165705, 1, 'Sanjay', 'Sondhi', '', '+91-11-4950-5000', 91, 'B-31/A, first floor, Kalkaji, New Delhi - 110019, India', 'India (New Delhi)', '', 'wonderful_Indonesia8.png', 'wonderful_Indonesia8.png'),
(18, '103.235.35.105', 'indonesia@vitomumbai.com', '$2y$08$13TY5ZBH23fCyoJhydsNFukti3aq27QXtCSCNA9QFrg9G5.XHZANu', NULL, 'indonesia@vitomumbai.com', NULL, NULL, NULL, '63uvtngI1W0X1F5VTwnMou', 1534733552, 1539248354, 1, 'Shelly', 'Chandhok', '', '+91-22-2888-4649', 91, '605’B’ Blue Diamond, Chincholi Link Road, Malad West, Mumbai 400064, India', 'India (Mumbai)', '', 'Logo_Baru_WI.png', 'Logo_Baru_WI1.png'),
(19, '103.235.35.105', 'vitosaudiarabia@hotmail.com', '$2y$08$yu3xbbcHJeJz.VBoNgxfGOz3AWDVkUPGp.funI.dLfMBbzyqX4Gwa', NULL, 'vitosaudiarabia@hotmail.com', NULL, NULL, NULL, NULL, 1534733694, 1537165840, 1, 'Mostafa', 'El Enany', '', '+96-65-4200-6375', 96, 'Al-Eskan Buildings, Building #3 Block 4 12th floor Door #3123 (M. Iiyaz), Jeddah, Kingdom of Saudi Arabia', 'Saudi Arabia', '', 'wonderful_Indonesia10.png', 'wonderful_Indonesia10.png'),
(20, '103.235.35.105', 'nouraridi.t@gmail.com', '$2y$08$7EEDNeIaK3OOPsKh2i.KLefGkomvppTtNnK7.KOpDmXevfmi0atwm', NULL, 'nouraridi.t@gmail.com', NULL, NULL, NULL, NULL, 1534733809, 1537165869, 1, 'Nour', 'Aridi', '', '+971-52-9609-568', 971, 'Building CNN 2nd floor, Dubai Media City, PO Box 502855, United Arab Emirates', 'Middle East', '', 'wonderful_Indonesia11.png', 'wonderful_Indonesia11.png'),
(21, '103.235.35.105', 'richard@humewhitehead.co.uk', '$2y$08$S6rxXOjavOBhERCDe7/PO.uygZrz5xLpZG8s6CNOkdUoyd0WtBjrC', NULL, 'richard@humewhitehead.co.uk', NULL, NULL, NULL, NULL, 1534733882, 1537166031, 1, 'Richard', 'Hume', '', '+44-203-375-4050', 44, '4th Floor, 45 – 51 Whitfield Street, London W1T 4HD, United Kingdom', 'United Kingdom', '', 'wonderful_Indonesia12.png', 'wonderful_Indonesia12.png'),
(22, '103.235.35.105', 'eka@indonesia-tourisme.fr', '$2y$08$GmRulQ5VXYsjzOyH8Lg8JeJPlsNWmm6bMcKxWCdn.Nhi7k0y9/OxC', NULL, 'eka@indonesia-tourisme.fr', NULL, NULL, NULL, NULL, 1534733979, 1537166081, 1, 'Ekawati', 'Moncarre', '', '+33-97-254-9382', 33, '22 rue Laplace 75005 Paris, France', 'France', '', 'wonderful_Indonesia13.png', 'wonderful_Indonesia13.png'),
(23, '103.235.35.105', 'susan@tourismmarketingconcepts.com', '$2y$08$RGBlD10U3eOSlAjThvZN3Ou5HKjHi.BULEPROTioTZ1OBS1xUoN..', NULL, 'susan@tourismmarketingconcepts.com', NULL, NULL, NULL, NULL, 1534734071, 1537166108, 1, 'Susan', 'van Egmond', '', '+31-20-670-5211', 31, 'Nieuwendammerkade 26G, 1022 AB Amsterdam, The Netherlands', 'The Netherlands', '', 'wonderful_Indonesia14.png', 'wonderful_Indonesia14.png'),
(24, '103.235.35.105', 'hohn@gce-agency.com', '$2y$08$g3uxyR6GkVg7hNkqneBZw.m8KWxBgAcqww.lpPgUp/RQ2JxhwK4OS', NULL, 'hohn@gce-agency.com', NULL, NULL, NULL, NULL, 1534734287, 1537166243, 1, 'Dorothea', 'Hohn', '', '+49-69-17-53-71-038', 49, 'Hanauer Landstr. 184, 60314 Frankfurt, Germany', 'Germany', '', 'wonderful_Indonesia15.png', 'wonderful_Indonesia15.png'),
(27, '103.235.35.105', 'fery.cokroaminoto@gmail.com', '$2y$08$Y2wI2Ulhe5Cjia2O1xCH8uMOoNBoGywts5rVxlriezX551EDCpinG', NULL, 'fery.cokroaminoto@gmail.com', NULL, NULL, NULL, 'IgLNsFf36wCPNuAffOxhTe', 1534738985, 1539314275, 1, 'Fery', 'Cokroaminoto', '', '+6281210897381', 2147483647, 'Gedung Sapta Pesona, Kementerian Pariwisata Republik Indonesia', 'Indonesia', '', '', ''),
(28, '103.235.35.105', 'kiseleva@effixcom.ru', '$2y$08$Td./maK1U4KRLuTmpdFLU.qe95NH70j.kBVLxrSzXHyL7Ey9ua1K2', NULL, 'kiseleva@effixcom.ru', NULL, NULL, NULL, NULL, 1534739634, 1537166318, 1, 'Anna', 'Kisileva', '', '+7-985-233-80-34', 7, 'ul. Molodogvardeyskaya, d. 4/1, Office 7, Moscow 121467, Russian Federation', 'Russia', '', 'wonderful_Indonesia16.png', 'wonderful_Indonesia16.png'),
(29, '103.235.35.105', 'siam_nugraha@yahoo.com.au', '$2y$08$Gbxn9j5KxprO6kftxtMf..Od8vqjT/VJCw8CbKCQtj4E1rkbOlfcq', NULL, 'siam_nugraha@yahoo.com.au', NULL, NULL, NULL, NULL, 1534739702, 1537166446, 1, 'Siam', 'Nugraha', '', '+61-413-687-800', 61, 'Level 27, 101 Collins Street, Melbourne VIC 3000, Australia', 'Australia (E-VITO)', '', 'wonderful_Indonesia17.png', 'wonderful_Indonesia17.png'),
(30, '103.235.35.105', 'h.lamy@cruise-management.com', '$2y$08$UatztiXxNhn95YGPv/X46edMu9VYb/4zGex3GcMxZkZ7x/1qNyT3K', NULL, 'h.lamy@cruise-management.com', NULL, NULL, NULL, NULL, 1534739850, 1537166697, 1, 'Hugues', 'Lamy', '', '+33-607-932-875', 33, '2 rue du Gabian, P.O. Box 603, 98000, Monaco', 'Cruise Tourism Officer', '', 'wonderful_Indonesia18.png', 'wonderful_Indonesia18.png'),
(31, '103.235.35.105', 'rafiuddin.shikoh@dinarstandard.com', '$2y$08$PopZkb07Tw9tI9IjsKG9guhlf3/MJjNLLaWsG41bT.nVezr.tKG.2', NULL, 'rafiuddin.shikoh@dinarstandard.com', NULL, NULL, NULL, NULL, 1534739931, 1537166737, 1, 'Rafi-uddin', 'Shikoh', '', '+971-556-127-219', 971, 'DAFZA, 8WB, Office 225, P.O. Box 54914, Dubai, United Arab Emirates', 'Halal Tourism Officer', '', 'wonderful_Indonesia19.png', 'wonderful_Indonesia19.png'),
(32, '103.235.35.105', 'reno@indonesia.travel', '$2y$08$nR2ZcdUFmJjmQzE0Nr9ecOfsaetcpiBh/57wIVxFhftOJwx9Wjyxy', NULL, 'reno@indonesia.travel', NULL, NULL, NULL, 'As7Jc.QEG1qK503txLxm/O', 1534745303, 1536692150, 1, 'Reno', 'Raditya', '', '+62 817 796375', 62, 'Gedung Sapta Pesona, Kementerian Pariwisata Republik Indonesia', 'Indonesia', '', '', ''),
(33, '103.235.35.105', 'narendra@indonesia.travel', '$2y$08$m4.U0GnB3P.Qjb0OBRhEXeNpR7SM6wxf/8QgNyMC4zFW2.s6Dm8aa', NULL, 'narendra@indonesia.travel', NULL, NULL, NULL, 'rNbseOdlJ/40vcI.TpwfcO', 1534745394, 1539659340, 1, 'Agung', 'Narendra', '', '+62 817 796375', 62, 'Gedung Sapta Pesona, Kementerian Pariwisata Republik Indonesia', 'Indonesia', '', '', ''),
(34, '103.235.35.105', 'dory@indonesia.travel', '$2y$08$fPsxr1Z0Wft/sjO3QHyNhOn086h.Lwk33RMKeskHx/7Np2tJ9tGTm', NULL, 'dory@indonesia.travel', NULL, NULL, NULL, '4GngKA0Zg0inmAGyVMSVH.', 1534745484, 1539315981, 1, 'Dory', 'Meisandy', '', '+62 852 16588388', 62, 'Gedung Sapta Pesona, Kementerian Pariwisata Republic Indonesia', 'Indonesia', '', '', ''),
(35, '103.235.35.105', 'renata@indonesia.travel', '$2y$08$oh70zUa6DZB6zd7L3bW0MOHGg6lNHTrg40hf08if1.RALzUzzVK.i', NULL, 'renata.permadi@indonesia.travel', NULL, NULL, NULL, NULL, 1534745575, 1539314820, 1, 'Renata', 'Permadi', '', '+62 812 94982969', 62, 'Gedung Sapta Pesona, Kementerian Pariwisata Republik Indonesia', 'Indonesia', '', '', ''),
(36, '103.235.35.105', 'huangjiayi@tlmchina.com', '$2y$08$ZuWHkXiatlEPD7AIaG5HS.7rzqFW5jwRviAJGVGQChMYKfB3cRaue', NULL, 'huangjiayi@tlmchina.com', NULL, NULL, NULL, NULL, 1535768578, 1537165443, 1, 'Janet', 'Huang', '', '+86-20-8760-9545', 86, 'Room 2412, South Tower, Guangzhou World Trade Centre, Huan Shi Dong Road, Guangzhou 510095, P.R. CHINA', 'China (Guangzhou)', '', 'wonderful_Indonesia20.png', 'wonderful_Indonesia20.png'),
(37, '103.235.35.105', 'admin', '$2y$08$fABFg8v8Fpu46hIKsMnIsOkuj1nuuxM2a5gyEKF.3VKugiUbmkUHS', NULL, 'hallo.anewahyudi@gmail.com', NULL, NULL, NULL, NULL, 1535796541, 1536714405, 1, 'wahyudi', 'wahyu', '', '09888937999', 97997777, 'alamat palsu', 'Indonesia', '', '', ''),
(38, '202.62.19.173', 'izi@gmail.com', '$2y$08$MzVwJNUc3Mxhz9coD7AvUuH53X50lwYpGsHydnMvc5ugix6jLZJla', NULL, 'izi@gmail.com', NULL, NULL, NULL, NULL, 1536532828, 1539766406, 1, 'alfa', 'izi', 'some company', '09888937999', 8889903, 'alamat sementara', 'Indonesia', '', '', ''),
(39, '202.62.17.124', 'alfatih@gmail.com', '$2y$08$rpn5YZCGsY/q3p07ltZMUO6txIIOTj2m22bFVubtcegPMie8KOOnS', NULL, 'alfatih@gmail.com', NULL, NULL, NULL, NULL, 1536632096, 1536683801, 1, 'fatih', 'alfa', '', '09888937999', 98790077, '', 'Indonesia', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(117, 1, 1),
(99, 6, 4),
(100, 8, 4),
(73, 9, 4),
(74, 10, 4),
(75, 11, 4),
(77, 12, 4),
(76, 13, 4),
(78, 14, 4),
(79, 15, 4),
(81, 16, 4),
(83, 17, 4),
(85, 18, 4),
(87, 19, 4),
(101, 20, 4),
(102, 21, 4),
(104, 22, 4),
(103, 23, 4),
(105, 24, 4),
(98, 27, 1),
(106, 28, 4),
(107, 29, 4),
(108, 30, 4),
(109, 31, 4),
(110, 32, 3),
(111, 33, 3),
(112, 34, 3),
(113, 35, 3),
(114, 36, 4),
(115, 37, 1),
(116, 38, 5),
(119, 39, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ev`
--
ALTER TABLE `ev`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ev_b1`
--
ALTER TABLE `ev_b1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ev_b2`
--
ALTER TABLE `ev_b2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ev_b3`
--
ALTER TABLE `ev_b3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ev_c`
--
ALTER TABLE `ev_c`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ev_group`
--
ALTER TABLE `ev_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ev_karakter`
--
ALTER TABLE `ev_karakter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_builder`
--
ALTER TABLE `form_builder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gt_evaluation`
--
ALTER TABLE `gt_evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regional`
--
ALTER TABLE `regional`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `ev`
--
ALTER TABLE `ev`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `ev_b1`
--
ALTER TABLE `ev_b1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ev_b2`
--
ALTER TABLE `ev_b2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ev_b3`
--
ALTER TABLE `ev_b3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ev_c`
--
ALTER TABLE `ev_c`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ev_group`
--
ALTER TABLE `ev_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ev_karakter`
--
ALTER TABLE `ev_karakter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `form_builder`
--
ALTER TABLE `form_builder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gt_evaluation`
--
ALTER TABLE `gt_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `regional`
--
ALTER TABLE `regional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=120;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
