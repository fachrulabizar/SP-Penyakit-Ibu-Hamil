-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 12 Agu 2023 pada 10.53
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cf_bumil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `administrator`
--

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `administrator`
--

INSERT INTO `administrator` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `balas_pesan`
--

CREATE TABLE `balas_pesan` (
  `id_balas` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `waktu` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `balas_pesan`
--

INSERT INTO `balas_pesan` (`id_balas`, `id_member`, `id_pesan`, `pesan`, `status`, `waktu`) VALUES
(13, 5, 21, 'buka guys', 'notyet', '2023-04-22 18:24:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kd_gejala` varchar(5) NOT NULL,
  `kd_penyakit` varchar(5) NOT NULL,
  `nama_gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kd_gejala`, `kd_penyakit`, `nama_gejala`) VALUES
(1, 'G01', 'P01', 'Flu dan Demam tidak enak badan'),
(2, 'G02', 'P01', 'Nyeri telan'),
(3, 'G03', 'P01', 'Ruam pada kulit'),
(4, 'G04', 'P02', 'Demam dan Nyeri otot dan sendi'),
(5, 'G05', 'P02', 'Sakit kepala dan Mual dan muntah'),
(6, 'G06', 'P02', 'Lemas dan Hilang nafsu makan'),
(7, 'G07', 'P02', 'Perut kembung dan Diare'),
(8, 'G08', 'P02', 'Kulit dan bagian putih mata (sklera) berwarna kuning\n dan Urine berwarna gelap'),
(9, 'G09', 'P03', 'Cepat lelah dan merasa lemah dan\nKulit tampak pucat'),
(10, 'G10', 'P03', 'Denyut jantung tidak teratur,\nSesak napas,\nNyeri dada dan sakit kepala.'),
(11, 'G11', 'P03', 'Merasa gatal-gatal,\nPerubahan pada indera perasa,\nRambut rontok,\nTelinga berdenging,\nSariawan di pinggir mulut.'),
(12, 'G12', 'P04', 'Gatal atau perih di vagina dan sekitarnya'),
(13, 'G13', 'P04', 'Keluarnya cairan berwarna abu-abu keputihan\n'),
(14, 'G14', 'P04', 'Nyeri saat buang air kecil\n'),
(15, 'G15', 'P04', 'Nyeri atau tidak nyaman saat berhubungan seksual\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_diagnosa`
--

CREATE TABLE `hasil_diagnosa` (
  `id_hasildiagnosa` int(11) NOT NULL,
  `no_konsul` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `kd_penyakit` varchar(5) NOT NULL,
  `cf1` double NOT NULL,
  `cf2` double NOT NULL,
  `cf3` double NOT NULL,
  `cf4` double NOT NULL,
  `max` double NOT NULL,
  `waktu` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_diagnosa`
--

INSERT INTO `hasil_diagnosa` (`id_hasildiagnosa`, `no_konsul`, `id_member`, `kd_penyakit`, `cf1`, `cf2`, `cf3`, `cf4`, `max`, `waktu`) VALUES
(73, 1, 4, '', 0, 0, 0, 0, 0, '2023-04-22 16:44:16'),
(74, 2, 4, 'P01', 0.933, 0, 0, 0, 93.25, '2023-04-22 16:45:00'),
(75, 2, 4, 'P01', 0.933, 0, 0, 0, 93.25, '2023-04-22 16:46:55'),
(76, 3, 5, 'P01', 0.992, 0, 0, 0, 99.19, '2023-04-22 18:22:23'),
(77, 4, 6, '', 0, 0, 0, 0, 0, '2023-08-12 13:58:30'),
(78, 4, 6, '', 0, 0, 0, 0, 0, '2023-08-12 13:59:31'),
(79, 4, 6, '', 0, 0, 0, 0, 0, '2023-08-12 13:59:46'),
(80, 4, 6, '', 0, 0, 0, 0, 0, '2023-08-12 14:01:09'),
(81, 5, 6, '', 0, 0, 0, 0, 0, '2023-08-12 14:01:52'),
(82, 6, 6, '', 0, 0, 0, 0, 0, '2023-08-12 14:03:03'),
(83, 7, 6, 'P01', 0.992, 0, 0, 0, 99.19, '2023-08-12 14:05:53'),
(84, 7, 6, 'P01', 0.992, 0, 0, 0, 99.19, '2023-08-12 14:26:07'),
(85, 7, 6, 'P01', 0.992, 0, 0, 0, 99.19, '2023-08-12 14:26:08'),
(86, 7, 6, 'P01', 0.992, 0, 0, 0, 99.19, '2023-08-12 14:35:11'),
(87, 7, 6, 'P01', 0.992, 0, 0, 0, 99.19, '2023-08-12 14:35:13'),
(88, 7, 6, 'P01', 0.992, 0, 0, 0, 99.19, '2023-08-12 14:47:12'),
(89, 7, 6, 'P01', 0.992, 0, 0, 0, 99.19, '2023-08-12 15:00:20'),
(90, 8, 6, 'P04', 0, 0, 0, 0.97, 97, '2023-08-12 15:01:05'),
(91, 8, 6, 'P04', 0, 0, 0, 0.97, 97, '2023-08-12 15:01:27'),
(92, 8, 6, 'P04', 0, 0, 0, 0.97, 97, '2023-08-12 15:01:53'),
(93, 9, 6, 'P02', 0, 0.94, 0, 0, 94, '2023-08-12 15:03:54'),
(94, 10, 6, 'P03', 0, 0, 0.875, 0, 87.5, '2023-08-12 15:04:38'),
(95, 11, 6, 'P04', 0.85, 0, 0, 0.97, 97, '2023-08-12 15:05:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `kd_penyakit` varchar(5) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `penanggulangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `kd_penyakit`, `nama_penyakit`, `keterangan`, `penanggulangan`) VALUES
(1, 'P01', 'TORCH', 'TORCH adalah singkatan untuk kumpulan beberapa penyakit infeksi yang terkait dengan meningkatnya risiko terjadinya abortus atau kelainan/cacat bawaan pada janin akibat infeksi yang terjadi pada masa kehamilan.', '<br />Pemeriksaan TORCH umumnya akan dianjurkan oleh dokter sebelum merencanakan kehamilan atau pada trimester pertama kehamilan. Hal ini bertujuan untuk mendeteksi sedini mungkin infeksi TORCH pada ibu hamil yang bisa menular ke janin.'),
(2, 'P02', 'HEPATITIS B', 'Hepatitis B adalah peradangan pada organ hati yang disebabkan oleh virus hepatitis B. Virus ini dapat menular melalui hubungan seksual atau berbagi jarum suntik.', '<br />\nLangkah utama untuk mencegah hepatitis B adalah melalui pemberian vaksin hepatitis B . Vaksin ini wajib diberikan kepada anak-anak, tetapi karena efeknya tidak bertahan seumur hidup, vaksinasi perlu diulang saat dewasa.\n\nSelain vaksinasi, ada upaya lain yang perlu dilakukan untuk menurunkan risiko terkena hepatitis B, yaitu berhubungan seksual secara aman dan menjauhi penyalahgunaan NAPZA.'),
(3, 'P03', 'ANEMIA', 'Anemia pada ibu hamil yang tidak ditangani dengan benar dapat meningkatkan risiko terjadinya komplikasi yang berbahaya, seperti persalinan prematur. Selain itu, anemia juga dapat meningkatkan risiko berat badan lahir rendah pada bayi. Pada sisi ibu, anemia dapat meningkatkan risiko depresi pasca persalinan dan kematian ibu pasca persalinan.', '<br />Ibu hamil memerlukan 27 miligram zat besi per hari. Untuk mengatasi anemia pada ibu hamil dapat dengan melakukan beberapa cara berikut:<br />Mengonsumsi suplemen zat besi\nSuplemen zat besi yang umum diberikan adalah ferrous sulphate, yang dikonsumsi 2-3 kali per hari. Menambah asupan makanan kaya zat besi\nSelain melalui suplemen, kekurangan zat besi juga bisa ditangani melalui pola makan yang sehat dan teratur. Memenuhi kebutuhan vitamin C\nAgar tubuh dapat menyerap zat besi dengan maksimal, diperlukan juga vitamin C, yang dapat ditemukan dalam jeruk, blueberry, stroberi, kiwi, dan tomat. '),
(4, 'P04', 'KEPUTIHAN', 'Keputihan saat hamil merupakan kondisi yang normal terjadi selama tidak disertai gejala lain yang mengganggu. Namun, jika keputihan yang Bumil alami berubah warna atau diiringi gejala tertentu, seperti vagina gatal atau perih, keputihan berbau, atau perdarahan vagina, kondisi ini perlu diwaspadai karena bisa saja disebabkan oleh infeksi.', '<br />\n<br />- Bersihkan vagina secara rutin dengan cara yang benar, yaitu dari arah vagina menuju anus setiap selesai buang air kecil maupun buang air besar. Langkah ini penting dilakukan guna mencegah penyebaran bakteri dari anus ke vagina.\n<br />- Segera ganti pakaian setelah tubuh banyak berkeringat atau basah, misalnya karena olahraga atau berenang.\n<br />- Gunakan kondom saat berhubungan seksual dan hindari berganti pasangan seksual.\n<br />- Hindari menggunakan pembalut, tisu, dan sabun yang mengandung pewangi untuk membersihkan vagina.\n<br />- Hindari mengenakan celana yang terlalu ketat, terutama yang berbahan nilon. Biar lebih nyaman, gunakanlah celana yang dapat menyerap keringat, misalnya yang berbahan katun.\n<br />- Perbanyak beristirahat dan kurangi stres guna menjaga daya tahan tubuh tetap kuat. Hal ini berguna untuk menjaga imunitas tubuh agar lebih kuat melawan kuman penyebab infeksi.\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id_diagnosa` int(11) NOT NULL,
  `no_konsul` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `kd_gejala` varchar(5) NOT NULL,
  `cf` double NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diagnosa`
--

INSERT INTO `diagnosa` (`id_diagnosa`, `no_konsul`, `id_member`, `kd_gejala`, `cf`, `tanggal`) VALUES
(255, 1, 4, 'G01', 1, '2023-04-22'),
(256, 2, 4, 'G01', 1, '2023-04-22'),
(257, 2, 4, 'G02', 1, '2023-04-22'),
(258, 2, 4, 'G03', 1, '2023-04-22'),
(259, 2, 4, 'G04', 1, '2023-04-22'),
(260, 3, 5, 'G01', 1, '2023-04-22'),
(261, 3, 5, 'G02', 1, '2023-04-22'),
(262, 3, 5, 'G03', 1, '2023-04-22'),
(263, 3, 5, 'G04', 1, '2023-04-22'),
(264, 3, 5, 'G05', 1, '2023-04-22'),
(265, 4, 6, 'G01', 0.3, '2023-08-12'),
(266, 5, 6, 'G01', 1, '2023-08-12'),
(267, 6, 6, 'G01', 1, '2023-08-12'),
(268, 6, 6, 'G03', 1, '2023-08-12'),
(269, 6, 6, 'G04', 1, '2023-08-12'),
(270, 7, 6, 'G01', 1, '2023-08-12'),
(271, 7, 6, 'G02', 1, '2023-08-12'),
(272, 7, 6, 'G03', 1, '2023-08-12'),
(273, 7, 6, 'G04', 1, '2023-08-12'),
(274, 7, 6, 'G05', 1, '2023-08-12'),
(275, 8, 6, 'G12', 1, '2023-08-12'),
(276, 8, 6, 'G13', 1, '2023-08-12'),
(277, 8, 6, 'G14', 1, '2023-08-12'),
(278, 8, 6, 'G15', 1, '2023-08-12'),
(279, 9, 6, 'G04', 1, '2023-08-12'),
(280, 9, 6, 'G05', 1, '2023-08-12'),
(281, 9, 6, 'G06', 1, '2023-08-12'),
(282, 9, 6, 'G07', 1, '2023-08-12'),
(283, 9, 6, 'G08', 1, '2023-08-12'),
(284, 10, 6, 'G09', 1, '2023-08-12'),
(285, 10, 6, 'G10', 1, '2023-08-12'),
(286, 10, 6, 'G11', 1, '2023-08-12'),
(287, 11, 6, 'G01', 1, '2023-08-12'),
(288, 11, 6, 'G02', 1, '2023-08-12'),
(289, 11, 6, 'G03', 1, '2023-08-12'),
(290, 11, 6, 'G13', 1, '2023-08-12'),
(291, 11, 6, 'G14', 1, '2023-08-12'),
(292, 11, 6, 'G15', 1, '2023-08-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `jk` varchar(6) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_lahir` date NOT NULL DEFAULT '0000-00-00',
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nama`, `jk`, `alamat`, `tgl_lahir`, `username`, `password`) VALUES
(4, 'doromerouno', 'pria', 'doromerouno', '1999-01-01', 'doromerouno', 'doromerouno'),
(5, 'namamu', 'pria', 'disini', '1999-01-01', 'namamu', 'namamu'),
(6, 'yano romansa', 'pria', 'bonang utara 1 nomor 99, kecamatan sipuden, banten', '1998-04-20', 'yano', 'yano');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanm`
--

CREATE TABLE `pesanm` (
  `id_pesanm` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_balas` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `waktu` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanm`
--

INSERT INTO `pesanm` (`id_pesanm`, `id_member`, `id_balas`, `pesan`, `status`, `waktu`) VALUES
(20, 4, 0, 'hai sangat membantu', 'notyet', '2023-04-22 16:58:53'),
(21, 5, 0, 'halo admin apakah besok bengkel buka?', 'ok', '2023-04-22 18:23:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balas_pesan`
--
ALTER TABLE `balas_pesan`
  ADD PRIMARY KEY (`id_balas`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  ADD PRIMARY KEY (`id_hasildiagnosa`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`id_diagnosa`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `pesanm`
--
ALTER TABLE `pesanm`
  ADD PRIMARY KEY (`id_pesanm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `balas_pesan`
--
ALTER TABLE `balas_pesan`
  MODIFY `id_balas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  MODIFY `id_hasildiagnosa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `id_diagnosa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pesanm`
--
ALTER TABLE `pesanm`
  MODIFY `id_pesanm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
