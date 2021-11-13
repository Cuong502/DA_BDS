-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 12, 2021 lúc 06:53 AM
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
CREATE DATABASE IF NOT EXISTS `da_bds` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `da_bds`;

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
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id_baiviet`, `tenbaiviet`, `mabaiviet`, `gia`, `hinhanh`, `phaply`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(1, 'ấd', 'BV_01', '100000', '1632386701_logo-dhktdn-150.png', 'ádfg', 'sdfghjkkiu7y654edfvbnjy', 1, 5),
(2, 'ấd', '', '', '1632387408_logo-dhktdn-150.png', 'sổ hồng', 'âsasasasasasasasasasasasasa', 1, 1),
(3, 'Bất động sản đông anm', 'BV_03', '10000', '1632389160_banner_batdongsan4.jpg', 'sổ hồng', 'Vậy độ phân giải màn hình là gì? Độ phân giải màn hình là chỉ số các điểm ảnh hiển thị trên màn hình và thường được gọi là pixels. Các chỉ số này càng lớn thì màn hình hiển thị càng chi tiết.\r\n\r\nHãy nhớ lại những chiếc TV đời cũ, khi nhìn gần bạn sẽ thấy các ô hình vuông trên màn hình, đó là điểm ảnh đấy nên việc ngồi xa cũng là một cách để hình ảnh hiển thị chi tiết hơn. Nhưng hiện nay với màn hình có số lượng điểm ảnh cao, bạn sẽ khó hoặc không thể nhìn được điểm ảnh đâu. ', 1, 1),
(4, 'BDS', '0001', '1000', '1633913571_benefit.png', 'sổ hồng', '', 1, 5);

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
(1, 'MUA BÁN NHÀ ĐẤT', 1),
(2, 'CHO THUÊ NHÀ DẤT', 2),
(3, 'DỰ ÁN', 3),
(4, 'DANH BẠ', 4),
(5, 'TIN TỨC', 5);

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
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Cơ sở dữ liệu: `db`
--
CREATE DATABASE IF NOT EXISTS `db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db`;
--
-- Cơ sở dữ liệu: `db_ban_hang`
--
CREATE DATABASE IF NOT EXISTS `db_ban_hang` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_ban_hang`;
--
-- Cơ sở dữ liệu: `db_tour_du_lich`
--
CREATE DATABASE IF NOT EXISTS `db_tour_du_lich` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `db_tour_du_lich`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_Admin` int(50) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` int(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `id_bai_binh_luan` int(50) NOT NULL,
  `id_Users` int(50) NOT NULL,
  `id_bai_dang` int(50) NOT NULL,
  `noi_dung_BL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_BL` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_bai`
--

CREATE TABLE `dang_bai` (
  `id_bai_dang` int(50) NOT NULL,
  `Ten_bai_dang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tom_tat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Thoi_gian_dang_bai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tl_binh_luan`
--

CREATE TABLE `tl_binh_luan` (
  `id_tra_loi_BL` int(50) NOT NULL,
  `id_bai_binh_luan` int(50) NOT NULL,
  `id_admin` int(50) NOT NULL,
  `noi_dung_BL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_TLBL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_Users` int(50) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sđt` int(10) NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trn_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`id_bai_binh_luan`),
  ADD KEY `id_Users` (`id_Users`),
  ADD KEY `id_bai_dang` (`id_bai_dang`);

--
-- Chỉ mục cho bảng `tl_binh_luan`
--
ALTER TABLE `tl_binh_luan`
  ADD PRIMARY KEY (`id_tra_loi_BL`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_bai_binh_luan` (`id_bai_binh_luan`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_Users`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `id_bai_binh_luan` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_Users` int(50) NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `dulich1`
--
CREATE DATABASE IF NOT EXISTS `dulich1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dulich1`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id_bl` int(5) NOT NULL,
  `id` int(5) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `noidung_bl` varchar(200) NOT NULL,
  `thoi_gian` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id_bl`, `id`, `ten`, `noidung_bl`, `thoi_gian`) VALUES
(139, 1, 'cuong', 'tour khÃ¡ há»£p lÃ½', '2021-09-05 11:16:32'),
(140, 1, 'cuong', 'há»£p lÃ½', '2021-09-05 11:16:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour`
--

CREATE TABLE `tour` (
  `id` int(100) NOT NULL,
  `tieude` varchar(100) NOT NULL,
  `img` text NOT NULL,
  `noidung` varchar(1000) NOT NULL,
  `giatour` int(100) NOT NULL,
  `loaihinh` int(1) NOT NULL,
  `lichtrinh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tour`
--

INSERT INTO `tour` (`id`, `tieude`, `img`, `noidung`, `giatour`, `loaihinh`, `lichtrinh`) VALUES
(1, 'BÃ  NÃ  Hill', 'ba-na-hill.jpg', 'BÃ  NÃ  Hills Ä‘Æ°á»£c biáº¿t Ä‘áº¿n lÃ  má»™t trong nhá»¯ng Ä‘á»‹a Ä‘iá»ƒm ná»•i tiáº¿ng báº­c nháº¥t táº¡i Viá»‡t Nam mÃ  báº¥t ká»³ du khÃ¡ch nÃ o cÅ©ng khÃ´ng thá»ƒ bá» qua. NÆ¡i nÃ y Ä‘Æ°á»£c vÃ­ von nhÆ° chá»‘n â€˜â€™tiÃªn cáº£nhâ€™â€™, nhÆ° má»™t â€˜â€™chÃ¢u Ã‚u thu nhá» trong lÃ²ng thÃ nh phá»‘â€™â€™ vá»›i nhá»¯ng cÃ´ng trÃ¬nh kiáº¿n trÃºc cá»• Ä‘áº¹p ma má»‹, nhá»¯ng trÃ² chÆ¡i giáº£i trÃ­ cá»±c ká»³ háº¥p dáº«n hay cáº£ má»™t vÆ°á»n hoa thÆ¡m ngÃ¡t ngÃ o ngáº¡t chá» Ä‘Ã³n du khÃ¡ch Ä‘áº¿n chá»¥p hÃ¬nh. Táº¥t cáº£ Ä‘Ã£ táº¡o nÃªn má»™t BÃ  NÃ  Hills cá»±c ká»³ Ä‘á»™c Ä‘Ã¡o khiáº¿n cho báº¥t ká»³ du khÃ¡ch nÃ o Ä‘Ã£ Ä‘áº¿n thÃ¬ Ä‘á»u khÃ´ng ná»¡ bÆ°á»›c chÃ¢n Ä‘i. VietSense travel sáº½ giá»›i thiá»‡u tá»•ng quan vá» BÃ  NÃ  Hills Ä‘á»ƒ giÃºp du khÃ¡ch cÃ³ thá»ƒ táº­n hÆ°á»Ÿng vÃ  khÃ¡m phÃ¡ Ä‘á»‹a danh du lá»‹ch nÃ y má»™t cÃ¡ch trá»n váº¹n nháº¥t.', 1100, 1, '2 ngÃ y');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `traloibinhluan`
--

CREATE TABLE `traloibinhluan` (
  `id_tl` int(5) NOT NULL,
  `id_bl` int(11) NOT NULL,
  `noidung_tl` varchar(100) NOT NULL,
  `ten_tl` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_tv` int(5) NOT NULL,
  `quyentruycap` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`username`, `email`, `password`, `id_tv`, `quyentruycap`) VALUES
('admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 11, 0),
('cuong', 'cuong@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 24, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id_bl`);

--
-- Chỉ mục cho bảng `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `traloibinhluan`
--
ALTER TABLE `traloibinhluan`
  ADD PRIMARY KEY (`id_tl`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_tv`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id_bl` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `tour`
--
ALTER TABLE `tour`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `traloibinhluan`
--
ALTER TABLE `traloibinhluan`
  MODIFY `id_tl` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_tv` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Cơ sở dữ liệu: `laravel_demo`
--
CREATE DATABASE IF NOT EXISTS `laravel_demo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laravel_demo`;
--
-- Cơ sở dữ liệu: `nhan_khau`
--
CREATE DATABASE IF NOT EXISTS `nhan_khau` DEFAULT CHARACTER SET armscii8 COLLATE armscii8_general_ci;
USE `nhan_khau`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `can_bo`
--

CREATE TABLE `can_bo` (
  `STT` int(11) NOT NULL,
  `MaCB` int(11) NOT NULL,
  `Họ và Tên` int(11) NOT NULL,
  `Chức vụ` int(11) NOT NULL,
  `năm sinh` int(11) NOT NULL,
  `Số điện thoại` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cong_an`
--

CREATE TABLE `cong_an` (
  `STT` int(50) NOT NULL,
  `MaCongAn` int(100) NOT NULL,
  `Họ và Tên` varchar(100) NOT NULL,
  `Chức vụ` varchar(100) NOT NULL,
  `năm sinh` date NOT NULL,
  `Số CMND` int(10) NOT NULL,
  `gửi đơn yêu cầu` varchar(255) NOT NULL,
  `nhận đơn yêu cầu` varchar(255) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `Sđt` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dan`
--

CREATE TABLE `nguoi_dan` (
  `STT` int(11) NOT NULL,
  `Idnguoidan` int(11) NOT NULL,
  `họ và tên` int(11) NOT NULL,
  `tuổi` int(11) NOT NULL,
  `Số CMND` int(11) NOT NULL,
  `Diạ chỉ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `to_dan_pho`
--

CREATE TABLE `to_dan_pho` (
  `STT` int(11) NOT NULL,
  `MaTDP` int(11) NOT NULL,
  `tên Tổ dân phố` varchar(100) NOT NULL,
  `họ và tên` varchar(100) NOT NULL,
  `năm sinh` date NOT NULL,
  `Số điện thoại` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `can_bo`
--
ALTER TABLE `can_bo`
  ADD PRIMARY KEY (`MaCB`);

--
-- Chỉ mục cho bảng `cong_an`
--
ALTER TABLE `cong_an`
  ADD PRIMARY KEY (`MaCongAn`);

--
-- Chỉ mục cho bảng `nguoi_dan`
--
ALTER TABLE `nguoi_dan`
  ADD PRIMARY KEY (`Idnguoidan`);

--
-- Chỉ mục cho bảng `to_dan_pho`
--
ALTER TABLE `to_dan_pho`
  ADD PRIMARY KEY (`MaTDP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `can_bo`
--
ALTER TABLE `can_bo`
  MODIFY `MaCB` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nguoi_dan`
--
ALTER TABLE `nguoi_dan`
  MODIFY `Idnguoidan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `to_dan_pho`
--
ALTER TABLE `to_dan_pho`
  MODIFY `MaTDP` int(11) NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Đang đổ dữ liệu cho bảng `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"angular\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"full_screen\":\"off\",\"small_big_all\":\">\",\"pin_text\":\"false\",\"side_menu\":\"true\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

--
-- Đang đổ dữ liệu cho bảng `pma__favorite`
--

INSERT INTO `pma__favorite` (`username`, `tables`) VALUES
('root', '[]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Đang đổ dữ liệu cho bảng `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'can_bo', 'table', 'nhan_khau', ''),
('root', 'cong_an', 'table', 'nhan_khau', ''),
('root', 'nguoi_dan', 'table', 'nhan_khau', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('quan_ly_nhan_khau', 4, 'DA');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"web_phu_kien\",\"table\":\"tbl_sanpham\"},{\"db\":\"web_phu_kien\",\"table\":\"tbl_danhmuc\"},{\"db\":\"web_phu_kien\",\"table\":\"tbl_admin\"},{\"db\":\"dulich1\",\"table\":\"binhluan\"},{\"db\":\"dulich1\",\"table\":\"traloibinhluan\"},{\"db\":\"dulich1\",\"table\":\"tour\"},{\"db\":\"dulich1\",\"table\":\"users\"},{\"db\":\"db_tour_du_lich\",\"table\":\"tl_binh_luan\"},{\"db\":\"db_tour_du_lich\",\"table\":\"binh_luan\"},{\"db\":\"db_tour_du_lich\",\"table\":\"dang_bai\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Đang đổ dữ liệu cho bảng `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('quan_ly_nhan_khau', 'admin', 4, 1230, 100),
('quan_ly_nhan_khau', 'can_bo', 4, 915, 235),
('quan_ly_nhan_khau', 'cong_an', 4, 914, 36),
('quan_ly_nhan_khau', 'nguoi_dan', 4, 310, 172),
('quan_ly_nhan_khau', 'so_ho_khau', 4, 26, 301),
('quan_ly_nhan_khau', 'tam_tru', 4, 57, 182),
('quan_ly_nhan_khau', 'tam_vang', 4, 43, 83),
('quan_ly_nhan_khau', 'to_dan_pho', 4, 602, 195);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('quan_ly_nhan_khau', 'can_bo', 'MaCB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Đang đổ dữ liệu cho bảng `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'dulich1', 'tour', '[]', '2021-09-05 08:52:24'),
('root', 'dulich1', 'users', '{\"CREATE_TIME\":\"2021-04-22 23:07:22\",\"col_order\":[0,1,3,2,4],\"col_visib\":[1,1,1,1,1]}', '2021-04-22 16:12:29'),
('root', 'quan_ly_nhan_khau', 'admin', '{\"CREATE_TIME\":\"2021-01-08 17:43:34\",\"col_order\":[0,1,2,3,4],\"col_visib\":[1,1,1,1,1]}', '2021-01-11 08:58:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-09-09 15:26:47', '{\"Console\\/Mode\":\"show\",\"lang\":\"vi\",\"NavigationWidth\":336}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `quan_ly_nhan_khau`
--
CREATE DATABASE IF NOT EXISTS `quan_ly_nhan_khau` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `quan_ly_nhan_khau`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `IDAdmin` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` int(11) NOT NULL,
  `MaCongAn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaCB` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`IDAdmin`, `Name`, `password`, `MaCongAn`, `MaCB`) VALUES
('Admin1', 'Lê Vinh', 11112222, '', ''),
('Admin2', 'Trần Cảnh Sơn', 11111111, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `can_bo`
--

CREATE TABLE `can_bo` (
  `MaCB` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PasswordCB` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenCanBo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ChucVu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaTDP` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NamSinh` date NOT NULL,
  `SoDienThoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cong_an`
--

CREATE TABLE `cong_an` (
  `MaCongAn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PasswordCA` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HoVaTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ChucVu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NamSinh` date NOT NULL,
  `SoDienThoai` int(11) NOT NULL,
  `MaTDP` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dan`
--

CREATE TABLE `nguoi_dan` (
  `idNguoiDan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PasswordNdan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MaSHK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HoVaTen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SoCMND` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` text COLLATE utf8_unicode_ci NOT NULL,
  `Namsinh` date NOT NULL,
  `ĐiaChi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DanToc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` int(11) DEFAULT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `so_ho_khau`
--

CREATE TABLE `so_ho_khau` (
  `MaSHK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idnguoidan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenChuHo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` date NOT NULL,
  `NTTTKCD` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `QuaHeVoiChuHo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tam_tru`
--

CREATE TABLE `tam_tru` (
  `MaTamTru` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idnguoidan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaydangki` date NOT NULL,
  `Ngayhethan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tam_vang`
--

CREATE TABLE `tam_vang` (
  `MaTamVang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idnguoidan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaydangkitamvang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `to_dan_pho`
--

CREATE TABLE `to_dan_pho` (
  `MaTDP` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tenTDP` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `HovaTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ChucVu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idnguoidan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NamSinh` date NOT NULL,
  `sđt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`IDAdmin`),
  ADD KEY `MaCongAn` (`MaCongAn`),
  ADD KEY `MaCB` (`MaCB`);

--
-- Chỉ mục cho bảng `can_bo`
--
ALTER TABLE `can_bo`
  ADD PRIMARY KEY (`MaCB`),
  ADD KEY `MaTDP` (`MaTDP`),
  ADD KEY `PasswordCB` (`PasswordCB`);

--
-- Chỉ mục cho bảng `cong_an`
--
ALTER TABLE `cong_an`
  ADD PRIMARY KEY (`MaCongAn`),
  ADD KEY `PasswordCA` (`PasswordCA`),
  ADD KEY `MaTDP` (`MaTDP`);

--
-- Chỉ mục cho bảng `nguoi_dan`
--
ALTER TABLE `nguoi_dan`
  ADD PRIMARY KEY (`idNguoiDan`),
  ADD KEY `MaSHK` (`MaSHK`);

--
-- Chỉ mục cho bảng `so_ho_khau`
--
ALTER TABLE `so_ho_khau`
  ADD PRIMARY KEY (`MaSHK`),
  ADD KEY `idnguoidan` (`idnguoidan`);

--
-- Chỉ mục cho bảng `tam_tru`
--
ALTER TABLE `tam_tru`
  ADD PRIMARY KEY (`MaTamTru`),
  ADD KEY `idnguoidan` (`idnguoidan`);

--
-- Chỉ mục cho bảng `tam_vang`
--
ALTER TABLE `tam_vang`
  ADD PRIMARY KEY (`MaTamVang`),
  ADD KEY `idnguoidan` (`idnguoidan`);

--
-- Chỉ mục cho bảng `to_dan_pho`
--
ALTER TABLE `to_dan_pho`
  ADD PRIMARY KEY (`MaTDP`),
  ADD KEY `idnguoidan` (`idnguoidan`),
  ADD KEY `idnguoidan_2` (`idnguoidan`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `can_bo`
--
ALTER TABLE `can_bo`
  ADD CONSTRAINT `can_bo_ibfk_1` FOREIGN KEY (`MaCB`) REFERENCES `admin` (`MaCB`);

--
-- Các ràng buộc cho bảng `cong_an`
--
ALTER TABLE `cong_an`
  ADD CONSTRAINT `cong_an_ibfk_1` FOREIGN KEY (`MaCongAn`) REFERENCES `admin` (`MaCongAn`),
  ADD CONSTRAINT `cong_an_ibfk_2` FOREIGN KEY (`MaTDP`) REFERENCES `to_dan_pho` (`MaTDP`);

--
-- Các ràng buộc cho bảng `nguoi_dan`
--
ALTER TABLE `nguoi_dan`
  ADD CONSTRAINT `nguoi_dan_ibfk_1` FOREIGN KEY (`MaSHK`) REFERENCES `so_ho_khau` (`MaSHK`),
  ADD CONSTRAINT `nguoi_dan_ibfk_2` FOREIGN KEY (`idNguoiDan`) REFERENCES `tam_tru` (`idnguoidan`);

--
-- Các ràng buộc cho bảng `tam_vang`
--
ALTER TABLE `tam_vang`
  ADD CONSTRAINT `tam_vang_ibfk_1` FOREIGN KEY (`idnguoidan`) REFERENCES `nguoi_dan` (`idNguoiDan`);

--
-- Các ràng buộc cho bảng `to_dan_pho`
--
ALTER TABLE `to_dan_pho`
  ADD CONSTRAINT `to_dan_pho_ibfk_1` FOREIGN KEY (`MaTDP`) REFERENCES `can_bo` (`MaTDP`),
  ADD CONSTRAINT `to_dan_pho_ibfk_2` FOREIGN KEY (`idnguoidan`) REFERENCES `nguoi_dan` (`idNguoiDan`);
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Cơ sở dữ liệu: `web_mysqli`
--
CREATE DATABASE IF NOT EXISTS `web_mysqli` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `web_mysqli`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'Cuongadmin', '202CB962AC59075B964B07152D234B70', 1),
(2, 'cuong', '202CB962AC59075B964B07152D234B70', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(3, 1, '9281', 0),
(4, 1, '4458', 0),
(5, 6, '1632', 1),
(6, 8, '8138', 0),
(7, 1, '4175', 0),
(8, 10, '3367', 0),
(9, 10, '9861', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(7, '9281', 9, 3),
(8, '9281', 8, 1),
(9, '4458', 9, 3),
(10, '4458', 8, 1),
(11, '1632', 12, 5),
(12, '8138', 11, 5),
(13, '4175', 6, 2),
(14, '4175', 8, 2),
(15, '3367', 12, 1),
(16, '9861', 15, 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(10, 'cuong', 'cuong', 'đn', '202cb962ac59075b964b07152d234b70', '0984421213');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(1, 'Ốp lưng đẹp', 1),
(2, 'Màn hình điện thoại ', 3),
(4, 'Kính cường lực', 4),
(5, 'Phụ kiện trang trí', 5),
(6, 'laptop', 6),
(7, 'Dây sạc', 7);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(15, 'ỐP lưng Doremon ', 'OL_1', '15000', 10, '1633064595_tainghe1.jpg', 'Ốp lưng Doremon xinh lung linh', 'Ốp lưng Doremon xinh lung linh', 1, 1),
(16, 'Dây ngọc bội hoa sen', 'PKTT_1', '50000', 10, '1633064586_tainghe1.jpg', '☘️ Dây Ngọc Bội Hoa Sen ????????????', '☘️ Dây Ngọc Bội Hoa Sen ????????????', 1, 5),
(17, 'Dây đeo châu cá tính', 'PKTT_2', '20000', 15, '1633064575_tainghe1.jpg', 'Day deo châu cá tính xịn xò', 'Day deo châu cá tính xịn xò', 1, 5),
(18, 'Phụ kiện trang trí điện thoại', 'PKTT_3', '35000', 15, '1633064565_tainghe2.png', 'Phụ kiện trang trí điện thoại, laptop, tủ lạnh, ti vi, vv hoạt hình hot (kèm keo dính đa năng dán nhiều bề mặt) PK236', 'Phụ kiện trang trí điện thoại, laptop, tủ lạnh, ti vi, vv hoạt hình hot (kèm keo dính đa năng dán nhiều bề mặt) PK236', 1, 5),
(19, 'Laptop ASUS VivoBook R564JA-UH31T Nhập Khẩu Chính Hãng', 'LT_1', '15000000000', 2, '1633064554_tainghe1.jpg', 'Laptop ASUS VivoBook R564JA-UH31T Nhập Khẩu Chính Hãng', 'Laptop ASUS VivoBook R564JA-UH31T Nhập Khẩu Chính Hãng', 1, 6);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

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
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Cơ sở dữ liệu: `web_phu_kien`
--
CREATE DATABASE IF NOT EXISTS `web_phu_kien` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `web_phu_kien`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(2, 'màn hình điện thoại', 2),
(3, 'Kính cường lực', 3),
(4, 'dây sạc', 4),
(5, 'ốp lưng', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `giasp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(13, 'tai nghe', 'tn01', '10000', 1, '1631254172_tai_nghe_dareU.png', 'sá', 'âs', 1, 2),
(14, 'tai nghe', 'tn01', '10000', 1, '1631254199_tai_nghe_dareU.png', 'sá', 'âs', 1, 5),
(15, 'tai nghe', 'tn01', '10000', 1, '1631262099_tai_nghe_dareU.png', 'sá', 'âs', 1, 3),
(16, 'tai nghe', 'tn01', '10000', 1, '1631262104_tai_nghe_dareU.png', 'sá', 'âs', 1, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
