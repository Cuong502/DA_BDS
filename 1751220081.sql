-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 11, 2021 lúc 10:51 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `da_bds`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_startus` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_startus`) VALUES
(1, 'cuong', '202CB962AC59075B964B07152D234B70', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tomtat` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(2, 'Giá căn hộ tại phố nhà giàu đua nhau lập đỉnh', '<p>TP HCM Gi&aacute; chung cư khu An Ph&uacute;, Thạnh Mỹ Lợi, Thảo Điền, Thủ Thi&ecirc;m đạt mức trần 75-210 triệu đồng một m2, tăng 100-131% trong hơn nửa thập ni&ecirc;n</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Theo b&aacute;o c&aacute;o diễn biến gi&aacute; nh&agrave; cao tầng tại quận 2 cũ (thuộc TP Thủ Đức) vừa được Rever c&ocirc;ng bố, hiện phố nh&agrave; gi&agrave;u Thủ Thi&ecirc;m dẫn đầu về mức trần căn hộ với mốc 210 triệu đồng một m2. Trong khi đ&oacute;, chung cư ở khu An Ph&uacute;, Thảo Điền v&agrave; Thạnh Mỹ Lợi lần lượt ghi nhận gi&aacute; cao nhất l&agrave; 75-85-95 triệu đồng một m2. Những nơi n&agrave;y đều ghi nhận tốc độ tăng trưởng gi&aacute; cao nhất, đạt tr&ecirc;n 100% sau 6-7 năm, trong đ&oacute; Thạnh Mỹ Lợi dẫn đầu với mức tăng trần l&ecirc;n đến 131%.</p>\r\n\r\n<p>Tại Thủ Thi&ecirc;m, chung cư c&oacute; gi&aacute; b&aacute;n cao nhất l&agrave; The Opera Residence thuộc giai đoạn 3 của dự &aacute;n The Metropole Thủ Thi&ecirc;m hiện ghi nhận mốc 210 triệu đồng một m2, dự kiến b&agrave;n giao năm 2023. Xếp thứ hai l&agrave; dự &aacute;n Narra Residences giai đoạn 4 của si&ecirc;u dự &aacute;n Empire City, c&oacute; gi&aacute; 180 triệu đồng một m2. Mức tăng gi&aacute; cao nhất tại phố nh&agrave; gi&agrave;u n&agrave;y l&agrave; 112-118% ghi nhận tại dự &aacute;n Sadora v&agrave; Sarica (đều đ&atilde; b&agrave;n giao) thuộc khu đ&ocirc; thị Sala.</p>\r\n\r\n<p>Được v&iacute; l&agrave; phố T&acirc;y (nhiều người nước ngo&agrave;i sinh sống) của khu Đ&ocirc;ng, Thảo Điền c&oacute; mức gi&aacute; trần chung cư đạt 90-95 triệu đồng một m2, thuộc dự &aacute;n The Nassim v&agrave; Thảo Điền Green. Cả hai đều l&agrave; căn hộ mới. Trong khi đ&oacute;, tốc độ tăng gi&aacute; nh&agrave; cao nhất khu vực n&agrave;y rơi v&agrave;o nh&oacute;m dự &aacute;n cũ: Tropic Garden v&agrave; Masteri Thảo Điền b&agrave;n giao năm 2015-2016, lần lượt tăng trưởng gi&aacute; 92-106%.</p>\r\n\r\n<p>L&agrave; phố nh&agrave; gi&agrave;u mới nổi sau n&agrave;y, Thạnh Mỹ Lợi c&oacute; gi&aacute; nh&agrave; chung cư cao nhất đạt 85 triệu đồng một m2, tại c&aacute;c dự &aacute;n cao cấp One Verandah v&agrave; Waterina Suites, b&agrave;n giao năm 2019-2020. Tuy nhi&ecirc;n, mức tăng gi&aacute; khủng tại đ&acirc;y lại thuộc dự &aacute;n cũ CBD Premium Home, b&agrave;n giao năm 2016, gi&aacute; b&aacute;n khởi điểm năm 2014 khoảng 16 triệu đồng một m2, hiện giao dịch 37 triệu đồng một m2, tăng 131%.</p>\r\n\r\n<p>Phường An Ph&uacute; xếp cuối nh&oacute;m phố nh&agrave; gi&agrave;u khu Đ&ocirc;ng S&agrave;i G&ograve;n, c&oacute; gi&aacute; nh&agrave; chung cư đạt đỉnh 75 triệu đồng một m2 (dự &aacute;n Estella Heights, đ&atilde; b&agrave;n giao năm 2018). Đ&acirc;y cũng l&agrave; dự &aacute;n c&oacute; tốc độ tăng gi&aacute; 108%, cao nhất khu An Ph&uacute;. Được b&agrave;n giao sớm hơn v&agrave; thuộc ph&acirc;n kh&uacute;c trung cấp, dự &aacute;n Lexington Residence c&oacute; gi&aacute; b&aacute;n khởi điểm 24 triệu đồng một m2 hiện vọt l&ecirc;n 50 triệu đồng một m2, tăng gi&aacute; 108%.</p>\r\n', 2, 1, '1637914801_batdongsan-1TINTUC.jpg'),
(3, 'Bảo đảm an toàn khi học sinh THPT đến trường', '<p>&nbsp;</p>\r\n<p>Ng&agrave;y 29-11, học sinh khối 10 v&agrave; 11 c&aacute;c trường THPT tr&ecirc;n địa b&agrave;n th&agrave;nh phố đến trường học tập sau một thời gian d&agrave;i học trực tuyến để bảo đảm ph&ograve;ng, chống dịch bệnh. Để bảo đảm an to&agrave;n cho học sinh v&agrave; gi&aacute;o vi&ecirc;n, c&ocirc;ng t&aacute;c ph&ograve;ng, chống Covid-19 được c&aacute;c trường ch&uacute; trọng thực hiện, nhất l&agrave; quy địn<strong>h 5K.</strong></p>\r\n<p>&nbsp;</p>\r\n', '<table align=\"center\" style=\"width:660px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Gi&aacute;o vi&ecirc;n Trường THPT Ho&agrave;ng Hoa Th&aacute;m &ocirc;n tập cho học sinh ng&agrave;y đầu đi học trở lại. Ảnh: NGỌC H&Agrave;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Học sinh &ocirc;n tập để tiến h&agrave;nh kiểm tra</strong></p>\r\n\r\n<p>Buổi sinh hoạt lớp trực tiếp đầu ti&ecirc;n của lớp 10/8 Trường THPT Phan Ch&acirc;u Trinh diễn ra trong kh&ocirc;ng kh&iacute; s&ocirc;i nổi. Gi&aacute;o vi&ecirc;n chủ nhiệm d&agrave;nh phần lớn thời gian hướng dẫn học sinh những điều cơ bản như vị tr&iacute; thư viện, ph&ograve;ng ban gi&aacute;m hiệu&hellip; Em Nguyễn Ngọc Phượng, học sinh lớp 10/8 chia sẻ, trải qua hơn nửa chặng đường của học kỳ 1 nhưng đ&acirc;y l&agrave; lần đầu ti&ecirc;n em đến trường n&ecirc;n kh&aacute; bỡ ngỡ. Việc gi&aacute;o vi&ecirc;n hướng dẫn những điều cần thiết cũng như nhắc nhở quy định ph&ograve;ng, chống dịch trong buổi học đầu ti&ecirc;n gi&uacute;p học sinh y&ecirc;n t&acirc;m hơn. &ldquo;D&ugrave; thời tiết kh&ocirc;ng thuận lợi nhưng ngay từ s&aacute;ng sớm, em đ&atilde; dậy chuẩn bị s&aacute;ch vở, khẩu trang y tế đạt chuẩn, b&igrave;nh nước c&aacute; nh&acirc;n, dung dịch khử khuẩn&hellip; Trong l&ograve;ng vừa vui vừa hồi hộp, em nghĩ đ&acirc;y cũng l&agrave; t&acirc;m trạng chung của học sinh lớp 10 v&igrave; với ch&uacute;ng em, mọi thứ đều mới mẻ&rdquo;, Ngọc Phượng chia sẻ th&ecirc;m.</p>\r\n\r\n<p>Chung t&acirc;m trạng, em Mai Xu&acirc;n Min, học sinh lớp 11/4 Trường THPT Trần Ph&uacute; cho biết, sự e d&egrave; nhanh ch&oacute;ng nhường chỗ cho kh&ocirc;ng kh&iacute; s&ocirc;i nổi của lớp học. Hiện c&aacute;c em đ&atilde; l&agrave;m b&agrave;i kiểm tra định kỳ một số m&ocirc;n bằng h&igrave;nh thức trực tuyến. Trong tuần n&agrave;y, thầy c&ocirc; tiếp tục &ocirc;n tập c&aacute;c m&ocirc;n c&ograve;n lại v&agrave; tiến h&agrave;nh kiểm tra. C&aacute;c em sẽ tranh thủ thời gian n&agrave;y trao đổi, nhờ thầy c&ocirc; giảng giải những chỗ chưa hiểu để l&agrave;m b&agrave;i tốt hơn.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ học sinh, thầy, c&ocirc; gi&aacute;o cũng phấn khởi khi đến trường dạy học trực tiếp. &ldquo;Ch&uacute;ng t&ocirc;i cũng h&aacute;o hức khi được gặp lại học tr&ograve;. Trước khi c&aacute;c em trở lại trường, gi&aacute;o vi&ecirc;n chủ động &ocirc;n tập lại c&aacute;c kiến thức đ&atilde; học, dặn d&ograve; học sinh một số quy định về ph&ograve;ng, chống dịch của nh&agrave; trường. Đồng thời, gi&aacute;o vi&ecirc;n tự trang bị một số kỹ năng, kiến thức nhằm xử tr&iacute; khi gặp c&aacute;c trường hợp ho sốt, nghi nhiễm Covid-19 trong giờ dạy&rdquo;, thầy L&ecirc; Mạnh Tấn, gi&aacute;o vi&ecirc;n Trường THPT Ho&agrave;ng Hoa Th&aacute;m b&agrave;y tỏ.</p>\r\n', 1, 1, '1638244801_bao2.gif');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`) VALUES
(2, 1, '10997500', 0, '2021-9-28 19:11:07'),
(3, 1, '423345538', 0, '2021-10-28 19:14:17'),
(4, 1, '207130384', 0, '2021-11-27 19:39:11'),
(5, 1, '847443593', 0, '2021-11-28 19:49:48'),
(6, 16, '292048403', 0, '2021-11-29 08:40:31'),
(7, 17, '670895756', 0, '2021-11-29 08:44:53'),
(8, 18, '471017819', 0, '2021-11-29 16:11:25'),
(9, 18, '76977960', 0, '2021-11-29 16:13:42'),
(10, 19, '424667392', 0, '2021-11-29 16:16:18'),
(11, 19, '163072990', 0, '2021-11-29 16:17:18'),
(12, 19, '635771918', 0, '2021-11-29 16:20:23'),
(13, 20, '309499965', 0, '2021-12-01 09:18:54'),
(14, 18, '619665057', 0, '2021-12-06 07:54:55'),
(15, 24, '853627600', 0, '2021-12-11 16:34:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(1, '10997500', 4, 1),
(2, '423345538', 4, 2),
(3, '207130384', 3, 1),
(4, '207130384', 5, 1),
(5, '847443593', 4, 1),
(6, '292048403', 5, 1),
(7, '670895756', 5, 1),
(8, '471017819', 6, 5),
(9, '76977960', 6, 5),
(10, '424667392', 6, 5),
(11, '163072990', 3, 5),
(12, '635771918', 5, 1),
(13, '309499965', 3, 1),
(14, '619665057', 3, 1),
(15, '853627600', 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tentaikhoan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `dienthoai`, `tentaikhoan`, `matkhau`) VALUES
(24, 'Nguyễn Văn Cường', 'cuong22091999@gmail.com', 'Hải Châu -  Đà nẵng', '0905123456', 'cuong12345', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(2, 'BẤT ĐỘNG SẢN', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(1, 'TIN BẤT ĐỘNG SẢN', 1),
(2, 'TIN Y TẾ - SỨC KHỎE', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<ol>\r\n	<li>\r\n	<h3>Số điện thoại : 0984421213&nbsp; Văn Cường</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Zalo : 0984421213 Văn Cường</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Fb :<a href=\"http://facebook.com/vancuongIT1999\"> https://www.facebook.com/vancuongIT1999</a></h3>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p><img alt=\"\" src=\"https://media.dau.edu.vn/Media/1_TH1057/Images/logo-dhktdn-150.png\" style=\"height:304px; width:300px\" /></p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giasp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phaply` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi_map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `loinhuankyvong` int(11) NOT NULL,
  `dientich` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daban` int(11) NOT NULL,
  `diachi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `hinhanh`, `phaply`, `noidung`, `diachi_map`, `loinhuankyvong`, `dientich`, `daban`, `diachi`, `tinhtrang`, `id_danhmuc`) VALUES
(3, 'Tòa nhà quả bắp', 'SP_01', '10000000000', '1637760606_trung-tam-hanh-chinh.jpg', 'sổ hồng', '<p><strong>T&ograve;a nh&agrave; Trung t&acirc;m H&agrave;nh ch&iacute;nh Đ&agrave; Nẵng </strong>toạ lạc tại số 24 Trần Ph&uacute;, P.Thạch Thang, Q.Hải Ch&acirc;u, Tp.Đ&agrave; Nẵng c&oacute; độ cao 36 tầng, gồm 34 tầng nổi v&agrave; 2 tầng hầm, c&oacute; độ cao 166,8m l&agrave; To&agrave; nh&agrave; l&agrave;m việc của c&aacute;c Cơ quan Sở ban ng&agrave;nh tại Tp.Đ&agrave; Nẵng.</p>\r\n\r\n<p><strong>T&ograve;a nh&agrave; Trung t&acirc;m H&agrave;nh ch&iacute;nh Đ&agrave; Nẵng</strong> khởi c&ocirc;ng từ th&aacute;ng 11/2008 v&agrave; ch&iacute;nh thức kh&aacute;nh th&agrave;nh v&agrave;o ng&agrave;y 8/9/2014. To&agrave; nh&agrave; c&oacute; tổng diện t&iacute;ch s&agrave;n 65.234 m2, đ&acirc;y l&agrave; t&ograve;a nh&agrave; cao nhất Đ&agrave; Nẵng v&agrave; miền Trung hiện nay. C&ocirc;ng tr&igrave;nh c&oacute; vốn đầu tư hơn 2.000 tỷ đồng với kiến tr&uacute;c như một ngọn hải đăng hướng ra biển, nhưng người d&acirc;n vẫn quen gọi l&agrave; &quot;To&agrave; nh&agrave; quả Bắp&quot; v&igrave; nh&igrave;n từ xa To&agrave; nh&agrave; kh&aacute; giống với h&igrave;nh d&aacute;ng quả bắp dựng đứng.</p>\r\n\r\n<p><strong>To&agrave; nh&agrave; được x&acirc;y dựng với Dấu ấn đặc biệt của &ocirc;ng Nguyễn B&aacute; Thanh:</strong></p>\r\n\r\n<p>Với mong muốn người d&acirc;n v&agrave; doanh nghiệp giảm thời gian v&agrave; chi ph&iacute; khi đi lại trong l&uacute;c giao dịch với ch&iacute;nh quyền, &ocirc;ng Nguyễn B&aacute; Thanh (khi đ&oacute; l&agrave; B&iacute; thư Th&agrave;nh ủy, Chủ tịch HĐND th&agrave;nh phố Đ&agrave; Nẵng) đ&atilde; quyết định x&acirc;y dựng t&ograve;a nh&agrave; h&agrave;nh ch&iacute;nh tập trung n&agrave;y.</p>\r\n\r\n<p>Ph&aacute;t biểu trong kỳ họp HĐND kh&oacute;a VIII (nhiệm kỳ 2011-2016), cố B&iacute; thư Đ&agrave; Nẵng, nhấn mạnh: &quot;Trung t&acirc;m h&agrave;nh ch&iacute;nh th&agrave;nh phố khi đưa v&agrave;o sử dụng sẽ chấm dứt sự manh m&uacute;n, luộm thuộm của c&ocirc;ng chức, tiết kiệm được nhiều thứ, trong đ&oacute; c&oacute; xe c&ocirc;ng, từng bước chấm dứt t&igrave;nh trạng l&atilde;ng ph&iacute; c&ocirc;ng&quot;.</p>\r\n\r\n<p><strong>To&agrave; nh&agrave; sử dụng hơn 21.000 m2 k&iacute;nh cường lực: </strong></p>\r\n\r\n<p>To&agrave;n c&ocirc;ng tr&igrave;nh c&oacute; tổng diện t&iacute;ch s&agrave;n 65.234 m2, được chia l&agrave;m 4 phần: phần ngầm, phần đế, phần th&acirc;n khối th&aacute;p v&agrave; phần đỉnh th&aacute;p. Để thi c&ocirc;ng t&ograve;a nh&agrave; n&agrave;y, c&ocirc;ng tr&igrave;nh đ&atilde; sử dụng 63.404 m3 b&ecirc; t&ocirc;ng; 12.275 tấn sắt th&eacute;p; 21.012 m2 k&iacute;nh cường lực phủ lớp Lowe c&oacute; khả năng chống hấp thu nhiệt, tiết kiệm năng lượng v&agrave; gần 600 tấn kết cấu th&eacute;p định h&igrave;nh.</p>\r\n\r\n<p><strong>Khắc phục t&igrave;nh trạng thiếu oxy: </strong></p>\r\n\r\n<p>C&oacute; nhiều l&yacute; do khiến việc vận h&agrave;nh to&agrave; nh&agrave; dẫn đến thiếu oxy trong một số thời điểm v&agrave; Đ&agrave; Nẵng cũng đ&atilde; khắc phục t&igrave;nh trạng thiếu oxy, bộ phận kỹ thuật cũng sẽ can thiệp bằng c&aacute;c biện ph&aacute;p kỹ thuật để bơm kh&iacute; tươi v&agrave;o những vị tr&iacute; chưa đủ kh&iacute;. Đ&agrave; Nẵng kh&ocirc;ngc&oacute; &yacute; định b&aacute;n T&ograve;a nh&agrave; Trung t&acirc;m h&agrave;nh ch&iacute;nh Đ&agrave; Nẵng v&agrave; cũng kh&ocirc;ng c&oacute; &yacute; định di dời c&aacute;c Cơ quan l&agrave;m việc tại To&agrave; nh&agrave; đến một địa điểm mới.</p>\r\n', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.7827352228146!2d108.2208215142967!3d16.07676034350768!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142183a597c954d%3A0x27d2bd48ecfbd0f1!2zVHJ1bmcgdMOibSBIw6BuaCBjaMOtbmggVGjDoG5oIHBo4buRIMSQw6AgTuG6tW5n!5e0!3m2!1svi!2s!4v1637803310700!5m2!1svi!2s', 14, '400', 30, 'Hải Châu - Đà Nẵng', 1, 2),
(4, 'Hồ gươm hà nội', 'SP_02', '1000000000', '1637760830_ho-guom-ha-noi-avt.jpg', 'sổ hồng', '<p>Hồ Ho&agrave;n Kiếm kh&ocirc;ng chỉ đơn thuần l&agrave; địa điểm du lịch h&uacute;t kh&aacute;ch, m&agrave; nơi đ&acirc;y c&ograve;n l&agrave; di t&iacute;ch đ&atilde; trải qua biết bao thăng trầm lịch sử của mảnh đất H&agrave; Th&agrave;nh. Hồ Ho&agrave;n Kiếm l&agrave; một trong những biểu tượng của thủ đ&ocirc;, chỉ cần nhắc đến l&agrave; nghĩ ngay đến H&agrave; Nội.&nbsp;</p>\r\n\r\n<p>Như đ&atilde; đề cập ở phần tr&ecirc;n, c&aacute;i t&ecirc;n &ldquo;Ho&agrave;n Kiếm&rdquo; xuất ph&aacute;t từ một truyền thuyết vua L&ecirc; Th&aacute;i Tổ trả kiếm cho r&ugrave;a thần m&agrave; hầu như bất cứ người Việt Nam n&agrave;o cũng đều biết đến.</p>\r\n\r\n<p>Truyền thuyết kể rằng v&agrave;o thế kỷ 15, nước ta thời bấy giờ phải chống chọi dưới sự đ&agrave;n &aacute;p, b&oacute;c lột của giặc phương Bắc l&ecirc;n d&acirc;n ch&uacute;ng, triều đ&igrave;nh. Chứng kiến t&igrave;nh cảnh nguy nan, Long Vương đ&atilde; cho vua L&ecirc; Th&aacute;i Tổ mượn thanh kiếm thần để chống giặc, gi&uacute;p qu&acirc;n d&acirc;n ta đuổi đ&aacute;nh th&agrave;nh c&ocirc;ng giặc ngoại x&acirc;m. Sau đ&oacute; đất nước đ&atilde; được thanh b&igrave;nh, kh&ocirc;ng c&ograve;n b&oacute;ng d&aacute;ng qu&acirc;n th&ugrave;.</p>\r\n\r\n<p>Một ng&agrave;y nọ khi vua L&ecirc; Th&aacute;i Tổ đi dạo tr&ecirc;n hồ, r&ugrave;a thần đột nhi&ecirc;n ngoi l&ecirc;n v&agrave; đ&ograve;i vua trả lại thanh kiếm thần m&agrave; Long Vương cho mượn. Vua đ&atilde; trao trả lại thanh gươm cho r&ugrave;a thần, r&ugrave;a cũng lặn xuống v&agrave; biến mất. Từ đ&oacute; hồ Lục Thủy được đổi t&ecirc;n th&agrave;nh hồ Ho&agrave;n Kiếm. Truyền thuyết v&agrave; cụ r&ugrave;a sinh sống ở hồ Ho&agrave;n Kiếm vẫn l&agrave; một b&iacute; ẩn chưa c&oacute; lời giải được lưu truyền đến ng&agrave;y nay.</p>\r\n\r\n<p>Đến năm 1884 của thế kỷ 19 khi Việt Nam trở th&agrave;nh thuộc địa của người Ph&aacute;p. Họ đ&atilde; cải tạo lại kh&aacute; nhiều quang cảnh của hồ Ho&agrave;n Kiếm. C&aacute;c khu phố cổ xung quanh hồ đều do Ph&aacute;p quy hoạch v&agrave; thi c&ocirc;ng. Sau khi gi&agrave;nh lại được độc lập, H&agrave; Nội vẫn giữ lại những c&ocirc;ng c&ocirc;ng tr&igrave;nh thời kỳ Ph&aacute;p thuộc v&agrave; tiếp tục bảo quản, ph&aacute;t triển đến ng&agrave;y nay.</p>\r\n', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.0976173621675!2d105.85017601436846!3d21.028779743154722!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab953357c995%3A0x1babf6bb4f9a20e!2zSOG7kyBIb8OgbiBLaeG6v20!5e0!3m2!1svi!2s!4v1637834317553!5m2!1svi!2s', 2, '4000', 10, 'Hà Nội', 0, 2),
(5, 'Nhà thờ con gà', 'SP_03', '2000000000', '1637829210_toa-nha-con-ga-DN.jpg', 'sổ hồng', '<h2>1. Địa chỉ nh&agrave; thờ Con G&agrave; Đ&agrave; Nẵng ở đ&acirc;u?</h2>\r\n\r\n<ul>\r\n	<li><strong>Địa chỉ:&nbsp;</strong>số 156 Trần Ph&uacute;, phường Hải Ch&acirc;u I, quận Hải Ch&acirc;u, TP. Đ&agrave; Nẵng</li>\r\n</ul>\r\n\r\n<p>Nh&agrave; thờ Con G&agrave; hay c&ograve;n được biết với t&ecirc;n gọi kh&aacute;c như nh&agrave; thờ Th&aacute;nh T&acirc;m Ch&uacute;a Gi&ecirc;su, nh&agrave; thờ Tourane, nh&agrave; thờ ch&aacute;nh t&ograve;a Đ&agrave; Nẵng hay nh&agrave; thờ ch&iacute;nh t&ograve;a Đ&agrave; Nẵng. Nh&agrave; thờ n&agrave;y tọa lạc tr&ecirc;n con đường Trần Ph&uacute; nhộn nhịp thuộc trung t&acirc;m của th&agrave;nh phố Đ&agrave; Nẵng.&nbsp;</p>\r\n\r\n<p><strong>Nh&agrave; thờ Con G&agrave; Đ&agrave; Nẵng giờ lễ:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Ng&agrave;y thường:</strong>&nbsp;2 th&aacute;nh lễ được diễn ra v&agrave;o 5h v&agrave; 17h</li>\r\n	<li><strong>Ng&agrave;y chủ nhật:&nbsp;</strong>6 th&aacute;nh lễ được diễn ra v&agrave;o l&uacute;c 5h15, 8h, 10h, 15h, 17h v&agrave; 18h30</li>\r\n</ul>\r\n\r\n<p>Nếu đi&nbsp;<strong><a href=\"https://vinpearl.com/vi/du-lich-da-nang\">du lịch Đ&agrave; Nẵng</a></strong>&nbsp;v&agrave; gh&eacute; thăm nh&agrave; thờ Con G&agrave; v&agrave;o c&aacute;c khung giờ tr&ecirc;n th&igrave; bạn sẽ được tham dự v&agrave;o c&aacute;c th&aacute;nh lễ, t&igrave;m hiểu về gi&aacute;o l&yacute; c&ocirc;ng gi&aacute;o. V&agrave;o l&uacute;c 10h của lễ chủ nhật nh&agrave; thờ Con G&agrave; sẽ c&oacute; th&ecirc;m lễ tiếng Anh v&ocirc; c&ugrave;ng đặc biệt. Trải nghiệm n&agrave;y sẽ đem lại cho du kh&aacute;ch cảm gi&aacute;c thư th&aacute;i, b&igrave;nh y&ecirc;n v&agrave; tĩnh lặng trong t&acirc;m hồn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>2. Lịch sử nh&agrave; thờ Con G&agrave; ở Đ&agrave; Nẵng</h2>\r\n\r\n<p>Theo c&aacute;c t&agrave;i liệu thuyết minh&nbsp;<em>nh&agrave; thờ Con G&agrave;</em>&nbsp;Đ&agrave; Nẵng th&igrave; đ&acirc;y l&agrave; nh&agrave; thờ duy nhất được x&acirc;y dựng v&agrave;o thời Ph&aacute;p thuộc ở th&agrave;nh phố Đ&agrave; Nẵng. Lịch sử h&igrave;nh th&agrave;nh nh&agrave; thờ Con G&agrave;:</p>\r\n\r\n<ul>\r\n	<li><strong>Th&aacute;ng 2/1923:</strong>&nbsp;Nh&agrave; thờ bắt đầu&nbsp;<em><strong>khởi c&ocirc;ng</strong></em>&nbsp;tr&ecirc;n mảnh đất trống ở đường Rue du Mus&eacute;e (hiện nay l&agrave; đường Trần Ph&uacute;)</li>\r\n	<li><strong>Th&aacute;ng 9/1923:</strong>&nbsp;Ho&agrave;n th&agrave;nh phần&nbsp;<em><strong>mặt tiền</strong></em>&nbsp;của nh&agrave; thờ Con G&agrave;</li>\r\n	<li><strong>Ng&agrave;y 10/03/1924:</strong>&nbsp;Tổ chức lễ cung hiến v&agrave;&nbsp;<em><strong>kh&aacute;nh th&agrave;nh</strong></em></li>\r\n</ul>\r\n\r\n<p>Nh&agrave; thờ Con G&agrave; được thiết kế bởi linh mục Vallet nổi tiếng. Mặc d&ugrave; chỉ được x&acirc;y dựng trong một khoảng thời gian rất ngắn nhưng nh&agrave; thờ vẫn mang vẻ đẹp tr&aacute;ng lệ v&agrave; nguy nga như một l&acirc;u đ&agrave;i ở ch&acirc;u &Acirc;u.</p>\r\n', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.9768532369717!2d108.22092451429654!3d16.066690893774876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142198f38589aef%3A0x9409e1a4c30cbf79!2zTmjDoCBUaMahzIAgQ29uIEfDoA!5e0!3m2!1svi!2s!4v1637834470122!5m2!1svi!2s', 15, '10000', 30, 'Hải châu - Đà Nẵng', 1, 2),
(6, 'landmark 81 sài gòn', 'SP_04', '4000000000', '1637829445_toa-nha-cao-nhat-vn.jpg', 'sổ hồng', '<h2>Địa chỉ Landmark 81 ở đ&acirc;u?</h2>\r\n\r\n<p>Tọa lạc nơi &ldquo;tr&aacute;i tim&rdquo; của&nbsp;<a href=\"https://vinhomes.vn/vi/vinhomes-central-park\"><strong>khu đ&ocirc; thị Vinhomes Central Park</strong></a>,&nbsp;<strong>địa chỉ Landmark 81</strong>&nbsp;nằm tại vị tr&iacute; đắt gi&aacute; bậc nhất S&agrave;i G&ograve;n khi bao trọn mặt tiền con đường huyết mạch Nguyễn Hữu Cảnh v&agrave; Điện Bi&ecirc;n Phủ, quận T&acirc;n B&igrave;nh, th&agrave;nh phố Hồ Ch&iacute; Minh. Nơi đ&acirc;y tạo sức h&uacute;t mạnh mẽ kh&ocirc;ng chỉ với kh&aacute;ch mua m&agrave; cả giới đầu tư khi sau lưng l&agrave; trung t&acirc;m th&agrave;nh phố sầm uất, năng động v&agrave; trước mặt l&agrave; d&ograve;ng s&ocirc;ng S&agrave;i G&ograve;n thơ mộng hướng ra kh&ocirc;ng gian tự nhi&ecirc;n trong l&agrave;nh v&agrave; tho&aacute;ng đ&atilde;ng.</p>\r\n\r\n<p>Theo c&aacute;c chuy&ecirc;n gia đầu ng&agrave;nh&nbsp;<strong>bất động sản</strong>, địa chỉ t&ograve;a nh&agrave; 81 tầng thuộc dự &aacute;n Vinhomes Central Park được đ&aacute;nh gi&aacute; cao nhờ hạ tầng giao th&ocirc;ng đồng bộ v&agrave; ho&agrave;n thiện xung quanh. Nằm kế cận Metro T&acirc;n Cảng v&agrave; trạm số 5 tuyến Metro Bến Th&agrave;nh - Suối Ti&ecirc;n chỉ trong b&aacute;n k&iacute;nh 50m, nơi đ&acirc;y sở hữu điểm giao kết nối thuận tiện tới c&aacute;c tuyến đường huyết mạch lan tỏa về mu&ocirc;n nơi.&nbsp;</p>\r\n\r\n<p>Cụ thể, từ&nbsp;<em>địa chỉ t&ograve;a nh&agrave; Landmark 81</em>, cư d&acirc;n chỉ mất 3 ph&uacute;t di chuyển tới Khu đ&ocirc; thị mới Thủ Thi&ecirc;m, 4 ph&uacute;t đến tuyến đường sắt Metro v&agrave; 5 ph&uacute;t để tiếp cận đến trung t&acirc;m Quận 1 th&agrave;nh phố Hồ Ch&iacute; Minh. Đặc biệt, nơi n&agrave;y c&ograve;n mang t&iacute;nh kết nối khu vực cao khi đ&aacute;p ứng dễ d&agrave;ng cả 3 loại h&igrave;nh giao th&ocirc;ng đường bộ, đường thủy v&agrave; đường sắt - điều m&agrave; &iacute;t dự &aacute;n n&agrave;o c&oacute; được.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, vị tr&iacute; độc t&ocirc;n nằm s&aacute;t c&aacute;c tuyến Metro của &ldquo;t&ograve;a nh&agrave; cao nhất Việt Nam&rdquo; Landmark 81 cũng l&agrave; đ&ograve;n bẩy quan trọng gi&uacute;p gia tăng gi&aacute; trị dự &aacute;n l&ecirc;n 10-20% chỉ trong thời gian ngắn. Dự kiến trong tương lai khi c&aacute;c c&ocirc;ng tr&igrave;nh hạ tầng v&agrave; kỹ thuật được ho&agrave;n th&agrave;nh, gi&aacute; đất nơi đ&acirc;y sẽ b&ugrave;ng nổ mạnh mẽ v&agrave; trở th&agrave;nh t&acirc;m điểm được săn đ&oacute;n h&agrave;ng đầu trong giới địa ốc S&agrave;i G&ograve;n.</p>\r\n\r\n<h3>Thi&ecirc;n đường giải tr&iacute; C&ocirc;ng vi&ecirc;n Landmark 81</h3>\r\n\r\n<p>Với quy m&ocirc; đầu tư l&ecirc;n đến 500 tỷ,&nbsp;<em>địa chỉ c&ocirc;ng vi&ecirc;n Landmark 81</em>&nbsp;nhanh ch&oacute;ng trở th&agrave;nh một trong những điểm đến tham quan th&uacute; vị bậc nhất tại S&agrave;i G&ograve;n. Đại c&ocirc;ng vi&ecirc;n được lấy cảm hứng từ kỳ quan nổi tiếng Central Park của th&agrave;nh phố New York, từ đ&oacute; mang trong m&igrave;nh sự giao thoa h&agrave;i h&ograve;a của nhiều nền văn h&oacute;a độc đ&aacute;o tr&ecirc;n thế giới.&nbsp;</p>\r\n\r\n<p>Nằm ngay s&aacute;t&nbsp;<strong>địa chỉ&nbsp;Landmark 81</strong>, vẻ đẹp nơi đ&acirc;y xứng tầm thời thượng khi quy tụ hơn 40 hạng mục tiện &iacute;ch cao cấp v&agrave; h&agrave;ng loạt c&aacute;c địa điểm ngắm cảnh tuyệt đẹp. Đặc biệt, b&atilde;i cỏ xanh trải d&agrave;i c&ugrave;ng background &ldquo;độc nhất&rdquo; l&agrave; t&ograve;a th&aacute;p cao nhất Việt Nam đang tạo n&ecirc;n cơn sốt, trở th&agrave;nh điểm cắm trại v&agrave; d&atilde; ngoại ưa th&iacute;ch của giới trẻ S&agrave;i G&ograve;n.&nbsp;</p>\r\n\r\n<p>Đặc biệt,&nbsp;<a href=\"https://vinhomes.vn/vi/cong-vien-landmark-81-dau-an-new-york-giua-long-sai-gon\"><strong>C&ocirc;ng vi&ecirc;n Landmark 81</strong></a>&nbsp;với diện t&iacute;ch rộng lớn được bao quanh bởi d&ograve;ng s&ocirc;ng S&agrave;i G&ograve;n c&ograve;n g&oacute;p phần kiến tạo n&ecirc;n hệ sinh th&aacute;i xanh tr&ugrave; ph&uacute; nơi đại đ&ocirc; thị mang thương hiệu&nbsp;<strong><a href=\"https://vinhomes.vn/\">Vinhomes</a></strong>. C&aacute;c hoạt động như dạo bộ tr&ecirc;n bờ s&ocirc;ng xanh m&aacute;t hay tập luyện thể thao giữa bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh, tr&aacute;nh xa kh&oacute;i bụi th&agrave;nh phố tại đ&acirc;y chắc chắn sẽ mang đến những giờ ph&uacute;t nghỉ ngơi thư th&aacute;i cho to&agrave;n bộ cư d&acirc;n.&nbsp;</p>\r\n', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.2171656687456!2d106.71930596424623!3d10.794672611809736!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529a18fa325fd%3A0x25f815f86c6d39c1!2sVincom%20Center%20Landmark%2081!5e0!3m2!1svi!2s!4v1637834592209!5m2!1svi!2s', 15, '1100', 10, 'Sài gòn', 1, 2),
(9, 'bán nhanh đất biển Võ Nguyên Giáp, ngay bãi tắm T20', 'SP_05', '20000000000', '1638258272_anhBDS.jpg', 'sổ hồng', '<p>Cần b&aacute;n nhanh cặp đất biển V&otilde; Nguy&ecirc;n Gi&aacute;p, Ngũ H&agrave;nh Sơn, Đ&agrave; Nẵng.<br />\r\n- Vị tr&iacute; đẹp, nằm tr&ecirc;n trục đường 5 sao của Đ&agrave; Nẵng, khu vực sầm uất, tập trung nhiều kh&aacute;ch du lịch lưu tr&uacute;, đi bộ xuống b&atilde;i biển T20 rất gần.<br />\r\n- Diện t&iacute;ch 14m x 20m = 280m2, hướng Đ&ocirc;ng.<br />\r\nGi&aacute; 17x tr/m2.</p>\r\n', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d677.8747936702343!2d108.22188199209027!3d16.032306090471824!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219ee598df9c5%3A0xaadb53409be7c909!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBLaeG6v24gdHLDumMgxJDDoCBO4bq1bmc!5e0!3m2!1svi!2s!4v1638257993661!5m2!1svi!2s', 12, '600', 1, 'Võ Nguyên Giáp, Ngũ Hành Sơn, Đà Nẵng.', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(1, '2021-11-28', 4, '15000000000', 1),
(2, '2021-11-29', 6, '26000000000', 1),
(3, '2021-12-04', 2, '12000000000', 1),
(4, '2021-12-06', 1, '10000000000', 1),
(5, '2021-12-11', 1, '1000000000', 1);

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
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
