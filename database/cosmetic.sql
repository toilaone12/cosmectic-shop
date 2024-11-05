-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2024 lúc 05:00 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cosmetic`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id_account` int(10) UNSIGNED NOT NULL,
  `id_role` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` text NOT NULL,
  `is_online` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id_account`, `id_role`, `username`, `fullname`, `email`, `phone`, `address`, `password`, `is_online`, `created_at`, `updated_at`) VALUES
(1, 1, 'quan', 'Quân', 'bokazem69@gmail.com', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, '2024-05-30 01:34:06', '2024-05-30 09:15:20'),
(2, 3, 'dung', 'Dung', 'toilaone12@gmail.com', NULL, NULL, 'd0fda0cf702231b3963aedb610256146', 0, '2024-05-30 01:40:04', '2024-05-30 02:51:49'),
(3, 1, 'dung123', 'ChinChin', 'toilaone12@gmail.com', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, '2024-05-30 01:41:38', '2024-05-30 01:41:38'),
(4, 2, 'quan', 'Nguyễn Đình Minh Quân', 'bokazem69@gmail.com', '0399112333', 'Thái Nguyên', 'e10adc3949ba59abbe56e057f20f883e', 1, '2024-06-04 10:30:15', '2024-06-16 14:21:47'),
(5, 2, 'tuan', 'Mai Anh Tuấn', 'tuan@gmail.com', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, '2024-06-15 16:47:37', '2024-06-16 14:20:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(10) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id_banner`, `image`, `created_at`, `updated_at`) VALUES
(1, 'be/img/banner/sam-sung-galaxy-zflip4-vang-hong-1-1717176595.jpg', '2024-05-31 10:16:06', '2024-05-31 10:29:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(10) UNSIGNED NOT NULL,
  `id_account` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_color` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id_cart`, `id_account`, `id_product`, `image`, `name`, `id_color`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(34, 4, 1, 'be/img/product/sp8-1-1717264168.png', 'Bếp ba từ BOSCH PUJ631BB2E', 1, 2, 14820000, '2024-06-13 11:32:58', '2024-06-15 16:47:04'),
(35, 4, 16, 'be/img/product/sp95-1717477362.png', 'Máy hút mùi Apex APB6680-70C', 1, 1, 6890000, '2024-06-15 10:34:02', '2024-06-15 10:34:02'),
(36, 4, 25, 'be/img/product/may-rua-chen-sm_main_307_1020.png-1717485764.webp', 'Máy rửa chén Bosch SMS63L08EA 12 bộ Series 6 - Châu Âu', 6, 2, 14030000, '2024-06-15 14:54:02', '2024-06-15 14:55:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id_category`, `name`, `id_parent`, `created_at`, `updated_at`) VALUES
(19, 'Trang điểm', 0, '2024-11-05 15:17:06', '2024-11-05 15:17:06'),
(20, 'Mascara', 0, '2024-11-05 15:17:20', '2024-11-05 15:17:20'),
(21, 'Son môi', 0, '2024-11-05 15:17:23', '2024-11-05 15:17:23'),
(22, 'Chăm sóc da', 0, '2024-11-05 15:17:29', '2024-11-05 15:17:29'),
(23, 'Chăm sóc cơ thể', 0, '2024-11-05 15:17:33', '2024-11-05 15:17:33'),
(24, 'Chăm sóc tóc', 0, '2024-11-05 15:17:38', '2024-11-05 15:17:38'),
(25, 'Kem lót', 19, '2024-11-05 15:17:47', '2024-11-05 15:17:47'),
(26, 'Kem nền', 19, '2024-11-05 15:17:53', '2024-11-05 15:17:53'),
(27, 'Che khuyết điểm', 19, '2024-11-05 15:17:57', '2024-11-05 15:24:29'),
(28, 'Phấn phủ', 19, '2024-11-05 15:18:09', '2024-11-05 15:18:09'),
(29, 'Xịt khóa nền', 19, '2024-11-05 15:18:16', '2024-11-05 15:18:16'),
(30, 'Phấn má', 19, '2024-11-05 15:18:28', '2024-11-05 15:18:28'),
(31, 'Son thỏi', 21, '2024-11-05 15:18:41', '2024-11-05 15:18:41'),
(32, 'Son kem', 21, '2024-11-05 15:18:46', '2024-11-05 15:18:46'),
(33, 'Son dưỡng', 21, '2024-11-05 15:18:53', '2024-11-05 15:18:53'),
(34, 'Son bóng', 21, '2024-11-05 15:21:09', '2024-11-05 15:21:09'),
(35, 'Tẩy trang', 22, '2024-11-05 15:21:27', '2024-11-05 15:21:27'),
(36, 'Sữa rửa mặt', 22, '2024-11-05 15:21:37', '2024-11-05 15:21:37'),
(37, 'Toner', 22, '2024-11-05 15:21:49', '2024-11-05 15:21:49'),
(38, 'Serum', 22, '2024-11-05 15:21:59', '2024-11-05 15:21:59'),
(39, 'Tẩy da chết', 23, '2024-11-05 15:22:08', '2024-11-05 15:22:08'),
(40, 'Sữa tắm', 23, '2024-11-05 15:22:15', '2024-11-05 15:22:15'),
(41, 'Xà phòng', 23, '2024-11-05 15:22:20', '2024-11-05 15:22:20'),
(42, 'Dầu gội', 24, '2024-11-05 15:22:41', '2024-11-05 15:22:41'),
(43, 'Dầu xả', 24, '2024-11-05 15:22:47', '2024-11-05 15:22:47'),
(44, 'Gôm sáp', 24, '2024-11-05 15:23:02', '2024-11-05 15:23:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon`
--

CREATE TABLE `coupon` (
  `id_coupon` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `discount` int(11) NOT NULL,
  `expiration` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupon`
--

INSERT INTO `coupon` (`id_coupon`, `name`, `code`, `quantity`, `type`, `discount`, `expiration`, `created_at`, `updated_at`) VALUES
(1, 'Coupon 1/6', 'COUPONCHILDREN', 100, 0, 100000, '2024-06-01', '2024-06-01 03:08:19', '2024-06-01 03:19:20'),
(2, 'Coupon tháng 6', 'COUPONT6', 99, 1, 10, '2024-06-30', '2024-06-01 03:09:59', '2024-06-09 14:59:56'),
(4, 'Mã người mới', 'FIRSTCOUPON', 10000, 0, 50000, '2050-10-28', '2024-06-13 14:06:26', '2024-06-13 14:06:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon_user`
--

CREATE TABLE `coupon_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_account` int(11) NOT NULL,
  `id_coupon` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupon_user`
--

INSERT INTO `coupon_user` (`id`, `id_account`, `id_coupon`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL),
(3, 4, 4, '2024-06-13 14:14:45', '2024-06-13 14:14:45'),
(4, 4, 2, '2024-06-13 14:17:20', '2024-06-13 14:17:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_order`
--

CREATE TABLE `detail_order` (
  `id_detail` int(10) UNSIGNED NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `code` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_color` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_order`
--

INSERT INTO `detail_order` (`id_detail`, `id_order`, `id_product`, `code`, `image`, `name`, `id_color`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(6, 26, 12, '935C7', 'be/img/product/sp94-1-1717409258.jpg', 'Hút mùi Canzy CZ 3470', 2, '2', 4000000, '2024-06-09 09:58:15', '2024-06-09 09:58:15'),
(7, 26, 1, '935C7', 'be/img/product/sp8-1-1717264168.png', 'Bếp ba từ BOSCH PUJ631BB2E', 1, '1', 14820000, '2024-06-09 09:58:15', '2024-06-09 09:58:15'),
(8, 29, 3, '47C0D', 'be/img/product/EH-IH566-anh-chinh-1717402950.png', 'Bếp ba từ Chefs EH-IH566', 1, '1', 22015000, '2024-06-09 14:59:29', '2024-06-09 14:59:29'),
(9, 29, 25, '47C0D', 'be/img/product/may-rua-chen-sm_main_307_1020.png-1717485764.webp', 'Máy rửa chén Bosch SMS63L08EA 12 bộ Series 6 - Châu Âu', 6, '1', 14030000, '2024-06-09 14:59:29', '2024-06-09 14:59:29'),
(10, 31, 23, '3FF9F', 'be/img/product/may-rua-chen-es_main_175_1020.png-1717485395.webp', 'Máy rửa chén Electrolux ESF6010BW 8 bộ', 2, '1', 8415000, '2024-06-09 15:14:20', '2024-06-09 15:14:20'),
(11, 43, 25, '3EC3D', 'be/img/product/may-rua-chen-sm_main_307_1020.png-1717485764.webp', 'Máy rửa chén Bosch SMS63L08EA 12 bộ Series 6 - Châu Âu', 6, '1', 14030000, '2024-06-13 08:32:29', '2024-06-13 08:32:29'),
(12, 44, 26, '33F63', 'be/img/product/may-rua-chen-53_main_178_1020.png-1717485901.webp', 'Máy rửa chén Hafele 538.21.190 6 bộ', 6, '2', 3955500, '2024-06-13 09:01:21', '2024-06-13 09:01:21'),
(13, 44, 13, '33F63', 'be/img/product/DWB07W651-anh-chinh-1717476313.jpg', 'Hút Mùi Treo Tường BOSCH DWB07W651', 2, '1', 13166500, '2024-06-13 09:01:21', '2024-06-13 09:01:21'),
(14, 45, 1, '653C7', 'be/img/product/sp8-1-1717264168.png', 'Bếp ba từ BOSCH PUJ631BB2E', 1, '1', 14820000, '2024-06-13 09:07:21', '2024-06-13 09:07:21'),
(15, 46, 23, '8F809', 'be/img/product/may-rua-chen-es_main_175_1020.png-1717485395.webp', 'Máy rửa chén Electrolux ESF6010BW 8 bộ', 2, '1', 8415000, '2024-06-16 09:51:18', '2024-06-16 09:51:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `favourite`
--

CREATE TABLE `favourite` (
  `id_favourite` int(10) UNSIGNED NOT NULL,
  `id_account` int(11) NOT NULL,
  `product_path` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `favourite`
--

INSERT INTO `favourite` (`id_favourite`, `id_account`, `product_path`, `created_at`, `updated_at`) VALUES
(2, 4, '|13|4|1|16|15|12|', '2024-06-06 10:23:30', '2024-06-15 15:04:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fee`
--

CREATE TABLE `fee` (
  `id_fee` int(10) UNSIGNED NOT NULL,
  `radius` int(11) NOT NULL,
  `weather` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fee`
--

INSERT INTO `fee` (`id_fee`, `radius`, `weather`, `fee`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nắng', 0, '2024-05-31 08:38:39', '2024-05-31 08:38:39'),
(2, 1, 'Mưa', 3000, '2024-05-31 08:38:45', '2024-05-31 08:38:45'),
(3, 5, 'Nắng', 5000, '2024-05-31 08:38:56', '2024-05-31 08:38:56'),
(4, 5, 'Mưa', 10000, '2024-05-31 08:44:45', '2024-05-31 09:08:01'),
(5, 10, 'Nắng', 12000, '2024-05-31 08:44:59', '2024-05-31 09:04:17'),
(6, 10, 'Mưa', 15000, '2024-05-31 08:45:04', '2024-05-31 09:08:48'),
(7, 15, 'Nắng', 25000, '2024-05-31 08:45:17', '2024-05-31 09:04:55'),
(8, 15, 'Mưa', 30000, '2024-05-31 08:45:22', '2024-05-31 09:09:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_29_153439_create_category', 1),
(6, '2024_05_30_025227_create_color', 2),
(7, '2024_05_30_030420_create_account', 3),
(8, '2024_05_30_030427_create_role', 3),
(9, '2024_05_31_151900_create_fee', 4),
(10, '2024_05_31_161520_create_banner', 5),
(11, '2024_06_01_090314_create_coupon', 6),
(12, '2024_06_01_153231_create_product', 7),
(13, '2024_06_02_091149_create_product_color', 8),
(14, '2024_06_05_084637_create_cart', 9),
(15, '2024_06_06_025437_create_review', 10),
(16, '2024_06_06_164300_create_favourite', 11),
(17, '2024_06_07_114132_create_coupon_user', 12),
(18, '2024_06_08_162048_create_order', 13),
(19, '2024_06_08_162714_create_detail_order', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_account` int(11) NOT NULL,
  `code` varchar(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `subtotal` int(11) NOT NULL,
  `feeship` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_updated` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id_order`, `id_account`, `code`, `fullname`, `phone`, `address`, `email`, `note`, `subtotal`, `feeship`, `discount`, `total`, `payment`, `status`, `date_updated`, `created_at`, `updated_at`) VALUES
(26, 4, '935C7', 'Nguyễn Thế Anh', '0399112333', 'Phố Vũ Tông Phan, Phường Khương Đình, Quận Thanh Xuân, Hà Nội', 'theanh@gmail.com', 'a', 22820000, 10000, 2282000, 20548000, 'Thanh toán bằng tiền mặt khi nhận hàng', 4, '2024-06-15', '2024-06-09 09:58:15', '2024-06-15 15:02:33'),
(29, 4, '47C0D', 'Tuấn', '0331112333', 'Phố Trường Chinh, Phường Khương Thượng, Quận Đống Đa, Hà Nội', 'tuan@gmail.com', '', 36045000, 12000, 3604500, 32452500, 'Thanh toán bằng ví điện tử (Momo)', 3, '2024-06-15', '2024-06-09 14:59:56', '2024-06-15 03:55:22'),
(31, 4, '3FF9F', 'Nguyễn Thái Nhân', '0331123312', 'Phố Ngô Quyền, Quận Hà Đông, Hà Nội', 'ntn@gmail.com', '', 8415000, 5000, 0, 8420000, 'Thanh toán bằng ví điện tử (VNPAY)', 3, '2024-06-15', '2024-06-09 15:14:20', '2024-06-15 04:11:58'),
(43, 4, '3EC3D', 'Quân', '0331123333', '', 'quan@gmail.com', '', 14030000, 0, 0, 14030000, 'Thanh toán khi đến cửa hàng', 3, '2024-06-15', '2024-06-13 08:32:29', '2024-06-15 04:11:39'),
(44, 4, '33F63', 'Tân', '0331123333', 'Phố Vũ Tông Phan, Phường Khương Đình, Quận Thanh Xuân, Hà Nội', 'tan@gmail', '', 21077500, 5000, 0, 21082500, 'Thanh toán bằng ví điện tử (Momo)', 0, '2024-06-13', '2024-06-13 09:01:21', '2024-06-13 09:01:21'),
(45, 4, '653C7', 'Thái', '0331112223', 'Phố Lê Hữu Trác, Phường Phúc La, Quận Hà Đông, Hà Nội', 'thai@gmail.com', '', 14820000, 5000, 0, 14825000, 'Thanh toán bằng ví điện tử (VNPAY)', 3, '2024-06-13', '2024-06-13 09:07:21', '2024-06-13 09:07:35'),
(46, 5, '8F809', 'Mai Anh Tuấn', '0311234113', '', 'mat@gmail.com', '', 8415000, 0, 0, 8415000, 'Thanh toán khi đến cửa hàng', 0, '2024-06-16', '2024-06-16 09:51:18', '2024-06-16 09:51:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_category` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `thumbnail_path` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `technical` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id_product`, `id_category`, `image`, `name`, `quantity`, `discount`, `price`, `thumbnail_path`, `description`, `technical`, `created_at`, `updated_at`) VALUES
(29, 25, 'be/img/product/kemlot1-1730821759.webp', 'Kem Lót Catrice The Vitamin C Fresh Glow Primer 30ml (Cam)', 20, 0, 170000, '|kemlot2-1730821774.webp|kemlot3-1730821774.webp|kemlot4-1730821774.webp|kemlot5-1730821774.webp|', '<h2>Thông tin sản phẩm</h2>\r\n\r\n<p>Nơi sản xuất</p>\r\n\r\n<p>Đức</p>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>CATRICE</p>\r\n\r\n<p>Kết cấu</p>\r\n\r\n<p>Dạng kem</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Đức</p>\r\n\r\n<p>Loại da</p>\r\n\r\n<p>Mọi loại da</p>', '<p><img alt=\"\" src=\"https://cocolux.com/storage/upload_image/images/san-pham/kem-lot-catrice-clean-id-vitamin-c-fresh-glow-primer-30ml.jpg\" /></p>\r\n\r\n<p>Kem Lót Catrice Clean ID Vitamin C Fresh Glow Primer 30ml sử dụng công thức chứa 94% thành phần thiên nhiên, đem đến sản phẩm trang điểm lành tính, an toàn với làn da. Trong đó, vitamin C giúp làm sáng và đều màu da, chống oxy hóa, bảo vệ da khỏi các tác nhân gây hại từ môi trường. Dầu hạt đào giúp dưỡng ẩm và bổ sung dưỡng chất cho da. Chiết xuất từ quả Kiwi giúp tăng cường dưỡng chất và vitamin cho da.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cocolux.com/storage/upload_image/images/san-pham/kem-lot-catrice-clean-id-vitamin-c-fresh-glow-primer-30ml-5.jpg\" /></p>\r\n\r\n<p>Catrice Clean ID Vitamin C Fresh Glow Primer có kết cấu dạng kem, mềm mịn, mỏng nhẹ, màu hồng đào, dễ tán đều trên da. Sản phẩm sẽ đem đến lớp nền khoẻ đẹp, không làm bít tắc lỗ chân lông.&nbsp;</p>', '2024-11-05 15:49:19', '2024-11-05 15:49:34'),
(30, 25, 'be/img/product/kemlotface-1730822112.webp', 'Kem Lót The Face Shop Air Cotton Makeup Base SPF30 PA++ 01 Mint (Xanh)', 10, 5, 100000, '|kemlotface-1730822122.webp|', '<p>Thương hiệu</p>\r\n\r\n<p>THE FACE SHOP</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Hàn Quốc</p>', '<h2>Mô tả sản phẩm</h2>\r\n\r\n<p>Kem Lót The Face Shop Air Cotton Makeup Base SPF30 PA++ là loại kem lót được đánh giá là có khả năng hiệu chỉnh màu sắc của da, nâng tone nhẹ nhàng giúp da trở nên rạng ngời, tươi tắn. Cùng với đó là chỉ số chống nắng SPF30 PA++ bảo vệ da khỏi những ảnh hưởng của ánh nắng mặt trời, nhất là vào mùa hè nắng gắt.</p>\r\n\r\n<p><img src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2022/09/images/products/1662437110798-kem-lot-the-face-shop-air-cotton-makeup-base-spf30-pa-01.jpeg\" /></p>\r\n\r\n<p>Nhìn chung công dụng của 2 loại kem lót khá giống nhau, đều có tác dụng làm đều màu da, cấp ẩm cho da và che đi những khuyết điểm giúp da sáng hồng, tươi tắn. Tuy nhiên thì màu tím sẽ thiên hơn về việc làm đều màu da và màu xanh sẽ hỗ trợ che khuyết điểm tốt hơn. Sản phẩm khiến khách hàng ấn tượng bởi khả năng giữ lớp make up mỏng nhẹ, lâu trôi trong suốt nhiều giờ.&nbsp;</p>\r\n\r\n<p>Hiện nay Cocolux đang có sẵn 2 tone:&nbsp;</p>\r\n\r\n<p>Loại da phù hợp: Mọi loại da</p>\r\n\r\n<p>-&nbsp;<strong>#01 Mint (Xanh lá) hương bạc hà:</strong>&nbsp;thích hợp cho làn da có sắc đỏ, da mụn</p>\r\n\r\n<p><img src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2022/09/images/products/1662437114616-kem-lot-the-face-shop-air-cotton-makeup-base-spf30-pa-5.jpeg\" /></p>\r\n\r\n<p>-&nbsp;<strong>#02 Lavender (Tím) hương lavender:</strong>&nbsp;thích hợp với làn da xanh xao, nhợt nhạt, thiếu sức sống giúp da hồng hào, tươi tắn và che đi những khuyết điểm trên da.</p>\r\n\r\n<p><img src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2022/09/images/products/1662437118364-kem-lot-the-face-shop-air-cotton-makeup-base-spf30-pa-6.jpeg\" /></p>\r\n\r\n<h2>Thành phần</h2>\r\n\r\n<p>Sản phẩm có thành phần chính là hạt Cotton seed với hàm lượng dưỡng chất cao cung cấp độ ẩm cho da để góp phần tạo nên lớp makeup hoàn hảo nhất.&nbsp; Ngoài ra còn có tác dụng giữ nước và kiểm soát lượng dầu tiết ra.&nbsp;</p>\r\n\r\n<p>Bên cạnh đó còn một số thành phần khác như: Cyclopentasiloxane, Cyclohexasiloxane, Titanium Dioxide…</p>', '2024-11-05 15:55:12', '2024-11-05 15:55:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review`
--

CREATE TABLE `review` (
  `id_review` int(10) UNSIGNED NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `rating` smallint(6) NOT NULL,
  `review` text NOT NULL,
  `id_reply` int(11) NOT NULL,
  `is_update` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `review`
--

INSERT INTO `review` (`id_review`, `id_product`, `id_account`, `fullname`, `rating`, `review`, `id_reply`, `is_update`, `created_at`, `updated_at`) VALUES
(1, 23, 4, 'Nguyễn Đình Minh Quân', 4, 'Đánh giá cao', 0, 0, '2024-06-05 21:11:41', '2024-06-05 21:11:41'),
(2, 23, 4, 'Nguyễn Đình Minh Quân', 4, 'Đánh giá cao', 0, 0, '2024-06-05 21:11:50', '2024-06-05 21:11:50'),
(3, 23, 4, 'Nguyễn Đình Tuấn', 4, 'Sử dụng rất tốt, hài lòng', 0, 0, '2024-06-05 21:14:15', '2024-06-05 21:14:15'),
(4, 23, 4, 'Bó Quách Đạt', 5, 'Hài lòng về sản phẩm này', 0, 0, '2024-06-05 21:15:03', '2024-06-05 21:15:03'),
(5, 23, 4, 'Nguyễn Thị Nga', 1, 'Chất lượng về sản phẩm chưa đạt đúng ý tôi', 0, 0, '2024-06-05 21:15:33', '2024-06-05 21:15:33'),
(6, 23, 4, 'Nguyễn Đình Minh Quân', 3, 'Khá hài lòng', 0, 0, '2024-06-05 21:30:13', '2024-06-05 21:30:13'),
(7, 23, 4, 'Trần Nam Anh', 4, 'Khá thích sản phẩm này', 0, 0, '2024-06-06 07:25:00', '2024-06-06 07:25:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id_role` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_admin` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id_role`, `name`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'Quản trị viên', 1, '2024-05-29 21:29:55', '2024-05-30 00:12:23'),
(2, 'Khách hàng', 0, '2024-05-29 21:30:02', '2024-05-30 00:12:43'),
(3, 'Nhân viên', 1, '2024-05-29 21:30:07', '2024-05-30 00:12:38'),
(5, 'Shipper', 1, '2024-05-30 00:09:50', '2024-05-30 00:11:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_account`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Chỉ mục cho bảng `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id_coupon`);

--
-- Chỉ mục cho bảng `coupon_user`
--
ALTER TABLE `coupon_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id_detail`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`id_favourite`);

--
-- Chỉ mục cho bảng `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id_fee`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`);

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
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Chỉ mục cho bảng `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id_account` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id_coupon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `coupon_user`
--
ALTER TABLE `coupon_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `id_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favourite`
--
ALTER TABLE `favourite`
  MODIFY `id_favourite` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `fee`
--
ALTER TABLE `fee`
  MODIFY `id_fee` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
