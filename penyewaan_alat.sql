-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Bulan Mei 2025 pada 08.01
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penyewaan_alat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_detail_transaksi`
--

CREATE TABLE `master_detail_transaksi` (
  `id` int(11) NOT NULL,
  `kode_transaksi` text NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `tgl_pinjam` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `durasi` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `denda` int(11) NOT NULL,
  `jaminan` text NOT NULL,
  `no_jaminan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_detail_transaksi`
--

INSERT INTO `master_detail_transaksi` (`id`, `kode_transaksi`, `id_produk`, `id_pelanggan`, `harga`, `qty`, `tgl_pinjam`, `tgl_selesai`, `durasi`, `total_harga`, `total`, `create_at`, `status`, `review`, `denda`, `jaminan`, `no_jaminan`) VALUES
(1, 'TRX032CCAE2', 6, 6, 5000, 1, '2023-12-17 15:00:00', '2023-12-18 08:00:00', 1, 5000, 5000, '2023-12-18 08:23:15', 'SUDAH CUSTOMER', '', 0, '', ''),
(2, 'TRX032CCAE2', 8, 6, 14000, 1, '2023-12-17 15:00:00', '2023-12-18 08:00:00', 1, 14000, 14000, '2023-12-18 08:23:15', 'SUDAH CUSTOMER', '', 0, '', ''),
(3, 'TRX1112346A', 9, 6, 5000, 2, '2023-12-18 15:00:00', '2023-12-20 14:00:00', 2, 10000, 20000, '2023-12-18 08:29:11', 'SUDAH CUSTOMER', '', 0, '', ''),
(4, 'TRX1112346A', 16, 6, 5000, 2, '2023-12-18 15:00:00', '2023-12-20 14:00:00', 2, 10000, 20000, '2023-12-18 08:29:11', 'PROSES', '', 0, '', ''),
(5, 'TRX92C5CA32', 7, 6, 10000, 2, '2023-12-18 15:00:00', '2023-12-19 14:00:00', 1, 20000, 20000, '2023-12-18 08:43:38', 'PROSES', '', 0, '', ''),
(6, 'TRX92C5CA32', 12, 6, 8000, 2, '2023-12-18 15:00:00', '2023-12-19 14:00:00', 1, 16000, 16000, '2023-12-18 08:43:38', 'PROSES', '', 0, '', ''),
(7, 'TRX0E5B7244', 14, 6, 10000, 1, '2023-12-18 15:00:00', '2023-12-19 22:00:00', 1, 10000, 10000, '2023-12-18 08:53:11', 'PROSES', '', 0, '', ''),
(8, 'TRX0E5B7244', 15, 6, 10000, 1, '2023-12-18 15:00:00', '2023-12-19 22:00:00', 1, 10000, 10000, '2023-12-18 08:53:11', 'PROSES', '', 0, '', ''),
(9, 'TRX0E5B7244', 5, 6, 8000, 1, '2023-12-18 15:00:00', '2023-12-19 22:00:00', 1, 8000, 8000, '2023-12-18 08:53:11', 'PROSES', '', 0, '', ''),
(10, 'TRX3FB9B8DE', 11, 6, 10000, 3, '2023-12-18 15:00:00', '2023-12-18 22:00:00', 0, 30000, 0, '2023-12-18 08:58:12', 'SUDAH CUSTOMER', '', 0, '', ''),
(11, 'TRXF2BA6B74', 2, 7, 40000, 1, '2023-12-18 20:00:00', '2023-12-20 19:00:00', 2, 40000, 80000, '2023-12-18 13:55:56', 'PROSES', '', 0, '', ''),
(12, 'TRXF2BA6B74', 4, 7, 3000, 1, '2023-12-18 20:00:00', '2023-12-20 19:00:00', 2, 3000, 6000, '2023-12-18 13:55:56', 'PROSES', '', 0, '', ''),
(13, 'TRXBAEFEDEA', 1, 8, 25000, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 50000, 0, '2024-08-16 04:40:22', 'PROSES', '', 0, '', ''),
(14, 'TRX582BE4B5', 1, 9, 25000, 1, '2025-05-05 10:00:00', '2025-05-07 09:00:00', 2, 25000, 50000, '2025-05-05 04:24:23', 'PROSES', '', 0, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_isian_review`
--

CREATE TABLE `master_isian_review` (
  `id` int(11) NOT NULL,
  `kode_transaksi` text NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_pertanyaan` int(11) NOT NULL,
  `jawaban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_keranjang_belanja`
--

CREATE TABLE `master_keranjang_belanja` (
  `id` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `harga` int(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `tgl_pinjam` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_keranjang_belanja`
--

INSERT INTO `master_keranjang_belanja` (`id`, `id_produk`, `id_pelanggan`, `harga`, `qty`, `total`, `tgl_pinjam`, `tgl_selesai`, `date_created`) VALUES
(5, 1, 8, 25000, 1, 25000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-08-16 04:46:27'),
(6, 2, 8, 40000, 1, 40000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2024-08-16 04:49:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_nilai_rekomendasi_review`
--

CREATE TABLE `master_nilai_rekomendasi_review` (
  `id` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama` text NOT NULL,
  `nilai` int(11) NOT NULL,
  `rangking` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_nilai_rekomendasi_review`
--

INSERT INTO `master_nilai_rekomendasi_review` (`id`, `id_produk`, `nama`, `nilai`, `rangking`) VALUES
(1, 5, 'Paket camping ke bromo', 93, 1),
(2, 1, 'Tenda Camping Murah ', 89, 2),
(3, 2, 'Kompor Camping', 78, 3),
(4, 2, 'Kompor Camping', 76, 4),
(5, 5, 'Paket camping ke bromo', 63, 5),
(6, 3, 'Sleeping bag camping', 57, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_pelanggan`
--

CREATE TABLE `master_pelanggan` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `hp` text NOT NULL,
  `email` text NOT NULL,
  `alamat` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL,
  `jaminan` text NOT NULL,
  `no_jaminan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_pelanggan`
--

INSERT INTO `master_pelanggan` (`id`, `nama`, `hp`, `email`, `alamat`, `username`, `password`, `status`, `jaminan`, `no_jaminan`) VALUES
(1, 'Zeaid', '62847758857676', 'email1@gmail.com', 'Alamat Jombang', 'user1', '24c9e15e52afc47c225b757e7bee1f9d', '', '', ''),
(2, 'Yaqin', '6287866163545', 'email2@gmail.com', 'Jombang', 'user2', '7e58d63b60197ceb55a1c487989a3720', '', '', ''),
(3, 'nama', '628488586', 'email3@gmail.com', 'kskksjsj', 'user3', '92877af70a45fd6a2ed7fe81e1236b78', '', '', ''),
(4, 'Muhammad Ali', '62599699797', 'email4@gmail.com', 'ALAMAT', 'user4', '3f02ebe3d7929b091e3d8ccfde2f3bc6', '', '', ''),
(5, 'KaSetya', '628123123456', 'kasetya@gmail.com', 'Bandung', 'user5', '0a791842f52a0acfbb3a783378c066b8', '', '', ''),
(6, 'aiman', '6285295602045', 'trisna.hadi18@gmail.com', 'ciwaruga', 'aiman', '24775f4c046499d6494654258352495a', '', 'ktm', '8899898989898'),
(7, 'auffan', '6285295602045', 'trisna.hadi18@gmail.com', 'ciwaruga', 'auffan', '070280e3c3da00f75f3de1078ba04c13', '', 'ktm', '8899898989898'),
(8, 'ahmad', '6282290502020', 'ahmad@gmail.com', 'jl kelapa 2', 'ahamad', '61243c7b9a4022cb3f8dc3106767ed12', '', 'ktp', '31323324'),
(9, 'alfin', '6289792436789', 'alfin@gmail.com', 'jl kelapa 2', 'alfin', '6ff92dee2a93081f0192781f156fa0e9', '', 'ktp', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_pertanyaan_review`
--

CREATE TABLE `master_pertanyaan_review` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_pertanyaan_review`
--

INSERT INTO `master_pertanyaan_review` (`id`, `pertanyaan`, `bobot`) VALUES
(1, 'Bagaimana kualitas produk ini ?', 10),
(2, 'Bagaimana kualitas produk ini ?', 10),
(3, 'Bagaimana kecepatan pelayanan toko ?', 70),
(4, 'Kondisi barang dan harga sewa apakah sesuai ?', 10),
(5, 'Apakah lokasi toko sangat nyaman dan aman ?', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_produk`
--

CREATE TABLE `master_produk` (
  `id` int(5) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `harga` int(10) NOT NULL,
  `gambar` text NOT NULL,
  `deskripsi` text NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_produk`
--

INSERT INTO `master_produk` (`id`, `nama`, `harga`, `gambar`, `deskripsi`, `stock`) VALUES
(1, 'Tenda Single Layer Kap 2 Orang', 25000, '2023-12-18-images (2).jpg', 'Tenda Single Layer Kap 2 Orang', 50),
(2, 'Tenda Double Layer Kap 4 Orang', 40000, '2023-12-18-images (1).jpg', 'Tenda Double Layer Kap 4 Orang', 50),
(3, 'Tenda Double Layer Kap 7 Orang', 75000, '2023-12-18-images (4).jpg', 'Tenda Double Layer Kap 7 Orang', 50),
(4, 'Matras', 3000, '2023-12-18-download (4).jpg', 'Matras', 10),
(5, 'Sleeping Bag', 8000, '2023-12-18-images (3).jpg', 'Sleeping Bag', 100),
(6, 'Kompor Kotak', 5000, '2023-12-18-download (5).jpg', 'Kompor Kotak', 50),
(7, 'Flysheet 3x4M', 10000, '2023-12-18-download (6).jpg', 'Flysheet 3x4M', 50),
(8, 'Tas Carrier 60L', 14000, '2023-12-18-download (7).jpg', 'Tas Carrier 60L', 20),
(9, 'Ponco', 5000, '2023-12-18-download (8).jpg', 'Ponco', 70),
(10, 'Headlamp', 5000, '2023-12-18-download (9).jpg', 'Headlamp', 75),
(11, 'Nesting / Cooking Sett', 10000, '2023-12-18-download (10).jpg', 'Nesting / Cooking Sett', 25),
(12, 'Tongkat Hiking / Treking pole', 8000, '2023-12-18-download (11).jpg', 'Tongkat Hiking / Treking pole', 55),
(13, 'Kompan Air Portable 5L', 5000, '2023-12-18-download (12).jpg', 'Kompan Air Portable 5L', 45),
(14, 'Kursi Lipat', 10000, '2023-12-18-download (13).jpg', 'Kursi Lipat', 35),
(15, 'Meja Lipat', 10000, '2023-12-18-download (14).jpg', 'Meja Lipat', 34),
(16, 'Hammock', 5000, '2023-12-18-download (15).jpg', 'Hammock', 32);

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_tracking_pengiriman`
--

CREATE TABLE `master_tracking_pengiriman` (
  `id` int(11) NOT NULL,
  `status` text NOT NULL,
  `catatan` text NOT NULL,
  `tanggal` datetime NOT NULL,
  `kode_transaksi` text NOT NULL,
  `nm_pengirim` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_tracking_pengiriman`
--

INSERT INTO `master_tracking_pengiriman` (`id`, `status`, `catatan`, `tanggal`, `kode_transaksi`, `nm_pengirim`) VALUES
(1, 'dikirim', 'kirim', '2025-05-05 04:26:14', 'TRX582BE4B5', 'ijal'),
(2, 'Barang sudah diterima', 'barang sudah di terima', '2025-05-05 04:26:59', 'TRX582BE4B5', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_transaksi`
--

CREATE TABLE `master_transaksi` (
  `id` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `kode_transaksi` text NOT NULL,
  `total_barang` int(11) NOT NULL,
  `total_transaksi` int(11) NOT NULL,
  `nama` text NOT NULL,
  `hp` text NOT NULL,
  `alamat` text NOT NULL,
  `pengiriman` text NOT NULL,
  `catatan` text NOT NULL,
  `biaya_kirim` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `pembayaran` text NOT NULL,
  `type_pembayaran` text NOT NULL,
  `created_at` datetime NOT NULL,
  `status` text NOT NULL,
  `bank` text NOT NULL,
  `struk` text NOT NULL,
  `token` text NOT NULL,
  `jaminan` text NOT NULL,
  `no_jaminan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_transaksi`
--

INSERT INTO `master_transaksi` (`id`, `id_pelanggan`, `kode_transaksi`, `total_barang`, `total_transaksi`, `nama`, `hp`, `alamat`, `pengiriman`, `catatan`, `biaya_kirim`, `grand_total`, `pembayaran`, `type_pembayaran`, `created_at`, `status`, `bank`, `struk`, `token`, `jaminan`, `no_jaminan`) VALUES
(1, 6, 'TRX032CCAE2', 2, 19000, 'aiman', '6285295602045', 'ciwaruga', 'ambil_sendiri', 'nnnn', 0, 19000, 'cash', '', '2023-12-17 08:23:15', 'LUNAS', '', '', '', '', ''),
(2, 6, 'TRX1112346A', 2, 20000, 'aiman', '6285295602045', 'ciwaruga', 'ambil_sendiri', 'hhhh', 0, 40000, 'cash', '', '2023-12-18 08:29:11', 'PROSES', '', '', '', 'ktm', '8899898989898'),
(3, 6, 'TRX92C5CA32', 2, 18000, 'aiman', '6285295602045', 'ciwaruga', 'ambil_sendiri', 'nnnnnn', 0, 36000, 'cash', 'Di_Depan', '2023-12-18 08:43:38', 'PROSES', '', '', '', 'ktm', '8899898989898'),
(4, 6, 'TRX0E5B7244', 3, 28000, 'aiman', '6285295602045', 'ciwaruga', 'ambil_sendiri', 'ttttt', 0, 28000, 'cash', 'Di_BELAKANG', '2023-12-18 08:53:11', 'PROSES', '', '', '', 'ktm', '8899898989898'),
(5, 6, 'TRX3FB9B8DE', 1, 0, 'aiman', '6285295602045', 'ciwaruga', 'ambil_sendiri', 'ffffff', 0, 0, 'cash', 'Di_DEPAN', '2023-12-18 08:58:12', 'PROSES', '', '', '', 'ktm', '8899898989898'),
(6, 7, 'TRXF2BA6B74', 2, 86000, 'auffan', '6285295602045', 'ciwaruga', 'ambil_sendiri', 'ttttt', 0, 86000, 'cash', 'Di_BELAKANG', '2023-12-18 13:55:56', 'PROSES', '', '', '', 'ktm', '8899898989898'),
(7, 8, 'TRXBAEFEDEA', 1, 0, 'ahmad', '6282290502020', 'jl kelapa 2', 'ambil_sendiri', 'test', 0, 0, 'cash', 'Di_DEPAN', '2024-08-16 04:40:22', 'PROSES', '', '', '', 'ktp', '31323324'),
(8, 9, 'TRX582BE4B5', 1, 50000, 'alfin', '6289792436789', 'jl kelapa 2', 'ambil_sendiri', 'KTP', 0, 50000, 'cash', 'Di_DEPAN', '2025-05-05 04:24:23', 'PROSES', '', '', '', 'ktp', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_user`
--

CREATE TABLE `master_user` (
  `user_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_user`
--

INSERT INTO `master_user` (`user_id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Toko Penyewaan', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `master_detail_transaksi`
--
ALTER TABLE `master_detail_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_isian_review`
--
ALTER TABLE `master_isian_review`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_keranjang_belanja`
--
ALTER TABLE `master_keranjang_belanja`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_nilai_rekomendasi_review`
--
ALTER TABLE `master_nilai_rekomendasi_review`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_pelanggan`
--
ALTER TABLE `master_pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_pertanyaan_review`
--
ALTER TABLE `master_pertanyaan_review`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_produk`
--
ALTER TABLE `master_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_tracking_pengiriman`
--
ALTER TABLE `master_tracking_pengiriman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_transaksi`
--
ALTER TABLE `master_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `master_detail_transaksi`
--
ALTER TABLE `master_detail_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `master_isian_review`
--
ALTER TABLE `master_isian_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `master_keranjang_belanja`
--
ALTER TABLE `master_keranjang_belanja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_nilai_rekomendasi_review`
--
ALTER TABLE `master_nilai_rekomendasi_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `master_pelanggan`
--
ALTER TABLE `master_pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `master_pertanyaan_review`
--
ALTER TABLE `master_pertanyaan_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `master_produk`
--
ALTER TABLE `master_produk`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `master_tracking_pengiriman`
--
ALTER TABLE `master_tracking_pengiriman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `master_transaksi`
--
ALTER TABLE `master_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
