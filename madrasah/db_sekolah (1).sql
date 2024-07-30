-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2024 pada 16.05
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `foto`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 'galeri1717584755.jpg', 'Foto Lama', '2024-06-05 10:52:35', NULL),
(3, 'galeri1718418371.jpg', 'Foto Lama 1', '2024-06-15 02:26:11', NULL),
(4, 'galeri1718418384.png', 'Foto Lama 2', '2024-06-15 02:26:24', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nama`, `keterangan`, `gambar`, `created_at`, `update_at`) VALUES
(1, 'Tes', 'tes', 'guru1718365714.jpg', '2024-06-14 11:48:34', '2024-06-14 13:48:34'),
(2, 'Tes', 'tes', 'guru1718365695.jpg', '2024-06-14 11:48:15', '2024-06-14 13:48:15'),
(14, 'Sss', 'sss', 'guru1718365688.png', '2024-06-14 11:48:08', '2024-06-14 13:48:08'),
(15, 'Tes', 'tes', 'guru1718365681.jpg', '2024-06-14 11:48:01', '2024-06-14 13:48:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id`, `judul`, `keterangan`, `gambar`, `created_at`, `updated_at`, `created_by`) VALUES
(2, 'Besok Libur', 'hari nasional', 'informasi1717588074.png', '2024-06-05 11:47:54', NULL, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `npsn_nsm` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `desa` text NOT NULL,
  `kecamatan` text NOT NULL,
  `kabupaten` text NOT NULL,
  `npwp` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `nosk` varchar(50) NOT NULL,
  `tgl_sk` varchar(50) NOT NULL,
  `penyelenggara` varchar(50) NOT NULL,
  `sk_menkumham` varchar(100) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `tentang_sekolah` text NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `foto_sekolah` varchar(50) NOT NULL,
  `google_maps` text NOT NULL,
  `nama_kepsek` varchar(50) NOT NULL,
  `foto_kepsek` varchar(50) NOT NULL,
  `sambutan_kepsek` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `npsn_nsm`, `email`, `website`, `telepon`, `alamat`, `desa`, `kecamatan`, `kabupaten`, `npwp`, `status`, `nosk`, `tgl_sk`, `penyelenggara`, `sk_menkumham`, `logo`, `favicon`, `tentang_sekolah`, `visi`, `misi`, `foto_sekolah`, `google_maps`, `nama_kepsek`, `foto_kepsek`, `sambutan_kepsek`, `created_at`, `updated_at`) VALUES
(1, 'MTS AL-MUHAJIRIN', '5667', 'mtsalmuhajirin123@gmail.com', 'www.wwkwkwk.com', '1234567890', 'Jl.Laksdya Leo Wattimena km.16', 'Waiheru', 'Baguala', 'Kota Ambon', '02.676.621.2-941.000', 'Swasta', 'kd.25.03/1/pp.03.2/126/2012', '25 maret 2012', 'Yayasan Pendidikan Islam Al-Muhajirin', '21345543434', 'logo1718279119.jpg', 'favicon1718279119.jpg', '<div align=\"center\" id=\"isPasted\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:466.35pt;border-collapse:collapse;mso-yfti-tbllook:1184;  mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\" width=\"622\"><tbody><tr style=\"mso-yfti-irow:-1;mso-yfti-firstrow:yes;mso-yfti-lastfirstrow:yes;   height:16.05pt;\"><td style=\"width:117.05pt;border:none;border-bottom:   solid #7F7F7F 1.0pt;mso-border-bottom-themecolor:text1;mso-border-bottom-themetint:   128;mso-border-bottom-alt:solid #7F7F7F .5pt;mso-border-bottom-themecolor:   text1;mso-border-bottom-themetint:128;background:white;mso-background-themecolor:   background1;padding:0cm 5.4pt 0cm 5.4pt;height:16.05pt;\" valign=\"top\" width=\"156\"><p align=\"right\" style=\"margin-bottom:0cm;text-align:right;   line-height:normal;mso-yfti-cnfc:517;\"><br></p></td><td style=\"width:349.3pt;border:none;border-bottom:solid #7F7F7F 1.0pt;   mso-border-bottom-themecolor:text1;mso-border-bottom-themetint:128;   mso-border-bottom-alt:solid #7F7F7F .5pt;mso-border-bottom-themecolor:text1;   mso-border-bottom-themetint:128;background:white;mso-background-themecolor:   background1;padding:0cm 5.4pt 0cm 5.4pt;height:16.05pt;\" valign=\"top\" width=\"466\"><p style=\"margin-bottom:0cm;line-height:normal;mso-yfti-cnfc:   1;\">IDENTITAS MADRASAH</p></td></tr><tr style=\"mso-yfti-irow:0;height:16.05pt;\"><td style=\"width:117.05pt;border:none;border-right:solid #7F7F7F 1.0pt;   mso-border-right-themecolor:text1;mso-border-right-themetint:128;mso-border-right-alt:   solid #7F7F7F .5pt;mso-border-right-themecolor:text1;mso-border-right-themetint:   128;background:white;mso-background-themecolor:background1;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"156\"><p align=\"right\" style=\"margin-bottom:0cm;text-align:right;   line-height:normal;mso-yfti-cnfc:68;\">NAMA MADRASAH</p></td><td style=\"width:349.3pt;background:#F2F2F2;mso-background-themecolor:   background1;mso-background-themeshade:242;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"466\"><p style=\"margin-bottom:0cm;line-height:normal;mso-yfti-cnfc:   64;\">MTs. AL-MUHAJIRIN</p></td></tr><tr style=\"mso-yfti-irow:1;height:16.8pt;\"><td style=\"width:117.05pt;border:none;border-right:solid #7F7F7F 1.0pt;   mso-border-right-themecolor:text1;mso-border-right-themetint:128;mso-border-right-alt:   solid #7F7F7F .5pt;mso-border-right-themecolor:text1;mso-border-right-themetint:   128;background:white;mso-background-themecolor:background1;padding:0cm 5.4pt 0cm 5.4pt;   height:16.8pt;\" valign=\"top\" width=\"156\"><p align=\"right\" style=\"margin-bottom:0cm;text-align:right;   line-height:normal;mso-yfti-cnfc:4;\">NPSN/NSM</p></td><td style=\"width:349.3pt;padding:0cm 5.4pt 0cm 5.4pt;   height:16.8pt;\" valign=\"top\" width=\"466\"><p style=\"margin-bottom:0cm;line-height:normal;\">60105587/121281710003</p></td></tr><tr style=\"mso-yfti-irow:2;height:16.05pt;\"><td style=\"width:117.05pt;border:none;border-right:solid #7F7F7F 1.0pt;   mso-border-right-themecolor:text1;mso-border-right-themetint:128;mso-border-right-alt:   solid #7F7F7F .5pt;mso-border-right-themecolor:text1;mso-border-right-themetint:   128;background:white;mso-background-themecolor:background1;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"156\"><p align=\"right\" style=\"margin-bottom:0cm;text-align:right;   line-height:normal;mso-yfti-cnfc:68;\">NPWP</p></td><td style=\"width:349.3pt;background:#F2F2F2;mso-background-themecolor:   background1;mso-background-themeshade:242;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"466\"><p style=\"margin-bottom:0cm;line-height:normal;mso-yfti-cnfc:   64;\">02.676.621.2-941.000</p></td></tr><tr style=\"mso-yfti-irow:3;height:16.05pt;\"><td style=\"width:117.05pt;border:none;border-right:solid #7F7F7F 1.0pt;   mso-border-right-themecolor:text1;mso-border-right-themetint:128;mso-border-right-alt:   solid #7F7F7F .5pt;mso-border-right-themecolor:text1;mso-border-right-themetint:   128;background:white;mso-background-themecolor:background1;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"156\"><p align=\"right\" style=\"margin-bottom:0cm;text-align:right;   line-height:normal;mso-yfti-cnfc:4;\">STATUS MADRASAH</p></td><td style=\"width:349.3pt;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"466\"><p style=\"margin-bottom:0cm;line-height:normal;\">SWASTA</p></td></tr><tr style=\"mso-yfti-irow:4;height:16.05pt;\"><td style=\"width:117.05pt;border:none;border-right:solid #7F7F7F 1.0pt;   mso-border-right-themecolor:text1;mso-border-right-themetint:128;mso-border-right-alt:   solid #7F7F7F .5pt;mso-border-right-themecolor:text1;mso-border-right-themetint:   128;background:white;mso-background-themecolor:background1;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"156\"><p align=\"right\" style=\"margin-bottom:0cm;text-align:right;   line-height:normal;mso-yfti-cnfc:68;\">WAKTU BELAJAR</p></td><td style=\"width:349.3pt;background:#F2F2F2;mso-background-themecolor:   background1;mso-background-themeshade:242;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"466\"><p style=\"margin-bottom:0cm;line-height:normal;mso-yfti-cnfc:   64;\">PAGI</p></td></tr><tr style=\"mso-yfti-irow:5;height:16.05pt;\"><td style=\"width:117.05pt;border:none;border-right:solid #7F7F7F 1.0pt;   mso-border-right-themecolor:text1;mso-border-right-themetint:128;mso-border-right-alt:   solid #7F7F7F .5pt;mso-border-right-themecolor:text1;mso-border-right-themetint:   128;background:white;mso-background-themecolor:background1;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"156\"><p align=\"right\" style=\"margin-bottom:0cm;text-align:right;   line-height:normal;mso-yfti-cnfc:4;\">NO.SK PENDIRIAN</p></td><td style=\"width:349.3pt;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"466\"><p style=\"margin-bottom:0cm;line-height:normal;\">Kd.25.03/1/PP.03.2/126/2012</p></td></tr><tr style=\"mso-yfti-irow:6;height:16.8pt;\"><td style=\"width:117.05pt;border:none;border-right:solid #7F7F7F 1.0pt;   mso-border-right-themecolor:text1;mso-border-right-themetint:128;mso-border-right-alt:   solid #7F7F7F .5pt;mso-border-right-themecolor:text1;mso-border-right-themetint:   128;background:white;mso-background-themecolor:background1;padding:0cm 5.4pt 0cm 5.4pt;   height:16.8pt;\" valign=\"top\" width=\"156\"><p align=\"right\" style=\"margin-bottom:0cm;text-align:right;   line-height:normal;mso-yfti-cnfc:68;\">TGL.SK PENDIRIAN</p></td><td style=\"width:349.3pt;background:#F2F2F2;mso-background-themecolor:   background1;mso-background-themeshade:242;padding:0cm 5.4pt 0cm 5.4pt;   height:16.8pt;\" valign=\"top\" width=\"466\"><p style=\"margin-bottom:0cm;line-height:normal;mso-yfti-cnfc:   64;\">25 MARET 2012</p></td></tr><tr style=\"mso-yfti-irow:7;height:16.05pt;\"><td style=\"width:117.05pt;border:none;border-right:solid #7F7F7F 1.0pt;   mso-border-right-themecolor:text1;mso-border-right-themetint:128;mso-border-right-alt:   solid #7F7F7F .5pt;mso-border-right-themecolor:text1;mso-border-right-themetint:   128;background:white;mso-background-themecolor:background1;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"156\"><p align=\"right\" style=\"margin-bottom:0cm;text-align:right;   line-height:normal;mso-yfti-cnfc:4;\">TAHUN BERDIRI</p></td><td style=\"width:349.3pt;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"466\"><p style=\"margin-bottom:0cm;line-height:normal;\">2007</p></td></tr><tr style=\"mso-yfti-irow:8;height:16.05pt;\"><td style=\"width:117.05pt;border:none;border-right:solid #7F7F7F 1.0pt;   mso-border-right-themecolor:text1;mso-border-right-themetint:128;mso-border-right-alt:   solid #7F7F7F .5pt;mso-border-right-themecolor:text1;mso-border-right-themetint:   128;background:white;mso-background-themecolor:background1;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"156\"><p align=\"right\" style=\"margin-bottom:0cm;text-align:right;   line-height:normal;mso-yfti-cnfc:68;\">AKREDITASI</p></td><td style=\"width:349.3pt;background:#F2F2F2;mso-background-themecolor:   background1;mso-background-themeshade:242;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"466\"><p style=\"margin-bottom:0cm;line-height:normal;mso-yfti-cnfc:   64;\">A</p></td></tr><tr style=\"mso-yfti-irow:9;height:16.05pt;\"><td style=\"width:117.05pt;border:none;border-right:solid #7F7F7F 1.0pt;   mso-border-right-themecolor:text1;mso-border-right-themetint:128;mso-border-right-alt:   solid #7F7F7F .5pt;mso-border-right-themecolor:text1;mso-border-right-themetint:   128;background:white;mso-background-themecolor:background1;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"156\"><p align=\"right\" style=\"margin-bottom:0cm;text-align:right;   line-height:normal;mso-yfti-cnfc:4;\">PENYELENGGARA</p></td><td style=\"width:349.3pt;padding:0cm 5.4pt 0cm 5.4pt;   height:16.05pt;\" valign=\"top\" width=\"466\"><p style=\"margin-bottom:0cm;line-height:normal;\">YAYASAN PENDIDIKAN ISLAM AL-MUHAJIRIN</p></td></tr><tr style=\"mso-yfti-irow:10;mso-yfti-lastrow:yes;height:16.8pt;\"><td style=\"width:117.05pt;border:none;border-right:solid #7F7F7F 1.0pt;   mso-border-right-themecolor:text1;mso-border-right-themetint:128;mso-border-right-alt:   solid #7F7F7F .5pt;mso-border-right-themecolor:text1;mso-border-right-themetint:   128;background:white;mso-background-themecolor:background1;padding:0cm 5.4pt 0cm 5.4pt;   height:16.8pt;\" valign=\"top\" width=\"156\"><p align=\"right\" style=\"margin-bottom:0cm;text-align:right;   line-height:normal;mso-yfti-cnfc:68;\">SK MENKUMHAM</p></td><td style=\"width:349.3pt;background:#F2F2F2;mso-background-themecolor:   background1;mso-background-themeshade:242;padding:0cm 5.4pt 0cm 5.4pt;   height:16.8pt;\" valign=\"top\" width=\"466\"><p style=\"margin-bottom:0cm;line-height:normal;mso-yfti-cnfc:   64;\">AHU-0037154.AH.01.04.TAHUN20016</p></td></tr></tbody></table></div><p><br></p>', '<p>Terwujudnya Madrasah Yang Religius,Berprestasi, dan Disiplin</p>', '<p align=\"center\" id=\"isPasted\" style=\"margin:0cm;text-align:center;background:white;\">1. mewujudkan pembelajaran pembiasaan islam.</p><p align=\"center\" style=\"margin:0cm;text-align:center;background:white;  font-optical-sizing: auto;box-sizing: border-box;font-variant-ligatures: normal;  font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-stroke-width: 0px;  text-decoration-thickness: initial;text-decoration-style: initial;text-decoration-color: initial;  word-spacing:0px;\">2. meningkatkan kemampuan peserta didik dalam bidang akademik dan non akademik.</p><p align=\"center\" style=\"margin:0cm;text-align:center;background:white;  font-optical-sizing: auto;box-sizing: border-box;font-variant-ligatures: normal;  font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-stroke-width: 0px;  text-decoration-thickness: initial;text-decoration-style: initial;text-decoration-color: initial;  word-spacing:0px;\">3. meningkatkan profesionalisme dan kompetensi pendidikan dan tenaga pendidikan.</p><p align=\"center\" style=\"margin:0cm;text-align:center;background:white;  font-optical-sizing: auto;box-sizing: border-box;font-variant-ligatures: normal;  font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-stroke-width: 0px;  text-decoration-thickness: initial;text-decoration-style: initial;text-decoration-color: initial;  word-spacing:0px;\">4. memotivasi dan menghasilkan peserta didik yang berprestasi.</p><p align=\"center\" style=\"margin:0cm;text-align:center;background:white;  font-optical-sizing: auto;box-sizing: border-box;font-variant-ligatures: normal;  font-variant-caps: normal;orphans: 2;widows: 2;-webkit-text-stroke-width: 0px;  text-decoration-thickness: initial;text-decoration-style: initial;text-decoration-color: initial;  word-spacing:0px;\">5. meningkatkan hubungan yang harmonis antar warga masyarakat dan madrasah.</p>', 'foto-sekolah.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3784.8225761137223!2d128.2191596747325!3d-3.6238142963502646!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2d6cef42774f95e3%3A0xfc03e0e6abd0f02e!2sMTs%20Al-Muhajirin%20Waiheru%20Ambon!5e1!3m2!1sid!2sid!4v1718421146745!5m2!1sid!2sid', 'Joko', 'kepsek1718280235.jpg', '<p>sambutan kepala sekolah madrasah almuhajirin</p>', '2024-06-06 00:47:55', '2024-06-22 04:28:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('Super Admin','Admin') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `level`, `created_at`, `updated_at`) VALUES
(3, 'kepala sekolah', 'sa', 'fcea920f7412b5da7be0cf42b8c93759', 'Super Admin', '2024-05-28 11:43:23', '2024-05-30 13:34:00'),
(6, 'roni', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2024-05-28 11:43:39', NULL),
(15, 'firman', 'admin2', 'fcea920f7412b5da7be0cf42b8c93759', 'Admin', '2024-05-29 10:28:58', NULL),
(18, 'nisa', 'admin3', '25d55ad283aa400af464c76d713c07ad', 'Admin', '2024-05-29 10:34:08', NULL),
(19, 'Iwan', 'admin4', '25f9e794323b453885f5181f1b624d0b', 'Admin', '2024-05-29 10:35:51', '2024-05-29 14:24:00'),
(20, 'Eko', 'admin5', 'e807f1fcf82d132f9bb018ca6738a19f', 'Admin', '2024-05-29 11:05:01', '2024-05-29 14:29:00'),
(27, 'Ma\'ruf', 'admin9', 'fcea920f7412b5da7be0cf42b8c93759', 'Admin', '2024-05-30 10:55:55', NULL),
(28, 'Udin S', 'admin8', 'fcea920f7412b5da7be0cf42b8c93759', 'Admin', '2024-05-30 11:12:44', '2024-06-11 04:29:17'),
(29, 'Bla', 'admin0', '4297f44b13955235245b2497399d7a93', 'Admin', '2024-06-11 02:30:03', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
