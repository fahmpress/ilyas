-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 22. Januari 2015 jam 02:09
-- Versi Server: 5.0.51
-- Versi PHP: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `atk-store`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbadmin`
--

CREATE TABLE IF NOT EXISTS `tbadmin` (
  `id` int(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbadmin`
--

INSERT INTO `tbadmin` (`id`, `username`, `password`, `nama`) VALUES
(72, 'yas', 'yas', 'ilyas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbarang`
--

CREATE TABLE IF NOT EXISTS `tbbarang` (
  `kodebarang` int(20) NOT NULL auto_increment,
  `kodeuser` int(20) NOT NULL,
  `kodetoko` varchar(20) NOT NULL,
  `namabarang` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `tglmasukbarang` date NOT NULL,
  `tglkeluarbarang` date NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `berat` int(20) NOT NULL,
  `stok` int(20) NOT NULL,
  `rating` int(20) NOT NULL,
  PRIMARY KEY  (`kodebarang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `tbbarang`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `tbkirim`
--

CREATE TABLE IF NOT EXISTS `tbkirim` (
  `kodetransaksi` int(20) NOT NULL,
  `kodekurir` varchar(20) NOT NULL,
  `kodelokasi` varchar(20) NOT NULL,
  `totalharga` int(30) NOT NULL,
  PRIMARY KEY  (`kodetransaksi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbkirim`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `tbkurir`
--

CREATE TABLE IF NOT EXISTS `tbkurir` (
  `kodekurir` varchar(20) NOT NULL,
  `namakurir` varchar(40) NOT NULL,
  `harga` int(20) NOT NULL,
  PRIMARY KEY  (`kodekurir`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbkurir`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `tblokasi`
--

CREATE TABLE IF NOT EXISTS `tblokasi` (
  `kodelokasi` int(20) NOT NULL,
  `namalokasi` varchar(40) NOT NULL,
  `harga` int(30) NOT NULL,
  PRIMARY KEY  (`kodelokasi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblokasi`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsewa`
--

CREATE TABLE IF NOT EXISTS `tbsewa` (
  `kodesewa` varchar(30) NOT NULL,
  `harga` int(20) NOT NULL,
  `durasi` int(30) NOT NULL,
  PRIMARY KEY  (`kodesewa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbsewa`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `tbtoko`
--

CREATE TABLE IF NOT EXISTS `tbtoko` (
  `kodetoko` varchar(20) NOT NULL,
  `namatoko` varchar(30) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `kodeuser` int(20) NOT NULL auto_increment,
  `kodelokasi` varchar(20) NOT NULL,
  `kodesewa` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY  (`kodetoko`,`kodeuser`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `tbtoko`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `tbtransaksi`
--

CREATE TABLE IF NOT EXISTS `tbtransaksi` (
  `kodetransaksi` int(20) NOT NULL,
  `kodebarang` int(20) NOT NULL,
  `kodetoko` varchar(20) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `tgltransaksi` date NOT NULL,
  `subtotal` int(20) NOT NULL,
  `kodeuser` int(20) NOT NULL,
  PRIMARY KEY  (`kodetransaksi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbtransaksi`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE IF NOT EXISTS `tbuser` (
  `kodeuser` int(20) NOT NULL auto_increment,
  `username` varchar(40) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `tgllahir` date NOT NULL,
  `jeniskelamin` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` int(11) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  PRIMARY KEY  (`kodeuser`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `tbuser`
--

