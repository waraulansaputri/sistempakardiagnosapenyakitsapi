-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 10:56 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_ai`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nama_gejala` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `nama_gejala`, `created_at`, `updated_at`) VALUES
('G001', 'Nafsu makan menurun', NULL, NULL),
('G002', 'Keguguran setelah 5 bulan', NULL, NULL),
('G003', 'Keluarnya plasenta tertunda', NULL, NULL),
('G004', 'Terjadi radang uterus', NULL, NULL),
('G005', 'Radang kemaluan', NULL, NULL),
('G006', 'Keluar nanah dari seluruh tubuh', NULL, NULL),
('G007', 'Air kencing berwarana merah', NULL, NULL),
('G008', 'Keguguran setelah 3 minggu', NULL, NULL),
('G009', 'Ginjal tampak belang', NULL, NULL),
('G010', 'Demam ', NULL, NULL),
('G011', 'Demam Tremor ', NULL, NULL),
('G012', 'Keluar cairan dari mata dan hidung', NULL, NULL),
('G013', 'Air liur yang berlebihan', NULL, NULL),
('G014', 'Kekakuan anggota gerak', NULL, NULL),
('G015', 'Suhu badan meningkat', NULL, NULL),
('G016', 'Denyut jantung tidak stabil', NULL, NULL),
('G017', 'Keguguran usia 3 bulan', NULL, NULL),
('G018', 'Hewan menjadi birahi seelah 30-70 hari', NULL, NULL),
('G019', 'Keluar nanah pada uterus', NULL, NULL),
('G020', 'Radang penis dan preputium', NULL, NULL),
('G021', 'Kenaikan suhu', NULL, NULL),
('G022', 'ingusan', NULL, NULL),
('G023', 'Penurunan produksi susu', NULL, NULL),
('G024', 'Depresi ', NULL, NULL),
('G025', 'Pernafasan Cepat', NULL, NULL),
('G026', 'Kulit dan bulu kaku', NULL, NULL),
('G027', 'Sering menggit bagian tubuhnya', NULL, NULL),
('G028', 'Bulu rontok', NULL, NULL),
('G029', 'Mengosok- gosok badan ke kandang', NULL, NULL),
('G030', 'Muncul nanah pada tubuh ', NULL, NULL),
('G031', 'Timbuk kerak berwarna abu-abu', NULL, NULL),
('G032', 'Terdapat luka ditubuh', NULL, NULL),
('G033', 'Terdapat lalat di area tubuh', NULL, NULL),
('G034', 'Terdapat belatung di area luka', NULL, NULL),
('G035', 'Lemah ', NULL, NULL),
('G036', 'Penurunan Berat Badan', NULL, NULL),
('G037', 'Sesak nafas', NULL, NULL),
('G038', 'Dehidrasi', NULL, NULL),
('G039', 'Hidung kering', NULL, NULL),
('G040', 'Mulut Kering', NULL, NULL),
('G041', 'Mencret', NULL, NULL),
('G042', 'Jalan Sempoyongan', NULL, NULL),
('G043', 'Telinga Terkulai', NULL, NULL),
('G044', 'Mata suram, mengantuk dan cekung', NULL, NULL),
('G045', 'Sapi ngorok', NULL, NULL),
('G046', 'Bulu kusam', NULL, NULL),
('G047', 'Feses lembek sampai cair, berwarna gelap, berbau busuk dan berlendir', NULL, NULL),
('G048', 'Keluar bercak darah', NULL, NULL),
('G049', 'Merejan dan merintih', NULL, NULL),
('G050', 'Punggung melengkung', NULL, NULL),
('G051', 'Mulut berbuih', NULL, NULL),
('G052', 'Pupil mata membesar', NULL, NULL),
('G053', 'Kejang otot', NULL, NULL),
('G054', 'Gelisah ', NULL, NULL),
('G055', 'Bagian perut terlihat legok akibat lapar kembung', NULL, NULL),
('G056', 'Muntah ', NULL, NULL),
('G057', 'Berkemih ( Sering kencing)', NULL, NULL),
('G058', 'Sering menghetakkan kaki', NULL, NULL),
('G059', 'Bernafas dengan mulut', NULL, NULL),
('G060', 'Sering memanjangkan leher', NULL, NULL),
('G061', 'Batuk ', NULL, NULL),
('G062', 'Sesak nafas', NULL, NULL),
('G063', 'Pincang ', NULL, NULL),
('G064', 'Persendian kaki membengkak', NULL, NULL),
('G065', 'Malas bergerak', NULL, NULL),
('G066', 'Selaput Berlenir', NULL, NULL),
('G067', 'Katup Mata bengkak', NULL, NULL),
('G068', 'Katarak ', NULL, NULL),
('G069', 'Keluarnya air mata', NULL, NULL),
('G070', 'Radang pda kelenjar susu', NULL, NULL),
('G071', 'Kelenjar air susu tidak normal', NULL, NULL),
('G072', 'Kelenjar air susu panas', NULL, NULL),
('G073', 'Kelnejar air susu sakit bila disentuh', NULL, NULL),
('G074', 'Air susu encer dan bercampur', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gejala_penyakit`
--

CREATE TABLE `gejala_penyakit` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_gejala` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_penyakit` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gejala_penyakit`
--

INSERT INTO `gejala_penyakit` (`id`, `id_gejala`, `id_penyakit`, `created_at`, `updated_at`) VALUES
(1, 'G006', 'KP001', NULL, NULL),
(2, 'G002', 'KP001', NULL, NULL),
(3, 'G003', 'KP001', NULL, NULL),
(4, 'G004', 'KP001', NULL, NULL),
(5, 'G005', 'KP001', NULL, NULL),
(6, 'G001', 'KP002', NULL, NULL),
(7, 'G007', 'KP002', NULL, NULL),
(8, 'G008', 'KP002', NULL, NULL),
(9, 'G009', 'KP002', NULL, NULL),
(10, 'G010', 'KP002', NULL, NULL),
(11, 'G001', 'KP003', NULL, NULL),
(12, 'G011', 'KP003', NULL, NULL),
(13, 'G012', 'KP003', NULL, NULL),
(14, 'G013', 'KP003', NULL, NULL),
(15, 'G014', 'KP003', NULL, NULL),
(16, 'G015', 'KP003', NULL, NULL),
(17, 'G016', 'KP003', NULL, NULL),
(18, 'G017', 'KP004', NULL, NULL),
(19, 'G018', 'KP004', NULL, NULL),
(20, 'G019', 'KP004', NULL, NULL),
(21, 'G020', 'KP004', NULL, NULL),
(22, 'G015', 'KP005', NULL, NULL),
(23, 'G022', 'KP005', NULL, NULL),
(24, 'G023', 'KP005', NULL, NULL),
(25, 'G024', 'KP005', NULL, NULL),
(26, 'G001', 'KP006', NULL, NULL),
(27, 'G011', 'KP006', NULL, NULL),
(28, 'G016', 'KP006', NULL, NULL),
(29, 'G025', 'KP006', NULL, NULL),
(30, 'G026', 'KP007', NULL, NULL),
(31, 'G027', 'KP007', NULL, NULL),
(32, 'G028', 'KP007', NULL, NULL),
(33, 'G029', 'KP007', NULL, NULL),
(34, 'G030', 'KP007', NULL, NULL),
(35, 'G031', 'KP007', NULL, NULL),
(36, 'G001', 'KP008', NULL, NULL),
(37, 'G010', 'KP008', NULL, NULL),
(38, 'G032', 'KP008', NULL, NULL),
(39, 'G033', 'KP008', NULL, NULL),
(40, 'G034', 'KP008', NULL, NULL),
(41, 'G035', 'KP008', NULL, NULL),
(42, 'G036', 'KP008', NULL, NULL),
(43, 'G001', 'KP009', NULL, NULL),
(44, 'G016', 'KP009', NULL, NULL),
(45, 'G024', 'KP009', NULL, NULL),
(46, 'G025', 'KP009', NULL, NULL),
(47, 'G026', 'KP009', NULL, NULL),
(48, 'G028', 'KP009', NULL, NULL),
(49, 'G035', 'KP009', NULL, NULL),
(50, 'G036', 'KP009', NULL, NULL),
(51, 'G038', 'KP009', NULL, NULL),
(52, 'G039', 'KP009', NULL, NULL),
(53, 'G040', 'KP009', NULL, NULL),
(54, 'G041', 'KP009', NULL, NULL),
(55, 'G042', 'KP009', NULL, NULL),
(56, 'G043', 'KP009', NULL, NULL),
(57, 'G043', 'KP009', NULL, NULL),
(58, 'G010', 'KP010', NULL, NULL),
(59, 'G022', 'KP010', NULL, NULL),
(60, 'G025', 'KP010', NULL, NULL),
(61, 'G001', 'KP011', NULL, NULL),
(62, 'G010', 'KP011', NULL, NULL),
(63, 'G011', 'KP011', NULL, NULL),
(64, 'G028', 'KP011', NULL, NULL),
(65, 'G042', 'KP011', NULL, NULL),
(66, 'G001', 'KP012', NULL, NULL),
(67, 'G012', 'KP012', NULL, NULL),
(68, 'G026', 'KP012', NULL, NULL),
(69, 'G028', 'KP012', NULL, NULL),
(70, 'G035', 'KP012', NULL, NULL),
(71, 'G036', 'KP012', NULL, NULL),
(72, 'G038', 'KP012', NULL, NULL),
(73, 'G041', 'KP012', NULL, NULL),
(74, 'G046', 'KP012', NULL, NULL),
(75, 'G047', 'KP012', NULL, NULL),
(76, 'G048', 'KP012', NULL, NULL),
(77, 'G049', 'KP012', NULL, NULL),
(78, 'G050', 'KP012', NULL, NULL),
(79, 'G016', 'KP013', NULL, NULL),
(80, 'G025', 'KP013', NULL, NULL),
(81, 'G042', 'KP013', NULL, NULL),
(82, 'G051', 'KP013', NULL, NULL),
(83, 'G052', 'KP013', NULL, NULL),
(84, 'G053', 'KP013', NULL, NULL),
(85, 'G001', 'KP014', NULL, NULL),
(86, 'G025', 'KP014', NULL, NULL),
(87, 'G035', 'KP014', NULL, NULL),
(88, 'G036', 'KP014', NULL, NULL),
(89, 'G039', 'KP014', NULL, NULL),
(90, 'G054', 'KP014', NULL, NULL),
(91, 'G055', 'KP014', NULL, NULL),
(92, 'G056', 'KP014', NULL, NULL),
(93, 'G057', 'KP014', NULL, NULL),
(94, 'G058', 'KP014', NULL, NULL),
(95, 'G059', 'KP014', NULL, NULL),
(96, 'G060', 'KP014', NULL, NULL),
(97, 'G001', 'KP015', NULL, NULL),
(98, 'G010', 'KP015', NULL, NULL),
(99, 'G022', 'KP015', NULL, NULL),
(100, 'G036', 'KP015', NULL, NULL),
(101, 'G061', 'KP015', NULL, NULL),
(102, 'G062', 'KP015', NULL, NULL),
(103, 'G001', 'KP016', NULL, NULL),
(104, 'G014', 'KP016', NULL, NULL),
(105, 'G015', 'KP016', NULL, NULL),
(106, 'G063', 'KP016', NULL, NULL),
(107, 'G064', 'KP016', NULL, NULL),
(108, 'G065', 'KP016', NULL, NULL),
(109, 'G066', 'KP017', NULL, NULL),
(110, 'G067', 'KP017', NULL, NULL),
(111, 'G068', 'KP017', NULL, NULL),
(112, 'G069', 'KP017', NULL, NULL),
(113, 'G070', 'KP018', NULL, NULL),
(114, 'G071', 'KP018', NULL, NULL),
(115, 'G072', 'KP018', NULL, NULL),
(116, 'G073', 'KP018', NULL, NULL),
(117, 'G074', 'KP018', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pakar`
--

CREATE TABLE `pakar` (
  `id_pakar` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_hp` varchar(18) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pakar`
--

INSERT INTO `pakar` (`id_pakar`, `nama`, `no_hp`, `alamat`, `foto`) VALUES
(1, 'Dr. Raisa', '6287823179122', 'Jalan Aceh 191 A', '1645083700_441463-idcard-kpop.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nama_penyakit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `solusi` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `nama_penyakit`, `solusi`, `created_at`, `updated_at`) VALUES
('KP001', 'Brucollosis', 'Dilakukan vaksinasi terhadap ternak yang terjangkit brucellosis Dilakukan uji Red Bengal Test (RBT) dan uji Complement Fixation Test (CFT). Apabila kedua tes mendapatkan hasil positif, maka dilakukan Test and Slaughter.', NULL, NULL),
('KP002', 'Leptospirosis', 'Pengendalian parasite dilakukan dengan memberikan anthelmintika secara periodik. Pada daerah endemis, berikan anthelmintika pada pedet berusia 10-16 hari Sapi yang terinfeksi dikarantina Berikan kombinasi antibiotic penisilin dan eritromisin. sapi yang berumur 4-6 bulan diberi vaksin', NULL, NULL),
('KP003', 'Demam 3 Hari', 'Pengobatan dilakukan simtomatik dan pencegahan terhadap infeksi sekunder dengan antibiotik yang dilakukan oleh petugas yang berwenang.', NULL, NULL),
('KP004', 'Trichomoniasis', '', NULL, NULL),
('KP005', 'IBR (Infectious Bovine Rhinotracheitis)', '', NULL, NULL),
('KP006', 'Anthrax (Radang Limpa)', 'Vaksinasi spora avirulen secara berkala tiap tahun pada sapi yang belum terkena.Jangan memberi makan sapi dengan akarnya, biasanya hijauan. Berikan rumputnya saja Jika sapi sudah terkena, berikan antibiotik dengan spektrum luas seperti Penisilin G, Oxytetracyclin, Streptomycin Jangan sering – sering kontak fisik dengan ternak jika tidak benar – benar darurat Hewan yang sudah mati jangan dibedah, jangan memegang langsung bagian luka. Langsung kubur saja bila perlu bakar bangkainya', NULL, NULL),
('KP007', 'Scabies / Kudis', 'Memberikan minyak kelapa dicampur dengan kapur barus kemudian digosokkan pada kulit yang terkena skabies', NULL, NULL),
('KP008', 'Myasis / Borok', '', NULL, NULL),
('KP009', 'Cacingan', 'Obat yang biasanya digunakan oleh dokter hewan adalah dalam jenis benzimidazol, Imida-thiazol dan Avermectin (konsultasi dengan dokter hewan sebelum menggunakan).', NULL, NULL),
('KP010', 'Sapi Ngorok', '', NULL, NULL),
('KP011', 'Surra (Trypanosomiasis/ Penyakit Mubeg)', '', NULL, NULL),
('KP012', 'Diarre', 'Untuk menggantikan cairan tubuh yang hilang akibat diare pada ternak dapat diberikan cairan elektrolit terutama air, bikarbonat, sodium, dan potassium atau larutan garam agar tidak terjadi dehidrasi yang lebih lanjut.', NULL, NULL),
('KP013', 'Keracunan Pakan', '', NULL, NULL),
('KP014', 'Kembung Bloat ', 'Memberikan anti bloat yang mengandung dimethicone serta minyak nabati yang berasal dari kacang tanah. Minyak nabati bisa disuntikkan pada sapi yang terkena bloat. Atau dapat di konsultasikan pada dokter hewan untuk pemakaian obat yang cocok.', NULL, NULL),
('KP015', 'Pneumonia', '', NULL, NULL),
('KP016', 'Arthitis Dan Synovitis', '', NULL, NULL),
('KP017', 'Pink Eye', 'Selaput lendir dan katup mata menjadi bengkak Kemungkinan muncul opasitas pada mata, Tahi mata mungkin menjadi mucopurulen, Keluarnya air mata yang terus menerus', NULL, NULL),
('KP018', 'Mastitis ', '1. Menjaga kandang untuk tetap bersih. 2. Memakai antiseptik guna pencelupan puting susu saat sebelum dan setelah pemerahan. 3. Memberikan antibiotik berspek trum misalnya peniciline - streptomicine atau Suanovil (spiramycine).', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rekam_medik`
--

CREATE TABLE `rekam_medik` (
  `id_rekam_medik` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_hp` varchar(18) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tanggal_konsultasi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `foto`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '1645169887_icon.png', NULL, '$2y$10$4dQ.sNC72poRP6Vvaz1.ZeQxoV2qnncolzND07BUsPUwyVuj2sDo.', 'du9HKzLpcSPqT5ofOhBPT6R1ldmxj06LlKjg3prH1XFFyCpJBAaiVXpEyNop', NULL, '2022-02-18 00:38:07'),
(2, 'tes', 'tes@gmail.com', '1645082706_foto.jpg', NULL, '$2y$10$P92B2IRCVNnJ.MGUHorW1.Zz30ny63dlxzzgknzzMRKhchvVAD4Y2', NULL, '2022-02-17 00:25:06', '2022-02-17 00:25:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gejala_penyakit_gejala_foreign` (`id_gejala`),
  ADD KEY `gejala_penyakit_penyakit_foreign` (`id_penyakit`);

--
-- Indexes for table `pakar`
--
ALTER TABLE `pakar`
  ADD PRIMARY KEY (`id_pakar`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `rekam_medik`
--
ALTER TABLE `rekam_medik`
  ADD PRIMARY KEY (`id_rekam_medik`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `pakar`
--
ALTER TABLE `pakar`
  MODIFY `id_pakar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rekam_medik`
--
ALTER TABLE `rekam_medik`
  MODIFY `id_rekam_medik` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD CONSTRAINT `fk_gejala` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_penyakit` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
