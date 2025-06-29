-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jan 2024 pada 12.59
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tiketonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `film` varchar(30) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `waktu` varchar(30) NOT NULL,
  `tik_dewasa` int(11) NOT NULL,
  `tik_anak` int(11) NOT NULL,
  `total_bayar` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id`, `film`, `tanggal`, `waktu`, `tik_dewasa`, `tik_anak`, `total_bayar`) VALUES
(12, 'Jumanji The Next Level', 'Selasa, 31 Desember 2023', '00:00', 4, 9, 'Rp 300900'),
(17, 'Toy Story 4', 'Minggu, 22 Desember 2023', '14:00', 1, 2, 'Rp 71400'),
(18, 'Avengers', 'Rabu, 25 Desember 2023', '19:00', 2, 0, 'Rp 81600'),
(19, 'Parasite', 'Kamis, 26 Desember 2023', '12:00', 1, 2, 'Rp 71400'),
(20, 'Jumanji The Next Level', 'Senin, 6 Januari 2024', '19:00', 2, 0, 'Rp 81600'),
(21, 'Avengers End Game', 'Jumat, 20 Desember 2023', '08.00', 1, 2, 'Rp 71400'),
(22, 'Jumanji The Next Level', 'Minggu, 22 Desember 2023', '12:00', 2, 1, 'Rp 96900'),
(23, 'Spiderman Far From Home', 'Senin, 23 Desember 2023', '12:00', 2, 1, 'Rp 96900');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nm_depan` varchar(20) NOT NULL,
  `nm_belakang` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nm_depan`, `nm_belakang`, `username`, `password`, `alamat`) VALUES
(6, 'sepuh', 'puh', 'sepuh', '1234', 'ciputat'),
(7, 'akmal', 'akmal', 'akmal', 'akmal', 'akmal'),
(8, 'AFDAL', 'AFDAL', 'AFDAL', 'AFDAL', 'CIPUTAT'),
(9, 'king', 'afdhal', 'king afdhal', 'king', 'ciputat timur'),
(10, 'aydin', 'jajang', 'jajang', 'jajang', 'ciputat timur'),
(11, 'junaedi', 'abdullah', 'jun', 'jun', 'ciputat');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
