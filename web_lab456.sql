-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 14, 2023 lúc 02:04 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_lab456`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'webmysqli', '25f9e794323b453885f5181f1b624d0b', 1),
(2, 'baoadmin123', '25f9e794323b453885f5181f1b624d0b', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(1, 'Alo bài viết mới ', '<p>Tin covid h&ocirc;m nay được cập nhật hằng ng&agrave;y với số ca nhiễm giảm dần tại tphcm v&agrave; c&aacute;c tỉnh th&agrave;nh l&acirc;n cận...</p>\r\n', '<p>dsadasdasdasdas</p>\r\n', 5, 1, '1680787742_banner1.jpg'),
(2, 'Alo bài viết mới 123', '<p>dsad</p>\r\n', '<p>asdasd</p>\r\n', 4, 1, '1680787729_xnk.jpg'),
(4, 'Alo bài viết mới bóng đá', '<p>fsdfsdf</p>\r\n', '<p>fdsfsdfsdf</p>\r\n', 2, 1, '1680787712_a.jpg'),
(5, 'Tin covid hôm nay', '<p>Tin covid h&ocirc;m nay được cập nhật hằng ng&agrave;y với số ca nhiễm giảm dần tại tphcm v&agrave; c&aacute;c tỉnh th&agrave;nh l&acirc;n cận...</p>\r\n', '<p>T&iacute;nh từ đầu th&aacute;ng 7 đến nay, th&agrave;nh phố đ&atilde; th&agrave;nh lập 16 bệnh viện d&atilde; chiến với quy m&ocirc; khoảng 37.000 giường, nhiệm vụ ch&iacute;nh l&agrave; tiếp nhận, điều trị F0 kh&ocirc;ng c&oacute; triệu chứng hoặc c&oacute; biểu hiện nhẹ. T&iacute;nh đến ng&agrave;y 8/10, th&agrave;nh phố ghi nhận 9.443 F0 đang điều trị tại c&aacute;c cơ sở n&agrave;y.</p>\r\n\r\n<p>Sở Y tế TP.HCM cho biết c&aacute;c bệnh viện d&atilde; chiến được trưng dụng từ khu nh&agrave; t&aacute;i định cư, k&yacute; t&uacute;c x&aacute; của trường đại học, cao đẳng n&ecirc;n kh&ocirc;ng thể sử dụng l&acirc;u d&agrave;i. Nhất l&agrave; trong bối cảnh dịch bệnh cơ bản được kiểm so&aacute;t, học sinh, sinh vi&ecirc;n bắt đầu trở lại học tập.</p>\r\n\r\n<p>Bệnh viện d&atilde; chiến số 5 (đặt tại Thuận Kiều Plaza, quận 5) l&agrave; một trong 4 bệnh viện d&atilde; chiến ngừng hoạt động sau c&ugrave;ng. Ảnh: Phạm Ng&ocirc;n.</p>\r\n\r\n<p><img alt=\"Benh vien da chien o TP.HCM anh 1\" src=\"https://znews-photo.zadn.vn/w1920/Uploaded/yfsgs/2021_07_14/covid_zing.jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p><br />\r\nNguy&ecirc;n nh&acirc;n l&agrave; những bệnh viện n&agrave;y đ&atilde; được đầu tư hệ thống oxy lỏng, giường hồi sức để tiếp nhận F0 nặng.Dự kiến, c&aacute;c bệnh viện d&atilde; chiến th&agrave;nh phố lần lượt sẽ ngừng hoạt động v&agrave;o cuối th&aacute;ng 10, th&aacute;ng 11 v&agrave; th&aacute;ng 12 năm nay. Ri&ecirc;ng Bệnh viện d&atilde; chiến số 3, số 6, số 8 ở khu t&aacute;i định cư Thủ Thi&ecirc;m (An Kh&aacute;nh, TP Thủ Đức) sẽ l&agrave; những cơ sở ngừng hoạt động cuối c&ugrave;ng, dự kiến v&agrave;o cuối th&aacute;ng 12.</p>\r\n\r\n<p>Ngo&agrave;i ra, Bệnh viện d&atilde; chiến số 5 (đặt tại Thuận Kiều Plaza, quận 5) cũng trong danh s&aacute;ch cơ sở d&atilde; chiến ngừng hoạt động sau c&ugrave;ng. Bệnh viện n&agrave;y phụ tr&aacute;ch tiếp nhận c&aacute;c trường hợp F0 mức độ nhẹ v&agrave; trung b&igrave;nh từ c&aacute;c bệnh viện trong khu vực trung t&acirc;m th&agrave;nh phố (Bệnh viện Nguyễn Tr&atilde;i, Nguyễn Tri Phương, An B&igrave;nh).</p>\r\n', 5, 1, '1680787699_fnafa.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL,
  `cart_payment` varchar(11) NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`, `cart_payment`, `cart_shipping`) VALUES
(51, 2, '7404', 1, '2023-03-29 15:02:00', 'tienmat', 4),
(52, 14, '3424', 0, '2023-03-29 16:34:41', 'tienmat', 5),
(53, 14, '9489', 0, '2023-03-29 16:34:47', 'chuyenkhoan', 5),
(54, 14, '1376', 0, '2023-03-29 16:34:53', 'vnpay', 5),
(55, 17, '8824', 1, '2023-03-30 17:04:08', 'tienmat', 6),
(56, 18, '7756', 1, '2023-03-30 23:11:36', 'chuyenkhoan', 7),
(57, 14, '7073', 1, '2023-04-14 06:47:53', 'vnpay', 5),
(58, 14, '7515', 1, '2023-04-14 06:48:00', 'tienmat', 5),
(59, 14, '4846', 1, '2023-04-14 06:48:04', 'chuyenkhoan', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(54, '1048', 12, 1),
(55, '6315', 12, 1),
(56, '4559', 12, 1),
(57, '9554', 12, 1),
(58, '2844', 12, 1),
(59, '9487', 12, 1),
(60, '3066', 12, 1),
(61, '6962', 12, 1),
(62, '6140', 12, 1),
(63, '3872', 12, 1),
(64, '1161', 7, 1),
(65, '1323', 8, 2),
(66, '1323', 6, 3),
(67, '1323', 11, 2),
(68, '7404', 12, 1),
(69, '3424', 12, 5),
(70, '3424', 11, 1),
(71, '9489', 12, 5),
(72, '9489', 11, 1),
(73, '1376', 12, 5),
(74, '1376', 11, 1),
(75, '8824', 13, 2),
(76, '7756', 22, 8),
(77, '7073', 27, 2),
(78, '7073', 28, 2),
(79, '7515', 27, 2),
(80, '7515', 28, 2),
(81, '4846', 27, 2),
(82, '4846', 28, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(13, 'web_lab456', 'tranbachuyen2510@gmail.com', 'fkdshf fsfiuds fsi', '25f9e794323b453885f5181f1b624d0b', '743274032'),
(14, 'hachibao', 'fcbana113@gmail.com', 'fkdshf fsfiuds fsi', '25f9e794323b453885f5181f1b624d0b', '8413985730'),
(15, 'hachibao', '0950080083@sv.hcmunre.edu.vn', 'fkdshf fsfiuds fsi', '25f9e794323b453885f5181f1b624d0b', '8413985730'),
(16, 'hachibao', '0950080083@sv.hcmunre.edu.vn', 'fkdshf fsfiuds fsi', '25f9e794323b453885f5181f1b624d0b', '8413985730'),
(17, 'hachibao', 'fcbana113@gmail.com', 'fkdshf fsfiuds fsi', 'b7d9e2e1fea3c1aa481c50a63dafde65', '8413985730'),
(18, 'hachibao12345', 'fcbana113@gmail.com', 'iuweuiwebue,jwefiwe,newin,newinf', '6ebe76c9fb411be97b3b0d48b791a7c9', '0908070605');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(6, 'táo', 1),
(7, 'dâu', 2),
(8, 'nho', 3),
(9, 'kiwi', 4),
(10, 'cam', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(2, 'tin bóng đá', 2),
(4, 'tin game', 2),
(5, 'tin kinh tế', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, 'null');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_momo`
--

CREATE TABLE `tbl_momo` (
  `id_momo` int(11) NOT NULL,
  `partner_code` varchar(50) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `order_info` varchar(50) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_momo`
--

INSERT INTO `tbl_momo` (`id_momo`, `partner_code`, `order_id`, `amount`, `order_info`, `order_type`, `trans_id`, `pay_type`, `code_cart`) VALUES
(3, 'MOMOBKUN20180529', '1644123235', '250000', 'Thanh toán qua ATM', 'momo_wallet', '2642535948', 'napas', '9554'),
(4, 'MOMOBKUN20180529', '1644126570', '250000', 'Thanh toán qua ATM', 'momo_wallet', '2642536202', 'napas', '3872'),
(5, 'MOMOBKUN20180529', '1645004827', '350000', 'Thanh toán qua ATM', 'momo_wallet', '2644029861', 'napas', '1161');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(13, 'táo criss', 'a1236', '199009', 10, '1680189510_Táo Cripps Pink.jpg', '<p>T&aacute;o Pink Lady hay c&ograve;n được biết đến với t&ecirc;n t&aacute;o Cripps Pink Mỹ được ph&aacute;t triển bởi một nh&agrave; nghi&ecirc;n cứu c&oacute; t&ecirc;n l&agrave; John Cripps thuộc Bộ Phận N&ocirc;ng Nghiệp Miền T&acirc;y &Uacute;c v&agrave;o năm 1973 khi &ocirc;ng Cripps lấy cẩm hứng từ &yacute; tưởng kết hợp hai loại t&aacute;o l&agrave; Golden Delicious v&agrave; Lady Williams.</p>\r\n\r\n<p>Bằng ph&eacute;p lai giữa hai loại t&aacute;o tr&ecirc;n, &ocirc;ng Cripps đ&atilde; th&agrave;nh c&ocirc;ng trong việc kết hợp những đặc t&iacute;nh tốt nhất của cả hai loại t&aacute;o cha mẹ v&agrave; cho ra đời một giống t&aacute;o mới, sau n&agrave;y loại t&aacute;o lai n&agrave;y dần trở n&ecirc;n phổ biến lấy t&ecirc;n l&agrave; Pink Lady.</p>\r\n\r\n<p>Hiện nay&nbsp;t&aacute;o Pink Lady&nbsp;được trồng tại khoảng 15 quốc gia kh&aacute;c nhau với điều kiện kh&iacute; hậu v&agrave; thổ nhưỡng th&iacute;ch hợp, trong đ&oacute; c&oacute; Mỹ.</p>\r\n', '<h2><strong>Giống v&agrave; chủng loại của T&aacute;o&nbsp;Cripps Pink</strong></h2>\r\n\r\n<p>T&aacute;o Pink Lady hay c&ograve;n được biết đến với t&ecirc;n t&aacute;o Cripps Pink Mỹ được ph&aacute;t triển bởi một nh&agrave; nghi&ecirc;n cứu c&oacute; t&ecirc;n l&agrave; John Cripps thuộc Bộ Phận N&ocirc;ng Nghiệp Miền T&acirc;y &Uacute;c v&agrave;o năm 1973 khi &ocirc;ng Cripps lấy cẩm hứng từ &yacute; tưởng kết hợp hai loại t&aacute;o l&agrave; Golden Delicious v&agrave; Lady Williams.</p>\r\n\r\n<p>Bằng ph&eacute;p lai giữa hai loại t&aacute;o tr&ecirc;n, &ocirc;ng Cripps đ&atilde; th&agrave;nh c&ocirc;ng trong việc kết hợp những đặc t&iacute;nh tốt nhất của cả hai loại t&aacute;o cha mẹ v&agrave; cho ra đời một giống t&aacute;o mới, sau n&agrave;y loại t&aacute;o lai n&agrave;y dần trở n&ecirc;n phổ biến lấy t&ecirc;n l&agrave; Pink Lady.</p>\r\n\r\n<p>Hiện nay&nbsp;t&aacute;o Pink Lady&nbsp;được trồng tại khoảng 15 quốc gia kh&aacute;c nhau với điều kiện kh&iacute; hậu v&agrave; thổ nhưỡng th&iacute;ch hợp, trong đ&oacute; c&oacute; Mỹ.</p>\r\n\r\n<h2><strong>Xuất xứ v&agrave; m&ugrave;a vụ&nbsp;T&aacute;o Cripps Pink&nbsp;Mỹ</strong></h2>\r\n\r\n<p>Xuất xứ: Washington (US)</p>\r\n\r\n<p>M&ugrave;a vụ: th&aacute;ng 12&nbsp;đến&nbsp;th&aacute;ng 3 năm sau.</p>\r\n\r\n<h2><strong>Lưu &yacute; bảo quản&nbsp;T&aacute;o Cripps Pink&nbsp;Mỹ</strong></h2>\r\n\r\n<p>Để t&aacute;o kh&ocirc;ng bị th&acirc;m, ta cắt t&aacute;o rồi nh&uacute;ng&nbsp;qua nước lạnh c&oacute; pha v&agrave;i giọt&nbsp;chanh hoặc&nbsp;muối lo&atilde;ng.</p>\r\n\r\n<p>Nhiệt độ bảo quản:&nbsp;Bảo quản tại nh&agrave;: Tủ lạnh từ 4 đến 8 độ C. T&aacute;o giữ được độ tươi, độ gi&ograve;n trong v&ograve;ng 1-4 tuần. Sau thời gian n&agrave;y, t&aacute;o sẽ ngọt hơn, độ PSI thấp hơn (t&aacute;o xốp hơn). Cần tr&aacute;nh để t&aacute;o với c&aacute;c thực phẩm c&oacute; m&ugrave;i kh&aacute;c như h&agrave;nh, tỏi, t&aacute;o sẽ dễ nhiễm m&ugrave;i.</p>\r\n\r\n<p>C&aacute;c trường hợp cần lưu &yacute;:<br />\r\nT&aacute;o bị th&acirc;m b&ecirc;n trong:&nbsp;Vỏ quả t&aacute;o rất khỏe, hơn nữa thường được tr&aacute;ng một lớp s&aacute;p ong trước khi xuất khẩu (t&aacute;o Washington) n&ecirc;n rất &iacute;t khi hỏng từ b&ecirc;n ngo&agrave;i, trừ khi vỏ bị dập trong qu&aacute; tr&igrave;nh vận chuyển.</p>\r\n\r\n<p>Cuống t&aacute;o l&agrave; nơi nhạy cảm nhất, thường chỉ một vết xước nhỏ ở cuống, hoặc c&oacute; nước đọng cũng l&agrave;m vi khuẩn th&acirc;m nhập quả t&aacute;o v&agrave; l&agrave;m hỏng t&aacute;o từ b&ecirc;n trong.</p>\r\n\r\n<p>T&aacute;o bị xốp:&nbsp;T&aacute;o bị xốp kh&ocirc;ng phải l&agrave; t&aacute;o hỏng m&agrave; do l&agrave; độ gi&ograve;n (PSI) bị giảm đi. Nhiều người lại th&iacute;ch ăn t&aacute;o xốp v&igrave; n&oacute; kh&ocirc;ng qu&aacute; cứng, nhất l&agrave; khi cho trẻ em ăn. T&aacute;o xốp thường rất ngọt. T&aacute;o xốp vẫn đảm bảo chất lượng v&agrave; h&agrave;m lượng vitamin trong quả. T&aacute;o xốp do nhiều nguy&ecirc;n nh&acirc;n:</p>\r\n\r\n<p>+ Thứ nhất: l&agrave; bản th&acirc;n quả t&aacute;o khi h&aacute;i đ&atilde; ch&iacute;n n&ecirc;n kể cả khi bảo quản lạnh đ&uacute;ng ti&ecirc;u chuẩn, n&oacute; vẫn ch&iacute;n v&agrave; trở n&ecirc;n xốp hơn.</p>\r\n\r\n<p>+ Thứ hai: l&agrave; do lỗi qu&aacute; tr&igrave;nh bảo quản nhiệt độ kh&ocirc;ng đ&uacute;ng ti&ecirc;u chuẩn l&agrave;m t&aacute;o ch&iacute;n nhanh hơn.</p>\r\n', 1, 6),
(15, 'táo xanh', 'a1233', '59000', 20, '1680189601_tao-xanh-my-1.jpg', '<p>L&agrave; một trong những loại&nbsp;<a href=\"https://www.bachhoaxanh.com/trai-cay-tuoi-ngon\">tr&aacute;i c&acirc;y</a>&nbsp;nhập khẩu được nhiều người ưa chuộng bởi vị chua đậm kh&aacute;c biệt với c&aacute;c giống t&aacute;o nhập khẩu kh&aacute;c.&nbsp;<a href=\"https://www.bachhoaxanh.com/trai-cay-tuoi-ngon/tao-xanh-my-1kg\">T&aacute;o xanh Mỹ</a>&nbsp;c&oacute; nguồn gốc r&otilde; r&agrave;ng, gi&aacute; trị dinh dưỡng cao.&nbsp;<strong>T&aacute;o xanh ngon nhất khi tr&aacute;i c&oacute; m&agrave;u xanh s&aacute;ng, đậm, hơi v&agrave;ng nhẹ, vỏ t&aacute;o cứng.</strong></p>\r\n', '<ul>\r\n	<li>&aacute;o xanh Mỹ l&agrave; giống t&aacute;o được ph&aacute;t hiện ở &Uacute;c v&agrave; du nhập v&agrave;o Mỹ v&agrave;o năm 1860. T&aacute;o c&oacute; quả c&oacute; k&iacute;ch thước kh&ocirc;ng qu&aacute; to, vỏ ngo&agrave;i c&oacute; m&agrave;u xanh nhạt, l&aacute;ng mịn, hơi dai. Thịt t&aacute;o b&ecirc;n trong c&oacute; độ gi&ograve;n, vị chua, nhiều nước.</li>\r\n	<li>T&aacute;o đảm bảo tươi ngon, kh&ocirc;ng dập, chất lượng, c&oacute; nguồn gốc xuất xứ r&otilde; r&agrave;ng. 1kg t&aacute;o xanh Mỹ c&oacute; từ 5-7 quả, được đ&oacute;ng trong hộp nhựa trong gi&uacute;p bảo quản tốt hơn v&agrave; tinh tế hơn.</li>\r\n	<li>rung b&igrave;nh mỗi quả t&aacute;o xanh c&oacute; chứa 4g chất xơ ở dạng Pectin, c&oacute; t&aacute;c dụng giảm lượng cholesterol xấu, tạo cảm gi&aacute;c no l&acirc;u m&agrave; kh&ocirc;ng bị ti&ecirc;u thụ nhiều calo</li>\r\n	<li>Trong vỏ t&aacute;o c&oacute; chứa Axit Ursolic l&agrave;m giảm nguy cơ b&eacute;o ph&igrave;, Axit Ursolic th&uacute;c đẩy cơ thể đốt ch&aacute;y calo, tăng việc h&igrave;nh th&agrave;nh cơ v&agrave; giảm chất b&eacute;o l&acirc;u năm trong cơ thể</li>\r\n	<li>T&aacute;o xanh l&agrave; loại tr&aacute;i c&acirc;y c&oacute; chứa nguồn vitamin C dồi d&agrave;o c&oacute; trong phần vỏ t&aacute;o c&oacute; t&aacute;c dụng tăng cường hệ thống miễn dịch</li>\r\n	<li>Đặc biệt, t&aacute;o xanh c&oacute; chứa chất chống oxy ho&aacute; v&agrave; chất Triterpenoids c&oacute; khả năng chống lại c&aacute;c bệnh ung thư gan, ruột kết v&agrave; ung thư v&uacute;</li>\r\n	<li><strong>C&aacute;ch bảo quản t&aacute;o xanh Mỹ tươi ngon</strong></li>\r\n	<li>T&aacute;o xanh được bảo quản tủ lạnh ở nhiệt độ từ&nbsp;<strong>4 đến 8 độ C sẽ giữ được độ tươi,</strong>&nbsp;độ gi&ograve;n trong v&ograve;ng 1-4 tuần. Sau thời gian n&agrave;y, t&aacute;o xanh sẽ ngọt hơn, độ PSI thấp hơn sẽ l&agrave;m t&aacute;o xốp hơn.</li>\r\n	<li>Cần tr&aacute;nh để t&aacute;o với c&aacute;c thực phẩm c&oacute; m&ugrave;i kh&aacute;c như h&agrave;nh, tỏi, t&aacute;o sẽ dễ nhiễm m&ugrave;i.</li>\r\n</ul>\r\n', 1, 6),
(16, 'kiwi', 'a12343', '129000', 5, '1680190314_1.jpg', '<p>Loại tr&aacute;i c&acirc;y xuất xứ từ New Zealand c&oacute; vỏ n&acirc;u v&agrave; nhiều l&ocirc;ng, b&ecirc;n trong c&oacute; m&agrave;u xanh, tươi, đep mắt.&nbsp; Kiwi c&oacute; rất nhiều lợi &iacute;ch cho sức khỏe như gi&uacute;p vết thương nhanh l&agrave;nh, hỗ trợ giấc ngủ v&agrave; tăng cường tỉnh t&aacute;o v&agrave; buổi s&aacute;ng. Cam kết giao đ&uacute;ng khối lượng, chất lượng v&agrave; an to&agrave;n</p>\r\n', '<p><strong>Quả kiwi</strong>&nbsp;kh&ocirc;ng được mấy ấn tượng với lớp l&ocirc;ng x&ugrave; x&igrave; v&agrave; c&oacute; m&agrave;u n&acirc;u x&aacute;m b&ecirc;n ngo&agrave;i nhưng đ&acirc;y được xem l&agrave; loại&nbsp;<a href=\"https://www.bachhoaxanh.com/trai-cay-tuoi-ngon\" target=\"_blank\">tr&aacute;i c&acirc;y</a>&nbsp;c&oacute; nhiều lợi &iacute;ch cho sức khỏe người d&ugrave;ng.&nbsp;</p>\r\n\r\n<h2><strong>GI&Aacute; TRỊ DINH DƯỠNG CỦA KIWI</strong></h2>\r\n\r\n<p><a href=\"https://www.bachhoaxanh.com/kinh-nghiem-hay/6-loi-ich-bat-ngo-cua-trai-kiwi-1074573\" target=\"_blank\">Kiwi mang đến nhiều lợi &iacute;ch cho sức khoẻ</a></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Trung b&igrave;nh&nbsp;<strong>2 tr&aacute;i kiwi&nbsp;</strong>c&oacute; thể cung cấp&nbsp;<strong>khoảng 230% lượng Vitamin C</strong>, gần gấp đ&ocirc;i so với cam.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gi&uacute;p vết thương nhanh l&agrave;nh, hấp thụ sắt để xương, mạch m&aacute;u v&agrave; răng chắc khỏe hơn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hỗ trợ giấc ngủ v&agrave; tăng cường sự tỉnh t&aacute;o v&agrave;o buổi s&aacute;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>2 tr&aacute;i kiwi chứa khoảng 30mg Magie,&nbsp;lượng Kali nhiều hơn chuối khoảng 20%,&nbsp;kiểm so&aacute;t được huyết &aacute;p, ngăn ngừa sỏi thận, lo&atilde;ng xương v&agrave; đột quỵ.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gi&uacute;p tr&aacute;i tim của bạn khỏe mạnh, điều h&ograve;a qu&aacute; tr&igrave;nh ti&ecirc;u h&oacute;a v&agrave; kiểm so&aacute;t cholesterol,...</p>\r\n	</li>\r\n</ul>\r\n', 1, 9),
(17, 'Táo Pha Lê Úc', 'a12338', '59000', 20, '1680190463_1650334564tao-pha-le-uc-1.jpg', '<p>nul</p>\r\n', '<p>null</p>\r\n', 1, 6),
(18, 'Nho đỏ', 'a123308', '59000', 5, '1680190496_84.jpg', '<p>null</p>\r\n', '<p>null</p>\r\n', 1, 8),
(19, 'NHO KHÔ SUNVIEW MIX 3 MÀU (HŨ)', 'a1233243', '122000', 10, '1680191769_82931.jpg', '<p>null</p>\r\n', '<p>null</p>\r\n', 1, 8),
(20, 'Táo Ambrosia ', 'a1233634', '199000', 10, '1680191807_1650443073tao-ambrosia-1.jpg', '<p>null</p>\r\n', '<p>null</p>\r\n', 1, 6),
(21, 'cam Sunkit Úc', 'a123328', '99009', 20, '1680191855_Cam Sunkit Úc.jpg', '<p>null</p>\r\n', '<p>null</p>\r\n', 1, 10),
(22, 'cam vàng', 'a12300', '89000', 10, '1680191893_cam-vang-1.jpg', '<p>null</p>\r\n', '<p>null</p>\r\n', 1, 10),
(23, 'dâu', 'a123792', '139000', 30, '1680191924_Dâu tây.jpg', '<p>null</p>\r\n', '<p>null</p>\r\n', 1, 7),
(24, 'Lê Nam Phi', 'a123679', '99000', 15, '1680191981_lê2.jpg', '<p>null</p>\r\n', '<p>null</p>\r\n', 1, 10),
(25, 'le han quóc', 't9310', '89000', 17, '1680192018_le-han-quoc.jpg', '<p>null</p>\r\n', '<p>null</p>\r\n', 1, 10),
(26, 'lựu đỏ peru', 'y401', '119000', 25, '1680192058_luu-do-peru-1.jpg', '<p>null</p>\r\n', '<p>null</p>\r\n', 1, 10),
(27, 'Nho đen Midnight Beauti', 'a12363', '139000', 18, '1680192117_nho den nam phi.jpg', '<p>null</p>\r\n', '<p>null</p>\r\n', 1, 8),
(28, 'nho xanh ', 'a12342', '199000', 17, '1680192147_nho.jpg', '<p>null</p>\r\n', '<p>null</p>\r\n', 1, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(4, '', '', '', '', 2),
(5, 'hachibao', '4307503573', '24203750273057', 'nhanh nha bạn', 14),
(6, '', '', '', '', 17),
(7, 'dư', '53253564363', 'dsgsgsgs', 'nhanh', 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(1, '2021-10-23', 50, '15500000', 25),
(2, '2021-10-22', 55, '25500000', 25),
(3, '2021-10-21', 50, '15600000', 30),
(4, '2021-10-24', 10, '36500000', 30),
(5, '2021-10-25', 2, '5600000', 10),
(6, '2021-10-26', 8, '6500000', 9),
(7, '2021-10-28', 2, '600000', 10),
(8, '2021-10-29', 8, '500000', 9),
(9, '2021-10-31', 8, '500000', 9),
(10, '2021-10-01', 8, '500000', 9),
(11, '2021-08-01', 8, '700000', 9),
(12, '2021-10-03', 8, '700000', 9),
(14, '2021-10-30', 3, '1500000', 1),
(15, '2023-03-22', 1, '1250000', 7),
(16, '2023-03-29', 5, '2100000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_vnpay`
--

CREATE TABLE `tbl_vnpay` (
  `id_vnpay` int(11) NOT NULL,
  `vnp_amount` varchar(50) NOT NULL,
  `vnp_bankCode` varchar(50) NOT NULL,
  `vnp_banktranno` varchar(50) NOT NULL,
  `vnp_cardtype` varchar(50) NOT NULL,
  `vnp_orderinfo` varchar(100) NOT NULL,
  `vnp_paydate` varchar(50) NOT NULL,
  `vnp_tmncode` varchar(50) NOT NULL,
  `vnp_transactionno` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_vnpay`
--

INSERT INTO `tbl_vnpay` (`id_vnpay`, `vnp_amount`, `vnp_bankCode`, `vnp_banktranno`, `vnp_cardtype`, `vnp_orderinfo`, `vnp_paydate`, `vnp_tmncode`, `vnp_transactionno`, `code_cart`) VALUES
(4, '25000000', 'NCB', '20220206115602', 'ATM', 'Thanh toán đơn hàng đặt tại web', '20220206115533', 'UD2KZW06', '13682669', '2844'),
(5, '25000000', 'NCB', '20220206124857', 'ATM', 'Thanh toán đơn hàng đặt tại web', '20220206124854', 'UD2KZW06', '13682671', '6140');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tblbv_tbldmbv` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  ADD PRIMARY KEY (`id_momo`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD KEY `FK_tblsp_tbldm` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  ADD PRIMARY KEY (`id_vnpay`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  MODIFY `id_momo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  MODIFY `id_vnpay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD CONSTRAINT `FK_tblbv_tbldmbv` FOREIGN KEY (`id_danhmuc`) REFERENCES `tbl_danhmucbaiviet` (`id_baiviet`);

--
-- Các ràng buộc cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `FK_tblsp_tbldm` FOREIGN KEY (`id_danhmuc`) REFERENCES `tbl_danhmuc` (`id_danhmuc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
