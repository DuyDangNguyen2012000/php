-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 09, 2022 lúc 07:52 PM
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
(41, 'storage/images/categories/noithat.jpg', 11, 'App\\Models\\Category', '2022-06-05 15:06:52', '2022-06-05 15:06:52'),
(42, 'storage/images/categories/hinh-anh-cay-tre-dep-1.jpg', 12, 'App\\Models\\Category', '2022-06-05 15:10:06', '2022-06-05 15:10:06'),
(43, 'storage/images/categories/images.jpg', 13, 'App\\Models\\Category', '2022-06-05 15:15:40', '2022-06-05 15:15:40'),
(44, 'storage/images/products/999.jpg', 12, 'App\\Models\\Product', '2022-06-05 15:47:53', '2022-06-05 15:47:53'),
(45, 'storage/images/products/999.jpg', 13, 'App\\Models\\Product', '2022-06-05 15:51:21', '2022-06-05 15:51:21'),
(46, 'storage/images/products/4550344878286_02_400.jpg', 14, 'App\\Models\\Product', '2022-06-05 15:51:58', '2022-06-05 15:51:58'),
(47, 'storage/images/categories/ly-giay-cao-cap-tai-bao-bi-xanh.png', 14, 'App\\Models\\Category', '2022-06-07 13:58:04', '2022-06-07 13:58:04'),
(48, 'storage/images/products/ly1.png', 15, 'App\\Models\\Product', '2022-06-07 14:00:11', '2022-06-07 14:00:11'),
(49, 'storage/images/products/ly2.png', 15, 'App\\Models\\Product', '2022-06-07 14:00:11', '2022-06-07 14:00:11'),
(50, 'storage/images/products/ly3.png', 15, 'App\\Models\\Product', '2022-06-07 14:00:11', '2022-06-07 14:00:11'),
(51, 'storage/images/products/lys1.png', 16, 'App\\Models\\Product', '2022-06-07 14:02:22', '2022-06-07 14:02:22'),
(52, 'storage/images/products/lys2.png', 16, 'App\\Models\\Product', '2022-06-07 14:02:22', '2022-06-07 14:02:22'),
(53, 'storage/images/products/lys3.png', 16, 'App\\Models\\Product', '2022-06-07 14:02:22', '2022-06-07 14:02:22'),
(54, 'storage/images/products/ly-9oz-70864cd7-2e8a-44fa-9c83-4dfe825543e9.png', 17, 'App\\Models\\Product', '2022-06-07 14:04:06', '2022-06-07 14:04:06'),
(55, 'storage/images/products/latte-art-heart2-e77bf10a-8b8f-4b55-8219-be5c71dbf163.png', 17, 'App\\Models\\Product', '2022-06-07 14:04:06', '2022-06-07 14:04:06'),
(56, 'storage/images/products/screen-shot-2017-06-27-at-10-58-c709e791-b232-469f-8b41-3558d7de9a7d.png', 17, 'App\\Models\\Product', '2022-06-07 14:04:06', '2022-06-07 14:04:06'),
(57, 'storage/images/products/ly-9oz-giay-550b7525-266f-418b-af03-a231a67d5a73.png', 17, 'App\\Models\\Product', '2022-06-07 14:04:06', '2022-06-07 14:04:06'),
(58, 'storage/images/categories/ảnh-chính-2-768x512.jpg', 15, 'App\\Models\\Category', '2022-06-07 14:07:23', '2022-06-07 14:07:23'),
(59, 'storage/images/products/ảnh-chính-2-768x512.jpg', 18, 'App\\Models\\Product', '2022-06-07 14:08:23', '2022-06-07 14:08:23'),
(60, 'storage/images/products/IMG_4859-1-768x512.jpg', 18, 'App\\Models\\Product', '2022-06-07 14:08:23', '2022-06-07 14:08:23'),
(61, 'storage/images/products/IMG_4861-1-768x512.jpg', 18, 'App\\Models\\Product', '2022-06-07 14:08:24', '2022-06-07 14:08:24'),
(62, 'storage/images/products/DSC05862-768x576.jpg', 19, 'App\\Models\\Product', '2022-06-07 14:09:49', '2022-06-07 14:09:49'),
(63, 'storage/images/products/DSC05865-768x576.jpg', 19, 'App\\Models\\Product', '2022-06-07 14:09:49', '2022-06-07 14:09:49'),
(64, 'storage/images/products/DSC05868-768x576.jpg', 19, 'App\\Models\\Product', '2022-06-07 14:09:49', '2022-06-07 14:09:49'),
(65, 'storage/images/products/DSC05869-768x1024.jpg', 19, 'App\\Models\\Product', '2022-06-07 14:09:49', '2022-06-07 14:09:49'),
(66, 'storage/images/products/IMG_4832-768x512.jpg', 20, 'App\\Models\\Product', '2022-06-07 14:12:25', '2022-06-07 14:12:25'),
(67, 'storage/images/products/ohnh1-768x427.png', 20, 'App\\Models\\Product', '2022-06-07 14:12:25', '2022-06-07 14:12:25'),
(68, 'storage/images/products/tui-5-tre-600x600.jpg', 21, 'App\\Models\\Product', '2022-06-09 14:54:34', '2022-06-09 14:54:34'),
(69, 'storage/images/products/hop-10-ong-hut-tre-2-600x600.png', 21, 'App\\Models\\Product', '2022-06-09 14:54:34', '2022-06-09 14:54:34'),
(70, 'storage/images/products/laxanh2-600x384.jpg', 21, 'App\\Models\\Product', '2022-06-09 14:54:34', '2022-06-09 14:54:34'),
(71, 'storage/images/products/sp3.jpg', 21, 'App\\Models\\Product', '2022-06-09 14:54:34', '2022-06-09 14:54:34'),
(72, 'storage/images/products/hop-10-ong-hut-tre-2-600x600.png', 22, 'App\\Models\\Product', '2022-06-09 14:58:34', '2022-06-09 14:58:34'),
(73, 'storage/images/products/a2-600x600.png', 22, 'App\\Models\\Product', '2022-06-09 14:58:34', '2022-06-09 14:58:34'),
(74, 'storage/images/products/onghutgao-57-1570516612_1200x0-3-600x401.jpg', 23, 'App\\Models\\Product', '2022-06-09 15:00:48', '2022-06-09 15:00:48'),
(75, 'storage/images/products/gao2-600x400.jpg', 23, 'App\\Models\\Product', '2022-06-09 15:00:48', '2022-06-09 15:00:48'),
(76, 'storage/images/products/4616168_cover_ong_hut_gao_TInhte_11-600x371.jpg', 23, 'App\\Models\\Product', '2022-06-09 15:00:48', '2022-06-09 15:00:48'),
(77, 'storage/images/products/v1-600x450.jpg', 24, 'App\\Models\\Product', '2022-06-09 15:02:50', '2022-06-09 15:02:50'),
(78, 'storage/images/products/95f4fd5d684f8c11d55e-600x800.jpg', 24, 'App\\Models\\Product', '2022-06-09 15:02:51', '2022-06-09 15:02:51'),
(79, 'storage/images/categories/v1-600x600.jpg', 16, 'App\\Models\\Category', '2022-06-09 15:05:30', '2022-06-09 15:05:30'),
(80, 'storage/images/products/v1-600x600.jpg', 25, 'App\\Models\\Product', '2022-06-09 15:06:25', '2022-06-09 15:06:25'),
(81, 'storage/images/products/ban-chai-tre-3-600x480.jpg', 25, 'App\\Models\\Product', '2022-06-09 15:06:25', '2022-06-09 15:06:25'),
(82, 'storage/images/products/v1-600x600.jpg', 25, 'App\\Models\\Product', '2022-06-09 15:06:25', '2022-06-09 15:06:25'),
(83, 'storage/images/products/2.-xo-muop-2-min-600x600.png', 26, 'App\\Models\\Product', '2022-06-09 15:07:31', '2022-06-09 15:07:31'),
(84, 'storage/images/products/4-min-600x600.png', 26, 'App\\Models\\Product', '2022-06-09 15:07:31', '2022-06-09 15:07:31'),
(85, 'storage/images/products/e82bc095281dcd43940c-min-600x600.jpg', 26, 'App\\Models\\Product', '2022-06-09 15:07:31', '2022-06-09 15:07:31'),
(86, 'storage/images/categories/tieu-canh-thac-nuoc-mini-dep-600x600.jpg', 17, 'App\\Models\\Category', '2022-06-09 15:10:46', '2022-06-09 15:10:46'),
(87, 'storage/images/products/tieu-canh-thac-nuoc-mini-600x400.jpg', 27, 'App\\Models\\Product', '2022-06-09 15:11:42', '2022-06-09 15:11:42'),
(88, 'storage/images/products/tieu-canh-thac-nuoc-mini-dep-600x600.jpg', 27, 'App\\Models\\Product', '2022-06-09 15:11:42', '2022-06-09 15:11:42'),
(89, 'storage/images/products/sp2-600x600.jpg', 28, 'App\\Models\\Product', '2022-06-09 15:12:29', '2022-06-09 15:12:29'),
(90, 'storage/images/products/tieu-canh-thac-nuoc-tren-tuong.png', 28, 'App\\Models\\Product', '2022-06-09 15:12:29', '2022-06-09 15:12:29'),
(91, 'storage/images/products/tieu-canh-mini-de-ban-tre-1-600x600.jpg', 29, 'App\\Models\\Product', '2022-06-09 15:13:53', '2022-06-09 15:13:53'),
(92, 'storage/images/products/tieu-canh-mini-de-ban-tre-600x600.jpg', 29, 'App\\Models\\Product', '2022-06-09 15:13:53', '2022-06-09 15:13:53'),
(93, 'storage/images/products/dai-phun-nuoc-mini-600x600.jpg', 30, 'App\\Models\\Product', '2022-06-09 15:16:23', '2022-06-09 15:16:23'),
(94, 'storage/images/products/dai-phun-nuoc-mini-2-600x600.webp', 30, 'App\\Models\\Product', '2022-06-09 15:16:23', '2022-06-09 15:16:23');

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
(63, 'order_240023', 20, 1, 300000, '2022-06-07 16:06:16', '2022-06-07 16:06:16'),
(64, 'order_400272', 25, 1, 25000, '2022-06-09 17:00:09', '2022-06-09 17:00:09'),
(65, 'order_400272', 24, 1, 52000, '2022-06-09 17:00:09', '2022-06-09 17:00:09'),
(66, 'order_400272', 23, 1, 99000, '2022-06-09 17:00:09', '2022-06-09 17:00:09'),
(67, 'order_400272', 30, 2, 598000, '2022-06-09 17:00:09', '2022-06-09 17:00:09'),
(68, 'order_971731', 29, 1, 590000, '2022-06-09 17:00:27', '2022-06-09 17:00:27'),
(69, 'order_258059', 30, 1, 299000, '2022-06-09 17:04:12', '2022-06-09 17:04:12'),
(70, 'order_258059', 29, 1, 590000, '2022-06-09 17:04:12', '2022-06-09 17:04:12'),
(71, 'order_204417', 29, 1, 590000, '2022-06-09 17:05:38', '2022-06-09 17:05:38'),
(72, 'order_204417', 30, 1, 299000, '2022-06-09 17:05:38', '2022-06-09 17:05:38'),
(73, 'order_795755', 30, 1, 299000, '2022-06-09 17:11:35', '2022-06-09 17:11:35'),
(74, 'order_795755', 25, 1, 25000, '2022-06-09 17:11:35', '2022-06-09 17:11:35'),
(75, 'order_795755', 21, 1, 80000, '2022-06-09 17:11:36', '2022-06-09 17:11:36'),
(76, 'order_795755', 19, 1, 10000, '2022-06-09 17:11:36', '2022-06-09 17:11:36'),
(77, 'order_795755', 20, 1, 300000, '2022-06-09 17:11:36', '2022-06-09 17:11:36'),
(78, 'order_209385', 29, 1, 590000, '2022-06-09 17:13:34', '2022-06-09 17:13:34'),
(79, 'order_260794', 30, 1, 299000, '2022-06-09 17:13:50', '2022-06-09 17:13:50'),
(80, 'order_847878', 15, 50, 25000, '2022-06-09 17:14:09', '2022-06-09 17:14:09'),
(81, 'order_931636', 16, 50, 55000, '2022-06-09 17:14:27', '2022-06-09 17:14:27'),
(82, 'order_415931', 17, 51, 61200, '2022-06-09 17:14:48', '2022-06-09 17:14:48'),
(83, 'order_355146', 18, 1, 40000, '2022-06-09 17:15:10', '2022-06-09 17:15:10'),
(84, 'order_355146', 19, 1, 10000, '2022-06-09 17:15:10', '2022-06-09 17:15:10'),
(85, 'order_355146', 20, 1, 300000, '2022-06-09 17:15:10', '2022-06-09 17:15:10'),
(86, 'order_394831', 21, 1, 80000, '2022-06-09 17:15:30', '2022-06-09 17:15:30'),
(87, 'order_394831', 22, 1, 79000, '2022-06-09 17:15:30', '2022-06-09 17:15:30'),
(88, 'order_394831', 23, 1, 99000, '2022-06-09 17:15:31', '2022-06-09 17:15:31'),
(89, 'order_557605', 25, 1, 25000, '2022-06-09 17:16:04', '2022-06-09 17:16:04'),
(90, 'order_557605', 26, 1, 40000, '2022-06-09 17:16:04', '2022-06-09 17:16:04'),
(91, 'order_240303', 27, 1, 1799000, '2022-06-09 17:17:57', '2022-06-09 17:17:57'),
(92, 'order_240303', 29, 1, 590000, '2022-06-09 17:17:58', '2022-06-09 17:17:58'),
(93, 'order_143441', 30, 1, 299000, '2022-06-09 17:18:24', '2022-06-09 17:18:24'),
(94, 'order_143441', 29, 1, 590000, '2022-06-09 17:18:25', '2022-06-09 17:18:25'),
(95, 'order_903520', 28, 1, 799000, '2022-06-09 17:18:47', '2022-06-09 17:18:47'),
(96, 'order_903520', 27, 1, 1799000, '2022-06-09 17:18:47', '2022-06-09 17:18:47'),
(97, 'order_475818', 28, 1, 799000, '2022-06-09 17:19:14', '2022-06-09 17:19:14'),
(98, 'order_475818', 29, 1, 590000, '2022-06-09 17:19:14', '2022-06-09 17:19:14');

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
(14, 'Ly giấy', 1, '2022-06-07 13:58:04', '2022-06-07 13:58:04'),
(15, 'Ống hút', 1, '2022-06-07 14:07:23', '2022-06-09 14:57:33'),
(16, 'Chăm sóc cá nhân', 1, '2022-06-09 15:05:30', '2022-06-09 15:05:30'),
(17, 'Trang trí', 1, '2022-06-09 15:10:46', '2022-06-09 15:10:46');

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
('order_143441', 6, NULL, 'de ban bang tre', 889000, 2, '2022-05-09 17:18:24', '2022-06-09 17:18:24'),
('order_204417', 6, NULL, 'ngõ 20 tân triều3', 889000, 2, '2022-06-09 17:05:38', '2022-06-09 17:05:38'),
('order_209385', 6, NULL, 'ngõ 20 tân triều222', 590000, 2, '2022-04-09 17:13:34', '2022-06-09 17:13:34'),
('order_240023', 6, NULL, 'Thanh Xuan Nam', 300000, 2, '2022-03-07 16:06:16', '2022-06-07 16:06:16'),
('order_240303', 6, NULL, 'ngõ 20 tân triều', 2389000, 2, '2022-02-09 17:17:57', '2022-06-09 17:17:57'),
('order_258059', 6, NULL, 'ngõ 20 tân triều3', 889000, 2, '2022-01-09 17:04:12', '2022-06-09 17:04:12'),
('order_260794', 6, NULL, 'ngõ 20 tân triều222', 299000, 2, '2022-01-09 17:13:50', '2022-06-09 17:13:50'),
('order_355146', 6, NULL, '3s', 350000, 2, '2022-02-09 17:15:10', '2022-06-09 17:15:10'),
('order_394831', 6, NULL, '3s1', 258000, 2, '2022-03-09 17:15:30', '2022-06-09 17:15:30'),
('order_400272', 6, NULL, 'ngõ 20 tân triều', 774000, 2, '2022-04-09 17:00:09', '2022-06-09 17:08:42'),
('order_415931', 6, NULL, 'Ly giấ..', 61200, 2, '2022-05-09 17:14:48', '2022-06-09 17:14:48'),
('order_475818', 6, NULL, 'vach nuoc, thac tuong', 1389000, 2, '2022-06-09 17:19:14', '2022-06-09 17:19:14'),
('order_557605', 6, NULL, 'ngõ 20 tân triều', 65000, 2, '2022-06-09 17:16:04', '2022-06-09 17:16:04'),
('order_795755', 6, 1, 'ngõ 20 tân triều', 714000, 2, '2022-05-09 17:11:35', '2022-06-09 17:11:35'),
('order_847878', 6, NULL, '9999', 25000, 2, '2022-04-09 17:14:09', '2022-06-09 17:14:09'),
('order_903520', 6, NULL, 'vach tuong', 2598000, 2, '2022-03-09 17:18:47', '2022-06-09 17:18:47'),
('order_931636', 6, NULL, '99991', 55000, 2, '2022-02-09 17:14:27', '2022-06-09 17:14:27'),
('order_971731', 6, NULL, 'ngõ 20 tân triều2', 590000, 2, '2022-01-09 17:00:27', '2022-06-09 17:00:27');

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
(1, 'welcome', 10000, 97, '2022-03-27 11:47:48', '2022-06-09 17:11:35', '2022-05-20', '2022-05-21');

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
(2, 'Bao bì xanh', 'Hà nội', '0123456789', 'baobixanh@gmail.com', '2022-06-07 13:56:54', '2022-06-07 13:56:54'),
(3, 'Tre Shop', 'Hà nội', '0147852369', 'treshop@gmail.com', '2022-06-07 14:06:33', '2022-06-07 14:06:33'),
(4, 'La xanh', 'HCM', '0123456785', 'laxanh@gmail.com', '2022-06-09 14:55:23', '2022-06-09 14:55:23');

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
(6, 'duy2@gmail.com', 'duy2@gmail.com', NULL, '$2y$10$D165aNwYf/HjiAGsS5kgl.wcc.ftOt28Ivdx8Ycp214KQr9VCZCue', '0399676793', 0, 1, 'J3OFi7XrUKliGmBMfvu1zKoSnThePAJlize56Lcaf7NN3xvTkfBoQstv5roS', '2022-05-24 09:49:57', '2022-05-24 09:49:57');

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
(1, 'admin', 'admin@gmail.com', '2022-03-07 19:33:04', '$2y$10$MjEFZHhN5xF/xO0foaglY.x0zgoK6VJOOjPUyB7Yq1TRE4wqal8q6', 0, 'qufXcjNRWUuUkxuUG56kmwUuqWanVu2X6DSjVaR2QlCt1Y1q2RP68BP1Ib8x', '2022-03-07 19:33:04', '2022-03-07 19:33:04'),
(2, 'Nguyễn Văn AB', 'nvab@gmail.com', NULL, '$2y$10$Dpw3ZCNWxZtJ9B6.c52UT.8zwEO/bUvm4rgcx5lFmczXfTrDvplm.', 1, 'HP7lKPJ1V5b2nFDV4g58Rd4IpRtgv9qbUSbXBYKArAbr7C2i6yZr0SPuUeBm', '2022-03-08 07:06:24', '2022-05-11 09:55:23'),
(3, 'Nhân Viên C', 'nhanvienc@gmail.com', NULL, '$2y$10$U2OndrRNWXXrPZEOy6.U0eHpvwfATMjTd7WmYuS9AiCZbtNngKXS6', 1, 'StrahTKAp3ZUHsrzE8oizVcYXWZVP8WnO1Y3936S7myTKslBX0x0egqRBUVS', '2022-04-25 06:17:10', '2022-04-25 06:17:10'),
(5, 'Nguyen Manh Hung', 'hung29manh@gmail.com', NULL, '$2y$10$PtB0YnG1NZefymSxuXCgJOmbMUHVmnC8N5CWWOzy4q5ezjmjj.fKK', 1, NULL, '2022-05-08 08:01:02', '2022-05-08 08:01:02'),
(6, 'Đỗ Văn Tiến', 'levanac@gmail.com', NULL, '$2y$10$0rKH54ZHri2WwkOinU6eR.BmefaN1O.fv4e9gP52th.QNw76ma/Rq', 1, NULL, '2022-05-08 08:02:41', '2022-05-08 08:02:41'),
(8, 'Lê Đỗ Nam', 'donam@gmail.com', NULL, '$2y$10$kKeIP0yrQBf0GDIsncTfueGpGmpXTOKtVrB3c8ZkxA0V6X/Y2ZUtG', 1, 'yCoWl3dv2aNrbBb3Cw1nYeoSPkW7lCuZa8cLvGSNn275rq5AN5u1KTPdLXf7', '2022-05-10 10:17:22', '2022-05-10 10:17:22'),
(9, 'dang duy dang', 'duy22@gmail.com', NULL, '$2y$10$x4amFseFnuoghcAMgT1xBeMCd8Djc7Ri1oEBmOxzKAVq/IoJWtA.K', 1, 'dPPObZfQcyLoRwWtNv4HI2G2Py3wjL0JcwdjdTt84Fxt2czuYSG1qjzSLylo', '2022-06-05 15:18:33', '2022-06-05 15:18:33');

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
(15, 14, 2, 0, 'Ly giấy 3oz  90ml', '<p style=\"text-align:justify\"><u>Mô tả sản phẩm</u>:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">Tên: Ly giấy 3oz</li>\r\n	<li style=\"text-align:justify\">Mã SP: MD-3OZ1PE</li>\r\n	<li style=\"text-align:justify\">Chất liệu: Giấy PO, Cupstock + PE</li>\r\n	<li style=\"text-align:justify\">Thông số kĩ thuật:</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">- Miệng: 52mm<br />\r\n- Đáy: 32mm<br />\r\n- Cao: 56mm</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">Dung tích: 4oz (120ml)</li>\r\n	<li style=\"text-align:justify\">Màu sắc: Trắng</li>\r\n	<li style=\"text-align:justify\">Đặc tính: Ly nhỏ, dáng cao, 1PE nên chỉ đựng được đồ nóng.</li>\r\n	<li style=\"text-align:justify\">Mẫu mã: Kiểu dáng cao, nhỏ, dễ thương và xinh xắn.</li>\r\n	<li style=\"text-align:justify\">Công dụng: Đựng các dạng đồ uống nóng, hoặc nước uống dùng 1 lần sự kiện, sampling.</li>\r\n	<li style=\"text-align:justify\">Đóng gói: 2.500 cái/ thùng, 100 cái/1 túi nilong</li>\r\n</ul>', 500, 0, NULL, NULL, 950, 50, 1, '2022-06-07 14:00:11', '2022-06-09 17:14:10'),
(16, 14, 2, 0, 'Ly giấy 6oz  180ml', '<p style=\"text-align:justify\"><u>Mô tả sản phẩm</u>:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">Tên: Ly giấy trơn&nbsp;6oz</li>\r\n	<li style=\"text-align:justify\">Mã SP: MD-6OZ1PE</li>\r\n	<li style=\"text-align:justify\">Chất liệu: Giấy PO, Cupstock + PE</li>\r\n	<li style=\"text-align:justify\">Thông số kĩ thuật:</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">- Miệng: 72mm<br />\r\n- Đáy: 52mm<br />\r\n- Cao: 68mm</p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">Dung tích: 6oz (180ml)</li>\r\n	<li style=\"text-align:justify\">Màu sắc: Trắng</li>\r\n	<li style=\"text-align:justify\">Đặc tính: Ly cao, nhỏ gọn</li>\r\n	<li style=\"text-align:justify\">Mẫu mã: Ly kiểu hiện đại năng động, thiết kế cân đối, cầm nắm vừa tay.</li>\r\n	<li style=\"text-align:justify\">Công dụng: Đùng đựng nước uống 1 lần, đựng các món đồ uông sampling, sự kiện.</li>\r\n	<li style=\"text-align:justify\">Đóng gói: 1.000 cái/ thùng, 50 cái/1 túi nilong</li>\r\n</ul>', 1100, 0, NULL, NULL, 50, 50, 1, '2022-06-07 14:02:22', '2022-06-09 17:14:27'),
(17, 14, 2, 0, 'Ly giấy 9oz (270ml) in hình  1PE', '<p>Bao Bì Xanh cung cấp ly giấy in hình 9oz dung tích tương đương 270ml phũ 1 lớp PE. Phù hợp để đựng thuốc uống nóng và lạnh.</p>\r\n\r\n<p><strong>Công dụng:</strong></p>\r\n\r\n<p>Sử dụng đựng nước nóng lạnh, cafe, sản phẩm thân thiện với môi trường. Nhẹ dễ sử dụng, tiện ích. Giúp bạn nâng cao hình ảnh thương hiệu sản phẩm. Giá rẻ nên có thể sử dụng 1 lần rồi bỏ đi để tiết kiệm thời gian. Thích hợp, văn phòng, quán ăn, coffee, ly giấy take away, khách sạn, event...Đi du lịch, dã ngoại.</p>\r\n\r\n<p><strong>Nơi sản xuất:</strong>&nbsp;Việt Nam</p>\r\n\r\n<p><strong>Chất liệu:</strong>&nbsp;Giấy chất lượng cao, đảm bảo an toàn, PE</p>\r\n\r\n<p><strong>Dung tích</strong>: 9oz ~ 270 ml</p>', 1200, 0, NULL, NULL, 99, 51, 1, '2022-06-07 14:04:06', '2022-06-09 17:14:49'),
(18, 15, 3, 0, 'Ống hút tre b10', '<p>Dài 20cm; Bó 10 chiếc.</p>\r\n\r\n<p>100% tự nhiên, không chất tạo màu, không tẩy trắng.</p>\r\n\r\n<p>Sử dụng nhiều lần, sau 3-6 tháng nên thay ống mới.</p>', 40000, 0, NULL, NULL, 1199, 1, 1, '2022-06-07 14:08:23', '2022-06-09 17:15:10'),
(19, 15, 3, 0, 'Ống hút tre db', '<p>Dài 20cm</p>\r\n\r\n<p>Đường kính ống: 5mm đến 11mm</p>', 10000, 0, NULL, NULL, 498, 2, 1, '2022-06-07 14:09:49', '2022-06-09 17:15:10'),
(20, 15, 3, 1, 'Combo 100 ống hút tre', '<p>Ống hút tre 100% tự nhiên, dài 20cm.<br />\r\nKhông qua xử lý hóa chất, phơi nắng tự nhiên và hun khói bếp củi.</p>\r\n\r\n<p>Combo bao gồm:</p>\r\n\r\n<ul>\r\n	<li>100 ống hút tre</li>\r\n	<li>2 que rửa</li>\r\n	<li>1 hộp đựng hỗ trợ khắc laser logo của quán</li>\r\n	<li>1 poster khổ A4 giới thiệu về ống hút tre</li>\r\n</ul>', 350000, 300000, '2022-06-07', '2022-06-30', 297, 3, 1, '2022-06-07 14:12:25', '2022-06-09 17:15:10'),
(21, 15, 4, 0, 'Ống hút tre b5', '<p>Túi 5 Bamboo Straws gồm:</p>\r\n\r\n<ul>\r\n	<li>10 ống hút đường kính từ 6mm – 10mm để uống cafe, nước lọc và trà.</li>\r\n	<li>1 cọ xơ dừa để vệ sinh ống hút.</li>\r\n	<li>1 hộp đựng bằng giấy Kraft cao cấp có thiết kế độc đáo.</li>\r\n</ul>\r\n\r\n<p>Ống hút được làm thủ công tại Việt Nam từ nguồn tre tự nhiên; an toàn với sức khỏe, thân thiện với môi trường. Ống hút tre Hà Nội được đặt trong hộp giấy với thiết kế hài hòa, tinh tế. Có thể sử dụng làm quà tặng vì sản phẩm đẹp và ý nghĩa.</p>', 80000, 0, NULL, NULL, 1228, 2, 1, '2022-06-09 14:54:34', '2022-06-09 17:15:30'),
(22, 15, 4, 0, 'Hộp 100 ống hút giấy', '<p>Hộp 100 ống hút giấy gồm:</p>\r\n\r\n<ul>\r\n	<li>100 ống hút đường kính từ 6mm để uống cafe, nước lọc và trà.</li>\r\n	<li>1 hộp đựng bằng giấy Kraft cao cấp có thiết kế độc đáo.</li>\r\n</ul>\r\n\r\n<p>Ống hút giấy được làm từ giấy Kraft, an toàn với sức khỏe, có độ bền cao. Có thể sử dụng làm quà tặng vì hình thức đẹp, mang ý nghĩa sâu sắc với những người yêu môi trường.</p>', 79000, 0, NULL, NULL, 499, 1, 1, '2022-06-09 14:58:34', '2022-06-09 17:15:30'),
(23, 15, 4, 0, 'Ống Bột Gạo', '<p><span style=\"color:rgb(10, 10, 10); font-family:bookman,tahoma,verdana; font-size:medium\">Ống hút bột gạo</span><span style=\"color:rgb(10, 10, 10); font-family:bookman,tahoma,verdana; font-size:medium\">&nbsp;được làm từ tinh bột gạo,</span><span style=\"color:rgb(10, 10, 10); font-family:bookman,tahoma,verdana; font-size:medium\">&nbsp;an toàn</span><span style=\"color:rgb(10, 10, 10); font-family:bookman,tahoma,verdana; font-size:medium\">&nbsp;và hoàn toàn thân thiện với môi trường.</span></p>\r\n\r\n<p><span style=\"color:rgb(10, 10, 10); font-family:bookman,tahoma,verdana; font-size:medium\">Sản phẩm được sản xuất tại&nbsp;</span><span style=\"color:rgb(10, 10, 10); font-family:bookman,tahoma,verdana; font-size:medium\">Việt Nam</span><span style=\"color:rgb(10, 10, 10); font-family:bookman,tahoma,verdana; font-size:medium\">.</span></p>', 99000, 0, NULL, NULL, 498, 2, 1, '2022-06-09 15:00:48', '2022-06-09 17:15:31'),
(24, 15, 4, 0, 'ống hút cỏ bàng', '<p>Set 100 psc</p>\r\n\r\n<p>Là Xanh cung cấp ống hút cỏ bàng khô giá sỉ hấp dẫn dành cho:</p>\r\n\r\n<ul>\r\n	<li>Cá nhân và doanh nghiệp muốn đặt ống hút cỏ bàng khô với số lượng lớn.</li>\r\n	<li>Công ty muốn đặt ống hút bảo vệ môi trường làm quà tặng cho nhân viên, khách hàng, đối tác.</li>\r\n	<li>Doanh nghiệp Việt Nam và nước ngoài muốn xuất khẩu ống hút cỏ bàng.</li>\r\n</ul>', 52000, 0, NULL, NULL, 499, 1, 1, '2022-06-09 15:02:50', '2022-06-09 17:00:09'),
(25, 16, 4, 0, 'Bàn Chải Tre', '<ol>\r\n	<li>Lông vừa, mềm trên men răng và nướu, nhưng đủ mạnh để làm sạch răng du lịch.<br />\r\n	100% hữu cơ và kháng khuẩn.</li>\r\n	<li>Bàn chải tre có khả năng phân hủy sinh học 100%: tay cầm, bao bì và hộp.</li>\r\n	<li>Màu với thuốc nhuộm phân hủy sinh học tự nhiên.</li>\r\n	<li>Hộp của chúng tôi là các tông, được sản xuất mà không có bất kỳ băng dính hoặc keo.</li>\r\n	<li>+1 ống hút tre MIỄN PHÍ</li>\r\n</ol>', 25000, 0, NULL, NULL, 117, 3, 1, '2022-06-09 15:06:25', '2022-06-09 17:16:04'),
(26, 16, 4, 0, 'Bt xơ mướp', '<p>Bông tắm xơ mướp có nguyên liệu 100% thân thiện với môi trường.</p>\r\n\r\n<p>Công dụng:</p>\r\n\r\n<p>– Xơ mướp dùng để tẩy tế bào chết, massage da thúc đẩy lưu thông máu mang lại sức sống và cho hiệu quả tẩy mụn lưng rất tốt.</p>\r\n\r\n<p>– Sản phẩm thiên nhiên, không hóa chất độc hại, đảm bảo an toàn cho người dùng</p>\r\n\r\n<p>– Kết hợp với gel tắm hoặc xà phòng thiên nhiên để cho hiệu quả tốt nhất</p>\r\n\r\n<p>– Kiểu dáng nhỏ gọn, vừa tay cầm, thích hợp để sử dụng hàng ngày.</p>', 40000, 0, NULL, NULL, 199, 1, 1, '2022-06-09 15:07:31', '2022-06-09 17:16:04'),
(27, 17, 4, 0, 'Thác Nước Mini', '<ul>\r\n	<li style=\"text-align:left\"><span style=\"color:rgb(0, 0, 0); font-family:bookman,tahoma,verdana !important\">Tiểu cảnh thác nước mini có tông màu nâu sáng, làm hoàn toàn 100% tre tự nhiên</span></li>\r\n	<li style=\"text-align:left\"><span style=\"color:rgb(0, 0, 0); font-family:bookman,tahoma,verdana !important\">Được thiết kế theo phong cách Hoài cổ kết hợp phong cách hiện đại của Nhật bản, đơn giản nhưng sang trọng.</span></li>\r\n	<li style=\"text-align:left\"><span style=\"color:rgb(0, 0, 0); font-family:bookman,tahoma,verdana !important\">Dùng trang trí tiểu cảnh hoặc hòn non bộ</span></li>\r\n	<li style=\"text-align:left\"><span style=\"color:rgb(0, 0, 0); font-family:bookman,tahoma,verdana !important\">Có mùi thơm nhẹ nhẹ của tre.</span></li>\r\n	<li style=\"text-align:left\"><span style=\"color:rgb(0, 0, 0); font-family:bookman,tahoma,verdana !important\">Là sản phẩm độc đáo nhất trên thị trường, mang hồn đất trời vào trong từng sản phẩm</span></li>\r\n	<li style=\"text-align:left\"><span style=\"color:rgb(0, 0, 0); font-family:bookman,tahoma,verdana !important\">Không những là đồ chơi mà còn là một tuyệt tác nghệ thuật</span></li>\r\n	<li><span style=\"color:rgb(0, 0, 0); font-family:bookman,tahoma,verdana !important\">Mã hàng: TNTC04</span></li>\r\n</ul>', 1799000, 0, NULL, NULL, 198, 2, 1, '2022-06-09 15:11:42', '2022-06-09 17:18:47'),
(28, 17, 4, 0, 'Vách Tường Bằng Tre', '<ul>\r\n	<li>Tiểu Cảnh Vách Tường Đẹp bằng tre có tông màu nâu sáng, làm hoàn toàn 100% tre tự nhiên</li>\r\n	<li>Kích thước :&nbsp; 40 x 65 cm ( Dài x Cao&nbsp; )</li>\r\n	<li>Được thiết kế theo phong cách Hoài cổ kết hợp phong cách hiện đại của Nhật bản, đơn giản nhưng sang trọng.</li>\r\n	<li>Dùng trang trí trong nhà</li>\r\n	<li>Là sản phẩm độc đáo nhất trên thị trường, mang hồn đất trời vào trong từng sản phẩm</li>\r\n	<li>Không những là đồ chơi mà còn là một tuyệt tác nghệ thuật</li>\r\n	<li>Đã bao gồm bơm nước, không bao gồm chậu gốm</li>\r\n</ul>', 799000, 0, NULL, NULL, 18, 2, 1, '2022-06-09 15:12:29', '2022-06-09 17:19:14'),
(29, 17, 4, 0, 'Để Bàn Bằng Tre', '<ul>\r\n	<li style=\"text-align:left\">Tiểu cảnh mini để bàn bằng tre , tông màu nâu sáng, làm hoàn toàn 100% tre tự nhiên,</li>\r\n	<li style=\"text-align:left\">Kích thước :&nbsp; 8 x 30 x 8 cm ( Dài x Cao x Rộng )</li>\r\n	<li style=\"text-align:left\">Là sản phẩm độc đáo nhất trên thị trường, mang hồn đất trời vào trong từng sản phẩm</li>\r\n	<li style=\"text-align:left\">Đã bao gồm 1 bơm nước</li>\r\n	<li style=\"text-align:left\">Mã Hàng: DB06</li>\r\n</ul>', 590000, 0, NULL, NULL, 99, 7, 1, '2022-06-09 15:13:53', '2022-06-09 17:19:14'),
(30, 17, 4, 0, 'Đài Phun Nước', '<ul>\r\n	<li>Đài phun nước mini để bàn bằng tre có tông màu nâu sáng, làm hoàn toàn 100% tre tự nhiên</li>\r\n	<li>Kích thước :&nbsp; 25 x 20 cm ( Dài x Cao&nbsp; )</li>\r\n	<li>Được thiết kế theo phong cách Hoài cổ kết hợp phong cách hiện đại của Nhật bản, đơn giản nhưng sang trọng.</li>\r\n	<li>Dùng trang trí tiểu cảnh hoặc hòn non bộ</li>\r\n	<li>Là sản phẩm độc đáo nhất trên thị trường, mang hồn đất trời vào trong từng sản phẩm</li>\r\n	<li>Không những là đồ chơi mà còn là một tuyệt tác nghệ thuật</li>\r\n	<li>Đã bao gồm bơm nước, không bao gồm chậu gốm</li>\r\n</ul>', 299000, 0, NULL, NULL, 12, 7, 1, '2022-06-09 15:16:23', '2022-06-09 17:18:24');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `dmsp`
--
ALTER TABLE `dmsp`
  MODIFY `id_dmsp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id_ncc` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id_qtv` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_sp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
