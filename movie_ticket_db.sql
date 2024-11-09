-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 09, 2024 lúc 04:12 AM
-- Phiên bản máy phục vụ: 10.5.26-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `movie_ticket_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add combo', 6, 'add_combo'),
(22, 'Can change combo', 6, 'change_combo'),
(23, 'Can delete combo', 6, 'delete_combo'),
(24, 'Can view combo', 6, 'view_combo'),
(25, 'Can add dinh dang phim', 7, 'add_dinhdangphim'),
(26, 'Can change dinh dang phim', 7, 'change_dinhdangphim'),
(27, 'Can delete dinh dang phim', 7, 'delete_dinhdangphim'),
(28, 'Can view dinh dang phim', 7, 'view_dinhdangphim'),
(29, 'Can add nguoi dung', 8, 'add_nguoidung'),
(30, 'Can change nguoi dung', 8, 'change_nguoidung'),
(31, 'Can delete nguoi dung', 8, 'delete_nguoidung'),
(32, 'Can view nguoi dung', 8, 'view_nguoidung'),
(33, 'Can add rap chieu', 9, 'add_rapchieu'),
(34, 'Can change rap chieu', 9, 'change_rapchieu'),
(35, 'Can delete rap chieu', 9, 'delete_rapchieu'),
(36, 'Can view rap chieu', 9, 'view_rapchieu'),
(37, 'Can add the loai', 10, 'add_theloai'),
(38, 'Can change the loai', 10, 'change_theloai'),
(39, 'Can delete the loai', 10, 'delete_theloai'),
(40, 'Can view the loai', 10, 'view_theloai'),
(41, 'Can add ghe ngoi', 11, 'add_ghengoi'),
(42, 'Can change ghe ngoi', 11, 'change_ghengoi'),
(43, 'Can delete ghe ngoi', 11, 'delete_ghengoi'),
(44, 'Can view ghe ngoi', 11, 'view_ghengoi'),
(45, 'Can add phim', 12, 'add_phim'),
(46, 'Can change phim', 12, 'change_phim'),
(47, 'Can delete phim', 12, 'delete_phim'),
(48, 'Can view phim', 12, 'view_phim'),
(49, 'Can add xuat chieu', 13, 'add_xuatchieu'),
(50, 'Can change xuat chieu', 13, 'change_xuatchieu'),
(51, 'Can delete xuat chieu', 13, 'delete_xuatchieu'),
(52, 'Can view xuat chieu', 13, 'view_xuatchieu'),
(53, 'Can add ve', 14, 'add_ve'),
(54, 'Can change ve', 14, 'change_ve'),
(55, 'Can delete ve', 14, 'delete_ve'),
(56, 'Can view ve', 14, 'view_ve'),
(57, 'Can add binh luan', 15, 'add_binhluan'),
(58, 'Can change binh luan', 15, 'change_binhluan'),
(59, 'Can delete binh luan', 15, 'delete_binhluan'),
(60, 'Can view binh luan', 15, 'view_binhluan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `database_binhluan`
--

CREATE TABLE `database_binhluan` (
  `id` bigint(20) NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL CHECK (`rating` >= 0),
  `noi_dung` longtext NOT NULL,
  `phim_id` bigint(20) NOT NULL,
  `user_binh_luan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `database_combo`
--

CREATE TABLE `database_combo` (
  `id` bigint(20) NOT NULL,
  `ten_combo` varchar(100) NOT NULL,
  `gia_combo` decimal(10,2) NOT NULL,
  `img_combo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_combo`
--

INSERT INTO `database_combo` (`id`, `ten_combo`, `gia_combo`, `img_combo`) VALUES
(1, 'Gà rừng phô mai', 65000.00, 'img_combo/combo-doi_HB11pFp.jpg'),
(2, 'Gà rừng phô mai chuối', 75000.00, 'img_combo/combo-doi_ImkaO6v.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `database_dinhdangphim`
--

CREATE TABLE `database_dinhdangphim` (
  `id` bigint(20) NOT NULL,
  `ten_dinh_dang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_dinhdangphim`
--

INSERT INTO `database_dinhdangphim` (`id`, `ten_dinh_dang`) VALUES
(1, '3D'),
(2, '2D'),
(3, '3D IMAX');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `database_ghengoi`
--

CREATE TABLE `database_ghengoi` (
  `id` bigint(20) NOT NULL,
  `ten_ghe` varchar(10) NOT NULL,
  `loai_ghe` varchar(50) NOT NULL,
  `gia_ve` decimal(10,2) NOT NULL,
  `rap_chieu_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_ghengoi`
--

INSERT INTO `database_ghengoi` (`id`, `ten_ghe`, `loai_ghe`, `gia_ve`, `rap_chieu_id`) VALUES
(1, '1234', 'Ghế VIP', 70000.00, 1),
(2, '123', 'Ghế VIP', 70000.00, 1),
(3, '123', '123123', 123123.00, 1),
(4, '123123', '1231', 123123.00, 1),
(5, '123123', '123123', 12321.00, 1),
(6, '123', '12312', 12312.00, 1),
(7, '12312', '13123', 123123.00, 1),
(8, '123123', 'THường', 123123.00, 1),
(9, '13123', '123123', 123123.00, 1),
(10, '13123', '13213', 13123.00, 1),
(11, '13213', '123123', 123123.00, 2),
(12, '13213', '123123', 123123.00, 1),
(13, '1321', '12312312', 1231231.00, 1),
(14, '123123', '123123', 1231232.00, 1),
(15, '1123', '13213', 123123.00, 1),
(16, '12312', '1', 123.00, 1),
(17, '123123', '123123', 12312.00, 1),
(18, '12313', '123123', 12321.00, 1),
(19, '12321', '1231', 123123.00, 1),
(20, '1321', '13213', 123123.00, 1),
(21, '132131', '12312', 123123.00, 1),
(22, '13213', '123123', 123123.00, 1),
(23, '12313', '1231', 12312.00, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `database_nguoidung`
--

CREATE TABLE `database_nguoidung` (
  `id` bigint(20) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `password` varchar(128) NOT NULL,
  `gioi_tinh` varchar(10) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `last_login` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_nguoidung`
--

INSERT INTO `database_nguoidung` (`id`, `username`, `email`, `sdt`, `password`, `gioi_tinh`, `ngay_sinh`, `last_login`) VALUES
(1, '1', '123@gmail.com', '2', '3', 'Nam', '2003-01-01', NULL),
(2, 'admin1', 'quangss2410@gmail.com', '1233456789', '123456', 'Nam', '2003-01-01', NULL),
(3, 'admin2', 'quangss24120@gmail.com', '1233456789', '123456', 'Nam', '2004-01-01', NULL),
(4, 'admin3', 'quangss2510@gmail.com', '1233456789', 'pbkdf2_sha256$870000$YL5VaED0lBtKU9oDsMjGAe$PVoj3R0IBRVNnh/jOesaz88TONtk1uhyhN3zJ65nJwQ=', 'Nam', '1900-01-01', '2024-11-08 23:29:43.322398'),
(5, 'admin4', 'quangss25102@gmail.com', '12334556756', 'pbkdf2_sha256$870000$Jof55ccawPsI2TTxNiKRS8$FUEIMe9SP3Z/lgun30uwM35YRpXERtQ9dlKw5nU7/fQ=', 'Nam', '2088-02-01', '2024-11-08 23:46:01.452388');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `database_phim`
--

CREATE TABLE `database_phim` (
  `id` bigint(20) NOT NULL,
  `ten_phim` varchar(200) NOT NULL,
  `dao_dien` varchar(100) NOT NULL,
  `dien_vien` longtext NOT NULL,
  `thoi_luong` int(10) UNSIGNED NOT NULL CHECK (`thoi_luong` >= 0),
  `tom_tat` longtext NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `do_tuoi` int(10) UNSIGNED NOT NULL CHECK (`do_tuoi` >= 0),
  `gia_ve` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_phim`
--

INSERT INTO `database_phim` (`id`, `ten_phim`, `dao_dien`, `dien_vien`, `thoi_luong`, `tom_tat`, `thumbnail`, `do_tuoi`, `gia_ve`) VALUES
(2, 'THẦN DƯỢC', 'Coralie Fargeat', 'Demi Moore, Margaret Qualley, Dennis Quaid', 238, 'Elizabeth Sparkle, minh tinh sở hữu vẻ đẹp hút hồn cùng với tài năng được mến mộ nồng nhiệt. Khi đã trải qua thời kỳ đỉnh cao, nhan sắc dần tàn phai, cô tìm đến những kẻ buôn lậu để mua một loại thuốc bí hiểm nhằm “thay da đổi vận\", tạo ra một phiên bản trẻ trung hơn của chính mình.', 'thumbnails/THAN-DUOC.jpg', 18, 100000.00),
(3, 'NGÀY XƯA CÓ MỘT CHUYỆN TÌNH', 'Trịnh Đình Lê Minh', 'Avin Lu, Ngọc Xuân, Đỗ Nhật Hoàng, Thanh Tú, Bảo Tiên, Hạo Khang', 235, 'Ngày Xưa Có Một Chuyện Tình xoay quanh câu chuyện tình bạn, tình yêu giữa hai chàng trai và một cô gái từ thuở ấu thơ cho đến khi trưởng thành, phải đối mặt với những thử thách của số phận. Trải dài trong 4 giai đoạn từ năm 1987 - 2000, ba người bạn cùng tuổi - Vinh, Miền, Phúc đã cùng yêu, cùng bỡ ngỡ bước vào đời, va vấp và vượt qua.', 'thumbnails/nga-xua-mot-chuyen-tinh.jpg', 16, 0.00),
(4, 'THIÊN ĐƯỜNG QUẢ BÁO', 'THIÊN ĐƯỜNG QUẢ BÁO', 'Jeff Satur, Engfa Waraha, Srida Puapimol, Harit Buayoi, Pongsakorn Mettarikanon', 131, 'Thongkam (Jeff Satur) và Sek (Pongsakorn) làm lụng vất vả, cày ngày cày đêm để xây dựng một mái ấm. Sau bao nỗ lực, cuối cùng họ cũng có quyền sở hữu trang trại sầu riêng ở Mae Hong Son. Tuy nhiên, bi kịch bỗng ập tới khi Sek đột ngột qua đời trong một vụ tai nạn vào thời điểm họ chưa kịp đăng ký kết hôn. Chính điều này đã khiến Thongkam không có quyền sở hữu tài sản mà 2 người đã cùng gây dựng. Ngôi nhà và đất đai bao gồm vườn sầu riêng đương nhiên thuộc về mẹ của Sek, người sẽ chuyển đến sống cùng con gái nuôi Mo (Engfa) và người làm vườn Jingna. Thongkam giờ phải đấu tranh để giành lại thành quả của tình yêu và công sức lao động của mình. Liệu giữa Thongkam và Mo, ai sẽ giành được quyền thừa kế , trở thành chủ vựa sầu riêng?', 'thumbnails/THIEN-DUONG-QUA-BAO.jpg', 18, 0.00),
(5, 'VÂY HÃM TẠI ĐÀI BẮC', 'George Huang', 'Luke Evans, Sung Kang, Gwei Lun-Mei', 100, 'Theo chân John Lawlor là một đặc vụ DEA cừ khôi bất khả chiến bại, anh sẽ không tiếc hi sinh bất cứ điều gì để hoàn thành nhiệm vụ được giao.Trong khi đó, Joey Kwang là \"người vận chuyển\" hàng đầu ở Đài Bắc với tốc độ không ai sánh bằng và tư duy nhạy bén mà không ai có thể theo kịp cô. Vô tình số phận đã đưa họ đến với nhau trước khi thế lực tội phạm chia cắt họ.15 năm sau, số phận một lần nữa đẩy Joey và John va chạm nhau trong tình cảnh bất đắc dĩ vào cuối tuần tại Đài Bắc. Và cả hai sẽ khám phá ra rằng điều duy nhất khó hơn việc yêu… chính là yêu lại.', 'thumbnails/VAY-HAM-TAI-DAI-BAC.jpg', 18, 0.00),
(6, 'VENOM: KÈO CUỐI', 'Kelly Marcel', 'Tom Hardy, Juno Temple, Chiwetel Ejiofor, Clark Backo, Stephen Graham', 109, 'Tom Hardy sẽ tái xuất trong bom tấn Venom: The Last Dance (Tựa Việt: Venom: Kèo Cuối) và phải đối mặt với kẻ thù lớn nhất từ trước đến nay - toàn bộ chủng tộc Symbiote Venom: Kèo cuối - Dự kiến khởi chiếu 25.10.2024', 'thumbnails/venom3.jpg', 13, 0.00),
(7, 'CÔ DÂU HÀO MÔN', 'Vũ Ngọc Đãng', 'Uyển Ân, Samuel An, Thu Trang, Lê Giang, Kiều Minh Tuấn, NSND Hồng Vân,...', 114, 'Phim lấy đề tài làm dâu hào môn và khai thác câu chuyện môn đăng hộ đối, lối sống và quy tắc của giới thượng lưu dưới góc nhìn hài hước và châm biếm.', 'thumbnails/co-dau-hao-mon.jpg', 18, 0.00),
(8, 'TEE YOD: QUỶ ĂN TẠNG 2', 'Taweewat Wantha', 'Nadech Kugimiya, Denise Jelilcha Kapaun, Mim Rattawadee Wongthong, Junior Kajbhunditt Jaidee, Friend Peerakrit Phacharaboonyakiat, Nutthatcha Jessica Padovan', 111, 'Ba năm sau cái chết của Yam, Yak vẫn tiếp tục săn lùng linh hồn bí ẩn mặc áo choàng đen. Gặp một cô gái có triệu chứng giống Yam, Yak phát hiện ra người bảo vệ linh hồn, pháp sư ẩn dật Puang, sống trong một khu rừng đầy nguy hiểm. Giữa những phép thuật ma quỷ và những sinh vật nguy hiểm. Khi họ đuổi theo linh hồn mặc áo choàng đen, tiếng kêu đầy ám ảnh của Tee Yod sắp quay trở lại một lần nữa...', 'thumbnails/tee-yod-2.jpg', 18, 0.00),
(9, 'ROBOT HOANG DÃ : Lồng tiếng', 'Chris Sanders', 'Lupita Nyong\'o, Pedro Pascal, Catherine O’hara, Bill Nighy,...', 102, 'Cuộc phiêu lưu hoành tráng theo chân hành trình của một robot — đơn vị ROZZUM 7134, gọi tắt là Roz. Roz vô tình dạt vào hoang đảo sau một sự cố và nơi đây trở thành địa điểm sống mới của cô. Tại đây, Roz kết thân và nhận nuôi một chú ngỗng con, đặt tên là Brightbill. Roz và Brightbill dần dần thân thiết với các bạn thú trên đảo, song sau đó phải chống chọi, bảo vệ “nhà mới” trước sự xâm lăng của nhà máy từng sản xuất ra Roz.', 'thumbnails/robot-hoang-da.jpg', 0, 0.00),
(10, 'ĐỪNG BUÔNG TAY', 'Alexandre Aja', 'Halle Berry Anthony B. Jenkins Stephanie Lavigne', 90, 'Một ngôi nhà chứa đầy bùa chú là nơi an toàn cuối cùng để tránh xa lũ quỷ trong thế giới hậu tận thế đáng sợ. Một người mẹ và 2 đứa con nhỏ phải kết nối với ngôi nhà bằng sợi dây thừng linh thiêng để sinh tồn nơi rừng rậm, nơi hai thực thể ác độc Kẻ Xấu và Kẻ Xa Lạ có thể tước đoạt mạng người trong một phút buông tay.', 'thumbnails/DUNG-BUONG-TAY.jpg', 16, 0.00),
(11, 'MẬT MÃ ĐỎ', 'Jake Kasdan', 'Dwayne Johnson; Chris Evans; Lucy Liu', 90, 'Sau khi Ông già Noel (mật danh: Red One) bị bắt cóc, Trưởng An ninh Bắc Cực (Dwayne Johnson) phải hợp tác với thợ săn tiền thưởng khét tiếng nhất thế giới (Chris Evans) trong một nhiệm vụ kịch tính xuyên lục địa để giải cứu Giáng Sinh.', 'thumbnails/MAT-MA-DO.jpg', 13, 0.00),
(12, 'VÕ SĨ GIÁC ĐẤU II', 'Ridley Scott', 'Paul Mescal, Joseph Quinn, Pedro Pascal, Connie Nielsen, Denzel Washington,…', 90, 'Sau khi đánh mất quê hương vào tay hoàng đế bạo chúa – người đang cai trị Rome, Lucius trở thành nô lệ giác đấu trong đấu trường Colosseum và phải tìm kiếm sức mạnh từ quá khứ để đưa vinh quang trở lại cho người dân Rome.', 'thumbnails/VO-SI-GIAC-DAU-2.jpg', 18, 0.00),
(13, 'LINH MIÊU', 'Lưu Thành Luân', 'Hồng Đào, Thiên An, Thuỳ Tiên, Văn Anh, Samuel An,...', 90, 'Linh Miêu: Quỷ Nhập Tràng lấy cảm hứng từ truyền thuyết dân gian về “quỷ nhập tràng” để xây dựng cốt truyện. Phim lồng ghép những nét văn hóa đặc trưng của Huế như nghệ thuật khảm sành - một văn hóa đặc sắc của thời nhà Nguyễn, đề cập đến các vấn đề về giai cấp và quan điểm trọng nam khinh nữ. Đặc biệt, hình ảnh rước kiệu thây ma và những hình nhân giấy không chỉ biểu trưng cho tai ương hay điềm dữ mà còn là hiện thân của nghiệp quả.', 'thumbnails/LINH-MIU.jpg', 18, 0.00),
(14, 'CÔNG TỬ BẠC LIÊU', 'Lý Minh Thắng', 'NSUT Thành Lộc, Song Luân, Công Dương, Đoàn Thiên Ân,…', 90, 'Lấy cảm hứng từ giai thoại nổi tiếng của nhân vật được mệnh danh là thiên hạ đệ nhất chơi ngông, Công Tử Bạc Liêu là bộ phim tâm lý hài hước, lấy bối cảnh Nam Kỳ Lục Tỉnh xưa của Việt Nam. BA HƠN - Con trai được thương yêu hết mực của ông Hội đồng Lịnh vốn là chủ ngân hàng đầu tiên tại Việt Nam, sau khi du học Pháp về đã sử dụng cả gia sản của mình vào những trò vui tiêu khiển, ăn chơi trác tán – nên được người dân gọi bằng cái tên Công Tử Bạc Liêu.', 'thumbnails/CONG-TU-BAC-LIEU.jpg', 0, 0.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `database_phim_the_loai`
--

CREATE TABLE `database_phim_the_loai` (
  `id` bigint(20) NOT NULL,
  `phim_id` bigint(20) NOT NULL,
  `theloai_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_phim_the_loai`
--

INSERT INTO `database_phim_the_loai` (`id`, `phim_id`, `theloai_id`) VALUES
(1, 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `database_rapchieu`
--

CREATE TABLE `database_rapchieu` (
  `id` bigint(20) NOT NULL,
  `ten_rap` varchar(200) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `so_dien_thoai` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_rapchieu`
--

INSERT INTO `database_rapchieu` (`id`, `ten_rap`, `dia_chi`, `so_dien_thoai`, `email`) VALUES
(1, 'Starlight Buôn Ma Thuột', 'Tầng 5,6 TTTM Vincom, 78 Lý Thường Kiệt, TP.Buôn Ma Thuột, Đăk Lăk', '123456789', '123@gmail.com'),
(2, 'CGV Buôn Mê Thuột', 'Tầng 4 TTTM Nguyễn Kim, số 01 Nguyễn Chí Thanh, phường Tân An, thành phố Buôn Ma Thuột, tỉnh Đắk Lắk', '123456788', '456@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `database_theloai`
--

CREATE TABLE `database_theloai` (
  `id` bigint(20) NOT NULL,
  `ten_the_loai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_theloai`
--

INSERT INTO `database_theloai` (`id`, `ten_the_loai`) VALUES
(2, 'Kinh Dị'),
(3, 'Tình Cảm'),
(4, 'Bí Ẩn'),
(5, 'Hành Động'),
(6, 'Siêu Anh Hùng'),
(7, 'Tâm Lý'),
(8, 'Hoạt Hình'),
(9, 'Phiêu Lưu'),
(10, 'Hài'),
(11, 'Lịch Sử'),
(12, 'Chính Kịch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `database_ve`
--

CREATE TABLE `database_ve` (
  `id` bigint(20) NOT NULL,
  `ma_qr_ve` varchar(500) NOT NULL,
  `link_face` varchar(100) NOT NULL,
  `phim_id` bigint(20) NOT NULL,
  `rap_id` bigint(20) NOT NULL,
  `user_mua_ve_id` bigint(20) NOT NULL,
  `thoi_gian_chieu_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_ve`
--

INSERT INTO `database_ve` (`id`, `ma_qr_ve`, `link_face`, `phim_id`, `rap_id`, `user_mua_ve_id`, `thoi_gian_chieu_id`) VALUES
(1, '1', 'face/default_face.jpg', 2, 1, 1, 3),
(2, 'Raw content', 'face/b37afa48fbdb43851aca.jpg', 2, 1, 5, 104),
(3, 'Raw content', 'face/12345.png', 2, 1, 5, 104),
(4, 'Raw content', 'face/12345_6x1gyvn.png', 2, 1, 5, 104),
(5, 'admin4_2_83_1,2', 'face/12345_RVQ6KwS.png', 2, 1, 5, 83),
(6, 'admin4_2_83_1,2', 'face/12345_fWL6XB3.png', 2, 1, 5, 83),
(7, 'admin4_2_85_1,2', 'face/12345_ptuUE4G.png', 2, 1, 5, 85),
(8, 'admin4_2_84_1,2', 'face/b37afa48fbdb43851aca_ehccg8Z.jpg', 2, 1, 5, 84),
(9, 'admin4_2_86_1', 'face/b37afa48fbdb43851aca_0UT1RmJ.jpg', 2, 1, 5, 86),
(10, 'admin4_2_84_1,2', 'face/b37afa48fbdb43851aca_SFk3is4.jpg', 2, 1, 5, 84);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `database_ve_combo`
--

CREATE TABLE `database_ve_combo` (
  `id` bigint(20) NOT NULL,
  `ve_id` bigint(20) NOT NULL,
  `combo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_ve_combo`
--

INSERT INTO `database_ve_combo` (`id`, `ve_id`, `combo_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 3, 1),
(5, 3, 2),
(6, 4, 1),
(7, 4, 2),
(8, 5, 1),
(9, 5, 2),
(10, 6, 1),
(11, 6, 2),
(12, 7, 1),
(13, 7, 2),
(14, 8, 1),
(15, 8, 2),
(16, 9, 1),
(17, 10, 1),
(18, 10, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `database_ve_ghe_ngoi`
--

CREATE TABLE `database_ve_ghe_ngoi` (
  `id` bigint(20) NOT NULL,
  `ve_id` bigint(20) NOT NULL,
  `ghengoi_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_ve_ghe_ngoi`
--

INSERT INTO `database_ve_ghe_ngoi` (`id`, `ve_id`, `ghengoi_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 3, 1),
(5, 3, 2),
(6, 4, 1),
(7, 4, 2),
(8, 5, 1),
(9, 5, 2),
(10, 6, 1),
(11, 6, 2),
(12, 7, 1),
(13, 7, 2),
(14, 8, 1),
(15, 8, 2),
(16, 9, 1),
(17, 10, 1),
(18, 10, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `database_xuatchieu`
--

CREATE TABLE `database_xuatchieu` (
  `id` bigint(20) NOT NULL,
  `thoi_gian_chieu` datetime(6) NOT NULL,
  `dinh_dang_phim_id` bigint(20) NOT NULL,
  `phim_id` bigint(20) NOT NULL,
  `rap_chieu_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_xuatchieu`
--

INSERT INTO `database_xuatchieu` (`id`, `thoi_gian_chieu`, `dinh_dang_phim_id`, `phim_id`, `rap_chieu_id`) VALUES
(3, '2024-11-07 11:00:00.000000', 2, 2, 1),
(4, '2024-11-07 13:05:00.000000', 2, 2, 1),
(5, '2024-11-07 14:10:00.000000', 2, 2, 1),
(6, '2024-11-07 15:10:00.000000', 2, 2, 1),
(7, '2024-11-07 15:40:00.000000', 2, 2, 1),
(8, '2024-11-07 16:15:00.000000', 2, 2, 1),
(9, '2024-11-07 17:15:00.000000', 2, 2, 1),
(10, '2024-11-07 17:45:00.000000', 2, 2, 1),
(11, '2024-11-07 18:20:00.000000', 2, 2, 1),
(12, '2024-11-07 19:00:00.000000', 2, 2, 1),
(13, '2024-11-07 19:20:00.000000', 2, 2, 1),
(14, '2024-11-07 19:50:00.000000', 2, 2, 1),
(15, '2024-11-07 20:10:00.000000', 2, 2, 1),
(16, '2024-11-07 20:30:00.000000', 2, 2, 1),
(17, '2024-11-07 21:05:00.000000', 2, 2, 1),
(18, '2024-11-07 21:25:00.000000', 2, 2, 1),
(19, '2024-11-07 21:55:00.000000', 2, 2, 1),
(20, '2024-11-07 22:15:00.000000', 2, 2, 1),
(21, '2024-11-07 22:35:00.000000', 2, 2, 1),
(22, '2024-11-07 23:10:00.000000', 2, 2, 1),
(23, '2003-11-07 11:00:00.000000', 2, 2, 2),
(24, '2003-11-07 13:05:00.000000', 2, 2, 2),
(25, '2003-11-07 14:10:00.000000', 2, 2, 2),
(26, '2003-11-07 15:10:00.000000', 2, 2, 2),
(27, '2003-11-07 15:40:00.000000', 2, 2, 2),
(28, '2003-11-07 16:15:00.000000', 2, 2, 2),
(29, '2003-11-07 17:15:00.000000', 2, 2, 2),
(30, '2003-11-07 17:45:00.000000', 2, 2, 2),
(31, '2003-11-07 18:20:00.000000', 2, 2, 2),
(32, '2003-11-07 19:00:00.000000', 2, 2, 2),
(33, '2003-11-07 19:20:00.000000', 2, 2, 2),
(34, '2003-11-07 19:50:00.000000', 2, 2, 2),
(35, '2003-11-07 20:10:00.000000', 2, 2, 2),
(36, '2003-11-07 20:30:00.000000', 2, 2, 2),
(37, '2003-11-07 21:05:00.000000', 2, 2, 2),
(38, '2003-11-07 21:25:00.000000', 2, 2, 2),
(39, '2003-11-07 21:55:00.000000', 2, 2, 2),
(40, '2003-11-07 22:15:00.000000', 2, 2, 2),
(41, '2003-11-07 22:35:00.000000', 2, 2, 2),
(42, '2003-11-07 23:10:00.000000', 2, 2, 2),
(43, '2024-11-07 11:00:00.000000', 2, 2, 2),
(44, '2024-11-07 13:05:00.000000', 2, 2, 2),
(45, '2024-11-07 14:10:00.000000', 2, 2, 2),
(46, '2024-11-07 15:10:00.000000', 2, 2, 2),
(47, '2024-11-07 15:40:00.000000', 2, 2, 2),
(48, '2024-11-07 16:15:00.000000', 2, 2, 2),
(49, '2024-11-07 17:15:00.000000', 2, 2, 2),
(50, '2024-11-07 17:45:00.000000', 2, 2, 2),
(51, '2024-11-07 18:20:00.000000', 2, 2, 2),
(52, '2024-11-07 19:00:00.000000', 2, 2, 2),
(53, '2024-11-07 19:20:00.000000', 2, 2, 2),
(54, '2024-11-07 19:50:00.000000', 2, 2, 2),
(55, '2024-11-07 20:10:00.000000', 2, 2, 2),
(56, '2024-11-07 20:30:00.000000', 2, 2, 2),
(57, '2024-11-07 21:05:00.000000', 2, 2, 2),
(58, '2024-11-07 21:25:00.000000', 2, 2, 2),
(59, '2024-11-07 21:55:00.000000', 2, 2, 2),
(60, '2024-11-07 22:15:00.000000', 2, 2, 2),
(61, '2024-11-07 22:35:00.000000', 2, 2, 2),
(62, '2024-11-07 23:10:00.000000', 2, 2, 2),
(63, '2024-11-07 11:00:00.000000', 1, 2, 2),
(64, '2024-11-07 13:05:00.000000', 1, 2, 2),
(65, '2024-11-07 14:10:00.000000', 1, 2, 2),
(66, '2024-11-07 15:10:00.000000', 1, 2, 2),
(67, '2024-11-07 15:40:00.000000', 1, 2, 2),
(68, '2024-11-07 16:15:00.000000', 1, 2, 2),
(69, '2024-11-07 17:15:00.000000', 1, 2, 2),
(70, '2024-11-07 17:45:00.000000', 1, 2, 2),
(71, '2024-11-07 18:20:00.000000', 1, 2, 2),
(72, '2024-11-07 19:00:00.000000', 1, 2, 2),
(73, '2024-11-07 19:20:00.000000', 1, 2, 2),
(74, '2024-11-07 19:50:00.000000', 1, 2, 2),
(75, '2024-11-07 20:10:00.000000', 1, 2, 2),
(76, '2024-11-07 20:30:00.000000', 1, 2, 2),
(77, '2024-11-07 21:05:00.000000', 1, 2, 2),
(78, '2024-11-07 21:25:00.000000', 1, 2, 2),
(79, '2024-11-07 21:55:00.000000', 1, 2, 2),
(80, '2024-11-07 22:15:00.000000', 1, 2, 2),
(81, '2024-11-07 22:35:00.000000', 1, 2, 2),
(82, '2024-11-07 23:10:00.000000', 1, 2, 2),
(83, '2024-11-09 11:00:00.000000', 2, 2, 1),
(84, '2024-11-09 13:05:00.000000', 2, 2, 1),
(85, '2024-11-09 14:10:00.000000', 2, 2, 1),
(86, '2024-11-09 15:10:00.000000', 2, 2, 1),
(87, '2024-11-09 15:40:00.000000', 2, 2, 1),
(88, '2024-11-09 16:15:00.000000', 2, 2, 1),
(89, '2024-11-09 17:15:00.000000', 2, 2, 1),
(90, '2024-11-09 17:45:00.000000', 2, 2, 1),
(91, '2024-11-09 18:20:00.000000', 2, 2, 1),
(92, '2024-11-09 19:00:00.000000', 2, 2, 1),
(93, '2024-11-09 19:20:00.000000', 2, 2, 1),
(94, '2024-11-09 19:50:00.000000', 2, 2, 1),
(95, '2024-11-09 20:10:00.000000', 2, 2, 1),
(96, '2024-11-09 20:30:00.000000', 2, 2, 1),
(97, '2024-11-09 21:05:00.000000', 2, 2, 1),
(98, '2024-11-09 21:25:00.000000', 2, 2, 1),
(99, '2024-11-09 21:55:00.000000', 2, 2, 1),
(100, '2024-11-09 22:15:00.000000', 2, 2, 1),
(101, '2024-11-09 22:35:00.000000', 2, 2, 1),
(102, '2024-11-09 23:10:00.000000', 2, 2, 1),
(103, '2024-11-08 11:00:00.000000', 2, 2, 1),
(104, '2024-11-08 13:05:00.000000', 2, 2, 1),
(105, '2024-11-08 14:10:00.000000', 2, 2, 1),
(106, '2024-11-08 15:10:00.000000', 2, 2, 1),
(107, '2024-11-08 15:40:00.000000', 2, 2, 1),
(108, '2024-11-08 16:15:00.000000', 2, 2, 1),
(109, '2024-11-08 17:15:00.000000', 2, 2, 1),
(110, '2024-11-08 17:45:00.000000', 2, 2, 1),
(111, '2024-11-08 18:20:00.000000', 2, 2, 1),
(112, '2024-11-08 19:00:00.000000', 2, 2, 1),
(113, '2024-11-08 19:20:00.000000', 2, 2, 1),
(114, '2024-11-08 19:50:00.000000', 2, 2, 1),
(115, '2024-11-08 20:10:00.000000', 2, 2, 1),
(116, '2024-11-08 20:30:00.000000', 2, 2, 1),
(117, '2024-11-08 21:05:00.000000', 2, 2, 1),
(118, '2024-11-08 21:25:00.000000', 2, 2, 1),
(119, '2024-11-08 21:55:00.000000', 2, 2, 1),
(120, '2024-11-08 22:15:00.000000', 2, 2, 1),
(121, '2024-11-08 22:35:00.000000', 2, 2, 1),
(122, '2024-11-08 23:10:00.000000', 2, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(15, 'database', 'binhluan'),
(6, 'database', 'combo'),
(7, 'database', 'dinhdangphim'),
(11, 'database', 'ghengoi'),
(8, 'database', 'nguoidung'),
(12, 'database', 'phim'),
(9, 'database', 'rapchieu'),
(10, 'database', 'theloai'),
(14, 'database', 've'),
(13, 'database', 'xuatchieu'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'database', '0001_initial', '2024-11-08 21:10:46.737880'),
(2, 'contenttypes', '0001_initial', '2024-11-08 21:10:46.747651'),
(3, 'admin', '0001_initial', '2024-11-08 21:10:46.793343'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-11-08 21:10:46.797060'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-11-08 21:10:46.802579'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-11-08 21:10:46.835180'),
(7, 'auth', '0001_initial', '2024-11-08 21:10:46.922487'),
(8, 'auth', '0002_alter_permission_name_max_length', '2024-11-08 21:10:46.944447'),
(9, 'auth', '0003_alter_user_email_max_length', '2024-11-08 21:10:46.948438'),
(10, 'auth', '0004_alter_user_username_opts', '2024-11-08 21:10:46.956569'),
(11, 'auth', '0005_alter_user_last_login_null', '2024-11-08 21:10:46.960667'),
(12, 'auth', '0006_require_contenttypes_0002', '2024-11-08 21:10:46.962424'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2024-11-08 21:10:46.965515'),
(14, 'auth', '0008_alter_user_username_max_length', '2024-11-08 21:10:46.971426'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2024-11-08 21:10:46.975710'),
(16, 'auth', '0010_alter_group_name_max_length', '2024-11-08 21:10:46.987938'),
(17, 'auth', '0011_update_proxy_permissions', '2024-11-08 21:10:46.996134'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2024-11-08 21:10:46.999475'),
(19, 'database', '0002_phim_do_tuoi_binhluan', '2024-11-08 21:10:47.049763'),
(20, 'database', '0003_alter_phim_thumbnail', '2024-11-08 21:10:47.071483'),
(21, 'database', '0004_combo_img_combo', '2024-11-08 21:10:47.078136'),
(22, 'database', '0005_alter_combo_img_combo', '2024-11-08 21:10:47.080934'),
(23, 'database', '0006_alter_combo_img_combo', '2024-11-08 21:10:47.094861'),
(24, 'database', '0007_remove_ve_combo_remove_ve_ghe_ngoi_ve_combo_and_more', '2024-11-08 21:10:47.537879'),
(25, 'database', '0008_phim_gia_ve', '2024-11-08 21:10:47.548868'),
(26, 'database', '0009_alter_phim_gia_ve', '2024-11-08 21:10:47.555994'),
(27, 'database', '0010_nguoidung_last_login_alter_nguoidung_password', '2024-11-08 21:10:47.568641'),
(28, 'database', '0011_alter_ve_link_face', '2024-11-08 21:10:47.608197'),
(29, 'database', '0012_remove_ve_gia_ve_remove_ve_loai_ghe_and_more', '2024-11-08 21:10:47.659544'),
(30, 'sessions', '0001_initial', '2024-11-08 21:10:47.671496'),
(31, 'database', '0013_alter_ve_ma_qr_ve', '2024-11-09 00:05:46.474364'),
(32, 'database', '0014_alter_ve_ma_qr_ve', '2024-11-09 00:32:46.639667');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('kusmtstflslyht47jgdazp1nvkyttg93', '.eJxVjMsOwiAQRf-FtSGF8igu3fsNZIYZpGogKe3K-O_apAvd3nPOfYkI21ri1nmJM4mzsOL0uyGkB9cd0B3qrcnU6rrMKHdFHrTLayN-Xg7376BAL9-anbGYwIMBN-TMEwGP3pO1xgRAzEa7bDW5cQqshqxSUIYUeq2JULN4fwAGWjiU:1t9Yfx:fc_qbJyvdurypoN0WTv5-tW7Ip_2ea0PEF_PiB0XMwM', '2024-11-22 23:46:01.598027');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Chỉ mục cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `database_binhluan`
--
ALTER TABLE `database_binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `database_binhluan_phim_id_1cbda2ed_fk_database_phim_id` (`phim_id`),
  ADD KEY `database_binhluan_user_binh_luan_id_6790a563_fk_database_` (`user_binh_luan_id`);

--
-- Chỉ mục cho bảng `database_combo`
--
ALTER TABLE `database_combo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `database_dinhdangphim`
--
ALTER TABLE `database_dinhdangphim`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `database_ghengoi`
--
ALTER TABLE `database_ghengoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `database_ghengoi_rap_chieu_id_3dccba8d_fk_database_rapchieu_id` (`rap_chieu_id`);

--
-- Chỉ mục cho bảng `database_nguoidung`
--
ALTER TABLE `database_nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `database_phim`
--
ALTER TABLE `database_phim`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `database_phim_the_loai`
--
ALTER TABLE `database_phim_the_loai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `database_phim_the_loai_phim_id_theloai_id_e66c2986_uniq` (`phim_id`,`theloai_id`),
  ADD KEY `database_phim_the_lo_theloai_id_6d69c277_fk_database_` (`theloai_id`);

--
-- Chỉ mục cho bảng `database_rapchieu`
--
ALTER TABLE `database_rapchieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `database_theloai`
--
ALTER TABLE `database_theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `database_ve`
--
ALTER TABLE `database_ve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `database_ve_phim_id_c4c50753_fk_database_phim_id` (`phim_id`),
  ADD KEY `database_ve_rap_id_88393a50_fk_database_rapchieu_id` (`rap_id`),
  ADD KEY `database_ve_user_mua_ve_id_9e4e9a16_fk_database_nguoidung_id` (`user_mua_ve_id`),
  ADD KEY `database_ve_thoi_gian_chieu_id_48afc6ea_fk_database_xuatchieu_id` (`thoi_gian_chieu_id`);

--
-- Chỉ mục cho bảng `database_ve_combo`
--
ALTER TABLE `database_ve_combo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `database_ve_combo_ve_id_combo_id_ebe895bf_uniq` (`ve_id`,`combo_id`),
  ADD KEY `database_ve_combo_combo_id_650a0df5_fk_database_combo_id` (`combo_id`);

--
-- Chỉ mục cho bảng `database_ve_ghe_ngoi`
--
ALTER TABLE `database_ve_ghe_ngoi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `database_ve_ghe_ngoi_ve_id_ghengoi_id_624f522f_uniq` (`ve_id`,`ghengoi_id`),
  ADD KEY `database_ve_ghe_ngoi_ghengoi_id_6fbc0da4_fk_database_ghengoi_id` (`ghengoi_id`);

--
-- Chỉ mục cho bảng `database_xuatchieu`
--
ALTER TABLE `database_xuatchieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `database_xuatchieu_dinh_dang_phim_id_d2e400d5_fk_database_` (`dinh_dang_phim_id`),
  ADD KEY `database_xuatchieu_phim_id_fb842084_fk_database_phim_id` (`phim_id`),
  ADD KEY `database_xuatchieu_rap_chieu_id_5949c1e6_fk_database_rapchieu_id` (`rap_chieu_id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_database_nguoidung_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `database_binhluan`
--
ALTER TABLE `database_binhluan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `database_combo`
--
ALTER TABLE `database_combo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `database_dinhdangphim`
--
ALTER TABLE `database_dinhdangphim`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `database_ghengoi`
--
ALTER TABLE `database_ghengoi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `database_nguoidung`
--
ALTER TABLE `database_nguoidung`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `database_phim`
--
ALTER TABLE `database_phim`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `database_phim_the_loai`
--
ALTER TABLE `database_phim_the_loai`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `database_rapchieu`
--
ALTER TABLE `database_rapchieu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `database_theloai`
--
ALTER TABLE `database_theloai`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `database_ve`
--
ALTER TABLE `database_ve`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `database_ve_combo`
--
ALTER TABLE `database_ve_combo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `database_ve_ghe_ngoi`
--
ALTER TABLE `database_ve_ghe_ngoi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `database_xuatchieu`
--
ALTER TABLE `database_xuatchieu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `database_binhluan`
--
ALTER TABLE `database_binhluan`
  ADD CONSTRAINT `database_binhluan_phim_id_1cbda2ed_fk_database_phim_id` FOREIGN KEY (`phim_id`) REFERENCES `database_phim` (`id`),
  ADD CONSTRAINT `database_binhluan_user_binh_luan_id_6790a563_fk_database_` FOREIGN KEY (`user_binh_luan_id`) REFERENCES `database_nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `database_ghengoi`
--
ALTER TABLE `database_ghengoi`
  ADD CONSTRAINT `database_ghengoi_rap_chieu_id_3dccba8d_fk_database_rapchieu_id` FOREIGN KEY (`rap_chieu_id`) REFERENCES `database_rapchieu` (`id`);

--
-- Các ràng buộc cho bảng `database_phim_the_loai`
--
ALTER TABLE `database_phim_the_loai`
  ADD CONSTRAINT `database_phim_the_lo_theloai_id_6d69c277_fk_database_` FOREIGN KEY (`theloai_id`) REFERENCES `database_theloai` (`id`),
  ADD CONSTRAINT `database_phim_the_loai_phim_id_daaf3be3_fk_database_phim_id` FOREIGN KEY (`phim_id`) REFERENCES `database_phim` (`id`);

--
-- Các ràng buộc cho bảng `database_ve`
--
ALTER TABLE `database_ve`
  ADD CONSTRAINT `database_ve_phim_id_c4c50753_fk_database_phim_id` FOREIGN KEY (`phim_id`) REFERENCES `database_phim` (`id`),
  ADD CONSTRAINT `database_ve_rap_id_88393a50_fk_database_rapchieu_id` FOREIGN KEY (`rap_id`) REFERENCES `database_rapchieu` (`id`),
  ADD CONSTRAINT `database_ve_thoi_gian_chieu_id_48afc6ea_fk_database_xuatchieu_id` FOREIGN KEY (`thoi_gian_chieu_id`) REFERENCES `database_xuatchieu` (`id`),
  ADD CONSTRAINT `database_ve_user_mua_ve_id_9e4e9a16_fk_database_nguoidung_id` FOREIGN KEY (`user_mua_ve_id`) REFERENCES `database_nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `database_ve_combo`
--
ALTER TABLE `database_ve_combo`
  ADD CONSTRAINT `database_ve_combo_combo_id_650a0df5_fk_database_combo_id` FOREIGN KEY (`combo_id`) REFERENCES `database_combo` (`id`),
  ADD CONSTRAINT `database_ve_combo_ve_id_4ddfd54c_fk_database_ve_id` FOREIGN KEY (`ve_id`) REFERENCES `database_ve` (`id`);

--
-- Các ràng buộc cho bảng `database_ve_ghe_ngoi`
--
ALTER TABLE `database_ve_ghe_ngoi`
  ADD CONSTRAINT `database_ve_ghe_ngoi_ghengoi_id_6fbc0da4_fk_database_ghengoi_id` FOREIGN KEY (`ghengoi_id`) REFERENCES `database_ghengoi` (`id`),
  ADD CONSTRAINT `database_ve_ghe_ngoi_ve_id_22995ae9_fk_database_ve_id` FOREIGN KEY (`ve_id`) REFERENCES `database_ve` (`id`);

--
-- Các ràng buộc cho bảng `database_xuatchieu`
--
ALTER TABLE `database_xuatchieu`
  ADD CONSTRAINT `database_xuatchieu_dinh_dang_phim_id_d2e400d5_fk_database_` FOREIGN KEY (`dinh_dang_phim_id`) REFERENCES `database_dinhdangphim` (`id`),
  ADD CONSTRAINT `database_xuatchieu_phim_id_fb842084_fk_database_phim_id` FOREIGN KEY (`phim_id`) REFERENCES `database_phim` (`id`),
  ADD CONSTRAINT `database_xuatchieu_rap_chieu_id_5949c1e6_fk_database_rapchieu_id` FOREIGN KEY (`rap_chieu_id`) REFERENCES `database_rapchieu` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_database_nguoidung_id` FOREIGN KEY (`user_id`) REFERENCES `database_nguoidung` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
