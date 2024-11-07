-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 07, 2024 lúc 02:40 PM
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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add combo', 7, 'add_combo'),
(26, 'Can change combo', 7, 'change_combo'),
(27, 'Can delete combo', 7, 'delete_combo'),
(28, 'Can view combo', 7, 'view_combo'),
(29, 'Can add dinh dang phim', 8, 'add_dinhdangphim'),
(30, 'Can change dinh dang phim', 8, 'change_dinhdangphim'),
(31, 'Can delete dinh dang phim', 8, 'delete_dinhdangphim'),
(32, 'Can view dinh dang phim', 8, 'view_dinhdangphim'),
(33, 'Can add nguoi dung', 9, 'add_nguoidung'),
(34, 'Can change nguoi dung', 9, 'change_nguoidung'),
(35, 'Can delete nguoi dung', 9, 'delete_nguoidung'),
(36, 'Can view nguoi dung', 9, 'view_nguoidung'),
(37, 'Can add rap chieu', 10, 'add_rapchieu'),
(38, 'Can change rap chieu', 10, 'change_rapchieu'),
(39, 'Can delete rap chieu', 10, 'delete_rapchieu'),
(40, 'Can view rap chieu', 10, 'view_rapchieu'),
(41, 'Can add the loai', 11, 'add_theloai'),
(42, 'Can change the loai', 11, 'change_theloai'),
(43, 'Can delete the loai', 11, 'delete_theloai'),
(44, 'Can view the loai', 11, 'view_theloai'),
(45, 'Can add ghe ngoi', 12, 'add_ghengoi'),
(46, 'Can change ghe ngoi', 12, 'change_ghengoi'),
(47, 'Can delete ghe ngoi', 12, 'delete_ghengoi'),
(48, 'Can view ghe ngoi', 12, 'view_ghengoi'),
(49, 'Can add phim', 13, 'add_phim'),
(50, 'Can change phim', 13, 'change_phim'),
(51, 'Can delete phim', 13, 'delete_phim'),
(52, 'Can view phim', 13, 'view_phim'),
(53, 'Can add xuat chieu', 14, 'add_xuatchieu'),
(54, 'Can change xuat chieu', 14, 'change_xuatchieu'),
(55, 'Can delete xuat chieu', 14, 'delete_xuatchieu'),
(56, 'Can view xuat chieu', 14, 'view_xuatchieu'),
(57, 'Can add ve', 15, 'add_ve'),
(58, 'Can change ve', 15, 'change_ve'),
(59, 'Can delete ve', 15, 'delete_ve'),
(60, 'Can view ve', 15, 'view_ve'),
(61, 'Can add binh luan', 16, 'add_binhluan'),
(62, 'Can change binh luan', 16, 'change_binhluan'),
(63, 'Can delete binh luan', 16, 'delete_binhluan'),
(64, 'Can view binh luan', 16, 'view_binhluan');

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
  `gia_combo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_combo`
--

INSERT INTO `database_combo` (`id`, `ten_combo`, `gia_combo`) VALUES
(1, 'Gà rừng phô mai', 65000.00);

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
(1, '123', '01', 70000.00, 1);

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
  `ngay_sinh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_nguoidung`
--

INSERT INTO `database_nguoidung` (`id`, `username`, `email`, `sdt`, `password`, `gioi_tinh`, `ngay_sinh`) VALUES
(1, '1', '123@gmail.com', '2', '3', 'Nam', '2003-01-01');

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
  `do_tuoi` int(10) UNSIGNED NOT NULL CHECK (`do_tuoi` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `database_phim`
--

INSERT INTO `database_phim` (`id`, `ten_phim`, `dao_dien`, `dien_vien`, `thoi_luong`, `tom_tat`, `thumbnail`, `do_tuoi`) VALUES
(2, 'THẦN DƯỢC', 'Coralie Fargeat', 'Demi Moore, Margaret Qualley, Dennis Quaid', 238, 'Elizabeth Sparkle, minh tinh sở hữu vẻ đẹp hút hồn cùng với tài năng được mến mộ nồng nhiệt. Khi đã trải qua thời kỳ đỉnh cao, nhan sắc dần tàn phai, cô tìm đến những kẻ buôn lậu để mua một loại thuốc bí hiểm nhằm “thay da đổi vận\", tạo ra một phiên bản trẻ trung hơn của chính mình.', 'thumbnails/THAN-DUOC.jpg', 18),
(3, 'NGÀY XƯA CÓ MỘT CHUYỆN TÌNH', 'Trịnh Đình Lê Minh', 'Avin Lu, Ngọc Xuân, Đỗ Nhật Hoàng, Thanh Tú, Bảo Tiên, Hạo Khang', 235, 'Ngày Xưa Có Một Chuyện Tình xoay quanh câu chuyện tình bạn, tình yêu giữa hai chàng trai và một cô gái từ thuở ấu thơ cho đến khi trưởng thành, phải đối mặt với những thử thách của số phận. Trải dài trong 4 giai đoạn từ năm 1987 - 2000, ba người bạn cùng tuổi - Vinh, Miền, Phúc đã cùng yêu, cùng bỡ ngỡ bước vào đời, va vấp và vượt qua.', 'thumbnails/nga-xua-mot-chuyen-tinh.jpg', 16),
(4, 'THIÊN ĐƯỜNG QUẢ BÁO', 'THIÊN ĐƯỜNG QUẢ BÁO', 'Jeff Satur, Engfa Waraha, Srida Puapimol, Harit Buayoi, Pongsakorn Mettarikanon', 131, 'Thongkam (Jeff Satur) và Sek (Pongsakorn) làm lụng vất vả, cày ngày cày đêm để xây dựng một mái ấm. Sau bao nỗ lực, cuối cùng họ cũng có quyền sở hữu trang trại sầu riêng ở Mae Hong Son. Tuy nhiên, bi kịch bỗng ập tới khi Sek đột ngột qua đời trong một vụ tai nạn vào thời điểm họ chưa kịp đăng ký kết hôn. Chính điều này đã khiến Thongkam không có quyền sở hữu tài sản mà 2 người đã cùng gây dựng. Ngôi nhà và đất đai bao gồm vườn sầu riêng đương nhiên thuộc về mẹ của Sek, người sẽ chuyển đến sống cùng con gái nuôi Mo (Engfa) và người làm vườn Jingna. Thongkam giờ phải đấu tranh để giành lại thành quả của tình yêu và công sức lao động của mình. Liệu giữa Thongkam và Mo, ai sẽ giành được quyền thừa kế , trở thành chủ vựa sầu riêng?', 'thumbnails/THIEN-DUONG-QUA-BAO.jpg', 18),
(5, 'VÂY HÃM TẠI ĐÀI BẮC', 'George Huang', 'Luke Evans, Sung Kang, Gwei Lun-Mei', 100, 'Theo chân John Lawlor là một đặc vụ DEA cừ khôi bất khả chiến bại, anh sẽ không tiếc hi sinh bất cứ điều gì để hoàn thành nhiệm vụ được giao.Trong khi đó, Joey Kwang là \"người vận chuyển\" hàng đầu ở Đài Bắc với tốc độ không ai sánh bằng và tư duy nhạy bén mà không ai có thể theo kịp cô. Vô tình số phận đã đưa họ đến với nhau trước khi thế lực tội phạm chia cắt họ.15 năm sau, số phận một lần nữa đẩy Joey và John va chạm nhau trong tình cảnh bất đắc dĩ vào cuối tuần tại Đài Bắc. Và cả hai sẽ khám phá ra rằng điều duy nhất khó hơn việc yêu… chính là yêu lại.', 'thumbnails/VAY-HAM-TAI-DAI-BAC.jpg', 18),
(6, 'VENOM: KÈO CUỐI', 'Kelly Marcel', 'Tom Hardy, Juno Temple, Chiwetel Ejiofor, Clark Backo, Stephen Graham', 109, 'Tom Hardy sẽ tái xuất trong bom tấn Venom: The Last Dance (Tựa Việt: Venom: Kèo Cuối) và phải đối mặt với kẻ thù lớn nhất từ trước đến nay - toàn bộ chủng tộc Symbiote Venom: Kèo cuối - Dự kiến khởi chiếu 25.10.2024', 'thumbnails/venom3.jpg', 13),
(7, 'CÔ DÂU HÀO MÔN', 'Vũ Ngọc Đãng', 'Uyển Ân, Samuel An, Thu Trang, Lê Giang, Kiều Minh Tuấn, NSND Hồng Vân,...', 114, 'Phim lấy đề tài làm dâu hào môn và khai thác câu chuyện môn đăng hộ đối, lối sống và quy tắc của giới thượng lưu dưới góc nhìn hài hước và châm biếm.', 'thumbnails/co-dau-hao-mon.jpg', 18),
(8, 'TEE YOD: QUỶ ĂN TẠNG 2', 'Taweewat Wantha', 'Nadech Kugimiya, Denise Jelilcha Kapaun, Mim Rattawadee Wongthong, Junior Kajbhunditt Jaidee, Friend Peerakrit Phacharaboonyakiat, Nutthatcha Jessica Padovan', 111, 'Ba năm sau cái chết của Yam, Yak vẫn tiếp tục săn lùng linh hồn bí ẩn mặc áo choàng đen. Gặp một cô gái có triệu chứng giống Yam, Yak phát hiện ra người bảo vệ linh hồn, pháp sư ẩn dật Puang, sống trong một khu rừng đầy nguy hiểm. Giữa những phép thuật ma quỷ và những sinh vật nguy hiểm. Khi họ đuổi theo linh hồn mặc áo choàng đen, tiếng kêu đầy ám ảnh của Tee Yod sắp quay trở lại một lần nữa...', 'thumbnails/tee-yod-2.jpg', 18),
(9, 'ROBOT HOANG DÃ : Lồng tiếng', 'Chris Sanders', 'Lupita Nyong\'o, Pedro Pascal, Catherine O’hara, Bill Nighy,...', 102, 'Cuộc phiêu lưu hoành tráng theo chân hành trình của một robot — đơn vị ROZZUM 7134, gọi tắt là Roz. Roz vô tình dạt vào hoang đảo sau một sự cố và nơi đây trở thành địa điểm sống mới của cô. Tại đây, Roz kết thân và nhận nuôi một chú ngỗng con, đặt tên là Brightbill. Roz và Brightbill dần dần thân thiết với các bạn thú trên đảo, song sau đó phải chống chọi, bảo vệ “nhà mới” trước sự xâm lăng của nhà máy từng sản xuất ra Roz.', 'thumbnails/robot-hoang-da.jpg', 0),
(10, 'ĐỪNG BUÔNG TAY', 'Alexandre Aja', 'Halle Berry Anthony B. Jenkins Stephanie Lavigne', 90, 'Một ngôi nhà chứa đầy bùa chú là nơi an toàn cuối cùng để tránh xa lũ quỷ trong thế giới hậu tận thế đáng sợ. Một người mẹ và 2 đứa con nhỏ phải kết nối với ngôi nhà bằng sợi dây thừng linh thiêng để sinh tồn nơi rừng rậm, nơi hai thực thể ác độc Kẻ Xấu và Kẻ Xa Lạ có thể tước đoạt mạng người trong một phút buông tay.', 'thumbnails/DUNG-BUONG-TAY.jpg', 16),
(11, 'MẬT MÃ ĐỎ', 'Jake Kasdan', 'Dwayne Johnson; Chris Evans; Lucy Liu', 90, 'Sau khi Ông già Noel (mật danh: Red One) bị bắt cóc, Trưởng An ninh Bắc Cực (Dwayne Johnson) phải hợp tác với thợ săn tiền thưởng khét tiếng nhất thế giới (Chris Evans) trong một nhiệm vụ kịch tính xuyên lục địa để giải cứu Giáng Sinh.', 'thumbnails/MAT-MA-DO.jpg', 13),
(12, 'VÕ SĨ GIÁC ĐẤU II', 'Ridley Scott', 'Paul Mescal, Joseph Quinn, Pedro Pascal, Connie Nielsen, Denzel Washington,…', 90, 'Sau khi đánh mất quê hương vào tay hoàng đế bạo chúa – người đang cai trị Rome, Lucius trở thành nô lệ giác đấu trong đấu trường Colosseum và phải tìm kiếm sức mạnh từ quá khứ để đưa vinh quang trở lại cho người dân Rome.', 'thumbnails/VO-SI-GIAC-DAU-2.jpg', 18),
(13, 'LINH MIÊU', 'Lưu Thành Luân', 'Hồng Đào, Thiên An, Thuỳ Tiên, Văn Anh, Samuel An,...', 90, 'Linh Miêu: Quỷ Nhập Tràng lấy cảm hứng từ truyền thuyết dân gian về “quỷ nhập tràng” để xây dựng cốt truyện. Phim lồng ghép những nét văn hóa đặc trưng của Huế như nghệ thuật khảm sành - một văn hóa đặc sắc của thời nhà Nguyễn, đề cập đến các vấn đề về giai cấp và quan điểm trọng nam khinh nữ. Đặc biệt, hình ảnh rước kiệu thây ma và những hình nhân giấy không chỉ biểu trưng cho tai ương hay điềm dữ mà còn là hiện thân của nghiệp quả.', 'thumbnails/LINH-MIU.jpg', 18),
(14, 'CÔNG TỬ BẠC LIÊU', 'Lý Minh Thắng', 'NSUT Thành Lộc, Song Luân, Công Dương, Đoàn Thiên Ân,…', 90, 'Lấy cảm hứng từ giai thoại nổi tiếng của nhân vật được mệnh danh là thiên hạ đệ nhất chơi ngông, Công Tử Bạc Liêu là bộ phim tâm lý hài hước, lấy bối cảnh Nam Kỳ Lục Tỉnh xưa của Việt Nam. BA HƠN - Con trai được thương yêu hết mực của ông Hội đồng Lịnh vốn là chủ ngân hàng đầu tiên tại Việt Nam, sau khi du học Pháp về đã sử dụng cả gia sản của mình vào những trò vui tiêu khiển, ăn chơi trác tán – nên được người dân gọi bằng cái tên Công Tử Bạc Liêu.', 'thumbnails/CONG-TU-BAC-LIEU.jpg', 0);

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
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(7, 4, 7),
(5, 5, 5),
(6, 6, 6),
(8, 7, 3),
(9, 7, 4),
(10, 8, 2),
(11, 9, 8),
(12, 9, 9),
(13, 10, 2),
(14, 11, 10),
(16, 12, 5),
(15, 12, 11),
(17, 13, 2),
(18, 14, 12);

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
  `loai_ghe` varchar(50) NOT NULL,
  `gia_ve` decimal(10,2) NOT NULL,
  `ma_qr_ve` varchar(100) NOT NULL,
  `link_face` varchar(200) NOT NULL,
  `combo_id` bigint(20) DEFAULT NULL,
  `ghe_ngoi_id` bigint(20) NOT NULL,
  `phim_id` bigint(20) NOT NULL,
  `rap_id` bigint(20) NOT NULL,
  `user_mua_ve_id` bigint(20) NOT NULL,
  `thoi_gian_chieu_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(82, '2024-11-07 23:10:00.000000', 1, 2, 2);

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
  `user_id` int(11) NOT NULL
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
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(16, 'database', 'binhluan'),
(7, 'database', 'combo'),
(8, 'database', 'dinhdangphim'),
(12, 'database', 'ghengoi'),
(9, 'database', 'nguoidung'),
(13, 'database', 'phim'),
(10, 'database', 'rapchieu'),
(11, 'database', 'theloai'),
(15, 'database', 've'),
(14, 'database', 'xuatchieu'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2024-10-17 01:40:15.894139'),
(2, 'auth', '0001_initial', '2024-10-17 01:40:16.082685'),
(3, 'admin', '0001_initial', '2024-10-17 01:40:16.128114'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-10-17 01:40:16.135115'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-10-17 01:40:16.140132'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-10-17 01:40:16.171116'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-10-17 01:40:16.196114'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-10-17 01:40:16.207114'),
(9, 'auth', '0004_alter_user_username_opts', '2024-10-17 01:40:16.212202'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-10-17 01:40:16.231117'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-10-17 01:40:16.232115'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-10-17 01:40:16.240117'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-10-17 01:40:16.249116'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-10-17 01:40:16.259115'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-10-17 01:40:16.269147'),
(16, 'auth', '0011_update_proxy_permissions', '2024-10-17 01:40:16.275110'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-10-17 01:40:16.284266'),
(18, 'database', '0001_initial', '2024-10-17 01:40:16.594325'),
(19, 'database', '0002_phim_do_tuoi_binhluan', '2024-10-17 01:40:16.655343'),
(20, 'sessions', '0001_initial', '2024-10-17 01:40:16.670345'),
(21, 'database', '0003_alter_phim_thumbnail', '2024-11-06 02:35:54.451102');

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
  ADD KEY `database_ve_combo_id_ed696039_fk_database_combo_id` (`combo_id`),
  ADD KEY `database_ve_ghe_ngoi_id_78c4995b_fk_database_ghengoi_id` (`ghe_ngoi_id`),
  ADD KEY `database_ve_phim_id_c4c50753_fk_database_phim_id` (`phim_id`),
  ADD KEY `database_ve_rap_id_88393a50_fk_database_rapchieu_id` (`rap_id`),
  ADD KEY `database_ve_user_mua_ve_id_9e4e9a16_fk_database_nguoidung_id` (`user_mua_ve_id`),
  ADD KEY `database_ve_thoi_gian_chieu_id_48afc6ea_fk_database_xuatchieu_id` (`thoi_gian_chieu_id`);

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
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `database_binhluan`
--
ALTER TABLE `database_binhluan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `database_combo`
--
ALTER TABLE `database_combo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `database_dinhdangphim`
--
ALTER TABLE `database_dinhdangphim`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `database_ghengoi`
--
ALTER TABLE `database_ghengoi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `database_nguoidung`
--
ALTER TABLE `database_nguoidung`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `database_phim`
--
ALTER TABLE `database_phim`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `database_phim_the_loai`
--
ALTER TABLE `database_phim_the_loai`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `database_xuatchieu`
--
ALTER TABLE `database_xuatchieu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
-- Các ràng buộc cho bảng `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Các ràng buộc cho bảng `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
  ADD CONSTRAINT `database_ve_combo_id_ed696039_fk_database_combo_id` FOREIGN KEY (`combo_id`) REFERENCES `database_combo` (`id`),
  ADD CONSTRAINT `database_ve_ghe_ngoi_id_78c4995b_fk_database_ghengoi_id` FOREIGN KEY (`ghe_ngoi_id`) REFERENCES `database_ghengoi` (`id`),
  ADD CONSTRAINT `database_ve_phim_id_c4c50753_fk_database_phim_id` FOREIGN KEY (`phim_id`) REFERENCES `database_phim` (`id`),
  ADD CONSTRAINT `database_ve_rap_id_88393a50_fk_database_rapchieu_id` FOREIGN KEY (`rap_id`) REFERENCES `database_rapchieu` (`id`),
  ADD CONSTRAINT `database_ve_thoi_gian_chieu_id_48afc6ea_fk_database_xuatchieu_id` FOREIGN KEY (`thoi_gian_chieu_id`) REFERENCES `database_xuatchieu` (`id`),
  ADD CONSTRAINT `database_ve_user_mua_ve_id_9e4e9a16_fk_database_nguoidung_id` FOREIGN KEY (`user_mua_ve_id`) REFERENCES `database_nguoidung` (`id`);

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
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
