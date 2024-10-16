-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Agu 2024 pada 06.57
-- Versi server: 10.6.18-MariaDB-0ubuntu0.22.04.1
-- Versi PHP: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_website_voyager`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agendas`
--

CREATE TABLE `agendas` (
  `id` int(10) UNSIGNED NOT NULL,
  `agenda` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `perihal` varchar(255) DEFAULT NULL,
  `jadwal` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `agendas`
--

INSERT INTO `agendas` (`id`, `agenda`, `tanggal`, `waktu`, `tempat`, `perihal`, `jadwal`, `created_at`, `updated_at`) VALUES
(1, 'Rapat Kerja dengan Divisi Hukum KPU seluruh Indonesia', '2015-04-21', '08.30 s/d Selesai', 'Ruang Komisi I, II dan III', ' Rapat Kerja', '<p>Penyuluhan/Pembekalan dalam rangka penyusunan dokumen hukum untuk penyelenggara KPU dalam rangka Pilkada serentak 2015</p>', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(2, 'adfasdf', '2015-04-05', '14.00 - selesai', 'Ruang Rapat Komisi II DPR RI, Gedung DPR, Senayan, Jakart.', 'Rapat Umum', '<p>RDP dengan Komisi II DPR RI membahas Peraturan KPU terkait Pilkada serentak 2015</p>', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(3, 'Umum - KPU RDP dengan Komisi II DPR RI', '2015-04-07', '14.00 - Selesai', 'Gedung Nusantara Komisi II DPR RI', 'Rapat Umum', '<p>Rapat Dengar Pendapat KPU - Komisi II DPR RI terkait rancangan PKPU.</p>', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(4, 'Penyerahan DAK2 dari Kemendagri kepada KPU', '2015-04-17', ' 09.00 - Selesai', 'Kantor KPU RI', 'Rapat Kerja', '<p>Ketua Komisi Pemilihan Umum (KPU) RI, Husni Kamil Manik melakukan penandatanganan berita acara penyerahan Data Agregat Kependudukan per-Kecamatan (DAK2) dengan Menteri Dalam Negeri, Tjahjo Kumolo disaksikan oleh Ketua Badan Pengawas Pemilu, Muhammad. D', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(5, 'Doa Bersama Untuk Pemilihan Serentak 2015', '2015-06-06', '19.00 - 21.00 WIB', 'Kantor KPU Provinsi Jambi', 'Doa Bersama', '', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(6, 'Launching Pemilihan Serentak Provinsi Jambi 2015', '2015-06-07', '07.00 - 12.00 WIB', 'Lapangan Kantor Gubernur Jambi', '', '<p>- Launching Pemilihan Serentak 2015</p>\r\n<p>- Pengumuman Pemenang Sayembara Maskot dan Jingle Pemilihan 2015</p>', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(7, 'Penetapan Pasangan Calon Gubernur dan Wakil Gubernur Jambi', '2015-08-24', '09.00 - 12.00 WIB', 'Kantor KPU Provinsi Jambi', '', '<p>KPU Provinsi Jambi akan melaksanakan Penetapan Pasangan Calon Gubernur dan Wakil Gubernur Jambi Tahun 2015 yang telah melalui proses pemeriksaan berkas dan verifikasi. Acara akan dilaksanakan di Kantor KPU Provinsi Jambi. Peserta yang akan hadir adalah', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(8, 'Pengundian dan Pengumuman Nomor Urut Pasangan Calon', '2015-08-25', '09.00 - 14.00 WIB', 'Kantor KPU Provinsi Jambi', 'Pelaksanaan pengambilan nomor urut Pasangan Calon Gubernur dan Wakil Gubernur Jambi Tahun 2015', '<p>Peserta : Kedua Pasangan Calon Gubernur dan Wakil Gubernur, Tim Kampanye, Tim Penghubung, Bawaslu Provinsi Jambi dan Undangan lainnya.</p>\r\n<p>Acara : Pengambilan Nomor Urut Pasangan Calon Gubernur dan Wakil Gubernur Jambi</p>', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(9, 'Konsolidasi Nasional Tahun 2016', '2016-03-02', '', '', 'Konsolidasi Program Sosialisasi dan Peningkatan Partisipasi Masyarakat Tahun 2016', '', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(10, 'asasas', '2017-06-26', '12', 'ddddddddddd 111', 'ddddddddddd 111', '1111', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(11, 'Teknis Penerapan Sertifikasi Elektronk pada Aplikasi e-Office Kab. Tanjung Jabung Timur', '2018-04-23', '', 'Kantor BSSN Jakarta', 'Rapat Teknis Penerapan Sertifikasi Elektronk pada Aplikasi e-Office Kab. Tanjung Jabung Timur di Kantor BSSN Jakarta', 'Kepala Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur Menghadiri rapat Teknis Penerapan Sertifikasi Elektronik pada Aplikasi e-Office Kabupaten Tanjung Jabung Timur di Kantor Badan Siber dan Sandi Negara (BSSN) Jakarta.', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(12, 'Sidang Paripurna Dewan Perwakilan Rakyat Daerah (DPRD) Kabupaten Tanjung Jabung Timur.', '2018-04-27', '09.30', 'Kantor DPRD Kabupaten Tanjung Jabung Timur.', 'Sidang Paripurna', 'Sidang Paripurna dalam rangka Pemandangan Akhir Fraksi DPRD atas laporan Pansus terhadap Hasil Pembahasan LKPJ Kepala Daerah Kabupaten Tanjung Jabung Timur Tahun 2017.\r\n(Pejabat Esselon II, III dan IV).', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(13, 'Undangan Rapat Sosialisasi dan Pembinaan Kelompok Informasi Masyarakat (KIM).', '2018-05-03', '08.00', 'Grand Hotel Jambi', 'Rapat Sosialisasi dan Pembinaan Kelompok Informasi Masyarakat (KIM).', ' Menghadiri Rapat Sosialisasi dan Pembinaan Kelompok Informasi Masyarakat (KIM), \r\n(Kepala Bidang Informasi dan Komunikasi Publik, Kasi Pengolahan Data dan Informasi Publik dan Pengurus KIM).', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(14, 'Rapat Finalisasi dan Penandatanganan Perjanjian Kerja Sama (PKS).', '2018-05-02', '09.00', 'Ruang Rapat Lantai 3 Gedung C, Badan Siber dan Sandi Negara (BSSN) Jakarta', 'Undangan Rapat Finalisasi dan Penandatanganan Perjanjian Kerja Sama (PKS).', ' Rapat Finalisasi dan Penandatanganan Perjanjian Kerja Sama (PKS). dihadiri Kepala Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur.', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(15, 'Rapat Finalisasi dan Penandatanganan Perjanjian Kerja Sama (PKS).', '2018-05-03', '10.00', 'Auditorium Roebiono Kertopati, Badan Siber dan Sandi Negara Jakarta.', 'Undangan Rapat Finalisasi dan Penandatanganan Perjanjian Kerja Sama (PKS).', ' Rapat Finalisasi dan Penandatanganan Perjanjian Kerja Sama (PKS). dihadiri oleh Kepala Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur.', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(16, 'Undangan, Peningkatan Kinerja Badan Amil Zakat Nasional', '2018-05-02', '08.00 wib', 'Aula Rumah Dinas Bupati Kabupaten Tanjung Jabung Timur', 'Undangan Rapat', ' Dalam rangka meningkatkan kinerja Badan Amil Zakat Nasional (BAZNAS) dan unit Pengumpul Zakat Kabupaten Tanjung Jabung Timur, dihadiri kasubbag Keuangan Dinas KOMINFO Kab. Tanjung Jabung Timur.', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(17, 'Upacara HARKITNAS 2018', '2018-05-14', '07.45 wib', 'Halaman Kantor Bupati Kabupaten Tanjung Jabung Timur', 'Upacara gabungan Hari Kebangkitan Nasional 2018', ' Diikuti seluruh Aparatur Sipil Negara (ASN) lingkup pemerintah Kabupaten Tanjung Jabung Timur.', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(18, 'Pasar Tani', '2018-05-02', '09.00 wib', 'Halaman Parkir Kantor Bersama', 'Partisipasi Kunjungan dan Belanja Pada Pasar Tani Kabupaten Tanjung Jabung Timur', ' SURAT EDARAN Sekretariat Daerah Kabupaten Tanjung Jabung Timur Nomor : 500/1167/SE/APPSDA/2018 tentang Partisipasi Kunjungan dan Belanja Pada Pasar Tani Kabupaten Tanjung Jabung Timur.', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(19, 'FGD (Focus Group Discussion)  Sail Berhala', '2018-05-04', '08.30 Wib', 'Ruang Rapat Utama Kantot Bupati Kabupaten Tanjung Jabung Timur.', 'Undangan FGD (Focus Group Discussion)  tentang Hasil Survey Tim Sail Berhala', ' Dalam rangka Sosialisasi Hasil Survey Sail Berhala yang dilaksanakan oleh Tim dari Internasional Rally Organizer dan Anggota Bidang II Tim Percepatan Pengembangan Wisata Bahari Kementerian Pariwisata Republik Indonesia.\r\n', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(20, 'Ratif Saman dan Berdah.', '2018-05-06', '19.00 Wib', 'Kediaman Bapak Raja Muhammad', 'Undangan Ratif Saman dan Bardah', ' Dalam rangka menggali, melestarikan nilai-nilai luhur Budaya serta adat istiadat dan untuk mempromosikan salah satu potensi Wisata Budaya di Kabupaten Tanjung Jabung Timur, Dinas Parbudpora Kab. Tanjung Jabung Timur akan melaksanakan Kegiatan Ratif Saman', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(21, 'Pelantikan Pejabat Pimpinan Tertinggi Sekretaris Daerah di Lingkup Pemerintahan Kabupaten Tanjung Jabung Timur.', '2018-05-09', '09.00 wib', 'Aula Kantor Bupati Tanjung Jabung Timur', 'Undangan Menghadiri Pelantikan', ' Pelantikan Pejabat Pimpinan Tertinggi Sekretaris Daerah di Lingkup Pemerintahan Kabupaten Tanjung Jabung Timur. Dihadiri Kepala Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(22, 'Perlindungan Anak dan Pengendalian Penduduk Provinsi Jambi', '2018-05-07', '09.30 wib', 'Aula Dinas Sosial Kabupaten Tanjung Jabung Timur', 'Perlindungan Anak dan Pengendalian Penduduk Provinsi Jambi', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(23, 'Pembinaan Pengelolaan Arsip dilingkup OPD KAbupaten Tanjung Jabung Timur', '2018-05-09', '08.00 wib', 'Gedung Diklat BKPSDMD Kabupaten Tanjung Jabung Timur', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(24, 'Menindaklanjuti Pembinaan dan Pengembangan Kota Layak Anak (KLA).', '2018-05-07', '09.30 wib', 'Aula Dinas Sosial, Pemberdayaan Perempuan dan Perlindaungan Anak Kabupaten Tanjung Jabung Timur', 'Undangan', ' Menindaklanjuti Surat dari Dinas Pmberdayaan Perempuan, Perlindungan Anak dan Pengendalian Penduduk Provinsi Jambi Nomor : S.194/DPEAP2-3.2/III/2018 tanggal 03 April 2018 Perihal Pembinaan dan Pengembangan Kota Layak Anak (KLA).', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(25, 'Safari Ramadhan 1439 H / 2018 M', '2018-05-15', '', 'Kecamatan dalam wilayah Kanupaten Tanjung Jabung Timur', 'Jadwal Safari Ramadhan 1439 H / 2018 M', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(26, 'Surat Kementerian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi Republik Indonesia', '2018-06-05', '07.00 wib', 'Hotel Aston Jambi, Jl. Sultan Agung No. 99, Telanaipura, Kota Jambi.', 'Pendampingan Penguatan Sistem Akuntabilitas Kinerja Instansi Pemerintah Daerah', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(27, 'Lomba Pawai Obor Malam Takbiran', '2018-06-14', '20.00 Wib', 'Dimulai dari Masjid Nahdlotul Thulab dan berakhir Masjid Agung Nur Addarojat.', 'Lomba Pawai Obar Malam Takbiran', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(28, 'Buka Puasa Bersama', '2018-06-08', '16.00', 'Rumah Dinas Bupati Tanjung Jabung Timur', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(29, 'Arisan Bulanan Gabungan Dharma Wanita dan PKK sekaligus acara Halal Bihalal Kab. Tanjung Jabung Timur', '2018-06-26', '08.30 Wib', 'Gedung PKK Kab. Tanjung Jabung Timur', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(30, 'Rapat Koordinasi Rencana Aksi Program Pemberantasan Korupsi Terintegrasi Priode Sampai Dengan Triwulan II Tahun 2018 Oleh KPK - RI', '2018-06-25', '09.30', 'Ruang Utama Kantor Bupati Tanjung Jabung Timur', 'Undangan', ' Dihadiri Kepala Perangkat Daerah Pemerintah Kab. Tanjung Jabung Timur', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(31, 'Kegiatan Dharma Wanita Persatuan di lingkup Kab. Tanjung Jabung Timur ', '2018-06-26', '08.30 Wib', 'Gedung PKK Kab. Tanjung Jabung Timur', 'Undangan', '1. Arisan Rutin Bulanan\r\n2. Halal Bihalal \r\n3. Musdalub (Musyawarah Daerah Luar Biasa)', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(32, 'Rapat Operator (TEPRA) Tim Evaluasi dan Pengawasan Realisasi Anggaran Kab. Tanjung Jabung Timur', '2018-06-28', '09.30 wib', 'Aula Badan Keuangan Daerah Kab. Tanjung Jabung Timur', 'Rapat', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(33, 'Sosialisasi Pencegahan Korupsi', '2018-07-05', '09.30 wib', 'Aula Kantor Bupati Kbupaten Tanjung Jabung Timur', 'Kunjungan Tim KPK RI ke Kabupaten Tanjung Jabung Timur', ' Seluruh Pimpinan Perangkat Daerah Kabupaten Tanjung Jabung Timur', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(34, 'Halalbihalal bersama Unsur Pemerintah Kab. Tanjung Jabung Timur', '2018-07-05', '13.30 WIb', 'Rumah Dinas Bupati Tanjung Jabung Timur', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(35, 'Launching Badan Usaha Milik Desa (BUMDesa) dan BUMDes Plus Bank Jambi Tingkat Kabupaten Tanjung Jabung Timur Tahun 2018', '2018-07-13', '08.00 WIB', 'BUMDesa MUKTITIMA Desa Lambur II Kec. Muara Sabak Timur, Kab. Tanjung Jabung Timur', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(36, 'Rapat Koordinasi Forum Komunikasi Tanggung Jawab Sosial dan Lingkup Perusahaan Kab. Tanjung Jabung Timur', '2018-07-16', '09.0p WIB', 'Ruang rapat utama Kantor Bupati Kab.Tanjung Jabung Timur', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(37, 'Pertemuan Teknis dan Focus Group Discussion (FGD) Perubahan RPJMD Kab. Tanjung Jabung Timur 2016-2021', '2018-07-25', '09.00 WIB', 'Aula Bappeda Kab. Tanjung Jabung Timur', 'Pertemuan Teknis', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(38, 'Pertemuan Teknis dan Focus Group Discussion (FGD) Perubahan RPJMD Kab. Tanjung Jabung Timur 2016-2021', '2018-08-01', '09.30 WIB', 'Ruang Sabak Room Bappeda Kab. Tanjung Jabung Timur', 'Focus Group Discussion (FGD) Rancangan Awal Perubahan RPJMD', ' Focus Group Discussion (FGD) Rancangan Awal Perubahan RPJMD\r\nTanggal 1 Agustus s/d 8 Agustus 2018, Jam 09.30 WIB s/d Selesai, Bertempat di Ruang Sabak Room Bappeda Kabupaten Tanjung Jabung Timur', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(39, 'Rapat Pemantapan Pelaksanaan Kegiatan HKN XXV, BBGRM XV, HKG-PKK XLVI, HAN dan Gelar TTG Tingkat Provinsi Jambi', '2018-08-07', '08.00 WIB', 'Aula Kantor Bupati Tanjung Jabung Timur', 'Undangan', ' Dihadiri Kepala Dinas Komunikasi dan Informatika Kab. Tanjung Jabung Timur', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(40, 'Festival Anak Shaleh Indonesia (FASI) ke XI Tahun 2018', '2018-10-22', '08.00 wib', 'Masjid Agung Nur Ad-Darojat Kab. Tanjung Jabung Timur', 'Pembukaan Festival Anak Shaleh Indonesia (FASI) ke XI Tahun 2018', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(41, 'Festival Anak Shaleh Indonesia (FASI) ke XI Tahun 2018', '2018-10-22', '16.30 wib', 'Masjid Agung Nur Ad-Darojat Kab. Tanjung Jabung Timur', 'Penutupan Festival Anak Shaleh Indonesia (FASI) ke XI Tahun 2018', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(42, 'Penilaian Lomba P2WKSS Tingkat Provinsi Jambi Tahun 2018', '2018-11-13', '08.00 WIB', 'Kantor Lurah Teluk Dawan Kecamatan. Muara Sabak Barat', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(43, 'Focus Group Bappeda (FGD) Kab. Tanjung Jabung Timur dalam rangka penyusunan Dokumen Rencana Induk Pembangunan Industri Kabupaten Tanjung Jabung Timur', '2018-11-19', '09.00 WIB', 'Aula Kantor Bappeda Kab. Tanjung Jabung Timur', 'Undangan Focus Group Discussion', ' Dihadiri oleh Kepala Dinas beserta Sekretaris Dinas Komunikasi dan Informatika Kab. Tanjung Jabung Timur', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(44, 'Pembukaan Bimbingan Teknis dan Pelatihan Administrasi PKK', '2018-11-21', '08.00 WIB', 'Gedung Sekretariat PKK', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(45, 'Musrengang Kecamatan Rantau Rasau Tahun 2019', '2019-01-17', '09:00', 'Aula Kantor Camat Rantau Rasau', 'Undangan Musrendang Kecamatan Rantau Rasau Tahun 2019', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(46, 'Musrenbang RKPD Kab/Kota di Kecamatan Tahun 2019', '2019-01-14', '08:30', 'Aula Kantor Camat Mendahara', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(47, 'Musrenbang RKPD Kabupaten di Kecamatan Tahun 2019', '2019-01-16', '08.30 WIB', 'Ruang Kelas SDN No. 39/V Kelurahan Sungai Lokan Kecamatan Sadu Kabupaten Tanjung Jabung Timur.', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(48, 'Musrenbang RKPD di Kecamatan Kuala Jambi', '2019-01-16', '09.00 WIB', 'Musrenbang RKPD di Kecamatan Kuala Jambi Tahun 2019', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(49, 'Musrenbang RKPD Kab. Tanjung Jabung Timur Tingkat Kecamatan Nipah Panjang Tahun 2019', '2019-01-21', '08.30 WIB', 'Aula Kantor Camat Nipah Panjang', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(50, 'Musrenbang Kecamatan untuk Tahun Anggaran 2020', '2019-01-18', '08.00 WIB', 'Gedung Nasional Muara Sabak Ilir Kecamatan Muara Sabak timur.', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(51, 'Rapat Persiapan Event Festipal Kampung Laut', '2019-06-13', '09.00 WIB', 'Kantor Bupati Tanjung Jabung Timur', 'Rapat Persiapan Event Festipal Kampung Laut', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(52, 'Undangan Rakor Pimpinan Organisasi Perangkat Daerah', '2019-06-18', '09.00 WIB', 'Bappeda Kabupaten Tanjung Jabung Timur', 'Dalam Penyusunan Dokumen Peta Resiko Bencana', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(53, 'Rapat Paripurna Keduabelas Masa Persidangan Ketiga Tahun 2019', '2019-06-18', '10.00 WIB', 'DPRD Kabupaten Tanjung Jabung Timur', 'Dalam Rangka Penyampaian Jawaban Bupati terhadap pandangan Umum Fraksi-fraksi DPRD atas Ranperda', ' Pakaian Sipil Harian', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(54, 'Pembukaan Kegiatan 02SN/FLS2N Tingkat SD Tahun 2019', '2019-06-25', '09.00 WIB', 'Lapangan SDN 07/X Parit Culum Kecamatan Muara Sabak Barat', 'Undangan Pembukaan Kegiatan 02SN/FLS2N Tingkat SD Tahun 2019', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(55, 'Halal Bihalal 1440 H/2019 M, Arisan Rutin Bulanan DWP', '2019-06-25', '08.30 WIB', 'Aula Kantor Dinas Pekerjaan Umum dan Penataan Ruang Kabupaten Tanjung Jabung Timur', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(56, 'Rapat Pembahasan Mengenai ZAkat Pendapatan dan Jasa Tahun 2019', '2019-06-25', '09.00 WIB', 'Ruang Rapat Utama Kantor Bupati Tajung Jabung Timur', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52'),
(57, 'Upacara Peringatan HANI Tahun 2019', '2019-06-26', '07.30 WIB', 'Lapangan Kantor Bupati Tanjung Jabung Timur', 'Undangan', ' ', '2024-07-11 07:21:52', '2024-07-11 07:21:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aplikasi_terkaits`
--

CREATE TABLE `aplikasi_terkaits` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_aplikasi` varchar(255) DEFAULT NULL,
  `link_aplikasi` varchar(255) DEFAULT NULL,
  `logo_aplikasi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `aplikasi_terkaits`
--

INSERT INTO `aplikasi_terkaits` (`id`, `nama_aplikasi`, `link_aplikasi`, `logo_aplikasi`, `created_at`, `updated_at`) VALUES
(1, 'Aplikasi e-Office', 'https://surat.tanjabtimkab.go.id/', 'aplikasi-terkaits\\July2024\\ojUOXiyPfSlEjrn0RVfM.jpg', '2024-07-10 03:04:00', '2024-07-10 03:34:08'),
(2, 'Layanan Aspirasi dan Pengaduan Online Rakyat', 'https://www.lapor.go.id/', 'aplikasi-terkaits\\July2024\\oM1AKN7uQLMuEiJSDnib.png', '2024-07-10 03:20:58', '2024-07-10 03:20:58'),
(3, 'Sistem Arsip Dokumen', 'https://sadu.tanjabtimkab.go.id/index.php/login', 'aplikasi-terkaits\\July2024\\9OYPH7k41Xzm4rvvgxZf.jpg', '2024-07-10 03:33:00', '2024-07-10 03:37:48'),
(4, 'Sabak Smart Center', 'https://play.google.com/store/apps/details?id=com.tanjabtimkab.presensi&hl=en', 'aplikasi-terkaits\\July2024\\9bumDYZZH8mDcBFgTcyr.jpg', '2024-07-10 07:03:35', '2024-07-10 07:03:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `bannernya` varchar(255) DEFAULT NULL,
  `tautan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `banners`
--

INSERT INTO `banners` (`id`, `judul`, `deskripsi`, `bannernya`, `tautan`, `created_at`, `updated_at`) VALUES
(1, 'Hari Kebangkitan Nasional 2024', NULL, 'banners\\June2024\\Jh7M1hHFFwiB5UKRrXyy.jpg', NULL, '2024-06-26 07:15:06', '2024-06-26 07:15:06'),
(2, 'HARI RAYA IDUL ADHA 1445 H', NULL, 'banners\\June2024\\OpUudR7CCNoQBoHw677T.jpg', NULL, '2024-06-26 07:31:02', '2024-06-26 07:31:02'),
(3, 'HANI 2024', NULL, 'banners\\June2024\\XilPegF45VLp5LlxcdJk.jpg', NULL, '2024-06-26 07:48:49', '2024-06-26 07:48:49'),
(4, 'HANI 2024 bupati', NULL, 'banners\\June2024\\kYlrbi9qPXC5NLMp4zgo.jpg', NULL, '2024-06-26 07:58:49', '2024-06-26 07:58:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner_standings`
--

CREATE TABLE `banner_standings` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `tautan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `banner_standings`
--

INSERT INTO `banner_standings` (`id`, `judul`, `deskripsi`, `banner`, `tautan`, `created_at`, `updated_at`) VALUES
(1, 'Hari Anti Narkoba', NULL, 'banner-standings\\June2024\\ZyvdZgmivEykGyaiZcKG.jpg', NULL, '2024-06-26 02:44:00', '2024-06-26 04:20:42'),
(2, 'Visi dan Misi Dinas Komunikasi dan Informatika', NULL, 'banner-standings\\June2024\\yfJzrSbJxkhrupc3tcux.jpg', NULL, '2024-06-26 03:02:22', '2024-06-26 03:02:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beritas`
--

CREATE TABLE `beritas` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `subjudul` varchar(255) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `text_foto` varchar(255) DEFAULT NULL,
  `isi_berita` longtext DEFAULT NULL,
  `kredit` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `sumber` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dibaca` varchar(255) DEFAULT NULL,
  `kategori_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `beritas`
--

INSERT INTO `beritas` (`id`, `judul`, `subjudul`, `headline`, `foto`, `text_foto`, `isi_berita`, `kredit`, `penulis`, `editor`, `sumber`, `youtube`, `created_at`, `updated_at`, `dibaca`, `kategori_id`) VALUES
(1, 'Evaluasi Penyelenggaran Statistik Sektoral Tahun 2024', 'Evaluasi Penyelenggaran Statistik Sektoral Tahun 2024', 'Evaluasi Penyelenggaran Statistik Sektoral', 'beritas\\June2024\\VnjtdsyTJCMYpNeW3onZ.jpg', 'Humas Diskominfo Tanjabtim', '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Muara Sabak, Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur mengadakan Rapat koordinasi Evaluasi Penyelenggaran Statistik Sektoral (EPSS) Tahun 2024 di Badan Pusat Statistik Kabupaten Tanjung Jabung Timur, Rabu (24/04).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Rapat koordinasi ini merupakan tindaklanjut proses evaluasi penyelenggaraan statistik sektoral (EPSS) yang sedang berjalan, saat ini telah memasuki tahapan pengisian bukti dukung kegiatan statistik oleh 2 Lokus OPD yaitu Dinas Ketahanan Panggan dan Dinas Tanaman Pangan Hortikultura.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">selanjutnya akan dilaksanakan penilaian Mandiri oleh Tim Penilai Internal (TPI) yaitu Dinas komunikasi dan informatika sebagai walidata dan BAPPEDA sebagai Sekretariat Satu Data Indonesia.</p>', NULL, NULL, NULL, 'Humas DInas Komunikasi dan Informatika Kab Tanjabtim', NULL, '2024-04-24 08:34:00', '2024-07-18 14:59:53', '21', '1'),
(2, 'RAPAT KOORDINASI IPKD TAHUN 2023', 'RAPAT KOORDINASI IPKD TAHUN 2023', 'RAPAT KOORDINASI IPKD', 'beritas\\June2024\\lIMs3j5lWEaBIVZEkjc9.jpg', 'Humas Diskominfo Tanjabtim', '<p>Muara Sabak, pada rapat Koordinasi IPKD Tahun 2023 Dinas Komunikasi dan Informatika Kab. Tanjab Timur mendapatkan penghargaan atas partisipasinya sebagai anggota tim teknis penginputan data indeks pengelolaan keuangan daerah (IPKD) tahun 2022 sehingga Kab. Tanjab Timur memperoleh total indeks 80,502 kategori baik dengan nilai A, Selasa (19/12/23)</p>', NULL, NULL, NULL, NULL, NULL, '2023-12-19 08:35:00', '2024-07-16 15:29:32', '1', '1'),
(7, 'Sekda Ikuti Upacara Virtual HUT Bhayangkara', NULL, NULL, 'beritas\\July2024\\SpFFr9pHPV9492Io0q0y.jpg', NULL, '<div id=\"pagehead\" class=\"box-single-content clearfix\" style=\"box-sizing: border-box; margin-bottom: 20px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"editor-content\" style=\"box-sizing: border-box;\">\r\n<div dir=\"auto\" style=\"box-sizing: border-box;\">Muarasabak&nbsp;- Sekretaris Daerah Tanjab Timur, Sapril, mengikuti secara virtual upacara peringatan HUT Bhayangkara Ke-76 tahun yang dipusatkan di Kampus Akademi Kepolisian (AKPOL) Semarang, Selasa (5/7), di Aula Parama Satwika Polres Tanjung Jabung Timur.</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box;\">&nbsp;</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box;\">Dimana, yang bertindak selaku Inspektur upacara adalah Presiden Republik Indonesia Joko Widodo.</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box;\">&nbsp;</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box;\">Peringatan HUT Bhayangkara kali ini mengangkat tema Polri Yang Presisi Mendukung Pemulihan Ekonomi dan Reformasi Struktural Untuk Mewujudkan Indonesia Tangguh - Indonesia Tumbuh.</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box;\">&nbsp;</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box;\">Kegiatan ini dihadiri oleh Unsur Forkopimda, Para Kepala OPD di lingkup Pemkab Tanjab Timur, seluruh PJU Polres Tanjab Timur dan serta tamu undangan lainnya.</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box;\">&nbsp;</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box;\">Dalam sambutannya, selain mengucapkan selamat HUT Bhayangkara yang ke-76, Sapril mewakili Pemkab Tanjab Timur mengucapkan rasa terima kasih atas apa yang selama ini telah dilakukan oleh Polri khususnya Polres Tanjab Timur beserta jajaran untuk Kabupaten Tanjab Timur dan masyarakat.</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box;\">&nbsp;</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box;\">\"Salah satu contoh, dapat kita ambil hikmah dalam penanganan Covid-19. Dimana peran serta TNI, Polri, Pemkab dan seluruh stakeholder terkait serta unsur elemen masyarakat yang ada di Kabupaten ini dapat berkolaborasi dan bersinergi dengan baik,\" ucapnya.</div>\r\n</div>\r\n</div>\r\n<div class=\"clearfix\" style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<div class=\"linename\" style=\"box-sizing: border-box; float: left; width: 832.5px; border-bottom: 1px solid rgb(0, 19, 71); color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>', NULL, NULL, NULL, NULL, NULL, '2022-07-07 03:46:00', '2024-07-15 03:46:55', NULL, '1'),
(8, 'Bupati Tinjau Vaksin PMK', NULL, NULL, 'beritas\\July2024\\WYFIrTj1lAhVpKSmsbiZ.jpg', NULL, '<div dir=\"auto\" style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Muarasabak -&nbsp;Menjelang Hari Raya Idul Adha 1443 H, berbagai upaya untuk mencegah rantai penularan Penyakit Mulut dan Kuku (PMK) bagi ternak dan hewan kurban terus dilakukan secara progresif di Kabupaten Tanjung Jabung Timur. Bupati Tanjab Timur Romi Hariyanto, bersama unsur Forkompimda serta OPD melakukan peninjauan pelaksanaan penyuntikan vaksin PMK dan pemberian vitamin bagi ternak sapi yang dipusatkan di kandang milik masyarakat Desa Catur Rahayu Kecamatan Dendang, Senin (4/7)</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Kegiatan vaksinasi ternak yang dilakukan adalah langkah tepat untuk mencegah penularan PMK pada hewan ternak. &rdquo;Kegiatan vaksin PMK merupakan upaya pencegahan dan bertujuan untuk memutus penyebaran virus PMK tersebut\". Ujar Bupati</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Bupati juga berharap agar wabah PMK segera teratasi dengan adanya vaksin. Di samping vaksinasi untuk pencegahan penularan, peternak juga diharapkan bisa melakukan penanganan mandiri terhadap ternak yang sakit. Tutup Bupati.</div>', NULL, NULL, NULL, NULL, NULL, '2022-07-07 03:50:00', '2024-07-15 03:50:49', NULL, '1'),
(9, 'Kelima Kali, Tanjabtim WTP', NULL, NULL, 'beritas\\July2024\\Ddnx51erZFFoi8xUWezD.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Muarasabak- Pemerintah Kabupaten Tanjung Jabung Timur kembali berhasil mempertahankan opini Wajar Tanpa Pengecualian (WTP) ke-5 kalinya. WTP kali ini diberikan BPK RI berdasarkan hasil pengelolaan keuangan TA. 2021. Bupati Tanjung Jabung Timur Romi Hariyanto pun menerima langsung penghargaan WTP tersebut dari Ketua BPK RI Perwakilan Provinsi Jambi, Rio Tirta S.E., M.Acc., CSFA, di Aula BPK RI Perwakilan Provinsi Jambi, Senin siang (23/5).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Romi Hariyanto usai penyerahan LHP menyebutkan, apa yang diraih Pemkab Tanjung Jabung Timur ini tidak terlepas dari dukungan dan arahan dari BPK RI. Dalam pengelolaan sistem keuangan di lingkungan Pemkab Tanjabtim juga tidak terlepas dari kerja keras OPD agar pengelolaan keuangan Pemkab lebih akuntabel. Serta, kata Romi, penghargaan ini juga karena dukungan legislatif yang senantiasa mengawasi pelaksanaan kebijakan pengelolaan keuangan daerah.<br style=\"box-sizing: border-box;\">&lsquo;&rsquo;Kami sangat bersyukur dan berterimakasih kepada semua pihak, hingga kami dapat mempertahankan WTP kelima ini. Apa yang diraih ini tidak terlepas dari dukungan dan arahan BPKRI, DPRD yang selalu mengawasi kebijakan Pemerintah Daerah dan kerja keras seluruh OPD,&rsquo;&rsquo; ujar Romi.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Meski demikian, Romi tetap meminta kepada seluruh OPD untuk tidak mudah berpuas diri atas capaian yang diraih saat ini. Ia minta OPD untuk tetap terus mempertankan dan meningkatkan sistem pengelolaan keuangan lebih baik lagi.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Ini sangat penting bagi Pemkab untuk mewujudkan Pemerintahan yang bersih dan transfaran demi kesejahteraan masyarakat,&rsquo;&rsquo; katanya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Tampak hadir di BPK RI Perwakilan Jambi selain Romi ada Ketua DPRD Mahrup, Sekda Sapril, Kaban BKD Nusirwan dan inspektur Hadi Firdaus</p>', NULL, NULL, NULL, NULL, NULL, '2022-05-24 03:52:00', '2024-07-15 03:53:29', NULL, '1'),
(10, 'Bupati Sambut Kunker Wagub Jambi Dalam Rangka Halal Bi Halal Dengan Pemkab', NULL, NULL, 'beritas\\July2024\\GdqKCprjQ8c0NPHuJFcm.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Muarasabak- Bupati Tanjung Jabung Timur Romi Hariyanto menyambut kedatangan Wakil Gubernur Jambi Abdullah Sani dalam rangka Halal Bi Halal Pemerintah Provinsi Jambi dengan Pemerintah Kabupaten Tanjung Jabung Timur di Pendopo Rumah Dinas Bupati, Senin (23/5). dalam sambutanya Bupati mengucapkan terimakasih atas kedatangan Wagub mewakili Pemerintah Provinsi dalam kunjungan kerja dalam rangka berhahalbihalal bersama Pemkab Tanjung Jabung Timur. Bupati juga menyampaikan, masih dalam suasana bulan syhawal Bupati juga menyampaikan permohonan maaf lahir dan batin atas nama pribadi, Pemerintah Kabupaten dan masyarakat Kabupaten Tanjung Jabung Timur.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\'Kami mengucapkan terimakasih atas kunjungannya dan sehubungan masih dalam bulan syhawal, kami mengucapkan minal aidin walfaizin,\' kata Bupati.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Acara yang dihadiri Forkompimda, tokoh masyarakat dan seluruh Kepala OPD lingkup Pemerintah Kabupaten Tanjung Jabung Timur diakhiri dengan acara salam-salaman dan ramah tamah</p>', NULL, NULL, NULL, NULL, NULL, '2022-05-24 03:56:00', '2024-07-15 03:56:41', NULL, '1'),
(11, 'Bupati Dan Wabup Lepas Kontingen POPDA Jambi 2022', NULL, NULL, 'beritas\\July2024\\yqcse668pi1272r3Br7J.jpg', NULL, '<p><span style=\"color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Muarasabak &ndash; Bupati dan Wakil Bupati Tanjung Jabung Timur Romi Hariyanto dan Robby Nahliansyah, melepas keberangkatan Kontingen Pekan Olahraga Pelajar Daerah (POPDA) Jambi 2022, yang berlangsung di kantor Bupati Tanjab Timur, Senin (23/5).</span><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Kepada kontingen, baik atlit, pelatih, dan official, Bupati berpesan agar selalu menjaga kondisi fisik dan mental agar tetap prima sehingga saat bertanding dapat tampil dengan baik dan diharapkan dapat meraih hasil yang memuaskan.</span><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Saat bertanding, para atlit juga diharapkan mengeluarkan segenap kemampuan dan keterampilan terbaik untuk meraih dan mengukir prestasi yang dicita-citakan serta tidak lupa berdoa supaya diberikan yang terbaik oleh Allah SWT.</span><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&ldquo;Saya minta para atlit menjaga kekompakan dan kebersamaan antar sesama serta menjalin persaudaraan dan pertemanan dengan para atlit maupun pelatih dari kontingen daerah lain dalam menambah wawasan dan pengalaman di dunia olahraga,&rdquo; pinta Bupati</span><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Wakil Bupati yang juga merupakan Ketua Askab PSSI Tanjab Timur meminta Khusus untuk para pelatih, official dan pengurus wajib memperhatikan atlit bola kaki terkait, Wabup meminta untuk selalu memonitor dan mengevaluasi setiap hasil pertandingan dari para atlet guna dilakukan perbaikan dan peningkatan dalam pembinaan berikutnya.</span><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">&ldquo;Para atlit-atlit muda berbakat dan berpotensi nantinya dapat menjadi andalan daerah di masa mendatang,&rdquo; harap Wabup.</span><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Bupati dan Wakil Bupati dua periode ini meminta peserta kontingen untuk senantiasa menjaga dan memelihara nama baik daerah dengan cara mentaati setiap aturan dan tata tertib di arena pertandingan serta menjunjung tinggi adat istiadat dan budaya masyarakat di mana pun berada.</span><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Seperti diketahui, POPDA Tahun 2022 yang dilaksanakan di Kota Jambi ini akan dilangsungkan selama 5 hari sejak tanggal 23 hingga 27 Mei 2022 mendatang</span></p>', NULL, NULL, NULL, NULL, NULL, '2022-05-23 03:57:00', '2024-07-15 03:57:55', NULL, '1'),
(12, 'Bupati Tanjab Timur Pimpin Upacara Hari Kebangkitan Nasional ke 114', NULL, NULL, 'beritas\\July2024\\DYqk13jVbUUkx6YhygOs.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">MUARASABAK &ndash; Bupatio Tanjung Jabung Timur Romi Hariyanto memimpin upacara memperingati hari Kebangkitan Nasional ke 114 Tahun 2022 di halaman Kantor Bupati Tanjung Jabung Timur, Jumat (20/5).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Dalam sambutan Menteri Komunikasi dan Informatika RI yang dibacakan Bupati Tanjung Jabung Timur mengatakan, peringatan Hari Kebangkitan Nasional yang ke-114 pada tahun 2022 ini mengangkat tema &ldquo;Ayo Bangkit Bersama&rdquo;. Ini mmerupakan bentuk seruan agar kita bisa bangkit bersama dari pandemi COVID-19 yang sudah melanda dua tahun terakhir. Peringatan Hari Kebangkitan Nasional ini hendaknya tidak hanya sebagai seremonial saja, akan tetapi dapat dipahami esensinya sejarah Kebangkitan Nasional. Untuk itu, mari sejenak kita telaah sisi historis di balik peringatan Hari Kebangkitan Nasional, pada tanggal 20 Mei 1948 Presiden Soekarno menetapkan hari lahirnya perkumpulan Boedi Oetomo sebagai Hari Bangkitnya Nasionalisme Indonesia.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Di masa itu, terdapat ancaman perpecahan antargolongan dan ideologi di tengah perjuangan Indonesia mempertahankan kemerdekaan dari Belanda yang ingin kembali berkuasa. Sehingga, semangat persatuan yang digagas oleh Boedi Oetomo diharapkan menjadi spirit dalam menghimpun kekuatan dan mencegah perpecahan bangsa,&rsquo;&rsquo; katanya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Dilanjutkan Bupati, Boedi Oetomo adalah organisasi pertama di Indonesia yang bersifat nasional dan modern dalam sejarah pergerakan kemerdekaan. Didirikan oleh Dr. Sutomo beserta para mahasiswa STOVIA (School tot Opleiding van Indische Artsen) pada tahun 1908; Boedi Oetomo lahir untuk mengejar ketertinggalan bangsa Indonesia dari bangsa-bangsa lain. Organisasi yang menyatukan pergerakan di Indonesia dari yang bersifat kedaerahan menjadi nasional dengan tujuan akhir kemerdekaan.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Tujuan didirikannya Boedi Oetomo, jelas Bupati, tercetus dalam kongres pertamanya ialah untuk menjamin kehidupan sebagai bangsa yang terhormat dengan fokus pergerakan di bidang pendidikan, pengajaran, dan kebudayaan. Boedi Oetomo telah meletakkan tiga cita-cita bagi kebangkitan nasional yakni memerdekakan cita-cita kemanusiaan, memajukan nusa dan bangsa, serta mewujudkan kehidupan bangsa yang terhormat dan bermartabat di mata dunia. &lsquo;&rsquo;Kelahiran Boedi Oetomo mempelopori terciptanya organisasi pergerakan di masa selanjutnya seperti Indische Partij, Perhimpunan Indonesia dan Muhammadiyah,&rsquo;&rsquo; katanya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Semangat Boedi Oetomo, kata Bupati, sangat masih relevan untuk kita kontekstualisasikan pada kehidupan berbangsa saat ini di tengah krisis pandemi COVID-19 dan konflik Ukraina &ndash; Rusia yang menyebabkan kondisi ekonomi global serta geopolitik menjadi tidak stabil, kita patut memaknai kebangkitan nasional sebagai upaya kolektif bangsa untuk memperkuat persatuan bangsa.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Pada sisi penanganan COVID-19 ditingkat nasional, kita dapat melihat bahwa upaya kita kian menunjukkan hasil yang positif, ditunjukkan dengan kasus baru harian di bawah 400 kasus dan total kasus aktif yang sudah berada di bawah angka 5.000 kasus (Data per 13 Mei 2022). Selain itu, jelas Bupati, capaian vaksinasi COVID-19 dosis kedua juga sudah mencapai 79 persen. &lsquo;&rsquo;Namun kita patut tetap waspada dan terus meningkatkan disiplin protokol kesehatan. Penanganan COVID-19 yang membaik berimplikasi pada berangsur kembalinya aktivitas masyarakat secara normal. Secara perlahan, hal ini mendorong pemulihan perekonomian nasional. Perekonomian Indonesia pada triwulan I-2022 terhadap triwulan I-2021 mengalami pertumbuhan sebesar 5,01 persen (y-on-y). Hampir seluruh lapangan usaha tumbuh positif, kecuali Administrasi Pemerintahan dan Jasa Pendidikan,&rsquo;&rsquo; ujarnya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Dari sisi produksi, tiga Lapangan Usaha mengalami pertumbuhan tinggi yakni: 1) Sektor Usaha Transportasi dan Pergudangan 15,79% 2) Sektor Jasa-jasa lain 8,29% 3) Sektor Informasi dan Komunikasi 7,14% Mari terus kita bekerja keras dan bersinergi menjaga, mempertahankan dan meningkatkan perekonomian nasional indonesia. Saudara &ndash; Saudari Sebangsa dan Setanah Air, Momentum yang baik ini makin diperkuat dengan peran Indonesia sebagai Presidensi G20 tahun 2022. Pada Presidensi G20 tahun ini, Indonesia mengusung tema &ldquo;Recover Together, Recover Stronger&rdquo;, dengan tujuan dapat memberikan spirit baru dalam mewujudkan tatanan dunia yang dapat memberikan kesejahteraan dan kemakmuran yang inklusif, serta menjamin keberlanjutan kehidupan di masa depan.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Pertemuan G20 yang dipimpin oleh Indonesia tahun ini mengusung tiga isu prioritas, yaitu Arsitektur Kesehatan Global yang Inklusif, Transformasi berbasis Digital dan Transisi Energi Berkelanjutan. Tema dan isu prioritas G20 yang diangkat Indonesia merupakan cerminan dari semangat kebangkitan yang kita rayakan pada hari ini, yakni di tengah keterpurukan akibat pandemi COVID-19, tidak pernah meluruhkan cita kita untuk pulih bersama dan bangkit lebih kuat.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Indonesia terus mendorong negara-negara anggota G20 untuk melakukan aksi-aksi nyata dan siap berkolaborasi serta menggalang kekuatan sehingga masyarakat dunia dan kemanusiaan dapat merasakan dampak nyata dari kerja sama ini,&rsquo;&rsquo; katanya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Mengutip ucapan Dr. Sutomo &ldquo;Selama banteng-banteng Indonesia masih mempunyai darah merah yang dapat membikin secarik kain putih menjadi merah dan putih, selama itu kita tidak akan mau menyerah kepada siapa pun juga&rsquo;&rsquo;.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Paraf Sekjen ditengah momentum penanganan nasional COVID-19 yang makin membaik dan Presidensi G20 Indonesia, hendaknya kita dapat memaknai semangat pantang menyerah Dr. Sutomo untuk memperingati Hari Kebangkitan Nasional tahun ini sebagai tonggak kebangkitan dari pandemi COVID-19 juga krisis multidimensi yang sedang melanda dunia. &lsquo;&rsquo;Dari Indonesia, Dunia Pulih Bersama. Ayo Bangkit Lebih Kuat,&rsquo;&rsquo; seru Bupati.</p>', NULL, NULL, NULL, NULL, NULL, '2022-05-20 03:58:00', '2024-07-15 03:59:03', NULL, '1');
INSERT INTO `beritas` (`id`, `judul`, `subjudul`, `headline`, `foto`, `text_foto`, `isi_berita`, `kredit`, `penulis`, `editor`, `sumber`, `youtube`, `created_at`, `updated_at`, `dibaca`, `kategori_id`) VALUES
(13, 'Sekda Pimpin Peringatan Hari Pendidikan Nasional', NULL, NULL, 'beritas\\July2024\\L5kfdKJsPlAOJnyjCq9w.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">MUARASABAK- Sekretaris Daerah Kabupaten Tanjung Jabung Timur Sapril memimpin Upacara Peringatan Hari Pendidikan Nasional Tahun 2022 di halaman Kantor Bupati Tanjung Jabung Timur, Jumat (13/5). Sambutan Menteri Pendidikan, Kebudayaan, Riset dan Teknologi yang dibacakan Sekda menekankankan keberadaan Kurikulum Merdeka belajar dalam upaya membantu guru dan murid dimasa Pandemi. Kurikulum merdeka terbukti mampu mengurangi dampak hilangnya pembelajaran dimasa Pandemi. Kurikulum Merdeka sudah diterapkan di lebih 140.000 satuan pendidikan di seluruh Indonesia.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Ini terbukti bahwa ratusan ribu anak Indonesia sudah belajar dengan cara yang jauh lebih menyenangkan dan memerdekakan,&rsquo;&rsquo; katanya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Anak-anak Indonesia juga tidak perlu khawatir dengan tes kelulusan karena Asesmen Nasional yang sekarang kita gunakan tidak bertujuan menghukum guru atau murid, akan tetapi lanjut Sekda, sebagai bahan refleksi agar guru terus terdorong untuk belajar, kepala sekolah termitivasi untuk meningkatkan kualitas sekolahnya menjadi lebih inklusif dan bebas dari ancman tiga dosa besar pendidikan.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Semangat yang sama juga sudah kita dengar dari para seniman dan pelaku budaya, yang sekarang mulai bangkit lagi, mulai berkarya lagi dengan lebih merdeka. Itu semua, tambah Sekda, berkat kegigihan kita untuk melahirkan terobosan dana abadi kebudayaan dank anal budaya pertama di Indonesia.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Dampaknya sekarang tidak ada lagi batasan ruang dan dukungan untuk berekpresi, untuk terus menggerakkan pemajuan kebudayaan,&rsquo;&rsquo; ujarnya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Semua perubahan positif yang kita usung bersama tersebut, jelas Sekda,tidak hanya dirasakan oleh para orang tua, guru dan murid, tetapi sudah digaungkan sampai ke negara-negara lain melalui presidensi Indonesia di konferensi tingkat tinggi G20.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Tahun ini kita membuktikan diri kita bahwa kita tidak lagi hanya sebagai pengikut, tapi pemimpin dari gerakan pemulihan dunia,&rsquo;&rsquo; ungkapnya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Untuk itu, kata Sekda, langkah hari ini sudah semakin serentak, laju kita sudah semakin cepat. Namun kita belum sampai digaris akhir. Untuk itu tidak ada alasan untuk berhenti bergerak meskipun sejenak.kedepan, masih aka nada angina yang kencang, ombak yang lebih besar serta rintangan yang jauh lebih tinggi.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Kita akan terus memegang komando, memimpin pemulihan bersama, bergerak untuk merdeka belajar. Selamat Hari Pendidikan Nasional,&rsquo;&rsquo; kata Sekda saat membacakan sambuatan Nadiem Anwar Makarim, Menteri Menteri Pendidikan, Kebudayaan, Riset dan Teknologi Republik Indonesia.</p>', NULL, NULL, NULL, NULL, NULL, '2022-05-13 04:05:00', '2024-07-15 04:06:01', NULL, '1'),
(14, 'Usai Apel Disiplin, Pemkab Gelar Salaman Saling Memaafkan', NULL, NULL, 'beritas\\July2024\\Gs2mBnwaB84BRRsJa9X8.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">MUARASABAK- Usai pelaksanaan Apel Penegakan Disiplin Aparatur Sipil Negara (ASN) Pemerintah Kabupaten Tanjung Jabung Timur hari pertama masuk kerja setelah cuti bersama Idul Fitri Tahun 2022, Senin (9/5) di halaman Kantor Bupati Tanjung Jabung Timur, langsung melaksanakan salam-salaman dalam rangka Hari Idul Fitri 1443 H Tahun 2022. Acara salam-salaman saling memaafkan tersebut dimulai dari Kepala Organisasi Perangkat Daerah (OPD) kepada Sekretaris Daerah Kabupaten Tanjung Jabung Timur yang telah berdiri dihadapan kantor Bupati. Barisan setelah kepala OPD dilanjutkan dengan pejabat eselon III, PHTT dan seluruh pegawai Pemkab Tanjab Timur.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Dalam sambutanya, Sekretaris Daerah Sapril yang menjadi Pembina Upacara pada apel tersebut mengatakan, dalam apel pedana paska cuti Bersama Idul Fitri 1443 H, diharapkan kepada seluruh ASN dapat meningkatkan semangat kerja sebagaimana hikmah yang ada pada bulan Ramadhan yang telah dilalui beberapa waktu lalu.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Hikmah Ramadhan yang harus kita petik adalah disiplin dengan waktu dan integritas dalam menjalankan ibadah puasa. Semoga dengan berlalunya bulan Ramadhan ini, kita mampu meningkatkan disiplin dan integritas kita dalam menjalankan tugas dan pokok kita sebagai aparatur sipil negara,&rsquo;&rsquo; katanya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Selain itu, secara pribadi dan mewakili Pemerintah Kabupaten Tanjung Jabung Timur juga menyampaikan permohon maaf lahir batin kepada seluruh ASN Pemkab Tanjung Jabung Timur, dengan harapan seluruh ASN Pemkab Tanjab Timur dapat menjadi pribadi yang lebih baik, baik dalam kinerja, karir dan kehidupan sehari-hari.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Semoga kita menjadi ASN yang lebih baik lagi kedepannya,&rsquo;&rsquo; katanya.</p>', NULL, NULL, NULL, NULL, NULL, '2022-05-09 04:06:00', '2024-07-15 04:07:09', NULL, '1'),
(15, 'Bupati Kunker ke Nipah Panjang', NULL, NULL, 'beritas\\July2024\\achvniT76aw7tjqz6Cd6.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">MUARASABAK &ndash; Bupati Tanjung Jabung Timur Romi Hariyanto melakukan Kunjungan Kerja (Kunker) ke Kecamatan Nipah Panjang,Kamis (14/4). Pada kunjungan kali ini Bupati beserta rombongan menyerahkan bantuan untuk Masjid Alhidayah dan menyerahkan zakat serta bantuan konsuntif untuk PHTT Kecamatan Nipah Panjang dari Baznas Kabupaten Tanjung Jabung Timur. Bupati dan rombongan Kembali melanjutkan kunjungannya meninjau Pondok Pesantren Daarul Ikhlas di Kelurahan Nipah Panjang II.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Disela-sela kunjungannya itu, Bupati juga menyempatkan bedialog dengan warga. Camat Nipah Panjang Helmi Agustinius yang mewakili masyarakatnya menyampaian langsung kepada Bupati terkait permasalahan atau kondisi kelangkaan BBM jenis solar yang saat ini tengah di hadapi oleh masyarakat setempat khususnya mereka yang berprofesi sebagai nelayan tradisional.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Helmi menuturkan, dengan ada permasalahan tersebut membuat para nelayan sulit untuk melaksanakan aktifitas sehari-hari di laut untuk menjaring ikan. Dan hal tersebut juga pastinya membuat pendapatan nelayan menjadi menurun.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"Kami di sini sulit mau mendpatkan BBM jenis solar Pak Bupati. Dampaknya, banyak nelayan kami yang terkendala saat mau melaut. Mudah-mudahan ada solusinya biar nelayan di sini bisa mudah saat ingin membeli BBM jenis solar itu,&rsquo;&rsquo; katanya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Menanggapi keluhan masyarakat yang kesulitan memperoleh stok minyak solar sejak beberapa hari belakangan ini, Bupati Tanjung Jabung Timur ini pun meresponnya dengan cepat. Bupati langsung menghubungi Kadis Perikanan Tanjab Timur agar segera bisa menyediakan stok solar untuk para nelayan di Kecamatan Nipah Panjang.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"Dalam kegiatan kunker ini tadi, saya banyak mendapat masukan dari masyarakat. Salah satunya terkait keluhan masyarakat kita yang berprofesi sebagai nelayan yang kesulitan saat hendak memperoleh BBM jenis solar. Itu akan kami bahas segera dengan pihak terkait agar permaslahan ini bisa cepat teratasi,\" ungkapnya.</p>', NULL, NULL, NULL, NULL, NULL, '2022-04-19 04:10:00', '2024-07-15 04:11:08', NULL, '1'),
(16, 'Bupati Serahkan LKPD Tahun 2021', NULL, NULL, 'beritas\\July2024\\5VHPEs75inamqlp3O4NI.jpg', NULL, '<div id=\"pagehead\" class=\"box-single-content clearfix\" style=\"box-sizing: border-box; margin-bottom: 20px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<div class=\"editor-content\" style=\"box-sizing: border-box;\">\r\n<div dir=\"auto\" style=\"box-sizing: border-box;\">Jambi - Bupati Tanjung Jabung Timur&nbsp;Romi Hariyanto,&nbsp;menyerahkan Laporan Keuangan Pemerintah Daerah (LKPD) Kabupaten Tanjab Timur Tahun Anggaran 2021 kepada BPK RI Perwakilan Jambi di Kantor BPK RI Perwakilan Jambi. Jumat (25/3).&nbsp;Di waktu yang bersamaan Pemerintah Provinsi Jambi juga menyerahkan LKPD Provinsi Jambi T.A 2021 yang diserahkan oleh Wakil Gubernur Jambi&nbsp;Abdullah Sani.</div>\r\n<div dir=\"auto\" style=\"box-sizing: border-box;\">Penyerahan LKPD ini di awali oleh Pemprov Jambi lalu di ikuti Kabupaten Tanjab Timur dan di akhiri dengan pembubuhan tanda tangan dukungan terhadap BPK RI Perwakilan Jambi menjadi Wilayah Birokrasi Bersih dan Melayani.</div>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, '2022-03-28 04:15:00', '2024-07-15 04:15:35', NULL, '1'),
(17, 'Sekda Lantik dan Ambil Sumpah Pejabat eselon II, III dan IV', NULL, NULL, 'beritas\\July2024\\s034ZHBoLWZVrHObmDk9.jpg', NULL, '<p><span style=\"color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Muarasabak&nbsp;- Sebanyak 40 orang pejabat eselon II, III dan IV Lingkup Pemerintah Kabupaten Tanjung Jabung Timur dirotasi. Pelantikan dan pengambilan sumpah, langsung dipimpin oleh Sekretaris Daerah Kabupaten Tanjung Jabung Timur Sapril,&nbsp;Jumat (25/3) di Aula kantor Bupati.</span></p>', NULL, NULL, NULL, NULL, NULL, '2022-03-28 04:16:00', '2024-07-15 04:16:55', NULL, '1'),
(18, 'Pemkab Gelar Pengajian dan Istighosa', NULL, NULL, 'beritas\\July2024\\WF0Wi4Lvhsl17QLLly5J.jpg', NULL, '<p><span style=\"color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-size: 18px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Muarasabak- Pemerintah Kabupaten Tanjung Jabung Timur bekerja sama dengan BKMT Tanjab Timur dan Muslimat NU Tanjab Timur mengadakan pengajian akbar dan istighosa dalam rangka menyambut bulan Suci Ramadahan 1443 H di Masjid Agung Nur Addarojat, Jumat (25/3) dengan menghadirkan&nbsp;penceramah Ustadz Riza Muhammad.</span></p>', NULL, NULL, NULL, NULL, NULL, '2022-03-28 04:17:00', '2024-07-15 04:18:07', NULL, '1'),
(19, 'Bupati Ingatkan Kelompok Tani Pahami Isi Perjanjian Kerjasama', NULL, NULL, 'beritas\\July2024\\eRk6HnAVnmOMCEbYHSBP.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">MUARASABAK - Bupati Tanjung Jabung Timur meminta kelompok tani memahami betul isi perjanjian kerjasama kemitraan konservasi Balai Taman Nasional Berbak dan Sembilang (TNBS) bersama dengan kelompok tani. Hal ini disampaikan Bupati dalam sambutannya saat acara Penandatanganan Perjanjian Kerjasama Kemitraan Konservasi Balai Taman Nasional Berbak dan Sembilang (TNBS) dengan kelompok tani Desa Rantau Rasau dan Desa Sungai Rambut Kecamatan Berbak, Rabu (23/3) di aula utama Kantor Bupati.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Saya minta Balai TNBS dan Kelompok Tani pahami betul isi perjanjiannya, agar kedepannya tidak menimbulkan masalah baru lagi,&rsquo;&rsquo; ujar Bupati.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Bupati tidak ingin, setelah penandatanganan kerjasama ini kedepannya akan muncul bibit-bibit konflik yang baru dikemudian hari. Pemkab Tanjab Timur sendiri, jelas Romi, sangat mendukung dengan harapan kedepan kerjasama ini bisa menjadi percontohan bagi desa yang lainnya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Selain itu, Bupati berharap, kerjasama bias bermanfaat bagi Kabupaten Tanjung Jabung Timur, khususnya kelompok tani dan Balai TNBS. Tentunya, tambah Bupati, kedua pihak mengetahui dan memahami hak dan kewajiban yang harus dilakukan.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"Dengan telah ditandatangani perjanjian ini, ini sudah menjadi komitmen bersama dan jalankan sesuai tupoksi masing-masing,\" katanya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Sementara itu, Kepala Balai TNBS, Pratono Puroso mengatakan, bahwa kemitraan konservasi ini bekerjasama dengan 23 Kelompok Tani di Desa Rantau Rasau Desa dan Desa Sungai Rambut Kecamatan Berbak. Kegiatan kemitraan ini merupakan program Kementrian sesuai peraturan yang telah ditentukan. Ada beberapa tujuan dari program kemitraan konservasi, diantaranya diharapkan dapat menjadi wadah untuk pemulihan ekosistem yang ada di kawasan TNBS dan peningkatan kemandirian pemberdayaan masyarakat. Dimana dalam program kerjasama kemitraan ini dapat memberikan manfaat baik bagi masyarakat maupun bagi kawasan itu sendiri.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Sejauh ini program kemitraan konservasi ini baru berjalan di dua Desa Sungai Rambut dan rantau rasau. Kedepan ada beberapa desa lagi akan kita lakukan kemitraan,\" ungkapnya.</p>', NULL, NULL, NULL, NULL, NULL, '2022-03-24 04:21:00', '2024-07-15 04:21:39', NULL, '1'),
(20, '7 Arah Kebijakan Prioritas Pemkab Tanjab Timur', NULL, NULL, 'beritas\\July2024\\Yz4tzgafwafZY1odrce9.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">MUARASABAK-Dalam rangka penyusunan Rencana Kerja Pembangunan Daerah (RKPD) Kabupaten Tanjung JabungTimur Tahun 2022, Pemerintah Kabupaten Tanjung JabungTimur menggelar Musyawarah Perencanaan Pembangunan (Musrenbang) Tahun 2022 bertempat di Aula Utama Kantor Bupati. Pada Musrenbang tersebut, setiap stakeholder dapat menyampaikan usulan, program, dan kegiatan yang akan ditetapkan sebagai program kegiatan di tahun 2023 nantinya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Sementara itu dalam rangka menghadapi Pemilu serentak tahun 2024 nanti, kegiatan ini juga diikuti oleh komisioner dari KPU dan Bawaslu Tanjab Timur. Diharapkan dua instansi tersebut yang nantinya terlibat langsung dalam Pemilu serentak 2024 dapat menyampaikan terkait apa yang nanti akan dipersiapkan dalam menyambut agenda nasional Pemilu 2024 nanti.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"Terkait apa saja item-item prioritas, hal tersebut belum bisa kita finalkan,\" ujar Sapril, Sekda Tanjab Timur saat diwawancarai usai kegiatan tersebut, Kamis 17 Maret 2022.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Ada 7 arah kebijakan prioritas pemerintah, yakni percepatan penghapusan kemiskinan ekstrim, peningkatan kualitas sumber daya manusia, penanggulangan pengangguran yang disertai peningkatan decent job, mendorong pemulihan dunia usaha, revitalisasi industri dal rangka mendorong produktivitas, ekonomi hijau dan percepatan pembangunan infrastruktur dasar.</p>', NULL, NULL, NULL, NULL, NULL, '2022-03-18 04:25:00', '2024-07-15 04:26:03', NULL, '1'),
(21, 'Tanjab Timur Sidak Vaksin ASN, TNI Dan Polri', NULL, NULL, 'beritas\\July2024\\F2kIhKqtBCTDkhbt8aZ0.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">MUARASABAK- Usai pelaksanaan Apel Gabungan TNI, POLRI dan ASN serta PHTT dilapangan Kantor Bupati Tanjung Jabung Timur Kamis (17/3), seluruh peserta apel dilakukan inpeksi mendadak (Sidak) Vaksin yang dikomandoi langsung oleh Waka Polres Tanjung Jabung Timur Kompol Roslinda RM, S.Pd. Apel gabungan yang biasa dilakukan setiap tanggal 17 ini menjadi momentum bagi Pemkab guna mengecek vaksinasi para aparatur Pemerintah.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Peserta apel pun langsung diintruksikan untuk menunjukkan kartu vaksin atau membuka aplikasi peduli lindungi kepada petugas yang sudah berjaga di halaman kantor Bupati. Para peserta di bagi menjadi tiga, yakni bagi yang telah melakukan vaksinasi dosis I, dosis II dan belum melakukan vaksinasi. Sementara bagi yang telah melakukan vaksinasi dosis III diminta untuk meninggalkan lapangan Kantor Bupati.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Sekretaris Daerah Kabupaten Tanjung Jabung Timur Sapril didampingi Wakapolres Tanjung Jabung Timur Kompol Roslinda RM, S.Pd mengatakan, vaksinasi ini guna memastikan bahwa seluuh ASN, TNI dan POLRI telah melakukan vaksinasi.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Kita minta mereka menunjukkan kartu vaksin atau melalui aplikasi peduli lindungi, bagi yang belum melakukan vaksinasi kita minta untuk mendaftarkan diri guna dilakukan vaksinasi pada petugas vaksin yang telah kami sediakan,&rsquo;&rsquo; katanya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Kegiatan ini akan terus kami lakukan guna memastikan kegiatan vaksinasi di Kabupaten Tanjung Jabung Timur bisa terealisasi dengan baik. Kami berharap kepada masyarakat untuk tidak ragu-ragu untuk melakukan vaksinasi agar kita semua bisa terlindungi dari virus corona ini.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Jangan ragu dan datangi gerai vaksin yang tersedia,&rsquo;&rsquo; imbaunya.</p>', NULL, NULL, NULL, NULL, NULL, '2022-07-18 04:28:00', '2024-07-15 04:29:00', NULL, '1');
INSERT INTO `beritas` (`id`, `judul`, `subjudul`, `headline`, `foto`, `text_foto`, `isi_berita`, `kredit`, `penulis`, `editor`, `sumber`, `youtube`, `created_at`, `updated_at`, `dibaca`, `kategori_id`) VALUES
(22, 'Tanjab Timur Jadikan Kenduri Suwarnabhumi Sebagai Kebangkitan Budaya', NULL, NULL, 'beritas\\July2024\\QA56ewYtrV7VLLCZ16RR.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Muarasabak-Kabupaten Tanjung Jabung Timur menjadi lokasi puncak rangkaian kegiatan Kenduri Suwarnabhumi tahun ini. Kegiatan yang melibatkan Sumatera Barat dan Jambi itu akan dihelat sepanjang Agustus hingga September 2022. Rencananya, Kenduri Suwarnabhumi menjadi momentum menyatukan kembali jejak peradaban Melayu khususnya daerah-daerah yang dilewati sungai Batanghari mulai Kampunglaut Tanjung Jabung Timur Jambi hingga Dharmasraya Sumatera Barat.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Dirjen Kebudayaan Kementerian Pendidikan, Kebudayaan, Riset dan Teknologi, Hilmar Farid, hari ini memimpin langsung rapat koordinasi persiapan Kenduri Suwarnabhumi di Kampunglaut Tanjabtim. Dipaparkan Hilmar kenduri ini bertujuan menghimpun kembali adat istiadat masyarakat mulai hilir hingga hulu sungai Batanghari. Diketahui sungai Batanghari sebagai sungai terpanjang di Sumatera melintasi sembilan kabupaten di Jambi dan berhulu di Dharmasraya Sumatera Barat. Hilmar melihat cukup banyak ciri kesamaan budaya semua daerah itu. Hal tersebut menyiratkan adanya hubungan erat antar wilayah itu di masa lampau.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Kepada para tokoh budaya dan Bupati Tanjabtim Hilmar menyampaikan harapannya agar seluruh elemen warga terlibat menyukseskan Kenduri Suwarnabhumi yang dipercaya menjadi fasilitas efektif menghimpun kembali budaya yang terserak. &ldquo;Saya berpesan hajatan besar ini akan mempersatukan kembali kesamaan kita sehingga sebagaimana harapan Pak bupati tadi agar kita semua tahu jati diri dan muasal kita demi kehidupan yang lebih baik kedepannya,&rsquo;&rsquo;kata Hilmar. Rapat koordinasi itu juga dihadiri jajaran Direktorat Kebudayaan Kemendikbud. Hilmar menegaskan bahwa kekompakan justru akan menjadikan semangat kebangkitan kebudayaan menjadi lebih baik.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&ldquo;Jangan sampai masing &ndash; masing elemen sibuk merasa kelompoknya paling penting sehingga akhirnya semua menjadi bagian kecil, dengan kekompakan kita justru menjadi besar,&rsquo;&rsquo;tambahnya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Bupati Tanjung Jabung Timur Romi Hariyanto menyambut baik rencana kenduri Suwarnabhumi. Dikatakan Romi kenduri besar ini akan mereka manfaatkan sebagai momentum kebangkitan budaya masyarakat Tanjabtim. Selama ini sejumlah adat dan kebudayaan warga Tanjabtim mengalami degradasi zaman. Sebagian bahkan terancam punah. Karena itu dengan adanya dukungan Dirjen Kebudayaan dalam kenduri Suwarnabhumi ini Romi percaya membangkitkan kembali kebudayaan Tanjabtim akan menjadi lebih mudah. &ldquo;Karena itu kami bersiap penuh menyambut dan menyuskeskan hajatan besar ini,&rsquo;&rsquo;tegas Romi.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Dijelaskannya, sejumlah agenda kegiatan khususnya yang berlokasi di Tanjabtim sudah diskenariokan sedemikian rupa. Ada empat titik lokasi kegiatan yang menjadi tanggungjawab Tanjabtim. Pertama penyambutan tim ekspedisi Sungaibatanghari di situs Makam Rangkayohitam di Desa Simpang Kecamatan Berbak. Di lokasi ini akan digelar sejumlah ritual budaya dan spot pameran serta doa Bersama. Situs Makam Rangkayohitam adalah simbol peradaban yang erat hubunggannya dengan kesultanan awal Jambi. Dari situs ini pelayaran tim ekspedisi akan berlanjut ke Taman Selaras Pinang Masak di Muarasabak Timur. Rombonngan ekspedisi akan berlabuh di titik ini untuk kemudian mengikuti rangkaian kegiatan budaya yang sudah dipersiapkan Pemkab Tanjabtim sebelum tim eksepedisi tiba di Kampunglaut sebagai titik finish. Kampunglaut dipilih sebagai titik finish karena posisinya yang berada persis sebagai muara Sungai Batanghari. Di lokasi ini lah puncak acara Kenduri Suwarnabhumi dihelat. Rencananya pada hari puncak kenduri ini digelar saresehan nasional penentuan titik temu pertalian budaya daerah &ndash; dearah sepanjang Sungaibatanghari. Data kebudayaan hasil jemputan tim ekspedisi saat singgah di tiap kabupaten dan kota akan dirumuskan dalam saresehan nasional itu. &ldquo;Kita berharap agenda kenduri Suwarnabhumi ini masuk dalam kalender event nasional,&rsquo;&rsquo;tutup Romi.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Tim ahli penyelenggaraan kenduri Suwarnabhumi dan juga pemerharti budaya Wenri Wanhar yang ditemui dalam rapat koordinasi menjelaskan bahwa hajatan ini sejatinya untuk memastikan identitas budaya masyarakat sepanjang sungai Batanghari dari Tanjabtim hingga Dharmasraya. &ldquo;Kenduri ini bukan kegiatan kementerian tapi adalah kegiatan masyarakat lintas daerah yang disupport oleh kementerian,&rsquo;&rsquo;ucap Wenri.</p>', NULL, NULL, NULL, NULL, NULL, '2022-03-18 04:30:00', '2024-07-15 04:30:19', NULL, '1'),
(23, 'Bupati Tanjab Timur Ingin Yakinkan Bahwa Sabak Adalah Gerbang Peradaban Melayu', NULL, NULL, 'beritas\\July2024\\07HjTPbH3jVG5IAwxCD4.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Muarasabak - Sebagai daerah pesisir yang mendominasi garis pantai Provinsi Jambi, Tanjung Jabung Timur dipercaya sebagai pintu gerbang masuknya peradaban Melayu ke kawasan timur Sumatera. Sejumlah jejak tinggalan yang ditemui di beberapa wilayah Tanjabtim menunjukkan adanya potensi argumentasi keyakinan itu. Struktur budaya, Bahasa dan istiadat masyarakat Tanjabtim menunjukkan kekuatan peran Tanjabtim pada isu kemelayuan Jambi. Apalagi, Tanjabtim merupakan satu - satunya pintu masuk jalur perairan sungai Batanghari yakni muara Kampunglaut.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Bupati Romi Hariyanto berkeyakinan Tanjabtim punya peran penting dalam kemunculan Melayu yang dikenal dengan identitas Melayu Jambi saat ini. Banyaknya temuan tinggalan seperti situs dan beragam tradisi yang punya kemiripan dengan sejumlah daerah yang mengidentitaskan dirinya sebagai Melayu adalah bukti kuat hubungan tersebut. Karena itu Romi bertekad untuk menghimpun kembali bukti - bukti sejarah yang terpencar di sepanjang kawasan pesisir Jambi itu. Sayangnya, menurut Romi semangat untuk menghimpun kembali pertalian itu terbatasi oleh minimnya sumberdaya saat ini. Sebagai daerah pemekaran yang Sebagian besar wilayahnya bergambut, Tanjabtim masih disibukkan dengan penyediaan infrastruktur kebutuhan dasar warganya. Karena itu dengan perhelatan kenduri Suwarnabhumi tahun ini, Romi berharap upaya mencari jejak sejarah jati diri Tanjabtim itu bisa lebih optimal. Sebagai target jangka pendek, Romi akan menghimpun tradisi kebudayaan masyarakat baik benda maupun non benda sebagai bagian dari rangkaian kenduri Suwarnabhumi. Dari sini Romi akan Menyusun portofolio situs dan tinggalan benda - benda sejarah. Dia berharap misteri yang tersimpan di balik situs dan benda - benda itu bisa segera diungkap. Dia mencotohkan situs kapal kuno dan situs Siti Hawa di Desa Lambur Kecamatan Muarasabaktimur. Lalu banyaknya temuan benda purba di Desa Airhitamlaut di Kecamatan Sadu. Begitu pula dengan banyaknya temuan benda tinggalan yang saat ini masih dalam penguasaan perorangan. &ldquo;Nanti akan coba kami himpun dengan harapan semua sejarah yang ada di belakangnya bisa segera diugkap dan kami bisa mengetahui siapa kami dan Tanjabtim ini,&rsquo;&rsquo;pungkasnya</p>', NULL, NULL, NULL, NULL, NULL, '2022-03-18 04:37:00', '2024-07-15 04:37:40', NULL, '1'),
(24, 'Dinas Kominfo Tanjab Timur Laksanakan Penyembelihan Hewan Qurban', NULL, NULL, 'beritas\\July2024\\8pe1Vs7WekGTdeoTycnR.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Muara Sabak, Dinas Komunikasi dan Informatika (Kominfo) Kabupaten Tanjung Jabung Timur (Tanjab Timur) melaksanakan penyembelihan hewan qurban berupa 1 ekor Sapi pada hari raya Idul Adha 1443 H/2022 M, di halaman belakang kantor Dinas Kominfo Kabupaten Tanjab Timur. Senin (11/7)<br style=\"box-sizing: border-box;\">&nbsp;<br style=\"box-sizing: border-box;\">Kegiatan Pemotongan Hewan Qurban ini langsung dikoordinir oleh Kepala Dinas Kominfo Kabupaten Tanjab Timur, Herman Toni, SE.,ME.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"Ibadah Qurban ini menjadi sarana untuk mempererat silaturahmi antar sesama pegawai dan juga sebagai bentuk kepedulian sosial dengan berbagi kepada masyarakat sekitar Kantor Dinas Kominfo Tanjab Timur.\" ujar Kadis Kominfo.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Momen kebersamaan bisa terlihat dari pelaksanaannya, dengan cara bergotong-royong mulai dari penyembelihan, pemotongan daging, dan dilanjutkan dengan makan bersama dalam rangka syukuran dengan menu sop daging dan tulang sapi yang dimasak selepas penyembelihan hewan qurban.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Daging qurban tersebut diberikan kepada seluruh ASN dan honorer Dinas Kominfo Tanjab Timur serta sebagian kepada warga sekitar Kantor Dinas Kominfo Tanjab Timur.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Kadis Kominfo merasa bersyukur karena&nbsp; kita semua khususnya jajaran Dinas Kominfo Tanjab Timur masih diberikan rezeki oleh Allah SWT sehingga masih bisa berqurban tahun ini.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"Terima kasih kepada semua ASN dan tenaga honorer Dinas Kominfo terkhusus bagi yang berqurban, semoga qurbannya diterima dan mendapat ridho dari Allah SWT,\" tutupnya. (doc)</p>', NULL, NULL, NULL, NULL, NULL, '2022-07-13 07:53:00', '2024-07-18 12:49:10', '7', '3'),
(25, 'Tangani Konten Negatif, Pemerintah Gunakan Pendekatan Hulu dan Hilir', NULL, NULL, 'beritas\\July2024\\s9V9exFvgkcCuPuEjw2s.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: bold;\">Jakarta, Kominfo</strong>&nbsp;- Menteri Komunikasi dan Informatika Rudiantara menyatakan penanganan konten negatif di media sosial dilakukan di semua lini. \"Tidak hanya dilakukan di hilir saja tapi juga di hulu,\" katanya dalam Forum Merdeka Barat 9 (FMB9) bertema Bedah Fatwa MUI di Ruang Seminar Galeri Nasional Indonesia, Jakarta, Jumat (9/6/2017).&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Mengenai penanganan di hilir, Menteri Rudiantara menjelaskan berdasarkan Undang-Undang Informasi dan Transaksi Elektronik (ITE). \"Kalau kita lihat dari Undang-Undang ITE, kesannya konotasinya itu adalah masalahnya selesai hanya dengan pembatasan akses (pemblokiran),\" jelasnya.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Meskipun demikian, pemerintah ditegaskan lagi oleh Menteri Kominfo menunjukkan kepedulian terhadap penyebaran konten negatif dengan mendasarkan pada regulasi yang ada. &ldquo;Pemerintah sangat concern mengenai ini. Pemerintah mengupayakannya, memanajemeninya berdasarkan regulasi yang ada, yaitu dari Undang-Undang ITE,&rdquo; tandasnya.<br style=\"box-sizing: border-box;\">Menteri Rudiantara mengakui langkah blokir yang dilakukan pemerintah belum tentu efeketif. \"Pemerintah menyadari melakukan pemblokiran saja itu tidak akan efektif. Itu akan efektif kalau pemblokiran itu di hilir, artinya seperti menyembuhkan orang sakit; diberi obat, disuntik, dan lain sebagainya,&rdquo; jelasnya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Adapun penanganan di hulu, menurut Menteri Rudiantara lebih pada upaya mendorong setiap pengguna media sosial memproduksi dan membagi konten positif. &ldquo;Di hulu itu bagaimana membuat orang menjadi sehat alias kontennya harus konten positif. Jadi yang ini adalah bagaimana sosialisasi literasi. Salah satunya adalah berdasarkan Fatwa MUI Bagaimana Bermedia Sosial,&rdquo; paparnya.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Atas kehadiran fatwa MUI tersebut, pemerintah sangat mengapresiasi inisiatif untuk mendorong produksi dan penyebaran konten positif di media sosial.&nbsp; &ldquo;Pemerintah sangat mengapresiasi atas dikeluarkannya Fatwa MUI karena ini menjadi pelengkap,&rdquo; katanya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Rudiantara pun berharap agar penggunaan media sosial dengan baik agar dapat terus disosialisasikan. &ldquo;Makin seringnya ini kita sosialisasikan terus-menerus terutama kepada masyarakat yang tingkat literasi media sosialnya apalagi dari unsur keagamaannya dibantu dengan Fatwa MUI ini,\" jelasnya.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Menteri Kominfo kembali menekankan upaya pemerintah dalam menangani konten negatif hanya bisa dilakukan secara komprehensif. &ldquo;Kembali fokusnya tidak hanya di hilir tapi di hulu. Insya Allah akan memitigasi masyarakat itu memainkan terlalu sering atau terpapar konten-konten negatif di media sosial,&rdquo; tandasnya.&nbsp;<strong style=\"box-sizing: border-box; font-weight: bold;\">(PS)</strong></p>', NULL, NULL, NULL, NULL, NULL, '2017-06-20 07:54:00', '2024-07-15 08:17:50', '4', '2'),
(26, 'MUI: Masalah Medsos Tanggung Jawab Seluruh Elemen Bangsa', NULL, NULL, 'beritas\\July2024\\m9vxXx8DGa85LB7KWOJL.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: bold;\">Jakarta, Kominfo</strong>&nbsp;- Sekretaris Komisi Fatwa Majelis Ulama Indonesia Asrorun Ni&rsquo;am Sholeh mengatakan penanganan masalah di media sosial merupakan tanggung jawab seluruh elemen bangsa dan masyarakat.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&ldquo;Permasalahan yang ada di media sosial itu bukan hanya tanggung jawab pemerintah, tetapi tanggung jawab seluruh elemen bangsa dan elemen masyarakat,&rdquo; katanya pada acara Forum Merdeka Barat 9 (FMB9) bertema Bedah Fatwa MUI di Ruang Seminar Galeri Nasional Indonesia, Jakarta, Jumat (9/6/2017).&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Asrorun Ni&rsquo;am menjelaskan latar belakang penetapan Fatwa Majelis Ulama Indonesia Nomor 24 Tahun 2017 tentang Hukum dan Pedoman Bermuamalah melalui Media Sosial.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&ldquo;Salah satu latar belakang yang melandasi pembahasan hingga penetapan Fatwa Majelis Ulama Indonesia ini adalah adanya fakta pemanfaatan media sosial yang seharusnya untuk kepentingan kemanusiaan,\" katanya.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Lebih lanjut Sekretaris Komisi Fatwa MUI itu menyatakan sebagai produk ilmu pengetahuan dan teknologi, media sosial seharusnya bisa meningkatkan harkat dan martabat kemanusiaan.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"Ia (media sosial, red) adalah produk budaya sehingga menghantarkan manusia yang berbudaya atau civilized. Tetapi faktanya ada residu, ada dampak yang ditimbulkan akibat ketidakdewasaan dalam pemanfaatan media sosial. Munculnya berita fitnah, hoax, ghibah, naminah, ujaran kebencian, yang menyebabkan disharmoni di tengah masyarakat bahkan dalam batas tertentu hingga mengancam stabilitas nasional,&rdquo; jelasnya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">MUI menurut Asrorun Ni&rsquo;am, merasa bertangung jawab untuk menjawab permasalahan. \"Artinya Fatwa tentang Hukum dan Pedoman Bermuamalah melalui Media Sosial ini sebagai wujud tanggung jawab sosial keulamaan, sebagai manifestasi dari tanggung jawab ulama dan lembaga ulama untuk menjawab permasalahan real yang terjadi di tengah masyarakat atau current issues yaitu soal media sosial,&rdquo; katanya.<strong style=\"box-sizing: border-box; font-weight: bold;\">&nbsp;(PS)</strong></p>', NULL, NULL, NULL, NULL, NULL, '2017-06-20 08:04:00', '2024-07-15 08:07:29', '2', '2'),
(27, 'Antisipasi Arus Mudik 2017, BRTI Uji Jaringan Telekomunikasi di Bandung', NULL, NULL, 'beritas\\July2024\\BfVNP3UaEoQfCNZ3yQS7.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: bold;\">Bandung, Kominfo</strong>&nbsp;- Jaringan telekomunikasi di kawasan Bandung dan sekitarnya dinilai siap untuk antisipasi kebutuhan layanan selama arus mudik Lebaran 2017. \"Dari hasil uji petik, secara keseluruhan menunjukkan hasil yang baik dan dinyatakan bahwa jaringan telekomunikasi seluler di Bandung siap melayani arus mudik, lebaran dan arus balik tahun 2017,&rdquo; tutur Komisioner Badan Regulasi Telekomunikasi Indonesia (BRTI) M. Imam Nashiruddin, di Hotel Aston Pasteur Bandung, Jumat (09/06/2017).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Dalam acara konferensi pers bertema &ldquo;Evaluasi Kesiapan Jaringan Telekomunikasi Untuk Melayani Arus Mudik dan Idul Fitri 1438 H itu BRTI bersama Asosiasi Penyelenggara Telekomunikasi Seluruh Indonesia (ASTI) itu, memaparkan ahasil evaluasi serta antisipasi terhadap potensi peningkatan traffick jaringan seluler selama arus mudik. &ldquo;Acara ini adalah kegiatan rutin dalam rangka memaparkan hasil mengenai evaluasi kesiapan mengatur dan antisipasi yang perlu dilakukan terkait adanya potensi peningkatan dan pergerakan trafik saat arus mudik, lebaran dan arus balik lebaran tahun 2017.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Jaringan telekomunikasi harus dipastikan mampu menampung kapasitas dan melayani mobilitas masyarakat yang akan mudik&rdquo;, kata M. Imam Nashiruddin Komisioner BRTI dalam kata sambutannya. Menurut KomisioneR BRTI, semua pengujian kesiapan jaringan operator telekomunikasi di Bandung menggunakan metode&nbsp;static test&nbsp;pada titik-titik yang diperkirakan menjadi kedatangan mudik.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"Antara lain Bandara Husein Sastra Negara, Terminal Bis Leuwipanjang, Cicaheum, Stasiun Hall Bandung dan stasiun Kereta Kiara Condong. Selain itu pengujian dilakukan juga dengan&nbsp;drive test&nbsp;seluruh jaringan operator untuk mengetahui kualitas layanan dan kualitas sinyal dijalan jalan utama di kota Bandung,\" jelasnya. Konferensi Pers tersebut dihadiri perwakilan Kominfo, Komisioner BRTI, ATSI dan pimpinan operator telekomunikasi di wilayah Bandung, Jawa Barat, antara lain Telkomsel, Indosat Ooredoo, XL Axiata, Smartfren, 3 (tri) dan Net1 (Sampoerna). Konferensi p ers juga diikuti wartawan media elektronik, radio dan media cetak.<strong style=\"box-sizing: border-box; font-weight: bold;\">&nbsp;(dps)</strong></p>', NULL, NULL, NULL, NULL, NULL, '2017-06-20 08:07:00', '2024-07-15 08:07:24', NULL, '2'),
(28, 'Ratusan UMKM Kota Semarang Perluas Pasar Melalui Platform Online', NULL, NULL, 'beritas\\July2024\\KUpH2b4vXnuHW53Wkdsx.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: bold;\">Semarang, Kominfo</strong>&nbsp;- Potensi Usaha Mikro, Kecil dan Menengah (UMKM) Kota Semarang menjadi daya tarik bagi penyedia platform online. Oleh karena itu, Dinas Koperasi dan UMKM Kota Semarang bersama Kementerian Koperasi dan UKM, Kementerian Komunikasi dan Informatika, IdEA (Asosiasi E- Commerce Indonesia) serta Blanja.com bekerjasama untuk membawa UMKM di wilayah Kota Semarang memasuki platform online.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"UMKM menjadi penggerak ekonomi terbesar Indonesia. UMKM diharapkan mampu meningkatkan ekonomi Indonesia dengan prediksi akan meningkatkan PDB Indonesia hingga 10% jika tercapai 8 juta UMKM yang Go Online pada tahun 2020,\" jelas Direktur Pemberdayaan Informatika Septriana Tangkary pada Edukasi UMKM Go Online di Universitas Dian Nuswantoro Semarang, Selasa (23/06/2017).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Acara Edukasi UMKM Go Online ini harus menjadi momentum tolak balik bagi UMKM yang hadir untuk mengembangkan usaha yang saat ini tidak meningkat secara signifikan. \"Target untuk memperluas pemasaran, tetapi efisien dalam biaya operasional, maka berjualan melalui platform online adalah pilihan yang tepat bagi UMKM. Apalagi dengan infrastruktur akses Palapa Ring harus dimanfaatkan oleh UMKM karena perubahan model bisnis yang terjadi ke arah basis online,\" ungkap Head of Business Operations Blanja.com, Fikri.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Tantangan untuk tetap sukses dalam berjualan melalui platform online dijelaskan Fikri adalah kemauan dari UMKM untuk tetap meningkatkan kualitas produk, memutakhirkan informasi dan data pada toko online masing-masing. \"Tantangan ini juga yang menjadi salah satu alasan Blanja.Com untuk bekerjasama dengan Pemerintah Kota Semarang dan Kominfo untuk mengadakan edukasi terhadap UMKM,\" ujar Fikri.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Pemerintah Kota Semarang sendiri telah memiliki program kredit sangat ringan yang diperuntukkan kepada UMKM dengan bunga terendah yang ada saat ini yakni hanya 3% per tahun. \"Program kredit ringan ini diberi nama Kredit Wirausaha Bangkit Jadi Juara, yang dapat diperoleh UMKM dengan mendaftar untuk mendapatkan izin dari Dinas Koperasi dan UKM Kota Semarang. Proses perizinan sudah disediakan dengan layanan berbasis online,\" papar Kepala Dinas Kominfo Nana Storada yang mewakili Walikota Semarang.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Pada Acara Edukasi ini UMKM yang hadir&nbsp; diberikan kiat-kiat untuk sukses di platform online, dan langsug didaftarkan sebagai anggota di Blanja.Com. Banyak dari UMKM yang membawa produk untuk difoto dan diupload di toko online yang dibuka di Blanja.Com.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Dengan banyaknya UMKM yang hadir, diharapkan dapat memberikan pengaruh kepada UMKM lainnya untuk turut memasuki platform online. UMKM yang hadir pada acara ini adalah UMKM yang telah terdaftar di Dinas Koperasi danUKM Kota Semarang, binaan dari PBNU Jawa Tengah, dan binaan dari Kamar Dagang Indonesia (Kadin) Jawa Tengah.<strong style=\"box-sizing: border-box; font-weight: bold;\">&nbsp;(*LP/VE)</strong></p>', NULL, NULL, NULL, NULL, NULL, '2017-06-20 08:09:00', '2024-07-15 08:09:22', NULL, '2');
INSERT INTO `beritas` (`id`, `judul`, `subjudul`, `headline`, `foto`, `text_foto`, `isi_berita`, `kredit`, `penulis`, `editor`, `sumber`, `youtube`, `created_at`, `updated_at`, `dibaca`, `kategori_id`) VALUES
(29, 'Percepat Sertifikasi Kompetensi, Kominfo Uji 76 Lulusan Pendidikan Multimedia', NULL, NULL, 'beritas\\July2024\\nQ8qDmUlKZnWG3PJ5fNB.jpg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Cirebon, Kominfo&nbsp;&ndash; Sebanyak 76 orang lulusan SMK, D3, D4 dan S1 mengikuti Sertifikasi Kompetensi&nbsp; Bidang Komunikasi Grafis dan Multimedia yang diselenggarakan di Hotel Aston Cirebon, Jawa Barat, Rabu (14/6/2017). Kepala Pusbang Literasi dan Profesi SDM Komunikasi Kementerian Komunikasi dan Informatika Gati Gayatri mengatakan kegiatan sertifikasi itu merupakan implementasi strategi khusus percepatan sertifikasi kompetensi.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&ldquo;Kegiatan ini bertujuan untuk membantu angkatan kerja muda mendapatkan sertifikat kompetensi standar, khususnya SDM yang memiliki kemampuan dan pengetahuan dasar di bidang komunikasi,\" jelasnya dalam uji kompetensi dan sertifikasi yang dilakukan untuk bidang keahlian junior multimedia, video editing, grafika komunikasi, graphic design, infografis, dan fotografi.&nbsp;<br style=\"box-sizing: border-box;\">Menurut Gati Gayatri, melalui sertifikasi diharapkan dapat mengubah sikap pemuda untuk selalu belajar guna meningkatkan daya saing dan kompetensi.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"Baik untuk kompetensi diri sendiri, maupun kompetensi lingkungan masyarakat, sebagai komponen penyusun daya saing nasional. Harapan yang ingin diraih dalam jangka pendek adalah mampu membekali tenaga kerja Indonesia,&rdquo; katanya.<br style=\"box-sizing: border-box;\">Menurut Gati Gayatri sampai awal Juni 2017 ini, Pusbang Litprof SDM Komunikasi Badan Litbang SDM Kementerian Kominfo telah menyelenggarakan sertifikasi kompetensi 16 kali di seluruh Indonesia dengan jumlah total peserta sebanyak 1.218 orang. &ldquo;Jumlah peserta yang dinyatakan kompeten secara nasional mencapai 963 orang atau sekitar 79% dan yang dinyatakan belum kompeten sebanyak 255 orang atau&nbsp; sekitar 21%&rdquo;, jelasnya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box; font-weight: bold;\">Kembangkan Produksi Konten&nbsp;</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Pelaksanaan sertifikasi kompetensi SDM merupakan salah satu upaya Kementerian Kominfo dalam mengembangkan produksi konten yang berkualitas.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"Kenapa namanya Kementerian Komunikasi dan Informatika, karena orientasi penekanannya pada teknologinya bukan kontennya dan kontennya menjadi tanggung jawab kita semua,\" katanya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Secara khusus, Gati Gayatri mendorong setiap peserta agar dapat memproduksi konten yang baik dan bermanfaat. \"Karena adik-adik adalah bagian dari konten informatika, maka harus mengisi konten-konten berbasis TIK tidak lagi komunikasi sosial tetapi komunikasi yang melalui media agar segera diwujudkan,&rdquo; imbaunya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Selain itu, mennurut Gati Gayatri, tantangan bangsa dalam konteks Masyarakat Ekonomi ASEAN (MEA) harus dihadapi dan disiasati pelaku industri dalam negeri. \"Tak terkecuali di bidang industri komunikasi dan konten. Di negara-negara maju, bidang komunikasi dan konten telah menjadi profesi yang sangat bergengsi dan terus berkembang (emerging profession) secara pesat. Bidang tersebut menjadi sebuah profesi yang cenderung multi-entry dicipliner dimana siapapun dapat memasuki profesi ini tanpa mensyaratkan latar belakang keilmuan bidang komunikasi,&rdquo; katanya.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><br style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\"><strong style=\"box-sizing: border-box; font-weight: bold;\">Siapkan SDM Kompeten</strong></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Saat ini Pemerintah Indonesia telah melakukan ratifikasi Indonesia terhadap kesepakatan-kesepakatan global dan regional menyangkut perdagangan bebas harus segera ditindaklanjuti dengan upaya meningkatkan daya saing dan produktivitas SDM tenaga kerja. Salah satu upaya tersebut adalah sertifikasi yang berbasis Standar Kompetensi Kerja Nasional Indonesia (SKKNI). Di sektor komunikasi, tenaga kerja industri juga harus segera meningkatkan keterampilan yang sampai saat ini masih memiliki kesenjangan. Data&nbsp; Bank Dunia (2016) menunjukkan, kesenjangan keterampilan tenaga kerja lokal bersumber dari kurangnya kemampuan berbahasa Inggris (44%), kemampuan menggunakan komputer (36%), kemampuan berpikir kritis (33%), perilaku kerja (30%), dan keterampilan dasar (13%).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Menurut Kapusbang Litpof Gati Gayatri, salah satu faktor keberhasilan memenangkan persaingan dalam era pedagangan bebas, baik di tingkat regional ASEAN maupun global adalah sumberdaya manusia yang berkualitas dan kompeten. Apalagi saat ini perkembangan industri komunikasi dan konten makin pesat dan kompetitif yang diikuti peningkatan ketersediaan SDM yang kompeten. Oleh karena itu, upaya menyiapkan SDM Indonesia yang berkualitas tidak bisa lagi dilakukan dengan langkah biasa.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&rdquo;Pemerintah telah menyiapkan strategi umum bidang ketenagakerjaan dalam menghadapi MEA. Pertama, meningkatkan kualitas dan daya saing tenaga kerja Indonesia. Kedua, melaksanakan Percepatan Penerapan Sistem Pelatihan Kerja Nasional (SISLATKERNAS) yang mmemadukan pengembangan standar kompetensi dengan program pelatihan berbasis kompetensi dan sertifikasi kompetensi. Ketiga, mengembangkan dan melaksanakan perjanjian pengakuan kesetaraan atau MRA (Mutual Recognition Agreements) dalam lingkup ASEAN,&rdquo; jelasnya.<strong style=\"box-sizing: border-box; font-weight: bold;\">&nbsp;(Biro Humas/Sina//YM/Foto:SS)</strong></p>', NULL, NULL, NULL, NULL, NULL, '2017-06-19 17:00:00', '2024-07-15 08:11:19', NULL, '2'),
(30, 'Jenderal Purn Moeldoko Dijadwalkan Kunjungi Tanjabtim', NULL, NULL, 'beritas\\July2024\\R8eLKtpQt8iNBzBnpdRU.jpeg', NULL, '<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">MUARASABAK- Kepala Staf Kepresidenan Jenderal (Purn) Moeldoko dijadwalkan melakukan kunjungan kerja ke&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">Bumi Sepucuk Nipah Serumpun Nibung&nbsp;</em>pada 1 November 2018 nanti. Kunjungan mantan Panglima TNI tersebut dalam menghadiri panen jagung hasil teknologi pertanian rawa pasang surut di SK 25 Desa Karya Bhakti Kecamatan Rantau Rasau. Adapun luas areal pertanian jagung yang bakal dipanen dari 80 hektar luas areal keseluruhan adalah 50 hektar yang merupakan lahan milik Kelompok Tani Dimas II.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Bupati Tanjung Jabung Timur melalui Kepala Bagian Humas Setda Tanjung Jabung Timur Fajar Alamsyah mengungkapkan, adapun kunjungan Kepala Staf Kepresidenan ini merupakan kunjungan pertama beliau sebagai Ketum HKTI Pusat.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&lsquo;&rsquo;Dilokasi itu juga nanti dijadwalkan dilaksanakan penantangan MoU dengan HKTI, IPB dan FKS Multi Agro juga akan dilakukan dialog langsung dengan para petani,&rsquo;&rsquo; kata Alam.</p>', NULL, NULL, NULL, NULL, NULL, '2018-10-30 08:12:00', '2024-07-15 08:17:58', '1', '2'),
(31, 'Digitalisasi Penyiaran, Upaya Kominfo Jaga Koeksistensi Pertelevisian', NULL, NULL, 'beritas\\July2024\\SpfKd1tPWHdCPjLyq2eF.jpeg', NULL, '<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Jakarta, Kominfo &ndash; Pemerintah mendorong digitalisasi penyiaran untuk menjaga koeksistensi industri pertelevisian di Indonesia.&nbsp;Menteri Komunikasi dan Informatika Johnny G. Plate menyatakan saat ini lembaga penyiaran&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">mainstream</em>&nbsp;dihadapkan dengan bisnis&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">Over The Top</em>&nbsp;(OTT).&nbsp;&nbsp;</p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"Sebagai pendatang baru sebagaimana kinerja TV tidak mengacu kepada mainstream TV dan masuk ikut ambil bagian di-<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">downstream</em>&nbsp;melalui OTT.<span class=\"Apple-converted-space\" style=\"box-sizing: border-box;\">&nbsp;&nbsp;</span>Dari sisi legislasi bisnis televisi melalui OTT belum ada payung hukum acuan penyiarannya. Sementara,&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">mainstream&nbsp;</em>TV harus mengikuti seluruh undang-undang yang ada dan diatur secara disiplin, tertib dengan kewajiban dan sanksi-sanksi,&rdquo; paparnya dalam acara Pembukaan Praresmi (<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">soft launching</em>) Sinergio TV secara virtual, dari Sanggar Prathivi, Pasar Baru, Jakarta Pusat,&nbsp;Sabtu (04/07/2020).</p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Sementara, dari sisi teknologi, Menteri Kominfo menegaskan Pemerintah, khususnya Kementerian Kominfo tengah mengantar percepatan masuk ke penyiaran digital dengan cara analog&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">switch off</em>&nbsp;ke teknologi digital melalui penyelesaian undang-undang penyiaran.</p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Bahkan, Menteri Johnny menyatakan kontestasi di bidang industri&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">broadcast</em>&nbsp;tidak saja terjadi antarstasiun TV tetapi juga dengan OTT. Kondisi itu, menurutnya menjadi tugas dari Kemnterian Kominfo bersama DPR RI agar menjaga koeksistensi dan&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">level playing field&nbsp;</em>yang sama.<span class=\"Apple-converted-space\" style=\"box-sizing: border-box;\">&nbsp;</span></p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&ldquo;Kita akan menyusun sama-sama dan saya minta dukungan apabila ada&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">broadcasting industry</em>&nbsp;yang menentang gagasan digitalisasi pertelevisian, perlu kita pertanyakan semangatnya apa itu,&rdquo; ungkapnya.</p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Menteri Kominfo menyatakan, saat ini di Indonesia terdapat empat jenis penyiaran televisi yakni siaran&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">free to air</em>, berbayar, melalui pancaran satelit, dan&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">streaming online</em>.</p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&ldquo;Yang pertama disebut dengan&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">free to air&nbsp;</em>yaitu&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">mainstream-mainstream&nbsp;</em>TV yang ada saat ini baik penyiaran publik maupun lembaga-lembaga penyiaran swasta,&rdquo; ungkapnya.</p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Namun, seiring dengan disrupsi teknologi, perkembangan penyiaran mulai bermunculan di berbagai&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">platform</em>&nbsp;dengan jenis penyiaran yang berbayar.</p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&ldquo;Kedua, ada juga lembaga-lembaga baru yang disebut sebagai penyiaran berbayar seperti Indovision, Trans TV dan sejenisnya.&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">Platform&nbsp;</em>itu banyak digunakan juga atau disewa oleh berbagai jenis penyiaran,&rdquo; jelas Menteri Kominfo.</p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Menteri Johnny melanjutkan, jenis penyiaran yang ketiga adalah penyiaran yang menggunakan akses kapasitas satelit untuk menampung hampir seluruh layanan&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">broadcast</em>&nbsp;di Indonesia.</p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&ldquo;Baik itu kapasitas-kapasitas satelit yang dimiliki oleh Indonesia, maupun kapasitas-kapasitas satelit yang ada di orbit yang tidak dimiliki oleh Indonesia,&rdquo; tuturnya.</p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Untuk jenis penyiaran keempat, Menteri Kominfo menyebut siaran&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">streaming</em>&nbsp;melalui&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">platform&nbsp;</em>digital.<span class=\"Apple-converted-space\" style=\"box-sizing: border-box;\">&nbsp;</span></p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">&ldquo;Seperti yang dilakukan Sinergio TV ini. Keempat-empatnya adalah hasil dari satu proses disrupsi dan informasi teknologi,&rdquo; ungkapnya.</p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Menyoal masih banyaknya ditemukenali siaran&nbsp;<em style=\"box-sizing: border-box; color: rgb(0, 19, 71); font-weight: 600; font-size: 17px;\">streaming&nbsp;</em>ilegal yang dapat diakses masyarakat, Menteri Johnny menegaskan hal itu menjadi tanggung jawab<span class=\"Apple-converted-space\" style=\"box-sizing: border-box;\">&nbsp;&nbsp;</span>seluruh komponen bangsa untuk mencegahnya. &rdquo;Banyak yang melakukan penyiarannya secara ilegal dengan konten-konten yang sulit dipertanggungjawabkan dan ini harus menjadi perhatian kita,&rdquo; tandasnya.</p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Menteri Kominfo mengharapkan pelaku industri penyiaran ikut serta menjaga dan berperan dalam digitalisasi pertelevisian di Indonesia.<span class=\"Apple-converted-space\" style=\"box-sizing: border-box;\">&nbsp;</span></p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"Jaga baik-baik digitalisasi pertelevisian di Indonesia. Jangan sampai tertinggal di analog akibat dari disrupsi teknologi,&rdquo; tutupnya.</p>\r\n<p class=\"p1\" style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 18px; line-height: 27px; color: rgb(38, 38, 38); font-family: \'Source Sans Pro\', sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">Selain Menteri Johnny, hadir sebagai pembicara dalam acara tersebut Menteri Pertahanan Indonesia periode 2009-2014 Purnomo Yusgiantoro, Chairman The Jakarta Consulting Group A. B. Susanto, Ketua Pembina Yayasan Tarumanegara Indra Gunawan Masman, dan Romo Andang L. Binawan (hm.ys)</p>', NULL, NULL, NULL, NULL, NULL, '2020-07-04 08:13:00', '2024-07-18 14:58:42', '7', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidangsekres`
--

CREATE TABLE `bidangsekres` (
  `id` int(10) UNSIGNED NOT NULL,
  `judulnya` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `text_foto` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bidangsekres`
--

INSERT INTO `bidangsekres` (`id`, `judulnya`, `foto`, `keterangan`, `text_foto`, `created_at`, `updated_at`, `isi`) VALUES
(4, 'Sekretariat', NULL, NULL, NULL, '2024-07-05 06:16:27', '2024-07-05 06:16:27', '<p>Sekretariat merupakan unsur pembantu Kepala Dinas di bidang pelayanan administrasi, umum, kepegawaian, tatalaksana, hukum, perundang-undangan, keuangan, penyusunan program, data, informasi, kehumasan, pemantauan dan pelaporan.</p>\r\n<p><strong>Sekretariat mempunyai tugas&nbsp;</strong>:</p>\r\n<ul>\r\n<li>Membantu Kepala Dinas dalam pengumpulan dan pengolahan data dalam rangka menyusun rencana program, monitoring, evaluasi dan penyusunan laporan, menyelenggarakan ketata-usahaan, administrasi kepegawaian, administrasi keuangan dan urusan umum serta memberikan pelayanan administrasi kepada semua unit kerja di lingkungan Dinas.</li>\r\n</ul>\r\n<p><strong>Sekretariat mempunyai fungsi&nbsp;</strong>:</p>\r\n<ul>\r\n<li>Merencakan perumusan rencana kegiatan dan program kerja Dinas;</li>\r\n<li>Mengkoordinasikan, mengevaluasi dan menyusun laporan hasil program kerja Dinas;</li>\r\n<li>Mengkoordinasikan pelaksanaan tugas bidang-bidang pada Dinas;</li>\r\n<li>Mengkoordinasikan pengelolaan ketatausahaan, rumah tangga, kehumasan dan keprotokolan;</li>\r\n<li>Mengkoordinasikan pelaksanaan administrasi kepegawaian dan kesejahteraan pegawai;</li>\r\n<li>Mengkoordinasikan pelaksanaan pengelolaan administrasi keuangan dan gaji pegawai;</li>\r\n<li>Mengkoordinasikan pelaksanaan pelayanan teknis administrasi kepala dinas dan semua unit organisasi di lingkungan Dinas; dan</li>\r\n<li>Melaksanakan tugas kedinasan lainnya yang diberikan oleh Kepala Dinas sesuai dengan bidang tugasnya.</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang_egovs`
--

CREATE TABLE `bidang_egovs` (
  `id` int(10) UNSIGNED NOT NULL,
  `judulnya` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `text_foto` varchar(255) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bidang_egovs`
--

INSERT INTO `bidang_egovs` (`id`, `judulnya`, `foto`, `text_foto`, `isi`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Bidang Layanan e-Gov', NULL, NULL, '<p><strong>Bidang Layanan E-Goverment</strong></p>\r\n<p>Bidang Layanan E-Goverment mempunyai tugas melaksanakan penyiapan koordinasi, fasilitasi perumusan dan pelaksanaan kebijakan, evaluasi serta pelaporan pelaksanaan Layanan Manajemen Data Informasi e-government, Integrasi Layanan Publik dan Kepemerintahan, layanan Keamanan Informasi e-Government, Layanan Sistem Komunikasi Intra Pemerintah Kabupaten, Pengembangan Sumber Daya TIK pemerintah Kabupaten dan masyarakat serta Penyelenggaraan Government Chief Information Officer (GCIO) Pemerintah Kabupaten, Penyelenggaraan Ekosistem TIK Smart City di Kabupaten.</p>\r\n<p><strong>Fungsi</strong></p>\r\n<p>Secara umum Dinas Komunikasi dan Informatika merupakan unsur pelaksana urusan pemerintahan daerah dibidang Komunikasi dan Informatika yang memiliki fungsi meliputi :</p>\r\n<ol>\r\n<li>Perumusan kebijakan teknis dibidang komunikasi dan informatika.</li>\r\n<li>Penyelenggara pengelolaan opini dan aspirasi publik di lingkup Pemerintah Daerah, pengelolaan informasi untuk mendukung kebijakan nasional dan pemerintah daerah pelayanan informasi publik di Kabupaten.</li>\r\n<li>Penyelenggaraan layanan infrastruktur dasar data center, disaster recovery center dan TIK pemerintah kabupaten, layanan pengembangan intranet dan penggunaan akses internet, layanan pengembangan dan pengelolaan aplikasi generik, spesifik dan suplemen yang terintegrasi, layanan manajemen data informasi e-government, integrasi layanan publik dan kepemerintahan, layanan keamanan informasi e-government, layanan sistem komunikasi intra pemerintah kabupaten.</li>\r\n<li>Penyelenggaraan layanan hubungan media, penguatan kapasitas sumber daya komunikasi publik dan penyediaan akses informasi, layanan nama domain dan sub domain bagi lembaga, pelayanan publik dan kegiatan Kabupaten pengembangan sumber daya TIK pemerintah Kabupaten dan masyarakat penyelenggaraan Government Chief Information Officer (GCIO) Pemerintah Kabupaten, Penyelenggaraan Ekosistem TIK Smart City di Kabupaten.</li>\r\n<li>Pelaksanaan evaluasi dan pelaporan penyelenggaraan urusan pemerintahan daerah di bidang komunikasi dan informatika.</li>\r\n<li>Pelaksanaan administrasi Dinas Komunikasi dan informatika.</li>\r\n<li>Pelaksanaan fungsi lain yang terkait bidang Komunikasi dan informatika yang diberikan oleh Bupati.</li>\r\n</ol>', NULL, '2024-07-08 02:33:00', '2024-07-08 02:56:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang_infokoms`
--

CREATE TABLE `bidang_infokoms` (
  `id` int(10) UNSIGNED NOT NULL,
  `judulnya` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `text_foto` text DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bidang_infokoms`
--

INSERT INTO `bidang_infokoms` (`id`, `judulnya`, `foto`, `text_foto`, `isi`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 'Bidang Pengelolaan Informasi dan Komunikasi Publik', NULL, NULL, '<p><strong>Bidang Pengelolaan Informasi dan Komunikasi Publik</strong></p>\r\n<p><br>Bidang Pengelolaan Informasi dan Komunikasi Publik mempunyai tugas melaksanakan penyiapan Koordinasi, fasilitasi perumusan dan pelaksanaan kebijakan, evaluasi serta pelaporan pelaksanaan pengelolaan opini dan aspirasi publik dilingkup pemerintah daerah, pengelolaan informasi untuk mendukung kebijakan nasional dan pemerintah daerah pelayanan informasi publik di kabupaten, layanan infrastruktur dasar data center, layanan hubungan media, penguatan kapasitas sumber daya komunikasi publik dan penyediaan akses informasi, layanan nama domain dan sub domain bagi lembaga, pelayanan publik dan kegiatan Kabupaten, pengembangan sumber daya TIK Pemerintah Kabupaten dan masyarakat, layanan pengembangan intranet dan penggunaan akses internet serta layanan pengembangan dan pengelolaan aplikasi generik, spesifik dan suplemen yang terintegrasi.</p>', NULL, '2024-07-08 03:09:06', '2024-07-08 03:09:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bukutamus`
--

CREATE TABLE `bukutamus` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nohp` varchar(255) DEFAULT NULL,
  `keperluan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bukutamus`
--

INSERT INTO `bukutamus` (`id`, `nama`, `foto`, `alamat`, `nohp`, `keperluan`, `created_at`, `updated_at`) VALUES
(1, 'Romy Heriyanto', 'storage/foto-bukutamu/RomyHeriyanto_65ae36be1a3a8.png', 'Muara Sabak Timur', NULL, 'Berkunjung', '2024-01-22 09:34:54', '2024-01-22 09:34:54'),
(2, 'Akang', 'storage/foto-bukutamu/Akang_65af22a3ab7ab.png', 'Jl. Italia', '058412121246', 'Test', '2024-01-23 02:21:23', '2024-01-23 02:21:23'),
(3, 'BIAGI', 'storage/foto-bukutamu/BIAGI_65af5d74465b6.png', 'Jl. Italia barat', '058412121246', 'Test isi Daftar Tamu', '2024-01-23 06:32:20', '2024-01-23 06:32:20'),
(4, 'Romy Heriyanto', 'storage/foto-bukutamu/RomyHeriyanto_65af69ba96b3e.png', 'Jl. Italia barat', '058412121299', 'Kerja', '2024-01-23 07:24:42', '2024-01-23 07:24:42'),
(5, 'SAKTI AHLI', 'storage/foto-bukutamu/SAKTIAHLI_65b0c67835a8d.png', 'Jl. Italia', '058412121246', 'keperluan', '2024-01-24 08:12:40', '2024-01-24 08:12:40'),
(6, 'Si anu', 'storage/foto-bukutamu/Sianu_65b879ef9e94e.png', 'jauh', '081245784124', 'Test', '2024-01-30 04:24:15', '2024-01-30 04:24:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(2, NULL, 1, 'Category 2', 'category-2', '2023-12-20 00:24:46', '2023-12-20 00:24:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_blank_spots`
--

CREATE TABLE `data_blank_spots` (
  `id` int(10) UNSIGNED NOT NULL,
  `Judul` varchar(255) DEFAULT NULL,
  `isi_halaman` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_blank_spots`
--

INSERT INTO `data_blank_spots` (`id`, `Judul`, `isi_halaman`, `created_at`, `updated_at`) VALUES
(1, 'Data Blank Spot', '<p>Data Blank Spot 28 Juli 2021&nbsp;<a href=\"http://localhost:8000/storage/linkfiles/July2024/DVFKO92VrAVJl7TCI11N.pdf\" target=\"_blank\" rel=\"noopener\">Download</a></p>\r\n<p>Data Blank Spot 25 Juni 2021&nbsp;<a href=\"http://localhost:8000/storage/linkfiles/July2024/lOBruepQB25mAMQN7Huw.pdf\" target=\"_blank\" rel=\"noopener\">Download</a></p>\r\n<p>DAFTAR NAMA DESA / KELURAHAN YANG BELUM TERJANGKAU JARINGAN SELULER (BLANK SPOT)</p>\r\n<p>DI KABUPATEN TANJUNG JABUNG TIMUR 2021</p>\r\n<p>PER FEBRUARI 2021</p>\r\n<p>&nbsp;</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>NO</td>\r\n<td>NAMA DESA/KELURAHAN</td>\r\n<td>\r\n<p>JUMLAH PENDUDUK</p>\r\n</td>\r\n<td>MATA PENCAHARIAN</td>\r\n<td>FASILITAS LISTRIK</td>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>2</td>\r\n<td>3</td>\r\n<td>4</td>\r\n<td>5</td>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>KECAMATAN MUARA SABAK TIMUR</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>1. Desa Sungai Ular</td>\r\n<td>692</td>\r\n<td>Bertani/Berkebun/Berdagang</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>2. Desa Kota Raja</td>\r\n<td>1606</td>\r\n<td>Bertani/Berkebun/Berdagang</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>3. Desa Alang-Alang</td>\r\n<td>1281</td>\r\n<td>Bertani/Berkebun/Berdagang</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>4. Desa&nbsp;Kuala Simbur</td>\r\n<td>1006</td>\r\n<td>Bertani/Berkebun/Nelayan</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>KECAMATAN GERAGAI</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>1. Kelurahan Pandan Jaya</td>\r\n<td>6435</td>\r\n<td>Bertani/Karyawan</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>2. Desa Lagan Ulu</td>\r\n<td>2391</td>\r\n<td>Bertani</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>KECAMATAN MENDAHARA</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>1. Desa Bhakti Idaman</td>\r\n<td>2726</td>\r\n<td>Bertani/Karyawan</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>2. Desa Pangkal Duri Ilir</td>\r\n<td>1373</td>\r\n<td>Bertani/Nelayan</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>KECAMATAN RANTAU RASAU</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>1.&nbsp;Desa Sungai Dusun</td>\r\n<td>308</td>\r\n<td>Bertani</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>2. Desa Marga Mulya</td>\r\n<td>1066</td>\r\n<td>Bertani</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>3. Desa Tri Mulya</td>\r\n<td>2078</td>\r\n<td>Bertani</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>KECAMATAN MUARA SABAK BARAT</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>1. Kelurahan&nbsp;kampung Singkep</td>\r\n<td>2661</td>\r\n<td>Bertani/Berkebun/Berdagang</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>2. Kelurahan Parit Culum II</td>\r\n<td>1888</td>\r\n<td>Berkebun/Berdagang</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>KECAMATAN DENDANG</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>1. Desa&nbsp;Kuala Dendang</td>\r\n<td>1991</td>\r\n<td>Bertani/Berkebun/Berdagang</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>2. Desa Koto Kandis Dendang</td>\r\n<td>723</td>\r\n<td>Bertani/Berkebun/Berdagang</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>KECAMATAN KUALA JAMBI</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>1. Desa Manunggal Makmur</td>\r\n<td>617</td>\r\n<td>Bertani/Berkebun/Berdagang</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>KECAMATAN BERBAK</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>1. Desa&nbsp;Rantau Rasau</td>\r\n<td>2769</td>\r\n<td>Bertani/Berdagang</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>9</td>\r\n<td>KECAMATAN SADU</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>1. Desa Labuhan Pering</td>\r\n<td>1436</td>\r\n<td>Bertani/Nelayan/Berdagang</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>2. Desa Sungai Cemara</td>\r\n<td>519</td>\r\n<td>Bertani/Nelayan</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>3. Desa Sungai Benuh</td>\r\n<td>119</td>\r\n<td>Bertani/Nelayan</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>10</td>\r\n<td>KECAMATAN NIPAH PANJANG</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>1. Desa Simpang Datuk</td>\r\n<td>1128</td>\r\n<td>Bertani/Berdagang</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>2. Desa Teluk Kijing</td>\r\n<td>1147</td>\r\n<td>Bertani/Berdagang</td>\r\n<td>PLN</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>3. Desa Simpang Jelita</td>\r\n<td>638</td>\r\n<td>Bertani/Berdagang</td>\r\n<td>PLN</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Catt : Jumlah Titik Blank Spot sebanyak 23 Titik</p>\r\n<p>Sumber Data: Diskominfo Kab. Tanjabtim</p>', '2024-07-03 04:19:00', '2024-07-03 04:45:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_radio_swastas`
--

CREATE TABLE `data_radio_swastas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_stasiun_radio` varchar(255) DEFAULT NULL,
  `no_isr` varchar(255) DEFAULT NULL,
  `no_ipp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_radio_swastas`
--

INSERT INTO `data_radio_swastas` (`id`, `nama_stasiun_radio`, `no_isr`, `no_ipp`, `created_at`, `updated_at`, `keterangan`) VALUES
(1, 'SIDOMUKTI TIMUR FM', 'Nomor 01703441-000SU/2020142019', 'Nomor 1025 TAHUN 2015', '2024-04-25 03:59:57', '2024-04-25 03:59:57', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(116, 25, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(117, 25, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(118, 25, 'deskripsi', 'text', 'Deskripsi', 0, 1, 1, 1, 1, 1, '{}', 3),
(119, 25, 'slider', 'image', 'Slider', 0, 1, 1, 1, 1, 1, '{}', 4),
(120, 25, 'tautan', 'text', 'Tautan', 0, 1, 1, 1, 1, 1, '{}', 5),
(121, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(122, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(139, 29, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(140, 29, 'tanggal', 'text', 'Tanggal', 1, 1, 1, 0, 0, 1, '{}', 2),
(141, 29, 'nama', 'text', 'Nama', 1, 1, 1, 0, 0, 1, '{}', 3),
(142, 29, 'alamat', 'text', 'Alamat', 1, 1, 1, 0, 0, 1, '{}', 4),
(143, 29, 'kritik_saran', 'text', 'Kritik Saran', 1, 1, 1, 0, 0, 1, '{}', 5),
(144, 29, 'pendapat_pelayanan', 'text', 'Pendapat Pelayanan', 0, 1, 1, 0, 0, 1, '{}', 6),
(145, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(146, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 8),
(182, 36, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(183, 36, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(184, 36, 'foto', 'multiple_images', 'Foto', 0, 1, 1, 1, 1, 1, '{}', 3),
(185, 36, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 4),
(186, 36, 'ket', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 5),
(187, 36, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(188, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(189, 37, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(190, 37, 'nama', 'text', 'Nama', 1, 1, 1, 0, 0, 1, '{}', 2),
(191, 37, 'foto', 'text', 'Foto', 1, 1, 1, 0, 0, 1, '{}', 3),
(192, 37, 'alamat', 'text', 'Alamat', 1, 1, 1, 0, 0, 1, '{}', 4),
(193, 37, 'nohp', 'text', 'Nohp', 0, 1, 1, 0, 0, 1, '{}', 5),
(194, 37, 'keperluan', 'text', 'Keperluan', 1, 1, 1, 0, 0, 1, '{}', 6),
(195, 37, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 1, '{}', 7),
(196, 37, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 8),
(208, 41, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(209, 41, 'judul_sejarah', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(210, 41, 'foto_sejarah', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{\"default\":\"assets\\/images\\/DKI_Ok.png\"}', 3),
(211, 41, 'isi_sejarah', 'markdown_editor', 'Isi', 0, 1, 1, 1, 1, 1, '{}', 4),
(212, 41, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(213, 41, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(214, 42, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(215, 42, 'judul_struktur', 'text', 'Judul Struktur', 0, 1, 1, 1, 1, 1, '{}', 2),
(216, 42, 'foto_struktur', 'image', 'Foto Struktur', 0, 1, 1, 1, 1, 1, '{\"default\":\"assets\\/images\\/DKI_Ok.png\"}', 3),
(217, 42, 'keterangan', 'text_area', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 4),
(218, 42, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(219, 42, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(240, 45, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(241, 45, 'Judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(242, 45, 'foto', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{\"default\":\"assets\\/images\\/DKI_Ok.png\"}', 3),
(243, 45, 'isi', 'rich_text_box', 'Isi', 0, 1, 1, 1, 1, 1, '{}', 4),
(244, 45, 'Keterangan', 'text_area', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 5),
(245, 45, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(246, 45, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(247, 46, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(248, 46, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(249, 46, 'foto', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{\"default\":\"assets\\/images\\/DKI_Ok.png\"}', 3),
(250, 46, 'keterangan', 'text_area', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 5),
(251, 46, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(252, 46, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(253, 46, 'isi', 'markdown_editor', 'Isi', 0, 1, 1, 1, 1, 1, '{}', 4),
(254, 47, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(255, 47, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(256, 47, 'foto', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{\"default\":\"assets\\/images\\/DKI_Ok.png\"}', 3),
(257, 47, 'isi', 'markdown_editor', 'Isi', 0, 1, 1, 1, 1, 1, '{}', 4),
(258, 47, 'keterangan', 'text_area', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 5),
(259, 47, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(260, 47, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(261, 48, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(262, 48, 'judul_visimisi', 'text', 'Judul Visi Misi', 0, 1, 1, 1, 1, 1, '{}', 2),
(263, 48, 'visimisi', 'rich_text_box', 'Isi', 0, 1, 1, 1, 1, 1, '{}', 3),
(264, 48, 'fotovisimisi', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{}', 4),
(265, 48, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 5),
(266, 48, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(267, 48, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(272, 50, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(273, 50, 'nama_kategori', 'text', 'Nama Kategori', 0, 1, 1, 1, 1, 1, '{}', 2),
(274, 50, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(275, 50, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(291, 53, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(292, 53, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(293, 53, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 3),
(294, 53, 'tahun', 'number', 'Tahun', 0, 1, 1, 1, 1, 1, '{}', 4),
(295, 53, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 5),
(296, 53, 'didownload', 'hidden', 'Didownload', 0, 1, 1, 1, 1, 1, '{}', 6),
(297, 53, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(298, 53, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(307, 55, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(308, 55, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(309, 55, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 3),
(310, 55, 'tahun', 'number', 'Tahun', 0, 1, 1, 1, 1, 1, '{}', 4),
(311, 55, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 5),
(312, 55, 'didownload', 'hidden', 'Didownload', 0, 1, 1, 1, 1, 1, '{}', 6),
(313, 55, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(314, 55, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(315, 56, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(316, 56, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(317, 56, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 3),
(318, 56, 'tahun', 'number', 'Tahun', 0, 1, 1, 1, 1, 1, '{}', 4),
(319, 56, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 5),
(320, 56, 'didownload', 'hidden', 'Didownload', 0, 1, 1, 1, 1, 1, '{}', 6),
(321, 56, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(322, 56, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(339, 59, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(340, 59, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(341, 59, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 3),
(342, 59, 'tahun', 'number', 'Tahun', 0, 1, 1, 1, 1, 1, '{}', 4),
(343, 59, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 5),
(344, 59, 'didownload', 'hidden', 'Didownload', 0, 1, 1, 1, 1, 1, '{}', 6),
(345, 59, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(346, 59, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(347, 60, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(348, 60, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(349, 60, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 3),
(350, 60, 'tahun', 'number', 'Tahun', 0, 1, 1, 1, 1, 1, '{}', 4),
(351, 60, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 5),
(352, 60, 'didownload', 'hidden', 'Didownload', 0, 1, 1, 1, 1, 1, '{}', 6),
(353, 60, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(354, 60, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(355, 65, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(356, 65, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(357, 65, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 3),
(358, 65, 'tahun', 'number', 'Tahun', 0, 1, 1, 1, 1, 1, '{}', 4),
(359, 65, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 5),
(360, 65, 'didownload', 'hidden', 'Didownload', 0, 1, 1, 1, 1, 1, '{}', 6),
(361, 65, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(362, 65, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(363, 66, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(364, 66, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(365, 66, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 3),
(366, 66, 'tahun', 'text', 'Tahun', 0, 1, 1, 1, 1, 1, '{}', 4),
(367, 66, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 5),
(368, 66, 'didownload', 'hidden', 'Didownload', 0, 1, 1, 1, 1, 1, '{}', 6),
(369, 66, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(370, 66, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(371, 67, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(372, 67, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(373, 67, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 3),
(374, 67, 'tahun', 'number', 'Tahun', 0, 1, 1, 1, 1, 1, '{}', 4),
(375, 67, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 5),
(376, 67, 'didownload', 'hidden', 'Didownload', 0, 1, 1, 1, 1, 1, '{}', 6),
(377, 67, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(378, 67, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(387, 69, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(388, 69, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(389, 69, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 3),
(390, 69, 'tahun', 'number', 'Tahun', 0, 1, 1, 1, 1, 1, '{}', 4),
(391, 69, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 5),
(392, 69, 'didownload', 'hidden', 'Didownload', 0, 1, 1, 1, 1, 1, '{}', 6),
(393, 69, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(394, 69, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(395, 70, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(396, 70, 'opd', 'text', 'Opd', 0, 1, 1, 1, 1, 1, '{}', 2),
(397, 70, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(398, 70, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 4),
(399, 70, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(400, 70, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(414, 77, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(415, 77, 'nama_stasiun_radio', 'text', 'Nama Stasiun Radio', 0, 1, 1, 1, 1, 1, '{}', 2),
(416, 77, 'no_isr', 'text', 'No ISR', 0, 1, 1, 1, 1, 1, '{}', 3),
(417, 77, 'no_ipp', 'text', 'No IPP', 0, 1, 1, 1, 1, 1, '{}', 4),
(418, 77, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(419, 77, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(420, 77, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 5),
(421, 78, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(422, 78, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(423, 78, 'isi', 'rich_text_box', 'Isi', 0, 1, 1, 1, 1, 1, '{}', 3),
(424, 78, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(425, 78, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(437, 80, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(438, 80, 'kecamatan', 'select_dropdown', 'Kecamatan', 0, 1, 1, 1, 1, 1, '{\"options\":{\"KECAMATAN MUARA SABAK TIMUR\":\"KECAMATAN MUARA SABAK TIMUR\",\"KECAMATAN NIPAH PANJANG\":\"KECAMATAN NIPAH PANJANG\",\"KECAMATAN MENDAHARA\":\"KECAMATAN MENDAHARA\",\"KECAMATAN RANTAU RASAU\":\"KECAMATAN RANTAU RASAU\",\"KECAMATAN SADU\":\"KECAMATAN SADU\",\"KECAMATAN DENDANG\":\"KECAMATAN DENDANG\",\"KECAMATAN MUARA SABAK BARAT\":\"KECAMATAN MUARA SABAK BARAT\",\"KECAMATAN KUALA JAMBI\":\"KECAMATAN KUALA JAMBI\",\"KECAMATAN MENDAHARA ULU\":\"KECAMATAN MENDAHARA ULU\",\"KECAMATAN GERAGAI\":\"KECAMATAN GERAGAI\",\"KECAMATAN BERBAK\":\"KECAMATAN BERBAK\"}}', 2),
(439, 80, 'nama_pemilik', 'text', 'Nama Pemilik', 0, 1, 1, 1, 1, 1, '{}', 3),
(440, 80, 'nama_warnet', 'text', 'Nama Warnet', 0, 1, 1, 1, 1, 1, '{}', 4),
(441, 80, 'alamat', 'text', 'Alamat', 0, 1, 1, 1, 1, 1, '{}', 5),
(442, 80, 'kelengkapan_Izin', 'text', 'Kelengkapan Izin', 0, 1, 1, 1, 1, 1, '{}', 6),
(443, 80, 'tahun', 'number', 'Tahun', 0, 1, 1, 1, 1, 1, '{}', 7),
(444, 80, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 8),
(445, 80, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(446, 80, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(453, 83, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(454, 83, 'judul', 'text', 'Judul Kegiatan', 0, 1, 1, 1, 1, 1, '{}', 2),
(455, 83, 'foto', 'multiple_images', 'Foto', 0, 1, 1, 1, 1, 1, '{}', 3),
(456, 83, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 4),
(457, 83, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '{}', 5),
(458, 83, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(480, 86, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(481, 86, 'judul', 'text', 'Judul Video', 0, 1, 1, 1, 1, 1, '{}', 2),
(482, 86, 'youtube_link', 'text', 'Youtube Link', 0, 1, 1, 1, 1, 1, '{}', 3),
(483, 86, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 4),
(484, 86, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(485, 86, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(486, 87, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(487, 87, 'nama', 'text', 'Nama', 0, 1, 1, 1, 1, 1, '{}', 2),
(488, 87, 'foto_pegawai', 'image', 'Foto Pegawai', 0, 1, 1, 1, 1, 1, '{\"default\":\"assets\\/images\\/pegawai.png\"}', 3),
(489, 87, 'jabatan_id', 'select_dropdown', 'Jabatan Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(490, 87, 'pangkat', 'select_dropdown', 'Pangkat', 0, 1, 1, 1, 1, 1, '{\"default\":\"Golongan I\",\"options\":{\"Golongan I\":\"Golongan I\",\"Golongan IV\":\"Golongan IV\",\"Golongan V\":\"Golongan V\",\"Golongan VI\":\"Golongan VI\",\"Golongan VII\":\"Golongan VII\",\"Golongan IX\":\"Golongan IX\",\"Golongan X\":\"Golongan X\",\"Golongan XI\":\"Golongan XI\",\"Juru Muda I\\/a\":\"Juru Muda I\\/a\",\"Juru Muda Tingkat I I\\/b\":\"Juru Muda Tingkat I I\\/b\",\"Juru I\\/c\":\"Juru I\\/c\",\"Juru Tingkat I I\\/d\":\"Juru Tingkat I I\\/d\",\"Pengatur Muda II\\/a\":\"Pengatur Muda II\\/a\",\"Pengatur Muda Tingkat I II\\/b\":\"Pengatur Muda Tingkat I II\\/b\",\"Pengatur II\\/c\":\"Pengatur II\\/c\",\"Pengatur Tingkat I II\\/d\":\"Pengatur Tingkat I II\\/d\",\"Penata Muda III\\/a\":\"Penata Muda III\\/a\",\"Penata Muda Tingkat I III\\/b\":\"Penata Muda Tingkat I III\\/b\",\"Penata III\\/c\":\"Penata III\\/c\",\"Penata Tingkat I III\\/d\":\"Penata Tingkat I III\\/d\",\"Pembina IV\\/a\":\"Pembina IV\\/a\",\"Pembina Tingkat I IV\\/b\":\"Pembina Tingkat I IV\\/b\",\"Pembina Utama Muda IV\\/c\":\"Pembina Utama Muda IV\\/c\",\"Pembina Utama Madya IV\\/d\":\"Pembina Utama Madya IV\\/d\",\"Pembina Utama IV\\/e\":\"Pembina Utama IV\\/e\"}}', 6),
(491, 87, 'tempat', 'text', 'Tempat', 0, 1, 1, 1, 1, 1, '{}', 7),
(492, 87, 'tanggal_lahir', 'date', 'Tanggal Lahir', 0, 1, 1, 1, 1, 1, '{}', 8),
(493, 87, 'jk', 'select_dropdown', 'Jenis Kelamin', 0, 1, 1, 1, 1, 1, '{\"default\":\"Laki-laki\",\"options\":{\"Laki-laki\":\"Laki-laki\",\"Perempuan\":\"Perempuan\"}}', 9),
(494, 87, 'pendidikan', 'text', 'Pendidikan', 0, 1, 1, 1, 1, 1, '{}', 10),
(495, 87, 'tahunlulus', 'number', 'Tahun lulus', 0, 1, 1, 1, 1, 1, '{}', 11),
(496, 87, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 12),
(497, 87, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 13),
(498, 87, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(499, 88, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(500, 88, 'nama_jabatan', 'text', 'Nama Jabatan', 0, 1, 1, 1, 1, 1, '{}', 2),
(501, 88, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(502, 88, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(503, 87, 'pegawai_belongsto_jabatan_relationship', 'relationship', 'Jabatan', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Jabatan\",\"table\":\"jabatans\",\"type\":\"belongsTo\",\"column\":\"jabatan_id\",\"key\":\"id\",\"label\":\"nama_jabatan\",\"pivot_table\":\"beritas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(504, 89, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(505, 89, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(506, 89, 'deskripsi', 'text', 'Deskripsi', 0, 1, 1, 1, 1, 1, '{}', 3),
(507, 89, 'banner', 'file', 'Standing Banner', 0, 1, 1, 1, 1, 1, '{}', 4),
(508, 89, 'tautan', 'text', 'Tautan', 0, 1, 1, 1, 1, 1, '{}', 5),
(509, 89, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(510, 89, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(511, 91, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(512, 91, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(513, 91, 'deskripsi', 'text', 'Deskripsi', 0, 1, 1, 1, 1, 1, '{}', 3),
(514, 91, 'banner', 'text', 'Banner', 0, 1, 1, 1, 1, 1, '{}', 4),
(515, 91, 'tautan', 'text', 'Tautan', 0, 1, 1, 1, 1, 1, '{}', 5),
(516, 91, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(517, 91, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(518, 93, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(519, 93, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(520, 93, 'deskripsi', 'text', 'Deskripsi', 0, 1, 1, 1, 1, 1, '{}', 3),
(521, 93, 'banner', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{}', 4),
(522, 93, 'tautan', 'text', 'Tautan', 0, 1, 1, 1, 1, 1, '{}', 5),
(523, 93, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(524, 93, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(525, 94, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(526, 94, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(527, 94, 'deskripsi', 'text', 'Deskripsi', 0, 1, 1, 1, 1, 1, '{}', 3),
(528, 94, 'bannernya', 'image', 'Banner', 0, 1, 1, 1, 1, 1, '{}', 4),
(529, 94, 'tautan', 'text', 'Tautan', 0, 1, 1, 1, 1, 1, '{}', 5),
(530, 94, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(531, 94, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(532, 95, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(533, 95, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":false}', 2),
(534, 95, 'tahun', 'number', 'Tahun', 0, 1, 1, 1, 1, 1, '{}', 3),
(535, 95, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 4),
(536, 95, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 5),
(537, 95, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(538, 95, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(546, 101, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(547, 101, 'Judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(548, 101, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 3),
(549, 101, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(550, 101, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(551, 101, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 4),
(552, 103, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(553, 103, 'Judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(554, 103, 'isi_halaman', 'rich_text_box', 'Isi Halaman', 0, 1, 1, 1, 1, 1, '{}', 3),
(555, 103, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(556, 103, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(557, 104, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(558, 104, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(559, 104, 'subjudul', 'text', 'Subjudul', 0, 1, 1, 1, 1, 1, '{}', 3),
(560, 104, 'headline', 'text', 'Headline', 0, 1, 1, 1, 1, 1, '{}', 4),
(561, 104, 'foto', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{}', 5),
(562, 104, 'text_foto', 'text', 'Text Foto', 0, 1, 1, 1, 1, 1, '{}', 6),
(563, 104, 'isi_berita', 'rich_text_box', 'Isi Berita', 0, 1, 1, 1, 1, 1, '{}', 7),
(564, 104, 'kredit', 'text', 'Kredit', 0, 1, 1, 1, 1, 1, '{}', 8),
(565, 104, 'penulis', 'text', 'Penulis', 0, 1, 1, 1, 1, 1, '{}', 9),
(566, 104, 'editor', 'text', 'Editor', 0, 1, 1, 1, 1, 1, '{}', 10),
(567, 104, 'sumber', 'text', 'Sumber', 0, 1, 1, 1, 1, 1, '{}', 11),
(568, 104, 'youtube', 'text', 'Youtube', 0, 1, 1, 1, 1, 1, '{}', 12),
(569, 104, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '{}', 13),
(570, 104, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(571, 104, 'dibaca', 'hidden', 'Dibaca', 0, 0, 0, 0, 0, 0, '{}', 15),
(572, 104, 'kategori_id', 'text', 'Kategori Id', 0, 1, 1, 1, 1, 1, '{}', 16),
(573, 104, 'berita_belongsto_kategori_berita_relationship', 'relationship', 'kategori_beritas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\KategoriBerita\",\"table\":\"kategori_beritas\",\"type\":\"belongsTo\",\"column\":\"kategori_id\",\"key\":\"id\",\"label\":\"nama_kategori\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(574, 105, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(575, 105, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":true}', 2),
(576, 105, 'isi_halaman', 'rich_text_box', 'Isi Halaman', 0, 1, 1, 1, 1, 1, '{}', 3),
(577, 105, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(578, 105, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(579, 110, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(580, 110, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(581, 110, 'isi_pengumuman', 'rich_text_box', 'Isi Pengumuman', 0, 1, 1, 1, 1, 1, '{}', 3),
(582, 110, 'file_pendukung', 'file', 'File Pendukung', 0, 1, 1, 1, 1, 1, '{}', 4),
(583, 110, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(584, 110, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(594, 112, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(595, 112, 'judul', 'text', 'Judul Weblink', 0, 1, 1, 1, 1, 1, '{}', 2),
(596, 112, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 3),
(597, 112, 'logo_web', 'image', 'Logo Web', 0, 1, 1, 1, 1, 1, '{}', 4),
(598, 112, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(599, 112, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(600, 113, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(601, 113, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":false,\"showLatLngInput\":false}', 2),
(602, 113, 'foto', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{\"default\":\"assets\\/images\\/DKI_Ok.png\"}', 4),
(603, 113, 'isi', 'rich_text_box', 'Isi', 0, 1, 1, 1, 1, 1, '{}', 3),
(604, 113, 'text_foto', 'text', 'Text Foto', 0, 1, 1, 1, 1, 1, '{}', 5),
(605, 113, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(606, 113, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(618, 116, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(619, 116, 'agenda', 'text', 'Agenda', 0, 1, 1, 1, 1, 1, '{}', 2),
(620, 116, 'tanggal', 'date', 'Tanggal', 0, 1, 1, 1, 1, 1, '{}', 3),
(621, 116, 'waktu', 'text', 'Waktu', 0, 1, 1, 1, 1, 1, '{\"$schema\":\"http:\\/\\/json-schema.org\\/draft-07\\/schema#\",\"title\":\"Number Input Schema\",\"type\":\"object\",\"properties\":{\"numberInput\":{\"type\":\"number\",\"description\":\"An input that only accepts numbers\"}},\"required\":[\"numberInput\"]}', 4),
(622, 116, 'tempat', 'text', 'Tempat', 0, 1, 1, 1, 1, 1, '{}', 5),
(623, 116, 'perihal', 'text', 'Perihal', 0, 1, 1, 1, 1, 1, '{}', 6),
(624, 116, 'jadwal', 'text', 'Jadwal', 0, 1, 1, 1, 1, 1, '{}', 7),
(625, 116, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(626, 116, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(628, 117, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(629, 117, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":false}', 2),
(630, 117, 'foto', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{\"default\":\"assets\\/images\\/DKI_Ok.png\"}', 3),
(631, 117, 'text_foto', 'text', 'Text Foto', 0, 1, 1, 1, 1, 1, '{}', 4),
(632, 117, 'isi', 'rich_text_box', 'Isi', 0, 1, 1, 1, 1, 1, '{}', 5),
(633, 117, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(634, 117, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(643, 119, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(644, 119, 'judulnya', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":false}', 2),
(645, 119, 'foto', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{\"default\":\"assets\\/images\\/DKI_Ok.png\"}', 3),
(646, 119, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 6),
(647, 119, 'text_foto', 'text', 'Text Foto', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":false}', 4),
(648, 119, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(649, 119, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(650, 119, 'isi', 'rich_text_box', 'Isi', 0, 1, 1, 1, 1, 1, '{}', 5),
(651, 120, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(652, 120, 'judulnya', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":false}', 2),
(653, 120, 'foto', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{\"default\":\"assets\\/images\\/DKI_Ok.png\"}', 3),
(654, 120, 'text_foto', 'text', 'Text Foto', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":false}', 4),
(655, 120, 'isi', 'rich_text_box', 'Isi', 0, 1, 1, 1, 1, 1, '{}', 5),
(656, 120, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 6),
(657, 120, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(658, 120, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(667, 123, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(668, 123, 'judulnya', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":false}', 2),
(669, 123, 'foto', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{\"default\":\"assets\\/images\\/DKI_Ok.png\"}', 3),
(670, 123, 'text_foto', 'text', 'Text Foto', 0, 1, 1, 1, 1, 1, '{\"showAutocompleteInput\":false}', 4),
(671, 123, 'isi', 'rich_text_box', 'Isi', 0, 1, 1, 1, 1, 1, '{}', 5),
(672, 123, 'keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 6),
(673, 123, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(674, 123, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(675, 124, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(676, 124, 'judul', 'text', 'Judul', 0, 1, 1, 1, 1, 1, '{}', 2),
(677, 124, 'katasambutan', 'rich_text_box', 'Kata Sambutan', 0, 1, 1, 1, 1, 1, '{}', 3),
(678, 124, 'penulis', 'text', 'Penulis', 0, 1, 1, 1, 1, 1, '{}', 4),
(679, 124, 'foto', 'image', 'Foto', 0, 1, 1, 1, 1, 1, '{}', 5),
(680, 124, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(681, 124, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(703, 128, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(704, 128, 'nama_jalan', 'text', 'Alamat / Jalan', 0, 1, 1, 1, 1, 1, '{}', 2),
(705, 128, 'nomor_telepon_fax', 'text', 'Nomor Telepon/Fax', 0, 1, 1, 1, 1, 1, '{}', 3),
(706, 128, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{\"email\":\"The :attribute must be a valid email address.\"}', 4),
(707, 128, 'google_maps_url', 'text_area', 'Google Maps Url', 0, 1, 1, 1, 1, 1, '{}', 5),
(708, 128, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(709, 128, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(710, 129, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(711, 129, 'nama_aplikasi', 'text', 'Nama Aplikasi', 0, 1, 1, 1, 1, 1, '{}', 2),
(712, 129, 'link_aplikasi', 'text', 'Link Aplikasi', 0, 1, 1, 1, 1, 1, '{}', 3),
(713, 129, 'logo_aplikasi', 'image', 'Logo Aplikasi', 0, 1, 1, 1, 1, 1, '{}', 4),
(714, 129, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(715, 129, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_tv_kabels`
--

CREATE TABLE `data_tv_kabels` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `isi_halaman` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_tv_kabels`
--

INSERT INTO `data_tv_kabels` (`id`, `judul`, `isi_halaman`, `created_at`, `updated_at`) VALUES
(1, 'Daftar TV Kabel', '<p><strong>DATA PER 20 AGUSTUS 2018</strong></p>\n<table style=\"width: 100%; height: 537.374px;\">\n<tbody>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 2.2658%; height: 22.3906px;\">No</td>\n<td style=\"width: 10.065%; height: 22.3906px;\">Nama&nbsp;&nbsp;</td>\n<td style=\"width: 30.0309%; height: 22.3906px;\">Wilayah Kerja</td>\n<td style=\"width: 15.8705%; height: 22.3906px;\">&nbsp;</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Alamat Kantor</td>\n<td style=\"width: 14.016%; height: 22.3906px;\">Keterangan</td>\n</tr>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 2.2658%; height: 335.859px;\" rowspan=\"11\">1</td>\n<td style=\"width: 10.065%; height: 22.3906px;\">H. Kurnaini</td>\n<td style=\"width: 30.0309%; height: 22.3906px;\">Sungai Tawar</td>\n<td style=\"width: 15.8705%; height: 335.859px;\" rowspan=\"11\">PT. NIPAH MITRA VISION</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Desa Sungai Tawar</td>\n<td style=\"width: 14.016%; height: 335.859px;\" rowspan=\"11\">IPP Prinsip</td>\n</tr>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 10.065%; height: 22.3906px;\">Ambo Tuwo</td>\n<td style=\"width: 30.0309%; height: 22.3906px;\">Nipah Panjang, Pelita</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Nipah Panjang</td>\n</tr>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 10.065%; height: 22.3906px;\">Asis</td>\n<td style=\"width: 30.0309%; height: 22.3906px;\">Nipah Panjang</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Nipah Panjang</td>\n</tr>\n<tr style=\"height: 44.7812px;\">\n<td style=\"width: 10.065%; height: 44.7812px;\">Muliadi</td>\n<td style=\"width: 30.0309%; height: 44.7812px;\">Lambur Luar, Muara Sabak Timur, Simbur Naik</td>\n<td style=\"width: 18.8677%; height: 44.7812px;\">Lambur Luar</td>\n</tr>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 10.065%; height: 22.3906px;\">Latif</td>\n<td style=\"width: 30.0309%; height: 22.3906px;\">Kampung Laut</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Kampung Laut</td>\n</tr>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 10.065%; height: 22.3906px;\">Saipul</td>\n<td style=\"width: 30.0309%; height: 22.3906px;\">Muara Sabak Barat</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Muara Sabak Barat</td>\n</tr>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 10.065%; height: 22.3906px;\">Anto</td>\n<td style=\"width: 30.0309%; height: 22.3906px;\">Blok D, Mendahara Ilir, Sungai Beras</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Kec. Geragai Blok D</td>\n</tr>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 10.065%; height: 22.3906px;\">Burhidayah</td>\n<td style=\"width: 30.0309%; height: 22.3906px;\">Mendahara Tengah</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Mendahara Tengah</td>\n</tr>\n<tr style=\"height: 44.7812px;\">\n<td style=\"width: 10.065%; height: 44.7812px;\">Bustang</td>\n<td style=\"width: 30.0309%; height: 44.7812px;\">Muara Sabak Barat, Kampung Laut, Teluk Majelis</td>\n<td style=\"width: 18.8677%; height: 44.7812px;\">Kampung Laut</td>\n</tr>\n<tr style=\"height: 44.7812px;\">\n<td style=\"width: 10.065%; height: 44.7812px;\">Idrus</td>\n<td style=\"width: 30.0309%; height: 44.7812px;\">Sungai Lokan, Sungai Jambat</td>\n<td style=\"width: 18.8677%; height: 44.7812px;\">Kec. Sadu Desa Sungai Lokan</td>\n</tr>\n<tr style=\"height: 44.7812px;\">\n<td style=\"width: 10.065%; height: 44.7812px;\">Sandi</td>\n<td style=\"width: 30.0309%; height: 44.7812px;\">Sungai Lokan</td>\n<td style=\"width: 18.8677%; height: 44.7812px;\">Kec. Sadu Desa Sungai Lokan</td>\n</tr>\n<tr style=\"height: 44.7812px;\">\n<td style=\"width: 2.2658%; height: 44.7812px;\">2</td>\n<td style=\"width: 10.065%; height: 44.7812px;\">Arfah</td>\n<td style=\"width: 30.0309%; height: 44.7812px;\">Kec. Nipah Panjang</td>\n<td style=\"width: 15.8705%; height: 44.7812px;\">&nbsp;</td>\n<td style=\"width: 18.8677%; height: 44.7812px;\">Nipah Panjang</td>\n<td style=\"width: 14.016%; height: 44.7812px;\">IPP Tetap, IPP Prinsip</td>\n</tr>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 2.2658%; height: 22.3906px;\">3</td>\n<td style=\"width: 10.065%; height: 22.3906px;\">Marzuki</td>\n<td style=\"width: 30.0309%; height: 22.3906px;\">Kec. Sadu</td>\n<td style=\"width: 15.8705%; height: 22.3906px;\">&nbsp;</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Sungai Itik</td>\n<td style=\"width: 14.016%; height: 22.3906px;\">&nbsp;</td>\n</tr>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 2.2658%; height: 22.3906px;\">4</td>\n<td style=\"width: 10.065%; height: 22.3906px;\">H. Usman</td>\n<td style=\"width: 30.0309%; height: 22.3906px;\">Kec. Mendahara</td>\n<td style=\"width: 15.8705%; height: 22.3906px;\">&nbsp;</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Kel. Mendahara Ilir</td>\n<td style=\"width: 14.016%; height: 22.3906px;\">OFF AIR</td>\n</tr>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 2.2658%; height: 44.7812px;\" rowspan=\"2\">5</td>\n<td style=\"width: 10.065%; height: 44.7812px;\" rowspan=\"2\">Yasin Masduki</td>\n<td style=\"width: 30.0309%; height: 22.3906px;\">Kec. Mendahara</td>\n<td style=\"width: 15.8705%; height: 22.3906px;\">&nbsp;</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Mendahara Tengah</td>\n<td style=\"width: 14.016%; height: 22.3906px;\">&nbsp;</td>\n</tr>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 30.0309%; height: 22.3906px;\">Kec. Mendahara Ulu</td>\n<td style=\"width: 15.8705%; height: 22.3906px;\">&nbsp;</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Simpang Kiri</td>\n<td style=\"width: 14.016%; height: 22.3906px;\">&nbsp;</td>\n</tr>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 2.2658%; height: 22.3906px;\">6</td>\n<td style=\"width: 10.065%; height: 22.3906px;\">Ali</td>\n<td style=\"width: 30.0309%; height: 22.3906px;\">Kec. Muara Sabak Timur</td>\n<td style=\"width: 15.8705%; height: 22.3906px;\">&nbsp;</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Luaka Simbur</td>\n<td style=\"width: 14.016%; height: 22.3906px;\">&nbsp;</td>\n</tr>\n<tr style=\"height: 22.3906px;\">\n<td style=\"width: 2.2658%; height: 22.3906px;\">7</td>\n<td style=\"width: 10.065%; height: 22.3906px;\">Suhaidi</td>\n<td style=\"width: 30.0309%; height: 22.3906px;\">Kec. Muara Sabak Timur</td>\n<td style=\"width: 15.8705%; height: 22.3906px;\">&nbsp;</td>\n<td style=\"width: 18.8677%; height: 22.3906px;\">Simbur Naik</td>\n<td style=\"width: 14.016%; height: 22.3906px;\">&nbsp;</td>\n</tr>\n</tbody>\n</table>', '2024-07-03 07:36:33', '2024-07-03 07:36:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(25, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-images', 'App\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-12-20 21:31:54', '2023-12-20 21:31:54'),
(29, 'kritiks', 'kritiks', 'Kritik dan Saran', 'Kritik dan Saran', 'voyager-activity', 'App\\Models\\Kritik', NULL, 'App\\Http\\Controllers\\KritikController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-12-28 01:04:17', '2024-01-23 03:38:06'),
(36, 'pauddikmas', 'pauddikmas', 'PAUD & DIKMAS', 'PAUD & DIKMAS', 'voyager-data', 'App\\Pauddikmas', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-01-04 00:52:10', '2024-01-04 00:52:10'),
(37, 'bukutamus', 'bukutamus', 'Buku Tamu', 'Bukutamus', 'voyager-ticket', 'App\\Models\\Bukutamu', NULL, 'App\\Http\\Controllers\\BukutamuController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-01-23 01:48:46', '2024-01-23 06:23:38'),
(38, 'profil', 'profil', 'Profil', 'Profils', 'voyager-person', 'App\\Profil', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-17 20:34:11', '2024-03-17 20:34:11'),
(41, 'sejarahs', 'sejarah', 'Sejarah', 'Sejarah', 'voyager-people', 'App\\Sejarah', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-17 20:50:14', '2024-06-24 07:13:59'),
(42, 'strukturs', 'struktur', 'Struktur', 'Struktur', 'voyager-company', 'App\\Struktur', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-17 21:28:49', '2024-06-24 07:07:45'),
(45, 'tugas_dan_wewenangs', 'tugas-dan-wewenangs', 'Tugas Dan Wewenang', 'Tugas Dan Wewenang', 'voyager-file-text', 'App\\TugasDanWewenang', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-19 19:20:10', '2024-06-24 07:17:26'),
(46, 'maklumats', 'maklumats', 'Maklumat', 'Maklumat', NULL, 'App\\Maklumat', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-19 19:25:25', '2024-06-24 07:38:29'),
(47, 'motos', 'motos', 'Moto', 'Moto', 'voyager-check', 'App\\Moto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-19 19:32:13', '2024-06-26 01:13:15'),
(48, 'visimisis', 'visimisis', 'Visi Misi', 'Visi Misi', 'voyager-world', 'App\\Visimisi', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-19 19:37:57', '2024-06-24 03:50:15'),
(50, 'kategori_beritas', 'kategori-beritas', 'Kategori Berita', 'Kategori Berita', NULL, 'App\\KategoriBerita', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-19 20:48:40', '2024-03-19 20:48:40'),
(53, 'undang_undangs', 'undang-undang', 'Undang Undang', 'Undang Undang', 'voyager-book', 'App\\UndangUndang', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-26 18:44:33', '2024-03-26 18:44:33'),
(55, 'peraturan_daerahs', 'peraturan-daerah', 'Peraturan Daerah', 'Peraturan Daerah', NULL, 'App\\PeraturanDaerah', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-26 19:29:41', '2024-03-26 19:29:41'),
(56, 'peraturan_pemerintahs', 'peraturan-pemerintah', 'Peraturan Pemerintah', 'Peraturan Pemerintah', 'voyager-book', 'App\\PeraturanPemerintah', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-26 19:40:11', '2024-03-26 19:40:11'),
(59, 'peraturankementeriankominfos', 'peraturan kementerian kominfo', 'Peraturan K. Kominfo', 'Peraturan K. Kominfo', 'voyager-book', 'App\\Peraturankementeriankominfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-04-01 02:48:27', '2024-04-01 02:48:27'),
(60, 'peraturankementeriandalamnegeris', 'Peraturan Kementerian Dalam Negeri', 'Peraturan K. Dalam Negeri', 'Peraturan K. Dalam Negeri', 'voyager-book', 'App\\Peraturankementeriandalamnegeri', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-04-01 02:54:50', '2024-04-01 02:54:50'),
(65, 'keputusanbupatis', 'keputusanbupatis', 'Keputusan Bupati', 'Keputusan Bupati', 'voyager-book', 'App\\Keputusanbupati', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-04-01 04:12:31', '2024-04-01 04:15:48'),
(66, 'peraturanbupatis', 'peraturanbupatis', 'Peraturan Bupati', 'Peraturan Bupati', 'voyager-book', 'App\\Peraturanbupati', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-04-22 02:08:38', '2024-04-22 02:08:38'),
(67, 'intruksi_presidens', 'intruksi-presidens', 'Intruksi Presiden', 'Intruksi Presiden', 'voyager-book', 'App\\IntruksiPresiden', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-04-22 02:15:20', '2024-04-22 02:15:20'),
(69, 'surat_edarans', 'surat-edarans', 'Surat Edaran', 'Surat Edaran', 'voyager-book', 'App\\SuratEdaran', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-04-22 02:22:55', '2024-04-22 02:22:55'),
(70, 'email_opds', 'email-opds', 'Email Opd', 'Email Opd', 'voyager-mail', 'App\\EmailOpd', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-04-25 02:36:07', '2024-04-25 02:36:07'),
(77, 'data_radio_swastas', 'data-radio-swastas', 'Data Radio Swasta', 'Data Radio Swasta', 'voyager-lighthouse', 'App\\DataRadioSwasta', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-04-25 03:56:08', '2024-04-25 03:56:08'),
(78, 'tabel_tests', 'tabel-tests', 'Tabel Test', 'Tabel Tests', NULL, 'App\\TabelTest', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-04-25 07:01:17', '2024-04-25 07:01:17'),
(80, 'data_warnets', 'data-warnets', 'Data Warnet', 'Data Warnet', 'voyager-laptop', 'App\\DataWarnet', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-04-25 08:25:13', '2024-04-25 08:25:13'),
(83, 'galeri_fotos', 'galeri-fotos', 'Galeri Foto', 'Galeri Foto', 'voyager-images', 'App\\GaleriFoto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-05-27 07:03:53', '2024-07-15 05:17:58'),
(86, 'galeri_videos', 'galeri-videos', 'Galeri Video', 'Galeri Video', 'voyager-video', 'App\\GaleriVideo', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-06-20 03:32:00', '2024-06-20 03:32:00'),
(87, 'pegawais', 'pegawais', 'Pegawai', 'Pegawai', 'voyager-group', 'App\\Pegawai', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-06-25 02:41:47', '2024-06-26 01:13:54'),
(88, 'jabatans', 'jabatans', 'Jabatan', 'Jabatan', 'voyager-trophy', 'App\\Jabatan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-06-25 02:43:09', '2024-06-25 02:43:09'),
(89, 'standing_banners', 'standing-banners', 'Standing Banner', 'Standing Banner', 'voyager-documentation', 'App\\StandingBanner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-06-26 01:35:33', '2024-06-26 01:35:33'),
(91, 'bannerstandings', 'bannerstandings', 'Banner Standing', 'Banner Standing', 'voyager-documentation', 'App\\Bannerstanding', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-06-26 02:35:09', '2024-06-26 02:35:09'),
(93, 'banner_standings', 'banner-standings', 'Banner Standing', 'Banner Standing', 'voyager-documentation', 'App\\BannerStanding', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-06-26 02:40:00', '2024-06-26 02:40:00'),
(94, 'banners', 'banners', 'Banner', 'Banner', 'voyager-documentation', 'App\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-06-26 07:10:43', '2024-06-26 07:10:43'),
(95, 'lokasi_bts', 'lokasi-bts', 'Lokasi Bt', 'Lokasi Bts', 'voyager-wifi', 'App\\LokasiBt', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-02 08:57:02', '2024-07-02 09:03:06'),
(101, 'linkfiles', 'linkfiles', 'File Download', 'File Download', 'voyager-download', 'App\\Linkfile', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-07-03 03:58:35', '2024-07-03 03:58:35'),
(102, 'data_blank_spot', 'data-blank-spot', 'Data Blank Spot', 'Data Blank Spots', 'voyager-warning', 'App\\DataBlankSpot', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-07-03 04:15:38', '2024-07-03 04:15:38'),
(103, 'data_blank_spots', 'data-blank-spots', 'Data Blank Spot', 'Data Blank Spot', 'voyager-warning', 'App\\DataBlankSpot', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-03 04:17:12', '2024-07-03 04:18:42'),
(104, 'beritas', 'beritas', 'Berita', 'Berita', 'voyager-news', 'App\\Berita', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-03 05:06:19', '2024-07-15 08:05:31'),
(105, 'data_tv_kabels', 'data-tv-kabels', 'Data TV Kabel', 'Data TV Kabel', 'voyager-video', 'App\\DataTvKabel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-07-03 07:35:47', '2024-07-03 07:35:47'),
(110, 'pengumumans', 'pengumumans', 'Pengumuman', 'Pengumuman', 'voyager-documentation', 'App\\Pengumuman', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-07-03 08:05:06', '2024-07-03 08:05:06'),
(112, 'weblinks', 'weblinks', 'Web link', 'Web Link', 'voyager-world', 'App\\Weblink', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-04 07:07:11', '2024-07-04 07:10:42'),
(113, 'sakips', 'sakips', 'Sakip', 'Sakip', 'voyager-book', 'App\\Sakip', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-04 08:15:28', '2024-07-05 05:12:28'),
(116, 'agendas', 'agendas', 'Agenda', 'Agenda', 'voyager-alarm-clock', 'App\\Agenda', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-04 09:02:08', '2024-07-15 05:00:25'),
(117, 'renstras', 'renstras', 'Renstra', 'Renstra', 'voyager-book', 'App\\Renstra', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-05 05:02:26', '2024-07-05 05:13:04'),
(119, 'bidangsekres', 'bidangsekres', 'Sekretariat', 'Sekretariat', 'voyager-bag', 'App\\Bidangsekre', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-05 06:14:18', '2024-07-08 02:25:37'),
(120, 'bidang_egovs', 'bidang-egovs', 'Bidang Egov', 'Bidang Egov', 'voyager-data', 'App\\BidangEgov', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-07-08 02:32:48', '2024-07-08 02:32:48'),
(121, 'bidang_infokom', 'bidang-infokom', 'Bidang Infokom', 'Bidang Infokom', 'voyager-video', 'App\\BidangInfokom', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-07-08 03:03:25', '2024-07-08 03:03:25'),
(123, 'bidang_infokoms', 'bidang-infokoms', 'Bidang Infokom', 'Bidang Infokom', 'voyager-video', 'App\\BidangInfokom', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-08 03:06:47', '2024-07-08 03:08:24'),
(124, 'kata_sambutans', 'kata-sambutans', 'Kata Sambutan', 'Kata Sambutan', 'voyager-trees', 'App\\KataSambutan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-07-09 02:30:44', '2024-07-09 02:31:48'),
(128, 'detail_aplikasis', 'detail-aplikasis', 'Detail Website', 'Detail Website', 'voyager-browser', 'App\\DetailAplikasi', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-07-10 03:01:24', '2024-07-10 03:01:24'),
(129, 'aplikasi_terkaits', 'aplikasi-terkaits', 'Aplikasi Terkait', 'Aplikasi Terkait', 'voyager-play', 'App\\AplikasiTerkait', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-07-10 03:02:48', '2024-07-10 03:02:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_warnets`
--

CREATE TABLE `data_warnets` (
  `id` int(10) UNSIGNED NOT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `nama_pemilik` varchar(255) DEFAULT NULL,
  `nama_warnet` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kelengkapan_Izin` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `keterangan` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_warnets`
--

INSERT INTO `data_warnets` (`id`, `kecamatan`, `nama_pemilik`, `nama_warnet`, `alamat`, `kelengkapan_Izin`, `tahun`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'KECAMATAN MUARA SABAK BARAT', 'RINA AQRIANA', 'OUTLET', 'RT.13 RW.04 Keramas', 'SITU,HO,PAPAN MERK,SIUP,TDP', '2016', NULL, '2024-04-25 08:26:34', '2024-04-25 08:26:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_aplikasis`
--

CREATE TABLE `detail_aplikasis` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_jalan` varchar(255) DEFAULT NULL,
  `nomor_telepon_fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `google_maps_url` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_aplikasis`
--

INSERT INTO `detail_aplikasis` (`id`, `nama_jalan`, `nomor_telepon_fax`, `email`, `google_maps_url`, `created_at`, `updated_at`) VALUES
(1, 'Jl. A. yani', '07407371650', 'diskominfo@tanjabtimkab.go.id', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d498.6167154061371!2d103.78991147404413!3d-1.2065403451633705!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e25e24f0b0723a1%3A0xfb71013917f2c905!2sDinas%20Kominfo%20Tanjung%20Jabung%20Timur!5e0!3m2!1sid!2sid!4v1720515623966!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', '2024-07-09 05:30:00', '2024-07-09 09:02:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_opds`
--

CREATE TABLE `email_opds` (
  `id` int(10) UNSIGNED NOT NULL,
  `opd` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `email_opds`
--

INSERT INTO `email_opds` (`id`, `opd`, `email`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'SEKRETARIAT DAERAH', 'setda@tanjabtimkab.go.id', NULL, '2024-04-25 02:38:24', '2024-04-25 02:38:24'),
(2, 'SEKRETARIAT DEWAN PERWAKILAN RAKYAT DAERAH', 'sekwan@tanjabtimkab.go.id', NULL, '2024-07-01 05:09:17', '2024-07-01 05:09:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `file_download`
--

CREATE TABLE `file_download` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_fotos`
--

CREATE TABLE `galeri_fotos` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galeri_fotos`
--

INSERT INTO `galeri_fotos` (`id`, `judul`, `foto`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 'Rapat Koordinasi EPSS di BPS Kabupaten Tanjung Jabung Timur', '[\"galeri-fotos\\\\June2024\\\\cgQVOsg5fhx64DmWIfut.JPG\",\"galeri-fotos\\\\June2024\\\\ExcasP6nTFEH1i0AXNCA.JPG\",\"galeri-fotos\\\\June2024\\\\V7J4sZvH4Uck4tYMComo.JPG\",\"galeri-fotos\\\\June2024\\\\p306EW3WLxCdzZi9bAm3.JPG\",\"galeri-fotos\\\\June2024\\\\8LZR8pqrZCX1QwwIh4Qr.JPG\",\"galeri-fotos\\\\June2024\\\\OAHT4lucKth6bNMI4gFa.JPG\",\"galeri-fotos\\\\June2024\\\\VTcpACrcqWAsGckOUh0I.JPG\"]', 'Rapat Koordinasi EPSS di BPS', '2024-06-11 04:00:50', '2024-06-11 04:00:50'),
(4, 'RAPAT PRESENTASI APLIKASI SI TEMAN PUBLIK', '[\"galeri-fotos\\\\July2024\\\\3fnw0QP2ApjmOgs65kg8.jpeg\",\"galeri-fotos\\\\July2024\\\\OTaCNgNzZTjVhIv3oScY.jpeg\",\"galeri-fotos\\\\July2024\\\\svt8pMcUahsrEqqF8yA6.jpeg\",\"galeri-fotos\\\\July2024\\\\5D0HxUggmikCr43QsKIP.jpeg\"]', 'Muara Sabak, Kepala Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur (Tanjab Timur) Rapat Bersama Kepala Kejaksaan Kab. Tanjab Timur terkait presentasi Aplikasi si Teman Publik di Ruang Kerja Kepala Kejaksaan Kab. Tanjab Timur, Selasa (04/06).  Kadis Kominfo, Kabid E-gov dan TIM IT Programmer memaparkan terkait pembaharuan sistem Aplikasi si Teman Publik Kejari Kab. Tanjab Timur.', '2024-07-08 05:13:31', '2024-07-08 05:13:31'),
(5, 'Apel Peningkatan Disiplin Aparatur Sipil Negara di Lingkup Pemerintahan Kab. Tanjab Timur', '[\"galeri-fotos\\\\July2024\\\\JRyjDa9YkX9ClgN4DOhv.JPG\",\"galeri-fotos\\\\July2024\\\\IOhqeODGj9OeXdyyAyrX.JPG\",\"galeri-fotos\\\\July2024\\\\VUFBZ4LjxsGseTWrAGYn.JPG\",\"galeri-fotos\\\\July2024\\\\6AcDRp6Qc4ezILKY9BoL.JPG\",\"galeri-fotos\\\\July2024\\\\Qi1Kk08WGapm4hnZ50bk.JPG\",\"galeri-fotos\\\\July2024\\\\5ZJNBytmG9I2EeXBxBmt.JPG\",\"galeri-fotos\\\\July2024\\\\Mf2g4vbdto8gYEGZKBdU.JPG\",\"galeri-fotos\\\\July2024\\\\cQFeZJ4ZLMOhDMR9Agh0.JPG\",\"galeri-fotos\\\\July2024\\\\J70kkUciW3TIVdxqt1rf.JPG\",\"galeri-fotos\\\\July2024\\\\Q3aC10tt3EZ3uTdkALOK.JPG\"]', NULL, '2024-07-08 05:15:00', '2024-07-08 05:15:00'),
(7, 'Pengambilan Dokumentasi RSUD Nurdin Hamzah', '[\"galeri-fotos\\\\July2024\\\\R8kKsBmjcyJVej6dqSi5.jpg\",\"galeri-fotos\\\\July2024\\\\XSRysHNsnlZxuGhSRNIP.JPG\",\"galeri-fotos\\\\July2024\\\\c5I2LkB5ITHAPlgfKi1W.JPG\",\"galeri-fotos\\\\July2024\\\\riMnEcsQDLQkT02WCVJX.jpg\"]', 'untuk pembangunan website RSUD Nurdin Hamzah Tanjung Jabung Timur', '2022-07-27 07:09:00', '2024-07-10 07:11:04'),
(8, 'Dalam rangka koordinasi dan penyampaian proposal area blank spot Kabupaten Tanjung Jabung Timur di PT. Telkomsel Branch Jambi', '[\"galeri-fotos\\\\July2024\\\\zzjJdwIkBLTRQ6g1im1w.jpg\",\"galeri-fotos\\\\July2024\\\\KFPl8sbtDGhhW27SZ5iH.jpg\",\"galeri-fotos\\\\July2024\\\\0oSJp2EGXjoyySu0zvhh.jpg\"]', NULL, '2022-07-28 04:47:00', '2024-07-15 04:47:37'),
(9, 'Dinas Kominfo Tanjab Timur Laksanakan Penyembelihan Hewan Qurban', '[\"galeri-fotos\\\\July2024\\\\XbkjFu4dBqadyMz6ZDlO.jpg\",\"galeri-fotos\\\\July2024\\\\SO8POFdYz57VoYk4phO3.jpg\",\"galeri-fotos\\\\July2024\\\\th5WZdIYSTeXGVoxdhH9.jpg\",\"galeri-fotos\\\\July2024\\\\oNjM5rDh9HPAF3GFSKIT.jpg\",\"galeri-fotos\\\\July2024\\\\BGjhPUkvwrHrEJfre27c.jpg\",\"galeri-fotos\\\\July2024\\\\yc4pJ7d9yVcuOqObRfvc.jpg\",\"galeri-fotos\\\\July2024\\\\onO1kPbxYZsNUXk1YftC.jpg\",\"galeri-fotos\\\\July2024\\\\Bpcjc9pOTOx1iJdlJlws.jpg\",\"galeri-fotos\\\\July2024\\\\UKwxvK7s66iGC9EFQ63f.jpg\",\"galeri-fotos\\\\July2024\\\\oaAaTwbTfMpTWpnaQbw7.jpg\",\"galeri-fotos\\\\July2024\\\\GMR2is0iQTVAvgYR2W78.jpg\",\"galeri-fotos\\\\July2024\\\\fomuVp0NfPPXq4b1bcUr.jpg\",\"galeri-fotos\\\\July2024\\\\wbwOcyd6Mfgro7UtqZRq.jpg\",\"galeri-fotos\\\\July2024\\\\DJHNnevmPzVHPLhbVuEw.jpg\",\"galeri-fotos\\\\July2024\\\\jlirwXyNIeT6GJN5tVt1.jpg\",\"galeri-fotos\\\\July2024\\\\VuUAtkjcUCrkrWpxUvuP.jpg\",\"galeri-fotos\\\\July2024\\\\VP7Ep30EGRy2NcnqE5Q0.jpg\",\"galeri-fotos\\\\July2024\\\\a70LqQX8fvj9TJA4rwaS.jpg\"]', NULL, '2022-07-11 05:14:00', '2024-07-15 05:14:35'),
(10, 'Doa Bersama Menyambut Bulan Suci Ramadhan di Dinas Komunikasi dan Informatika Kab. Tanjung Jabung Timur', '[\"galeri-fotos\\\\July2024\\\\hHyUHfrMDB527lacSBEW.jpg\",\"galeri-fotos\\\\July2024\\\\9vP8ZBHkb1fLaKsVNc4B.jpg\",\"galeri-fotos\\\\July2024\\\\tb89oJGbmFlSGEd79iRy.jpg\",\"galeri-fotos\\\\July2024\\\\5Cdkb2FSqm6KyBc2AeGZ.jpg\",\"galeri-fotos\\\\July2024\\\\Qlc2Gmacni6FSd5BJ3Xw.jpg\"]', NULL, '2022-03-28 05:15:00', '2024-07-15 05:16:16'),
(11, 'Simulasi E-Kinerja di Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur Tahun 2022', '[\"galeri-fotos\\\\July2024\\\\NRoTrHhQ0C9kSOwJ7Fwy.jpg\",\"galeri-fotos\\\\July2024\\\\ncOENC29xtfeZW3BRc5g.jpg\",\"galeri-fotos\\\\July2024\\\\ERvWNut25WiE1DxP7Sea.jpg\",\"galeri-fotos\\\\July2024\\\\Mso8rtXE4dJBl3ZOUQ5T.jpg\"]', NULL, '2022-03-24 05:18:00', '2024-07-15 05:20:19'),
(12, 'Kepala Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur menghadiri acara Gathering TVRI Jambi di Rumah Kito Resort Provinsi Jambi', '[\"galeri-fotos\\\\July2024\\\\j1CfWCBPoLq4ctA25DbY.jpg\",\"galeri-fotos\\\\July2024\\\\Hy3qEnCyaUXptQ1vNRg6.jpg\",\"galeri-fotos\\\\July2024\\\\dpg8OuUw8kGq2qtaKKLD.jpg\",\"galeri-fotos\\\\July2024\\\\zi67Oaj0AViL9A4BUCor.jpg\",\"galeri-fotos\\\\July2024\\\\hIaHaaLxDGlPMpkAYj2m.jpg\"]', NULL, '2022-03-23 05:19:00', '2024-07-15 05:19:59'),
(13, 'Paparan Hasil IT Security Assessment Diskominfo Kabupaten Tanjung Jabung Timur', '[\"galeri-fotos\\\\July2024\\\\pnn7v4Fa3dQ2e0hFJaCg.jpg\",\"galeri-fotos\\\\July2024\\\\MyFcGBdJmgosBMyCFX4a.jpg\",\"galeri-fotos\\\\July2024\\\\tl9Ls7XLKSknREiJaPX3.jpg\",\"galeri-fotos\\\\July2024\\\\8rdkbsg7XcGSLGWZH6qZ.jpg\"]', NULL, '2022-03-18 05:21:00', '2024-07-15 05:21:37'),
(14, 'Kick-Off Meeting IT Security Assessment Pemerintah Kabupaten Tanjung Jabung Timur', '[\"galeri-fotos\\\\July2024\\\\AHi0E4pW5Nfyu70rYtV5.jpg\",\"galeri-fotos\\\\July2024\\\\wYnPhSqKR0t5WQRPSb9j.jpg\",\"galeri-fotos\\\\July2024\\\\dh1iPSWw4ZyPix1VXB0L.jpg\",\"galeri-fotos\\\\July2024\\\\2Z7UQsq3GN9B9zYijZzV.jpg\",\"galeri-fotos\\\\July2024\\\\v6BQqlzzr5vshUu6JtRx.jpg\"]', NULL, '2022-03-13 17:00:00', '2024-07-15 05:23:54'),
(15, 'Monitoring Menara Triangle di Kecamatan Nipah Panjang', '[\"galeri-fotos\\\\July2024\\\\4se4NlGVwnCgb3G4BoYX.jpg\",\"galeri-fotos\\\\July2024\\\\BKn5DFeYaIY1I9rDsv6h.jpg\",\"galeri-fotos\\\\July2024\\\\zzC7GdnLDhbh6sS9fWXI.jpg\"]', NULL, '2022-03-08 05:24:00', '2024-07-15 05:24:54'),
(16, 'Mengikuti kegiatan Kemendagri BerAKHLAK: Transformasi Budaya Kerja di Era 4.0', '[\"galeri-fotos\\\\July2024\\\\TYlTaAUaBuGuSpVQghHY.jpg\",\"galeri-fotos\\\\July2024\\\\5LWun0rnwzGbU0WgVrSf.jpg\"]', 'ASN Dinas Komunikasi dan Informatkia Kab. Tanjung Jabung Timur, Mengikuti kegiatan Kemendagri BerAKHLAK: Transformasi Budaya Kerja di Era 4.0, yang di pimpin oleh Menteri Dalam Negeri(23/02/2022).', '2022-02-23 05:26:00', '2024-07-15 05:26:13'),
(17, '5 Calon Programer ikuti Pelaksanaan Interview', '[\"galeri-fotos\\\\July2024\\\\fD3e5tcbOWNstwdhu6Xb.jpg\",\"galeri-fotos\\\\July2024\\\\3HyM1BTeTGsNJeY8W2VV.jpg\",\"galeri-fotos\\\\July2024\\\\UIYDSypMiYjjo1e42nHt.jpg\",\"galeri-fotos\\\\July2024\\\\vwFrvG771G8t82cSAUOb.jpg\",\"galeri-fotos\\\\July2024\\\\nGU6Q9zg3tMi3XJlGcPX.jpg\"]', '5 Calon Programer ikuti Pelaksanaan Interview yang di Pimpin Kepala Dinas Komunikasi dan Informatika Kab. Tanjung Jabung Timur,(21/02/2022).', '2022-02-21 05:27:00', '2024-07-15 05:27:59'),
(18, 'Rapat Koordinasi dan Evaluasi Data Bersama Badan Pusat Statistik Kabupaten Tanjung Jabung Timur', '[\"galeri-fotos\\\\July2024\\\\Ho7JYfBOvhpNB1BbnBeX.jpg\",\"galeri-fotos\\\\July2024\\\\u3Buh0AqABMBjmQXWapl.jpg\",\"galeri-fotos\\\\July2024\\\\WVxWJHBuHW9u95XG8EUG.jpg\",\"galeri-fotos\\\\July2024\\\\7M3WMJ7d577za4jCUa1O.jpg\"]', NULL, '2022-02-14 05:32:00', '2024-07-15 05:33:04'),
(19, 'Seleksi Kompetensi Bidang (SKB) Dalam Penerimaan Tenaga Programmer Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur', '[\"galeri-fotos\\\\July2024\\\\yqBaWqtbEXq1ApdtXH3s.jpg\",\"galeri-fotos\\\\July2024\\\\LxO7xgCBepzzVBXkLyRO.jpg\",\"galeri-fotos\\\\July2024\\\\geMqADVbAT9kcucOTDPI.jpg\",\"galeri-fotos\\\\July2024\\\\Xq0hKDfJ1W0uPqwr7H0Z.jpg\",\"galeri-fotos\\\\July2024\\\\A422Ie9oLMzx2go3kGzJ.jpg\"]', NULL, '2022-02-12 05:33:00', '2024-07-15 05:34:31'),
(20, 'Partisipasi Pertandingan Volly Ball dalam rangka Memeriahkan Hari Ulang Tahun Kabupaten Tanjung Jabung Timur yang ke 22 Tahun.', '[\"galeri-fotos\\\\July2024\\\\V6tM2v3ACRupUr6o4JgE.jpg\",\"galeri-fotos\\\\July2024\\\\ZwqeM9R2C7mmxj0db1uQ.jpg\",\"galeri-fotos\\\\July2024\\\\8TSJ7ufqQdzSlxZS0XDn.jpg\",\"galeri-fotos\\\\July2024\\\\KDleyR3aUiax5yFaz1lD.jpg\",\"galeri-fotos\\\\July2024\\\\WZUf1r51qSTlpPpNCjp1.jpg\",\"galeri-fotos\\\\July2024\\\\RSphEGzUVpm2PA5uvex0.jpg\",\"galeri-fotos\\\\July2024\\\\XuY3oPQjU8QZAgDxa17O.jpg\",\"galeri-fotos\\\\July2024\\\\ZEH2WyNXqxundwKs4lgI.jpg\",\"galeri-fotos\\\\July2024\\\\cL9LeW2pVGlzhJqH2rgM.jpg\"]', NULL, '2021-10-06 05:41:00', '2024-07-15 05:41:23'),
(21, 'Dalam memperingati Selamat Hari Pelanggan Nasional, PT. TELKOM INDONESIA (Persero)Tbk memberikan penghargaan kepada Pemerintah Kabupaten Tanjung Jabung Timur', '[\"galeri-fotos\\\\July2024\\\\qjsCjtaCCNxexpeYbWyY.jpg\",\"galeri-fotos\\\\July2024\\\\siP9nKsG50RI28DAYgYo.jpg\",\"galeri-fotos\\\\July2024\\\\dKWnKxRqyU3GiLkkSlvE.jpg\"]', NULL, '2021-09-13 05:42:00', '2024-07-15 05:42:37'),
(22, 'Kunjungan dari Universitas Jambi dalam rangka Survey Pengguna Alumni', '[\"galeri-fotos\\\\July2024\\\\ywn58VqCPGHVnjgvrCjS.jpg\",\"galeri-fotos\\\\July2024\\\\iHHHZOYeM2HGiCNAKIwF.jpg\",\"galeri-fotos\\\\July2024\\\\HYXoNx9wI9N1VumU1y8y.jpg\",\"galeri-fotos\\\\July2024\\\\hPDLpft21Jm03G21uGGv.jpg\",\"galeri-fotos\\\\July2024\\\\Z8ubn9DQRNF3iAxeikNy.jpg\",\"galeri-fotos\\\\July2024\\\\4wB4JC7mROvLBwPJS4eI.jpg\",\"galeri-fotos\\\\July2024\\\\dtsIwoOhgR9TlEmJypmk.jpg\",\"galeri-fotos\\\\July2024\\\\VHXp4nNFzHZPJu3wlNKn.jpg\",\"galeri-fotos\\\\July2024\\\\MqdaWPths5zJ8W0vRjqZ.jpg\"]', NULL, '2021-09-02 05:50:00', '2024-07-15 05:51:55'),
(23, 'Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur Menghadiri Rapat Penilaian Interviu Evaluasi SPBE 2021 Secara Virtual', '[\"galeri-fotos\\\\July2024\\\\f1e3b2UZLe9BaskbVysM.JPG\",\"galeri-fotos\\\\July2024\\\\IpFowk8CgYsukqHhIN6n.JPG\",\"galeri-fotos\\\\July2024\\\\J29LIi8USqgbhaNowb5h.JPG\",\"galeri-fotos\\\\July2024\\\\jZaWn8P7O9ZKFV5uinEQ.jpg\"]', NULL, '2021-09-01 05:53:00', '2024-07-15 05:53:20'),
(24, 'Kordinasi dan Memfasilitasi Praktik kerja Industri SMK N. 1 Tanjung Jabung Timur dengan PT Telkom Cabang Jambi', '[\"galeri-fotos\\\\July2024\\\\FDri5cAe8oAbjYUSCLjM.jpg\",\"galeri-fotos\\\\July2024\\\\Gd7SfJCMwIKFyspzU99Z.jpg\",\"galeri-fotos\\\\July2024\\\\xW0VXejpavO3CF8KlPsG.jpg\",\"galeri-fotos\\\\July2024\\\\E2dhmu3vDLY5bfRe9qkS.jpg\",\"galeri-fotos\\\\July2024\\\\77k8SLgX35Tk8gn2zB1e.jpg\",\"galeri-fotos\\\\July2024\\\\5wc86Anq6ejoMu4Ynabf.jpg\",\"galeri-fotos\\\\July2024\\\\aN1xyUwINSyRESq5EkZJ.jpg\",\"galeri-fotos\\\\July2024\\\\CCmk23TL20zaw037cV5m.jpg\",\"galeri-fotos\\\\July2024\\\\3uE5sTiBwPi97ytgKtwH.jpg\"]', NULL, '2021-06-21 05:55:00', '2024-07-15 05:56:16'),
(25, 'Study banding Pemerintahan Kabupaten Kerinci', '[\"galeri-fotos\\\\July2024\\\\q32LkV0buGOozcpmjWJL.jpg\",\"galeri-fotos\\\\July2024\\\\jmCPvf3NoafKSvgcr8U4.jpg\",\"galeri-fotos\\\\July2024\\\\UUOhKnTf2ZfQLxJht9GS.jpg\",\"galeri-fotos\\\\July2024\\\\NPuuMIj3ZyXlNm2zUMpY.jpg\",\"galeri-fotos\\\\July2024\\\\tbUuwcoDUto6uCIUGfWT.jpg\",\"galeri-fotos\\\\July2024\\\\97sjY1lrzk04D3OfLE8W.jpg\",\"galeri-fotos\\\\July2024\\\\jXejMFHxWGS5kxcgssY1.jpg\",\"galeri-fotos\\\\July2024\\\\qSP4S0OU9Nlqn1aoVoEQ.jpg\"]', NULL, '2021-06-14 05:57:00', '2024-07-15 05:57:54'),
(26, 'Sosialisasi dan Pembentukan Kelompok Informasi Masyarakat (KIM) Kabupaten Tanjung Jabung Timur Kecamatan Mendahara Ulu Tahun 2021', '[\"galeri-fotos\\\\July2024\\\\keMPDVkth36onMqlQwxn.jpg\",\"galeri-fotos\\\\July2024\\\\Mx2Y9zI1uBozOaxKMmDg.jpg\",\"galeri-fotos\\\\July2024\\\\F3pzAMbdAW6NR0FZ0c9Y.jpg\",\"galeri-fotos\\\\July2024\\\\gvQAiUypGsuxtSrHx8pk.jpg\"]', NULL, '2021-05-25 05:58:00', '2024-07-15 05:59:12'),
(27, 'Kunjungan Kerja dan Silaturahmi PT. Telkom Jambi', '[\"galeri-fotos\\\\July2024\\\\tTS0vIZjbBJfeTtAPTsB.jpg\",\"galeri-fotos\\\\July2024\\\\g8WG8qGN0rkv1qPHWkZs.jpg\",\"galeri-fotos\\\\July2024\\\\E7Pj4wiNwZJCMFh6xBWq.jpg\",\"galeri-fotos\\\\July2024\\\\qAiBdg0EzpiKqcO5Zo3F.jpg\"]', NULL, '2021-05-19 05:59:00', '2024-07-15 06:00:07'),
(28, 'Musrenbang Kabupaten Tanjung Jabung Timur Tahun 2021 Melalui vicon', '[\"galeri-fotos\\\\July2024\\\\dRnOYhVaR0Qm218cJ1ZE.JPG\",\"galeri-fotos\\\\July2024\\\\VpQMWI2hG9MpEwxXUPey.JPG\",\"galeri-fotos\\\\July2024\\\\NscT2EEkIOIM7dtQox6g.JPG\",\"galeri-fotos\\\\July2024\\\\lTXaIIdNbgkmbbX4cp5Z.JPG\"]', NULL, '2021-03-31 06:00:00', '2024-07-15 06:01:07'),
(29, 'Anugrah Inovasi Daerah Kabupaten Tanjung Jabung Timur Tahun 2020', '[\"galeri-fotos\\\\July2024\\\\DbuW6Om6GD2IhCl4my5P.jpg\",\"galeri-fotos\\\\July2024\\\\8rPh6wqwj31S0w1NLbdK.jpg\",\"galeri-fotos\\\\July2024\\\\DULZanP9UvJJ9LBWOQe3.jpg\"]', NULL, '2021-01-21 06:01:00', '2024-07-15 06:01:49'),
(30, 'MUO PKK Kabupaten Tanjung Jabung Timur dengan Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur', '[\"galeri-fotos\\\\July2024\\\\UiY9SwNFSvF1DdqhuJJ9.jpg\",\"galeri-fotos\\\\July2024\\\\AbmNDRiO1H0E1vad80iI.jpg\",\"galeri-fotos\\\\July2024\\\\gQSO1Vsa3JGMnrOsAISP.jpg\"]', NULL, '2021-01-16 17:00:00', '2024-07-15 06:04:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri_videos`
--

CREATE TABLE `galeri_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` text DEFAULT NULL,
  `youtube_link` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galeri_videos`
--

INSERT INTO `galeri_videos` (`id`, `judul`, `youtube_link`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'HARI RAYA IDUL ADHA 1445 H', 'https://www.youtube.com/watch?v=HLwE0G5nBGA', 'Sholat Ied Hari Raya Idul Adha 1445 H Masjid Agung Nur-Addrojat', '2024-06-20 03:36:00', '2024-06-20 04:53:43'),
(2, 'PENCEGAHAN STUNTING DAN LAUNCHING SEKOLAH LANSIA TANGGUH', 'https://www.youtube.com/watch?v=vED7GCMOxxU', NULL, '2024-06-20 04:29:00', '2024-06-20 04:32:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `intruksi_presidens`
--

CREATE TABLE `intruksi_presidens` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `didownload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `intruksi_presidens`
--

INSERT INTO `intruksi_presidens` (`id`, `judul`, `keterangan`, `tahun`, `file`, `didownload`, `created_at`, `updated_at`) VALUES
(1, 'INTRUKSI PRESIDEN REPUBLIK INDONESIA NOMOR 9 TAHUN 2015', 'tentang PENGELOLAAN INFORMASI PUBLIK', '2015', '[{\"download_link\":\"intruksi-presidens\\\\April2024\\\\EQro7g09mUib5k5PofAZ.pdf\",\"original_name\":\"inpres_no_9_tahun_2015_tentang_pengelolaan_komunikasi_publik.pdf\"}]', NULL, '2024-04-22 02:16:23', '2024-04-22 02:16:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatans`
--

CREATE TABLE `jabatans` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_jabatan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jabatans`
--

INSERT INTO `jabatans` (`id`, `nama_jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Dinas', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(2, 'Sekretaris Dinas', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(3, 'Kabid Layanan E-Government', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(4, 'Kabid Pengelolaan Informasi & Komunikasi Publik', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(5, 'Kasi Pengelolaan Data & Informasi Publik', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(6, 'Kasi Pengelolaan Informasi dan Komunikasi Publik', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(7, 'Kasi Kemitraan Informasi', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(8, 'Kasi Infrastruktur dan Teknologi', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(9, 'Kasi Pengembangan dan Layanan Aplikasi', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(10, 'Kasi Keamanan Informasi dan Sandi', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(11, 'Kasubag Umum dan Kepegawaian', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(12, 'Kasubag Program & Keuangan', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(13, 'Staff', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(14, 'Staf Teknis dan Hupmas ', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(15, 'Staf SDM', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(16, 'Staf Program & Data', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(17, 'Programer', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(18, 'Network Engineer', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(19, 'Technical support', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(20, 'PHTT', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(21, 'Computer Operator', '2024-07-11 07:36:22', '2024-07-11 07:36:22'),
(22, 'Tenaga Fotografer', '2024-07-11 07:36:00', '2024-07-11 09:23:07'),
(23, 'Tenaga Design Grafis', '2024-07-11 07:36:00', '2024-07-11 09:23:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kata_sambutans`
--

CREATE TABLE `kata_sambutans` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `katasambutan` longtext DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kata_sambutans`
--

INSERT INTO `kata_sambutans` (`id`, `judul`, `katasambutan`, `penulis`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Sambutan Kepala Dinas Kominfo Kab. Tanjabtim', '<p>Assalamu\'alaikum wa rahmatullahi wabarokatuh</p>\r\n<p>Segala Puji Syukur kita panjatkan kehadirat Allah SWT, yang dengan rahmat-Nya telah mengantarkan Dinas Komunikasi dan Informatika Kab. Tanjung Jabung Timur semakin berkembang dalam menghadapi tantangan era globalisasi, terutama menghadapi penyelenggaraan pemerintahan yang transparan, efisien dan efektif melalui pemanfaatan Teknologi Informasi dan Komunikasi (TIK).</p>\r\n<p>Melalui visinya terwujudnya &nbsp;pelayanan komunikasi dan informatika yang berbasis teknologi dan berkualitas menuju merakyat, Dinas KOMINFO Kab. Tanjung Jabung Timur berusaha untuk memenuhi akan kebutuhan infrastruktur TIK. Dalam pelaksanaannya Dinas KOMINFO Kab. Tanjung Jabung Timur telah &nbsp;membangun infrastruktur jaringan komunikasi di seluruh OPD, 11 Kecamatan. Selain memenuhi kebutuhan infrastruktur jaringan Dinas KOMINFO juga membangun sistem aplikasi guna mendukung penyebaran informasi kepada masyarakat. Melalui media informasi dan komunikasi ini diharapkan mampu menjembatani dan menampung aspirasi masyarakat &nbsp;Kab. Tanjung Jabung Timur &nbsp;menuju masyarakat informasi.</p>\r\n<p>Akhirnya, semoga yang telah kami bangun ini dapat memberikan manfaat bagi masyarakat Kab. Tanjung Jabung Timur dan kami mengharap kritik dan saran yang membangun demi peningkatan pelayanan pada masyarakat.</p>\r\n<p>Wassalamu&rsquo;alaikum wa rahmatullahi wabarokatuh</p>\r\n<p>Kepala Dinas Komunikasi dan Informatika Kab. Tanjung Jabung Timur</p>', 'Herman Toni, SE, ME', 'kata-sambutans\\July2024\\t8WxpXLkxYeppq5fDHgy.png', '2024-07-09 02:34:00', '2024-07-09 02:50:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_beritas`
--

CREATE TABLE `kategori_beritas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_beritas`
--

INSERT INTO `kategori_beritas` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Berita Tanjabtim', '2024-03-19 20:46:56', '2024-03-19 20:46:56'),
(2, 'Berita Kementerian', '2024-03-19 20:49:04', '2024-03-19 20:49:04'),
(3, 'Berita Umum', '2024-03-19 20:49:00', '2024-03-26 18:36:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keputusanbupatis`
--

CREATE TABLE `keputusanbupatis` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `didownload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `keputusanbupatis`
--

INSERT INTO `keputusanbupatis` (`id`, `judul`, `keterangan`, `tahun`, `file`, `didownload`, `created_at`, `updated_at`) VALUES
(1, 'Keputusan Bupati Nomor 566 Tahun 2017', 'Tentang Pembentukan Pengelola Layanan Informasi dan Dokumentasi Kab. Tanjung Jabung Timur', '2017', '[{\"download_link\":\"keputusanbupatis\\\\May2024\\\\zqWUVXhhg9wvyufFU4D0.pdf\",\"original_name\":\"74keputusan-bupati-tanjung-jabung-timur-nomor-566.pdf\"}]', NULL, '2024-05-29 06:49:19', '2024-05-29 06:49:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kritiks`
--

CREATE TABLE `kritiks` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kritik_saran` text NOT NULL,
  `pendapat_pelayanan` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kritiks`
--

INSERT INTO `kritiks` (`id`, `tanggal`, `nama`, `alamat`, `kritik_saran`, `pendapat_pelayanan`, `updated_at`, `created_at`) VALUES
(1, '2023-12-27', 'ROMY HERIYANTO', 'Jl inpres', 'Test', NULL, '2023-12-26 21:35:20', '2023-12-26 21:35:20'),
(2, '2023-12-27', 'ROMY HERIYANTO', 'Jl inpres', 'Test lagi', NULL, '2023-12-26 21:47:24', '2023-12-26 21:47:24'),
(3, '2023-12-27', 'ROMY HERIYANTO', 'Jl inpres', 'Test Test Test', 'sangat_baik', '2023-12-26 21:52:06', '2023-12-26 21:52:06'),
(4, '2023-12-28', 'ROMY HERIYANTO', 'Jl inpres Tanjung Jabung Timur', 'Test Test Test', 'baik', '2023-12-28 00:46:37', '2023-12-28 00:46:37'),
(5, '2024-01-03', 'ALEX', 'Jl Ponegoro', 'Sangat Futuristik sekali', 'baik', '2024-01-03 00:42:00', '2024-01-03 00:42:00'),
(6, '2024-01-03', 'BIAGI', 'Jl. Italia', 'sangat membantu sekali', 'sangat_baik', '2024-01-03 00:57:23', '2024-01-03 00:57:23'),
(7, '2024-01-03', 'ALIF', 'Rawa-rawa', 'ide yang bagus', 'baik', '2024-01-03 01:06:09', '2024-01-03 01:06:09'),
(8, '2024-01-03', 'SAKTI AHLI', 'Jl. Italia barat', 'kurang dah', 'cukup', '2024-01-03 01:09:19', '2024-01-03 01:09:19'),
(9, '2024-01-12', 'SAKTI AHLI', 'sdfsdfzsdfsdfzsdf', 'sdfsdfsdfSDfsdf', 'buruk', '2024-01-12 03:47:09', '2024-01-12 03:47:09'),
(10, '2024-01-24', 'ROMY HERIYANTO', 'Jl inpres', 'saran', 'sangat_baik', '2024-01-24 08:16:13', '2024-01-24 08:16:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `linkfiles`
--

CREATE TABLE `linkfiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `Judul` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `linkfiles`
--

INSERT INTO `linkfiles` (`id`, `Judul`, `file`, `created_at`, `updated_at`, `keterangan`) VALUES
(1, 'Data Blank Spot 28 Juli 2021', '[{\"download_link\":\"linkfiles\\\\July2024\\\\DVFKO92VrAVJl7TCI11N.pdf\",\"original_name\":\"87data-blank-spot-28-juli-2021.pdf\"}]', '2024-07-03 03:59:18', '2024-07-03 03:59:18', 'Data Blank Spot 28 Juli 2021'),
(2, 'Data Blank Spot 25 Juni 2021', '[{\"download_link\":\"linkfiles\\\\July2024\\\\lOBruepQB25mAMQN7Huw.pdf\",\"original_name\":\"61data-blank-spot-25-juni-2021.pdf\"}]', '2024-07-03 04:24:44', '2024-07-03 04:24:44', 'Data Blank Spot 25 Juni 2021'),
(3, 'lakip 2018', '[{\"download_link\":\"linkfiles\\\\July2024\\\\HUqgk33Lev2TYpsrOCDr.pdf\",\"original_name\":\"94lakip-2018_.pdf\"}]', '2024-07-04 08:17:32', '2024-07-04 08:17:32', 'Lakip Tahun 2018 Dinas Komunikasi dan Informatika Kab. Tanjung Jabung Timur'),
(4, 'RENSTRA PERUBAHAN TA 2016-2021', '[{\"download_link\":\"linkfiles\\\\July2024\\\\4xQrwzhIDyvmMGHWKgxV.pdf\",\"original_name\":\"46all_rencana-strategis-perubahan-20162021_terbaru.pdf\"}]', '2024-07-05 05:03:52', '2024-07-05 05:03:52', 'RENSTRA PERUBAHAN TA 2016-2021 Dinas Komunikasi dan Informatika'),
(5, 'RENSTRA TA. 2021-2026', '[{\"download_link\":\"linkfiles\\\\July2024\\\\U07MN6u0gMcBvu2eS8Jl.pdf\",\"original_name\":\"44renstra-dinas-komunikasi-dan-informatika-20212026.pdf\"}]', '2024-07-05 05:15:43', '2024-07-05 05:15:43', 'RENSTRA TA. 2021-2026');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi_bts`
--

CREATE TABLE `lokasi_bts` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `file_upload` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lokasi_bts`
--

INSERT INTO `lokasi_bts` (`id`, `judul`, `tahun`, `file_upload`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Data Tower BTS', '2016', '[{\"download_link\":\"lokasi-bts\\\\April2024\\\\DYZBz4Ygl1FGW9mF7fo2.pdf\",\"original_name\":\"24data-bangunan-tower-tahun-2016.pdf\"}]', NULL, '2024-04-25 03:26:51', '2024-04-25 03:26:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `maklumats`
--

CREATE TABLE `maklumats` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `maklumats`
--

INSERT INTO `maklumats` (`id`, `judul`, `foto`, `keterangan`, `created_at`, `updated_at`, `isi`) VALUES
(1, 'Maklumat', 'maklumats\\March2024\\TeC9S3xbboAz2OmZ7BMW.jpg', NULL, '2024-03-19 19:28:01', '2024-03-19 19:28:01', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-12-20 00:24:46', '2023-12-20 00:24:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2023-12-20 00:24:46', '2024-01-30 03:30:27', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 19, '2023-12-20 00:24:46', '2024-07-15 02:23:40', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 18, '2023-12-20 00:24:46', '2024-07-15 02:23:40', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 17, '2023-12-20 00:24:46', '2024-07-15 02:23:40', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 23, '2023-12-20 00:24:46', '2024-07-15 02:23:40', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-12-20 00:24:46', '2024-01-03 00:21:00', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-12-20 00:24:46', '2024-01-03 00:21:00', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-12-20 00:24:46', '2024-01-03 00:21:00', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-12-20 00:24:46', '2024-01-03 00:21:00', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 24, '2023-12-20 00:24:46', '2024-07-15 02:23:40', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 22, '2023-12-20 00:24:46', '2024-07-15 02:23:40', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 20, '2023-12-20 00:24:47', '2024-07-15 02:23:40', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 21, '2023-12-20 00:24:47', '2024-07-15 02:23:40', 'voyager.pages.index', NULL),
(25, 1, 'Slider', '', '_self', 'voyager-images', '#000000', 95, 1, '2023-12-20 21:31:54', '2024-06-26 05:10:31', 'voyager.sliders.index', 'null'),
(28, 1, 'Kritik dan Saran', '', '_self', 'voyager-activity', '#000000', NULL, 16, '2023-12-28 01:04:17', '2024-07-15 02:23:40', 'voyager.kritiks.index', 'null'),
(36, 1, 'Daftar Tamu', '', '_self', 'voyager-ticket', '#000000', NULL, 15, '2024-01-23 01:48:47', '2024-07-15 02:23:40', 'voyager.bukutamus.index', 'null'),
(41, 1, 'Sejarah', '', '_self', 'voyager-people', NULL, 42, 1, '2024-03-17 20:50:14', '2024-03-17 20:51:48', 'voyager.sejarah.index', NULL),
(42, 1, 'Profil', '', '_self', 'voyager-person', '#000000', NULL, 2, '2024-03-17 20:51:37', '2024-03-17 20:51:59', NULL, ''),
(43, 1, 'Struktur', '', '_self', 'voyager-company', NULL, 42, 2, '2024-03-17 21:28:49', '2024-03-17 21:31:01', 'voyager.struktur.index', NULL),
(46, 1, 'Tugas Dan Wewenang', '', '_self', 'voyager-file-text', NULL, 42, 4, '2024-03-19 19:20:11', '2024-03-19 19:22:14', 'voyager.tugas-dan-wewenangs.index', NULL),
(47, 1, 'Maklumat', '', '_self', 'voyager-leaf', '#000000', 42, 5, '2024-03-19 19:25:26', '2024-06-25 03:01:11', 'voyager.maklumats.index', 'null'),
(48, 1, 'Moto', '', '_self', 'voyager-check', NULL, 42, 6, '2024-03-19 19:32:13', '2024-06-25 03:01:11', 'voyager.motos.index', NULL),
(49, 1, 'Visi Misi', '', '_self', 'voyager-world', NULL, 42, 3, '2024-03-19 19:37:57', '2024-03-19 19:38:18', 'voyager.visimisis.index', NULL),
(52, 1, 'Kategori Berita', '', '_self', 'voyager-list', '#000000', 106, 1, '2024-03-19 20:48:40', '2024-07-03 05:01:11', 'voyager.kategori-beritas.index', 'null'),
(54, 1, 'Regulasi', '', '_self', 'voyager-receipt', '#000000', NULL, 4, '2024-03-26 18:41:16', '2024-07-03 05:01:15', NULL, ''),
(55, 1, 'Undang Undang', '', '_self', 'voyager-book', NULL, 54, 1, '2024-03-26 18:44:34', '2024-03-26 18:44:53', 'voyager.undang-undang.index', NULL),
(57, 1, 'Peraturan Daerah', '', '_self', 'voyager-book', '#000000', 54, 2, '2024-03-26 19:29:41', '2024-03-26 19:40:34', 'voyager.peraturan-daerah.index', 'null'),
(58, 1, 'Peraturan Pemerintah', '', '_self', 'voyager-book', NULL, 54, 3, '2024-03-26 19:40:12', '2024-03-26 19:40:34', 'voyager.peraturan-pemerintah.index', NULL),
(61, 1, 'Peraturan K. Kominfo', '', '_self', 'voyager-book', NULL, 54, 4, '2024-04-01 02:48:27', '2024-04-01 02:48:59', 'voyager.peraturan kementerian kominfo.index', NULL),
(62, 1, 'Peraturan K. Dalam Negeri', '', '_self', 'voyager-book', NULL, 54, 5, '2024-04-01 02:54:51', '2024-04-01 02:56:48', 'voyager.Peraturan Kementerian Dalam Negeri.index', NULL),
(67, 1, 'Keputusan Bupati', '', '_self', 'voyager-book', '#000000', 54, 6, '2024-04-01 04:12:31', '2024-04-01 04:16:41', 'voyager.keputusanbupatis.index', 'null'),
(68, 1, 'Peraturan Bupati', '', '_self', 'voyager-book', NULL, 54, 7, '2024-04-22 02:08:39', '2024-04-22 02:09:05', 'voyager.peraturanbupatis.index', NULL),
(69, 1, 'Intruksi Presiden', '', '_self', 'voyager-book', NULL, 54, 8, '2024-04-22 02:15:20', '2024-04-22 02:18:38', 'voyager.intruksi-presidens.index', NULL),
(71, 1, 'Surat Edaran', '', '_self', 'voyager-book', NULL, 54, 9, '2024-04-22 02:22:55', '2024-04-22 02:23:09', 'voyager.surat-edarans.index', NULL),
(72, 1, 'Email Opd', '', '_self', 'voyager-mail', NULL, 73, 1, '2024-04-25 02:36:07', '2024-04-25 02:37:39', 'voyager.email-opds.index', NULL),
(73, 1, 'Basis Data', '', '_self', 'voyager-data', '#000000', NULL, 5, '2024-04-25 02:37:27', '2024-07-03 05:01:15', NULL, ''),
(79, 1, 'Data Radio Swasta', '', '_self', 'voyager-lighthouse', NULL, 73, 3, '2024-04-25 03:56:08', '2024-07-02 09:04:09', 'voyager.data-radio-swastas.index', NULL),
(82, 1, 'Data Warnet', '', '_self', 'voyager-laptop', NULL, 73, 4, '2024-04-25 08:25:13', '2024-07-02 09:04:09', 'voyager.data-warnets.index', NULL),
(84, 1, 'Galeri', '', '_self', 'voyager-documentation', '#000000', NULL, 6, '2024-05-27 06:56:53', '2024-07-03 05:01:15', NULL, ''),
(86, 1, 'Galeri Foto', '', '_self', 'voyager-images', NULL, 84, 1, '2024-05-27 07:03:53', '2024-05-27 07:04:13', 'voyager.galeri-fotos.index', NULL),
(89, 1, 'Galeri Video', '', '_self', 'voyager-video', NULL, 84, 2, '2024-06-20 03:32:00', '2024-06-26 01:41:44', 'voyager.galeri-videos.index', NULL),
(90, 1, 'Pegawai', '', '_self', 'voyager-group', NULL, 42, 9, '2024-06-25 02:41:47', '2024-07-09 04:57:33', 'voyager.pegawais.index', NULL),
(91, 1, 'Jabatan', '', '_self', 'voyager-trophy', NULL, 42, 8, '2024-06-25 02:43:09', '2024-07-09 04:57:33', 'voyager.jabatans.index', NULL),
(94, 1, 'Banner Standing', '', '_self', 'voyager-documentation', NULL, 95, 3, '2024-06-26 02:40:00', '2024-07-02 09:04:00', 'voyager.banner-standings.index', NULL),
(95, 1, 'Banner dan Slider', '', '_self', 'voyager-tree', '#000000', NULL, 7, '2024-06-26 05:09:58', '2024-07-03 05:01:15', NULL, ''),
(96, 1, 'Banner', '', '_self', 'voyager-documentation', NULL, 95, 2, '2024-06-26 07:10:43', '2024-07-02 09:04:00', 'voyager.banners.index', NULL),
(97, 1, 'Lokasi Bts', '', '_self', 'voyager-wifi', NULL, 73, 2, '2024-07-02 08:57:02', '2024-07-02 09:04:09', 'voyager.lokasi-bts.index', NULL),
(103, 1, 'File Download', '', '_self', 'voyager-download', NULL, NULL, 13, '2024-07-03 03:58:35', '2024-07-15 02:23:25', 'voyager.linkfiles.index', NULL),
(105, 1, 'Data Blank Spot', '', '_self', 'voyager-warning', NULL, 73, 5, '2024-07-03 04:17:12', '2024-07-03 04:57:29', 'voyager.data-blank-spots.index', NULL),
(106, 1, 'Konten Berita', '', '_self', 'voyager-file-text', '#000000', NULL, 3, '2024-07-03 05:00:03', '2024-07-03 05:01:04', NULL, ''),
(107, 1, 'Berita', '', '_self', 'voyager-news', NULL, 106, 2, '2024-07-03 05:06:19', '2024-07-03 05:07:47', 'voyager.beritas.index', NULL),
(108, 1, 'Data TV Kabel', '', '_self', 'voyager-video', NULL, 73, 6, '2024-07-03 07:35:47', '2024-07-04 03:14:11', 'voyager.data-tv-kabels.index', NULL),
(113, 1, 'Pengumuman', '', '_self', 'voyager-documentation', NULL, 116, 1, '2024-07-03 08:05:06', '2024-07-04 07:48:38', 'voyager.pengumumans.index', NULL),
(115, 1, 'Web Link', '', '_self', 'voyager-world', NULL, 116, 3, '2024-07-04 07:07:11', '2024-07-04 07:48:41', 'voyager.weblinks.index', NULL),
(116, 1, 'Informasi', '', '_self', 'voyager-info-circled', '#000000', NULL, 8, '2024-07-04 07:48:25', '2024-07-04 07:48:51', NULL, ''),
(117, 1, 'Sakip', '', '_self', 'voyager-book', NULL, 116, 4, '2024-07-04 08:15:28', '2024-07-08 02:23:21', 'voyager.sakips.index', NULL),
(119, 1, 'Agenda', '', '_self', 'voyager-alarm-clock', NULL, 116, 2, '2024-07-04 09:02:08', '2024-07-04 09:02:28', 'voyager.agendas.index', NULL),
(120, 1, 'Renstra', '', '_self', 'voyager-book', NULL, 116, 5, '2024-07-05 05:02:26', '2024-07-08 02:23:28', 'voyager.renstras.index', NULL),
(122, 1, 'Sekretariat', '', '_self', 'voyager-bag', NULL, NULL, 10, '2024-07-05 06:14:18', '2024-07-15 02:23:25', 'voyager.bidangsekres.index', NULL),
(123, 1, 'Bidang Egov', '', '_self', 'voyager-data', NULL, NULL, 11, '2024-07-08 02:32:49', '2024-07-15 02:23:25', 'voyager.bidang-egovs.index', NULL),
(126, 1, 'Bidang Infokom', '', '_self', 'voyager-video', NULL, NULL, 12, '2024-07-08 03:06:47', '2024-07-15 02:23:25', 'voyager.bidang-infokoms.index', NULL),
(127, 1, 'Kata Sambutan', '', '_self', 'voyager-person', NULL, 42, 7, '2024-07-09 02:30:44', '2024-07-09 04:57:33', 'voyager.kata-sambutans.index', NULL),
(131, 1, 'Detail Website', '', '_self', 'voyager-browser', NULL, NULL, 14, '2024-07-10 03:01:24', '2024-07-15 02:23:40', 'voyager.detail-aplikasis.index', NULL),
(132, 1, 'Aplikasi Terkait', '', '_self', 'voyager-play', NULL, NULL, 9, '2024-07-10 03:02:48', '2024-07-15 02:23:25', 'voyager.aplikasi-terkaits.index', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `motos`
--

CREATE TABLE `motos` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `motos`
--

INSERT INTO `motos` (`id`, `judul`, `foto`, `isi`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Moto', 'motos\\March2024\\ZCz1kwbiEbX3lSB0WQ80.jpg', NULL, NULL, '2024-03-19 19:32:44', '2024-03-19 19:32:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-12-20 00:24:47', '2023-12-20 00:24:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pauddikmas`
--

CREATE TABLE `pauddikmas` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pauddikmas`
--

INSERT INTO `pauddikmas` (`id`, `judul`, `foto`, `file`, `ket`, `created_at`, `updated_at`) VALUES
(2, 'judul alur', '[\"pauddikmas\\/January2024\\/9gJNeK17HYGM2U0g7G7U.jpg\"]', '[{\"download_link\":\"pauddikmas\\/January2024\\/fUgxmTDxR8PVmTfDXFYX.pdf\",\"original_name\":\"Unduh Standar Pelayanan - Penyerahan PSU Perumahan dari Pengembang kepada Pemerintah Daerah.pdf\"}]', 'keterangan disini', '2024-01-10 08:14:35', '2024-01-10 08:14:35'),
(3, 'test judul lagi lagi', '[\"pauddikmas\\/January2024\\/ZCIzlUAlXzMDj4EFNkLT.jpg\"]', '[]', NULL, '2024-01-10 08:15:32', '2024-01-10 08:15:32'),
(4, 'asdasdasdasdasd', '[\"pauddikmas\\/January2024\\/vlOuwNGwbUV56ZOWkdbE.jpg\"]', '[{\"download_link\":\"pauddikmas\\/January2024\\/0kK728YkMyqLJ6ObPvdh.pdf\",\"original_name\":\"rekap_kritik (7).pdf\"}]', 'ghxgfhxgfh', '2024-01-12 03:38:42', '2024-01-12 03:38:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawais`
--

CREATE TABLE `pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` text DEFAULT NULL,
  `foto_pegawai` varchar(255) DEFAULT NULL,
  `jabatan_id` varchar(255) DEFAULT NULL,
  `pangkat` varchar(255) DEFAULT NULL,
  `tempat` text DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `jk` varchar(255) DEFAULT NULL,
  `pendidikan` varchar(255) DEFAULT NULL,
  `tahunlulus` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawais`
--

INSERT INTO `pegawais` (`id`, `nama`, `foto_pegawai`, `jabatan_id`, `pangkat`, `tempat`, `tanggal_lahir`, `jk`, `pendidikan`, `tahunlulus`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'HERMAN TONI, SE, ME', 'pegawais\\July2024\\LmuCraU08M0X6CyfG6xB.png', '1', 'Pembina Utama Muda IV/c', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2024-07-11 09:20:11', '2024-07-11 09:20:11'),
(2, 'SUHAILI, SE', NULL, '2', 'Pembina IV/a', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2024-07-11 09:20:46', '2024-07-11 09:20:46'),
(3, 'SOFYAN SURIANTO, SE, MM', 'pegawais\\July2024\\GzYkIUq0Zv8fGNb8JFR0.jpg', '3', 'Pembina IV/a', NULL, NULL, 'Laki-laki', NULL, NULL, NULL, '2024-07-11 09:21:33', '2024-07-11 09:21:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumumans`
--

CREATE TABLE `pengumumans` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `isi_pengumuman` text DEFAULT NULL,
  `file_pendukung` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengumumans`
--

INSERT INTO `pengumumans` (`id`, `judul`, `isi_pengumuman`, `file_pendukung`, `created_at`, `updated_at`) VALUES
(1, 'KERJASAMA MEDIA TAHUN 2024', '<p style=\"text-align: left;\">Pemerintah Kabupaten Tanjung Jabung Timur Melalui Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur menawarkan Kerjasama dalam publikasi dan informasi pembangunan Kabupaten Tanjung Jabung Timur Tahun Anggaran 2024 guna mengoptimalkan penyampaian informasi kepada masyarakat. Untuk itu, perlu melakukan verifikasi media yang menjadi mitra kerja Pemerintah Kabupaten Tanjung Jabung Timur.</p>\r\n<p>Sehubungan dengan hal tersebut, Kami menyampaikan kepada pimpinan media cetak, media online dan media elektronik untuk segera menyampaikan berkas permohonan kerjasama yang ditujukan kepada Bupati Tanjung Jabung Timur c.q Kepala Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur dengan melampirkan persyaratan wajib sebagai berikut.</p>\r\n<p>Laman <a href=\"https://www.instagram.com/p/C1oOgjWy-4T/?utm_source=ig_web_copy_link&amp;igsh=YzZhZTZiNWI3Nw==\" target=\"_blank\" rel=\"noopener\">Instagram</a></p>', '[{\"download_link\":\"pengumumans\\\\July2024\\\\UnGIK6UZiSGyjtySbJaa.pdf\",\"original_name\":\"61data-blank-spot-25-juni-2021.pdf\"}]', '2024-07-03 08:07:00', '2024-07-03 08:21:36'),
(2, 'dfgdsfg', '<p>fgsdfgsdsdfg</p>', '[]', '2024-07-03 08:31:21', '2024-07-03 08:31:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peraturanbupatis`
--

CREATE TABLE `peraturanbupatis` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `didownload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peraturanbupatis`
--

INSERT INTO `peraturanbupatis` (`id`, `judul`, `keterangan`, `tahun`, `file`, `didownload`, `created_at`, `updated_at`) VALUES
(1, 'PERATURAN BUPATI TANJUNG JABUNG TIMUR NOMR 1 TAHUN 2019', 'tentang PERUBAHAN ATAS PERATURAN BUPATI TANJUNG JABUNG TIMUR NOMOR 31 TAHUN 2016', '2019', '[{\"download_link\":\"peraturanbupatis\\\\April2024\\\\eVc9Hz2paozuMfxMie2O.pdf\",\"original_name\":\"6168perbupno1tahun2019tentangperubahanperbup31dikompresi.pdf\"}]', '2', '2024-04-22 02:11:18', '2024-05-29 08:20:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peraturankementeriandalamnegeris`
--

CREATE TABLE `peraturankementeriandalamnegeris` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `didownload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peraturankementeriandalamnegeris`
--

INSERT INTO `peraturankementeriandalamnegeris` (`id`, `judul`, `keterangan`, `tahun`, `file`, `didownload`, `created_at`, `updated_at`) VALUES
(1, 'Peraturan Menteri Dalam Negeri Nomor 3 Tahun 2017', 'tentang Pedoman Pengelolaan Pelayanan Informasi dan Dokumentasi Kementerian Dalam Negeri dan Pemerintahan Daerah', '2017', '[{\"download_link\":\"Peraturan Kementerian Dalam Negeri\\\\May2024\\\\63ZbuVsukVxtfrJiQHNO.pdf\",\"original_name\":\"PERMENDAGRI Nomor 3 Tahun 2017.pdf\"}]', NULL, '2024-05-29 04:28:12', '2024-05-29 04:28:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peraturankementeriankominfos`
--

CREATE TABLE `peraturankementeriankominfos` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `didownload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peraturankementeriankominfos`
--

INSERT INTO `peraturankementeriankominfos` (`id`, `judul`, `keterangan`, `tahun`, `file`, `didownload`, `created_at`, `updated_at`) VALUES
(1, 'Peraturan Menteri Komunikasi dan Informatika Nomor 35 Tahun 2012', 'tentang Persyaratan Teknis Alat dan Perangkat Penerima (Set Top Box) Televisi Siaran Digital Berbasis Standar Digital Video Broadcasting Terrestrial – Second Generation', '2012', '[{\"download_link\":\"peraturan kementerian kominfo\\\\May2024\\\\swlur6wB6UrCfKlMlssX.pdf\",\"original_name\":\"2012permen35..pdf\"}]', '1', '2024-05-29 03:22:57', '2024-05-30 07:33:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peraturan_daerahs`
--

CREATE TABLE `peraturan_daerahs` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `didownload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peraturan_daerahs`
--

INSERT INTO `peraturan_daerahs` (`id`, `judul`, `keterangan`, `tahun`, `file`, `didownload`, `created_at`, `updated_at`) VALUES
(1, 'PERATURAN DAERAH KABUPATEN TANJUNG JABUNG TIMUR NOMR 1 TAHUN 2019', 'PERUBAHAN ATAS PERATURAN KABUPATEN TANJUNG JABUNG TIMUR NOMOR 7 TAHUN 2016', '2019', '[{\"download_link\":\"peraturan-daerah\\\\March2024\\\\xkDxulRxdwNXVbLoy2yo.pdf\",\"original_name\":\"PERATURAN DAERAH KABUPATEN TANJUNG JABUNG TIMUR NOMR 1 TAHUN 2019.pdf\"}]', '1', '2019-10-28 19:32:00', '2024-05-29 08:35:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peraturan_pemerintahs`
--

CREATE TABLE `peraturan_pemerintahs` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `didownload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peraturan_pemerintahs`
--

INSERT INTO `peraturan_pemerintahs` (`id`, `judul`, `keterangan`, `tahun`, `file`, `didownload`, `created_at`, `updated_at`) VALUES
(1, 'PERATURAN KOMISI INFORMASI NOMOR 1 TAHUN 2017', 'PENGKLASIFIKASIAN INFORMASI PUBLIK', '2017', '[{\"download_link\":\"peraturan-pemerintah\\\\March2024\\\\l72nAGPLijqdHStXZLDa.pdf\",\"original_name\":\"897518179056perki1tahun2017.pdf\"}]', '1', '2018-10-27 19:44:00', '2024-05-30 07:20:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(2, 'browse_bread', NULL, '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(3, 'browse_database', NULL, '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(4, 'browse_media', NULL, '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(5, 'browse_compass', NULL, '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(6, 'browse_menus', 'menus', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(7, 'read_menus', 'menus', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(8, 'edit_menus', 'menus', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(9, 'add_menus', 'menus', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(10, 'delete_menus', 'menus', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(11, 'browse_roles', 'roles', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(12, 'read_roles', 'roles', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(13, 'edit_roles', 'roles', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(14, 'add_roles', 'roles', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(15, 'delete_roles', 'roles', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(16, 'browse_users', 'users', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(17, 'read_users', 'users', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(18, 'edit_users', 'users', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(19, 'add_users', 'users', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(20, 'delete_users', 'users', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(21, 'browse_settings', 'settings', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(22, 'read_settings', 'settings', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(23, 'edit_settings', 'settings', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(24, 'add_settings', 'settings', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(25, 'delete_settings', 'settings', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(26, 'browse_categories', 'categories', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(27, 'read_categories', 'categories', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(28, 'edit_categories', 'categories', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(29, 'add_categories', 'categories', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(30, 'delete_categories', 'categories', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(31, 'browse_posts', 'posts', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(32, 'read_posts', 'posts', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(33, 'edit_posts', 'posts', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(34, 'add_posts', 'posts', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(35, 'delete_posts', 'posts', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(36, 'browse_pages', 'pages', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(37, 'read_pages', 'pages', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(38, 'edit_pages', 'pages', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(39, 'add_pages', 'pages', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(40, 'delete_pages', 'pages', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(96, 'browse_sliders', 'sliders', '2023-12-20 21:31:54', '2023-12-20 21:31:54'),
(97, 'read_sliders', 'sliders', '2023-12-20 21:31:54', '2023-12-20 21:31:54'),
(98, 'edit_sliders', 'sliders', '2023-12-20 21:31:54', '2023-12-20 21:31:54'),
(99, 'add_sliders', 'sliders', '2023-12-20 21:31:54', '2023-12-20 21:31:54'),
(100, 'delete_sliders', 'sliders', '2023-12-20 21:31:54', '2023-12-20 21:31:54'),
(111, 'browse_kritiks', 'kritiks', '2023-12-28 01:04:17', '2023-12-28 01:04:17'),
(112, 'read_kritiks', 'kritiks', '2023-12-28 01:04:17', '2023-12-28 01:04:17'),
(113, 'edit_kritiks', 'kritiks', '2023-12-28 01:04:17', '2023-12-28 01:04:17'),
(114, 'add_kritiks', 'kritiks', '2023-12-28 01:04:17', '2023-12-28 01:04:17'),
(115, 'delete_kritiks', 'kritiks', '2023-12-28 01:04:17', '2023-12-28 01:04:17'),
(146, 'browse_pauddikmas', 'pauddikmas', '2024-01-04 00:52:10', '2024-01-04 00:52:10'),
(147, 'read_pauddikmas', 'pauddikmas', '2024-01-04 00:52:10', '2024-01-04 00:52:10'),
(148, 'edit_pauddikmas', 'pauddikmas', '2024-01-04 00:52:10', '2024-01-04 00:52:10'),
(149, 'add_pauddikmas', 'pauddikmas', '2024-01-04 00:52:10', '2024-01-04 00:52:10'),
(150, 'delete_pauddikmas', 'pauddikmas', '2024-01-04 00:52:10', '2024-01-04 00:52:10'),
(151, 'browse_bukutamus', 'bukutamus', '2024-01-23 01:48:47', '2024-01-23 01:48:47'),
(152, 'read_bukutamus', 'bukutamus', '2024-01-23 01:48:47', '2024-01-23 01:48:47'),
(153, 'edit_bukutamus', 'bukutamus', '2024-01-23 01:48:47', '2024-01-23 01:48:47'),
(154, 'add_bukutamus', 'bukutamus', '2024-01-23 01:48:47', '2024-01-23 01:48:47'),
(155, 'delete_bukutamus', 'bukutamus', '2024-01-23 01:48:47', '2024-01-23 01:48:47'),
(156, 'browse_profil', 'profil', '2024-03-17 20:34:11', '2024-03-17 20:34:11'),
(157, 'read_profil', 'profil', '2024-03-17 20:34:11', '2024-03-17 20:34:11'),
(158, 'edit_profil', 'profil', '2024-03-17 20:34:11', '2024-03-17 20:34:11'),
(159, 'add_profil', 'profil', '2024-03-17 20:34:11', '2024-03-17 20:34:11'),
(160, 'delete_profil', 'profil', '2024-03-17 20:34:11', '2024-03-17 20:34:11'),
(171, 'browse_sejarahs', 'sejarahs', '2024-03-17 20:50:14', '2024-03-17 20:50:14'),
(172, 'read_sejarahs', 'sejarahs', '2024-03-17 20:50:14', '2024-03-17 20:50:14'),
(173, 'edit_sejarahs', 'sejarahs', '2024-03-17 20:50:14', '2024-03-17 20:50:14'),
(174, 'add_sejarahs', 'sejarahs', '2024-03-17 20:50:14', '2024-03-17 20:50:14'),
(175, 'delete_sejarahs', 'sejarahs', '2024-03-17 20:50:14', '2024-03-17 20:50:14'),
(176, 'browse_strukturs', 'strukturs', '2024-03-17 21:28:49', '2024-03-17 21:28:49'),
(177, 'read_strukturs', 'strukturs', '2024-03-17 21:28:49', '2024-03-17 21:28:49'),
(178, 'edit_strukturs', 'strukturs', '2024-03-17 21:28:49', '2024-03-17 21:28:49'),
(179, 'add_strukturs', 'strukturs', '2024-03-17 21:28:49', '2024-03-17 21:28:49'),
(180, 'delete_strukturs', 'strukturs', '2024-03-17 21:28:49', '2024-03-17 21:28:49'),
(191, 'browse_tugas_dan_wewenangs', 'tugas_dan_wewenangs', '2024-03-19 19:20:10', '2024-03-19 19:20:10'),
(192, 'read_tugas_dan_wewenangs', 'tugas_dan_wewenangs', '2024-03-19 19:20:10', '2024-03-19 19:20:10'),
(193, 'edit_tugas_dan_wewenangs', 'tugas_dan_wewenangs', '2024-03-19 19:20:10', '2024-03-19 19:20:10'),
(194, 'add_tugas_dan_wewenangs', 'tugas_dan_wewenangs', '2024-03-19 19:20:10', '2024-03-19 19:20:10'),
(195, 'delete_tugas_dan_wewenangs', 'tugas_dan_wewenangs', '2024-03-19 19:20:10', '2024-03-19 19:20:10'),
(196, 'browse_maklumats', 'maklumats', '2024-03-19 19:25:25', '2024-03-19 19:25:25'),
(197, 'read_maklumats', 'maklumats', '2024-03-19 19:25:25', '2024-03-19 19:25:25'),
(198, 'edit_maklumats', 'maklumats', '2024-03-19 19:25:25', '2024-03-19 19:25:25'),
(199, 'add_maklumats', 'maklumats', '2024-03-19 19:25:25', '2024-03-19 19:25:25'),
(200, 'delete_maklumats', 'maklumats', '2024-03-19 19:25:25', '2024-03-19 19:25:25'),
(201, 'browse_motos', 'motos', '2024-03-19 19:32:13', '2024-03-19 19:32:13'),
(202, 'read_motos', 'motos', '2024-03-19 19:32:13', '2024-03-19 19:32:13'),
(203, 'edit_motos', 'motos', '2024-03-19 19:32:13', '2024-03-19 19:32:13'),
(204, 'add_motos', 'motos', '2024-03-19 19:32:13', '2024-03-19 19:32:13'),
(205, 'delete_motos', 'motos', '2024-03-19 19:32:13', '2024-03-19 19:32:13'),
(206, 'browse_visimisis', 'visimisis', '2024-03-19 19:37:57', '2024-03-19 19:37:57'),
(207, 'read_visimisis', 'visimisis', '2024-03-19 19:37:57', '2024-03-19 19:37:57'),
(208, 'edit_visimisis', 'visimisis', '2024-03-19 19:37:57', '2024-03-19 19:37:57'),
(209, 'add_visimisis', 'visimisis', '2024-03-19 19:37:57', '2024-03-19 19:37:57'),
(210, 'delete_visimisis', 'visimisis', '2024-03-19 19:37:57', '2024-03-19 19:37:57'),
(216, 'browse_kategori_beritas', 'kategori_beritas', '2024-03-19 20:48:40', '2024-03-19 20:48:40'),
(217, 'read_kategori_beritas', 'kategori_beritas', '2024-03-19 20:48:40', '2024-03-19 20:48:40'),
(218, 'edit_kategori_beritas', 'kategori_beritas', '2024-03-19 20:48:40', '2024-03-19 20:48:40'),
(219, 'add_kategori_beritas', 'kategori_beritas', '2024-03-19 20:48:40', '2024-03-19 20:48:40'),
(220, 'delete_kategori_beritas', 'kategori_beritas', '2024-03-19 20:48:40', '2024-03-19 20:48:40'),
(226, 'browse_undang_undangs', 'undang_undangs', '2024-03-26 18:44:33', '2024-03-26 18:44:33'),
(227, 'read_undang_undangs', 'undang_undangs', '2024-03-26 18:44:33', '2024-03-26 18:44:33'),
(228, 'edit_undang_undangs', 'undang_undangs', '2024-03-26 18:44:33', '2024-03-26 18:44:33'),
(229, 'add_undang_undangs', 'undang_undangs', '2024-03-26 18:44:33', '2024-03-26 18:44:33'),
(230, 'delete_undang_undangs', 'undang_undangs', '2024-03-26 18:44:33', '2024-03-26 18:44:33'),
(236, 'browse_peraturan_daerahs', 'peraturan_daerahs', '2024-03-26 19:29:41', '2024-03-26 19:29:41'),
(237, 'read_peraturan_daerahs', 'peraturan_daerahs', '2024-03-26 19:29:41', '2024-03-26 19:29:41'),
(238, 'edit_peraturan_daerahs', 'peraturan_daerahs', '2024-03-26 19:29:41', '2024-03-26 19:29:41'),
(239, 'add_peraturan_daerahs', 'peraturan_daerahs', '2024-03-26 19:29:41', '2024-03-26 19:29:41'),
(240, 'delete_peraturan_daerahs', 'peraturan_daerahs', '2024-03-26 19:29:41', '2024-03-26 19:29:41'),
(241, 'browse_peraturan_pemerintahs', 'peraturan_pemerintahs', '2024-03-26 19:40:11', '2024-03-26 19:40:11'),
(242, 'read_peraturan_pemerintahs', 'peraturan_pemerintahs', '2024-03-26 19:40:11', '2024-03-26 19:40:11'),
(243, 'edit_peraturan_pemerintahs', 'peraturan_pemerintahs', '2024-03-26 19:40:11', '2024-03-26 19:40:11'),
(244, 'add_peraturan_pemerintahs', 'peraturan_pemerintahs', '2024-03-26 19:40:11', '2024-03-26 19:40:11'),
(245, 'delete_peraturan_pemerintahs', 'peraturan_pemerintahs', '2024-03-26 19:40:11', '2024-03-26 19:40:11'),
(256, 'browse_peraturankementeriankominfos', 'peraturankementeriankominfos', '2024-04-01 02:48:27', '2024-04-01 02:48:27'),
(257, 'read_peraturankementeriankominfos', 'peraturankementeriankominfos', '2024-04-01 02:48:27', '2024-04-01 02:48:27'),
(258, 'edit_peraturankementeriankominfos', 'peraturankementeriankominfos', '2024-04-01 02:48:27', '2024-04-01 02:48:27'),
(259, 'add_peraturankementeriankominfos', 'peraturankementeriankominfos', '2024-04-01 02:48:27', '2024-04-01 02:48:27'),
(260, 'delete_peraturankementeriankominfos', 'peraturankementeriankominfos', '2024-04-01 02:48:27', '2024-04-01 02:48:27'),
(261, 'browse_peraturankementeriandalamnegeris', 'peraturankementeriandalamnegeris', '2024-04-01 02:54:51', '2024-04-01 02:54:51'),
(262, 'read_peraturankementeriandalamnegeris', 'peraturankementeriandalamnegeris', '2024-04-01 02:54:51', '2024-04-01 02:54:51'),
(263, 'edit_peraturankementeriandalamnegeris', 'peraturankementeriandalamnegeris', '2024-04-01 02:54:51', '2024-04-01 02:54:51'),
(264, 'add_peraturankementeriandalamnegeris', 'peraturankementeriandalamnegeris', '2024-04-01 02:54:51', '2024-04-01 02:54:51'),
(265, 'delete_peraturankementeriandalamnegeris', 'peraturankementeriandalamnegeris', '2024-04-01 02:54:51', '2024-04-01 02:54:51'),
(286, 'browse_keputusanbupatis', 'keputusanbupatis', '2024-04-01 04:12:31', '2024-04-01 04:12:31'),
(287, 'read_keputusanbupatis', 'keputusanbupatis', '2024-04-01 04:12:31', '2024-04-01 04:12:31'),
(288, 'edit_keputusanbupatis', 'keputusanbupatis', '2024-04-01 04:12:31', '2024-04-01 04:12:31'),
(289, 'add_keputusanbupatis', 'keputusanbupatis', '2024-04-01 04:12:31', '2024-04-01 04:12:31'),
(290, 'delete_keputusanbupatis', 'keputusanbupatis', '2024-04-01 04:12:31', '2024-04-01 04:12:31'),
(291, 'browse_peraturanbupatis', 'peraturanbupatis', '2024-04-22 02:08:39', '2024-04-22 02:08:39'),
(292, 'read_peraturanbupatis', 'peraturanbupatis', '2024-04-22 02:08:39', '2024-04-22 02:08:39'),
(293, 'edit_peraturanbupatis', 'peraturanbupatis', '2024-04-22 02:08:39', '2024-04-22 02:08:39'),
(294, 'add_peraturanbupatis', 'peraturanbupatis', '2024-04-22 02:08:39', '2024-04-22 02:08:39'),
(295, 'delete_peraturanbupatis', 'peraturanbupatis', '2024-04-22 02:08:39', '2024-04-22 02:08:39'),
(296, 'browse_intruksi_presidens', 'intruksi_presidens', '2024-04-22 02:15:20', '2024-04-22 02:15:20'),
(297, 'read_intruksi_presidens', 'intruksi_presidens', '2024-04-22 02:15:20', '2024-04-22 02:15:20'),
(298, 'edit_intruksi_presidens', 'intruksi_presidens', '2024-04-22 02:15:20', '2024-04-22 02:15:20'),
(299, 'add_intruksi_presidens', 'intruksi_presidens', '2024-04-22 02:15:20', '2024-04-22 02:15:20'),
(300, 'delete_intruksi_presidens', 'intruksi_presidens', '2024-04-22 02:15:20', '2024-04-22 02:15:20'),
(306, 'browse_surat_edarans', 'surat_edarans', '2024-04-22 02:22:55', '2024-04-22 02:22:55'),
(307, 'read_surat_edarans', 'surat_edarans', '2024-04-22 02:22:55', '2024-04-22 02:22:55'),
(308, 'edit_surat_edarans', 'surat_edarans', '2024-04-22 02:22:55', '2024-04-22 02:22:55'),
(309, 'add_surat_edarans', 'surat_edarans', '2024-04-22 02:22:55', '2024-04-22 02:22:55'),
(310, 'delete_surat_edarans', 'surat_edarans', '2024-04-22 02:22:55', '2024-04-22 02:22:55'),
(311, 'browse_email_opds', 'email_opds', '2024-04-25 02:36:07', '2024-04-25 02:36:07'),
(312, 'read_email_opds', 'email_opds', '2024-04-25 02:36:07', '2024-04-25 02:36:07'),
(313, 'edit_email_opds', 'email_opds', '2024-04-25 02:36:07', '2024-04-25 02:36:07'),
(314, 'add_email_opds', 'email_opds', '2024-04-25 02:36:07', '2024-04-25 02:36:07'),
(315, 'delete_email_opds', 'email_opds', '2024-04-25 02:36:07', '2024-04-25 02:36:07'),
(341, 'browse_data_radio_swastas', 'data_radio_swastas', '2024-04-25 03:56:08', '2024-04-25 03:56:08'),
(342, 'read_data_radio_swastas', 'data_radio_swastas', '2024-04-25 03:56:08', '2024-04-25 03:56:08'),
(343, 'edit_data_radio_swastas', 'data_radio_swastas', '2024-04-25 03:56:08', '2024-04-25 03:56:08'),
(344, 'add_data_radio_swastas', 'data_radio_swastas', '2024-04-25 03:56:08', '2024-04-25 03:56:08'),
(345, 'delete_data_radio_swastas', 'data_radio_swastas', '2024-04-25 03:56:08', '2024-04-25 03:56:08'),
(346, 'browse_tabel_tests', 'tabel_tests', '2024-04-25 07:01:17', '2024-04-25 07:01:17'),
(347, 'read_tabel_tests', 'tabel_tests', '2024-04-25 07:01:17', '2024-04-25 07:01:17'),
(348, 'edit_tabel_tests', 'tabel_tests', '2024-04-25 07:01:17', '2024-04-25 07:01:17'),
(349, 'add_tabel_tests', 'tabel_tests', '2024-04-25 07:01:17', '2024-04-25 07:01:17'),
(350, 'delete_tabel_tests', 'tabel_tests', '2024-04-25 07:01:17', '2024-04-25 07:01:17'),
(356, 'browse_data_warnets', 'data_warnets', '2024-04-25 08:25:13', '2024-04-25 08:25:13'),
(357, 'read_data_warnets', 'data_warnets', '2024-04-25 08:25:13', '2024-04-25 08:25:13'),
(358, 'edit_data_warnets', 'data_warnets', '2024-04-25 08:25:13', '2024-04-25 08:25:13'),
(359, 'add_data_warnets', 'data_warnets', '2024-04-25 08:25:13', '2024-04-25 08:25:13'),
(360, 'delete_data_warnets', 'data_warnets', '2024-04-25 08:25:13', '2024-04-25 08:25:13'),
(371, 'browse_galeri_fotos', 'galeri_fotos', '2024-05-27 07:03:53', '2024-05-27 07:03:53'),
(372, 'read_galeri_fotos', 'galeri_fotos', '2024-05-27 07:03:53', '2024-05-27 07:03:53'),
(373, 'edit_galeri_fotos', 'galeri_fotos', '2024-05-27 07:03:53', '2024-05-27 07:03:53'),
(374, 'add_galeri_fotos', 'galeri_fotos', '2024-05-27 07:03:53', '2024-05-27 07:03:53'),
(375, 'delete_galeri_fotos', 'galeri_fotos', '2024-05-27 07:03:53', '2024-05-27 07:03:53'),
(386, 'browse_galeri_videos', 'galeri_videos', '2024-06-20 03:32:00', '2024-06-20 03:32:00'),
(387, 'read_galeri_videos', 'galeri_videos', '2024-06-20 03:32:00', '2024-06-20 03:32:00'),
(388, 'edit_galeri_videos', 'galeri_videos', '2024-06-20 03:32:00', '2024-06-20 03:32:00'),
(389, 'add_galeri_videos', 'galeri_videos', '2024-06-20 03:32:00', '2024-06-20 03:32:00'),
(390, 'delete_galeri_videos', 'galeri_videos', '2024-06-20 03:32:00', '2024-06-20 03:32:00'),
(391, 'browse_pegawais', 'pegawais', '2024-06-25 02:41:47', '2024-06-25 02:41:47'),
(392, 'read_pegawais', 'pegawais', '2024-06-25 02:41:47', '2024-06-25 02:41:47'),
(393, 'edit_pegawais', 'pegawais', '2024-06-25 02:41:47', '2024-06-25 02:41:47'),
(394, 'add_pegawais', 'pegawais', '2024-06-25 02:41:47', '2024-06-25 02:41:47'),
(395, 'delete_pegawais', 'pegawais', '2024-06-25 02:41:47', '2024-06-25 02:41:47'),
(396, 'browse_jabatans', 'jabatans', '2024-06-25 02:43:09', '2024-06-25 02:43:09'),
(397, 'read_jabatans', 'jabatans', '2024-06-25 02:43:09', '2024-06-25 02:43:09'),
(398, 'edit_jabatans', 'jabatans', '2024-06-25 02:43:09', '2024-06-25 02:43:09'),
(399, 'add_jabatans', 'jabatans', '2024-06-25 02:43:09', '2024-06-25 02:43:09'),
(400, 'delete_jabatans', 'jabatans', '2024-06-25 02:43:09', '2024-06-25 02:43:09'),
(401, 'browse_standing_banners', 'standing_banners', '2024-06-26 01:35:33', '2024-06-26 01:35:33'),
(402, 'read_standing_banners', 'standing_banners', '2024-06-26 01:35:33', '2024-06-26 01:35:33'),
(403, 'edit_standing_banners', 'standing_banners', '2024-06-26 01:35:33', '2024-06-26 01:35:33'),
(404, 'add_standing_banners', 'standing_banners', '2024-06-26 01:35:33', '2024-06-26 01:35:33'),
(405, 'delete_standing_banners', 'standing_banners', '2024-06-26 01:35:33', '2024-06-26 01:35:33'),
(406, 'browse_bannerstandings', 'bannerstandings', '2024-06-26 02:35:09', '2024-06-26 02:35:09'),
(407, 'read_bannerstandings', 'bannerstandings', '2024-06-26 02:35:09', '2024-06-26 02:35:09'),
(408, 'edit_bannerstandings', 'bannerstandings', '2024-06-26 02:35:09', '2024-06-26 02:35:09'),
(409, 'add_bannerstandings', 'bannerstandings', '2024-06-26 02:35:09', '2024-06-26 02:35:09'),
(410, 'delete_bannerstandings', 'bannerstandings', '2024-06-26 02:35:09', '2024-06-26 02:35:09'),
(411, 'browse_banner_standings', 'banner_standings', '2024-06-26 02:40:00', '2024-06-26 02:40:00'),
(412, 'read_banner_standings', 'banner_standings', '2024-06-26 02:40:00', '2024-06-26 02:40:00'),
(413, 'edit_banner_standings', 'banner_standings', '2024-06-26 02:40:00', '2024-06-26 02:40:00'),
(414, 'add_banner_standings', 'banner_standings', '2024-06-26 02:40:00', '2024-06-26 02:40:00'),
(415, 'delete_banner_standings', 'banner_standings', '2024-06-26 02:40:00', '2024-06-26 02:40:00'),
(416, 'browse_banners', 'banners', '2024-06-26 07:10:43', '2024-06-26 07:10:43'),
(417, 'read_banners', 'banners', '2024-06-26 07:10:43', '2024-06-26 07:10:43'),
(418, 'edit_banners', 'banners', '2024-06-26 07:10:43', '2024-06-26 07:10:43'),
(419, 'add_banners', 'banners', '2024-06-26 07:10:43', '2024-06-26 07:10:43'),
(420, 'delete_banners', 'banners', '2024-06-26 07:10:43', '2024-06-26 07:10:43'),
(421, 'browse_lokasi_bts', 'lokasi_bts', '2024-07-02 08:57:02', '2024-07-02 08:57:02'),
(422, 'read_lokasi_bts', 'lokasi_bts', '2024-07-02 08:57:02', '2024-07-02 08:57:02'),
(423, 'edit_lokasi_bts', 'lokasi_bts', '2024-07-02 08:57:02', '2024-07-02 08:57:02'),
(424, 'add_lokasi_bts', 'lokasi_bts', '2024-07-02 08:57:02', '2024-07-02 08:57:02'),
(425, 'delete_lokasi_bts', 'lokasi_bts', '2024-07-02 08:57:02', '2024-07-02 08:57:02'),
(451, 'browse_linkfiles', 'linkfiles', '2024-07-03 03:58:35', '2024-07-03 03:58:35'),
(452, 'read_linkfiles', 'linkfiles', '2024-07-03 03:58:35', '2024-07-03 03:58:35'),
(453, 'edit_linkfiles', 'linkfiles', '2024-07-03 03:58:35', '2024-07-03 03:58:35'),
(454, 'add_linkfiles', 'linkfiles', '2024-07-03 03:58:35', '2024-07-03 03:58:35'),
(455, 'delete_linkfiles', 'linkfiles', '2024-07-03 03:58:35', '2024-07-03 03:58:35'),
(456, 'browse_data_blank_spot', 'data_blank_spot', '2024-07-03 04:15:38', '2024-07-03 04:15:38'),
(457, 'read_data_blank_spot', 'data_blank_spot', '2024-07-03 04:15:38', '2024-07-03 04:15:38'),
(458, 'edit_data_blank_spot', 'data_blank_spot', '2024-07-03 04:15:38', '2024-07-03 04:15:38'),
(459, 'add_data_blank_spot', 'data_blank_spot', '2024-07-03 04:15:38', '2024-07-03 04:15:38'),
(460, 'delete_data_blank_spot', 'data_blank_spot', '2024-07-03 04:15:38', '2024-07-03 04:15:38'),
(461, 'browse_data_blank_spots', 'data_blank_spots', '2024-07-03 04:17:12', '2024-07-03 04:17:12'),
(462, 'read_data_blank_spots', 'data_blank_spots', '2024-07-03 04:17:12', '2024-07-03 04:17:12'),
(463, 'edit_data_blank_spots', 'data_blank_spots', '2024-07-03 04:17:12', '2024-07-03 04:17:12'),
(464, 'add_data_blank_spots', 'data_blank_spots', '2024-07-03 04:17:12', '2024-07-03 04:17:12'),
(465, 'delete_data_blank_spots', 'data_blank_spots', '2024-07-03 04:17:12', '2024-07-03 04:17:12'),
(466, 'browse_beritas', 'beritas', '2024-07-03 05:06:19', '2024-07-03 05:06:19'),
(467, 'read_beritas', 'beritas', '2024-07-03 05:06:19', '2024-07-03 05:06:19'),
(468, 'edit_beritas', 'beritas', '2024-07-03 05:06:19', '2024-07-03 05:06:19'),
(469, 'add_beritas', 'beritas', '2024-07-03 05:06:19', '2024-07-03 05:06:19'),
(470, 'delete_beritas', 'beritas', '2024-07-03 05:06:19', '2024-07-03 05:06:19'),
(471, 'browse_data_tv_kabels', 'data_tv_kabels', '2024-07-03 07:35:47', '2024-07-03 07:35:47'),
(472, 'read_data_tv_kabels', 'data_tv_kabels', '2024-07-03 07:35:47', '2024-07-03 07:35:47'),
(473, 'edit_data_tv_kabels', 'data_tv_kabels', '2024-07-03 07:35:47', '2024-07-03 07:35:47'),
(474, 'add_data_tv_kabels', 'data_tv_kabels', '2024-07-03 07:35:47', '2024-07-03 07:35:47'),
(475, 'delete_data_tv_kabels', 'data_tv_kabels', '2024-07-03 07:35:47', '2024-07-03 07:35:47'),
(496, 'browse_pengumumans', 'pengumumans', '2024-07-03 08:05:06', '2024-07-03 08:05:06'),
(497, 'read_pengumumans', 'pengumumans', '2024-07-03 08:05:06', '2024-07-03 08:05:06'),
(498, 'edit_pengumumans', 'pengumumans', '2024-07-03 08:05:06', '2024-07-03 08:05:06'),
(499, 'add_pengumumans', 'pengumumans', '2024-07-03 08:05:06', '2024-07-03 08:05:06'),
(500, 'delete_pengumumans', 'pengumumans', '2024-07-03 08:05:06', '2024-07-03 08:05:06'),
(506, 'browse_weblinks', 'weblinks', '2024-07-04 07:07:11', '2024-07-04 07:07:11'),
(507, 'read_weblinks', 'weblinks', '2024-07-04 07:07:11', '2024-07-04 07:07:11'),
(508, 'edit_weblinks', 'weblinks', '2024-07-04 07:07:11', '2024-07-04 07:07:11'),
(509, 'add_weblinks', 'weblinks', '2024-07-04 07:07:11', '2024-07-04 07:07:11'),
(510, 'delete_weblinks', 'weblinks', '2024-07-04 07:07:11', '2024-07-04 07:07:11'),
(511, 'browse_sakips', 'sakips', '2024-07-04 08:15:28', '2024-07-04 08:15:28'),
(512, 'read_sakips', 'sakips', '2024-07-04 08:15:28', '2024-07-04 08:15:28'),
(513, 'edit_sakips', 'sakips', '2024-07-04 08:15:28', '2024-07-04 08:15:28'),
(514, 'add_sakips', 'sakips', '2024-07-04 08:15:28', '2024-07-04 08:15:28'),
(515, 'delete_sakips', 'sakips', '2024-07-04 08:15:28', '2024-07-04 08:15:28'),
(521, 'browse_agendas', 'agendas', '2024-07-04 09:02:08', '2024-07-04 09:02:08'),
(522, 'read_agendas', 'agendas', '2024-07-04 09:02:08', '2024-07-04 09:02:08'),
(523, 'edit_agendas', 'agendas', '2024-07-04 09:02:08', '2024-07-04 09:02:08'),
(524, 'add_agendas', 'agendas', '2024-07-04 09:02:08', '2024-07-04 09:02:08'),
(525, 'delete_agendas', 'agendas', '2024-07-04 09:02:08', '2024-07-04 09:02:08'),
(526, 'browse_renstras', 'renstras', '2024-07-05 05:02:26', '2024-07-05 05:02:26'),
(527, 'read_renstras', 'renstras', '2024-07-05 05:02:26', '2024-07-05 05:02:26'),
(528, 'edit_renstras', 'renstras', '2024-07-05 05:02:26', '2024-07-05 05:02:26'),
(529, 'add_renstras', 'renstras', '2024-07-05 05:02:26', '2024-07-05 05:02:26'),
(530, 'delete_renstras', 'renstras', '2024-07-05 05:02:26', '2024-07-05 05:02:26'),
(536, 'browse_bidangsekres', 'bidangsekres', '2024-07-05 06:14:18', '2024-07-05 06:14:18'),
(537, 'read_bidangsekres', 'bidangsekres', '2024-07-05 06:14:18', '2024-07-05 06:14:18'),
(538, 'edit_bidangsekres', 'bidangsekres', '2024-07-05 06:14:18', '2024-07-05 06:14:18'),
(539, 'add_bidangsekres', 'bidangsekres', '2024-07-05 06:14:18', '2024-07-05 06:14:18'),
(540, 'delete_bidangsekres', 'bidangsekres', '2024-07-05 06:14:18', '2024-07-05 06:14:18'),
(541, 'browse_bidang_egovs', 'bidang_egovs', '2024-07-08 02:32:49', '2024-07-08 02:32:49'),
(542, 'read_bidang_egovs', 'bidang_egovs', '2024-07-08 02:32:49', '2024-07-08 02:32:49'),
(543, 'edit_bidang_egovs', 'bidang_egovs', '2024-07-08 02:32:49', '2024-07-08 02:32:49'),
(544, 'add_bidang_egovs', 'bidang_egovs', '2024-07-08 02:32:49', '2024-07-08 02:32:49'),
(545, 'delete_bidang_egovs', 'bidang_egovs', '2024-07-08 02:32:49', '2024-07-08 02:32:49'),
(546, 'browse_bidang_infokom', 'bidang_infokom', '2024-07-08 03:03:25', '2024-07-08 03:03:25'),
(547, 'read_bidang_infokom', 'bidang_infokom', '2024-07-08 03:03:25', '2024-07-08 03:03:25'),
(548, 'edit_bidang_infokom', 'bidang_infokom', '2024-07-08 03:03:25', '2024-07-08 03:03:25'),
(549, 'add_bidang_infokom', 'bidang_infokom', '2024-07-08 03:03:25', '2024-07-08 03:03:25'),
(550, 'delete_bidang_infokom', 'bidang_infokom', '2024-07-08 03:03:25', '2024-07-08 03:03:25'),
(556, 'browse_bidang_infokoms', 'bidang_infokoms', '2024-07-08 03:06:47', '2024-07-08 03:06:47'),
(557, 'read_bidang_infokoms', 'bidang_infokoms', '2024-07-08 03:06:47', '2024-07-08 03:06:47'),
(558, 'edit_bidang_infokoms', 'bidang_infokoms', '2024-07-08 03:06:47', '2024-07-08 03:06:47'),
(559, 'add_bidang_infokoms', 'bidang_infokoms', '2024-07-08 03:06:47', '2024-07-08 03:06:47'),
(560, 'delete_bidang_infokoms', 'bidang_infokoms', '2024-07-08 03:06:47', '2024-07-08 03:06:47'),
(561, 'browse_kata_sambutans', 'kata_sambutans', '2024-07-09 02:30:44', '2024-07-09 02:30:44'),
(562, 'read_kata_sambutans', 'kata_sambutans', '2024-07-09 02:30:44', '2024-07-09 02:30:44'),
(563, 'edit_kata_sambutans', 'kata_sambutans', '2024-07-09 02:30:44', '2024-07-09 02:30:44'),
(564, 'add_kata_sambutans', 'kata_sambutans', '2024-07-09 02:30:44', '2024-07-09 02:30:44'),
(565, 'delete_kata_sambutans', 'kata_sambutans', '2024-07-09 02:30:44', '2024-07-09 02:30:44'),
(581, 'browse_detail_aplikasis', 'detail_aplikasis', '2024-07-10 03:01:24', '2024-07-10 03:01:24'),
(582, 'read_detail_aplikasis', 'detail_aplikasis', '2024-07-10 03:01:24', '2024-07-10 03:01:24'),
(583, 'edit_detail_aplikasis', 'detail_aplikasis', '2024-07-10 03:01:24', '2024-07-10 03:01:24'),
(584, 'add_detail_aplikasis', 'detail_aplikasis', '2024-07-10 03:01:24', '2024-07-10 03:01:24'),
(585, 'delete_detail_aplikasis', 'detail_aplikasis', '2024-07-10 03:01:24', '2024-07-10 03:01:24'),
(586, 'browse_aplikasi_terkaits', 'aplikasi_terkaits', '2024-07-10 03:02:48', '2024-07-10 03:02:48'),
(587, 'read_aplikasi_terkaits', 'aplikasi_terkaits', '2024-07-10 03:02:48', '2024-07-10 03:02:48'),
(588, 'edit_aplikasi_terkaits', 'aplikasi_terkaits', '2024-07-10 03:02:48', '2024-07-10 03:02:48'),
(589, 'add_aplikasi_terkaits', 'aplikasi_terkaits', '2024-07-10 03:02:48', '2024-07-10 03:02:48'),
(590, 'delete_aplikasi_terkaits', 'aplikasi_terkaits', '2024-07-10 03:02:48', '2024-07-10 03:02:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 4),
(17, 1),
(17, 4),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(96, 1),
(96, 4),
(97, 1),
(97, 4),
(98, 1),
(98, 4),
(99, 1),
(99, 4),
(100, 1),
(100, 4),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(171, 1),
(171, 4),
(172, 1),
(172, 4),
(173, 1),
(173, 4),
(174, 1),
(174, 4),
(175, 1),
(175, 4),
(176, 1),
(176, 4),
(177, 1),
(177, 4),
(178, 1),
(178, 4),
(179, 1),
(179, 4),
(180, 1),
(180, 4),
(191, 1),
(191, 4),
(192, 1),
(192, 4),
(193, 1),
(193, 4),
(194, 1),
(194, 4),
(195, 1),
(195, 4),
(196, 1),
(196, 4),
(197, 1),
(197, 4),
(198, 1),
(198, 4),
(199, 1),
(199, 4),
(200, 1),
(200, 4),
(201, 1),
(201, 4),
(202, 1),
(202, 4),
(203, 1),
(203, 4),
(204, 1),
(204, 4),
(205, 1),
(205, 4),
(206, 1),
(206, 4),
(207, 1),
(207, 4),
(208, 1),
(208, 4),
(209, 1),
(209, 4),
(210, 1),
(210, 4),
(216, 1),
(216, 4),
(217, 1),
(217, 4),
(218, 1),
(218, 4),
(219, 1),
(219, 4),
(220, 1),
(220, 4),
(226, 1),
(226, 4),
(227, 1),
(227, 4),
(228, 1),
(228, 4),
(229, 1),
(229, 4),
(230, 1),
(230, 4),
(236, 1),
(236, 4),
(237, 1),
(237, 4),
(238, 1),
(238, 4),
(239, 1),
(239, 4),
(240, 1),
(240, 4),
(241, 1),
(241, 4),
(242, 1),
(242, 4),
(243, 1),
(243, 4),
(244, 1),
(244, 4),
(245, 1),
(245, 4),
(256, 1),
(256, 4),
(257, 1),
(257, 4),
(258, 1),
(258, 4),
(259, 1),
(259, 4),
(260, 1),
(260, 4),
(261, 1),
(261, 4),
(262, 1),
(262, 4),
(263, 1),
(263, 4),
(264, 1),
(264, 4),
(265, 1),
(265, 4),
(286, 1),
(286, 4),
(287, 1),
(287, 4),
(288, 1),
(288, 4),
(289, 1),
(289, 4),
(290, 1),
(290, 4),
(291, 1),
(291, 4),
(292, 1),
(292, 4),
(293, 1),
(293, 4),
(294, 1),
(294, 4),
(295, 1),
(295, 4),
(296, 1),
(296, 4),
(297, 1),
(297, 4),
(298, 1),
(298, 4),
(299, 1),
(299, 4),
(300, 1),
(300, 4),
(306, 1),
(306, 4),
(307, 1),
(307, 4),
(308, 1),
(308, 4),
(309, 1),
(309, 4),
(310, 1),
(310, 4),
(311, 1),
(311, 4),
(312, 1),
(312, 4),
(313, 1),
(313, 4),
(314, 1),
(314, 4),
(315, 1),
(315, 4),
(341, 1),
(341, 4),
(342, 1),
(342, 4),
(343, 1),
(343, 4),
(344, 1),
(344, 4),
(345, 1),
(345, 4),
(346, 1),
(347, 1),
(348, 1),
(349, 1),
(350, 1),
(356, 1),
(356, 4),
(357, 1),
(357, 4),
(358, 1),
(358, 4),
(359, 1),
(359, 4),
(360, 1),
(360, 4),
(371, 1),
(371, 4),
(372, 1),
(372, 4),
(373, 1),
(373, 4),
(374, 1),
(374, 4),
(375, 1),
(375, 4),
(386, 1),
(386, 4),
(387, 1),
(387, 4),
(388, 1),
(388, 4),
(389, 1),
(389, 4),
(390, 1),
(390, 4),
(391, 1),
(391, 4),
(392, 1),
(392, 4),
(393, 1),
(393, 4),
(394, 1),
(394, 4),
(395, 1),
(395, 4),
(396, 1),
(396, 4),
(397, 1),
(397, 4),
(398, 1),
(398, 4),
(399, 1),
(399, 4),
(400, 1),
(400, 4),
(401, 1),
(402, 1),
(403, 1),
(404, 1),
(405, 1),
(406, 1),
(406, 4),
(407, 1),
(407, 4),
(408, 1),
(408, 4),
(409, 1),
(409, 4),
(410, 1),
(410, 4),
(411, 1),
(411, 4),
(412, 1),
(412, 4),
(413, 1),
(413, 4),
(414, 1),
(414, 4),
(415, 1),
(415, 4),
(416, 1),
(416, 4),
(417, 1),
(417, 4),
(418, 1),
(418, 4),
(419, 1),
(419, 4),
(420, 1),
(420, 4),
(421, 1),
(421, 4),
(422, 1),
(422, 4),
(423, 1),
(423, 4),
(424, 1),
(424, 4),
(425, 1),
(425, 4),
(451, 1),
(451, 4),
(452, 1),
(452, 4),
(453, 1),
(453, 4),
(454, 1),
(454, 4),
(455, 1),
(455, 4),
(456, 1),
(456, 4),
(457, 1),
(457, 4),
(458, 1),
(458, 4),
(459, 1),
(459, 4),
(460, 1),
(460, 4),
(461, 1),
(461, 4),
(462, 1),
(462, 4),
(463, 1),
(463, 4),
(464, 1),
(464, 4),
(465, 1),
(465, 4),
(466, 1),
(466, 4),
(467, 1),
(467, 4),
(468, 1),
(468, 4),
(469, 1),
(469, 4),
(470, 1),
(470, 4),
(471, 1),
(471, 4),
(472, 1),
(472, 4),
(473, 1),
(473, 4),
(474, 1),
(474, 4),
(475, 1),
(475, 4),
(496, 1),
(496, 4),
(497, 1),
(497, 4),
(498, 1),
(498, 4),
(499, 1),
(499, 4),
(500, 1),
(500, 4),
(506, 1),
(506, 4),
(507, 1),
(507, 4),
(508, 1),
(508, 4),
(509, 1),
(509, 4),
(510, 1),
(510, 4),
(511, 1),
(511, 4),
(512, 1),
(512, 4),
(513, 1),
(513, 4),
(514, 1),
(514, 4),
(515, 1),
(515, 4),
(521, 1),
(521, 4),
(522, 1),
(522, 4),
(523, 1),
(523, 4),
(524, 1),
(524, 4),
(525, 1),
(525, 4),
(526, 1),
(526, 4),
(527, 1),
(527, 4),
(528, 1),
(528, 4),
(529, 1),
(529, 4),
(530, 1),
(530, 4),
(536, 1),
(536, 4),
(537, 1),
(537, 4),
(538, 1),
(538, 4),
(539, 1),
(539, 4),
(540, 1),
(540, 4),
(541, 1),
(541, 4),
(542, 1),
(542, 4),
(543, 1),
(543, 4),
(544, 1),
(544, 4),
(545, 1),
(545, 4),
(546, 1),
(547, 1),
(548, 1),
(549, 1),
(550, 1),
(556, 1),
(556, 4),
(557, 1),
(557, 4),
(558, 1),
(558, 4),
(559, 1),
(559, 4),
(560, 1),
(560, 4),
(561, 1),
(561, 4),
(562, 1),
(562, 4),
(563, 1),
(563, 4),
(564, 1),
(564, 4),
(565, 1),
(565, 4),
(581, 1),
(581, 4),
(582, 1),
(582, 4),
(583, 1),
(583, 4),
(584, 1),
(584, 4),
(585, 1),
(585, 4),
(586, 1),
(586, 4),
(587, 1),
(587, 4),
(588, 1),
(588, 4),
(589, 1),
(589, 4),
(590, 1),
(590, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-12-20 00:24:47', '2023-12-20 00:24:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profils`
--

CREATE TABLE `profils` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `renstras`
--

CREATE TABLE `renstras` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `text_foto` text DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `renstras`
--

INSERT INTO `renstras` (`id`, `judul`, `foto`, `text_foto`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'Rencana Strategis Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur', NULL, 'Rencana Strategis Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur', '<p>Rencana Strategis Dinas Komunikasi dan Informaitka Kabupaten Tanjung Jabung Timur</p>\r\n<p>RENSTRA PERUBAHAN TA. 2016-2021&nbsp;<a href=\"http://localhost:8000/storage/linkfiles/July2024/4xQrwzhIDyvmMGHWKgxV.pdf\" target=\"_blank\" rel=\"noopener\">download</a></p>\r\n<p>RENSTRA TA. 2021-2026 <a href=\"http://localhost:8000/storage/linkfiles/July2024/U07MN6u0gMcBvu2eS8Jl.pdf\" target=\"_blank\" rel=\"noopener\">download</a></p>', '2024-07-05 05:10:00', '2024-07-05 05:17:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(2, 'user', 'Normal User', '2023-12-20 00:24:46', '2023-12-20 00:24:46'),
(4, 'Administrator Diskominfo', 'Administrator OPD', '2024-01-15 04:59:31', '2024-07-15 02:37:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sakips`
--

CREATE TABLE `sakips` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `text_foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sakips`
--

INSERT INTO `sakips` (`id`, `judul`, `foto`, `isi`, `text_foto`, `created_at`, `updated_at`) VALUES
(1, 'Sistem Akuntabilitas Kinerja Instansi Pemerintahan', NULL, '<p>LAKIP Tahun 2018 <a href=\"http://localhost:8000/storage/linkfiles/July2024/HUqgk33Lev2TYpsrOCDr.pdf\" target=\"_blank\" rel=\"noopener\">download</a></p>', 'Sistem Akuntabilitas Kinerja Instansi Pemerintahan', '2024-07-04 08:17:00', '2024-07-04 08:34:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarahs`
--

CREATE TABLE `sejarahs` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_sejarah` varchar(255) DEFAULT NULL,
  `foto_sejarah` varchar(255) DEFAULT NULL,
  `isi_sejarah` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sejarahs`
--

INSERT INTO `sejarahs` (`id`, `judul_sejarah`, `foto_sejarah`, `isi_sejarah`, `created_at`, `updated_at`) VALUES
(1, 'Sejarah Terbentuknya Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur', 'sejarah\\June2024\\S9BmVH50zEUrgqaBolwd.jpg', 'Dinas komunikasi dan informatika kabupaten tanjung jabung timur merupakan Organisasi Perangkat Daerah yang terbentuk sejak januari 2017.\r\n\r\nDinas Komunikasi dan Informatika telah diatur dengan peraturan yang ada yaitu Peraturan Daerah Kabupaten Tanjung Jabung Timur Nomor 6 Tahun 2016 tentang Pembentukkan dan Susunan Perangkat Daerah dan Peraturan Bupati Tanjung Jabung Timur Nomor 31 Tahun 2016 tentang Kedudukan, Susunan Organisasi, tugas dan Fungsi serta Tata Kerja Perangkat Daerah.\r\n\r\nDinas Kominfo merupakan penggabungan urusan komunikasi dan informatika (yang sebelumya digabung di Dinas Perhubungan, Komunikasi dan Informatika).', '2024-03-17 20:55:00', '2024-06-25 04:13:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Diskominfo', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Dinas Komunikasi dan Informatika', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\July2024\\SGXKj079Kxf8Ig6eS4Zn.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\July2024\\8TzTq0CEI1WzAWNX2h2m.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'ADMIN', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Diskominfo', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\July2024\\lDJ8B21zIkFw5Eev9WHy.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\July2024\\yJmOewbBpCwNgscWLTHP.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', 'DISKOMINFO', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `slider` varchar(255) DEFAULT NULL,
  `tautan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `judul`, `deskripsi`, `slider`, `tautan`, `created_at`, `updated_at`) VALUES
(2, 'Selamat Datang', 'Dinas Komunikasi dan Informatika', 'sliders\\July2024\\k3ej4DbUA8fwvK4v3y9J.jpg', NULL, '2023-12-20 21:51:00', '2024-07-09 03:22:32'),
(3, NULL, NULL, 'sliders/January2024/oQ529sL0fua8oH1uVx5v.jpg', 'https://www.kemdikbud.go.id/', '2023-12-20 23:57:00', '2024-01-08 08:22:06'),
(4, 'test', 'dessss', 'sliders\\June2024\\oHkyAP3xgaP3PM05BENg.jpeg', 'https://disdik.tanjabtimkab.go.id/', '2024-01-24 08:24:00', '2024-06-05 06:01:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `strukturs`
--

CREATE TABLE `strukturs` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_struktur` varchar(255) DEFAULT NULL,
  `foto_struktur` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `strukturs`
--

INSERT INTO `strukturs` (`id`, `judul_struktur`, `foto_struktur`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 'Struktur Organisasi', 'struktur\\June2024\\mEouIxLkUCfrpIfXXpiq.jpg', 'Struktur Organisasi Dinas Komunikasi & Informatika Kab. Tanjung Jabung Timur', '2024-06-24 07:09:00', '2024-06-24 07:11:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_edarans`
--

CREATE TABLE `surat_edarans` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `didownload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `surat_edarans`
--

INSERT INTO `surat_edarans` (`id`, `judul`, `keterangan`, `tahun`, `file`, `didownload`, `created_at`, `updated_at`) VALUES
(1, 'Surat Edaran Kementarian Keuangan Republik Indonesia', 'Surat Edaran Kementarian Keuangan Republik Indonesia Nomor : S-349/PK/2015', '2015', '[{\"download_link\":\"surat-edarans\\\\May2024\\\\CA2L4EwBn1Mv6D3Udqp2.pdf\",\"original_name\":\"75skmbt_36315061115111.pdf\"}]', '1', '2019-10-29 09:04:31', '2024-05-30 09:17:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_tests`
--

CREATE TABLE `tabel_tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tabel_tests`
--

INSERT INTO `tabel_tests` (`id`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'test TinyMCE', '<p><img src=\"http://localhost:8000/storage/tabel-tests/April2024/5e4261a08059e.jpg\" alt=\"\" width=\"750\" height=\"500\"><br>test fotonya<br>test sisipkan LINK <a href=\"https://sijagoan.jambiprov.go.id/\" target=\"_blank\" rel=\"noopener\">disini</a></p>', '2024-04-25 07:03:00', '2024-04-25 07:04:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-12-20 00:24:47', '2023-12-20 00:24:47'),
(31, 'menu_items', 'title', 1, 'en', 'Dashboard', '2024-01-30 03:30:27', '2024-01-30 03:30:27'),
(32, 'menu_items', 'title', 39, 'en', 'Sejarahs', '2024-03-17 20:46:54', '2024-03-17 20:46:54'),
(33, 'data_rows', 'display_name', 208, 'en', 'Id', '2024-03-17 20:50:40', '2024-03-17 20:50:40'),
(34, 'data_rows', 'display_name', 209, 'en', 'Judul Sejarah', '2024-03-17 20:50:40', '2024-03-17 20:50:40'),
(35, 'data_rows', 'display_name', 210, 'en', 'Foto Sejarah', '2024-03-17 20:50:40', '2024-03-17 20:50:40'),
(36, 'data_rows', 'display_name', 211, 'en', 'Isi Sejarah', '2024-03-17 20:50:40', '2024-03-17 20:50:40'),
(37, 'data_rows', 'display_name', 212, 'en', 'Created At', '2024-03-17 20:50:40', '2024-03-17 20:50:40'),
(38, 'data_rows', 'display_name', 213, 'en', 'Updated At', '2024-03-17 20:50:40', '2024-03-17 20:50:40'),
(39, 'data_types', 'display_name_singular', 41, 'en', 'Sejarah', '2024-03-17 20:50:40', '2024-03-17 20:50:40'),
(40, 'data_types', 'display_name_plural', 41, 'en', 'Sejarah', '2024-03-17 20:50:40', '2024-03-17 20:50:40'),
(41, 'data_rows', 'display_name', 247, 'en', 'Id', '2024-03-19 19:27:39', '2024-03-19 19:27:39'),
(42, 'data_rows', 'display_name', 248, 'en', 'Judul', '2024-03-19 19:27:39', '2024-03-19 19:27:39'),
(43, 'data_rows', 'display_name', 249, 'en', 'Foto', '2024-03-19 19:27:39', '2024-03-19 19:27:39'),
(44, 'data_rows', 'display_name', 250, 'en', 'Keterangan', '2024-03-19 19:27:39', '2024-03-19 19:27:39'),
(45, 'data_rows', 'display_name', 251, 'en', 'Created At', '2024-03-19 19:27:39', '2024-03-19 19:27:39'),
(46, 'data_rows', 'display_name', 252, 'en', 'Updated At', '2024-03-19 19:27:39', '2024-03-19 19:27:39'),
(47, 'data_types', 'display_name_singular', 46, 'en', 'Maklumat', '2024-03-19 19:27:39', '2024-03-19 19:27:39'),
(48, 'data_types', 'display_name_plural', 46, 'en', 'Maklumat', '2024-03-19 19:27:39', '2024-03-19 19:27:39'),
(49, 'menu_items', 'title', 47, 'en', 'Maklumat', '2024-03-19 19:29:23', '2024-03-19 19:29:23'),
(50, 'menu_items', 'title', 44, 'en', 'Visimisi', '2024-03-19 19:34:30', '2024-03-19 19:34:30'),
(51, 'data_rows', 'display_name', 220, 'en', 'Id', '2024-03-19 19:35:28', '2024-03-19 19:35:28'),
(52, 'data_rows', 'display_name', 221, 'en', 'Judul', '2024-03-19 19:35:28', '2024-03-19 19:35:28'),
(53, 'data_rows', 'display_name', 222, 'en', 'isi', '2024-03-19 19:35:28', '2024-03-19 19:35:28'),
(54, 'data_rows', 'display_name', 223, 'en', 'Foto', '2024-03-19 19:35:28', '2024-03-19 19:35:28'),
(55, 'data_rows', 'display_name', 224, 'en', 'Keterangan', '2024-03-19 19:35:28', '2024-03-19 19:35:28'),
(56, 'data_rows', 'display_name', 225, 'en', 'Created At', '2024-03-19 19:35:28', '2024-03-19 19:35:28'),
(57, 'data_rows', 'display_name', 226, 'en', 'Updated At', '2024-03-19 19:35:28', '2024-03-19 19:35:28'),
(60, 'menu_items', 'title', 52, 'en', 'Kategori Berita', '2024-03-19 20:50:25', '2024-03-19 20:50:25'),
(61, 'data_rows', 'display_name', 276, 'en', 'Id', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(62, 'data_rows', 'display_name', 277, 'en', 'Judul', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(63, 'data_rows', 'display_name', 278, 'en', 'Subjudul', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(64, 'data_rows', 'display_name', 279, 'en', 'Headline', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(65, 'data_rows', 'display_name', 280, 'en', 'Foto', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(66, 'data_rows', 'display_name', 281, 'en', 'Text Foto', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(67, 'data_rows', 'display_name', 282, 'en', 'Isi Berita', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(68, 'data_rows', 'display_name', 283, 'en', 'Kredit', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(69, 'data_rows', 'display_name', 284, 'en', 'Penulis', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(70, 'data_rows', 'display_name', 285, 'en', 'Editor', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(71, 'data_rows', 'display_name', 286, 'en', 'Sumber', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(72, 'data_rows', 'display_name', 287, 'en', 'Youtube', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(73, 'data_rows', 'display_name', 288, 'en', 'Created At', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(74, 'data_rows', 'display_name', 289, 'en', 'Updated At', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(75, 'data_rows', 'display_name', 290, 'en', 'kategori_beritas', '2024-03-19 21:05:54', '2024-03-19 21:05:54'),
(78, 'data_rows', 'display_name', 299, 'en', 'Id', '2024-03-26 19:15:47', '2024-03-26 19:15:47'),
(79, 'data_rows', 'display_name', 300, 'en', 'Judul', '2024-03-26 19:15:47', '2024-03-26 19:15:47'),
(80, 'data_rows', 'display_name', 301, 'en', 'Keterangan', '2024-03-26 19:15:47', '2024-03-26 19:15:47'),
(81, 'data_rows', 'display_name', 302, 'en', 'Tahun', '2024-03-26 19:15:47', '2024-03-26 19:15:47'),
(82, 'data_rows', 'display_name', 303, 'en', 'File', '2024-03-26 19:15:47', '2024-03-26 19:15:47'),
(83, 'data_rows', 'display_name', 304, 'en', 'Didownload', '2024-03-26 19:15:47', '2024-03-26 19:15:47'),
(84, 'data_rows', 'display_name', 305, 'en', 'Created At', '2024-03-26 19:15:47', '2024-03-26 19:15:47'),
(85, 'data_rows', 'display_name', 306, 'en', 'Updated At', '2024-03-26 19:15:47', '2024-03-26 19:15:47'),
(89, 'menu_items', 'title', 57, 'en', 'Peraturan Daerah', '2024-03-26 19:30:48', '2024-03-26 19:30:48'),
(90, 'menu_items', 'title', 59, 'en', 'Peraturan Kementerian Kominfo', '2024-04-01 02:33:40', '2024-04-01 02:33:40'),
(91, 'data_rows', 'display_name', 323, 'en', 'Id', '2024-04-01 02:38:46', '2024-04-01 02:38:46'),
(92, 'data_rows', 'display_name', 324, 'en', 'Judul', '2024-04-01 02:38:46', '2024-04-01 02:38:46'),
(93, 'data_rows', 'display_name', 325, 'en', 'Keterangan', '2024-04-01 02:38:46', '2024-04-01 02:38:46'),
(94, 'data_rows', 'display_name', 326, 'en', 'Tahun', '2024-04-01 02:38:46', '2024-04-01 02:38:46'),
(95, 'data_rows', 'display_name', 327, 'en', 'File', '2024-04-01 02:38:46', '2024-04-01 02:38:46'),
(96, 'data_rows', 'display_name', 328, 'en', 'Didownload', '2024-04-01 02:38:46', '2024-04-01 02:38:46'),
(97, 'data_rows', 'display_name', 329, 'en', 'Created At', '2024-04-01 02:38:46', '2024-04-01 02:38:46'),
(98, 'data_rows', 'display_name', 330, 'en', 'Updated At', '2024-04-01 02:38:46', '2024-04-01 02:38:46'),
(101, 'menu_items', 'title', 60, 'en', 'Peraturan Kominfo', '2024-04-01 02:46:44', '2024-04-01 02:46:44'),
(102, 'data_rows', 'display_name', 355, 'en', 'Id', '2024-04-01 04:15:48', '2024-04-01 04:15:48'),
(103, 'data_rows', 'display_name', 356, 'en', 'Judul', '2024-04-01 04:15:48', '2024-04-01 04:15:48'),
(104, 'data_rows', 'display_name', 357, 'en', 'Keterangan', '2024-04-01 04:15:48', '2024-04-01 04:15:48'),
(105, 'data_rows', 'display_name', 358, 'en', 'Tahun', '2024-04-01 04:15:48', '2024-04-01 04:15:48'),
(106, 'data_rows', 'display_name', 359, 'en', 'File', '2024-04-01 04:15:48', '2024-04-01 04:15:48'),
(107, 'data_rows', 'display_name', 360, 'en', 'Didownload', '2024-04-01 04:15:48', '2024-04-01 04:15:48'),
(108, 'data_rows', 'display_name', 361, 'en', 'Created At', '2024-04-01 04:15:48', '2024-04-01 04:15:48'),
(109, 'data_rows', 'display_name', 362, 'en', 'Updated At', '2024-04-01 04:15:48', '2024-04-01 04:15:48'),
(110, 'data_types', 'display_name_singular', 65, 'en', 'Keputusan Bupati', '2024-04-01 04:15:48', '2024-04-01 04:15:48'),
(111, 'data_types', 'display_name_plural', 65, 'en', 'Keputusan Bupati', '2024-04-01 04:15:48', '2024-04-01 04:15:48'),
(112, 'menu_items', 'title', 67, 'en', 'Keputusan Bupati', '2024-04-01 04:16:41', '2024-04-01 04:16:41'),
(113, 'data_rows', 'display_name', 379, 'en', 'Id', '2024-04-22 02:22:05', '2024-04-22 02:22:05'),
(114, 'data_rows', 'display_name', 380, 'en', 'Judul', '2024-04-22 02:22:05', '2024-04-22 02:22:05'),
(115, 'data_rows', 'display_name', 381, 'en', 'Keterangan', '2024-04-22 02:22:05', '2024-04-22 02:22:05'),
(116, 'data_rows', 'display_name', 382, 'en', 'Tahun', '2024-04-22 02:22:05', '2024-04-22 02:22:05'),
(117, 'data_rows', 'display_name', 383, 'en', 'File', '2024-04-22 02:22:05', '2024-04-22 02:22:05'),
(118, 'data_rows', 'display_name', 384, 'en', 'Didownload', '2024-04-22 02:22:05', '2024-04-22 02:22:05'),
(119, 'data_rows', 'display_name', 385, 'en', 'Created At', '2024-04-22 02:22:05', '2024-04-22 02:22:05'),
(120, 'data_rows', 'display_name', 386, 'en', 'Updated At', '2024-04-22 02:22:05', '2024-04-22 02:22:05'),
(123, 'data_rows', 'display_name', 426, 'en', 'Id', '2024-04-25 08:18:06', '2024-04-25 08:18:06'),
(124, 'data_rows', 'display_name', 427, 'en', 'Kecamatan', '2024-04-25 08:18:06', '2024-04-25 08:18:06'),
(125, 'data_rows', 'display_name', 428, 'en', 'Nama Pemilik', '2024-04-25 08:18:06', '2024-04-25 08:18:06'),
(126, 'data_rows', 'display_name', 429, 'en', 'Nama Warnet', '2024-04-25 08:18:06', '2024-04-25 08:18:06'),
(127, 'data_rows', 'display_name', 430, 'en', 'Alamat', '2024-04-25 08:18:06', '2024-04-25 08:18:06'),
(128, 'data_rows', 'display_name', 431, 'en', 'Kelengkapan Izin', '2024-04-25 08:18:06', '2024-04-25 08:18:06'),
(129, 'data_rows', 'display_name', 432, 'en', 'Tahun', '2024-04-25 08:18:07', '2024-04-25 08:18:07'),
(130, 'data_rows', 'display_name', 433, 'en', 'Keterangan', '2024-04-25 08:18:07', '2024-04-25 08:18:07'),
(131, 'data_rows', 'display_name', 434, 'en', 'Created At', '2024-04-25 08:18:07', '2024-04-25 08:18:07'),
(132, 'data_rows', 'display_name', 435, 'en', 'Updated At', '2024-04-25 08:18:07', '2024-04-25 08:18:07'),
(133, 'data_rows', 'display_name', 436, 'en', 'kecamatans', '2024-04-25 08:18:07', '2024-04-25 08:18:07'),
(136, 'data_rows', 'display_name', 459, 'en', 'kategori_beritas', '2024-06-03 07:44:58', '2024-06-03 07:44:58'),
(137, 'data_rows', 'display_name', 460, 'en', 'Dibaca', '2024-06-03 07:51:27', '2024-06-03 07:51:27'),
(138, 'data_rows', 'display_name', 461, 'en', 'Kategori Id', '2024-06-03 07:51:27', '2024-06-03 07:51:27'),
(139, 'data_rows', 'display_name', 462, 'en', 'Id', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(140, 'data_rows', 'display_name', 463, 'en', 'Judul', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(141, 'data_rows', 'display_name', 464, 'en', 'Subjudul', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(142, 'data_rows', 'display_name', 465, 'en', 'Headline', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(143, 'data_rows', 'display_name', 466, 'en', 'Foto', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(144, 'data_rows', 'display_name', 467, 'en', 'Text Foto', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(145, 'data_rows', 'display_name', 468, 'en', 'Isi Berita', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(146, 'data_rows', 'display_name', 469, 'en', 'Kredit', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(147, 'data_rows', 'display_name', 470, 'en', 'Penulis', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(148, 'data_rows', 'display_name', 471, 'en', 'Editor', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(149, 'data_rows', 'display_name', 472, 'en', 'Sumber', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(150, 'data_rows', 'display_name', 473, 'en', 'Youtube', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(151, 'data_rows', 'display_name', 474, 'en', 'Created At', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(152, 'data_rows', 'display_name', 475, 'en', 'Updated At', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(153, 'data_rows', 'display_name', 476, 'en', 'Dibaca', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(154, 'data_rows', 'display_name', 477, 'en', 'Kategori Id', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(155, 'data_rows', 'display_name', 478, 'en', 'kategori_beritas', '2024-06-03 07:56:54', '2024-06-03 07:56:54'),
(158, 'data_rows', 'display_name', 479, 'en', 'kategori_beritas', '2024-06-03 08:09:38', '2024-06-03 08:09:38'),
(160, 'data_rows', 'display_name', 261, 'en', 'Id', '2024-06-24 03:50:15', '2024-06-24 03:50:15'),
(161, 'data_rows', 'display_name', 262, 'en', 'Judul Visi Misi', '2024-06-24 03:50:15', '2024-06-24 03:50:15'),
(162, 'data_rows', 'display_name', 263, 'en', 'Isi', '2024-06-24 03:50:15', '2024-06-24 03:50:15'),
(163, 'data_rows', 'display_name', 264, 'en', 'Foto', '2024-06-24 03:50:15', '2024-06-24 03:50:15'),
(164, 'data_rows', 'display_name', 265, 'en', 'Keterangan', '2024-06-24 03:50:15', '2024-06-24 03:50:15'),
(165, 'data_rows', 'display_name', 266, 'en', 'Created At', '2024-06-24 03:50:15', '2024-06-24 03:50:15'),
(166, 'data_rows', 'display_name', 267, 'en', 'Updated At', '2024-06-24 03:50:15', '2024-06-24 03:50:15'),
(167, 'data_types', 'display_name_singular', 48, 'en', 'Visi Misi', '2024-06-24 03:50:16', '2024-06-24 03:50:16'),
(168, 'data_types', 'display_name_plural', 48, 'en', 'Visi Misi', '2024-06-24 03:50:16', '2024-06-24 03:50:16'),
(169, 'data_rows', 'display_name', 240, 'en', 'Id', '2024-06-24 04:10:11', '2024-06-24 04:10:11'),
(170, 'data_rows', 'display_name', 241, 'en', 'Judul', '2024-06-24 04:10:11', '2024-06-24 04:10:11'),
(171, 'data_rows', 'display_name', 242, 'en', 'Foto', '2024-06-24 04:10:11', '2024-06-24 04:10:11'),
(172, 'data_rows', 'display_name', 243, 'en', 'Isi', '2024-06-24 04:10:11', '2024-06-24 04:10:11'),
(173, 'data_rows', 'display_name', 244, 'en', 'Keterangan', '2024-06-24 04:10:11', '2024-06-24 04:10:11'),
(174, 'data_rows', 'display_name', 245, 'en', 'Created At', '2024-06-24 04:10:11', '2024-06-24 04:10:11'),
(175, 'data_rows', 'display_name', 246, 'en', 'Updated At', '2024-06-24 04:10:11', '2024-06-24 04:10:11'),
(176, 'data_types', 'display_name_singular', 45, 'en', 'Tugas Dan Wewenang', '2024-06-24 04:10:11', '2024-06-24 04:10:11'),
(177, 'data_types', 'display_name_plural', 45, 'en', 'Tugas Dan Wewenang', '2024-06-24 04:10:11', '2024-06-24 04:10:11'),
(178, 'data_rows', 'display_name', 214, 'en', 'Id', '2024-06-24 07:07:45', '2024-06-24 07:07:45'),
(179, 'data_rows', 'display_name', 215, 'en', 'Judul Struktur', '2024-06-24 07:07:45', '2024-06-24 07:07:45'),
(180, 'data_rows', 'display_name', 216, 'en', 'Foto Struktur', '2024-06-24 07:07:45', '2024-06-24 07:07:45'),
(181, 'data_rows', 'display_name', 217, 'en', 'Keterangan', '2024-06-24 07:07:45', '2024-06-24 07:07:45'),
(182, 'data_rows', 'display_name', 218, 'en', 'Created At', '2024-06-24 07:07:45', '2024-06-24 07:07:45'),
(183, 'data_rows', 'display_name', 219, 'en', 'Updated At', '2024-06-24 07:07:45', '2024-06-24 07:07:45'),
(184, 'data_types', 'display_name_singular', 42, 'en', 'Struktur', '2024-06-24 07:07:45', '2024-06-24 07:07:45'),
(185, 'data_types', 'display_name_plural', 42, 'en', 'Struktur', '2024-06-24 07:07:45', '2024-06-24 07:07:45'),
(186, 'data_rows', 'display_name', 253, 'en', 'Isi', '2024-06-24 07:22:34', '2024-06-24 07:22:34'),
(187, 'data_rows', 'display_name', 254, 'en', 'Id', '2024-06-24 07:39:44', '2024-06-24 07:39:44'),
(188, 'data_rows', 'display_name', 255, 'en', 'Judul', '2024-06-24 07:39:44', '2024-06-24 07:39:44'),
(189, 'data_rows', 'display_name', 256, 'en', 'Foto', '2024-06-24 07:39:44', '2024-06-24 07:39:44'),
(190, 'data_rows', 'display_name', 257, 'en', 'Isi', '2024-06-24 07:39:44', '2024-06-24 07:39:44'),
(191, 'data_rows', 'display_name', 258, 'en', 'Keterangan', '2024-06-24 07:39:44', '2024-06-24 07:39:44'),
(192, 'data_rows', 'display_name', 259, 'en', 'Created At', '2024-06-24 07:39:44', '2024-06-24 07:39:44'),
(193, 'data_rows', 'display_name', 260, 'en', 'Updated At', '2024-06-24 07:39:44', '2024-06-24 07:39:44'),
(194, 'data_types', 'display_name_singular', 47, 'en', 'Moto', '2024-06-24 07:39:44', '2024-06-24 07:39:44'),
(195, 'data_types', 'display_name_plural', 47, 'en', 'Moto', '2024-06-24 07:39:44', '2024-06-24 07:39:44'),
(196, 'data_rows', 'display_name', 486, 'en', 'Id', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(197, 'data_rows', 'display_name', 487, 'en', 'Nama', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(198, 'data_rows', 'display_name', 488, 'en', 'Foto Pegawai', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(199, 'data_rows', 'display_name', 489, 'en', 'Jabatan Id', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(200, 'data_rows', 'display_name', 490, 'en', 'Pangkat', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(201, 'data_rows', 'display_name', 491, 'en', 'Tempat', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(202, 'data_rows', 'display_name', 492, 'en', 'Tanggal Lahir', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(203, 'data_rows', 'display_name', 493, 'en', 'Jk', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(204, 'data_rows', 'display_name', 494, 'en', 'Pendidikan', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(205, 'data_rows', 'display_name', 495, 'en', 'Tahun lulus', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(206, 'data_rows', 'display_name', 496, 'en', 'Keterangan', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(207, 'data_rows', 'display_name', 497, 'en', 'Created At', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(208, 'data_rows', 'display_name', 498, 'en', 'Updated At', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(209, 'data_types', 'display_name_singular', 87, 'en', 'Pegawai', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(210, 'data_types', 'display_name_plural', 87, 'en', 'Pegawai', '2024-06-25 02:56:17', '2024-06-25 02:56:17'),
(211, 'data_rows', 'display_name', 503, 'en', 'jabatans', '2024-06-25 02:58:35', '2024-06-25 02:58:35'),
(212, 'data_rows', 'display_name', 401, 'en', 'Id', '2024-07-02 08:47:09', '2024-07-02 08:47:09'),
(213, 'data_rows', 'display_name', 402, 'en', 'Judul', '2024-07-02 08:47:09', '2024-07-02 08:47:09'),
(214, 'data_rows', 'display_name', 403, 'en', 'Tahun', '2024-07-02 08:47:09', '2024-07-02 08:47:09'),
(215, 'data_rows', 'display_name', 404, 'en', 'File Upload', '2024-07-02 08:47:09', '2024-07-02 08:47:09'),
(216, 'data_rows', 'display_name', 405, 'en', 'Keterangan', '2024-07-02 08:47:09', '2024-07-02 08:47:09'),
(217, 'data_rows', 'display_name', 406, 'en', 'Created At', '2024-07-02 08:47:09', '2024-07-02 08:47:09'),
(218, 'data_rows', 'display_name', 407, 'en', 'Updated At', '2024-07-02 08:47:09', '2024-07-02 08:47:09'),
(221, 'data_rows', 'display_name', 532, 'en', 'Id', '2024-07-02 09:01:26', '2024-07-02 09:01:26'),
(222, 'data_rows', 'display_name', 533, 'en', 'Judul', '2024-07-02 09:01:26', '2024-07-02 09:01:26'),
(223, 'data_rows', 'display_name', 534, 'en', 'Tahun', '2024-07-02 09:01:26', '2024-07-02 09:01:26'),
(224, 'data_rows', 'display_name', 535, 'en', 'File Upload', '2024-07-02 09:01:26', '2024-07-02 09:01:26'),
(225, 'data_rows', 'display_name', 536, 'en', 'Keterangan', '2024-07-02 09:01:26', '2024-07-02 09:01:26'),
(226, 'data_rows', 'display_name', 537, 'en', 'Created At', '2024-07-02 09:01:26', '2024-07-02 09:01:26'),
(227, 'data_rows', 'display_name', 538, 'en', 'Updated At', '2024-07-02 09:01:26', '2024-07-02 09:01:26'),
(228, 'data_types', 'display_name_singular', 95, 'en', 'Lokasi Bt', '2024-07-02 09:01:26', '2024-07-02 09:01:26'),
(229, 'data_types', 'display_name_plural', 95, 'en', 'Lokasi Bts', '2024-07-02 09:01:26', '2024-07-02 09:01:26'),
(230, 'data_rows', 'display_name', 552, 'en', 'Id', '2024-07-03 04:18:42', '2024-07-03 04:18:42'),
(231, 'data_rows', 'display_name', 553, 'en', 'Judul', '2024-07-03 04:18:42', '2024-07-03 04:18:42'),
(232, 'data_rows', 'display_name', 554, 'en', 'Isi Halaman', '2024-07-03 04:18:42', '2024-07-03 04:18:42'),
(233, 'data_rows', 'display_name', 555, 'en', 'Created At', '2024-07-03 04:18:42', '2024-07-03 04:18:42'),
(234, 'data_rows', 'display_name', 556, 'en', 'Updated At', '2024-07-03 04:18:42', '2024-07-03 04:18:42'),
(235, 'data_types', 'display_name_singular', 103, 'en', 'Data Blank Spot', '2024-07-03 04:18:42', '2024-07-03 04:18:42'),
(236, 'data_types', 'display_name_plural', 103, 'en', 'Data Blank Spot', '2024-07-03 04:18:42', '2024-07-03 04:18:42'),
(238, 'menu_items', 'title', 106, 'en', 'Konten Berita', '2024-07-03 05:00:41', '2024-07-03 05:00:41'),
(239, 'data_rows', 'display_name', 557, 'en', 'Id', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(240, 'data_rows', 'display_name', 558, 'en', 'Judul', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(241, 'data_rows', 'display_name', 559, 'en', 'Subjudul', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(242, 'data_rows', 'display_name', 560, 'en', 'Headline', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(243, 'data_rows', 'display_name', 561, 'en', 'Foto', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(244, 'data_rows', 'display_name', 562, 'en', 'Text Foto', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(245, 'data_rows', 'display_name', 563, 'en', 'Isi Berita', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(246, 'data_rows', 'display_name', 564, 'en', 'Kredit', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(247, 'data_rows', 'display_name', 565, 'en', 'Penulis', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(248, 'data_rows', 'display_name', 566, 'en', 'Editor', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(249, 'data_rows', 'display_name', 567, 'en', 'Sumber', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(250, 'data_rows', 'display_name', 568, 'en', 'Youtube', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(251, 'data_rows', 'display_name', 569, 'en', 'Created At', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(252, 'data_rows', 'display_name', 570, 'en', 'Updated At', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(253, 'data_rows', 'display_name', 571, 'en', 'Dibaca', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(254, 'data_rows', 'display_name', 572, 'en', 'Kategori Id', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(255, 'data_rows', 'display_name', 573, 'en', 'kategori_beritas', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(256, 'data_types', 'display_name_singular', 104, 'en', 'Berita', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(257, 'data_types', 'display_name_plural', 104, 'en', 'Berita', '2024-07-03 05:07:24', '2024-07-03 05:07:24'),
(260, 'data_rows', 'display_name', 594, 'en', 'Id', '2024-07-04 07:10:42', '2024-07-04 07:10:42'),
(261, 'data_rows', 'display_name', 595, 'en', 'Judul Weblink', '2024-07-04 07:10:42', '2024-07-04 07:10:42'),
(262, 'data_rows', 'display_name', 596, 'en', 'Link', '2024-07-04 07:10:42', '2024-07-04 07:10:42'),
(263, 'data_rows', 'display_name', 597, 'en', 'Logo Web', '2024-07-04 07:10:42', '2024-07-04 07:10:42'),
(264, 'data_rows', 'display_name', 598, 'en', 'Created At', '2024-07-04 07:10:42', '2024-07-04 07:10:42'),
(265, 'data_rows', 'display_name', 599, 'en', 'Updated At', '2024-07-04 07:10:42', '2024-07-04 07:10:42'),
(266, 'data_types', 'display_name_singular', 112, 'en', 'Web link', '2024-07-04 07:10:42', '2024-07-04 07:10:42'),
(267, 'data_types', 'display_name_plural', 112, 'en', 'Web Link', '2024-07-04 07:10:42', '2024-07-04 07:10:42'),
(268, 'data_rows', 'display_name', 600, 'en', 'Id', '2024-07-04 08:31:18', '2024-07-04 08:31:18'),
(269, 'data_rows', 'display_name', 601, 'en', 'Judul', '2024-07-04 08:31:18', '2024-07-04 08:31:18'),
(270, 'data_rows', 'display_name', 602, 'en', 'Foto', '2024-07-04 08:31:18', '2024-07-04 08:31:18'),
(271, 'data_rows', 'display_name', 603, 'en', 'Isi', '2024-07-04 08:31:18', '2024-07-04 08:31:18'),
(272, 'data_rows', 'display_name', 604, 'en', 'Text Foto', '2024-07-04 08:31:18', '2024-07-04 08:31:18'),
(273, 'data_rows', 'display_name', 605, 'en', 'Created At', '2024-07-04 08:31:18', '2024-07-04 08:31:18'),
(274, 'data_rows', 'display_name', 606, 'en', 'Updated At', '2024-07-04 08:31:18', '2024-07-04 08:31:18'),
(275, 'data_types', 'display_name_singular', 113, 'en', 'Sakip', '2024-07-04 08:31:18', '2024-07-04 08:31:18'),
(276, 'data_types', 'display_name_plural', 113, 'en', 'Sakip', '2024-07-04 08:31:18', '2024-07-04 08:31:18'),
(277, 'data_rows', 'display_name', 585, 'en', 'Id', '2024-07-04 08:57:50', '2024-07-04 08:57:50'),
(278, 'data_rows', 'display_name', 586, 'en', 'Agenda', '2024-07-04 08:57:50', '2024-07-04 08:57:50'),
(279, 'data_rows', 'display_name', 587, 'en', 'Tanggal', '2024-07-04 08:57:50', '2024-07-04 08:57:50'),
(280, 'data_rows', 'display_name', 588, 'en', 'Waktu', '2024-07-04 08:57:50', '2024-07-04 08:57:50'),
(281, 'data_rows', 'display_name', 589, 'en', 'Tempat', '2024-07-04 08:57:50', '2024-07-04 08:57:50'),
(282, 'data_rows', 'display_name', 590, 'en', 'Perihal', '2024-07-04 08:57:50', '2024-07-04 08:57:50'),
(283, 'data_rows', 'display_name', 591, 'en', 'Jadwal', '2024-07-04 08:57:50', '2024-07-04 08:57:50'),
(284, 'data_rows', 'display_name', 592, 'en', 'Created At', '2024-07-04 08:57:50', '2024-07-04 08:57:50'),
(285, 'data_rows', 'display_name', 593, 'en', 'Updated At', '2024-07-04 08:57:50', '2024-07-04 08:57:50'),
(288, 'data_rows', 'display_name', 618, 'en', 'Id', '2024-07-04 09:46:28', '2024-07-04 09:46:28'),
(289, 'data_rows', 'display_name', 619, 'en', 'Agenda', '2024-07-04 09:46:28', '2024-07-04 09:46:28'),
(290, 'data_rows', 'display_name', 620, 'en', 'Tanggal', '2024-07-04 09:46:28', '2024-07-04 09:46:28'),
(291, 'data_rows', 'display_name', 621, 'en', 'Waktu', '2024-07-04 09:46:28', '2024-07-04 09:46:28'),
(292, 'data_rows', 'display_name', 622, 'en', 'Tempat', '2024-07-04 09:46:28', '2024-07-04 09:46:28'),
(293, 'data_rows', 'display_name', 623, 'en', 'Perihal', '2024-07-04 09:46:28', '2024-07-04 09:46:28'),
(294, 'data_rows', 'display_name', 624, 'en', 'Jadwal', '2024-07-04 09:46:28', '2024-07-04 09:46:28'),
(295, 'data_rows', 'display_name', 625, 'en', 'Created At', '2024-07-04 09:46:28', '2024-07-04 09:46:28'),
(296, 'data_rows', 'display_name', 626, 'en', 'Updated At', '2024-07-04 09:46:28', '2024-07-04 09:46:28'),
(297, 'data_types', 'display_name_singular', 116, 'en', 'Agenda', '2024-07-04 09:46:28', '2024-07-04 09:46:28'),
(298, 'data_types', 'display_name_plural', 116, 'en', 'Agenda', '2024-07-04 09:46:28', '2024-07-04 09:46:28'),
(299, 'data_rows', 'display_name', 628, 'en', 'Id', '2024-07-05 05:13:04', '2024-07-05 05:13:04'),
(300, 'data_rows', 'display_name', 629, 'en', 'Judul', '2024-07-05 05:13:04', '2024-07-05 05:13:04'),
(301, 'data_rows', 'display_name', 630, 'en', 'Foto', '2024-07-05 05:13:04', '2024-07-05 05:13:04'),
(302, 'data_rows', 'display_name', 631, 'en', 'Text Foto', '2024-07-05 05:13:04', '2024-07-05 05:13:04'),
(303, 'data_rows', 'display_name', 632, 'en', 'Isi', '2024-07-05 05:13:04', '2024-07-05 05:13:04'),
(304, 'data_rows', 'display_name', 633, 'en', 'Created At', '2024-07-05 05:13:04', '2024-07-05 05:13:04'),
(305, 'data_rows', 'display_name', 634, 'en', 'Updated At', '2024-07-05 05:13:04', '2024-07-05 05:13:04'),
(306, 'data_types', 'display_name_singular', 117, 'en', 'Renstra', '2024-07-05 05:13:04', '2024-07-05 05:13:04'),
(307, 'data_types', 'display_name_plural', 117, 'en', 'Renstra', '2024-07-05 05:13:04', '2024-07-05 05:13:04'),
(308, 'data_rows', 'display_name', 635, 'en', 'Id', '2024-07-05 06:11:16', '2024-07-05 06:11:16'),
(309, 'data_rows', 'display_name', 636, 'en', 'Judul', '2024-07-05 06:11:16', '2024-07-05 06:11:16'),
(310, 'data_rows', 'display_name', 637, 'en', 'Foto', '2024-07-05 06:11:16', '2024-07-05 06:11:16'),
(311, 'data_rows', 'display_name', 638, 'en', 'Keterangan', '2024-07-05 06:11:16', '2024-07-05 06:11:16'),
(312, 'data_rows', 'display_name', 639, 'en', 'Text Foto', '2024-07-05 06:11:16', '2024-07-05 06:11:16'),
(313, 'data_rows', 'display_name', 640, 'en', 'Created At', '2024-07-05 06:11:16', '2024-07-05 06:11:16'),
(314, 'data_rows', 'display_name', 641, 'en', 'Updated At', '2024-07-05 06:11:16', '2024-07-05 06:11:16'),
(315, 'data_rows', 'display_name', 642, 'en', 'Isi', '2024-07-05 06:11:16', '2024-07-05 06:11:16'),
(318, 'data_rows', 'display_name', 643, 'en', 'Id', '2024-07-08 02:25:37', '2024-07-08 02:25:37'),
(319, 'data_rows', 'display_name', 644, 'en', 'Judul', '2024-07-08 02:25:37', '2024-07-08 02:25:37'),
(320, 'data_rows', 'display_name', 645, 'en', 'Foto', '2024-07-08 02:25:37', '2024-07-08 02:25:37'),
(321, 'data_rows', 'display_name', 646, 'en', 'Keterangan', '2024-07-08 02:25:37', '2024-07-08 02:25:37'),
(322, 'data_rows', 'display_name', 647, 'en', 'Text Foto', '2024-07-08 02:25:37', '2024-07-08 02:25:37'),
(323, 'data_rows', 'display_name', 648, 'en', 'Created At', '2024-07-08 02:25:37', '2024-07-08 02:25:37'),
(324, 'data_rows', 'display_name', 649, 'en', 'Updated At', '2024-07-08 02:25:37', '2024-07-08 02:25:37'),
(325, 'data_rows', 'display_name', 650, 'en', 'Isi', '2024-07-08 02:25:37', '2024-07-08 02:25:37'),
(326, 'data_types', 'display_name_singular', 119, 'en', 'Sekretariat', '2024-07-08 02:25:37', '2024-07-08 02:25:37'),
(327, 'data_types', 'display_name_plural', 119, 'en', 'Sekretariat', '2024-07-08 02:25:37', '2024-07-08 02:25:37'),
(328, 'data_rows', 'display_name', 659, 'en', 'Id', '2024-07-08 03:05:47', '2024-07-08 03:05:47'),
(329, 'data_rows', 'display_name', 660, 'en', 'Judul', '2024-07-08 03:05:47', '2024-07-08 03:05:47'),
(330, 'data_rows', 'display_name', 661, 'en', 'Foto', '2024-07-08 03:05:47', '2024-07-08 03:05:47'),
(331, 'data_rows', 'display_name', 662, 'en', 'Text Foto', '2024-07-08 03:05:47', '2024-07-08 03:05:47'),
(332, 'data_rows', 'display_name', 663, 'en', 'Isi', '2024-07-08 03:05:47', '2024-07-08 03:05:47'),
(333, 'data_rows', 'display_name', 664, 'en', 'Keterangan', '2024-07-08 03:05:47', '2024-07-08 03:05:47'),
(334, 'data_rows', 'display_name', 665, 'en', 'Created At', '2024-07-08 03:05:47', '2024-07-08 03:05:47'),
(335, 'data_rows', 'display_name', 666, 'en', 'Updated At', '2024-07-08 03:05:47', '2024-07-08 03:05:47'),
(338, 'data_rows', 'display_name', 667, 'en', 'Id', '2024-07-08 03:08:24', '2024-07-08 03:08:24'),
(339, 'data_rows', 'display_name', 668, 'en', 'Judul', '2024-07-08 03:08:24', '2024-07-08 03:08:24'),
(340, 'data_rows', 'display_name', 669, 'en', 'Foto', '2024-07-08 03:08:24', '2024-07-08 03:08:24'),
(341, 'data_rows', 'display_name', 670, 'en', 'Text Foto', '2024-07-08 03:08:24', '2024-07-08 03:08:24'),
(342, 'data_rows', 'display_name', 671, 'en', 'Isi', '2024-07-08 03:08:24', '2024-07-08 03:08:24'),
(343, 'data_rows', 'display_name', 672, 'en', 'Keterangan', '2024-07-08 03:08:24', '2024-07-08 03:08:24'),
(344, 'data_rows', 'display_name', 673, 'en', 'Created At', '2024-07-08 03:08:24', '2024-07-08 03:08:24'),
(345, 'data_rows', 'display_name', 674, 'en', 'Updated At', '2024-07-08 03:08:24', '2024-07-08 03:08:24'),
(346, 'data_types', 'display_name_singular', 123, 'en', 'Bidang Infokom', '2024-07-08 03:08:24', '2024-07-08 03:08:24'),
(347, 'data_types', 'display_name_plural', 123, 'en', 'Bidang Infokom', '2024-07-08 03:08:24', '2024-07-08 03:08:24'),
(348, 'data_rows', 'display_name', 675, 'en', 'Id', '2024-07-09 02:31:49', '2024-07-09 02:31:49'),
(349, 'data_rows', 'display_name', 676, 'en', 'Judul', '2024-07-09 02:31:49', '2024-07-09 02:31:49'),
(350, 'data_rows', 'display_name', 677, 'en', 'Kata Sambutan', '2024-07-09 02:31:49', '2024-07-09 02:31:49'),
(351, 'data_rows', 'display_name', 678, 'en', 'Penulis', '2024-07-09 02:31:49', '2024-07-09 02:31:49'),
(352, 'data_rows', 'display_name', 679, 'en', 'Foto', '2024-07-09 02:31:49', '2024-07-09 02:31:49'),
(353, 'data_rows', 'display_name', 680, 'en', 'Created At', '2024-07-09 02:31:49', '2024-07-09 02:31:49'),
(354, 'data_rows', 'display_name', 681, 'en', 'Updated At', '2024-07-09 02:31:49', '2024-07-09 02:31:49'),
(355, 'data_types', 'display_name_singular', 124, 'en', 'Kata Sambutan', '2024-07-09 02:31:49', '2024-07-09 02:31:49'),
(356, 'data_types', 'display_name_plural', 124, 'en', 'Kata Sambutan', '2024-07-09 02:31:49', '2024-07-09 02:31:49'),
(357, 'data_rows', 'display_name', 682, 'en', 'Id', '2024-07-09 08:52:29', '2024-07-09 08:52:29'),
(358, 'data_rows', 'display_name', 683, 'en', 'Alamat / Jalan', '2024-07-09 08:52:29', '2024-07-09 08:52:29'),
(359, 'data_rows', 'display_name', 684, 'en', 'Nomor Telepon / Fax', '2024-07-09 08:52:29', '2024-07-09 08:52:29'),
(360, 'data_rows', 'display_name', 685, 'en', 'Email', '2024-07-09 08:52:29', '2024-07-09 08:52:29'),
(361, 'data_rows', 'display_name', 686, 'en', 'Google Maps Url', '2024-07-09 08:52:29', '2024-07-09 08:52:29'),
(362, 'data_rows', 'display_name', 687, 'en', 'Created At', '2024-07-09 08:52:29', '2024-07-09 08:52:29'),
(363, 'data_rows', 'display_name', 688, 'en', 'Updated At', '2024-07-09 08:52:29', '2024-07-09 08:52:29'),
(366, 'data_rows', 'display_name', 689, 'en', 'Id', '2024-07-10 02:57:48', '2024-07-10 02:57:48'),
(367, 'data_rows', 'display_name', 690, 'en', 'Alamat / Jalan', '2024-07-10 02:57:48', '2024-07-10 02:57:48'),
(368, 'data_rows', 'display_name', 691, 'en', 'Nomor Telepon/Fax', '2024-07-10 02:57:48', '2024-07-10 02:57:48'),
(369, 'data_rows', 'display_name', 692, 'en', 'Email', '2024-07-10 02:57:48', '2024-07-10 02:57:48'),
(370, 'data_rows', 'display_name', 693, 'en', 'Google Maps Url', '2024-07-10 02:57:48', '2024-07-10 02:57:48'),
(371, 'data_rows', 'display_name', 694, 'en', 'Created At', '2024-07-10 02:57:48', '2024-07-10 02:57:48'),
(372, 'data_rows', 'display_name', 695, 'en', 'Updated At', '2024-07-10 02:57:48', '2024-07-10 02:57:48'),
(375, 'data_rows', 'display_name', 453, 'en', 'Id', '2024-07-15 05:17:58', '2024-07-15 05:17:58'),
(376, 'data_rows', 'display_name', 454, 'en', 'Judul Kegiatan', '2024-07-15 05:17:58', '2024-07-15 05:17:58'),
(377, 'data_rows', 'display_name', 455, 'en', 'Foto', '2024-07-15 05:17:58', '2024-07-15 05:17:58'),
(378, 'data_rows', 'display_name', 456, 'en', 'Keterangan', '2024-07-15 05:17:58', '2024-07-15 05:17:58'),
(379, 'data_rows', 'display_name', 457, 'en', 'Created At', '2024-07-15 05:17:58', '2024-07-15 05:17:58'),
(380, 'data_rows', 'display_name', 458, 'en', 'Updated At', '2024-07-15 05:17:58', '2024-07-15 05:17:58'),
(381, 'data_types', 'display_name_singular', 83, 'en', 'Galeri Foto', '2024-07-15 05:17:58', '2024-07-15 05:17:58'),
(382, 'data_types', 'display_name_plural', 83, 'en', 'Galeri Foto', '2024-07-15 05:17:58', '2024-07-15 05:17:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas_dan_wewenangs`
--

CREATE TABLE `tugas_dan_wewenangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `Judul` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `isi` longtext DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tugas_dan_wewenangs`
--

INSERT INTO `tugas_dan_wewenangs` (`id`, `Judul`, `foto`, `isi`, `Keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Tugas Pokok & Wewenang', NULL, '<p><strong>Tugas dan Fungsi pada Dinas Komunikasi dan Informatika</strong></p>\r\n<p>Untuk melaksanakan tugas, fungsi dan bentuk struktur organisasi Dinas Komunikasi dan Informatika telah diatur dengan peraturan yang ada yaitu Peraturan Daerah Kabupaten Tanjung Jabung Timur Nomor 6 Tahun 2016 tentang Pembentukkan dan Susunan Perangkat Daerah dan Peraturan Bupati Tanjung Jabung Timur Nomor 31 Tahun 2016 tentang Kedudukan, Susunan Organisasi, tugas dan Fungsi serta Tata Kerja Perangkat Daerah.</p>\r\n<p><strong>Tugas</strong></p>\r\n<p>Secara umum Institusi Dinas Komunikasi dan Informatika mempunyai tugas melaksanakan urusan pemerintahan di bidang Komunikasi dan Informatika. Dalam melaksanakan tugas tersebut, Dinas Komunikasi dan Informatika Kab. Tanjung Jabung Timur memiliki tugas teknis sebagai berikut :</p>\r\n<ol>\r\n<li>Penyiapan rumusan kebijakan teknis di bidang Komunikasi dan Informatika</li>\r\n<li>Pelaksanaan pengelolaan informasi Kabupaten Tanjung Jabung Timur</li>\r\n<li>Pelaksanaan layanan infrastruktur e-Government</li>\r\n<li>Pelaksanaan kerjasama di bidang Komunikasi dan Informatika</li>\r\n<li>Pelaksanaan evaluasi dan pelaporan bidang Komunikasi dan Informatika</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>Secara spesifik tugas Dinas Komunikasi Dan Informatika dapat dilihat berdasarkan urusan yang terbagi menjadi bidang tugas, sebagai berikut :</p>\r\n<p><strong>Bidang Pengelolaan Informasi dan Komunikasi Publik</strong></p>\r\n<p>Bidang&nbsp;<strong>Pengelolaan Informasi dan Komunikasi Publik</strong>&nbsp;mempunyai tugas melaksanakan penyiapan Koordinasi, fasilitasi perumusan dan pelaksanaan kebijakan, evaluasi serta pelaporan pelaksanaan pengelolaan opini dan aspirasi publik dilingkup pemerintah daerah, pengelolaan informasi untuk mendukung kebijakan nasional dan pemerintah daerah pelayanan informasi publik di kabupaten, layanan infrastruktur dasar data center, layanan hubungan media, penguatan kapasitas sumber daya komunikasi publik dan penyediaan akses informasi, layanan nama domain dan sub domain bagi lembaga, pelayanan publik dan kegiatan Kabupaten, pengembangan sumber daya TIK Pemerintah Kabupaten dan masyarakat, layanan pengembangan intranet dan penggunaan akses internet serta layanan pengembangan dan pengelolaan aplikasi generik, spesifik dan suplemen yang terintegrasi.</p>\r\n<p><strong>Bidang Layanan E-Goverment</strong></p>\r\n<p>Bidang&nbsp;<strong>Layanan E-Goverment</strong>&nbsp;mempunyai tugas melaksanakan penyiapan koordinasi, fasilitasi perumusan dan pelaksanaan kebijakan, evaluasi serta pelaporan pelaksanaan Layanan Manajemen Data Informasi e-government, Integrasi Layanan Publik dan Kepemerintahan, layanan Keamanan Informasi e-Government, Layanan Sistem Komunikasi Intra Pemerintah Kabupaten, Pengembangan Sumber Daya TIK pemerintah Kabupaten dan masyarakat serta Penyelenggaraan Government Chief Information Officer (GCIO) Pemerintah Kabupaten, Penyelenggaraan Ekosistem TIK Smart City di Kabupaten.</p>\r\n<p><strong>Fungsi</strong></p>\r\n<p>Secara umum Dinas Komunikasi dan Informatika merupakan unsur pelaksana urusan pemerintahan daerah dibidang Komunikasi dan Informatika yang memiliki fungsi meliputi :</p>\r\n<ol>\r\n<li>Perumusan kebijakan teknis dibidang komunikasi dan informatika.</li>\r\n<li>Penyelenggara pengelolaan opini dan aspirasi publik di lingkup Pemerintah Daerah, pengelolaan informasi untuk mendukung kebijakan nasional dan pemerintah daerah pelayanan informasi publik di Kabupaten.</li>\r\n<li>Penyelenggaraan layanan infrastruktur dasar data center, disaster recovery center dan TIK pemerintah kabupaten, layanan pengembangan intranet dan penggunaan akses internet, layanan pengembangan dan pengelolaan aplikasi generik, spesifik dan suplemen yang terintegrasi, layanan manajemen data informasi e-government, integrasi layanan publik dan kepemerintahan, layanan keamanan informasi e-government, layanan sistem komunikasi intra pemerintah kabupaten.</li>\r\n<li>Penyelenggaraan layanan hubungan media, penguatan kapasitas sumber daya komunikasi publik dan penyediaan akses informasi, layanan nama domain dan sub domain bagi lembaga, pelayanan publik dan kegiatan Kabupaten pengembangan sumber daya TIK pemerintah Kabupaten dan masyarakat penyelenggaraan Government Chief Information Officer (GCIO) Pemerintah Kabupaten, Penyelenggaraan Ekosistem TIK Smart City di Kabupaten.</li>\r\n<li>Pelaksanaan evaluasi dan pelaporan penyelenggaraan urusan pemerintahan daerah di bidang komunikasi dan informatika.</li>\r\n<li>Pelaksanaan administrasi Dinas Komunikasi dan informatika.</li>\r\n<li>Pelaksanaan fungsi lain yang terkait bidang Komunikasi dan informatika yang diberikan oleh Bupati.</li>\r\n</ol>', NULL, '2024-03-19 19:21:00', '2024-06-24 07:18:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `undang_undangs`
--

CREATE TABLE `undang_undangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `didownload` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `undang_undangs`
--

INSERT INTO `undang_undangs` (`id`, `judul`, `keterangan`, `tahun`, `file`, `didownload`, `created_at`, `updated_at`) VALUES
(1, 'UNDANG-UNDANG REPUBLIK INDONESIA NOMOR 11 TAHUN 2008', 'tentang INFORMASI DAN TRANSAKSI ELEKTRONIK', '2008', '[{\"download_link\":\"undang-undang\\\\March2024\\\\0PjgXIARWBMuFc7vfVSl.pdf\",\"original_name\":\"UU Nomor 11 Tahun 2008.pdf\"}]', '1', '2018-10-21 17:00:00', '2024-05-29 08:29:13'),
(2, 'UNDANG-UNDANG REPUBLIK INDONESIA NOMOR 14 TAHUN 2008', 'tentang Keterbukaan Informasi Publik', '2008', '[{\"download_link\":\"undang-undang\\\\April2024\\\\XFw2jyfWbySrbfc6XHKx.pdf\",\"original_name\":\"UU Nomor 14 Tahun 2008.pdf\"}]', NULL, '2024-04-22 07:50:31', '2024-04-22 07:50:31'),
(3, 'UNDANG-UNDANG REPUBLIK INDONESIA NOMOR 25 TAHUN 2009', 'TENTANG PELAYANAN PUBLIK', '2009', '[{\"download_link\":\"undang-undang\\\\May2024\\\\R21sCGdmo4zVWiD53Mle.pdf\",\"original_name\":\"25uuno25thn2009ttgpelayananpublik.pdf\"}]', '2', '2024-05-28 07:27:16', '2024-05-29 08:29:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\July2024\\cgL7tx49jQfzqkv4lpG7.jpg', NULL, '$2y$10$x7/kiwUwVbpBF82Vw5dGaepf9nrgAWD75dXoB9wfdrNeQb92npXpW', '2yHhw1IoMbWaArP60LdxmdJfQ1WqEv4ZRnLnnIwBPts9O8RSI3msBYZDsn2I', '{\"locale\":\"id\"}', '2023-12-20 00:24:47', '2024-07-09 05:16:59'),
(2, 1, 'admin', 'mail@mail.com', 'users/January2024/CmzAB1G5wyELHBhpdVr6.png', NULL, '$2y$10$x7/kiwUwVbpBF82Vw5dGaepf9nrgAWD75dXoB9wfdrNeQb92npXpW', NULL, '{\"locale\":\"en\"}', '2023-12-20 00:26:29', '2024-01-12 03:34:03'),
(5, 4, 'Administrator Diskominfo', 'diskominfo@tanjabtimkab.go.id', 'users/January2024/5A1M7G4zCnc8PvgAE6Vp.png', NULL, '$2y$10$XyKLikSjM3yUrHlkImwQMOP89HLXZZFHDnswY1RcxhUSCNMfG/G.6', NULL, '{\"locale\":\"en\"}', '2024-01-15 05:00:02', '2024-07-15 02:18:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `visimisis`
--

CREATE TABLE `visimisis` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul_visimisi` varchar(255) DEFAULT NULL,
  `visimisi` text DEFAULT NULL,
  `fotovisimisi` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `visimisis`
--

INSERT INTO `visimisis` (`id`, `judul_visimisi`, `visimisi`, `fotovisimisi`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Visi & Misi Diskominfo Kab. Tanjabtim', '<p>VISI</p>\n<p>&rdquo;Terwujudnya Pelayanan Komunikasi dan Informatika yang Berbasis Teknologi dan Berkualitas Menuju Merakyat&rdquo;.</p>\n<p>MISI</p>\n<ul>\n<li>Meningkatkan Kualitas Sumber Daya Manusia dibidang teknologi komunikasi dan informasi</li>\n<li>Meningkatkan Kapasitas dan Kualitas infrastruktur Jaringan untuk Layanan teknologi komunikasi dan</li>\n<li>Meningkatkan Kualitas Sistem Aplikasi yang terintegrasi di Perangkat Daerah</li>\n<li>Meningkatkan kualitas pelayanan publik yang professional berbasis teknologi informasi dan komunikasi</li>\n<li>Meningkatkan Kerjasama dan Kemitraan dibidang teknologi Informasi berbasis potensi</li>\n</ul>', NULL, NULL, '2024-03-17 21:50:00', '2024-06-24 03:51:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `weblinks`
--

CREATE TABLE `weblinks` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `logo_web` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `weblinks`
--

INSERT INTO `weblinks` (`id`, `judul`, `link`, `logo_web`, `created_at`, `updated_at`) VALUES
(1, 'DEWAN PERWAKILAN RAKYAT REPUBLIK INDONESIA', 'https://www.dpr.go.id/', 'weblinks\\July2024\\JdFnWwIgafXEEmTrdTvW.png', '2024-07-04 07:11:49', '2024-07-04 07:11:49'),
(2, 'Official Website Pemerintah Prov. Jambi', 'https://jambiprov.go.id/', 'weblinks\\July2024\\BiW8Mv59k6xqglgaZF3p.png', '2024-07-04 07:22:00', '2024-07-04 07:26:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `aplikasi_terkaits`
--
ALTER TABLE `aplikasi_terkaits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banner_standings`
--
ALTER TABLE `banner_standings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bidangsekres`
--
ALTER TABLE `bidangsekres`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bidang_egovs`
--
ALTER TABLE `bidang_egovs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bidang_infokoms`
--
ALTER TABLE `bidang_infokoms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bukutamus`
--
ALTER TABLE `bukutamus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indeks untuk tabel `data_blank_spots`
--
ALTER TABLE `data_blank_spots`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_radio_swastas`
--
ALTER TABLE `data_radio_swastas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indeks untuk tabel `data_tv_kabels`
--
ALTER TABLE `data_tv_kabels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indeks untuk tabel `data_warnets`
--
ALTER TABLE `data_warnets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_aplikasis`
--
ALTER TABLE `detail_aplikasis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `email_opds`
--
ALTER TABLE `email_opds`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `file_download`
--
ALTER TABLE `file_download`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri_fotos`
--
ALTER TABLE `galeri_fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri_videos`
--
ALTER TABLE `galeri_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `intruksi_presidens`
--
ALTER TABLE `intruksi_presidens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kata_sambutans`
--
ALTER TABLE `kata_sambutans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keputusanbupatis`
--
ALTER TABLE `keputusanbupatis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kritiks`
--
ALTER TABLE `kritiks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `linkfiles`
--
ALTER TABLE `linkfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi_bts`
--
ALTER TABLE `lokasi_bts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `maklumats`
--
ALTER TABLE `maklumats`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indeks untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `motos`
--
ALTER TABLE `motos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pauddikmas`
--
ALTER TABLE `pauddikmas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengumumans`
--
ALTER TABLE `pengumumans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peraturanbupatis`
--
ALTER TABLE `peraturanbupatis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peraturankementeriandalamnegeris`
--
ALTER TABLE `peraturankementeriandalamnegeris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peraturankementeriankominfos`
--
ALTER TABLE `peraturankementeriankominfos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peraturan_daerahs`
--
ALTER TABLE `peraturan_daerahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peraturan_pemerintahs`
--
ALTER TABLE `peraturan_pemerintahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `profils`
--
ALTER TABLE `profils`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `renstras`
--
ALTER TABLE `renstras`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indeks untuk tabel `sakips`
--
ALTER TABLE `sakips`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sejarahs`
--
ALTER TABLE `sejarahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `strukturs`
--
ALTER TABLE `strukturs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_edarans`
--
ALTER TABLE `surat_edarans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_tests`
--
ALTER TABLE `tabel_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indeks untuk tabel `tugas_dan_wewenangs`
--
ALTER TABLE `tugas_dan_wewenangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `undang_undangs`
--
ALTER TABLE `undang_undangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indeks untuk tabel `visimisis`
--
ALTER TABLE `visimisis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `weblinks`
--
ALTER TABLE `weblinks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `aplikasi_terkaits`
--
ALTER TABLE `aplikasi_terkaits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `banner_standings`
--
ALTER TABLE `banner_standings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `bidangsekres`
--
ALTER TABLE `bidangsekres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `bidang_egovs`
--
ALTER TABLE `bidang_egovs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `bidang_infokoms`
--
ALTER TABLE `bidang_infokoms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bukutamus`
--
ALTER TABLE `bukutamus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `data_blank_spots`
--
ALTER TABLE `data_blank_spots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `data_radio_swastas`
--
ALTER TABLE `data_radio_swastas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=716;

--
-- AUTO_INCREMENT untuk tabel `data_tv_kabels`
--
ALTER TABLE `data_tv_kabels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT untuk tabel `data_warnets`
--
ALTER TABLE `data_warnets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `detail_aplikasis`
--
ALTER TABLE `detail_aplikasis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `email_opds`
--
ALTER TABLE `email_opds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `file_download`
--
ALTER TABLE `file_download`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galeri_fotos`
--
ALTER TABLE `galeri_fotos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `galeri_videos`
--
ALTER TABLE `galeri_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `intruksi_presidens`
--
ALTER TABLE `intruksi_presidens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `kata_sambutans`
--
ALTER TABLE `kata_sambutans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `keputusanbupatis`
--
ALTER TABLE `keputusanbupatis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kritiks`
--
ALTER TABLE `kritiks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `linkfiles`
--
ALTER TABLE `linkfiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `lokasi_bts`
--
ALTER TABLE `lokasi_bts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `maklumats`
--
ALTER TABLE `maklumats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `motos`
--
ALTER TABLE `motos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pauddikmas`
--
ALTER TABLE `pauddikmas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengumumans`
--
ALTER TABLE `pengumumans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `peraturanbupatis`
--
ALTER TABLE `peraturanbupatis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `peraturankementeriandalamnegeris`
--
ALTER TABLE `peraturankementeriandalamnegeris`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `peraturankementeriankominfos`
--
ALTER TABLE `peraturankementeriankominfos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `peraturan_daerahs`
--
ALTER TABLE `peraturan_daerahs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `peraturan_pemerintahs`
--
ALTER TABLE `peraturan_pemerintahs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `profils`
--
ALTER TABLE `profils`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `renstras`
--
ALTER TABLE `renstras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sakips`
--
ALTER TABLE `sakips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sejarahs`
--
ALTER TABLE `sejarahs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `strukturs`
--
ALTER TABLE `strukturs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_edarans`
--
ALTER TABLE `surat_edarans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tabel_tests`
--
ALTER TABLE `tabel_tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=383;

--
-- AUTO_INCREMENT untuk tabel `tugas_dan_wewenangs`
--
ALTER TABLE `tugas_dan_wewenangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `undang_undangs`
--
ALTER TABLE `undang_undangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `visimisis`
--
ALTER TABLE `visimisis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `weblinks`
--
ALTER TABLE `weblinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
