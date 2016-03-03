-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03 Mar 2016 pada 04.52
-- Versi Server: 5.6.24
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(10) unsigned NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `onDelete` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `comment`
--

INSERT INTO `comment` (`id`, `comment`, `post_id`, `onDelete`, `created_at`, `updated_at`, `name`) VALUES
(7, 'Good', 20, 0, '2016-03-02 20:26:43', '2016-03-02 20:26:43', 'Berry Firmann');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Users', '{"users":1}', '2016-03-02 09:25:42', '2016-03-02 09:25:42'),
(2, 'Admins', '{"admin":1,"users":1}', '2016-03-02 09:25:42', '2016-03-02 09:25:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2012_12_06_225921_cartalyst_sentry_install_users', 1),
('2012_12_06_225929_cartalyst_sentry_install_groups', 1),
('2012_12_06_225945_cartalyst_sentry_install_users_groups_pivot', 1),
('2012_12_06_225988_cartalyst_sentry_install_throttle', 1),
('2015_01_14_053439_sentinel_add_username', 1),
('2016_03_02_160546_Create_table_Post', 1),
('2016_03_02_160623_Create_table_comment', 1),
('2016_03_02_213905_add_name_comment', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `onDelete` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `user_id`, `onDelete`, `created_at`, `updated_at`) VALUES
(7, 'lorem dolorX', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 0, '2016-03-02 12:46:43', '2016-03-02 12:46:43'),
(8, 'Gempa di Mentawai, Sejumlah Warga Bengkulu Siaga Malam Ini', 'BENGKULU, KOMPAS.com — Sebagian warga di Bengkulu bersiaga sepanjang malam ini setelah terjadi gempa berkekuatan 7,8 skala Richter di Kepulauan Mentawai, Rabu (2/3/2016) malam.\r\n\r\nElly Suparti (51), warga Timur Indah, Kota Bengkulu, mengaku tidak akan tidur lelap sepanjang malam ini.\r\n\r\n"Saya pesan kepada anak-anak untuk tidak tidur terlalu lelap dan berjaga secara bergantian," kata Elly.\r\n\r\nMeskipun Badan Meteorologi, Klimatologi, dan Geofisika telah mencabut peringatan tsunami, Elly masih trauma dengan gempa besar yang melanda Bengkulu pada tahun 2000.\r\n\r\nPada 4 Juni 2000, Bengkulu dilanda gempa berkekuatan 7,3 skala Richter yang mengakibatkan kerusakan puluhan ribu bangunan serta menewaskan puluhan orang.\r\n\r\nKesiagaan juga ditunjukkan oleh Tasril dan warga lainnya. Tasril mengatakan, dia telah menyiagakan mobil dan memisahkan barang-barang berharga agar sewaktu-waktu dapat dibawa.\r\n\r\n"Mobil telah saya siapkan jika terjadi hal yang tidak diinginkan. Begitu juga surat berharga, seperti ijazah sekolah anak-anak," ujarnya.\r\n\r\nGempa di Kepulauan Mentawai sempat dirasakan oleh warga di beberapa daerah di Bengkulu. BMKG setempat mengimbau masyarakat untuk tetap waspada dan siaga terhadap bencana susulan.', 1, 0, '2016-03-02 14:18:40', '2016-03-02 14:18:40'),
(10, 'BlackBerry: BBM Tak Tertandingi di Indonesia', 'KOMPAS.com - Senior Vice President BlackBerry Matthew Talbot dalam sebuah wawancara dengan The Wall Street Journal dengan yakin mengatakan bahwa tidak ada yang bisa menandingi ekositem yang dibangun BlackBerry di Indonesia.\r\n\r\n"Saya yakin tidak ada yang bisa menyaingi kami di Indonesia dengan ekosistem yang tengah kami kembangkan, apalagi jika dibandingkan dengan jumlah pengguna kami (di Indonesia)," kata Talbot seperti dikutip KompasTekno, Selasa (1/3/2016).\r\n\r\nKarena itu, Talbot mengatakan BlackBerry tetap yakin bisa mempertahankan dominasinya di Indonesia, satu-satunya negara dimana aplikasinya masih banyak dipakai dibandingkan dengan di negara lain.\r\n\r\nTalbot mengumpamakan ekosistem yang dibangun WeChat di China, Line di Jepang, dan KaKaoTalk di Korea yang masing-masing memiliki basis pengguna yang besar.\r\n\r\n"Tidak ada satu pun dari pemain-pemain itu yang skalanya bisa menyaingi BBM di Indonesia," ujar Talbot.\r\n\r\nBlackBerry memang tengah menyiapkan ekosistem yang mengombinasikan e-commerce, iklan, dan layanan chat di Indonesia lewat BlackBerry Messenger (BBM), mirip seperti yang dilakukan Tencent Holdings dengan WeChat di China.\r\n\r\nMeski demikian, para analis ragu dominasi BBM akan bertahan lama, karena besarnya desakan dari platform lain yang lebih menarik.\r\n\r\nBeberapa analis juga menyarankan agar BlackBerry fokus ke satu jenis platform saja agar bisa unggul di Indonesia, apakah aplikasi layanan pesan murni seperti WhatsApp atau platform multi-fungsi seperti WeChat.', 1, 0, '2016-03-02 14:20:59', '2016-03-02 14:20:59'),
(11, 'dump1 ', 'KOMPAS.com - Senior Vice President BlackBerry Matthew Talbot dalam sebuah wawancara dengan The Wall Street Journal dengan yakin mengatakan bahwa tidak ada yang bisa menandingi ekositem yang dibangun BlackBerry di Indonesia.\r\n\r\n"Saya yakin tidak ada yang bisa menyaingi kami di Indonesia dengan ekosistem yang tengah kami kembangkan, apalagi jika dibandingkan dengan jumlah pengguna kami (di Indonesia)," kata Talbot seperti dikutip KompasTekno, Selasa (1/3/2016).\r\n\r\nKarena itu, Talbot mengatakan BlackBerry tetap yakin bisa mempertahankan dominasinya di Indonesia, satu-satunya negara dimana aplikasinya masih banyak dipakai dibandingkan dengan di negara lain.\r\n\r\nTalbot mengumpamakan ekosistem yang dibangun WeChat di China, Line di Jepang, dan KaKaoTalk di Korea yang masing-masing memiliki basis pengguna yang besar.\r\n\r\n"Tidak ada satu pun dari pemain-pemain itu yang skalanya bisa menyaingi BBM di Indonesia," ujar Talbot.\r\n\r\nBlackBerry memang tengah menyiapkan ekosistem yang mengombinasikan e-commerce, iklan, dan layanan chat di Indonesia lewat BlackBerry Messenger (BBM), mirip seperti yang dilakukan Tencent Holdings dengan WeChat di China.\r\n\r\nMeski demikian, para analis ragu dominasi BBM akan bertahan lama, karena besarnya desakan dari platform lain yang lebih menarik.\r\n\r\nBeberapa analis juga menyarankan agar BlackBerry fokus ke satu jenis platform saja agar bisa unggul di Indonesia, apakah aplikasi layanan pesan murni seperti WhatsApp atau platform multi-fungsi seperti WeChat.', 1, 0, '2016-03-02 14:21:08', '2016-03-02 14:21:08'),
(12, 'dump2', 'KOMPAS.com - Senior Vice President BlackBerry Matthew Talbot dalam sebuah wawancara dengan The Wall Street Journal dengan yakin mengatakan bahwa tidak ada yang bisa menandingi ekositem yang dibangun BlackBerry di Indonesia.\r\n\r\n"Saya yakin tidak ada yang bisa menyaingi kami di Indonesia dengan ekosistem yang tengah kami kembangkan, apalagi jika dibandingkan dengan jumlah pengguna kami (di Indonesia)," kata Talbot seperti dikutip KompasTekno, Selasa (1/3/2016).\r\n\r\nKarena itu, Talbot mengatakan BlackBerry tetap yakin bisa mempertahankan dominasinya di Indonesia, satu-satunya negara dimana aplikasinya masih banyak dipakai dibandingkan dengan di negara lain.\r\n\r\nTalbot mengumpamakan ekosistem yang dibangun WeChat di China, Line di Jepang, dan KaKaoTalk di Korea yang masing-masing memiliki basis pengguna yang besar.\r\n\r\n"Tidak ada satu pun dari pemain-pemain itu yang skalanya bisa menyaingi BBM di Indonesia," ujar Talbot.\r\n\r\nBlackBerry memang tengah menyiapkan ekosistem yang mengombinasikan e-commerce, iklan, dan layanan chat di Indonesia lewat BlackBerry Messenger (BBM), mirip seperti yang dilakukan Tencent Holdings dengan WeChat di China.\r\n\r\nMeski demikian, para analis ragu dominasi BBM akan bertahan lama, karena besarnya desakan dari platform lain yang lebih menarik.\r\n\r\nBeberapa analis juga menyarankan agar BlackBerry fokus ke satu jenis platform saja agar bisa unggul di Indonesia, apakah aplikasi layanan pesan murni seperti WhatsApp atau platform multi-fungsi seperti WeChat.', 1, 0, '2016-03-02 14:21:16', '2016-03-02 14:21:16'),
(13, 'dumy3', 'KOMPAS.com - Senior Vice President BlackBerry Matthew Talbot dalam sebuah wawancara dengan The Wall Street Journal dengan yakin mengatakan bahwa tidak ada yang bisa menandingi ekositem yang dibangun BlackBerry di Indonesia.\r\n\r\n"Saya yakin tidak ada yang bisa menyaingi kami di Indonesia dengan ekosistem yang tengah kami kembangkan, apalagi jika dibandingkan dengan jumlah pengguna kami (di Indonesia)," kata Talbot seperti dikutip KompasTekno, Selasa (1/3/2016).\r\n\r\nKarena itu, Talbot mengatakan BlackBerry tetap yakin bisa mempertahankan dominasinya di Indonesia, satu-satunya negara dimana aplikasinya masih banyak dipakai dibandingkan dengan di negara lain.\r\n\r\nTalbot mengumpamakan ekosistem yang dibangun WeChat di China, Line di Jepang, dan KaKaoTalk di Korea yang masing-masing memiliki basis pengguna yang besar.\r\n\r\n"Tidak ada satu pun dari pemain-pemain itu yang skalanya bisa menyaingi BBM di Indonesia," ujar Talbot.\r\n\r\nBlackBerry memang tengah menyiapkan ekosistem yang mengombinasikan e-commerce, iklan, dan layanan chat di Indonesia lewat BlackBerry Messenger (BBM), mirip seperti yang dilakukan Tencent Holdings dengan WeChat di China.\r\n\r\nMeski demikian, para analis ragu dominasi BBM akan bertahan lama, karena besarnya desakan dari platform lain yang lebih menarik.\r\n\r\nBeberapa analis juga menyarankan agar BlackBerry fokus ke satu jenis platform saja agar bisa unggul di Indonesia, apakah aplikasi layanan pesan murni seperti WhatsApp atau platform multi-fungsi seperti WeChat.', 1, 0, '2016-03-02 14:21:25', '2016-03-02 14:21:25'),
(14, 'dummy4', 'KOMPAS.com - Senior Vice President BlackBerry Matthew Talbot dalam sebuah wawancara dengan The Wall Street Journal dengan yakin mengatakan bahwa tidak ada yang bisa menandingi ekositem yang dibangun BlackBerry di Indonesia.\r\n\r\n"Saya yakin tidak ada yang bisa menyaingi kami di Indonesia dengan ekosistem yang tengah kami kembangkan, apalagi jika dibandingkan dengan jumlah pengguna kami (di Indonesia)," kata Talbot seperti dikutip KompasTekno, Selasa (1/3/2016).\r\n\r\nKarena itu, Talbot mengatakan BlackBerry tetap yakin bisa mempertahankan dominasinya di Indonesia, satu-satunya negara dimana aplikasinya masih banyak dipakai dibandingkan dengan di negara lain.\r\n\r\nTalbot mengumpamakan ekosistem yang dibangun WeChat di China, Line di Jepang, dan KaKaoTalk di Korea yang masing-masing memiliki basis pengguna yang besar.\r\n\r\n"Tidak ada satu pun dari pemain-pemain itu yang skalanya bisa menyaingi BBM di Indonesia," ujar Talbot.\r\n\r\nBlackBerry memang tengah menyiapkan ekosistem yang mengombinasikan e-commerce, iklan, dan layanan chat di Indonesia lewat BlackBerry Messenger (BBM), mirip seperti yang dilakukan Tencent Holdings dengan WeChat di China.\r\n\r\nMeski demikian, para analis ragu dominasi BBM akan bertahan lama, karena besarnya desakan dari platform lain yang lebih menarik.\r\n\r\nBeberapa analis juga menyarankan agar BlackBerry fokus ke satu jenis platform saja agar bisa unggul di Indonesia, apakah aplikasi layanan pesan murni seperti WhatsApp atau platform multi-fungsi seperti WeChat.', 1, 0, '2016-03-02 14:21:35', '2016-03-02 14:21:35'),
(15, 'dummy5', 'KOMPAS.com - Senior Vice President BlackBerry Matthew Talbot dalam sebuah wawancara dengan The Wall Street Journal dengan yakin mengatakan bahwa tidak ada yang bisa menandingi ekositem yang dibangun BlackBerry di Indonesia.\r\n\r\n"Saya yakin tidak ada yang bisa menyaingi kami di Indonesia dengan ekosistem yang tengah kami kembangkan, apalagi jika dibandingkan dengan jumlah pengguna kami (di Indonesia)," kata Talbot seperti dikutip KompasTekno, Selasa (1/3/2016).\r\n\r\nKarena itu, Talbot mengatakan BlackBerry tetap yakin bisa mempertahankan dominasinya di Indonesia, satu-satunya negara dimana aplikasinya masih banyak dipakai dibandingkan dengan di negara lain.\r\n\r\nTalbot mengumpamakan ekosistem yang dibangun WeChat di China, Line di Jepang, dan KaKaoTalk di Korea yang masing-masing memiliki basis pengguna yang besar.\r\n\r\n"Tidak ada satu pun dari pemain-pemain itu yang skalanya bisa menyaingi BBM di Indonesia," ujar Talbot.\r\n\r\nBlackBerry memang tengah menyiapkan ekosistem yang mengombinasikan e-commerce, iklan, dan layanan chat di Indonesia lewat BlackBerry Messenger (BBM), mirip seperti yang dilakukan Tencent Holdings dengan WeChat di China.\r\n\r\nMeski demikian, para analis ragu dominasi BBM akan bertahan lama, karena besarnya desakan dari platform lain yang lebih menarik.\r\n\r\nBeberapa analis juga menyarankan agar BlackBerry fokus ke satu jenis platform saja agar bisa unggul di Indonesia, apakah aplikasi layanan pesan murni seperti WhatsApp atau platform multi-fungsi seperti WeChat.', 1, 0, '2016-03-02 14:21:44', '2016-03-02 14:21:44'),
(16, 'dummy6', 'KOMPAS.com - Senior Vice President BlackBerry Matthew Talbot dalam sebuah wawancara dengan The Wall Street Journal dengan yakin mengatakan bahwa tidak ada yang bisa menandingi ekositem yang dibangun BlackBerry di Indonesia.\r\n\r\n"Saya yakin tidak ada yang bisa menyaingi kami di Indonesia dengan ekosistem yang tengah kami kembangkan, apalagi jika dibandingkan dengan jumlah pengguna kami (di Indonesia)," kata Talbot seperti dikutip KompasTekno, Selasa (1/3/2016).\r\n\r\nKarena itu, Talbot mengatakan BlackBerry tetap yakin bisa mempertahankan dominasinya di Indonesia, satu-satunya negara dimana aplikasinya masih banyak dipakai dibandingkan dengan di negara lain.\r\n\r\nTalbot mengumpamakan ekosistem yang dibangun WeChat di China, Line di Jepang, dan KaKaoTalk di Korea yang masing-masing memiliki basis pengguna yang besar.\r\n\r\n"Tidak ada satu pun dari pemain-pemain itu yang skalanya bisa menyaingi BBM di Indonesia," ujar Talbot.\r\n\r\nBlackBerry memang tengah menyiapkan ekosistem yang mengombinasikan e-commerce, iklan, dan layanan chat di Indonesia lewat BlackBerry Messenger (BBM), mirip seperti yang dilakukan Tencent Holdings dengan WeChat di China.\r\n\r\nMeski demikian, para analis ragu dominasi BBM akan bertahan lama, karena besarnya desakan dari platform lain yang lebih menarik.\r\n\r\nBeberapa analis juga menyarankan agar BlackBerry fokus ke satu jenis platform saja agar bisa unggul di Indonesia, apakah aplikasi layanan pesan murni seperti WhatsApp atau platform multi-fungsi seperti WeChat.', 1, 0, '2016-03-02 14:21:52', '2016-03-02 14:21:52'),
(17, 'dummy7', 'KOMPAS.com - Senior Vice President BlackBerry Matthew Talbot dalam sebuah wawancara dengan The Wall Street Journal dengan yakin mengatakan bahwa tidak ada yang bisa menandingi ekositem yang dibangun BlackBerry di Indonesia.\r\n\r\n"Saya yakin tidak ada yang bisa menyaingi kami di Indonesia dengan ekosistem yang tengah kami kembangkan, apalagi jika dibandingkan dengan jumlah pengguna kami (di Indonesia)," kata Talbot seperti dikutip KompasTekno, Selasa (1/3/2016).\r\n\r\nKarena itu, Talbot mengatakan BlackBerry tetap yakin bisa mempertahankan dominasinya di Indonesia, satu-satunya negara dimana aplikasinya masih banyak dipakai dibandingkan dengan di negara lain.\r\n\r\nTalbot mengumpamakan ekosistem yang dibangun WeChat di China, Line di Jepang, dan KaKaoTalk di Korea yang masing-masing memiliki basis pengguna yang besar.\r\n\r\n"Tidak ada satu pun dari pemain-pemain itu yang skalanya bisa menyaingi BBM di Indonesia," ujar Talbot.\r\n\r\nBlackBerry memang tengah menyiapkan ekosistem yang mengombinasikan e-commerce, iklan, dan layanan chat di Indonesia lewat BlackBerry Messenger (BBM), mirip seperti yang dilakukan Tencent Holdings dengan WeChat di China.\r\n\r\nMeski demikian, para analis ragu dominasi BBM akan bertahan lama, karena besarnya desakan dari platform lain yang lebih menarik.\r\n\r\nBeberapa analis juga menyarankan agar BlackBerry fokus ke satu jenis platform saja agar bisa unggul di Indonesia, apakah aplikasi layanan pesan murni seperti WhatsApp atau platform multi-fungsi seperti WeChat.', 1, 0, '2016-03-02 14:22:00', '2016-03-02 14:22:00'),
(18, 'dummy8', 'KOMPAS.com - Senior Vice President BlackBerry Matthew Talbot dalam sebuah wawancara dengan The Wall Street Journal dengan yakin mengatakan bahwa tidak ada yang bisa menandingi ekositem yang dibangun BlackBerry di Indonesia.\r\n\r\n"Saya yakin tidak ada yang bisa menyaingi kami di Indonesia dengan ekosistem yang tengah kami kembangkan, apalagi jika dibandingkan dengan jumlah pengguna kami (di Indonesia)," kata Talbot seperti dikutip KompasTekno, Selasa (1/3/2016).\r\n\r\nKarena itu, Talbot mengatakan BlackBerry tetap yakin bisa mempertahankan dominasinya di Indonesia, satu-satunya negara dimana aplikasinya masih banyak dipakai dibandingkan dengan di negara lain.\r\n\r\nTalbot mengumpamakan ekosistem yang dibangun WeChat di China, Line di Jepang, dan KaKaoTalk di Korea yang masing-masing memiliki basis pengguna yang besar.\r\n\r\n"Tidak ada satu pun dari pemain-pemain itu yang skalanya bisa menyaingi BBM di Indonesia," ujar Talbot.\r\n\r\nBlackBerry memang tengah menyiapkan ekosistem yang mengombinasikan e-commerce, iklan, dan layanan chat di Indonesia lewat BlackBerry Messenger (BBM), mirip seperti yang dilakukan Tencent Holdings dengan WeChat di China.\r\n\r\nMeski demikian, para analis ragu dominasi BBM akan bertahan lama, karena besarnya desakan dari platform lain yang lebih menarik.\r\n\r\nBeberapa analis juga menyarankan agar BlackBerry fokus ke satu jenis platform saja agar bisa unggul di Indonesia, apakah aplikasi layanan pesan murni seperti WhatsApp atau platform multi-fungsi seperti WeChat.', 1, 0, '2016-03-02 14:22:07', '2016-03-02 14:22:07'),
(19, 'dummy9', 'KOMPAS.com - Senior Vice President BlackBerry Matthew Talbot dalam sebuah wawancara dengan The Wall Street Journal dengan yakin mengatakan bahwa tidak ada yang bisa menandingi ekositem yang dibangun BlackBerry di Indonesia.\r\n\r\n"Saya yakin tidak ada yang bisa menyaingi kami di Indonesia dengan ekosistem yang tengah kami kembangkan, apalagi jika dibandingkan dengan jumlah pengguna kami (di Indonesia)," kata Talbot seperti dikutip KompasTekno, Selasa (1/3/2016).\r\n\r\nKarena itu, Talbot mengatakan BlackBerry tetap yakin bisa mempertahankan dominasinya di Indonesia, satu-satunya negara dimana aplikasinya masih banyak dipakai dibandingkan dengan di negara lain.\r\n\r\nTalbot mengumpamakan ekosistem yang dibangun WeChat di China, Line di Jepang, dan KaKaoTalk di Korea yang masing-masing memiliki basis pengguna yang besar.\r\n\r\n"Tidak ada satu pun dari pemain-pemain itu yang skalanya bisa menyaingi BBM di Indonesia," ujar Talbot.\r\n\r\nBlackBerry memang tengah menyiapkan ekosistem yang mengombinasikan e-commerce, iklan, dan layanan chat di Indonesia lewat BlackBerry Messenger (BBM), mirip seperti yang dilakukan Tencent Holdings dengan WeChat di China.\r\n\r\nMeski demikian, para analis ragu dominasi BBM akan bertahan lama, karena besarnya desakan dari platform lain yang lebih menarik.\r\n\r\nBeberapa analis juga menyarankan agar BlackBerry fokus ke satu jenis platform saja agar bisa unggul di Indonesia, apakah aplikasi layanan pesan murni seperti WhatsApp atau platform multi-fungsi seperti WeChat.', 1, 0, '2016-03-02 14:22:15', '2016-03-02 14:22:15'),
(20, 'dummy10', 'KOMPAS.com - Senior Vice President BlackBerry Matthew Talbot dalam sebuah wawancara dengan The Wall Street Journal dengan yakin mengatakan bahwa tidak ada yang bisa menandingi ekositem yang dibangun BlackBerry di Indonesia.\r\n\r\n"Saya yakin tidak ada yang bisa menyaingi kami di Indonesia dengan ekosistem yang tengah kami kembangkan, apalagi jika dibandingkan dengan jumlah pengguna kami (di Indonesia)," kata Talbot seperti dikutip KompasTekno, Selasa (1/3/2016).\r\n\r\nKarena itu, Talbot mengatakan BlackBerry tetap yakin bisa mempertahankan dominasinya di Indonesia, satu-satunya negara dimana aplikasinya masih banyak dipakai dibandingkan dengan di negara lain.\r\n\r\nTalbot mengumpamakan ekosistem yang dibangun WeChat di China, Line di Jepang, dan KaKaoTalk di Korea yang masing-masing memiliki basis pengguna yang besar.\r\n\r\n"Tidak ada satu pun dari pemain-pemain itu yang skalanya bisa menyaingi BBM di Indonesia," ujar Talbot.\r\n\r\nBlackBerry memang tengah menyiapkan ekosistem yang mengombinasikan e-commerce, iklan, dan layanan chat di Indonesia lewat BlackBerry Messenger (BBM), mirip seperti yang dilakukan Tencent Holdings dengan WeChat di China.\r\n\r\nMeski demikian, para analis ragu dominasi BBM akan bertahan lama, karena besarnya desakan dari platform lain yang lebih menarik.\r\n\r\nBeberapa analis juga menyarankan agar BlackBerry fokus ke satu jenis platform saja agar bisa unggul di Indonesia, apakah aplikasi layanan pesan murni seperti WhatsApp atau platform multi-fungsi seperti WeChat.', 1, 0, '2016-03-02 14:22:23', '2016-03-02 14:22:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `throttle`
--

CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `suspended_at` timestamp NULL DEFAULT NULL,
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `ip_address`, `attempts`, `suspended`, `banned`, `last_attempt_at`, `suspended_at`, `banned_at`) VALUES
(1, 1, NULL, 0, 0, 0, NULL, NULL, NULL),
(2, 2, NULL, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `activated`, `activation_code`, `activated_at`, `last_login`, `persist_code`, `reset_password_code`, `first_name`, `last_name`, `created_at`, `updated_at`, `username`) VALUES
(1, 'admin@admin.com', '$2y$10$KegD8zHRAI14GEF2svrxFes0tKWguU0cPJA/tavPt5.074PQmcCkq', NULL, 1, NULL, NULL, '2016-03-02 20:48:54', '$2y$10$4fbpManqWnBmrxgmfzGbr.6aztK9gl1cPWFd/wTczr0aIGgTkSITu', NULL, 'Berry', 'Firmann', '2016-03-02 09:25:42', '2016-03-02 20:48:54', 'admin'),
(2, 'user@user.com', '$2y$10$caep2vXOfhFVaN9gE0fKa.njQYuhGvKH543RQWcA.4C.bAALrfJH2', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-02 09:25:43', '2016-03-02 09:25:43', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`user_id`, `group_id`) VALUES
(1, 1),
(1, 2),
(2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_post_id_foreign` (`post_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_name_unique` (`name`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_title_index` (`title`),
  ADD KEY `post_user_id_foreign` (`user_id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_activation_code_index` (`activation_code`),
  ADD KEY `users_reset_password_code_index` (`reset_password_code`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
