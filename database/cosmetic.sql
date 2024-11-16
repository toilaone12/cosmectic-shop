-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 16, 2024 lúc 06:18 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

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
(5, 2, 'tuan', 'Mai Anh Tuấn', 'tuan@gmail.com', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, '2024-06-15 16:47:37', '2024-06-16 14:20:29'),
(6, 2, 'tam', 'tam', 'tam@gmail.com', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', 1, '2024-11-06 12:47:15', '2024-11-06 12:47:27');

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
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, 'Mã người mới', 'FIRSTCOUPON', 9999, 0, 50000, '2050-10-28', '2024-06-13 14:06:26', '2024-11-07 14:48:00');

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
  `quantity` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_order`
--

INSERT INTO `detail_order` (`id_detail`, `id_order`, `id_product`, `code`, `image`, `name`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(18, 49, 29, '1474A', 'be/img/product/kemlot1-1730821759.webp', 'Kem Lót Catrice The Vitamin C Fresh Glow Primer 30ml (Cam)', '3', 170000, '2024-11-07 14:05:47', '2024-11-07 14:05:47'),
(19, 50, 30, '8DC89', 'be/img/product/kemlotface-1730822112.webp', 'Kem Lót The Face Shop Air Cotton Makeup Base SPF30 PA++ 01 Mint (Xanh)', '1', 95000, '2024-11-07 14:48:00', '2024-11-07 14:48:00');

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
(2, 4, '|13|4|1|16|15|12|', '2024-06-06 10:23:30', '2024-06-15 15:04:13'),
(3, 6, '|29|', '2024-11-06 13:09:03', '2024-11-06 13:09:03');

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
  `is_cancel` tinyint(4) NOT NULL,
  `date_updated` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id_order`, `id_account`, `code`, `fullname`, `phone`, `address`, `email`, `note`, `subtotal`, `feeship`, `discount`, `total`, `payment`, `status`, `is_cancel`, `date_updated`, `created_at`, `updated_at`) VALUES
(49, 6, '1474A', 'Tam', '0331123555', 'Hà Tĩnh', 'nguyenthimai@gmail.com', 'a', 510000, 1715000, 0, 2225000, 'Thanh toán bằng ví điện tử (VNPAY)', 3, 0, '2024-11-07', '2024-11-07 14:05:47', '2024-11-07 14:21:02'),
(50, 6, '8DC89', 'kiều đặng bảo sơn', '0386278998', '', 'thanh@gmail.com', '', 95000, 0, 50000, 45000, 'Thanh toán khi đến cửa hàng', 0, 0, '2024-11-07', '2024-11-07 14:48:00', '2024-11-07 14:48:00');

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
(29, 25, 'be/img/product/kemlot1-1730821759.webp', 'Kem Lót Catrice The Vitamin C Fresh Glow Primer 30ml (Cam)', 16, 0, 170000, '|kemlot2-1730821774.webp|kemlot3-1730821774.webp|kemlot4-1730821774.webp|kemlot5-1730821774.webp|', '<h2>Thông tin sản phẩm</h2>\r\n\r\n<p>Nơi sản xuất</p>\r\n\r\n<p>Đức</p>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>CATRICE</p>\r\n\r\n<p>Kết cấu</p>\r\n\r\n<p>Dạng kem</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Đức</p>\r\n\r\n<p>Loại da</p>\r\n\r\n<p>Mọi loại da</p>', '<p><img alt=\"\" src=\"https://cocolux.com/storage/upload_image/images/san-pham/kem-lot-catrice-clean-id-vitamin-c-fresh-glow-primer-30ml.jpg\" /></p>\r\n\r\n<p>Kem Lót Catrice Clean ID Vitamin C Fresh Glow Primer 30ml sử dụng công thức chứa 94% thành phần thiên nhiên, đem đến sản phẩm trang điểm lành tính, an toàn với làn da. Trong đó, vitamin C giúp làm sáng và đều màu da, chống oxy hóa, bảo vệ da khỏi các tác nhân gây hại từ môi trường. Dầu hạt đào giúp dưỡng ẩm và bổ sung dưỡng chất cho da. Chiết xuất từ quả Kiwi giúp tăng cường dưỡng chất và vitamin cho da.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cocolux.com/storage/upload_image/images/san-pham/kem-lot-catrice-clean-id-vitamin-c-fresh-glow-primer-30ml-5.jpg\" /></p>\r\n\r\n<p>Catrice Clean ID Vitamin C Fresh Glow Primer có kết cấu dạng kem, mềm mịn, mỏng nhẹ, màu hồng đào, dễ tán đều trên da. Sản phẩm sẽ đem đến lớp nền khoẻ đẹp, không làm bít tắc lỗ chân lông.&nbsp;</p>', '2024-11-05 15:49:19', '2024-11-07 14:05:47'),
(30, 25, 'be/img/product/kemlotface-1730822112.webp', 'Kem Lót The Face Shop Air Cotton Makeup Base SPF30 PA++ 01 Mint (Xanh)', 7, 5, 100000, '|kemlotface-1730822122.webp|', '<p>Thương hiệu</p>\r\n\r\n<p>THE FACE SHOP</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Hàn Quốc</p>', '<h2>Mô tả sản phẩm</h2>\r\n\r\n<p>Kem Lót The Face Shop Air Cotton Makeup Base SPF30 PA++ là loại kem lót được đánh giá là có khả năng hiệu chỉnh màu sắc của da, nâng tone nhẹ nhàng giúp da trở nên rạng ngời, tươi tắn. Cùng với đó là chỉ số chống nắng SPF30 PA++ bảo vệ da khỏi những ảnh hưởng của ánh nắng mặt trời, nhất là vào mùa hè nắng gắt.</p>\r\n\r\n<p><img src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2022/09/images/products/1662437110798-kem-lot-the-face-shop-air-cotton-makeup-base-spf30-pa-01.jpeg\" /></p>\r\n\r\n<p>Nhìn chung công dụng của 2 loại kem lót khá giống nhau, đều có tác dụng làm đều màu da, cấp ẩm cho da và che đi những khuyết điểm giúp da sáng hồng, tươi tắn. Tuy nhiên thì màu tím sẽ thiên hơn về việc làm đều màu da và màu xanh sẽ hỗ trợ che khuyết điểm tốt hơn. Sản phẩm khiến khách hàng ấn tượng bởi khả năng giữ lớp make up mỏng nhẹ, lâu trôi trong suốt nhiều giờ.&nbsp;</p>\r\n\r\n<p>Hiện nay Cocolux đang có sẵn 2 tone:&nbsp;</p>\r\n\r\n<p>Loại da phù hợp: Mọi loại da</p>\r\n\r\n<p>-&nbsp;<strong>#01 Mint (Xanh lá) hương bạc hà:</strong>&nbsp;thích hợp cho làn da có sắc đỏ, da mụn</p>\r\n\r\n<p><img src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2022/09/images/products/1662437114616-kem-lot-the-face-shop-air-cotton-makeup-base-spf30-pa-5.jpeg\" /></p>\r\n\r\n<p>-&nbsp;<strong>#02 Lavender (Tím) hương lavender:</strong>&nbsp;thích hợp với làn da xanh xao, nhợt nhạt, thiếu sức sống giúp da hồng hào, tươi tắn và che đi những khuyết điểm trên da.</p>\r\n\r\n<p><img src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2022/09/images/products/1662437118364-kem-lot-the-face-shop-air-cotton-makeup-base-spf30-pa-6.jpeg\" /></p>\r\n\r\n<h2>Thành phần</h2>\r\n\r\n<p>Sản phẩm có thành phần chính là hạt Cotton seed với hàm lượng dưỡng chất cao cung cấp độ ẩm cho da để góp phần tạo nên lớp makeup hoàn hảo nhất.&nbsp; Ngoài ra còn có tác dụng giữ nước và kiểm soát lượng dầu tiết ra.&nbsp;</p>\r\n\r\n<p>Bên cạnh đó còn một số thành phần khác như: Cyclopentasiloxane, Cyclohexasiloxane, Titanium Dioxide…</p>', '2024-11-05 15:55:12', '2024-11-07 14:48:00'),
(31, 25, 'be/img/product/kemlot1-1730896564.webp', 'Kem Lót Catrice Clean ID Vitamin C Fresh Glow Primer 30ml', 100, 10, 170000, '|kemlot2-1730896581.webp|kemlot3-1730896581.webp|kemlot4-1730896581.webp|kemlot5-1730896581.webp|', '<h2>Thông tin sản phẩm</h2>\r\n\r\n<p>Nơi sản xuất</p>\r\n\r\n<p>Đức</p>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>CATRICE</p>\r\n\r\n<p>Kết cấu</p>\r\n\r\n<p>Dạng kem</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Đức</p>\r\n\r\n<p>Loại da</p>\r\n\r\n<p>Mọi loại da</p>', '<h2>Mô tả sản phẩm</h2>\r\n\r\n<p><img alt=\"\" src=\"https://cocolux.com/storage/upload_image/images/san-pham/kem-lot-catrice-clean-id-vitamin-c-fresh-glow-primer-30ml.jpg\" /></p>\r\n\r\n<p>Kem Lót Catrice Clean ID Vitamin C Fresh Glow Primer 30ml sử dụng công thức chứa 94% thành phần thiên nhiên, đem đến sản phẩm trang điểm lành tính, an toàn với làn da. Trong đó, vitamin C giúp làm sáng và đều màu da, chống oxy hóa, bảo vệ da khỏi các tác nhân gây hại từ môi trường. Dầu hạt đào giúp dưỡng ẩm và bổ sung dưỡng chất cho da. Chiết xuất từ quả Kiwi giúp tăng cường dưỡng chất và vitamin cho da.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cocolux.com/storage/upload_image/images/san-pham/kem-lot-catrice-clean-id-vitamin-c-fresh-glow-primer-30ml-5.jpg\" /></p>\r\n\r\n<p>Catrice Clean ID Vitamin C Fresh Glow Primer có kết cấu dạng kem, mềm mịn, mỏng nhẹ, màu hồng đào, dễ tán đều trên da. Sản phẩm sẽ đem đến lớp nền khoẻ đẹp, không làm bít tắc lỗ chân lông.&nbsp;</p>', '2024-11-06 12:36:04', '2024-11-06 12:36:21'),
(32, 25, 'be/img/product/focallure1-1730897188.webp', 'Kem Lót Focallure Glowmax Hydrating Primer Cấp Ẩm Sáng Da - #2', 66, 1, 85000, '|focallure2-1730897195.webp|focallure3-1730897195.webp|focallure4-1730897195.webp|focallure5-1730897195.webp|', '<h2>Thông tin sản phẩm</h2>\r\n\r\n<p>Nơi sản xuất</p>\r\n\r\n<p>Trung Quốc</p>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>FOCALLURE</p>\r\n\r\n<p>Đặc tính</p>\r\n\r\n<p>Chống Thấm Nước</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Trung Quốc</p>', '<h2>Mô tả sản phẩm</h2>\r\n\r\n<p>Focallure là một thương hiệu mỹ phẩm nội địa Trung được thành lập vào năm 2020 và dần được ưa chuộng tại Việt Nam từ năm 2021. Những dòng sản phẩm của Focallure được yêu thích có thể kể đến từ son màu, phấn mắt, phấn má, kem nền… nhờ thiết kế trẻ trung, năng động, bảng thành phần an toàn và mức giá bình dân, phù hợp với nhiều đối tượng sử dụng. Trong số đó, không thể không nhắc đến Kem Lót Focallure Glowmax Hydrating Primer Cấp Ẩm Sáng Da - #2 đã và đang rất được ưa chuộng hiện nay.</p>\r\n\r\n<p><img alt=\"image\" src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2023/02/images/products/1676857505196-kem-lot-focallure-glowmax-hydrating-primer-cap-am-sang-da-0.jpeg\" /></p>\r\n\r\n<p>Kem lót Focallure Glowmax Hydrating Primer nổi bật với thiết kế bắt mắt, thời thượng và đặc biệt sang trọng. Kem lót này không gây bít tắc lỗ chân lông hay châm chích da mỗi lần dùng. Sản phẩm có kết cấu dạng kem mỏng nhẹ, thẩm thấu nhanh trên da mà không gây cảm giác nhờn dính.&nbsp;</p>\r\n\r\n<p><img alt=\"image\" src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2023/02/images/products/1676857515838-kem-lot-focallure-glowmax-hydrating-primer-cap-am-sang-da-4.jpeg\" /></p>\r\n\r\n<p>Kem lót Focallure giúp nâng tông cực hiệu quả, tệp nhanh vào da mà không gây cảm giác bị sáng hay bóng quá mức. Sản phẩm giúp kiểm soát lượng dầu thừa trên da tốt, hạn chế tình trạng nền bị khô căng hay bong tróc trên da. Bảng thành phần chiết xuất thiên nhiên, an toàn, lành tính giúp chống oxy hóa, ngăn ngừa lão hóa da hiệu quả.</p>\r\n\r\n<p><img alt=\"image\" src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2023/02/images/products/1676857522436-kem-lot-focallure-glowmax-hydrating-primer-cap-am-sang-da-7.jpeg\" /></p>', '2024-11-06 12:46:28', '2024-11-06 12:46:35'),
(33, 26, 'be/img/product/kemnen1-1730989919.webp', 'Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu: 008', 15, 5, 210000, '|kemnen2-1730989927.webp|kemnen3-1730989927.webp|kemnen4-1730989927.webp|', '<h2>Thông tin sản phẩm</h2>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>CATRICE</p>\r\n\r\n<p>Đặc tính</p>\r\n\r\n<p>Dạng Lì</p>\r\n\r\n<p>Vấn đề về da</p>\r\n\r\n<p>Da xỉn màu</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Đức</p>', '<h2>Mô tả sản phẩm</h2>\r\n\r\n<p>Kem Nền Catrice HD Liquid Coverage Foundation là sản phẩm “best seller” của thương hiệu mỹ phẩm Catrice.</p>\r\n\r\n<p><img src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2022/08/images/products/1659895477488-kem-nen-che-catrice-hd-liquid-coverage-foundation-2.jpeg\" /></p>\r\n\r\n<p>&nbsp;Với điểm cộng là độ bền, độ kiềm dầu 24h cùng lớp nền mỏng nhẹ, che phủ mọi khuyết điểm, sản phẩm đã thật sự tạo nên một lớp nền hoàn hảo, bất chấp tia UV, độ ẩm, mồ hôi giúp bạn tự tin suốt 1 ngày dài.</p>\r\n\r\n<p>Thiết kế sản phẩm 30ml nhỏ gọn, được làm bằng thuỷ tinh nên có thể xem được lượng kem bên trong. Phần nắp dạng ống nhỏ giọt giống như lọ serum giúp bạn điều chỉnh được lượng kem lấy ra theo nhu cầu của mình. Nhìn chung, đây là một thiết kế khá thông minh của hãng, vừa dễ dùng lại toát lên được sự sang trọng, tinh tế đến từng chi tiết.</p>\r\n\r\n<p>Hiện Cocolux đang phân phối 7 mã phù hợp với các tone da khác nhau gồm:</p>\r\n\r\n<ul>\r\n	<li><strong>Kem Nền Catrice HD Liquid Coverage Foundation #10 Light Beige</strong>: dành cho tone da trắng.</li>\r\n	<li><strong>Kem Nền Catrice HD Liquid Coverage Foundation #20 Rose Beige</strong>: dành cho tone da tự nhiên.</li>\r\n	<li><strong>Kem Nền Catrice HD Liquid Coverage Foundation #30 Sand Beige</strong>: dành cho tone da tự nhiên, trung tính.</li>\r\n	<li><strong>Kem Nền Catrice HD Liquid Coverage Foundation #40 Warm Beige</strong>: dành cho tone da ngăm.</li>\r\n</ul>\r\n\r\n<p><img src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2022/08/images/products/1659895487084-kem-nen-che-catrice-hd-liquid-coverage-foundation-3.jpeg\" /></p>\r\n\r\n<p><strong>Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu 002 Porcelain Beige</strong>: dành cho da trắng.&nbsp;</p>\r\n\r\n<p><img alt=\"Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu: 002\" src=\"https://cocolux.com/storage/upload_image/images/kem-nen-catrice-hd-liquid-coverage-foundation-30ml-mau-005.jpg\" /></p>\r\n\r\n<p><strong>Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu 005 Ivory Beige</strong>: dành cho da trắng hồng.</p>\r\n\r\n<p><strong><img alt=\"Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu: 005\" src=\"https://cocolux.com/storage/upload_image/images/kem-nen-catrice-hd-liquid-coverage-foundation-30ml-mau-005%20(2).jpg\" /></strong></p>\r\n\r\n<p><strong>Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu 008 Fair Beige</strong>: dành cho da trung bình sáng.</p>\r\n\r\n<p><strong><img alt=\"Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu: 008\" src=\"https://cocolux.com/storage/upload_image/images/kem-nen-catrice-hd-liquid-coverage-foundation-30ml-mau-008.jpg\" /></strong></p>', '2024-11-07 14:31:59', '2024-11-07 14:32:07'),
(34, 26, 'be/img/product/kemnen1-1730990057.webp', 'Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu: 005', 22, 10, 215000, '|kemnen2-1730990064.webp|kemnen3-1730990064.webp|kemnen4-1730990064.webp|', '<h2>Thông tin sản phẩm</h2>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>CATRICE</p>\r\n\r\n<p>Đặc tính</p>\r\n\r\n<p>Dạng Lì</p>\r\n\r\n<p>Vấn đề về da</p>\r\n\r\n<p>Da xỉn màu</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Đức</p>', '<h2>Mô tả sản phẩm</h2>\r\n\r\n<p>Kem Nền Catrice HD Liquid Coverage Foundation là sản phẩm “best seller” của thương hiệu mỹ phẩm Catrice.</p>\r\n\r\n<p><img src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2022/08/images/products/1659895477488-kem-nen-che-catrice-hd-liquid-coverage-foundation-2.jpeg\" /></p>\r\n\r\n<p>&nbsp;Với điểm cộng là độ bền, độ kiềm dầu 24h cùng lớp nền mỏng nhẹ, che phủ mọi khuyết điểm, sản phẩm đã thật sự tạo nên một lớp nền hoàn hảo, bất chấp tia UV, độ ẩm, mồ hôi giúp bạn tự tin suốt 1 ngày dài.</p>\r\n\r\n<p>Thiết kế sản phẩm 30ml nhỏ gọn, được làm bằng thuỷ tinh nên có thể xem được lượng kem bên trong. Phần nắp dạng ống nhỏ giọt giống như lọ serum giúp bạn điều chỉnh được lượng kem lấy ra theo nhu cầu của mình. Nhìn chung, đây là một thiết kế khá thông minh của hãng, vừa dễ dùng lại toát lên được sự sang trọng, tinh tế đến từng chi tiết.</p>\r\n\r\n<p>Hiện Cocolux đang phân phối 7 mã phù hợp với các tone da khác nhau gồm:</p>\r\n\r\n<ul>\r\n	<li><strong>Kem Nền Catrice HD Liquid Coverage Foundation #10 Light Beige</strong>: dành cho tone da trắng.</li>\r\n	<li><strong>Kem Nền Catrice HD Liquid Coverage Foundation #20 Rose Beige</strong>: dành cho tone da tự nhiên.</li>\r\n	<li><strong>Kem Nền Catrice HD Liquid Coverage Foundation #30 Sand Beige</strong>: dành cho tone da tự nhiên, trung tính.</li>\r\n	<li><strong>Kem Nền Catrice HD Liquid Coverage Foundation #40 Warm Beige</strong>: dành cho tone da ngăm.</li>\r\n</ul>\r\n\r\n<p><img src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2022/08/images/products/1659895487084-kem-nen-che-catrice-hd-liquid-coverage-foundation-3.jpeg\" /></p>\r\n\r\n<p><strong>Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu 002 Porcelain Beige</strong>: dành cho da trắng.&nbsp;</p>\r\n\r\n<p><img alt=\"Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu: 002\" src=\"https://cocolux.com/storage/upload_image/images/kem-nen-catrice-hd-liquid-coverage-foundation-30ml-mau-005.jpg\" /></p>\r\n\r\n<p><strong>Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu 005 Ivory Beige</strong>: dành cho da trắng hồng.</p>\r\n\r\n<p><strong><img alt=\"Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu: 005\" src=\"https://cocolux.com/storage/upload_image/images/kem-nen-catrice-hd-liquid-coverage-foundation-30ml-mau-005%20(2).jpg\" /></strong></p>\r\n\r\n<p><strong>Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu 008 Fair Beige</strong>: dành cho da trung bình sáng.</p>\r\n\r\n<p><strong><img alt=\"Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu: 008\" src=\"https://cocolux.com/storage/upload_image/images/kem-nen-catrice-hd-liquid-coverage-foundation-30ml-mau-008.jpg\" /></strong></p>', '2024-11-07 14:34:17', '2024-11-07 14:34:24'),
(35, 26, 'be/img/product/kemnen1-1730990260.webp', 'Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu: 002', 55, 10, 220000, '|kemnen2-1730990269.webp|kemnen3-1730990269.webp|kemnen4-1730990269.webp|', '<h2>Thông tin sản phẩm</h2>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>CATRICE</p>\r\n\r\n<p>Đặc tính</p>\r\n\r\n<p>Dạng Lì</p>\r\n\r\n<p>Vấn đề về da</p>\r\n\r\n<p>Da xỉn màu</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Đức</p>', '<h2>Mô tả sản phẩm</h2>\r\n\r\n<p>Kem Nền Catrice HD Liquid Coverage Foundation là sản phẩm “best seller” của thương hiệu mỹ phẩm Catrice.</p>\r\n\r\n<p><img src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2022/08/images/products/1659895477488-kem-nen-che-catrice-hd-liquid-coverage-foundation-2.jpeg\" /></p>\r\n\r\n<p>&nbsp;Với điểm cộng là độ bền, độ kiềm dầu 24h cùng lớp nền mỏng nhẹ, che phủ mọi khuyết điểm, sản phẩm đã thật sự tạo nên một lớp nền hoàn hảo, bất chấp tia UV, độ ẩm, mồ hôi giúp bạn tự tin suốt 1 ngày dài.</p>\r\n\r\n<p>Thiết kế sản phẩm 30ml nhỏ gọn, được làm bằng thuỷ tinh nên có thể xem được lượng kem bên trong. Phần nắp dạng ống nhỏ giọt giống như lọ serum giúp bạn điều chỉnh được lượng kem lấy ra theo nhu cầu của mình. Nhìn chung, đây là một thiết kế khá thông minh của hãng, vừa dễ dùng lại toát lên được sự sang trọng, tinh tế đến từng chi tiết.</p>\r\n\r\n<p>Hiện Cocolux đang phân phối 7 mã phù hợp với các tone da khác nhau gồm:</p>\r\n\r\n<ul>\r\n	<li><strong>Kem Nền Catrice HD Liquid Coverage Foundation #10 Light Beige</strong>: dành cho tone da trắng.</li>\r\n	<li><strong>Kem Nền Catrice HD Liquid Coverage Foundation #20 Rose Beige</strong>: dành cho tone da tự nhiên.</li>\r\n	<li><strong>Kem Nền Catrice HD Liquid Coverage Foundation #30 Sand Beige</strong>: dành cho tone da tự nhiên, trung tính.</li>\r\n	<li><strong>Kem Nền Catrice HD Liquid Coverage Foundation #40 Warm Beige</strong>: dành cho tone da ngăm.</li>\r\n</ul>\r\n\r\n<p><img src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2022/08/images/products/1659895487084-kem-nen-che-catrice-hd-liquid-coverage-foundation-3.jpeg\" /></p>\r\n\r\n<p><strong>Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu 002 Porcelain Beige</strong>: dành cho da trắng.&nbsp;</p>\r\n\r\n<p><img alt=\"Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu: 002\" src=\"https://cocolux.com/storage/upload_image/images/kem-nen-catrice-hd-liquid-coverage-foundation-30ml-mau-005.jpg\" /></p>\r\n\r\n<p><strong>Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu 005 Ivory Beige</strong>: dành cho da trắng hồng.</p>\r\n\r\n<p><strong><img alt=\"Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu: 005\" src=\"https://cocolux.com/storage/upload_image/images/kem-nen-catrice-hd-liquid-coverage-foundation-30ml-mau-005%20(2).jpg\" /></strong></p>\r\n\r\n<p><strong>Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu 008 Fair Beige</strong>: dành cho da trung bình sáng.</p>\r\n\r\n<p><strong><img alt=\"Kem Nền Catrice HD Liquid Coverage Foundation 30ml - Màu: 008\" src=\"https://cocolux.com/storage/upload_image/images/kem-nen-catrice-hd-liquid-coverage-foundation-30ml-mau-008.jpg\" /></strong></p>', '2024-11-07 14:37:40', '2024-11-07 14:37:49'),
(36, 20, 'be/img/product/mas1-1730990387.webp', 'Mascara Silkygirl Lash Squad Serum Waterproof Làm Dày Dài Và Cong Mi 4ml - 01 Intense Black', 100, 0, 198000, '|mas2-1730990395.webp|mas3-1730990395.webp|mas4-1730990395.webp|mas5-1730990395.webp|', '<h2>Thông tin sản phẩm</h2>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>SILKYGIRL</p>\r\n\r\n<p>Đặc tính</p>\r\n\r\n<p>Cong Mi</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Thái Lan</p>', '<h2>Mô tả sản phẩm</h2>\r\n\r\n<p>Mascara Silkygirl Lash Squad Serum Waterproof làm dày dài và cong mi 4ml - 01 Intense Black nổi bật với khả năng làm dài, dày và cong mi vượt trội. Sản phẩm ứng dụng công nghệ Pro-serum cùng đầu cọ thông minh, giúp mi dài gấp đôi, dày đến 8 lần và cong 30 độ tự nhiên.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cocolux.com/storage/upload_image/images/mascara-silkygirl-lash-squad-serum-waterproof.jpg\" /></p>\r\n\r\n<p>Mascara có khả năng chống lem, chống trôi và chứa các dưỡng chất như chiết xuất hạt hoa hồng, Vitamin B5, lô hội, nuôi dưỡng mi chắc khỏe và giảm rụng mi. Với khả năng khóa giữ mi cong suốt nhiều giờ, sản phẩm còn kiểm soát dầu nhờn hiệu quả, giúp lớp trang điểm bền lâu.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cocolux.com/storage/upload_image/images/mascara-silkygirl-lash-squad-serum-waterproof-2.jpg\" /></p>\r\n\r\n<p>Đầu cọ đặc biệt giúp tách rời từng sợi mi, tạo cảm giác tự nhiên mà không vón cục. Thành phần lành tính, phù hợp cho cả làn da nhạy cảm, mang lại làn mi dài, dày, cong quyến rũ và an toàn cho người dùng.</p>', '2024-11-07 14:39:47', '2024-11-07 14:42:50'),
(37, 20, 'be/img/product/mas6-1730990614.webp', 'Mascara Loreal Paris Lash Paradise Waterproof Mascara - 204 Black', 66, 2, 319000, '|mas7-1730990624.webp|mas8-1730990624.webp|mas9-1730990624.webp|', '<h2>Thông tin sản phẩm</h2>\r\n\r\n<p>Nơi sản xuất</p>\r\n\r\n<p>Pháp</p>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>L\'ORÉAL</p>\r\n\r\n<p>Đặc tính</p>\r\n\r\n<p>Dài Và Dày Mi</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Pháp</p>', '<h2>Mô tả sản phẩm</h2>\r\n\r\n<p><img src=\"https://cocolux.com/storage/upload_image/images/cdn_images/2022/08/images/products/1660981231918-mascara-voluminous-lash-paradise-loreal2048x2048-2.jpeg\" /></p>\r\n\r\n<p>Mascara Loreal Paris Lash Paradise Mascara được cải tiến từ dòng mascara được nhiều thợ make up ưa chuộng - L’Oreal Paris OG Voluminous Mascara. Với thiết kế đầu chổi có dạng đồng hồ cát cùng hàng trăm sợi lông cứng, sản phẩm giúp “chiều lòng” cả những hàng lông mi mỏng và “khó nhằn” nhất. Bên cạnh đó, khả năng chống thấm nước cũng là ưu điểm khiến dòng mascara này được hội beauty blogger review nhiệt tình.&nbsp;</p>\r\n\r\n<p>Hiện sản phẩm đang được phân phối tại Cocolux với 2 phân loại:&nbsp;Mascara Loreal Paris Voluminous Lash Paradise Mascara 8.5ml và&nbsp;Mascara Loreal Paris Lash Paradise Waterproof Mascara - 204 Black.</p>', '2024-11-07 14:43:34', '2024-11-07 14:43:44'),
(38, 20, 'be/img/product/mas10-1731776954.webp', 'Tẩy trang Mascara Milk Touch All Day Super Melting', 155, 0, 190000, '|mas11-1731776966.webp|mas12-1731776966.webp|mas13-1731776966.webp|mas14-1731776966.webp|mas15-1731776966.webp|', '<h2>Thông tin sản phẩm</h2>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>Milk Touch</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Hàn Quốc</p>', '<h2>Mô tả sản phẩm</h2>\r\n\r\n<p>Tẩy trang Mascara Milk Touch All Day Super Melting là sản phẩm chuyên dụng giúp làm sạch lớp mascara siêu bền một cách dễ dàng và hiệu quả. Với thiết kế đầu cọ dài 2 đoạn độc đáo, sản phẩm cho phép tiếp cận và làm sạch từng sợi mi từ gốc đến ngọn, mang lại trải nghiệm tẩy trang tối ưu mà không cần sử dụng bông tẩy trang.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cocolux.com/storage/upload_image/images/tay-trang-mascara-milk-touch-all-day-super-melting-lam-sach-lan-mi-6.jpg\" /></p>\r\n\r\n<p>Công thức của sản phẩm không chứa hương liệu và chất tạo màu, đảm bảo an toàn cho da nhạy cảm và vùng da quanh mắt. Các thành phần dưỡng mi tự nhiên như dầu olive, dầu dừa, dầu thầu dầu, dầu jojoba và dầu tầm xuân giúp dưỡng ẩm, chống oxy hóa và bảo vệ làn mi khỏi các tác nhân gây hại từ môi trường. Tẩy trang Mascara Milk Touch All Day Super Melting giữ cho làn mi sạch khỏe và đẹp tự nhiên.</p>', '2024-11-16 17:09:14', '2024-11-16 17:09:26'),
(39, 20, 'be/img/product/m1-1731777133.webp', 'Mascara Milk Touch All Day Long And Curl - Dài Và Cong', 66, 15, 195000, '|m2-1731777141.webp|m3-1731777141.webp|m4-1731777141.webp|m5-1731777141.webp|', '<h2>Thông tin sản phẩm</h2>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>Milk Touch</p>\r\n\r\n<p>Đặc tính</p>\r\n\r\n<p>Cong Mi</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Hàn Quốc</p>\r\n\r\n<p>Loại da</p>\r\n\r\n<p>Mọi loại da</p>', '<h2>Mô tả sản phẩm</h2>\r\n\r\n<p>Mascara Milk Touch All Day Long And Curl là một trong những sản phẩm mascara được yêu thích hiện nay, đặc biệt phù hợp với những bạn sở hữu hàng mi thẳng và muốn có đôi mắt to tròn, long lanh. Với công thức độc đáo và thiết kế cọ thông minh, sản phẩm này giúp bạn dễ dàng tạo nên hàng mi cong vút, dài miên man và giữ nếp suốt cả ngày.</p>\r\n\r\n<p><img alt=\"Mô tả Mascara Milk Touch All Day Long And Curl - Dài Và Cong\" src=\"https://cocolux.com/storage/upload_image/images/mo-ta-mascara-milk-touch-all-day-long-and-curl-dai-va-cong.jpg\" /></p>', '2024-11-16 17:12:13', '2024-11-16 17:12:21'),
(40, 20, 'be/img/product/m6-1731777216.webp', 'Mascara Lông Mày Peripera Speedy Skinny Brow Mascara #04 Ash Brown', 55, 27, 150000, '|m6-1731777270.webp|m7-1731777224.webp|', '<h2>Thông tin sản phẩm</h2>\r\n\r\n<p>Nơi sản xuất</p>\r\n\r\n<p>Hàn Quốc</p>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>PERIPERA</p>\r\n\r\n<p>Đặc tính</p>\r\n\r\n<p>Có Màu</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Hàn Quốc</p>', '<h2>Mô tả sản phẩm</h2>\r\n\r\n<p><strong>Peripera Speedy Skinny Brow Mascara</strong>&nbsp;là một loại mascara thiết kế đặc biệt để chăm sóc và tạo kiểu cho lông mày. Sản phẩm thuộc thương hiệu&nbsp;<strong>Peripera</strong>, một thương hiệu nổi tiếng của Hàn Quốc với các sản phẩm làm đẹp chất lượng cao và thiết kế dễ thương.</p>\r\n\r\n<p>Mascara có thiết kế đơn giản với dạng ống dài, mỏng, màu sắc nắp trùng với màu mascara bên trong. Điểm nổi bật nhất là đầu cọ mỏng, cong góc 15 độ, giúp cho việc kẻ mày trở nên chính xác, đặc biệt là khi fill in những chỗ lông mày thưa.</p>\r\n\r\n<p>Hiện tại Cocolux đang có sẵn 2 màu sau:</p>\r\n\r\n<ul>\r\n	<li><strong>02 Dark Brown: Màu nâu tối</strong></li>\r\n</ul>\r\n\r\n<p><img alt=\"Mascara Lông Mày Peripera Speedy Skinny Brow Mascara #02 Dark Brown\" src=\"https://cocolux.com/storage/upload_image/images/mascara-long-may-peripera-speedy-skinny-brow-mascara-02-dark-brown-3(1).jpg\" /></p>\r\n\r\n<ul>\r\n	<li><strong>04 Ash Brown: Màu nâu sáng</strong></li>\r\n</ul>\r\n\r\n<p><strong><img alt=\"Mascara Lông Mày Peripera Speedy Skinny Brow Mascara #04 Ash Brown\" src=\"https://cocolux.com/storage/upload_image/images/mascara-long-may-peripera-speedy-skinny-brow-mascara-04-ash-brown-2.jpg\" /></strong></p>', '2024-11-16 17:13:36', '2024-11-16 17:14:30'),
(41, 20, 'be/img/product/m8-1731777400.webp', 'Mascara Lông Mày Peripera Speedy Skinny Brow Mascara #02 Dark Brown', 55, 30, 150000, '|m8-1731777409.webp|m9-1731777409.webp|', '<h2>Thông tin sản phẩm</h2>\r\n\r\n<p>Nơi sản xuất</p>\r\n\r\n<p>Hàn Quốc</p>\r\n\r\n<p>Thương hiệu</p>\r\n\r\n<p>PERIPERA</p>\r\n\r\n<p>Đặc tính</p>\r\n\r\n<p>Có Màu</p>\r\n\r\n<p>Xuất xứ thương hiệu</p>\r\n\r\n<p>Hàn Quốc</p>', '<h2>Mô tả sản phẩm</h2>\r\n\r\n<p><strong>Peripera Speedy Skinny Brow Mascara</strong>&nbsp;là một loại mascara thiết kế đặc biệt để chăm sóc và tạo kiểu cho lông mày. Sản phẩm thuộc thương hiệu&nbsp;<strong>Peripera</strong>, một thương hiệu nổi tiếng của Hàn Quốc với các sản phẩm làm đẹp chất lượng cao và thiết kế dễ thương.</p>\r\n\r\n<p>Mascara có thiết kế đơn giản với dạng ống dài, mỏng, màu sắc nắp trùng với màu mascara bên trong. Điểm nổi bật nhất là đầu cọ mỏng, cong góc 15 độ, giúp cho việc kẻ mày trở nên chính xác, đặc biệt là khi fill in những chỗ lông mày thưa.</p>\r\n\r\n<p>Hiện tại Cocolux đang có sẵn 2 màu sau:</p>\r\n\r\n<ul>\r\n	<li><strong>02 Dark Brown: Màu nâu tối</strong></li>\r\n</ul>\r\n\r\n<p><img alt=\"Mascara Lông Mày Peripera Speedy Skinny Brow Mascara #02 Dark Brown\" src=\"https://cocolux.com/storage/upload_image/images/mascara-long-may-peripera-speedy-skinny-brow-mascara-02-dark-brown-3(1).jpg\" /></p>\r\n\r\n<ul>\r\n	<li><strong>04 Ash Brown: Màu nâu sáng</strong></li>\r\n</ul>\r\n\r\n<p><strong><img alt=\"Mascara Lông Mày Peripera Speedy Skinny Brow Mascara #04 Ash Brown\" src=\"https://cocolux.com/storage/upload_image/images/mascara-long-may-peripera-speedy-skinny-brow-mascara-04-ash-brown-2.jpg\" /></strong></p>', '2024-11-16 17:16:40', '2024-11-16 17:16:49');

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
(7, 23, 4, 'Trần Nam Anh', 4, 'Khá thích sản phẩm này', 0, 0, '2024-06-06 07:25:00', '2024-06-06 07:25:00'),
(8, 33, 6, 'tam', 4, 'a', 0, 0, '2024-11-07 14:35:40', '2024-11-07 14:35:40'),
(9, 33, 6, 'tam', 4, 'b', 0, 0, '2024-11-07 14:35:49', '2024-11-07 14:35:49');

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
  MODIFY `id_account` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `id_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favourite`
--
ALTER TABLE `favourite`
  MODIFY `id_favourite` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
