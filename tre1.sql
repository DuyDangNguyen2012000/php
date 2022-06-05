-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 05, 2022 lúc 05:04 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tre1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh`
--

CREATE TABLE `anh` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `anh`
--

INSERT INTO `anh` (`id`, `url`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(3, 'storage/images/categories/dt10-300x300.jpeg', 2, 'App\\Models\\Category', '2022-03-08 05:36:55', '2022-03-08 05:36:55'),
(4, 'storage/images/categories/binhphong.jpg', 3, 'App\\Models\\Category', '2022-03-08 06:12:23', '2022-03-08 06:12:23'),
(7, 'storage/images/products/2ea771556843921dcb52-1-600x600.jpg', 3, 'App\\Models\\Product', '2022-03-08 06:37:53', '2022-03-08 06:37:53'),
(8, 'storage/images/products/8b5ced7ceb6a1134487b-1-600x600.jpg', 4, 'App\\Models\\Product', '2022-03-08 06:40:05', '2022-03-08 06:40:05'),
(9, 'storage/images/products/0be529da2fccd5928cdd-2-600x600.jpg', 5, 'App\\Models\\Product', '2022-03-08 06:44:14', '2022-03-08 06:44:14'),
(10, 'storage/images/products/0a19a621815c399a1b25516796c2e590-1-600x600.jpg', 6, 'App\\Models\\Product', '2022-03-08 06:46:40', '2022-03-08 06:46:40'),
(12, 'storage/images/products/dt10-300x300.jpeg', 7, 'App\\Models\\Product', '2022-03-18 00:18:07', '2022-03-18 00:18:07'),
(15, 'storage/images/products/dt10-300x300.jpeg', 2, 'App\\Models\\Product', '2022-03-18 00:50:04', '2022-03-18 00:50:04'),
(16, 'storage/images/products/2ea771556843921dcb52-1-600x600.jpg', 2, 'App\\Models\\Product', '2022-03-18 00:50:04', '2022-03-18 00:50:04'),
(17, 'storage/images/products/2ea771556843921dcb52-1-600x600.jpg', 1, 'App\\Models\\Product', '2022-04-24 09:38:50', '2022-04-24 09:38:50'),
(18, 'storage/images/products/0be529da2fccd5928cdd-2-600x600.jpg', 1, 'App\\Models\\Product', '2022-04-24 09:38:50', '2022-04-24 09:38:50'),
(19, 'storage/images/products/8b5ced7ceb6a1134487b-1-600x600.jpg', 1, 'App\\Models\\Product', '2022-04-24 09:38:50', '2022-04-24 09:38:50'),
(21, 'storage/images/categories/noithat.jpg', 1, 'App\\Models\\Category', '2022-04-24 09:49:05', '2022-04-24 09:49:05'),
(22, 'storage/images/products/coc-dung-ca-phe-may-akira.jpg', 3, 'App\\Models\\Product', '2022-04-25 06:10:16', '2022-04-25 06:10:16'),
(30, 'storage/images/categories/tui-vai.jpg', 7, 'App\\Models\\Category', '2022-06-03 00:21:13', '2022-06-03 00:21:13'),
(31, 'storage/images/products/4550344878286_1260.jpg', 8, 'App\\Models\\Product', '2022-06-03 00:23:22', '2022-06-03 00:23:22'),
(32, 'storage/images/products/4550344878286_03_400.jpg', 8, 'App\\Models\\Product', '2022-06-03 00:23:22', '2022-06-03 00:23:22'),
(33, 'storage/images/products/4550344878286_07_400.jpg', 8, 'App\\Models\\Product', '2022-06-03 00:23:22', '2022-06-03 00:23:22'),
(34, 'storage/images/products/4550344878286_1260.jpg', 8, 'App\\Models\\Product', '2022-06-03 00:23:22', '2022-06-03 00:23:22'),
(35, 'storage/images/products/abc.jpg', 9, 'App\\Models\\Product', '2022-06-03 09:14:29', '2022-06-03 09:14:29'),
(36, 'storage/images/products/abc.jpg', 10, 'App\\Models\\Product', '2022-06-03 09:19:56', '2022-06-03 09:19:56'),
(37, 'storage/images/products/999.jpg', 11, 'App\\Models\\Product', '2022-06-03 09:20:36', '2022-06-03 09:20:36'),
(38, 'storage/images/categories/tui-vai2.jpg', 8, 'App\\Models\\Category', '2022-06-05 02:52:20', '2022-06-05 02:52:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_nguoidung` bigint(20) UNSIGNED NOT NULL,
  `id_sp` bigint(20) UNSIGNED NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_nguoidung`, `id_sp`, `noidung`, `created_at`, `updated_at`) VALUES
(2, 6, 4, 'demo', '2022-05-24 09:50:22', '2022-05-24 09:50:22'),
(3, 6, 2, '123', '2022-06-02 09:54:45', '2022-06-02 09:54:45'),
(4, 6, 2, '1', '2022-06-02 09:55:04', '2022-06-02 09:55:04'),
(5, 6, 5, '1', '2022-06-03 00:31:43', '2022-06-03 00:31:43'),
(6, 6, 1, 'ahihi', '2022-06-03 02:34:00', '2022-06-03 02:34:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_donhang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sp` bigint(20) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `id_donhang`, `id_sp`, `soluong`, `dongia`, `created_at`, `updated_at`) VALUES
(26, 'order_149217', 4, 1, 1000000, '2022-06-02 17:52:28', '2022-06-02 17:52:28'),
(27, 'order_149217', 3, 1, 100000, '2022-06-02 17:52:28', '2022-06-02 17:52:28'),
(28, 'order_203666', 3, 0, 100000, '2022-06-03 00:43:08', '2022-06-03 00:43:08'),
(29, 'order_203666', 4, 3, 3000000, '2022-06-03 00:43:08', '2022-06-03 00:43:08'),
(30, 'order_203666', 5, 1, 250000, '2022-06-03 00:43:08', '2022-06-03 00:43:08'),
(31, 'order_594614', 3, 11, 1100000, '2022-06-03 02:31:12', '2022-06-03 02:31:12'),
(32, 'order_246673', 1, 100, 100000000, '2022-06-03 02:35:37', '2022-06-03 02:35:37'),
(33, 'order_129998', 5, 1, 250000, '2022-06-03 04:58:14', '2022-06-03 04:58:14'),
(34, 'order_725786', 3, 1, 100000, '2022-06-03 04:59:05', '2022-06-03 04:59:05'),
(35, 'order_465109', 5, 11, 5250000, '2022-06-03 05:00:08', '2022-06-03 05:00:08'),
(36, 'order_763934', 3, 1, 100000, '2022-06-04 06:18:01', '2022-06-04 06:18:01'),
(37, 'order_763934', 4, 1, 1000000, '2022-06-04 06:18:01', '2022-06-04 06:18:01'),
(38, 'order_763934', 5, 1, 250000, '2022-06-04 06:18:01', '2022-06-04 06:18:01'),
(39, 'order_190159', 4, 2, 2000000, '2022-06-04 08:38:34', '2022-06-04 08:38:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_nguoidung` bigint(20) UNSIGNED NOT NULL,
  `id_sp` bigint(20) UNSIGNED NOT NULL,
  `sosao` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`id`, `id_nguoidung`, `id_sp`, `sosao`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, '2022-03-08 00:22:58', '2022-03-08 00:22:58'),
(2, 1, 1, 3, '2022-03-08 00:25:11', '2022-03-08 00:25:11'),
(3, 1, 1, 3, '2022-03-08 00:26:57', '2022-03-08 00:26:57'),
(4, 1, 1, 5, '2022-03-08 00:27:19', '2022-03-08 00:27:19'),
(5, 1, 1, 2, '2022-03-08 00:27:48', '2022-03-08 00:27:48'),
(7, 1, 4, 4, '2022-03-08 07:19:40', '2022-03-08 07:19:40'),
(8, 2, 1, 5, '2022-04-24 10:00:00', '2022-04-24 10:00:00'),
(9, 3, 3, 5, '2022-04-24 10:11:58', '2022-04-24 10:11:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dmsp`
--

CREATE TABLE `dmsp` (
  `id_dmsp` bigint(20) UNSIGNED NOT NULL,
  `ten_dmsp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dmsp`
--

INSERT INTO `dmsp` (`id_dmsp`, `ten_dmsp`, `tinhtrang`, `created_at`, `updated_at`) VALUES
(1, 'Nội thất', 1, '2022-03-07 20:10:53', '2022-03-08 06:24:38'),
(2, 'Đèn tre', 1, '2022-03-08 05:36:55', '2022-03-08 05:36:55'),
(3, 'Bình phong', 1, '2022-03-08 06:12:23', '2022-03-08 06:12:23'),
(7, 'Túi vải', 1, '2022-06-03 00:21:13', '2022-06-03 00:21:13'),
(8, 'demo tui vai 2', 1, '2022-06-05 02:52:20', '2022-06-05 02:52:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id_donhang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_nguoidung` bigint(20) UNSIGNED NOT NULL,
  `id_khuyenmai` bigint(20) UNSIGNED DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id_donhang`, `id_nguoidung`, `id_khuyenmai`, `diachi`, `thanhtien`, `tinhtrang`, `created_at`, `updated_at`) VALUES
('order_129998', 6, NULL, '123', 100000, 2, '2022-01-01 04:58:14', '2022-06-03 04:58:14'),
('order_149217', 6, NULL, '123', 100000, 2, '2022-02-01 04:58:14', '2022-06-02 17:52:39'),
('order_190159', 6, NULL, 'ád', 2000000, 0, '2022-06-04 08:38:34', '2022-06-04 08:38:34'),
('order_203666', 6, NULL, 'demo dat hang', 100000, 2, '2022-03-01 04:58:14', '2022-06-03 00:43:07'),
('order_246673', 6, NULL, 'demo', 100000, 2, '2022-04-01 04:58:14', '2022-06-03 02:35:37'),
('order_465109', 6, NULL, 'abc1', 100000, 2, '2022-05-01 04:58:14', '2022-06-03 05:00:08'),
('order_594614', 6, 1, 'demo', 100000, 2, '2022-05-18 04:58:14', '2022-06-03 02:31:48'),
('order_725786', 6, NULL, '123', 100000, 2, '2022-06-01 04:58:14', '2022-06-03 04:59:05'),
('order_763934', 6, NULL, '123', 1350000, 2, '2022-06-04 06:18:01', '2022-06-04 06:18:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `id_khuyenmai` bigint(20) UNSIGNED NOT NULL,
  `makhuyenmai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatien` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ngaybatdau` date DEFAULT NULL,
  `ngayketthuc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`id_khuyenmai`, `makhuyenmai`, `giatien`, `soluong`, `created_at`, `updated_at`, `ngaybatdau`, `ngayketthuc`) VALUES
(1, 'welcome', 10000, 98, '2022-03-27 11:47:48', '2022-06-03 02:31:11', '2022-05-20', '2022-05-21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_qtv` bigint(20) DEFAULT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hoten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id`, `id_qtv`, `noidung`, `created_at`, `updated_at`, `hoten`, `email`, `tinhtrang`) VALUES
(1, NULL, '<p>mong muốn hợp tác làm ăn</p>', '2022-03-29 20:36:33', '2022-03-29 20:55:17', 'Nguyễn Hữu Luân', 'cucbong0@gmail.com', 1),
(2, NULL, '<p>abc</p>', '2022-04-25 06:14:07', '2022-04-25 06:14:31', 'Lê Văn A', 'duy.nguyendang.547@gmail.com', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_nguoidung_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_03_063851_create_quantrivien_table', 1),
(6, '2022_03_03_065001_create_dmsp_table', 1),
(7, '2022_03_03_065010_create_ncc_table', 1),
(8, '2022_03_03_065025_create_sanpham_table', 1),
(9, '2022_03_03_065037_create_anh_table', 1),
(10, '2022_03_03_065121_create_danhgia_table', 1),
(11, '2022_03_03_065131_create_lienhe_table', 1),
(12, '2022_03_03_065152_create_khuyenmai_table', 1),
(13, '2022_03_03_065201_create_donhang_table', 1),
(14, '2022_03_03_065211_create_chitietdonhang_table', 1),
(15, '2022_03_30_022800_add_hoten_column_to_lienhe_table', 2),
(16, '2022_03_30_022812_add_email_column_to_lienhe_table', 2),
(17, '2022_03_30_032431_add_tinhtrang_column_to_lienhe_table', 3),
(18, '2022_05_13_031332_create_binhluan_table', 4),
(19, '2022_05_13_031421_create_phanhoi_table', 4),
(20, '2022_05_13_143526_add_ngaybatdau_column_to_khuyenmai_table', 4),
(21, '2022_05_13_143538_add_ngayketthuc_column_to_khuyenmai_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ncc`
--

CREATE TABLE `ncc` (
  `id_ncc` bigint(20) UNSIGNED NOT NULL,
  `ten_ncc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ncc`
--

INSERT INTO `ncc` (`id_ncc`, `ten_ncc`, `diachi`, `sdt`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Xưởng nội thất Tre Việt Nam', 'TP.HCM', '0123456789', 'trevietnam@gmail.com', '2022-03-07 20:11:51', '2022-03-07 20:11:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id_nguoidung` bigint(20) UNSIGNED NOT NULL,
  `hoten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `matkhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id_nguoidung`, `hoten`, `email`, `email_verified_at`, `matkhau`, `sdt`, `gioitinh`, `tinhtrang`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test Name', 'test@gmail.com', NULL, '$2y$10$6muv38i5WmbV6INIJ731qeslu4CsZj/clIlQuqbUEri9oY.X/x29O', '0971719313', 1, 1, '0KLf0OG9FkNpUuMO73yhaNm5wd14C5JFAijdTxUp5PzKQXP0upjwi8YohzKv', '2022-03-08 00:19:58', '2022-03-29 19:04:25'),
(2, 'Kiều Oanh', 'lekieuoanh@gmail.com', NULL, '$2y$10$KPouISiVHOpL7ROLOlWBj.H7Va9zdtNORYyiRn/OZMbzvgMoUW/SO', '0379135465', 1, 1, '3gfCNhRyf4NvtKVKxuAW6SntwBOAsEAsJBGii4eTXsMMw92gVkheTOhAjbKg', '2022-04-24 09:30:34', '2022-04-24 09:30:34'),
(3, 'Lê Trung', 'letrung@gmail.com', NULL, '$2y$10$kFYWRUdNs452w4oobWkzROn0l2IiLNrY7oCmWrTnqZhuANa3PVNdm', '0234234324', 0, 1, '0wh7zwKaHBRaGZJMbbzuIBLFCYAXkCYCtY98b3hXluaIXV3KsmX64oyEIums', '2022-04-24 10:11:38', '2022-04-24 10:11:38'),
(4, '24242431', 'av@gmail.com', NULL, '$2y$10$JbJK/z8CMQ4DK4KR0F2VoehXogJHg3gNfqPNUhU5r.x8kd/DJuXYS', '0464544232', 1, 1, 'abJxzpJofBM0BNMkwkCJsHiRMn6HPzirzVTDW1acHHZk1Uxl94DPCR8dzdwR', '2022-05-11 09:57:17', '2022-05-11 09:57:48'),
(5, 'dang duy dang', 'demoduy@gmail.com', NULL, '$2y$10$oKsJsh2XYIn90jJWNxWb1.8Fi3irEyn/enkZbaYGyeLPnCLV/yNg2', '0399676793', 0, 1, NULL, '2022-05-24 05:57:49', '2022-05-24 05:57:49'),
(6, 'duy2@gmail.com', 'duy2@gmail.com', NULL, '$2y$10$D165aNwYf/HjiAGsS5kgl.wcc.ftOt28Ivdx8Ycp214KQr9VCZCue', '0399676793', 0, 1, 'pBYqg4Tfzl0ITAi2Tz3VqVK0xzX2UEjoNo5HQIvgyMprvXlIILH7zdaT1y1D', '2022-05-24 09:49:57', '2022-05-24 09:49:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_binhluan` bigint(20) UNSIGNED NOT NULL,
  `nguoiphanhoi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanhoi`
--

INSERT INTO `phanhoi` (`id`, `id_binhluan`, `nguoiphanhoi`, `noidung`, `created_at`, `updated_at`) VALUES
(2, 2, 'duy2@gmail.com', 'demo2', '2022-05-24 09:50:32', '2022-05-24 09:50:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quantrivien`
--

CREATE TABLE `quantrivien` (
  `id_qtv` bigint(20) UNSIGNED NOT NULL,
  `hoten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `matkhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quantrivien`
--

INSERT INTO `quantrivien` (`id_qtv`, `hoten`, `email`, `email_verified_at`, `matkhau`, `quyen`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2022-03-07 19:33:04', '$2y$10$MjEFZHhN5xF/xO0foaglY.x0zgoK6VJOOjPUyB7Yq1TRE4wqal8q6', 0, 'QKuJyVFYA1DLYXJvsCRyPFoKLwL6Nhi2QExfht911gcpfxueGgTMR7hlbkI2', '2022-03-07 19:33:04', '2022-03-07 19:33:04'),
(2, 'Nguyễn Văn AB', 'nvab@gmail.com', NULL, '$2y$10$Dpw3ZCNWxZtJ9B6.c52UT.8zwEO/bUvm4rgcx5lFmczXfTrDvplm.', 1, 'HP7lKPJ1V5b2nFDV4g58Rd4IpRtgv9qbUSbXBYKArAbr7C2i6yZr0SPuUeBm', '2022-03-08 07:06:24', '2022-05-11 09:55:23'),
(3, 'Nhân Viên C', 'nhanvienc@gmail.com', NULL, '$2y$10$U2OndrRNWXXrPZEOy6.U0eHpvwfATMjTd7WmYuS9AiCZbtNngKXS6', 1, 'StrahTKAp3ZUHsrzE8oizVcYXWZVP8WnO1Y3936S7myTKslBX0x0egqRBUVS', '2022-04-25 06:17:10', '2022-04-25 06:17:10'),
(5, 'Nguyen Manh Hung', 'hung29manh@gmail.com', NULL, '$2y$10$PtB0YnG1NZefymSxuXCgJOmbMUHVmnC8N5CWWOzy4q5ezjmjj.fKK', 1, NULL, '2022-05-08 08:01:02', '2022-05-08 08:01:02'),
(6, 'Đỗ Văn Tiến', 'levanac@gmail.com', NULL, '$2y$10$0rKH54ZHri2WwkOinU6eR.BmefaN1O.fv4e9gP52th.QNw76ma/Rq', 1, NULL, '2022-05-08 08:02:41', '2022-05-08 08:02:41'),
(8, 'Lê Đỗ Nam', 'donam@gmail.com', NULL, '$2y$10$kKeIP0yrQBf0GDIsncTfueGpGmpXTOKtVrB3c8ZkxA0V6X/Y2ZUtG', 1, 'yCoWl3dv2aNrbBb3Cw1nYeoSPkW7lCuZa8cLvGSNn275rq5AN5u1KTPdLXf7', '2022-05-10 10:17:22', '2022-05-10 10:17:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_sp` bigint(20) UNSIGNED NOT NULL,
  `id_dmsp` bigint(20) UNSIGNED NOT NULL,
  `id_ncc` bigint(20) UNSIGNED NOT NULL,
  `loai_sp` int(11) NOT NULL,
  `ten_sp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giatien` int(11) NOT NULL DEFAULT 0,
  `giakhuyenmai` int(11) NOT NULL DEFAULT 0,
  `thoigianbatdau` date DEFAULT NULL,
  `thoigianketthuc` date DEFAULT NULL,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `soluongban` int(11) NOT NULL DEFAULT 0,
  `tinhtrang` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_sp`, `id_dmsp`, `id_ncc`, `loai_sp`, `ten_sp`, `mota`, `giatien`, `giakhuyenmai`, `thoigianbatdau`, `thoigianketthuc`, `soluong`, `soluongban`, `tinhtrang`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 'Bàn ghế tre', NULL, 1000000, 0, NULL, NULL, 0, 100, 1, '2022-03-07 20:23:08', '2022-06-03 02:35:37'),
(2, 2, 1, 1, 'ĐÈN MÂY TRE ĐÀ NẴNG', '<p>a</p>', 140000, 120000, '2022-05-20', '2022-05-21', 100, 0, 1, '2022-03-08 06:36:36', '2022-06-02 08:46:32'),
(3, 2, 1, 0, 'Đèn tre1', '<p>abc</p>', 100000, 0, NULL, NULL, 98, 2, 1, '2022-03-08 06:37:53', '2022-06-04 06:18:01'),
(4, 3, 1, 0, 'Bình phong tre', NULL, 1000000, 0, NULL, NULL, 94, 6, 1, '2022-03-08 06:40:05', '2022-06-04 08:38:34'),
(5, 3, 1, 1, 'Bình phong tre tại Đà Nẵng', '<p>Bình phong tre chất lượng cao xuất xứ 100% tre tự nhiên</p>', 500000, 250000, '2022-03-08', '2022-08-10', 86, 14, 1, '2022-03-08 06:44:14', '2022-06-04 06:18:01'),
(8, 7, 1, 0, 'TÚI MY BAG A6 VẢI SỢI ĐAY TRẮNG THÔ', '<p>Túi sử dụng vải chất liệu đay không nhuộm màu và có thể được sử dụng cho nhiều mục đích khác nhau. Sản phẩm có thiết kế tay cầm êm ái dễ chịu.</p>\r\n\r\n<div class=\"jan\" style=\"box-sizing: border-box; margin: 15px 0px 20px; padding: 0px; color: rgb(102, 102, 102); font-size: 10px; font-family: &quot;Helvetica Neue&quot;, Helvetica, sans-serif;\">MÃ SẢN PHẨM4550344878286</div>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 52px; left: 113.594px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', 35000, 0, NULL, NULL, 100, 0, 1, '2022-06-03 00:23:22', '2022-06-03 00:23:22'),
(9, 7, 1, 0, 'demo', '<p>demossssssssssss</p>', 1000, 0, NULL, NULL, 10, 0, 1, '2022-06-03 09:14:28', '2022-06-03 09:14:28'),
(10, 1, 1, 0, '123', '<p>123</p>', 123, 0, NULL, NULL, 123, 0, 1, '2022-06-03 09:19:56', '2022-06-03 09:19:56'),
(11, 1, 1, 0, '999', '<p>999</p>', 999, 0, NULL, NULL, 999, 0, 1, '2022-06-03 09:20:36', '2022-06-03 09:20:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anh`
--
ALTER TABLE `anh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `binhluan_id_nguoidung_index` (`id_nguoidung`),
  ADD KEY `binhluan_id_sp_index` (`id_sp`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietdonhang_id_donhang_index` (`id_donhang`),
  ADD KEY `chitietdonhang_id_sp_index` (`id_sp`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhgia_id_nguoidung_index` (`id_nguoidung`),
  ADD KEY `danhgia_id_sp_index` (`id_sp`);

--
-- Chỉ mục cho bảng `dmsp`
--
ALTER TABLE `dmsp`
  ADD PRIMARY KEY (`id_dmsp`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_donhang`),
  ADD KEY `donhang_id_nguoidung_index` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`id_khuyenmai`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ncc`
--
ALTER TABLE `ncc`
  ADD PRIMARY KEY (`id_ncc`),
  ADD UNIQUE KEY `ncc_email_unique` (`email`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id_nguoidung`),
  ADD UNIQUE KEY `nguoidung_email_unique` (`email`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phanhoi_id_binhluan_index` (`id_binhluan`);

--
-- Chỉ mục cho bảng `quantrivien`
--
ALTER TABLE `quantrivien`
  ADD PRIMARY KEY (`id_qtv`),
  ADD UNIQUE KEY `quantrivien_email_unique` (`email`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `sanpham_id_dmsp_index` (`id_dmsp`),
  ADD KEY `sanpham_id_ncc_index` (`id_ncc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anh`
--
ALTER TABLE `anh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `dmsp`
--
ALTER TABLE `dmsp`
  MODIFY `id_dmsp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id_khuyenmai` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `ncc`
--
ALTER TABLE `ncc`
  MODIFY `id_ncc` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id_nguoidung` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `quantrivien`
--
ALTER TABLE `quantrivien`
  MODIFY `id_qtv` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id_nguoidung`) ON DELETE CASCADE,
  ADD CONSTRAINT `binhluan_id_sp_foreign` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_id_donhang_foreign` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id_donhang`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitietdonhang_id_sp_foreign` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id_nguoidung`) ON DELETE CASCADE,
  ADD CONSTRAINT `danhgia_id_sp_foreign` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id_sp`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id_nguoidung`);

--
-- Các ràng buộc cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD CONSTRAINT `phanhoi_id_binhluan_foreign` FOREIGN KEY (`id_binhluan`) REFERENCES `binhluan` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_id_dmsp_foreign` FOREIGN KEY (`id_dmsp`) REFERENCES `dmsp` (`id_dmsp`),
  ADD CONSTRAINT `sanpham_id_ncc_foreign` FOREIGN KEY (`id_ncc`) REFERENCES `ncc` (`id_ncc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
