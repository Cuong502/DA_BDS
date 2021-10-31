-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 31, 2021 lúc 07:20 AM
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
  `id_baiviet` int(11) NOT NULL,
  `tenbaiviet` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mabaiviet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phaply` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoigiandautu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loinhuankyvong` int(11) NOT NULL,
  `sonhadautu` int(11) NOT NULL,
  `daban` int(11) NOT NULL,
  `diachi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id_baiviet`, `tenbaiviet`, `mabaiviet`, `gia`, `hinhanh`, `phaply`, `noidung`, `thoigiandautu`, `loinhuankyvong`, `sonhadautu`, `daban`, `diachi`, `tinhtrang`, `id_danhmuc`) VALUES
(5, 'Corn building Đà Nẵng', 'BV_01', '1000', '1634874253_trung-tam-hanh-chinh.jpg', 'token liền tay', ' - Tòa nhà Trung tâm Hành chính Đà Nẵng toạ lạc tại số 24 Trần Phú, P.Thạch Thang, Q.Hải Châu, Tp.Đà Nẵng có độ cao 36 tầng, gồm 34 tầng nổi và 2 tầng hầm, có độ cao 166,8m là Toà nhà làm việc của các Cơ quan Sở ban ngành tại Tp.Đà Nẵng.\r\n<br>\r\n - Tòa nhà Trung tâm Hành chính Đà Nẵng khởi công từ tháng 11/2008 và chính thức khánh thành vào ngày 8/9/2014. Toà nhà có tổng diện tích sàn 65.234 m2, đây là tòa nhà cao nhất Đà Nẵng và miền Trung hiện nay. Công trình có vốn đầu tư hơn 2.000 tỷ đồng với kiến trúc như một ngọn hải đăng hướng ra biển, nhưng người dân vẫn quen gọi là \"Toà nhà quả Bắp\" vì nhìn từ xa Toà nhà khá giống với hình dáng quả bắp dựng đứng.', '6 tháng', 15, 10, 800, 'Đà Nẵng', 1, 2),
(6, 'Landmark 81 Sài Gòn', 'BV_02', '1000', '1634874286_toa-nha-cao-nhat-vn.jpg', 'token liền tay', 'incom Landmark 81 là một tòa nhà chọc trời trong tổ hợp dự án Vinhomes Central Park, một dự án có tổng mức đầu tư khoảng 300 triệu USD, do Công ty Cổ phần Đầu tư xây dựng Tân Liên Phát thuộc Vingroup làm chủ đầu tư. Tòa tháp cao 81 tầng (với 3 tầng hầm), hiện tại là tòa nhà cao nhất Việt Nam[2], cao thứ 2 Đông Nam Á,[3][4] Hiện nay đến ngày 1/5/2021 là tòa nhà cao thứ 15 thế giới. Dự án được xây dựng ở Tân Cảng, quận Bình Thạnh ven sông Sài Gòn được khởi công ngày 26/07/2014. Tòa nhà được khai trương và đưa vào sử dụng ngày 26/07/2018.', '5 Tháng', 15, 14, 600, 'Hồ Chí Minh', 1, 2),
(7, 'nhà thờ con gà', 'BV_03', '1000', '1634874300_toa-nha-con-ga-DN.jpg', 'token liền tay', 'Nhà thờ Chính tòa Đà Nẵng (tên chính thức: Nhà thờ Thánh Tâm Chúa Giêsu ) là nhà thờ chính tòa của Giáo phận Đà Nẵng ở miền Trung Việt Nam, tọa lạc tại 156 đường Trần Phú, phường Hải Châu I, quận Hải Châu, thành phố Đà Nẵng. Đây là nhà thờ duy nhất được xây dựng tại Đà Nẵng thời Pháp thuộc.\r\n<br>\r\nNhà thờ Con Gà Đà Nẵng\r\nNhà thờ này được khởi công từ tháng 2 năm 1923 trên khoảng đất trống đường Rue du Musée (nay là đường Trần Phú) do linh mục Vallet thiết kế và chủ công xây dựng. Nhà thờ chính tòa Đà Nẵng cũng là một trong những công trình được xây dựng trong thời gian rất ngắn, đến ngày 10 tháng 3 năm 1924 đã làm lễ cung hiến và khánh thành.\r\n<br>\r\nNhà thờ mang phong cách kiến trúc Gothic với những đường nét cao vút, những vòm cửa quả trám. Bên trong nhà thờ có các tranh ảnh và thánh tượng minh họa theo sự kiện trong Kinh Thánh theo mô-típ các nhà thờ phương Tây. Trên nóc nhà thờ, ở vị trí cột thu lôi có tượng một con gà màu xám làm bằng hợp kim dùng làm vật xác định hướng gió. Vì vậy mà nhà thờ này còn có tên là Nhà thờ Con Gà.', '4 Tháng', 16, 15, 500, 'Đà Nẵng', 1, 2),
(8, 'Hồ hoàn kiếm', 'BV_04', '1000', '1634874312_ho-guom-ha-noi-avt.jpg', 'token liền tay', 'Hồ Hoàn Kiếm (chữ Nôm: 湖還劍 hoặc 還劍湖) còn được gọi là Hồ Gươm là một hồ nước ngọt tự nhiên nằm ở trung tâm thành phố Hà Nội. Hồ có diện tích khoảng 12 ha[2]. Trước kia, hồ còn có các tên gọi là hồ Lục Thủy (vì nước có màu xanh quanh năm), hồ Thủy Quân (dùng để duyệt thủy binh), hồ Tả Vọng và Hữu Vọng (trong thời Lê mạt). Tên gọi Hoàn Kiếm xuất hiện vào đầu thế kỉ 15 gắn với truyền thuyết vua Lê Lợi trả gươm báu cho Rùa thần. Theo truyền thuyết, trong một lần vua Lê Lợi dạo chơi trên thuyền, bỗng một con rùa vàng nổi lên mặt nước đòi nhà vua trả thanh gươm mà Long Vương cho mượn để đánh đuổi quân Minh xâm lược. Nhà vua liền trả gươm cho rùa thần và rùa lặn xuống nước biến mất. Từ đó hồ được lấy tên là hồ Hoàn Kiếm. Tên hồ còn được lấy để đặt cho một quận trung tâm của Hà Nội (quận Hoàn Kiếm) và là hồ nước duy nhất của quận này cho đến ngày nay.', '3 Tháng', 16, 20, 700, 'Hà Nội', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `tentaikhoan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `dienthoai`, `tentaikhoan`, `matkhau`) VALUES
(1, 'Nguyễn Văn Cường', 'cuong_1751220081@dau.edu.vn', 984421213, 'cuong123', '202CB962AC59075B964B07152D234B70');

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
(1, 'SÀN SOLANA', 1),
(2, 'BẤT ĐỘNG SẢN', 2),
(5, 'DANH BẠ', 5),
(6, 'TIN TỨC', 6);

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
  ADD PRIMARY KEY (`id_baiviet`);

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
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
