-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 02:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bangkit_indonesia`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `artikel` text NOT NULL,
  `tanggal` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `artikel`, `tanggal`, `gambar`, `id_kategori`) VALUES
(24, 'Mencintai Tanah Air dengan Melestarikan Budaya Pencak Silat', 'Sabtu, 3 Desember 2022 Perguruan IPOSI (Ikatan Persilatan Olahraga dan Silaturahmi) mengadakan ujian Mental di Condet, Jakarta Timur. Kegiatan ini dilaksanakan pada pukul 19.30 WIB. Pada kegiatan ini, peserta dimaksudkan mengikuti ujian mental adalah langkah pertama untuk kenaikan tingkat. dipimpin langsung oleh Guru Besar IPOSI Bapak Nurrosit dan para pelatih juga senior lainnya. Adapun urutan acaranya adalah mengaji bersama dan membuka gerakan serta diakhiri dengan pemberian bet IPOSI juga doa bersama.', '2022-12-03', 'IPOSI_Zidan.jpeg', 1),
(25, 'Merayakan hari Santri', 'Presiden jokowi resmi menetapkan 22 oktober sebagai sebagai hari santri nasional , ketetapan ini tertuang dalam keputusan presiden nomor 22 tahun 2015 yang di tandatangani oleh presiden jokowi pada hari kamis 15 0ktober 2015. Pada masa kampanye pilpres 2014, jokowi melempar janji untuk menetapkan hari santri nasional.meskipun pemerintah menetapkan tanggal 22 oktober merupakan hari santri nasional tetapi hari tersebut bukanlah hari libur atau tanggal merah.Hari santri mempunyai makna yang begitu besar bagi kalangan santri. Dalam sejarah peran santri tidak dapat di ragukan lagi , mereka ikut memperjuangkan jiwa raga untuk kemerdekaan Indonesia. Hari itu merupakan sebuah hari yang membangun semangat dan kualitas para santri untuk memperjuangkan kemerdekaan Indonesia.\r\n\r\nKH.Hasyim Asy’ari sebagai tokoh besar NU mengobarkan jihad dengan mengatakan ”Membela tanah air dari penjajah hukumnya fardhlu ain atau wajib bagi setiap orang.” Seruan jihad itulah yang dikobarkan KH.Hasyim Asy’ari untuk membakar semangat para santri .\r\n\r\nKemerdekaan Indonesia memang tidak lepas dari perjuangan kaum santri dan kaum ulama . Itulah kenapa hari santri di tetapkan tanggal 22 Oktober. Kita harus memperjuangkan kemerdekaan Indonesia ,berjuang bersama-sama membangun Indonesia tanpa ada perbedaan.', '2015-10-22', 'santri audrey.jpeg', 2),
(26, 'Menjadi Petugas Upacara Kemerdekaan NKRI 17 Agustus 2021', 'Selasa, 17 Agustus 2021 saya menjadi petugas upacara memperingati hari kemerdekaan Republik Indonesia di komplek daerah tempat saya tinggal. Ini sebagai wujud kecintaan saya terhadap negeri saya, menghormati upacara bendera dan ikhlas melakukannya. Di tahun berikutnya 2022 saya menjadi peserta upacara.', '2021-08-17', 'satria upacara.jpeg', 10),
(27, 'Mengikuti kegiatan Pembentukan Karakter', 'Pada tanggal 13 september 2019 kegiatan pembentukan karakter yang wajib dilaksanakn di SMKN Adiwerna selama kelas 10 guna membentuk pribadi yang cinta tanah air  serta meningkatkan kedisplinan siswa / siswi . Pembentukan karakter tersebut dilangsungkan setiap 2 minggu sekali tepatnya hari jumat dimana anak-anak akan dikumpulkan dilapangan dan dibimbing oleh TNI AD yang kompeten untuk melaksanakan PBB , bimbingan tersebut dilaksanakan selama kurang lebihnya 2 jam . Selain itu pembentukan karakter juga melaksanakan kegiatan UMKM guna meningkatkan skill kewirausahaan dan kerja sama tim .', '2019-09-13', 'sentia PK.jpeg', 1),
(28, 'Menjadi Panitia Kegiatan perlombaan pada Hari Kemerdekaan Republik Indonesia 2022', 'pada tanggal 27 Agustus 2022 saya mengadakan lomba 17 Agustus dari pengajian saya,17 agustus  adalah waktu yang ditunggu-tunggu oleh semua orang, selain untuk memperingati hari kemerdekaan Republik Indonesia, di tanggal 17 ini semua orang merayakan datangnya tanggal ini dengan melakukan perayaan yang menunjukan semangat kemerdekaan seperti, lomba-lomba khas 17-an', '2022-08-17', 'Vanessa lomba.jpeg', 10),
(29, ' Mengikuti Program Bela Negara di BSI', 'Raabu, 14 Desember 2022 tempatnya ada di Kampus BSI Kali Abang Bekasi mengadakan program bela negar. Hal pertama yang di lakukan adalah pembukaan dengan meriah adanya bapak mentri Menko PMK: Muhadjir Effendy dan acara konser lainnya. fungsinya program ini adalah generasi penerus bangsa indonseia tidak boleh melantarkan budaya dan bangsa dengan adanya implementasikan ideologi Pancasila, memegang teguh Bhinneka Tunggal Ika, memiliki rasa cinta Tanah Air, rela berkorban dan pantang menyerah serta memiliki kemahiran di bidang yang diminati.', '2022-12-14', 'WhatsApp Image 2022-10-12 at 14.05.56.jpeg', 2),
(30, 'Menjadi Panitia pelaksanaan Wisuda', '29 November 2022 kegiatan wisuda yang dilaksanakan oleh kampus Nusa Mandiri di Balai Sidang Jakarta Convention Center dapat membentuk rasa cinta tanah air dan menajaga persatuan dan kesatuan dalam NKRI. Acara wisuda berlangsung selama satu hari, para mahasiswa yang menjadi volunteer bekerja sesuai jobdesk-nya seperti contoh yang ada di foto adalah volunteer bagian perlengkapan yang dimana bagian perlengkapan dan dekorasi ini sudah mulai bekerja beberapa hari sebelum dimulainya acara hingga selesainya acara. Acara volunteer seperti ini sangat bagus untuk bertemu orang baru, terutama jika kamu sedang berada di suatu daerah yang baru. Kegiatan volunteer bisa memperkuat ikatan dengan komunitas dan memperkuat jaringan pertemanan, juga membuat kita lebih peka terhadap permasalahan lingkungan sekitar.', '2022-11-29', 'KIA volun.jpeg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `gambar`, `id_user`, `keterangan`) VALUES
(9, 'IPOSI_Zidan.jpeg', 1, 'Zidan Akmal Al Baihaqi Mengikuti seni Bela diri Silat'),
(10, 'WhatsApp Image 2022-10-12 at 14.05.56.jpeg', 15, 'Khalaf Mursyid K.P.V Mengikuti Acara Bela Negara di Kampus BSI'),
(11, 'santri audrey.jpeg', 21, 'Audrey Mengikuti hari Santri'),
(12, 'satria upacara.jpeg', 20, 'Satria menjadi petugas upacara hut RI 76'),
(13, 'sentia PK.jpeg', 19, 'Sentia mengikuti Kegiatan Pembentukan Karakter'),
(14, 'Vanessa lomba.jpeg', 17, 'Vanessa menjadi panitia lomba 17 Agustus-an ');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Cinta Tanah Air'),
(2, 'Wawasan Kebangsaan'),
(10, 'Rela Berkorban Untuk Bangsa dan Negara');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`) VALUES
(1, 'Zidan Akmal Al Baihaqi', 'zidan1', '123456'),
(15, 'Khalaf Mursyid Khairi Putra Vito', 'khalaf100', 'khalaf100'),
(16, 'Rahma Lubis', 'Rahma99', 'Rahma99'),
(17, 'Vanessa Zahrah', 'Nessaja1', 'Nessaja1'),
(18, 'Mila Restiani ', 'mila123', 'mila123'),
(19, 'Sentia Pera Insani', 'sentia123', 'sentia123'),
(20, 'Satria Ramadhan ', 'satria150', 'satria150'),
(21, 'Audrey Muthia Vasya', 'audrey100', 'audrey100'),
(27, 'Indah Berliandi P.', 'indah10', 'indah10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
