-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2020 pada 03.03
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(31, 17, 'assets/gallery/YZj2NWyG4Hon6UnPM2yNpDKm8Cadbv5MJcQXkXsf.jpeg', '2020-08-17 09:23:02', '2020-08-17 08:38:55', '2020-08-17 09:23:02'),
(32, 20, 'assets/gallery/1fbwTx4EEXJ7Xevqy6s0BSXep7LAOrb8IdYnU32B.jpeg', '2020-08-17 09:50:11', '2020-08-04 15:49:24', '2020-08-17 09:50:11'),
(33, 18, 'assets/gallery/3Jm5c2Nmj1OGbSSPrBG99vHhaf9Jp4BMUCiA7j05.jpeg', '2020-08-17 09:51:04', '2020-08-17 09:50:55', '2020-08-17 09:51:04'),
(34, 18, 'assets/gallery/mT9kH0dPwgNzKDpe9zhagshJZiSC5UiJ429pDMEA.jpeg', '2020-08-17 09:53:20', '2020-08-17 09:51:45', '2020-08-17 09:53:20'),
(35, 17, 'assets/gallery/z78HY5UaCuYWUXzJV7cpdfX5XtLcdJZiVkU7ctVT.jpeg', NULL, '2020-08-17 17:30:14', '2020-08-17 17:30:14'),
(36, 17, 'assets/gallery/iqXLdSPmm1axdGQKJ2sBLRIxuWSpI6ElDwrHMsng.jpeg', NULL, '2020-08-17 17:30:34', '2020-08-17 17:30:34'),
(37, 17, 'assets/gallery/MAORiQmsvBh7hT4JTHAoOgZuv79LLaghc2StZqqL.jpeg', NULL, '2020-08-17 17:30:53', '2020-08-17 17:30:53'),
(38, 17, 'assets/gallery/fvbBa7I3z14oMJOQBAnoqqHexwTWCOb978bxevIs.jpeg', NULL, '2020-08-17 17:31:16', '2020-08-17 17:31:16'),
(39, 18, 'assets/gallery/aBR7llIg3XqA8XH5xrikNQLSlb3DQRBRpAZK8tck.jpeg', NULL, '2020-08-17 17:33:09', '2020-08-17 17:33:09'),
(40, 18, 'assets/gallery/oaq9cPp3QopumvTEC85Pf5YP0GHukT3haRv0knT3.jpeg', NULL, '2020-08-17 17:33:38', '2020-08-17 17:33:38'),
(41, 18, 'assets/gallery/RIMKuAjWRfukZ29imkWJhtVEML6lQkrlN0GSYrr1.jpeg', NULL, '2020-08-17 17:34:04', '2020-08-17 17:34:04'),
(42, 18, 'assets/gallery/Bw6JQ2RCcGjpcyhv5ZgZbExg1yZx505FHn4S22ZV.jpeg', NULL, '2020-08-17 17:34:22', '2020-08-17 17:34:22'),
(43, 19, 'assets/gallery/RbIWkqPEfcRxy4dCxG2BAQKGDLgHHygkpID2aHuC.jpeg', NULL, '2020-08-17 17:38:02', '2020-08-17 17:38:02'),
(44, 19, 'assets/gallery/ZfH870pJze4P4mwmyiqj57MrX0lTFUaK5QqIkYjb.jpeg', NULL, '2020-08-17 17:38:25', '2020-08-17 17:38:25'),
(45, 19, 'assets/gallery/oh3wHMOEppxlbVck7Dm3bfW8TVofZTE1UzFl8S9Y.jpeg', NULL, '2020-08-17 17:38:43', '2020-08-17 17:38:43'),
(46, 19, 'assets/gallery/XCO7zC4PvAxgo8hqZO4hPsggg2AoFlmQWgSRsv4w.jpeg', NULL, '2020-08-17 17:39:02', '2020-08-17 17:39:02'),
(47, 22, 'assets/gallery/feGrQZF6iboHkokxVqbkcpoGJgsrgkYl467YhTY3.jpeg', NULL, '2020-08-17 17:42:55', '2020-08-17 17:42:55'),
(48, 22, 'assets/gallery/7GDZ5XoyH4UMClW2Yqbvz1kUQcXlv4P7AVmdzDWX.jpeg', NULL, '2020-08-17 17:43:12', '2020-08-17 17:43:12'),
(49, 22, 'assets/gallery/Bq6o74FXas0qiLIG1mCwma6XJfEdxQiahaqm2Eev.jpeg', NULL, '2020-08-17 17:43:28', '2020-08-17 17:43:28'),
(50, 22, 'assets/gallery/wB5O3SVL5Dc2yoBpXJ0Qrva4QSR82f5rdlIIolKL.jpeg', NULL, '2020-08-17 17:43:46', '2020-08-17 17:43:46'),
(51, 21, 'assets/gallery/HK5fpjWDa4817qHubzyjpSMQLBcCzGrkUoSTJg4U.jpeg', '2020-08-17 18:04:11', '2020-08-17 17:46:50', '2020-08-17 18:04:11'),
(52, 21, 'assets/gallery/NSJAu34WRSk9f2OpnvdIM55oxM78PQYbuAPyWjTv.jpeg', '2020-08-17 18:04:30', '2020-08-17 17:47:11', '2020-08-17 18:04:30'),
(53, 21, 'assets/gallery/RDZURXCvIyihMhO2uFyBe2fW0V3SB1Ec3XwA9IK7.jpeg', '2020-08-17 18:04:52', '2020-08-17 17:47:31', '2020-08-17 18:04:52'),
(54, 21, 'assets/gallery/trO8a61fBKlYUIUzV9t2MijM1CVuAaXKqORMPj7m.jpeg', '2020-08-17 18:05:16', '2020-08-17 17:47:49', '2020-08-17 18:05:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_11_041201_create_travel_packages_table', 1),
(5, '2020_08_11_044257_create_galleries_table', 2),
(6, '2020_08_11_114247_create_transaction_table', 3),
(13, '2020_08_11_114848_create_transaction_details_table', 4),
(14, '2020_08_11_125655_add_roles_field_to_users_table', 5),
(15, '2020_08_15_065529_create_galleries_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('danihidayat015@gmail.com', '$2y$10$tIJ4fdisaZXCwhLb2UDlZeIfm.YR1oE.CWeTHfk5thr9KeOHB0Ubi', '2020-08-26 04:45:03'),
('user@gmail.com', '$2y$10$ja2mK2KZAu8W/lQe4bfWEOdjvfbxx./skDMSs/BR03.pOi44ebHUy', '2020-08-26 04:46:15'),
('admin@gmail.com', '$2y$10$ql41GWE81MOsoO3g1GM0W.pvj1/Q8kElFyj.IHTWwnKSbhIipT35q', '2020-08-26 04:47:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(29, 17, 14, 0, 200, 'IN_CART', '2020-08-18 03:00:09', '2020-08-18 02:59:04', '2020-08-18 03:00:09'),
(30, 17, 14, 0, 200, 'IN_CART', NULL, '2020-08-18 03:03:03', '2020-08-18 03:03:03'),
(31, 18, 14, 0, 2, 'IN_CART', NULL, '2020-08-18 04:47:04', '2020-08-18 04:47:04'),
(32, 19, 14, 0, 20000, 'PENDING', NULL, '2020-08-18 04:54:31', '2020-08-18 04:55:14'),
(33, 17, 14, 190, 590, 'PENDING', NULL, '2020-08-19 02:54:08', '2020-08-19 02:54:32'),
(34, 18, 14, 0, 2, 'PENDING', NULL, '2020-08-19 23:17:46', '2020-08-19 23:18:22'),
(35, 22, 14, 0, 0, 'PENDING', NULL, '2020-08-19 23:35:15', '2020-08-19 23:39:24'),
(36, 17, 14, 0, 200, 'PENDING', NULL, '2020-08-19 23:40:19', '2020-08-19 23:40:27'),
(37, 18, 14, 0, 2, 'PENDING', NULL, '2020-08-19 23:42:27', '2020-08-19 23:42:32'),
(38, 19, 14, 0, 20000, 'PENDING', NULL, '2020-08-25 06:07:18', '2020-08-25 06:07:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(25, 29, 'user', 'ID', 0, '2020-08-18 09:59:04', NULL, '2020-08-18 02:59:04', '2020-08-18 02:59:04'),
(26, 30, 'user', 'ID', 0, '2020-08-18 10:03:03', NULL, '2020-08-18 03:03:03', '2020-08-18 03:03:03'),
(27, 31, 'user', 'ID', 0, '2020-08-18 11:47:04', NULL, '2020-08-18 04:47:04', '2020-08-18 04:47:04'),
(28, 32, 'user', 'ID', 0, '2020-08-18 11:54:31', NULL, '2020-08-18 04:54:31', '2020-08-18 04:54:31'),
(29, 33, 'user', 'ID', 0, '2020-08-19 09:54:08', NULL, '2020-08-19 02:54:08', '2020-08-19 02:54:08'),
(30, 33, 'admin', 'ID', 1, '2020-08-19 09:54:25', NULL, '2020-08-19 02:54:25', '2020-08-19 02:54:25'),
(31, 34, 'user', 'ID', 0, '2020-08-20 06:17:46', NULL, '2020-08-19 23:17:46', '2020-08-19 23:17:46'),
(32, 35, 'user', 'ID', 0, '2020-08-20 06:39:24', '2020-08-19 23:39:24', '2020-08-19 23:35:16', '2020-08-19 23:39:24'),
(33, 35, 'admin', 'ID', 1, '2020-08-20 06:39:21', '2020-08-19 23:39:21', '2020-08-19 23:35:33', '2020-08-19 23:39:21'),
(34, 36, 'user', 'ID', 0, '2020-08-20 06:40:20', NULL, '2020-08-19 23:40:20', '2020-08-19 23:40:20'),
(35, 37, 'user', 'ID', 0, '2020-08-20 06:42:27', NULL, '2020-08-19 23:42:27', '2020-08-19 23:42:27'),
(36, 38, 'user', 'ID', 0, '2020-08-25 13:07:19', NULL, '2020-08-25 06:07:19', '2020-08-25 06:07:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `depature_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `depature_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Pinus Darmacaang', '', 'Republic of Indonesia Raya', '', '', '', '', '2020-08-12', '', 'Open Trip', 0, '2020-08-14 21:13:00', NULL, '2020-08-14 21:13:00'),
(2, 'TEMPAT WISATA CIREONG GUNUNG', 'tempat-wisata-cireong-gunung', 'Ciamis cikoneng', 'asd', 'ds', 'Indonesai', 'Seblak', '2020-08-19', '2D', 'On Trip', 2222, '2020-08-14 21:38:42', '2020-08-14 08:11:16', '2020-08-14 21:38:42'),
(3, 'sad', 'sad', 'sad', 'asd', 'ds', 'Indonesai', 'Seblak', '2020-09-02', '2D', 'On Trip', 12, '2020-08-14 21:29:04', '2020-08-14 09:12:52', '2020-08-14 21:29:04'),
(4, 'CIAMIS SELARAS', 'ciamis-selaras', 'sdh', 'jdshfj', 'sdhfj', 'sdhjf', 'sjdhfj', '2020-09-01', '2D', 'On Trip', 2000000, '2020-08-14 21:29:35', '2020-08-14 19:40:17', '2020-08-14 21:29:35'),
(5, 'sdasda23423234424 sdfsdsdw3 sxsd', 'sdasda23423234424-sdfsdsdw3-sxsd', 'sa', 'assad', 'asda', 'asd', 'asd', '2020-08-27', 'asd', 'On Trip', 2313, '2020-08-14 21:17:10', '2020-08-14 19:53:13', '2020-08-14 21:17:10'),
(6, 'Alam Terbuka Tasikmalaya', 'alam-terbuka-tasikmalaya', 'Tasikmalaya', 'Bgaus', 'Dangdut', 'Sunda', 'Nasi To', '2020-08-28', '2D', 'On Trip', 12000000, '2020-08-14 21:33:32', '2020-08-14 21:08:25', '2020-08-14 21:33:32'),
(7, 'Cikonen Asri', 'cikonen-asri', 'jhsdjfhj', 'sjdhfj', 'sdjhfj', 'sdjhf', 'sjdhfj', '1111-11-11', '1111', '11', 111, '2020-08-14 21:33:17', '2020-08-14 21:21:13', '2020-08-14 21:33:17'),
(8, 'Cikoenge jagjag', 'cikoenge-jagjag', 'cikoneng', 'cantik indah asri', 'Dangdut', 'sunda', 'Seblak', '2200-02-22', '22', '2', 2, '2020-08-14 21:32:15', '2020-08-14 21:30:47', '2020-08-14 21:32:15'),
(9, 'shdjfasdsadsfsf', 'shdjfasdsadsfsf', 'hsdfgh', 'hsdgfh', 'hsdgh', 'hsdgfh', 'hsfgh', '2020-08-17', 'hdfh', 'hdhf', 9328, '2020-08-14 21:36:36', '2020-08-14 21:34:27', '2020-08-14 21:36:36'),
(10, '4 Fakta Kondisi Terkini China Setelah Wabah Corona Mereda', '4-fakta-kondisi-terkini-china-setelah-wabah-corona-mereda', 'Ciamis', 'sss', 'Dangdut', 'ss', 'ss', '2020-08-03', 'sss', 'ss', 12, '2020-08-14 21:38:20', '2020-08-14 21:35:32', '2020-08-14 21:38:20'),
(11, '4 Fakta Kondisi Terkini China Setelah Wabah Corona Mereda', '4-fakta-kondisi-terkini-china-setelah-wabah-corona-mereda', 'Ciamis', 'sdhfsjfdhj', 'ds', 'sdhjf', 'Seblak', '2020-08-13', 'asdsad', 'ss', 2322, '2020-08-14 21:39:59', '2020-08-14 21:39:55', '2020-08-14 21:39:59'),
(12, 'Cikonen Asri', 'cikonen-asri', 'Ciamis', 'MANTAO', 'JASDH', 'JSDHJ', 'SDJH', '2202-02-02', '202', '20202', 202, '2020-08-14 21:48:08', '2020-08-14 21:42:42', '2020-08-14 21:48:08'),
(13, 'NGABUBURIT1 hari lalu Pada Inul Daratista, Via Vallen Bercerita Ingin Hijrah dari Dunia Hiburan Via Vallen ternyata masih memiliki banyak mimpi yang belum bisa diwujudkan. Yang mengejutkan mimpinya tersebut malah bertolak', 'ngabuburit1-hari-lalu-pada-inul-daratista-via-vallen-bercerita-ingin-hijrah-dari-dunia-hiburan-via-vallen-ternyata-masih-memiliki-banyak-mimpi-yang-belum-bisa-diwujudkan-yang-mengejutkan-mimpinya-tersebut-malah-bertolak', 'a', 'h', 'h', 'h', 'h', '2222-02-22', '22', '22', 222, '2020-08-14 21:54:47', '2020-08-14 21:52:35', '2020-08-14 21:54:47'),
(14, '4 Fakta Kondisi Terkini China Setelah Wabah Corona Mereda', '4-fakta-kondisi-terkini-china-setelah-wabah-corona-mereda', 'Ciamis', 'magelang', 'jhsd', 'sahdj', 'jashdj', '0292-02-09', '2929', '29', 29, '2020-08-14 22:23:54', '2020-08-14 22:23:48', '2020-08-14 22:23:54'),
(15, 'NGABUBURIT1 hari lalu Pada Inul Daratista, Via Vallen Bercerita Ingin Hijrah dari Dunia Hiburan Via Vallen ternyata masih memiliki banyak mimpi yang belum bisa diwujudkan. Yang mengejutkan mimpinya tersebut malah bertolak', 'ngabuburit1-hari-lalu-pada-inul-daratista-via-vallen-bercerita-ingin-hijrah-dari-dunia-hiburan-via-vallen-ternyata-masih-memiliki-banyak-mimpi-yang-belum-bisa-diwujudkan-yang-mengejutkan-mimpinya-tersebut-malah-bertolak', 'zxc', 'asfa', 'adfd', 'sfsdf', 'dsfsd', '2020-08-24', 'dsfds', 'sdfs', 234, '2020-08-14 22:24:20', '2020-08-14 22:24:15', '2020-08-14 22:24:20'),
(16, 'Pelatih Futsal Vamos Mataram Meninggal Dunia', 'pelatih-futsal-vamos-mataram-meninggal-dunia', 'sdjf', 'jdhfj', 'djshfj', 'hjdhfj', 'hjfh', '0029-02-09', '9', 'jdsj1sd3', 83, '2020-08-14 22:29:38', '2020-08-14 22:26:32', '2020-08-14 22:29:38'),
(17, 'Thailand', 'thailand', 'Thailand', 'Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak', 'sjdhfj', 'sdjhj', 'sdjhfj', '0292-02-02', 'sjdhf', 'On Trip', 200, NULL, '2020-08-14 22:40:24', '2020-08-17 23:47:51'),
(18, 'Singapore', 'singapore', 'Singapore', 'Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak', 'sdhf', 'hdsgfh', 'hdsfgh', '0330-02-22', 'shdfbh', 'On Trip', 2, NULL, '2020-08-14 23:16:50', '2020-08-17 17:35:10'),
(19, 'Malaysia', 'malaysia', 'Malaysia', 'Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak', 'Dangdut', 'Melayu', 'Nasi Mentah', '2020-08-17', '2D', 'On Trip', 20000, NULL, '2020-08-17 04:53:37', '2020-08-17 04:53:37'),
(20, 'Papu New Gunie', 'papu-new-gunie', 'Papu New Gunie', 'Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak', 'Dangdut', 'Indonesia', 'Seblak', '2020-08-26', '2D', 'Open Trip', 12000, '2020-08-17 17:39:25', '2020-08-17 04:55:34', '2020-08-17 17:39:25'),
(21, 'Vietnam', 'vietnam', 'Vietnam', 'Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak', 'Dangdut', 'Indonesia', 'Seblak', '2020-09-05', '2D', 'On Trip', 19000, '2020-08-17 18:05:42', '2020-08-17 04:56:42', '2020-08-17 18:05:42'),
(22, 'Cambodia', 'cambodia', 'Cambodia', 'Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak', 'Dangdut', 'Cambodia', 'Seblak', '2020-08-27', '3Week', 'On Trip', 120000, NULL, '2020-08-17 17:40:47', '2020-08-17 17:40:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(14, 'Dani Hidayat', 'user@gmail.com', '2020-08-14 05:01:55', '$2y$10$xdLJqQzdQCQR4i6r2HB2/eDPLeUxvh4jIwyGOG/DA0xRwbuFudfMW', 'UmTFvPleSK6mc23jwYOfuIEYZTPBwtzzaYBXWUHJxCEjb2hW6j7PedaJsB2x', '2020-08-14 05:00:38', '2020-08-14 05:01:55', 'USER', 'user'),
(15, 'admin', 'admin@gmail.com', '2020-08-14 05:20:32', '$2y$10$hlgJyH0YUNovz.mBHJLnyOIZHu9p0ZCX9sjGuKlJ8upMC47mYP./O', NULL, '2020-08-14 05:19:45', '2020-08-14 05:20:32', 'ADMIN', 'ADMIN'),
(17, 'Dani Hidayat', 'danihidayat015@gmail.com', '2020-08-05 11:30:37', '$2y$10$8BZZNOsWIZigDMVfkZrbXOD4BUbQiL6GlDNPa.MFyZsylSqsYl/Vm', NULL, '2020-08-26 04:28:27', '2020-08-26 04:28:27', 'ADMIN', 'dani');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
