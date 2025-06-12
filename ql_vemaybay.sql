-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 04, 2024 lúc 07:55 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ql_vemaybay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyenbay`
--

CREATE TABLE `chuyenbay` (
  `machuyenbay` varchar(20) NOT NULL,
  `sochuyenbay` int(20) NOT NULL,
  `mahanghangkhong` varchar(20) NOT NULL,
  `masanbaydi` varchar(20) NOT NULL,
  `masanbayden` varchar(20) NOT NULL,
  `thoigiankhoihanh` datetime(6) NOT NULL,
  `thoigianden` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chuyenbay`
--

INSERT INTO `chuyenbay` (`machuyenbay`, `sochuyenbay`, `mahanghangkhong`, `masanbaydi`, `masanbayden`, `thoigiankhoihanh`, `thoigianden`) VALUES
('CB01', 15, 'VN01', 'SBd01', 'SBD01', '2024-06-02 12:26:38.000000', '2024-06-03 12:26:38.000000'),
('CB02', 10, 'Lao02', 'SBd01', 'SBD01', '2024-06-25 12:27:07.000000', '2024-06-27 12:27:07.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanghangkhong`
--

CREATE TABLE `hanghangkhong` (
  `mahanghangkhong` varchar(20) NOT NULL,
  `tenhanghangkhong` varchar(20) NOT NULL,
  `quocgia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hanghangkhong`
--

INSERT INTO `hanghangkhong` (`mahanghangkhong`, `tenhanghangkhong`, `quocgia`) VALUES
('Lao02', 'LaoAirline', 'Lao'),
('VN01', 'VNAirline', 'Viet Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanhly`
--

CREATE TABLE `hanhly` (
  `mahanhly` varchar(20) NOT NULL,
  `tenhanhly` varchar(30) NOT NULL,
  `mave` varchar(20) NOT NULL,
  `cannang` varchar(20) NOT NULL,
  `kichco` varchar(15) NOT NULL,
  `loaihanhly` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hanhly`
--

INSERT INTO `hanhly` (`mahanhly`, `tenhanhly`, `mave`, `cannang`, `kichco`, `loaihanhly`) VALUES
('HL01', 'Tui Sach', 'Ve01', '20kg', '70cm', 'Nho'),
('HL02', 'Vali', 'Ve02', '40kg', '90cm', 'To');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makhachhang` varchar(20) NOT NULL,
  `tenkhachhang` varchar(30) NOT NULL,
  `diachi` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `sohochieu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makhachhang`, `tenkhachhang`, `diachi`, `email`, `dienthoai`, `sohochieu`) VALUES
('Kh01', 'tran huy tung', 'bacninh', 'huytung@gmail.com', 898112233, 'HC01'),
('Kh02', 'nguyen quyet tien', 'bac giang', 'qtien@gmail.com', 898112244, 'HC02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichtrinh`
--

CREATE TABLE `lichtrinh` (
  `malichtrinh` varchar(20) NOT NULL,
  `machuyenbay` varchar(20) NOT NULL,
  `ngaykhoihanh` date NOT NULL,
  `manhanvien` varchar(20) NOT NULL,
  `chucvu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lichtrinh`
--

INSERT INTO `lichtrinh` (`malichtrinh`, `machuyenbay`, `ngaykhoihanh`, `manhanvien`, `chucvu`) VALUES
('LT01', 'CB01', '2024-06-12', 'NV02', 'Phi cong'),
('LT02', 'CB02', '2024-06-09', 'NV01', 'Tiep vien hang khong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manhanvien` varchar(20) NOT NULL,
  `tennhanvien` varchar(30) NOT NULL,
  `chucvu` varchar(20) NOT NULL,
  `mahanghangkhong` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`manhanvien`, `tennhanvien`, `chucvu`, `mahanghangkhong`) VALUES
('NV01', 'Tran Thi A', 'Tiep vien hang khong', 'VN01'),
('NV02', 'Nguyen Van B', 'Phi cong', 'VN02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanbayden`
--

CREATE TABLE `sanbayden` (
  `masanbayden` varchar(20) NOT NULL,
  `tensanbayden` varchar(20) NOT NULL,
  `thanhpho` varchar(20) NOT NULL,
  `quocgia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanbayden`
--

INSERT INTO `sanbayden` (`masanbayden`, `tensanbayden`, `thanhpho`, `quocgia`) VALUES
('SBD01', 'San bay Tan Son Nhat', 'Ho Chi Minh', 'Viet Nam'),
('SBD02', 'San bay Phu Quoc', 'Phu Quoc', 'Viet Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanbaydi`
--

CREATE TABLE `sanbaydi` (
  `masanbaydi` varchar(20) NOT NULL,
  `tensanbaydi` varchar(20) NOT NULL,
  `thanhpho` varchar(20) NOT NULL,
  `quocgia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanbaydi`
--

INSERT INTO `sanbaydi` (`masanbaydi`, `tensanbaydi`, `thanhpho`, `quocgia`) VALUES
('SBd01', 'San bay Noi Bai', 'Ha Noi', 'Viet Nam'),
('SBd02', 'San bay Tan Son Nhat', 'Ho Chi Minh', 'Viet Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `mathanhtoan` varchar(20) NOT NULL,
  `mave` varchar(20) NOT NULL,
  `ngaythanhtoan` date NOT NULL,
  `soluong` int(20) NOT NULL,
  `phuongthucthanhtoan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhtoan`
--

INSERT INTO `thanhtoan` (`mathanhtoan`, `mave`, `ngaythanhtoan`, `soluong`, `phuongthucthanhtoan`) VALUES
('TT01', 'Ve01', '2024-06-11', 2, 'Tien mat'),
('TT02', 'Ve02', '2024-06-09', 1, 'VI VNPay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vemaybay`
--

CREATE TABLE `vemaybay` (
  `mave` varchar(20) NOT NULL,
  `makhachhang` varchar(20) NOT NULL,
  `machuyenbay` varchar(20) NOT NULL,
  `ngayphathanh` date NOT NULL,
  `gia` int(15) NOT NULL,
  `loaive` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vemaybay`
--

INSERT INTO `vemaybay` (`mave`, `makhachhang`, `machuyenbay`, `ngayphathanh`, `gia`, `loaive`) VALUES
('Ve01', 'Kh01', 'CB01', '2024-06-11', 10000000, 'VIP'),
('Ve02', 'Kh02', 'CB02', '2024-06-12', 1500000, 'Thườngư');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chuyenbay`
--
ALTER TABLE `chuyenbay`
  ADD PRIMARY KEY (`machuyenbay`),
  ADD UNIQUE KEY `mahanghangkhong` (`mahanghangkhong`,`masanbaydi`,`masanbayden`),
  ADD KEY `masanbayden` (`masanbayden`),
  ADD KEY `masanbaydi` (`masanbaydi`);

--
-- Chỉ mục cho bảng `hanghangkhong`
--
ALTER TABLE `hanghangkhong`
  ADD PRIMARY KEY (`mahanghangkhong`);

--
-- Chỉ mục cho bảng `hanhly`
--
ALTER TABLE `hanhly`
  ADD PRIMARY KEY (`mahanhly`),
  ADD UNIQUE KEY `mave` (`mave`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`);

--
-- Chỉ mục cho bảng `lichtrinh`
--
ALTER TABLE `lichtrinh`
  ADD PRIMARY KEY (`malichtrinh`),
  ADD UNIQUE KEY `machuyenbay` (`machuyenbay`,`manhanvien`),
  ADD KEY `manhanvien` (`manhanvien`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manhanvien`),
  ADD UNIQUE KEY `mahanghangkhong` (`mahanghangkhong`);

--
-- Chỉ mục cho bảng `sanbayden`
--
ALTER TABLE `sanbayden`
  ADD PRIMARY KEY (`masanbayden`);

--
-- Chỉ mục cho bảng `sanbaydi`
--
ALTER TABLE `sanbaydi`
  ADD PRIMARY KEY (`masanbaydi`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`mathanhtoan`),
  ADD UNIQUE KEY `mave` (`mave`);

--
-- Chỉ mục cho bảng `vemaybay`
--
ALTER TABLE `vemaybay`
  ADD PRIMARY KEY (`mave`),
  ADD UNIQUE KEY `makhachhang` (`makhachhang`,`machuyenbay`),
  ADD KEY `machuyenbay` (`machuyenbay`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chuyenbay`
--
ALTER TABLE `chuyenbay`
  ADD CONSTRAINT `chuyenbay_ibfk_1` FOREIGN KEY (`mahanghangkhong`) REFERENCES `hanghangkhong` (`mahanghangkhong`),
  ADD CONSTRAINT `chuyenbay_ibfk_2` FOREIGN KEY (`masanbayden`) REFERENCES `sanbayden` (`masanbayden`),
  ADD CONSTRAINT `chuyenbay_ibfk_3` FOREIGN KEY (`masanbaydi`) REFERENCES `sanbaydi` (`masanbaydi`);

--
-- Các ràng buộc cho bảng `hanhly`
--
ALTER TABLE `hanhly`
  ADD CONSTRAINT `hanhly_ibfk_1` FOREIGN KEY (`mave`) REFERENCES `vemaybay` (`mave`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`makhachhang`) REFERENCES `vemaybay` (`makhachhang`);

--
-- Các ràng buộc cho bảng `lichtrinh`
--
ALTER TABLE `lichtrinh`
  ADD CONSTRAINT `lichtrinh_ibfk_1` FOREIGN KEY (`machuyenbay`) REFERENCES `chuyenbay` (`machuyenbay`),
  ADD CONSTRAINT `lichtrinh_ibfk_2` FOREIGN KEY (`manhanvien`) REFERENCES `nhanvien` (`manhanvien`);

--
-- Các ràng buộc cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD CONSTRAINT `thanhtoan_ibfk_1` FOREIGN KEY (`mave`) REFERENCES `vemaybay` (`mave`);

--
-- Các ràng buộc cho bảng `vemaybay`
--
ALTER TABLE `vemaybay`
  ADD CONSTRAINT `vemaybay_ibfk_1` FOREIGN KEY (`machuyenbay`) REFERENCES `chuyenbay` (`machuyenbay`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
