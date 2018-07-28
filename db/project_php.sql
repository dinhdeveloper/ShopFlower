-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 24, 2018 lúc 06:15 AM
-- Phiên bản máy phục vụ: 10.1.33-MariaDB
-- Phiên bản PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project_php`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` int(11) NOT NULL,
  `MaDonDatHang` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdondathang`
--

INSERT INTO `chitietdondathang` (`MaChiTietDonDatHang`, `MaDonDatHang`, `MaSanPham`, `SoLuong`, `GiaBan`) VALUES
(62, 50, 49, 1, 1000000),
(63, 51, 60, 2, 578000),
(64, 51, 91, 1, 655000),
(65, 52, 21, 1, 800000),
(66, 53, 17, 2, 489000),
(67, 53, 52, 1, 456000),
(68, 54, 2, 1, 1288000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDonDatHang` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `NgayDatHang` datetime NOT NULL,
  `TongThanhTien` int(11) DEFAULT NULL,
  `MaTinhTrangDonDatHang` int(11) NOT NULL,
  `MaNhanVien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`MaDonDatHang`, `MaKhachHang`, `NgayDatHang`, `TongThanhTien`, `MaTinhTrangDonDatHang`, `MaNhanVien`) VALUES
(50, 52, '2018-07-22 00:00:00', 1000000, 3, 28),
(51, 53, '2018-07-22 00:00:00', 1811000, 4, 29),
(52, 54, '2018-07-23 00:00:00', 800000, 2, 28),
(53, 55, '2018-07-23 00:00:00', 1434000, 2, 0),
(54, 56, '2018-07-23 00:00:00', 1288000, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` int(11) NOT NULL,
  `HoTen` varchar(45) CHARACTER SET utf8 NOT NULL,
  `DiaChi` varchar(256) CHARACTER SET utf8 NOT NULL,
  `SoDienThoai` varchar(11) CHARACTER SET utf8 NOT NULL,
  `MatKhau` int(11) NOT NULL,
  `BiXoa` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `HoTen`, `DiaChi`, `SoDienThoai`, `MatKhau`, `BiXoa`) VALUES
(52, 'TRAN CANH DINH', 'Quận 9, Hồ Chí Minh', '0975469232', 0, 0),
(53, 'Võ Tùng Nghĩa', '97 Man Thiện', '0987652739', 0, 0),
(54, 'TRAN CANH DINH', 'quận 9, Hồ Chí Minh', '0975469232', 0, 0),
(55, 'Phạm Thế Anh', 'Quận 2', '0987654345', 0, 0),
(56, 'Lâm Vỹ Dạ', 'Quận 1', '0991321991', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `HinhMinhHoaLSP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenLoaiSanPham` varchar(45) CHARACTER SET utf8 NOT NULL,
  `BiXoa` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `HinhMinhHoaLSP`, `TenLoaiSanPham`, `BiXoa`) VALUES
(1, 'h1.jpg', 'Hoa Hồng', 0),
(2, 'ly3.jpg', 'Hoa Ly', 0),
(3, 'lan1.jpg', 'Hoa Lan', 0),
(4, 'sen1.jpg', 'Hoa Sen', 0),
(5, 'hd1.jpg', 'Hoa Hướng Dương', 0),
(6, 'md1.jpg', 'Hoa Mẫu Đơn', 0),
(7, 'cd1.jpg', 'Hoa Cẩm Chướng', 0),
(8, 'gb1.jpg', 'Gấu Bông', 0),
(9, 's1.jpg', 'Socola', 0),
(10, 'b14.jpg', 'Bánh Kem', 0),
(11, 'hd16.jpg', 'Hoa Khai Trương', 0),
(12, 'cd1.jpg', 'Hoa Chúc Mừng', 0),
(13, 'cd6.jpg', 'Hoa Sinh Nhật', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` int(11) NOT NULL,
  `HinhNhanVien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenDangNhap` varchar(45) CHARACTER SET utf8 NOT NULL,
  `MatKhau` varchar(20) CHARACTER SET utf8 NOT NULL,
  `HoTen` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Email` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `SoDienThoai` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `BiXoa` int(11) NOT NULL DEFAULT '0',
  `QuyenAdmin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `HinhNhanVien`, `TenDangNhap`, `MatKhau`, `HoTen`, `Email`, `SoDienThoai`, `BiXoa`, `QuyenAdmin`) VALUES
(0, 'avatar-16.png', 'admin', 'admin', 'Quản Trị', 'admin@gmail.com', '0123456789', 0, 1),
(28, 'dinh.jpg', 'canhdinh', '123123', 'Trần Cảnh Dinh', 'dinhtrancntt@gmail.com', '0975469232', 0, 0),
(29, 'avatar-14.png', 'kimanh', '123123', 'Trần Thị Kim Anh', 'kimanh@gmail.com', '01664378342', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(100) CHARACTER SET utf8 NOT NULL,
  `MaLoaiSanPham` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `NgayNhap` date NOT NULL,
  `SoLuongBan` int(11) DEFAULT '0',
  `SoLuotXem` int(11) DEFAULT '0',
  `BiXoa` int(11) DEFAULT '0',
  `MoTa` longtext CHARACTER SET utf8,
  `HinhURL` varchar(256) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `MaLoaiSanPham`, `Gia`, `NgayNhap`, `SoLuongBan`, `SoLuotXem`, `BiXoa`, `MoTa`, `HinhURL`) VALUES
(1, 'AN NHIÊN', 1, 805000, '2018-06-29', 31, 63, 0, NULL, 'h1.jpg'),
(2, 'ÁNH HỒNG', 1, 1288000, '2018-06-29', 45, 52, 0, NULL, 'h2.jpg'),
(3, 'BÀI CA', 1, 403000, '2018-06-29', 13, 15, 0, NULL, 'h3.jpg'),
(4, 'BAN MAI', 1, 450000, '2018-06-29', 31, 24, 0, NULL, 'h4.jpg'),
(5, 'BẢN SẮC', 1, 400000, '2018-06-29', 43, 47, 0, NULL, 'h5.jpg'),
(6, 'BẦU TRỜI', 1, 400000, '2018-06-29', 52, 22, 0, NULL, 'h6.jpg'),
(7, 'BẾN BỜ', 1, 350000, '2018-06-29', 12, 34, 0, NULL, 'h7.jpg'),
(8, 'BÊN CẠNH EM', 1, 500000, '2018-06-29', 32, 22, 0, NULL, 'h8.jpg'),
(9, 'BÊN NHAU', 1, 1640000, '2018-06-29', 29, 35, 0, NULL, 'h9.jpg'),
(10, 'BÌNH MINH', 1, 863000, '2018-06-29', 10, 11, 0, NULL, 'h10.jpg'),
(11, 'BỪNG SÁNG', 1, 655000, '2018-06-29', 31, 12, 0, NULL, 'h11.jpg'),
(12, 'BƯỚC THÀNH CÔNG', 1, 640000, '2018-06-29', 20, 24, 0, NULL, 'h12.jpg'),
(13, 'CẦU VỒNG', 1, 1265000, '2018-06-29', 19, 44, 0, NULL, 'h13.jpg'),
(14, 'CHÀO NGÀY MỚI', 1, 709000, '2018-06-29', 23, 22, 0, NULL, 'h14.jpg'),
(15, 'CHÍN TẦNG MÂY', 1, 950000, '2018-06-29', 41, 22, 0, NULL, 'h15.jpg'),
(16, 'CHÀO ĐÓN', 2, 687000, '2018-06-29', 12, 14, 0, NULL, 'ly1.jpg'),
(17, 'CÔNG CHÚA', 2, 489000, '2018-06-29', 51, 101, 0, NULL, 'ly2.jpg'),
(18, 'DẤU YÊU', 2, 540000, '2018-06-29', 32, 23, 0, NULL, 'ly3.jpg'),
(19, 'GỐC NHỎ', 2, 310000, '2018-06-29', 65, 91, 0, NULL, 'ly4.jpg'),
(20, 'HÀO QUANG', 2, 675000, '2018-06-29', 39, 17, 0, NULL, 'ly5.jpg'),
(21, 'HUY HOÀNG', 2, 800000, '2018-06-29', 8, 140, 0, NULL, 'ly6.jpg'),
(22, 'TÀN THU', 2, 897000, '2018-06-29', 21, 84, 0, NULL, 'ly7.jpg'),
(23, 'TẤN TIẾN', 2, 239000, '2018-06-29', 71, 84, 0, NULL, 'ly8.jpg'),
(24, 'TỊNH KHÔI', 2, 780000, '2018-06-29', 32, 54, 0, NULL, 'ly9.jpg'),
(25, 'HOAN HỶ', 3, 400000, '2018-06-29', 52, 22, 0, NULL, 'lan1.jpg'),
(26, 'MAY MẮN', 3, 349000, '2018-06-29', 78, 31, 0, NULL, 'lan2.jpg'),
(27, 'NHỚ THƯƠNG', 3, 897000, '2018-06-29', 63, 77, 0, NULL, 'lan3.jpg'),
(28, 'NỔI BẬT', 3, 914000, '2018-06-29', 20, 85, 0, NULL, 'lan4.jpg'),
(29, 'PHÂN ƯU', 3, 812000, '2018-06-29', 27, 64, 0, NULL, 'lan5.jpg'),
(30, 'RẠNG RỠ', 3, 234000, '2018-06-29', 79, 99, 0, NULL, 'lan6.jpg'),
(31, 'SỨC KHỎE', 3, 395000, '2018-06-29', 39, 10, 0, NULL, 'lan7.jpg'),
(32, 'SUM VẦY', 3, 1920000, '2018-06-29', 20, 9, 0, NULL, 'lan8.jpg'),
(33, 'TÌNH THÂN', 3, 962000, '2018-06-29', 39, 8, 0, NULL, 'lan9.jpg'),
(34, 'TRỌN VẸN', 3, 950000, '2018-06-29', 10, 11, 0, NULL, 'lan10.jpg'),
(35, 'VĨNH CỮU', 3, 789000, '2018-06-29', 68, 11, 0, NULL, 'lan11.jpg'),
(36, 'VỮNG BỀN', 3, 749000, '2018-06-29', 29, 40, 0, NULL, 'lan12.jpg'),
(37, 'HƯƠNG SEN', 4, 568000, '2018-06-29', 32, 8, 0, NULL, 'sen1.jpg'),
(38, 'CÁNH SEN', 4, 849000, '2018-06-29', 73, 14, 0, NULL, 'sen2.jpg'),
(39, 'KHỞI SẮC', 4, 442000, '2018-06-29', 20, 14, 0, NULL, 'sen3.jpg'),
(40, 'THUẨN KHIẾT', 4, 382000, '2018-06-29', 72, 75, 0, NULL, 'sen4.jpg'),
(41, 'TƯƠI THẮM', 4, 631000, '2018-06-29', 37, 74, 0, NULL, 'sen5.jpg'),
(42, 'ÁNH MẶT TRỜI', 5, 586000, '2018-06-29', 54, 8, 0, NULL, 'hd1.jpg'),
(43, 'BAN MAI', 5, 456000, '2018-06-29', 45, 7, 0, NULL, 'hd2.jpg'),
(44, 'CÂU HÁT', 5, 678000, '2018-06-29', 82, 10, 0, NULL, 'hd3.jpg'),
(45, 'DANH VỌNG', 5, 345000, '2018-06-29', 88, 8, 0, NULL, 'hd4.jpg'),
(46, 'HẠ VỀ', 5, 740000, '2018-06-29', 23, 31, 0, NULL, 'hd5.jpg'),
(47, 'HÂN HOAN', 5, 445000, '2018-06-29', 62, 10, 0, NULL, 'hd6.jpg'),
(48, 'MẶT TRỜI BÉ CON', 5, 310000, '2018-06-29', 70, 8, 0, NULL, 'hd7.jpg'),
(49, 'DÀNH RIÊNG EM', 6, 1000000, '2018-06-29', 20, 53, 0, NULL, 'md1.jpg'),
(50, 'VINTAGE', 6, 1200000, '2018-06-29', 13, 15, 0, NULL, 'md2.jpg'),
(51, 'DỊU DÀNG', 7, 812000, '2018-06-29', 23, 24, 0, NULL, 'cd1.jpg'),
(52, 'KỈ NIỆM', 7, 456000, '2018-06-29', 62, 18, 0, NULL, 'cd2.jpg'),
(53, 'LUNG LINH', 7, 527000, '2018-06-29', 45, 17, 0, NULL, 'cd3.jpg'),
(54, 'MẮT CƯỜI', 7, 262000, '2018-06-29', 80, 25, 0, NULL, 'cd4.jpg'),
(55, 'MÂY  HỒNG', 7, 370000, '2018-06-29', 39, 19, 0, NULL, 'cd5.jpg'),
(56, 'YÊU KIỀU', 7, 640000, '2018-06-29', 29, 37, 0, NULL, 'cd6.jpg'),
(57, 'XINH TƯƠI', 7, 520000, '2018-06-29', 26, 23, 0, NULL, 'cd7.jpg'),
(58, 'MÙA XUÂN', 7, 379000, '2018-06-29', 28, 19, 0, NULL, 'cd8.jpg'),
(59, 'BANANA', 8, 725000, '2018-06-29', 28, 29, 0, NULL, 'gb1.jpg'),
(60, 'CÁ MẬP ĐÁNG YÊU', 8, 578000, '2018-06-29', 38, 30, 0, NULL, 'gb2.jpg'),
(61, 'GẤU BÔNG ĐÁNG YÊU', 8, 729000, '2018-06-29', 31, 48, 0, NULL, 'gb3.jpg'),
(62, 'CÚN CON XINH XẮN', 8, 721000, '2018-06-29', 12, 18, 0, NULL, 'gb4.jpg'),
(63, 'GẤU MẬP MẠP', 8, 629000, '2018-06-29', 62, 39, 0, NULL, 'gb5.jpg'),
(64, 'GẤU TỐT NGHIỆP', 8, 910000, '2018-06-29', 12, 13, 0, NULL, 'gb6.jpg'),
(65, 'HÀ MÃ HỒNG XINH', 8, 731000, '2018-06-29', 31, 24, 0, NULL, 'gb7.jpg'),
(66, 'DỊU NGỌT', 9, 273000, '2018-06-29', 12, 24, 0, NULL, 's1.jpg'),
(67, 'NGỌT NGÀO', 9, 120000, '2018-06-29', 14, 49, 0, NULL, 's2.jpg'),
(68, 'VỊ NGỌT TÌNH YÊU', 9, 300000, '2018-06-29', 44, 24, 0, NULL, 's3.jpg'),
(69, 'CHOCO DREAM', 10, 199000, '2018-06-29', 33, 14, 0, NULL, 'b1.jpg'),
(70, 'CHÚ KHỈ ĐÁNG YÊU', 10, 638000, '2018-06-29', 12, 55, 0, NULL, 'b2.jpg'),
(71, 'CỔ TÍCH', 10, 242000, '2018-06-29', 42, 43, 0, NULL, 'b3.jpg'),
(72, 'DỊP ĐÁNG NHỚ', 10, 323000, '2018-06-29', 23, 12, 0, NULL, 'b4.jpg'),
(73, 'HOA HỒNG KEM', 10, 1490000, '2018-06-29', 44, 26, 0, NULL, 'b5.jpg'),
(74, 'HƯƠNG VỊ KHÓ QUÊN', 10, 457000, '2018-06-29', 43, 13, 0, NULL, 'b6.jpg'),
(75, 'KĨ NIỆM', 10, 667000, '2018-06-29', 23, 35, 0, NULL, 'b7.jpg'),
(76, 'LỜI CHÚC NGỌT NGÀO', 10, 567000, '2018-06-29', 54, 6, 0, NULL, 'b8.jpg'),
(77, 'MÓN QUÀ DỂ THƯƠNG', 10, 324000, '2018-06-29', 43, 44, 0, NULL, 'b9.jpg'),
(78, 'NGỌT DỊU', 10, 343000, '2018-06-29', 12, 25, 0, NULL, 'b10.jpg'),
(79, 'QUÀ TẶNG MẸ', 10, 380000, '2018-06-29', 93, 9, 0, NULL, 'b11.jpg'),
(80, 'TÌNH YÊU NGỌT NGÀO', 10, 830000, '2018-06-29', 83, 12, 0, NULL, 'b12.jpg'),
(81, 'VỮNG BỀN', 11, 749000, '2018-06-29', 29, 40, 0, NULL, 'lan12.jpg'),
(82, 'NGÀY YÊU', 11, 349000, '2018-06-29', 32, 12, 0, NULL, 'hd16.jpg'),
(83, 'TIM THƠ NGÂY', 11, 121000, '2018-06-29', 31, 33, 0, NULL, 'hd17.jpg'),
(84, 'MỘNG MƠ', 11, 374000, '2018-06-29', 71, 7, 0, NULL, 'hd18.jpg'),
(85, 'DANH VỌNG', 11, 948000, '2018-06-29', 35, 14, 0, NULL, 'hd19.jpg'),
(86, 'CHUNG ĐÔI', 11, 324000, '2018-06-29', 42, 6, 0, NULL, 'hd20.jpg'),
(87, 'KHỞI SẮC', 12, 1288000, '2018-06-29', 50, 31, 0, NULL, 'h2.jpg'),
(88, 'AN NHIÊN', 12, 805000, '2018-06-29', 50, 21, 0, NULL, 'h1.jpg'),
(89, 'BẦU TRỜI', 12, 400000, '2018-06-29', 52, 23, 0, NULL, 'h6.jpg'),
(90, 'BẾN BỜ', 12, 350000, '2018-06-29', 12, 34, 0, NULL, 'h7.jpg'),
(91, 'BỪNG SÁNG', 12, 655000, '2018-06-29', 31, 14, 0, NULL, 'h11.jpg'),
(92, 'CHÀO NGÀY MỚI', 12, 709000, '2018-06-29', 23, 28, 0, NULL, 'h14.jpg'),
(93, 'MẶT TRỜI BÉ CON', 12, 310000, '2018-06-29', 70, 24, 0, NULL, 'hd7.jpg'),
(94, 'ÁNH MẶT TRỜI', 12, 586000, '2018-06-29', 54, 35, 0, NULL, 'hd1.jpg'),
(95, 'BAN MAI', 12, 456000, '2018-06-29', 45, 35, 0, NULL, 'hd2.jpg'),
(103, 'CHÀO NGÀY MỚI', 13, 709000, '2018-06-29', 23, 22, 0, NULL, 'h14.jpg'),
(104, 'MÙA XUÂN', 13, 379000, '2018-06-29', 28, 34, 0, NULL, 'cd8.jpg'),
(105, 'VINTAGE', 13, 1200000, '2018-06-29', 13, 42, 0, NULL, 'md2.jpg'),
(106, 'BỪNG SÁNG', 13, 655000, '2018-06-29', 31, 3, 0, NULL, 'h11.jpg'),
(107, 'MAY MẮN', 13, 349000, '2018-06-29', 78, 13, 0, NULL, 'lan2.jpg'),
(108, 'DÀNH RIÊNG EM', 13, 1000000, '2018-06-29', 20, 24, 0, NULL, 'md1.jpg'),
(109, 'THUẨN KHIẾT', 13, 382000, '2018-06-29', 72, 14, 0, NULL, 'sen4.jpg'),
(110, 'NỔI BẬT', 13, 914000, '2018-06-29', 20, 13, 0, NULL, 'lan4.jpg'),
(111, 'CHÀO ĐÓN', 13, 687000, '2018-06-29', 12, 32, 0, NULL, 'ly1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrangdondathang`
--

CREATE TABLE `tinhtrangdondathang` (
  `MaTinhTrangDonDatHang` int(11) NOT NULL,
  `TenTinhTrangDonDatHang` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinhtrangdondathang`
--

INSERT INTO `tinhtrangdondathang` (`MaTinhTrangDonDatHang`, `TenTinhTrangDonDatHang`) VALUES
(1, 'Đặt Hàng'),
(2, 'Đang Xử Lý'),
(3, 'Đang Giao Hàng'),
(4, 'Thanh Toán'),
(5, 'Hủy');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MaChiTietDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_DonDatHang1_idx` (`MaDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_SanPham1_idx` (`MaSanPham`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDonDatHang`),
  ADD KEY `fk_DonDatHang_KhachHang1_idx` (`MaKhachHang`),
  ADD KEY `fk_DonDatHang_TinhTrangDonDatHang1_idx` (`MaTinhTrangDonDatHang`),
  ADD KEY `fk_DonDatHang_NhanVien1_idx` (`MaNhanVien`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSanPham`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `fk_SanPham_LoaiSanPham_idx` (`MaLoaiSanPham`);

--
-- Chỉ mục cho bảng `tinhtrangdondathang`
--
ALTER TABLE `tinhtrangdondathang`
  ADD PRIMARY KEY (`MaTinhTrangDonDatHang`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  MODIFY `MaChiTietDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `MaDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `tinhtrangdondathang`
--
ALTER TABLE `tinhtrangdondathang`
  MODIFY `MaTinhTrangDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `fk_ChiTietDonDatHang_DonDatHang1` FOREIGN KEY (`MaDonDatHang`) REFERENCES `dondathang` (`MaDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ChiTietDonDatHang_SanPham1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `fk_DonDatHang_KhachHang1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DonDatHang_NhanVien1` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DonDatHang_TinhTrangDonDatHang1` FOREIGN KEY (`MaTinhTrangDonDatHang`) REFERENCES `tinhtrangdondathang` (`MaTinhTrangDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_SanPham_LoaiSanPham` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
