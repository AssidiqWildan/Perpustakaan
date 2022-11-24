-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2020 at 07:09 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id` int(5) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `u` varchar(15) NOT NULL,
  `p` varchar(15) NOT NULL,
  `level` enum('1','2','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `u`, `p`, `level`) VALUES
(2, '0', 'admin', 'admin', '1'),
(3, 'jajang', 'admin1', 'jangkung', '2'),
(4, 'uu', 'ase', '123', '2'),
(5, 'hasan', 'hasan', '123456', '1');

-- --------------------------------------------------------

--
-- Table structure for table `r_config`
--

CREATE TABLE `r_config` (
  `id` int(1) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `pimpinan` varchar(100) NOT NULL,
  `pimpinan_nip` varchar(100) NOT NULL,
  `petugas` varchar(100) NOT NULL,
  `petugas_nip` varchar(100) NOT NULL,
  `profil` longtext NOT NULL,
  `denda` int(9) NOT NULL,
  `maks_buku` int(2) NOT NULL,
  `maks_hari` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_config`
--

INSERT INTO `r_config` (`id`, `nama`, `alamat`, `logo`, `pimpinan`, `pimpinan_nip`, `petugas`, `petugas_nip`, `profil`, `denda`, `maks_buku`, `maks_hari`) VALUES
(0, 'Universitas Faletehan', 'Jl. Parakan Resik No.2, Batununggal, Kec. Bandung Kidul, Kota Bandung, Jawa Barat 40266', 'Univ.png', 'Dadang', '00111', 'Dadang', '00222', 'Selamat Datang Di Perpustakaan Universitas Faletehan (Fakultas Sains dan Teknik Bandung)<br><div><br></div>', 500, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `r_jenis`
--

CREATE TABLE `r_jenis` (
  `id` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_jenis`
--

INSERT INTO `r_jenis` (`id`, `nama`) VALUES
(2, 'Majalaha'),
(3, 'Surat Kabar'),
(5, 'Novel'),
(6, 'Tabloida'),
(7, 'buku'),
(8, 'Paper');

-- --------------------------------------------------------

--
-- Table structure for table `r_kelas`
--

CREATE TABLE `r_kelas` (
  `id` int(4) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_kelas`
--

INSERT INTO `r_kelas` (`id`, `nama`) VALUES
(0, 'Karya Umum'),
(100, 'Filsafat dan psikologi'),
(200, 'Agama'),
(300, 'Ilmu sosial'),
(400, 'Bahasa'),
(500, 'Sains dan matematika'),
(600, 'Teknologi'),
(700, 'Kesenian dan rekreasi'),
(800, 'Sastra'),
(900, 'Sejarah dan geografi');

-- --------------------------------------------------------

--
-- Table structure for table `r_libur`
--

CREATE TABLE `r_libur` (
  `id` int(4) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_libur`
--

INSERT INTO `r_libur` (`id`, `tanggal`, `nama`) VALUES
(1, '2020-08-17', 'Hari Kemerdekaan Republik Indonesia'),
(2, '2020-03-09', 'Senin'),
(3, '2020-03-10', 'rabu');

-- --------------------------------------------------------

--
-- Table structure for table `r_lokasi`
--

CREATE TABLE `r_lokasi` (
  `id` int(4) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_lokasi`
--

INSERT INTO `r_lokasi` (`id`, `nama`) VALUES
(6, '1A1'),
(7, 'H1');

-- --------------------------------------------------------

--
-- Table structure for table `t_anggota`
--

CREATE TABLE `t_anggota` (
  `nim_nidn` int(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Budha') NOT NULL,
  `tmp_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `jenis` enum('Mahasiswa','Dosen') NOT NULL,
  `stat` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_anggota`
--

INSERT INTO `t_anggota` (`nim_nidn`, `nama`, `alamat`, `jk`, `agama`, `tmp_lahir`, `tgl_lahir`, `foto`, `tgl_daftar`, `jenis`, `stat`) VALUES
(1116013, 'sandi', 'Jl. Lengkong', 'L', 'Islam', 'Purwakarta', '1998-06-13', '', '2019-10-14', 'Mahasiswa', '1'),
(1116014, 'Novianti Widyamulani Azizah', 'Rd. Ganda 2. No. 77', 'P', 'Islam', 'Bandung', '1996-10-13', '', '2020-07-19', 'Mahasiswa', '1'),
(1116015, 'shioo', 'jl. masuk', 'L', 'Islam', 'pekan', '1990-01-01', '', '2016-02-20', 'Mahasiswa', '1'),
(1116017, 'Muhammad Rifqi Syahroni', 'Sarijadi', 'L', 'Islam', 'Bandung', '1998-09-20', '', '2020-07-19', 'Mahasiswa', '1'),
(1116021, 'riifqi', 'Sarijadi', 'L', 'Islam', 'Bandung', '1974-01-15', '', '2020-09-15', 'Mahasiswa', '1'),
(2225020, 'rian', 'sayuran', 'L', 'Kristen', 'bandung', '1998-09-12', '', '2016-06-17', 'Mahasiswa', '1'),
(2226012, 'benny', 'tarikolo', 'L', 'Islam', 'sukoharjo', '1990-03-04', '', '2016-06-04', 'Mahasiswa', '1');

-- --------------------------------------------------------

--
-- Table structure for table `t_buku`
--

CREATE TABLE `t_buku` (
  `id` int(6) NOT NULL,
  `id_kelas` varchar(6) NOT NULL,
  `id_jenis` int(2) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `pengarang` varchar(250) NOT NULL,
  `penerbit` varchar(250) NOT NULL,
  `th_terbit` year(4) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `jml_hal` int(6) NOT NULL,
  `asal_perolehan` varchar(100) NOT NULL,
  `harga` decimal(12,2) NOT NULL,
  `id_lokasi` int(2) NOT NULL,
  `stat` enum('B','RR','RB','H') NOT NULL,
  `stat_pinjam` enum('P','R') NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `file_buku` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_buku`
--

INSERT INTO `t_buku` (`id`, `id_kelas`, `id_jenis`, `judul`, `pengarang`, `penerbit`, `th_terbit`, `isbn`, `jml_hal`, `asal_perolehan`, `harga`, `id_lokasi`, `stat`, `stat_pinjam`, `deskripsi`, `tgl_input`, `file_buku`) VALUES
(12, '0', 1, 'Conceptual model of groundwater and river water\r\ninteractions in Cikapundung riverbank, Bandung,\r\nWest Java', 'Darul, A., Irawan, D. E., Trilaksono, N. J., Pratama, A., & Fitria, U. R.', 'IOP Conference Series: Earth and Environmental Science (Vol. 29, No. 1, p. 012026). IOP Publishing.', 2016, '-', 8, 'Open Access', '0.00', 6, 'B', 'R', 'Published 1 January 2016 • Published under licence by IOP Publishing Ltd', '2020-05-16 01:19:00', 'upload/Conceptual model of groundwater and river water.pdf'),
(13, '0', 1, 'Beban ganda pengelolaan air tanah di kabupaten/kota pasca pembatalan UU No 7/2004 tentang Sumber Daya Air: Ilustrasi dari Kota Bandung', 'DE Irawan, A Darul, H Sumadi, AA Kuntoro, TA Argo', 'Lembaga Penelitian dan Pengabdian Kepada Masyarakat-Universitas Pendidikan Ganesha', 2017, '2549-6662', 14, 'Open Access', '0.00', 6, 'B', 'P', 'Diterbitkan pada Jurnal Ilmu Sosial dan Humaniora, 6(1), 83-96.', '2020-05-16 01:18:51', 'upload/BEBAN GANDA PENGELOLAAN AIR TANAH.pdf'),
(14, '0', 1, 'PENGEMBANGAN SISTEM PERPUSTAKAAN UNIVERSITAS FALETEHAN BANDUNG', 'Muhammad Wildan Assidiq', 'Pribadi', 2020, 'PA0713851', 86, 'donasi', '0.00', 6, 'B', 'P', 'Karya Tulis yang diajukan untuk memenuhi persyaratan sidang akhir tingkat Sarjana', '2016-06-04 01:05:05', 'upload/11_05_2020_Draf_TA_Wildan_UnivFaletehan.pdf'),
(17, '800', 1, 'Galeri Indonesia', 'Gerry Akbar Kusuma', 'Gerry Akbar Kusuma', 2017, '-', 50, 'Open Access', '0.00', 7, 'B', '', 'R', '0000-00-00 00:00:00', '2020-07-24 19:33:20'),
(18, '0', 1, 'Novel', 'wildan', 'bandung', 2020, '-', 80, 'Open Access', '0.00', 6, 'B', '', 'R', '0000-00-00 00:00:00', '2020-09-15 13:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `t_pengunjung`
--

CREATE TABLE `t_pengunjung` (
  `id` int(6) NOT NULL,
  `nim_nidn` int(15) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `jenis` enum('Mahasiswa','Dosen') NOT NULL,
  `perlu` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `jurusan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_pengunjung`
--

INSERT INTO `t_pengunjung` (`id`, `nim_nidn`, `jk`, `jenis`, `perlu`, `saran`, `tgl`, `jurusan`) VALUES
(34, 1116017, 'L', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', ' Okay  \r\n  ', '2020-07-19 18:20:52', ''),
(35, 11114, 'P', 'Mahasiswa', 'Baca Buku#Pinjam Buku###', '   \r\n Bagus ', '2020-07-19 18:25:12', ''),
(36, 0, '', '', 'Baca Buku####', '   \r\n  ff', '2020-07-19 19:23:32', ''),
(37, 0, '', '', '####', '  Okay\r\n \r\n  ', '2020-07-21 21:18:55', ''),
(38, 0, '', '', 'Baca Buku####', '   \r\n  ', '2020-07-21 21:19:29', ''),
(39, 0, '', '', 'Baca Buku####', '  Okay \r\n  ', '2020-07-25 17:58:47', ''),
(40, 2147483647, 'L', 'Dosen', '##Kembalikan Buku##', ' Okay  \r\n  ', '2020-07-25 18:12:23', ''),
(41, 2147483647, 'L', 'Dosen', 'Baca Buku####', '  Okay \r\n  ', '2020-07-25 18:34:14', ''),
(42, 2147483647, 'L', 'Dosen', 'Baca Buku####', '   \r\n  Okay', '2020-07-25 18:50:37', ''),
(43, 0, '', '', '####', ' okay  \r\n  ', '2020-08-21 20:08:17', ''),
(44, 1116017, 'L', 'Mahasiswa', '#Pinjam Buku###', ' Okay  \r\n  ', '2020-08-27 18:46:55', ''),
(45, 1116017, 'L', 'Mahasiswa', 'Baca Buku####', '   \r\n  okay', '2020-09-15 13:22:43', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_trans`
--

CREATE TABLE `t_trans` (
  `id` int(6) NOT NULL,
  `id_buku` int(6) NOT NULL,
  `id_anggota` int(15) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `stat` enum('P','K') NOT NULL,
  `ket` varchar(100) NOT NULL,
  `telat` int(2) NOT NULL,
  `denda` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_trans`
--

INSERT INTO `t_trans` (`id`, `id_buku`, `id_anggota`, `tgl_pinjam`, `tgl_kembali`, `stat`, `ket`, `telat`, `denda`) VALUES
(287, 13, 1116014, '2020-07-26', '2020-08-04', 'K', '', 23, '11500.00'),
(290, 13, 1116017, '2020-07-26', '2020-08-04', 'K', '', 23, '11500.00'),
(292, 13, 1116007, '2020-07-26', '2020-08-04', 'K', '', 23, '11500.00'),
(293, 14, 1116013, '2020-07-26', '2020-08-04', 'K', '', 23, '11500.00'),
(294, 13, 1116015, '2020-07-26', '2020-08-04', 'K', '', 23, '11500.00'),
(295, 14, 2225020, '2020-07-26', '2020-08-04', 'K', '', 23, '11500.00'),
(296, 13, 2226012, '2020-07-26', '2020-08-04', 'K', '', 23, '11500.00'),
(297, 13, 1116014, '2020-08-27', '2020-09-04', 'K', '', 0, '0.00'),
(298, 13, 1116013, '2020-08-27', '2020-09-04', 'K', '', 0, '0.00'),
(299, 13, 1116007, '2020-08-27', '2020-08-18', 'K', '', 12, '6000.00'),
(302, 13, 1116015, '2020-08-30', '2020-09-08', 'K', '', 0, '0.00'),
(306, 13, 2226012, '2020-08-30', '2020-09-08', 'K', 'df', 0, '0.00'),
(307, 14, 1116013, '2020-08-30', '2020-09-08', 'K', '', 0, '0.00'),
(308, 13, 1116015, '2020-08-30', '2020-09-08', 'P', '', 0, '0.00'),
(309, 13, 1116014, '2020-08-30', '2020-09-08', 'K', '', 0, '0.00'),
(310, 13, 2225020, '2020-08-30', '2020-09-08', 'K', '', 0, '0.00'),
(311, 13, 2226012, '2020-08-30', '2020-09-08', 'K', '', 0, '0.00'),
(312, 14, 2225020, '2020-08-30', '2020-09-08', 'P', '', 0, '0.00'),
(313, 13, 1116014, '2020-09-15', '2020-09-23', 'P', '', 0, '0.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_jenis`
--
ALTER TABLE `r_jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_kelas`
--
ALTER TABLE `r_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_libur`
--
ALTER TABLE `r_libur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `r_lokasi`
--
ALTER TABLE `r_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_anggota`
--
ALTER TABLE `t_anggota`
  ADD PRIMARY KEY (`nim_nidn`);

--
-- Indexes for table `t_buku`
--
ALTER TABLE `t_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_pengunjung`
--
ALTER TABLE `t_pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_trans`
--
ALTER TABLE `t_trans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `r_jenis`
--
ALTER TABLE `r_jenis`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `r_libur`
--
ALTER TABLE `r_libur`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `r_lokasi`
--
ALTER TABLE `r_lokasi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `t_buku`
--
ALTER TABLE `t_buku`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `t_pengunjung`
--
ALTER TABLE `t_pengunjung`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `t_trans`
--
ALTER TABLE `t_trans`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
