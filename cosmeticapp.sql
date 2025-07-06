-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 06, 2025 lúc 01:20 PM
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
-- Cơ sở dữ liệu: `cosmeticapp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT 'Tên danh mục, vd: đồ điện tử'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(5, 'Trang điểm'),
(6, 'Chăm sóc tóc'),
(7, 'Nước hoa'),
(8, 'Dụng cụ làm đẹp'),
(9, 'Chống nắng'),
(10, 'Tẩy trang'),
(11, 'Chăm sóc môi'),
(12, 'Mặt nạ'),
(13, 'Serum & Tinh chất'),
(14, 'Kem dưỡng'),
(15, 'Sữa rửa mặt'),
(16, 'Toner'),
(17, 'Kem mắt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT '',
  `email` varchar(100) DEFAULT '',
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(100) DEFAULT '',
  `order_date` datetime DEFAULT current_timestamp(),
  `status` enum('pending','processing','shipped','delivered','cancelled') DEFAULT NULL COMMENT 'Trạng thái đơn hàng',
  `total_money` float DEFAULT NULL CHECK (`total_money` >= 0),
  `shipping_method` varchar(100) DEFAULT NULL,
  `shipping_address` varchar(200) DEFAULT NULL,
  `shipping_date` date DEFAULT NULL,
  `tracking_number` varchar(100) DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `order_date`, `status`, `total_money`, `shipping_method`, `shipping_address`, `shipping_date`, `tracking_number`, `payment_method`, `active`) VALUES
(1, 4, 'Phạm Thụy Thảo Như', '22521055@gmail.com', '0365398625', 'Long An', 'Giao buổi chiều', NULL, 'cancelled', 1150000, 'express', NULL, NULL, NULL, 'cod', 1),
(2, 4, 'Thảo Như', 'nhu234@gmail.com', '11445547', 'nhà x ngõ y', 'hàng dễ vỡ', NULL, 'pending', 930000, 'express', NULL, NULL, NULL, 'cod', 1),
(3, 4, 'Thảo Như', 'nhu123@gmail.com', '0365398625', 'nhà ở đây', 'dễ bị vỡ', NULL, 'processing', 1300000, 'express', NULL, NULL, NULL, 'cod', 1),
(4, 4, 'Thảo Như', 'nhu123@gmail.com', '0365398625', 'nhà ở đây', 'dễ bị vỡ', '2025-07-04 00:00:00', 'pending', 515000, 'express', NULL, '2025-07-04', NULL, 'cod', 1),
(5, 4, 'Thảo Như', 'nhu123@gmail.com', '0365398625', 'nhà ở đây', 'dễ bị vỡ', '2025-07-04 00:00:00', 'pending', 520000, 'express', NULL, '2025-07-04', NULL, 'cod', 1),
(6, 4, 'Thảo Như', 'nhu123@gmail.com', '0365398625', 'nhà ở đây', 'dễ bị vỡ', '2025-07-04 00:00:00', 'pending', 4340000, 'express', NULL, '2025-07-04', NULL, 'cod', 1),
(7, 4, 'Thảo Như', 'nhu123@gmail.com', '0365398625', 'nhà ở đây', 'dễ bị vỡ', '2025-07-04 00:00:00', 'pending', 610000, 'express', NULL, '2025-07-04', NULL, 'cod', 1),
(8, 4, 'Thảo Như', 'nhu123@gmail.com', '0365398625', 'nhà ở đây', 'dễ bị vỡ', '2025-07-04 00:00:00', 'pending', 600000, 'express', NULL, '2025-07-04', NULL, 'cod', 1),
(9, 4, 'Thảo Như', 'nhu123@gmail.com', '0365398625', 'nhà ở đây', 'dễ bị vỡ', '2025-07-04 00:00:00', 'pending', 3620000, 'express', NULL, '2025-07-04', NULL, 'cod', 1),
(10, 4, 'Thảo Như', 'nhu123@gmail.com', '0365398625', 'nhà ở đây', 'dễ bị vỡ', '2025-07-04 00:00:00', 'pending', 1150000, 'express', NULL, '2025-07-04', NULL, 'cod', 1),
(11, 4, 'Thảo Như', 'nhu123@gmail.com', '0365398625', 'nhà ở đây', 'dễ bị vỡ', NULL, 'pending', 300000, 'express', NULL, NULL, NULL, 'cod', 0),
(12, 4, 'Thảo Như', 'nhu123@gmail.com', '0365398625', 'nhà ở đây', 'dễ bị vỡ', '2025-07-04 00:00:00', 'pending', 1280000, 'express', NULL, '2025-07-04', NULL, 'cod', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL CHECK (`price` >= 0),
  `number_of_products` int(11) DEFAULT NULL CHECK (`number_of_products` > 0),
  `total_money` float DEFAULT NULL CHECK (`total_money` >= 0),
  `color` varchar(20) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `number_of_products`, `total_money`, `color`) VALUES
(1, 1, 5518, 220000, 7, NULL, NULL),
(2, 1, 5519, 160000, 5, NULL, NULL),
(3, 2, 5517, 320000, 2, NULL, NULL),
(4, 2, 5525, 290000, 1, NULL, NULL),
(5, 3, 5516, 490000, 2, NULL, NULL),
(6, 3, 5517, 320000, 1, NULL, NULL),
(7, 4, 5597, 350000, 1, NULL, NULL),
(8, 4, 5526, 165000, 1, NULL, NULL),
(9, 5, 5564, 520000, 1, NULL, NULL),
(10, 6, 5541, 2100000, 2, NULL, NULL),
(11, 6, 5522, 140000, 1, NULL, NULL),
(12, 7, 5566, 360000, 1, NULL, NULL),
(13, 7, 5575, 250000, 1, NULL, NULL),
(14, 8, 5627, 150000, 4, NULL, NULL),
(15, 9, 5539, 2700000, 1, NULL, NULL),
(16, 9, 5636, 920000, 1, NULL, NULL),
(17, 10, 5553, 75000, 2, NULL, NULL),
(18, 10, 5529, 650000, 1, NULL, NULL),
(19, 10, 5548, 350000, 1, NULL, NULL),
(20, 11, 5523, 150000, 2, NULL, NULL),
(21, 12, 5517, 320000, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(350) DEFAULT NULL COMMENT 'Tên sản phẩm',
  `price` float NOT NULL CHECK (`price` >= 0),
  `thumbnail` varchar(300) DEFAULT '',
  `description` longtext DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `thumbnail`, `description`, `created_at`, `updated_at`, `category_id`) VALUES
(5516, 'MAC Matte Lipstick – Chili', 490000, 'bf6a658f-5cc4-4347-9a0b-b1c58e09abd9_001.jpg', 'Son lì màu đỏ đất nổi tiếng của MAC.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 5),
(5517, '3CE Velvet Lip Tint – Daffodil', 320000, '1d1daae4-2a90-4569-93b6-530554146cbf_005.jpg', 'Son tint lì mềm mịn, màu đỏ nâu quyến rũ.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 5),
(5518, 'Maybelline Fit Me Foundation 120', 220000, '2fbaa937-6b8b-464c-89bd-ea5cef5dc580_009.jpg', 'Kem nền che phủ tự nhiên, phù hợp da thường.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 5),
(5519, 'Innisfree No Sebum Powder', 160000, '0d4d72fb-f64f-4cbe-aeb0-f5dcd6b48889_013.jpg', 'Phấn phủ kiềm dầu từ thiên nhiên của Innisfree.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 5),
(5520, 'L\'Oréal Lash Paradise Mascara', 210000, '95c31b9e-06f5-4723-81c0-302fc0de3997_018.jpg', 'Mascara làm dày và cong mi tự nhiên.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 5),
(5521, 'The Saem Cover Perfection Tip Concealer', 95000, '1c3b906d-2b56-4209-8104-80ad23c673f5_022.jpg', 'Che khuyết điểm Hàn Quốc bán chạy nhất.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 5),
(5522, 'Romand Better Than Cheek – Peach Chip', 140000, 'a03909fa-d127-4418-9549-04762562ca19_026.jpg', 'Má hồng nhẹ nhàng tone cam đào.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 5),
(5523, 'Black Rouge Air Fit Velvet Tint – A12', 150000, '50de33eb-b14c-42a4-acab-706fab849c5e_032.jpg', 'Son kem lì nhẹ môi, màu đỏ nâu lạnh.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 5),
(5524, 'Missha Glow Skin Balm', 250000, '609835dd-3eee-43db-9c3d-8e75a9195e0e_036.jpg', 'Kem lót dưỡng sáng da, tạo hiệu ứng glowy.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 5),
(5525, 'Banila Co Prime Primer Classic', 290000, '46f9f84d-3b9e-4455-a4f8-70c99125bfaf_040.jpg', 'Kem lót kiểm dầu, se khít lỗ chân lông.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 5),
(5526, 'TRESemmé Keratin Smooth Shampoo', 165000, '83e655a6-2a20-4e9c-a0b8-6161f933d771_043.jpg', 'Dầu gội dưỡng tóc bóng mượt chứa keratin.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 6),
(5527, 'Dove Intense Repair Conditioner', 145000, '318f360d-24bc-40d3-977b-5f61af8d965c_047.jpg', 'Dầu xả phục hồi tóc hư tổn, mềm mượt.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 6),
(5528, 'Pantene Pro-V Hair Fall Control Shampoo', 120000, '994d695f-9e1d-457a-804b-8fed833455eb_051.jpg', 'Ngăn gãy rụng, chắc khỏe từ gốc.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 6),
(5529, 'Moroccanoil Treatment Original', 650000, '164c37bb-e0b2-4b2f-a06f-f623184203b6_053.jpg', 'Tinh dầu dưỡng tóc từ Morocco nổi tiếng.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 6),
(5530, 'L\'Oréal Elseve Extraordinary Oil', 280000, '98953ee7-2c41-4fda-ad63-b138e69762b1_056.jpg', 'Dầu dưỡng tóc mềm mượt, chống xơ rối.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 6),
(5531, 'Tsubaki Premium Repair Hair Mask', 390000, 'ea92e05b-7d90-4f39-944e-d129591479b0_057.jpg', 'Ủ tóc phục hồi chuyên sâu từ Shiseido.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 6),
(5532, 'OGX Biotin & Collagen Shampoo', 210000, '73a61973-894f-4acc-8370-5e043178a855_063.jpg', 'Tăng độ dày và khỏe mạnh cho tóc mỏng.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 6),
(5533, 'Head & Shoulders Anti-Dandruff', 115000, 'acf5007e-2697-4c8b-b824-e5320791991a_067.jpg', 'Dầu gội trị gàu nổi tiếng, thơm mát.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 6),
(5534, 'Herbal Essences Argan Oil Shampoo', 230000, 'be2ea9e8-9508-4a68-8549-3499b2f6864d_070.jpg', 'Dầu gội organic phục hồi tóc hư tổn.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 6),
(5535, 'Yves Rocher Anti Hair Loss Shampoo', 260000, '4ea1b92e-aa2c-4eb2-b0b2-f10f121dda2e_073.jpg', 'Dầu gội thiên nhiên chống rụng tóc hiệu quả.', '2025-05-29 14:39:55', '2025-05-29 14:39:55', 6),
(5536, 'Chanel Coco Mademoiselle EDP 50ml', 3200000, '9fd32a8d-9dd3-49dd-bc07-e6e7c4dbfe97_077.jpg', 'Hương hoa cổ điển, thanh lịch, quyến rũ.', '2025-05-29 14:40:36', '2025-05-29 14:40:36', 7),
(5537, 'Dior Sauvage EDT 60ml', 2900000, 'e5a181d3-1367-4e31-8e86-f3c6bac3d263_080.jpg', 'Nước hoa nam mạnh mẽ, đầy lôi cuốn.', '2025-05-29 14:40:36', '2025-05-29 14:40:36', 7),
(5538, 'Versace Bright Crystal 50ml', 2200000, '8eb5ded9-447c-4823-afee-6fc4f33e5c1a_085.jpg', 'Hương thơm ngọt ngào, nữ tính.', '2025-05-29 14:40:36', '2025-05-29 14:40:36', 7),
(5539, 'Gucci Bloom EDP 50ml', 2700000, '488198ab-1dc1-4648-bb1b-fbfeb3d9d7c8_089.jpg', 'Nước hoa hoa trắng thanh khiết, nhẹ nhàng.', '2025-05-29 14:40:36', '2025-05-29 14:40:36', 7),
(5540, 'YSL Libre EDP 50ml', 2950000, '69fda10b-1663-407c-8c1f-9f2ea0a340d0_092.jpg', 'Phong cách tự do, gợi cảm và cá tính.', '2025-05-29 14:40:36', '2025-05-29 14:40:36', 7),
(5541, 'Bvlgari Omnia Amethyste 65ml', 2100000, '75dbd691-a3cb-4384-bcbe-a71c4c596ba7_095.jpg', 'Hương hoa diên vĩ và hoa hồng nữ tính.', '2025-05-29 14:40:36', '2025-05-29 14:40:36', 7),
(5542, 'Calvin Klein Euphoria 100ml', 1900000, 'ddad8e56-1668-4e1e-9a45-4a865077b5e0_098.jpg', 'Hương thơm quyến rũ, gợi cảm và bí ẩn.', '2025-05-29 14:40:36', '2025-05-29 14:40:36', 7),
(5543, 'Lancome La Vie Est Belle EDP 50ml', 2600000, '5642163a-791b-494b-b79a-c625f392dfe1_102.jpg', 'Ngọt ngào, tinh tế và quyến rũ.', '2025-05-29 14:40:36', '2025-05-29 14:40:36', 7),
(5544, 'Giorgio Armani Acqua Di Gio Pour Homme', 2800000, '6b6a8800-f0e9-4f19-866b-48dc2f5aaa95_106.jpg', 'Hương biển nam tính, mát lạnh.', '2025-05-29 14:40:36', '2025-05-29 14:40:36', 7),
(5545, 'Jo Malone Peony & Blush Suede 30ml', 1800000, '35fa0440-deed-4cc0-bf08-70092777f6ff_109.jpg', 'Hương hoa mẫu đơn sang trọng, dịu dàng.', '2025-05-29 14:40:36', '2025-05-29 14:40:36', 7),
(5546, 'Beauty Blender Original', 400000, '53a76527-9a4f-43a3-a371-0a811ab5b097_112.jpg', 'Mút tán nền chuyên nghiệp, mềm mịn.', '2025-05-29 14:41:07', '2025-05-29 14:41:07', 8),
(5547, 'Real Techniques Expert Face Brush', 280000, '0a4cebb3-1295-4430-a792-644902c75bd9_115.jpg', 'Cọ nền đa năng, phủ đều mịn.', '2025-05-29 14:41:07', '2025-05-29 14:41:07', 8),
(5548, 'Shu Uemura Eyelash Curler', 350000, '2c4204e1-6b20-4377-b80a-8e53f1ebc4d3_118.jpg', 'Bấm mi huyền thoại của Nhật Bản.', '2025-05-29 14:41:07', '2025-05-29 14:41:07', 8),
(5549, 'Vacosi Makeup Puff Set', 120000, '7d2eccbc-d1af-453c-863b-4d834030b5f6_121.jpg', 'Set mút trang điểm êm mịn.', '2025-05-29 14:41:07', '2025-05-29 14:41:07', 8),
(5550, 'Kềm Nghĩa Cắt Da', 95000, '20d372f2-03f5-4c87-8cc0-b886546db46a_124.jpg', 'Kềm cắt da tay chuyên dụng.', '2025-05-29 14:41:07', '2025-05-29 14:41:07', 8),
(5551, 'Foreo Luna Mini 2', 1990000, '0d5cb185-0783-4ab1-9917-1cbaa7e531fb_126.jpg', 'Máy rửa mặt công nghệ sóng âm.', '2025-05-29 14:41:07', '2025-05-29 14:41:07', 8),
(5552, 'Tangle Teezer Hair Brush', 250000, 'f010cf44-ac3f-4fed-9c4e-ad5c1f79c9fd_130.jpg', 'Lược chải tóc chống rối nổi tiếng.', '2025-05-29 14:41:07', '2025-05-29 14:41:07', 8),
(5553, 'Innisfree Eyebrow Razor', 75000, '05fb9363-2b57-4a95-a416-75355ea7081f_133.jpg', 'Dao cạo lông mày tiện lợi.', '2025-05-29 14:41:07', '2025-05-29 14:41:07', 8),
(5554, 'Miniso Compact Mirror', 45000, '7ad45254-0b83-471b-95ae-479a268f21c0_137.jpg', 'Gương trang điểm nhỏ gọn bỏ túi.', '2025-05-29 14:41:07', '2025-05-29 14:41:07', 8),
(5555, 'Etude House Eyelash Curler', 80000, '048b7acc-6db7-490e-92dd-f4cb3b882c3b_140.jpg', 'Bấm mi nhỏ gọn phù hợp mắt châu Á.', '2025-05-29 14:41:07', '2025-05-29 14:41:07', 8),
(5556, 'Anessa Perfect UV Sunscreen Aqua Booster', 520000, '60ba1dee-75d2-4e45-b88e-a250ab218a22_143.jpg', 'Chống nắng nổi tiếng từ Shiseido.', '2025-05-29 14:41:16', '2025-05-29 14:41:16', 9),
(5557, 'La Roche-Posay Anthelios XL SPF50+', 480000, 'fabadc44-60a3-4aa5-880b-7cd40ad4fb1b_146.jpg', 'Chống nắng lành tính cho da nhạy cảm.', '2025-05-29 14:41:16', '2025-05-29 14:41:16', 9),
(5558, 'Biore UV Aqua Rich Watery Essence SPF50+', 250000, '756408f7-b4ed-4479-a9b9-8d90be7c2eba_149.jpg', 'Kết cấu nhẹ, thấm nhanh.', '2025-05-29 14:41:16', '2025-05-29 14:41:16', 9),
(5559, 'Vichy Ideal Soleil SPF50', 450000, 'e4e942f6-7643-4351-856a-04b8b33b2152_151.jpg', 'Chống nắng dưỡng ẩm từ Pháp.', '2025-05-29 14:41:16', '2025-05-29 14:41:16', 9),
(5560, 'Eucerin Sun Gel-Cream Oil Control', 470000, '31578cb0-d6cc-4300-aa6b-ccb9667472ad_154.jpg', 'Kiểm soát dầu, phù hợp da dầu mụn.', '2025-05-29 14:41:16', '2025-05-29 14:41:16', 9),
(5561, 'Some By Mi Truecica Mineral 100 Calming Suncream', 320000, '658e1d6e-099f-451e-8e5d-98afef5b42ea_156.jpg', 'Chống nắng vật lý dịu nhẹ.', '2025-05-29 14:41:16', '2025-05-29 14:41:16', 9),
(5562, 'The Saem Eco Earth Power Pink SPF50+', 210000, 'cf91c4b9-f489-49b9-ac13-99c99c1a8320_158.jpg', 'Chống nắng tone-up nhẹ nhàng.', '2025-05-29 14:41:16', '2025-05-29 14:41:16', 9),
(5563, 'Skin1004 Madagascar Centella Air-Fit Suncream', 340000, 'ba1f57a2-2554-428a-bd35-2d7a13009bcf_161.jpg', 'Chiết xuất rau má làm dịu da.', '2025-05-29 14:41:16', '2025-05-29 14:41:16', 9),
(5564, 'Avene Very High Protection SPF50+', 520000, '66430731-7b2f-4157-9fae-d134210787fb_164.jpg', 'Chống nắng cho da nhạy cảm.', '2025-05-29 14:41:16', '2025-05-29 14:41:16', 9),
(5565, 'Sunplay Skin Aqua UV Super Moisture Gel', 270000, '94e4f735-08af-4983-8c08-4f8716d3b1ac_167.jpg', 'Chống nắng dưỡng ẩm dạng gel.', '2025-05-29 14:41:16', '2025-05-29 14:41:16', 9),
(5566, 'Bioderma Sensibio H2O 500ml', 360000, 'f96658bf-c709-4508-af6c-64a886ba8e5f_169.jpg', 'Nước tẩy trang dịu nhẹ cho da nhạy cảm.', '2025-05-29 14:42:31', '2025-05-29 14:42:31', 10),
(5567, 'Garnier Micellar Cleansing Water 400ml', 220000, 'd7eab993-0e59-470a-9c73-b2734d588245_173.jpg', 'Làm sạch và dịu nhẹ, không gây khô da.', '2025-05-29 14:42:31', '2025-05-29 14:42:31', 10),
(5568, 'Simple Micellar Cleansing Water 400ml', 190000, 'f5bd4a65-08e8-45a6-9628-a3bdb5a324aa_176.jpg', 'Tẩy trang không cồn, không hương liệu.', '2025-05-29 14:42:31', '2025-05-29 14:42:31', 10),
(5569, 'La Roche-Posay Micellar Water Ultra 400ml', 380000, '955389d1-d310-4d81-bb0e-473958133e4c_179.jpg', 'Làm sạch sâu, an toàn cho da.', '2025-05-29 14:42:31', '2025-05-29 14:42:31', 10),
(5570, 'Byphasse Solution Micellaire 500ml', 150000, 'db122667-1160-4087-beb4-83233947223d_181.jpg', 'Tẩy trang giá rẻ, dịu nhẹ cho da.', '2025-05-29 14:42:31', '2025-05-29 14:42:31', 10),
(5571, 'Nivea Micellar Water Pearl White 400ml', 170000, 'f0f76f86-5c00-473d-963b-8cf2580a3685_183.jpg', 'Tẩy trang dưỡng trắng da.', '2025-05-29 14:42:31', '2025-05-29 14:42:31', 10),
(5572, 'Evoluderm Eau Micellaire 500ml', 180000, '05c283f5-a94a-4a8f-a43e-a65626c32f4f_187.jpg', 'Tẩy trang đến từ Pháp, dịu nhẹ.', '2025-05-29 14:42:31', '2025-05-29 14:42:31', 10),
(5573, 'Innisfree Apple Seed Lip & Eye Remover', 160000, 'b640d23e-665c-4133-a713-c3c2b9c4c676_189.jpg', 'Tẩy trang mắt môi chiết xuất táo.', '2025-05-29 14:42:31', '2025-05-29 14:42:31', 10),
(5574, 'Senka All Clear Water Fresh 230ml', 120000, '87e4adb7-7566-4451-8829-ddc686c1c157_191.jpg', 'Làm sạch nhẹ nhàng, mát da.', '2025-05-29 14:42:31', '2025-05-29 14:42:31', 10),
(5575, 'Neutrogena Deep Clean Micellar Purifying Water', 250000, 'bf7c5a1c-e7a0-4751-8fc9-b0af30ca9689_193.jpg', 'Loại bỏ bã nhờn và cặn trang điểm.', '2025-05-29 14:42:31', '2025-05-29 14:42:31', 10),
(5576, 'Laneige Lip Sleeping Mask Berry 20g', 330000, 'e5b920f2-4e3c-4672-ba81-5acc62b073d3_196.jpg', 'Mặt nạ ngủ môi nổi tiếng.', '2025-05-29 14:42:41', '2025-05-29 14:42:41', 11),
(5577, 'Vaseline Lip Therapy Original 7g', 60000, 'e88a7880-20b8-486d-9d1a-e0a9d8fe0008_200.jpg', 'Dưỡng môi cơ bản, hiệu quả.', '2025-05-29 14:42:41', '2025-05-29 14:42:41', 11),
(5578, 'Burt\'s Bees Beeswax Lip Balm', 95000, '04b075a8-3d8a-4f59-bd0b-a9826dd53623_206.jpg', 'Son dưỡng từ sáp ong tự nhiên.', '2025-05-29 14:42:41', '2025-05-29 14:42:41', 11),
(5579, 'Nivea Lip Care Strawberry Shine', 75000, '20e7df67-7332-4fcc-91ff-baee556212c2_209.jpg', 'Dưỡng môi và tạo màu nhẹ.', '2025-05-29 14:42:41', '2025-05-29 14:42:41', 11),
(5580, 'DHC Lip Cream', 170000, '8976fbaf-68bc-4a21-b8c8-b37f249a7422_211.jpg', 'Son dưỡng môi Nhật Bản nổi tiếng.', '2025-05-29 14:42:41', '2025-05-29 14:42:41', 11),
(5581, 'Carmex Classic Lip Balm Tube', 95000, 'ce1d285c-17c4-41e5-aadf-1baed53a63ff_214.jpg', 'Son dưỡng môi giảm nứt nẻ, có bạc hà.', '2025-05-29 14:42:41', '2025-05-29 14:42:41', 11),
(5582, 'Aritaum Ginger Sugar Lip Mask', 160000, 'a8953f61-3f9b-4c0b-b298-298ad13890bf_217.jpg', 'Mặt nạ môi từ gừng và đường.', '2025-05-29 14:42:41', '2025-05-29 14:42:41', 11),
(5583, 'Innisfree Canola Honey Lip Balm', 120000, 'c557d19d-b690-498d-af8d-274295f519d6_221.jpg', 'Dưỡng môi từ mật ong canola.', '2025-05-29 14:42:41', '2025-05-29 14:42:41', 11),
(5584, 'EOS Smooth Sphere Lip Balm', 105000, 'ea7b85e5-5a93-4100-a8f6-53c5463261c7_224.jpg', 'Son dưỡng hình trứng dễ thương.', '2025-05-29 14:42:41', '2025-05-29 14:42:41', 11),
(5585, 'Mediheal Labocare Pantenolips', 110000, 'df820195-a9e3-4a9c-a961-10811dd90272_227.jpg', 'Dưỡng môi cấp ẩm mạnh.', '2025-05-29 14:42:41', '2025-05-29 14:42:41', 11),
(5586, 'Innisfree My Real Squeeze Mask Green Tea', 20000, 'abcd3987-37b4-40e8-9570-5c2b31acb14d_231.jpg', 'Mặt nạ dưỡng ẩm từ trà xanh.', '2025-05-29 14:42:51', '2025-05-29 14:42:51', 12),
(5587, 'Mediheal N.M.F Aquaring Ampoule Mask', 30000, '50f084d4-a047-41ff-a7f7-9af2b419db17_235.jpg', 'Cấp nước chuyên sâu cho da.', '2025-05-29 14:42:51', '2025-05-29 14:42:51', 12),
(5588, 'Naruko Tea Tree Shine Control Mask', 25000, 'b9fceece-d230-4878-bca3-820a25981ba2_238.jpg', 'Kiềm dầu, trị mụn hiệu quả.', '2025-05-29 14:42:51', '2025-05-29 14:42:51', 12),
(5589, 'Senka Perfect Aqua Rich Mask', 25000, '468f6e73-d4a3-46c4-8f67-c212f3240356_241.jpg', 'Dưỡng ẩm sâu, mềm da.', '2025-05-29 14:42:51', '2025-05-29 14:42:51', 12),
(5590, 'The Face Shop Real Nature Mask Aloe', 22000, '72677e67-735f-4b65-b7c7-9e2c83317b00_245.jpg', 'Mặt nạ lô hội làm dịu da.', '2025-05-29 14:42:51', '2025-05-29 14:42:51', 12),
(5591, 'Some By Mi Real Care Mask Tea Tree', 26000, '819e98e5-f3cd-416b-a6f9-9e88bd6f8d87_249.jpg', 'Dưỡng da mụn, giảm kích ứng.', '2025-05-29 14:42:51', '2025-05-29 14:42:51', 12),
(5592, 'Dr.Jart+ Dermask Water Jet Vital Hydra Solution', 70000, '4a8a6727-219e-420d-9f2c-b2248a0c7ed8_252.jpg', 'Dưỡng ẩm cao cấp cho da khô.', '2025-05-29 14:42:51', '2025-05-29 14:42:51', 12),
(5593, 'Lululun Face Mask Pink Moisturizing', 33000, '15b4ab09-955f-47da-8bad-7dbf729d44eb_255.jpg', 'Mặt nạ dưỡng ẩm Nhật Bản.', '2025-05-29 14:42:51', '2025-05-29 14:42:51', 12),
(5594, 'Banobagi Vita Genic Jelly Mask', 28000, 'c4560f62-041d-4008-877f-89f2d2e3a3ef_257.jpg', 'Cung cấp vitamin cho da.', '2025-05-29 14:42:51', '2025-05-29 14:42:51', 12),
(5595, 'Vedette Clay Facial Mask Olive Oil', 18000, '13d3d758-fb47-4910-bcf8-756306342b24_261.jpg', 'Mặt nạ đất sét dưỡng ẩm.', '2025-05-29 14:42:51', '2025-05-29 14:42:51', 12),
(5596, 'The Ordinary Niacinamide 10% + Zinc 1%', 280000, 'f5ddc2bd-b4a0-428e-babc-a56d3f382b7e_262.jpg', 'Giảm dầu, sáng da và mờ thâm.', '2025-05-29 14:43:09', '2025-05-29 14:43:09', 13),
(5597, 'Timeless Vitamin C + E + Ferulic Acid', 350000, '9e2d4726-ed08-4bea-ae63-f6ff59be09aa_266.jpg', 'Serum sáng da và chống lão hóa.', '2025-05-29 14:43:09', '2025-05-29 14:43:09', 13),
(5598, 'La Roche-Posay Hyalu B5 Serum', 650000, 'c4e595bb-9e25-42bf-87fd-d70cc7fb4096_269.jpg', 'Serum cấp ẩm chuyên sâu.', '2025-05-29 14:43:09', '2025-05-29 14:43:09', 13),
(5599, 'Kiehl\'s Clearly Corrective Dark Spot Solution', 1100000, 'cf272183-664f-441b-a71a-db988cc402a2_272.jpg', 'Mờ thâm, đều màu da.', '2025-05-29 14:43:09', '2025-05-29 14:43:09', 13),
(5600, 'Vichy Mineral 89', 450000, '01db914e-3a0e-4728-ae7c-5258e55f2435_276.jpg', 'Tăng cường độ ẩm và phục hồi da.', '2025-05-29 14:43:09', '2025-05-29 14:43:09', 13),
(5601, 'Paula’s Choice 10% Niacinamide Booster', 950000, '892a114d-9d01-4b54-a212-e26b903bba02_280.jpg', 'Cải thiện lỗ chân lông và thâm.', '2025-05-29 14:43:09', '2025-05-29 14:43:09', 13),
(5602, 'Estee Lauder Advanced Night Repair 20ml', 1250000, 'ef384365-7aa6-43c1-a192-6830f192d322_283.jpg', 'Chống lão hóa ban đêm.', '2025-05-29 14:43:09', '2025-05-29 14:43:09', 13),
(5603, 'L’Oreal Revitalift Hyaluronic Acid Serum', 420000, '52015e88-d56b-408a-9402-974359dfcde0_285.jpg', 'Cấp ẩm và làm đầy nếp nhăn.', '2025-05-29 14:43:09', '2025-05-29 14:43:09', 13),
(5604, 'Some By Mi AHA-BHA-PHA 30 Days Miracle Serum', 350000, 'c6928947-e7d4-450e-ba99-4f551cce622a_288.jpg', 'Dành cho da mụn và da dầu.', '2025-05-29 14:43:09', '2025-05-29 14:43:09', 13),
(5605, 'Innisfree Green Tea Seed Serum', 400000, '2e0f423a-68d0-466e-ad0a-be84cd7e1c57_291.jpg', 'Tinh chất trà xanh cấp nước.', '2025-05-29 14:43:09', '2025-05-29 14:43:09', 13),
(5606, 'CeraVe Moisturizing Cream 340g', 480000, '5ba5c3aa-f4d5-454f-8e1f-c9449d294827_294.jpg', 'Dưỡng ẩm phục hồi hàng rào da.', '2025-05-29 14:44:44', '2025-05-29 14:44:44', 14),
(5607, 'Neutrogena Hydro Boost Water Gel', 420000, '6e42db0d-791b-4d0b-b66e-053864db5939_296.jpg', 'Dưỡng ẩm nhẹ, không gây bí da.', '2025-05-29 14:44:44', '2025-05-29 14:44:44', 14),
(5608, 'Laneige Water Bank Blue Hyaluronic Cream', 690000, '5fb05e29-f599-4092-a10d-ea032fcdf977_301.jpg', 'Dưỡng ẩm sâu và mềm mịn.', '2025-05-29 14:44:44', '2025-05-29 14:44:44', 14),
(5609, 'La Roche-Posay Cicaplast Baume B5', 360000, '0833d403-0468-4b68-aade-50ce73b11ecf_304.jpg', 'Phục hồi da tổn thương, da nhạy cảm.', '2025-05-29 14:44:44', '2025-05-29 14:44:44', 14),
(5610, 'Clinique Moisture Surge 100H Auto-Replenishing Hydrator', 980000, 'd9d54d9f-51ff-423e-963c-386d7c3980c2_306.jpg', 'Cấp nước đến 100 giờ.', '2025-05-29 14:44:44', '2025-05-29 14:44:44', 14),
(5611, 'Vichy Aqualia Thermal Light Cream', 630000, '4562c571-0f2d-479a-bc1b-3bb63992ebfd_309.jpg', 'Dưỡng ẩm dịu nhẹ cho da thường.', '2025-05-29 14:44:44', '2025-05-29 14:44:44', 14),
(5612, 'The Body Shop Vitamin E Moisture Cream', 460000, '620c6e73-54d7-41a3-bcd3-969ef9e8dda0_311.jpg', 'Dưỡng ẩm với vitamin E tự nhiên.', '2025-05-29 14:44:44', '2025-05-29 14:44:44', 14),
(5613, 'Innisfree Green Tea Balancing Cream', 390000, '2fa3dd9c-6d0f-4908-b686-00dfdce5341e_313.jpg', 'Dưỡng da dầu mất nước.', '2025-05-29 14:44:44', '2025-05-29 14:44:44', 14),
(5614, 'Kiehl’s Ultra Facial Cream 50ml', 990000, 'b7aacca8-5512-46b6-a15a-181b98692090_316.jpg', 'Giữ ẩm nhẹ nhàng, không gây kích ứng.', '2025-05-29 14:44:44', '2025-05-29 14:44:44', 14),
(5615, 'Some By Mi Snail Truecica Miracle Repair Cream', 420000, 'f4d36aca-1608-4520-b85d-e9cebd4b9da5_320.jpg', 'Tái tạo da từ ốc sên đen.', '2025-05-29 14:44:44', '2025-05-29 14:44:44', 14),
(5616, 'Senka Perfect Whip 120g', 95000, 'd6139f30-37e6-4c1e-bf44-80e9610fdbce_322.jpg', 'Bọt rửa mặt tạo nhiều bọt, sạch sâu.', '2025-05-29 14:44:53', '2025-05-29 14:44:53', 15),
(5617, 'La Roche-Posay Effaclar Purifying Foaming Gel', 350000, '6158fac1-673a-41d7-be47-12caf248ef5c_325.jpg', 'Sữa rửa mặt dịu nhẹ cho da dầu mụn.', '2025-05-29 14:44:53', '2025-05-29 14:44:53', 15),
(5618, 'CeraVe Foaming Cleanser 473ml', 480000, 'ef7e05fb-f667-40f5-814f-eb537d178963_328.jpg', 'Làm sạch sâu nhưng vẫn dịu nhẹ.', '2025-05-29 14:44:53', '2025-05-29 14:44:53', 15),
(5619, 'Simple Refreshing Facial Wash', 120000, '608a0da1-77e0-4560-9e70-08172847db59_331.jpg', 'Sữa rửa mặt không hương liệu, lành tính.', '2025-05-29 14:44:53', '2025-05-29 14:44:53', 15),
(5620, 'Cetaphil Gentle Skin Cleanser 500ml', 430000, 'c5e0a846-10f8-4db0-8a66-bfebf45e6230_334.jpg', 'Rửa mặt dịu nhẹ cho da khô, nhạy cảm.', '2025-05-29 14:44:53', '2025-05-29 14:44:53', 15),
(5621, 'Innisfree Green Tea Foam Cleanser', 200000, '97402346-8b6f-4aca-b89c-9685900ab3e6_337.jpg', 'Chiết xuất trà xanh giúp làm sạch da.', '2025-05-29 14:44:53', '2025-05-29 14:44:53', 15),
(5622, 'Some By Mi AHA-BHA-PHA 30 Days Miracle Acne Clear Foam', 220000, 'b9e6ad01-d9c4-41fd-9739-00fc9a55675d_340.jpg', 'Làm sạch mụn, tẩy tế bào chết nhẹ.', '2025-05-29 14:44:53', '2025-05-29 14:44:53', 15),
(5623, 'Neutrogena Deep Clean Facial Cleanser', 230000, '8d7b214c-c256-47bd-ba7e-7fbd855005ac_343.jpg', 'Rửa sạch nhờn, làm thông thoáng lỗ chân lông.', '2025-05-29 14:44:53', '2025-05-29 14:44:53', 15),
(5624, 'Vichy Normaderm Phytosolution Gel Cleanser', 480000, 'e9c622a4-8c0b-47b4-b55a-f94dce28fd5b_345.jpg', 'Làm sạch sâu, giảm mụn.', '2025-05-29 14:44:53', '2025-05-29 14:44:53', 15),
(5625, 'The Face Shop Rice Water Bright Cleansing Foam', 170000, '2ee1f438-42c6-409c-8330-297432774851_348.jpg', 'Làm sáng và mềm da từ nước gạo.', '2025-05-29 14:44:53', '2025-05-29 14:44:53', 15),
(5626, 'Thayers Witch Hazel Toner Rose Petal 355ml', 280000, '5980c017-a4d3-49a7-ac71-52ecb866507a_351.jpg', 'Cân bằng da, se khít lỗ chân lông.', '2025-05-29 14:45:02', '2025-05-29 14:45:02', 16),
(5627, 'Simple Soothing Facial Toner', 150000, '36f851a1-ff96-458d-bd8c-92a37d118b5f_354.jpg', 'Không cồn, dịu nhẹ cho da nhạy cảm.', '2025-05-29 14:45:02', '2025-05-29 14:45:02', 16),
(5628, 'Kiehl’s Calendula Herbal Extract Toner', 1050000, 'd985d825-4b63-4fcb-89be-37c1a61cc416_356.jpg', 'Chiết xuất hoa cúc, làm dịu da.', '2025-05-29 14:45:02', '2025-05-29 14:45:02', 16),
(5629, 'The Ordinary Glycolic Acid 7% Toning Solution', 330000, '4bad77b8-53ab-4d6e-863c-cf185d68e9aa_359.jpg', 'Tẩy tế bào chết hóa học dịu nhẹ.', '2025-05-29 14:45:02', '2025-05-29 14:45:02', 16),
(5630, 'La Roche-Posay Effaclar Astringent Lotion', 360000, 'caa2baac-313d-4ecc-8cf0-6f436cf0bc7a_362.jpg', 'Toner se khít lỗ chân lông.', '2025-05-29 14:45:02', '2025-05-29 14:45:02', 16),
(5631, 'Mamonde Rose Water Toner 250ml', 250000, 'bf655f7c-0c4b-41d3-9cc0-fbf6d2cbcf79_364.jpg', 'Cân bằng độ ẩm và làm mềm da.', '2025-05-29 14:45:02', '2025-05-29 14:45:02', 16),
(5632, 'Paula\'s Choice Skin Perfecting 2% BHA Liquid', 820000, '2dea6d31-f6ac-4a43-a120-95328eaf6e1c_368.jpg', 'Loại bỏ tế bào chết và sạch mụn đầu đen.', '2025-05-29 14:45:02', '2025-05-29 14:45:02', 16),
(5633, 'Hada Labo Gokujyun Lotion Moist', 270000, '957516c1-7a74-435f-a687-9f7529ba53db_373.jpg', 'Cấp ẩm sâu với Hyaluronic Acid.', '2025-05-29 14:45:02', '2025-05-29 14:45:02', 16),
(5634, 'Some By Mi Galactomyces Pure Vitamin C Glow Toner', 390000, '997d244a-11cd-4a09-9128-1449c2d7d779_376.jpg', 'Sáng da, mờ thâm.', '2025-05-29 14:45:02', '2025-05-29 14:45:02', 16),
(5635, 'Cosrx AHA/BHA Clarifying Treatment Toner', 350000, '58427ada-dae7-4b0b-a6b6-0a4797b9cefd_379.jpg', 'Chống mụn và làm sạch lỗ chân lông.', '2025-05-29 14:45:02', '2025-05-29 14:45:02', 16),
(5636, 'Kiehl’s Creamy Eye Treatment with Avocado', 920000, 'e7d0a5e6-74b6-4bba-8693-45cae1dcfbd2_382.jpg', 'Dưỡng mắt chiết xuất bơ giàu ẩm.', '2025-05-29 14:45:12', '2025-05-29 14:45:12', 17),
(5637, 'Innisfree Jeju Orchid Eye Cream', 390000, '7d27d733-9afa-4e21-9405-12b832470ea8_386.jpg', 'Giảm nhăn, tăng đàn hồi vùng mắt.', '2025-05-29 14:45:12', '2025-05-29 14:45:12', 17),
(5638, 'The Ordinary Caffeine Solution 5% + EGCG', 320000, '4b8cff2e-2419-41b5-9a3b-75fd98a6bfda_389.jpg', 'Giảm bọng mắt và quầng thâm.', '2025-05-29 14:45:12', '2025-05-29 14:45:12', 17),
(5639, 'Laneige Perfect Renew Youth Eye Cream', 990000, 'fd1232be-f194-40ab-a27b-1b329f93fddc_392.jpg', 'Trẻ hóa vùng da quanh mắt.', '2025-05-29 14:45:12', '2025-05-29 14:45:12', 17),
(5640, 'Estee Lauder Advanced Night Repair Eye Supercharged Gel-Creme', 1600000, '710e151c-0b55-414c-80f5-d8b85f1a693e_396.jpg', 'Phục hồi da mắt, chống lão hóa.', '2025-05-29 14:45:12', '2025-05-29 14:45:12', 17),
(5641, 'La Roche-Posay Pigmentclar Eye Cream', 680000, 'c1dd2d8f-ff63-4e1b-b5a4-0db4a1f412fa_401.jpg', 'Làm sáng vùng quầng thâm.', '2025-05-29 14:45:12', '2025-05-29 14:45:12', 17),
(5642, 'Vichy Mineral 89 Eyes', 530000, '45eeb85b-09ab-44d3-98cf-0071b1c091be_404.jpg', 'Cấp ẩm và làm dịu da mắt.', '2025-05-29 14:45:12', '2025-05-29 14:45:12', 17),
(5643, 'Benton Fermentation Eye Cream', 420000, 'b6e95190-5ff1-4c8e-8fa8-315905b53890_407.jpg', 'Chống lão hóa và nuôi dưỡng da vùng mắt.', '2025-05-29 14:45:12', '2025-05-29 14:45:12', 17),
(5644, 'Meishoku Whitening Eye Cream', 240000, 'f2113796-9b11-4281-84a6-808d9a3191ba_411.jpg', 'Trị thâm mắt và làm sáng da.', '2025-05-29 14:45:12', '2025-05-29 14:45:12', 17),
(5645, 'Olay Eyes Ultimate Eye Cream', 650000, '342b6ae1-821d-421e-a4a0-6a2626e9a97f_414.jpg', 'Chống nhăn và làm đều màu da quanh mắt.', '2025-05-29 14:45:12', '2025-05-29 14:45:12', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image_url` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES
(1, 5516, 'bf6a658f-5cc4-4347-9a0b-b1c58e09abd9_001.jpg'),
(2, 5516, 'f5248ebb-8895-4729-9d21-8b0c72a4645a_002.jpg'),
(3, 5516, '0d80643c-2394-4ef6-bab2-7d4e0deb25d6_003.jpg'),
(4, 5516, 'a1562504-08f3-4275-b7d8-1a3c6c76d557_004.jpg'),
(5, 5517, '1d1daae4-2a90-4569-93b6-530554146cbf_005.jpg'),
(6, 5517, '03541f38-cd69-4419-9b0d-7222e572c14e_006.jpg'),
(7, 5517, 'aaeddf4b-48ed-4f0e-b929-aca1462bcaed_007.jpg'),
(8, 5517, '042446f3-0044-45b9-9dfc-e91e36579f35_008.jpg'),
(9, 5518, '2fbaa937-6b8b-464c-89bd-ea5cef5dc580_009.jpg'),
(10, 5518, 'eae4d493-6fbb-4565-85e4-9826cf8bfeb4_010.jpg'),
(11, 5518, '589bffb0-85ee-4554-9457-30f11ee2bc79_011.jpg'),
(12, 5518, '8dff9057-bbe6-4865-8d04-b73fdc1664a1_012.jpg'),
(13, 5519, '0d4d72fb-f64f-4cbe-aeb0-f5dcd6b48889_013.jpg'),
(14, 5519, '7eb61416-b4cb-4482-ba49-deb019491b47_014.jpg'),
(15, 5519, 'a062413c-481b-412d-8dff-3db96b2afd9b_015.jpg'),
(16, 5519, '106ed1f6-3e33-4ec2-adc0-a7540a34803d_016.jpg'),
(17, 5519, 'b342ee93-9a99-497c-9fd0-402a758b8aae_017.jpg'),
(18, 5520, '95c31b9e-06f5-4723-81c0-302fc0de3997_018.jpg'),
(19, 5520, 'b7ca532c-94fe-42ff-be47-a8d8d56e0e02_019.jpg'),
(20, 5520, '00ba3cc3-4c5a-4d70-b831-60cfcbc42306_020.jpg'),
(21, 5520, 'f6a802d5-3064-4e78-a05a-4824ddec46d6_021.jpg'),
(22, 5521, '1c3b906d-2b56-4209-8104-80ad23c673f5_022.jpg'),
(23, 5521, 'fdca7345-0e46-46dd-aec8-e804a7d6a951_023.jpg'),
(24, 5521, '9ab56014-637a-4061-a972-9e16ea320f53_024.jpg'),
(25, 5521, 'aec99985-7480-42b2-aa14-c3b86d12ac10_025.jpg'),
(26, 5522, 'a03909fa-d127-4418-9549-04762562ca19_026.jpg'),
(27, 5522, '011d212b-a8e3-4236-8a08-9b0e58e5d8db_027.jpg'),
(28, 5522, '0e1d394a-2980-403e-99f1-c8ff1149aaac_028.jpg'),
(29, 5522, 'a7959777-b0ae-4c8e-bf0a-5b840dc9d776_029.jpg'),
(30, 5522, '49c65250-ef87-432e-8e9a-e97671d76c62_030.jpg'),
(31, 5523, '50de33eb-b14c-42a4-acab-706fab849c5e_032.jpg'),
(32, 5523, '8412de10-8f52-457a-9149-a30fc3cdd4c7_033.jpg'),
(33, 5523, '59c6b127-7ce3-426a-b84f-dbce0e44188f_034.jpg'),
(34, 5523, '5f09b18d-58f3-40e2-ac14-867fc5487a55_035.jpg'),
(35, 5524, '609835dd-3eee-43db-9c3d-8e75a9195e0e_036.jpg'),
(36, 5524, 'b1b528e6-ae1d-4fbb-a559-f109ebc1acd4_037.jpg'),
(37, 5524, '5cb0a740-c31b-412d-b115-b4f245878cf3_038.jpg'),
(38, 5524, '1227b266-01e0-4769-ab30-f35adaa56849_039.jpg'),
(39, 5525, '46f9f84d-3b9e-4455-a4f8-70c99125bfaf_040.jpg'),
(40, 5525, '0bd3b77a-fd48-469c-918c-8922cb63ef46_041.jpg'),
(41, 5525, '2e40fcc0-340f-4652-8031-4382c5683016_042.jpg'),
(42, 5526, '83e655a6-2a20-4e9c-a0b8-6161f933d771_043.jpg'),
(43, 5526, '1594830b-34d6-4299-9189-cd6bcb8e258b_044.jpg'),
(44, 5526, 'c9c6c931-d55f-4764-a178-b2966e9bfb0d_045.jpg'),
(45, 5526, '587ca2c1-0f93-440f-a6d2-c9f36e7bc1d2_046.jpg'),
(46, 5527, '318f360d-24bc-40d3-977b-5f61af8d965c_047.jpg'),
(47, 5527, '215d5076-c33d-444c-a1ac-42368498dd37_048.jpg'),
(48, 5527, '0580d62b-2b0b-477e-ba31-fa24af4c39f2_049.jpg'),
(49, 5527, 'ee0ce923-e71a-4dae-9bfd-aeb657bd6180_050.jpg'),
(50, 5528, '994d695f-9e1d-457a-804b-8fed833455eb_051.jpg'),
(51, 5528, '114e27b5-d254-42f3-bf70-608a5e908081_052.jpg'),
(52, 5529, '164c37bb-e0b2-4b2f-a06f-f623184203b6_053.jpg'),
(53, 5529, 'e243875f-9eb7-47bf-8572-46270e323595_054.jpg'),
(54, 5529, '2c49ded8-05a2-471e-baa2-9e88c71cfa2e_055.jpg'),
(55, 5530, '98953ee7-2c41-4fda-ad63-b138e69762b1_056.jpg'),
(56, 5531, 'ea92e05b-7d90-4f39-944e-d129591479b0_057.jpg'),
(57, 5531, 'f893f825-3174-4da9-b378-eee3071869e7_058.jpg'),
(58, 5532, '73a61973-894f-4acc-8370-5e043178a855_063.jpg'),
(59, 5532, 'eedef772-c112-4404-bbaa-6442dd0872a1_064.jpg'),
(60, 5532, '4f4d1ab2-6961-429b-b623-c7f09f8cff47_065.jpg'),
(61, 5532, 'b4c8c00a-1823-4d7b-8d98-ed55f566ba8c_066.jpg'),
(62, 5533, 'acf5007e-2697-4c8b-b824-e5320791991a_067.jpg'),
(63, 5533, '67d4863b-cd43-4ade-8fb1-92249d2a57a6_068.jpg'),
(64, 5533, 'dbcedb48-c18f-4d0e-a08e-74bb7fb250c3_069.jpg'),
(65, 5534, 'be2ea9e8-9508-4a68-8549-3499b2f6864d_070.jpg'),
(66, 5534, '7a9434be-47d9-4136-830e-f589351ec7dc_071.jpg'),
(67, 5534, '5225ac81-98ce-4fb2-88a8-883179dc0252_072.jpg'),
(68, 5535, '4ea1b92e-aa2c-4eb2-b0b2-f10f121dda2e_073.jpg'),
(69, 5535, 'efa87aba-005b-4fd0-b3c9-7df52e529277_074.jpg'),
(70, 5535, 'b136506a-7751-4255-9393-d2a9a1f3ef9c_075.jpg'),
(71, 5535, 'b272fdbb-aab6-42b4-84a4-7e8af1caa747_076.jpg'),
(72, 5536, '9fd32a8d-9dd3-49dd-bc07-e6e7c4dbfe97_077.jpg'),
(73, 5536, 'b55ef423-995f-4fe9-8a9f-ce1c250ebb69_078.jpg'),
(74, 5536, 'ad2c5e58-7065-44a1-8cfa-b5fc511a2bc4_079.jpg'),
(75, 5537, 'e5a181d3-1367-4e31-8e86-f3c6bac3d263_080.jpg'),
(76, 5537, 'ad92fda7-b646-4000-a5d8-1209b47b6a62_081.jpg'),
(77, 5537, '558b3e71-d18d-4cba-965d-c58243aab09e_082.jpg'),
(78, 5537, '34982261-4592-4766-9420-011ae13ef373_083.jpg'),
(79, 5537, 'b217f06f-7c0b-4357-a05c-cd51583bfb45_084.jpg'),
(80, 5538, '8eb5ded9-447c-4823-afee-6fc4f33e5c1a_085.jpg'),
(81, 5538, '0010821a-ccd5-4ebf-93e8-5b877e3fcec1_086.jpg'),
(82, 5538, '202e0f3f-e279-4e69-bfec-a4bab189ecba_087.jpg'),
(83, 5538, 'c76a3cf0-2d31-41ce-b538-9be439ca26f0_088.jpg'),
(84, 5539, '488198ab-1dc1-4648-bb1b-fbfeb3d9d7c8_089.jpg'),
(85, 5539, '21c824ae-5a54-42fc-97e4-e81acaae25e7_090.jpg'),
(86, 5539, '5f2212a5-6c49-4e64-8bd5-6fee652f88e7_091.jpg'),
(87, 5540, '69fda10b-1663-407c-8c1f-9f2ea0a340d0_092.jpg'),
(88, 5540, '0e6ba4de-353d-4d25-b567-bb257b1cade9_093.jpg'),
(89, 5540, '13b2a26d-1059-461b-a8da-2ad4e63a83ff_094.jpg'),
(90, 5541, '75dbd691-a3cb-4384-bcbe-a71c4c596ba7_095.jpg'),
(91, 5541, '09aeecfa-3c9d-4811-9379-18db71c5e045_096.jpg'),
(92, 5541, 'b11d709d-0c79-4c71-b4c3-502a96e4a3d7_097.jpg'),
(93, 5542, 'ddad8e56-1668-4e1e-9a45-4a865077b5e0_098.jpg'),
(94, 5542, '98f411ec-76ba-458e-bc01-490dee083c15_099.jpg'),
(95, 5542, '07c0e7d4-b228-431b-ab82-eecbc8c7f3b1_100.jpg'),
(96, 5542, 'ca744e78-faac-4056-9be0-6958d840a8c4_101.jpg'),
(97, 5543, '5642163a-791b-494b-b79a-c625f392dfe1_102.jpg'),
(98, 5543, '8bf415f1-7ed3-4325-9229-dd9a23511091_103.jpg'),
(99, 5543, '9b74013a-9293-4b13-86c1-4282acd78b72_104.jpg'),
(100, 5543, '10283000-6eb0-4b1c-9447-c0d484660d60_105.jpg'),
(101, 5544, '6b6a8800-f0e9-4f19-866b-48dc2f5aaa95_106.jpg'),
(102, 5544, '52dca395-115a-4618-8091-d1c66e003e8d_107.jpg'),
(103, 5544, '54e79525-ba2c-42a0-9f79-bd7acdf3e015_108.jpg'),
(104, 5545, '35fa0440-deed-4cc0-bf08-70092777f6ff_109.jpg'),
(105, 5545, '8e44aed8-45d6-49e5-9462-7cc42fe7fac3_110.jpg'),
(106, 5545, '3e5350b4-2736-4621-b758-09af6174ee82_111.jpg'),
(107, 5546, '53a76527-9a4f-43a3-a371-0a811ab5b097_112.jpg'),
(108, 5546, '07bc15be-5e09-431a-97e1-99a4510ee272_113.jpg'),
(109, 5546, 'e470bed9-bbd7-4c72-9cac-685f0a2a18ff_114.jpg'),
(110, 5547, '0a4cebb3-1295-4430-a792-644902c75bd9_115.jpg'),
(111, 5547, '9bef8cc3-82c3-4e8d-a602-4b79c930f77a_116.jpg'),
(112, 5547, '472db5b3-687a-4e5e-b9e1-d84d4cc0a485_117.jpg'),
(113, 5548, '2c4204e1-6b20-4377-b80a-8e53f1ebc4d3_118.jpg'),
(114, 5548, '3356b317-00dd-4bf3-a2c1-c7583aef390b_119.jpg'),
(115, 5548, '8cd69588-bf1e-4049-aa15-08066dd9b55f_120.jpg'),
(116, 5549, '7d2eccbc-d1af-453c-863b-4d834030b5f6_121.jpg'),
(117, 5549, '155c1c7c-127f-488f-8b24-8de9c9425450_122.jpg'),
(118, 5549, 'c6e4828d-3f1f-4ffc-8de8-0ff046d2bd6e_123.jpg'),
(119, 5550, '20d372f2-03f5-4c87-8cc0-b886546db46a_124.jpg'),
(120, 5550, 'c903bc1e-ef53-4517-b364-d1d95ac0cf5c_125.jpg'),
(121, 5551, '0d5cb185-0783-4ab1-9917-1cbaa7e531fb_126.jpg'),
(122, 5551, 'd343188e-2fc9-485c-96ab-3b6e5151d7b7_127.jpg'),
(123, 5551, 'ee6a5142-540c-45a1-9eb6-5d5c0d57d2b2_128.jpg'),
(124, 5552, 'f010cf44-ac3f-4fed-9c4e-ad5c1f79c9fd_130.jpg'),
(125, 5552, 'bb010017-e5ec-43a2-8e7c-503ebaad260c_131.jpg'),
(126, 5552, 'e7ce3213-c9f5-4f6f-b699-468ae274b743_132.jpg'),
(127, 5553, '05fb9363-2b57-4a95-a416-75355ea7081f_133.jpg'),
(128, 5553, 'cd780ed4-0e5e-419b-a9c3-9fc9631e7495_134.jpg'),
(129, 5553, '7eeef4cd-f7ba-4663-ada7-a5be5a140876_135.jpg'),
(130, 5553, '54b30bcc-9565-49bf-b7e2-d7b3e43072b9_136.jpg'),
(131, 5554, '7ad45254-0b83-471b-95ae-479a268f21c0_137.jpg'),
(132, 5554, 'c68cdbd1-d982-4a78-9e3f-295bb1047c3c_138.jpg'),
(133, 5554, '2c9f7399-2a07-4005-bd62-504491f4fd70_139.jpg'),
(134, 5555, '048b7acc-6db7-490e-92dd-f4cb3b882c3b_140.jpg'),
(135, 5555, '913e9a99-fa3d-43fe-97cb-6bde6c368bf0_141.jpg'),
(136, 5555, '82979f30-5b35-4cbb-b6c5-dda20eae0343_142.jpg'),
(137, 5556, '60ba1dee-75d2-4e45-b88e-a250ab218a22_143.jpg'),
(138, 5556, '56c5e41b-2d51-497d-9936-3ffa02b4555e_144.jpg'),
(139, 5556, 'd6b7eba4-e038-40f5-a988-6e5955fcd61d_145.jpg'),
(140, 5557, 'fabadc44-60a3-4aa5-880b-7cd40ad4fb1b_146.jpg'),
(141, 5557, '5f9ec77f-4508-4e2a-be0f-33f428d9486c_147.jpg'),
(142, 5558, '756408f7-b4ed-4479-a9b9-8d90be7c2eba_149.jpg'),
(143, 5558, '3047da60-4ed8-477b-af2c-ff1496bd829a_150.jpg'),
(144, 5559, 'e4e942f6-7643-4351-856a-04b8b33b2152_151.jpg'),
(145, 5559, 'f3a2c931-3e2f-4fd3-b037-644dadab50c2_152.jpg'),
(146, 5559, 'fe54aa31-0659-493e-908e-8a583b78f01c_153.jpg'),
(147, 5560, '31578cb0-d6cc-4300-aa6b-ccb9667472ad_154.jpg'),
(148, 5560, '7207b92e-6d89-447d-8e3a-4ed1fdb0b610_155.jpg'),
(149, 5561, '658e1d6e-099f-451e-8e5d-98afef5b42ea_156.jpg'),
(150, 5561, '3d8e71ed-085d-408b-afd3-5b4010b0eead_157.jpg'),
(151, 5562, 'cf91c4b9-f489-49b9-ac13-99c99c1a8320_158.jpg'),
(152, 5562, '6efacf43-606f-4580-bb0c-d89f239dad00_159.jpg'),
(153, 5562, '666f87c7-2303-42ed-9915-6224d0c6afcf_160.jpg'),
(154, 5563, 'ba1f57a2-2554-428a-bd35-2d7a13009bcf_161.jpg'),
(155, 5563, '1c2d139b-6c99-4b50-af80-95f76c24a30a_162.jpg'),
(156, 5563, '814e57d0-995d-43f1-8d0b-f0b57fccd91a_163.jpg'),
(157, 5564, '66430731-7b2f-4157-9fae-d134210787fb_164.jpg'),
(158, 5564, '5c58ac23-2531-463d-a5b1-0c38fda9374b_165.jpg'),
(159, 5564, '133fcaef-73de-45fb-adf8-c1b35254f5f0_166.jpg'),
(160, 5565, '94e4f735-08af-4983-8c08-4f8716d3b1ac_167.jpg'),
(161, 5565, '9576c4a0-7699-46a7-83ef-3455ae5fb749_168.jpg'),
(162, 5566, 'f96658bf-c709-4508-af6c-64a886ba8e5f_169.jpg'),
(163, 5566, 'cd8b7de2-1d08-4d06-8005-c6507f6d4624_170.jpg'),
(164, 5566, '386db404-25e4-4f6b-8ca7-e04079f8ed5d_171.jpg'),
(165, 5566, '7880c8d2-56df-4b83-9e18-fb97bed32c49_172.jpg'),
(166, 5567, 'd7eab993-0e59-470a-9c73-b2734d588245_173.jpg'),
(167, 5567, '530de67c-ed86-4d19-a9d5-1112d83238b0_174.jpg'),
(168, 5567, '6e6da0fc-a0d3-445e-921d-da19b40fecfa_175.jpg'),
(169, 5568, 'f5bd4a65-08e8-45a6-9628-a3bdb5a324aa_176.jpg'),
(170, 5568, 'f48974ce-c4aa-4092-9840-1fb8d4ae5b39_177.jpg'),
(171, 5568, '8792aba9-9a68-4d99-8ab8-1abe8eb62cd4_178.jpg'),
(172, 5569, '955389d1-d310-4d81-bb0e-473958133e4c_179.jpg'),
(173, 5569, '46ac15bc-74eb-4c4d-895d-a541d89f920c_180.jpg'),
(174, 5570, 'db122667-1160-4087-beb4-83233947223d_181.jpg'),
(175, 5570, '05f3b5f7-1c7a-420f-aa5f-ecd722bebd4a_182.jpg'),
(176, 5571, 'f0f76f86-5c00-473d-963b-8cf2580a3685_183.jpg'),
(177, 5571, 'c55b48ae-01fd-416c-80ae-cd9093d1b711_184.jpg'),
(178, 5571, '584a4ec6-6a43-4fd1-88a2-6fc690f8b852_185.jpg'),
(179, 5571, 'a0575bb6-67d5-48bf-8eac-ec8f0e722a9a_186.jpg'),
(180, 5572, '05c283f5-a94a-4a8f-a43e-a65626c32f4f_187.jpg'),
(181, 5572, 'd0247791-a3a4-49ea-97d5-754c6ccc0b9b_188.jpg'),
(182, 5573, 'b640d23e-665c-4133-a713-c3c2b9c4c676_189.jpg'),
(183, 5573, '4f96b814-0681-4957-b11c-e8fb954fcb0d_190.jpg'),
(184, 5574, '87e4adb7-7566-4451-8829-ddc686c1c157_191.jpg'),
(185, 5574, '24d7e508-3bd1-412e-bb59-c12af91cf2fa_192.jpg'),
(186, 5575, 'bf7c5a1c-e7a0-4751-8fc9-b0af30ca9689_193.jpg'),
(187, 5575, '4f4bfdfb-0287-47f4-809d-1980ca9d802d_194.jpg'),
(188, 5575, '321dea41-f700-4f2b-b512-0f90df8e84de_195.jpg'),
(189, 5576, 'e5b920f2-4e3c-4672-ba81-5acc62b073d3_196.jpg'),
(190, 5576, '728fff13-c6fd-4cb9-9d7e-5b0a35acf8f8_197.jpg'),
(191, 5576, 'cd9a61bb-81d8-44ba-8576-d165f0602876_198.jpg'),
(192, 5576, 'aec44ef8-1d46-416e-a827-ed674839fc1c_199.jpg'),
(193, 5577, 'e88a7880-20b8-486d-9d1a-e0a9d8fe0008_200.jpg'),
(194, 5577, '6583857a-f753-4221-9f57-4b54ace940b5_201.jpg'),
(195, 5577, '6bdb0063-853e-458e-8424-ad4c20e1db72_202.jpg'),
(196, 5577, '7de806ff-148e-4f84-8889-063bb92f4b0a_204.jpg'),
(197, 5577, '596a466d-6b79-47be-9d1b-f04b6327154b_205.jpg'),
(198, 5578, '04b075a8-3d8a-4f59-bd0b-a9826dd53623_206.jpg'),
(199, 5578, '11e28f80-01ad-4956-90a2-096ab6c4d4a1_207.jpg'),
(200, 5578, '6ee3f910-3e6a-4d55-8209-65dd02c98912_208.jpg'),
(201, 5579, '20e7df67-7332-4fcc-91ff-baee556212c2_209.jpg'),
(202, 5579, 'b9ff58d6-ca24-4049-910a-61d3bf1c46c1_210.jpg'),
(203, 5580, '8976fbaf-68bc-4a21-b8c8-b37f249a7422_211.jpg'),
(204, 5580, '8943ed3a-a491-4308-ade8-44b23cddebb7_212.jpg'),
(205, 5580, 'fac8c8ff-977f-4077-8d86-18e649cd87b7_213.jpg'),
(206, 5581, 'ce1d285c-17c4-41e5-aadf-1baed53a63ff_214.jpg'),
(207, 5581, '05cc9817-6cd0-471e-9d5a-372b6bb1b0bb_215.jpg'),
(208, 5581, '281ac526-255f-41d5-971b-c9621b042665_216.jpg'),
(209, 5582, 'a8953f61-3f9b-4c0b-b298-298ad13890bf_217.jpg'),
(210, 5582, '354bc382-a725-4348-b251-18d2fff43907_218.jpg'),
(211, 5582, '18507983-dec3-45fb-80a6-da435b63e4f5_219.jpg'),
(212, 5582, 'ad35b781-a4e2-4906-8022-aa6aab36a0b8_220.jpg'),
(213, 5583, 'c557d19d-b690-498d-af8d-274295f519d6_221.jpg'),
(214, 5583, '9f598242-50b1-4be3-b64b-2838fde6b60a_222.jpg'),
(215, 5583, '19518504-6e11-4322-b09b-f26b21514e5f_223.jpg'),
(216, 5584, 'ea7b85e5-5a93-4100-a8f6-53c5463261c7_224.jpg'),
(217, 5584, '84ebc40e-a441-46c4-82f8-fd2fc69a256e_225.jpg'),
(218, 5584, 'a6639d90-6273-4791-8046-35d77f35be85_226.jpg'),
(219, 5585, 'df820195-a9e3-4a9c-a961-10811dd90272_227.jpg'),
(220, 5585, '602766d8-354c-4e5e-9e89-c8a8b5ceafaa_228.jpg'),
(221, 5585, '0a2c6de7-0bbe-41cc-8239-9543b09a62af_229.jpg'),
(222, 5585, '4f1ddf0a-5f07-45f1-90b1-6e8d9308fc62_230.jpg'),
(223, 5586, 'abcd3987-37b4-40e8-9570-5c2b31acb14d_231.jpg'),
(224, 5586, '1a78b2b9-2346-4615-95cc-3160be5e0b6e_232.jpg'),
(225, 5586, 'de286a71-130b-4101-ad41-26ef27f65f7b_233.jpg'),
(226, 5586, '1a5dc23e-9ffe-43fc-87b4-52a004740ab5_234.jpg'),
(227, 5587, '50f084d4-a047-41ff-a7f7-9af2b419db17_235.jpg'),
(228, 5587, 'af998896-e891-4381-b949-631011f070c6_236.jpg'),
(229, 5587, '730db795-46b5-4a1e-899a-db0bb2fc1347_237.jpg'),
(230, 5588, 'b9fceece-d230-4878-bca3-820a25981ba2_238.jpg'),
(231, 5588, 'bc016526-513a-4e7a-b648-f58c81d8fe2d_239.jpg'),
(232, 5588, '076c8f4b-1b0e-4baa-b6cf-0ebe00d04476_240.jpg'),
(233, 5589, '468f6e73-d4a3-46c4-8f67-c212f3240356_241.jpg'),
(234, 5589, 'ed9fb53e-3df9-496f-bbeb-6cbe8a903dad_242.jpg'),
(235, 5589, '2b27f8f7-ae26-41da-a621-b345440b5c89_244.jpg'),
(236, 5590, '72677e67-735f-4b65-b7c7-9e2c83317b00_245.jpg'),
(237, 5590, 'edaa43a3-5d5d-45d1-a03b-e2ad4119d64c_246.jpg'),
(238, 5590, '3df0999e-b259-4974-a264-d920b46acb44_247.jpg'),
(239, 5590, 'e42af0eb-3af2-4529-9f9f-1385325db79e_248.jpg'),
(240, 5591, '819e98e5-f3cd-416b-a6f9-9e88bd6f8d87_249.jpg'),
(241, 5591, '3bc2ce89-961f-4e38-b054-01cbc546509a_250.jpg'),
(242, 5591, '768163b9-d48c-4c3b-b4b3-6cc66ca4141f_251.jpg'),
(243, 5592, '4a8a6727-219e-420d-9f2c-b2248a0c7ed8_252.jpg'),
(244, 5592, 'cc345d65-5113-4986-8c76-4ff838a3e5d3_253.jpg'),
(245, 5592, '02010194-cdfe-4046-989b-5e900ce3984f_254.jpg'),
(246, 5593, '15b4ab09-955f-47da-8bad-7dbf729d44eb_255.jpg'),
(247, 5593, '2d365dc4-78eb-407c-ab87-282025852616_256.jpg'),
(248, 5594, 'c4560f62-041d-4008-877f-89f2d2e3a3ef_257.jpg'),
(249, 5594, '41bb13b9-36bb-4894-ad92-54f0ee31ad35_258.jpg'),
(250, 5594, '95e2d6ad-9f65-4b5c-9d55-d83a25f69b4c_259.jpg'),
(251, 5594, '4b1af5e3-263c-42b8-9f74-d9f2c305e5b5_260.jpg'),
(252, 5595, '13d3d758-fb47-4910-bcf8-756306342b24_261.jpg'),
(253, 5596, 'f5ddc2bd-b4a0-428e-babc-a56d3f382b7e_262.jpg'),
(254, 5596, '4423885c-6b88-44f9-bcd4-c53f11c9ec25_263.jpg'),
(255, 5596, 'f62a736d-a7be-4ccd-a22a-0ecc37722f38_264.jpg'),
(256, 5596, 'd9245d12-7be8-4581-a0b0-415018c72118_265.jpg'),
(257, 5597, '9e2d4726-ed08-4bea-ae63-f6ff59be09aa_266.jpg'),
(258, 5597, 'bc2c36e7-b3e0-4bd4-a369-9cdd285f3f46_267.jpg'),
(259, 5597, '9e0f6d77-6a6c-4ad2-9a15-9a0116152da5_268.jpg'),
(260, 5598, 'c4e595bb-9e25-42bf-87fd-d70cc7fb4096_269.jpg'),
(261, 5598, '9ddade8a-8384-43e6-9754-dbff8358e83d_270.jpg'),
(262, 5598, 'b7859e7f-12fb-49a9-9ce3-c17b13eefeb1_271.jpg'),
(263, 5599, 'cf272183-664f-441b-a71a-db988cc402a2_272.jpg'),
(264, 5599, 'baeb7b75-de60-4f91-8725-ff2996868322_273.jpg'),
(265, 5599, 'a1be3328-c29f-4b56-b68c-3cc79a575767_274.jpg'),
(266, 5599, '21a1ca55-1e38-4986-8a4a-cdae4bfcbc9e_275.jpg'),
(267, 5600, '01db914e-3a0e-4728-ae7c-5258e55f2435_276.jpg'),
(268, 5600, '1dd4ce08-0074-4264-8f35-592542b22d1c_277.jpg'),
(269, 5600, 'affd2a32-6436-48b8-8627-bae505970100_278.jpg'),
(270, 5600, '50f9757f-3277-4714-9018-aaf37acf92d7_279.jpg'),
(271, 5601, '892a114d-9d01-4b54-a212-e26b903bba02_280.jpg'),
(272, 5601, '6b905704-b424-41b2-ad1c-622e026068a1_281.jpg'),
(273, 5601, '0d7054c9-d101-4232-b20f-30063adde8e4_282.jpg'),
(274, 5602, 'ef384365-7aa6-43c1-a192-6830f192d322_283.jpg'),
(275, 5602, '085dd074-2326-4657-ba4b-ec47ceaa3aa9_284.jpg'),
(276, 5603, '52015e88-d56b-408a-9402-974359dfcde0_285.jpg'),
(277, 5603, '3432476e-b5de-49a1-b893-8c35df9ea0eb_286.jpg'),
(278, 5603, '282bb5fb-ffa1-444c-bfe0-543cfe2ba6be_287.jpg'),
(279, 5604, 'c6928947-e7d4-450e-ba99-4f551cce622a_288.jpg'),
(280, 5604, 'b6d632ac-7f55-47be-b0a3-97b54287bb4a_289.jpg'),
(281, 5604, '05492a1b-b372-4eeb-8818-e1653cc1cb9b_290.jpg'),
(282, 5605, '2e0f423a-68d0-466e-ad0a-be84cd7e1c57_291.jpg'),
(283, 5605, '0ca0cc0b-e118-421e-948b-764f096aae6b_292.jpg'),
(284, 5605, 'eb5c7fa1-9b49-41d9-82a1-cc01a6cf9c3d_293.jpg'),
(285, 5606, '5ba5c3aa-f4d5-454f-8e1f-c9449d294827_294.jpg'),
(286, 5606, '34909fab-edbd-4266-944d-a030672af136_295.jpg'),
(287, 5607, '6e42db0d-791b-4d0b-b66e-053864db5939_296.jpg'),
(288, 5607, 'f2d74b1b-3e15-4441-a86b-da820ff018b2_297.jpg'),
(289, 5607, '0b1ca2e9-ec7c-48c0-be5e-03093cca825e_298.jpg'),
(290, 5607, '03428608-4b65-4409-9776-2d158f970f5a_299.jpg'),
(291, 5607, 'd8a6e3f2-e0fe-4139-b94d-937399619f65_300.jpg'),
(292, 5608, '5fb05e29-f599-4092-a10d-ea032fcdf977_301.jpg'),
(293, 5608, '687b2c5f-8f3c-4d2d-ac61-ed8c6434d470_302.jpg'),
(294, 5608, 'dc1cd57e-fb27-46de-8a62-3f9a39f5e9af_303.jpg'),
(295, 5609, '0833d403-0468-4b68-aade-50ce73b11ecf_304.jpg'),
(296, 5609, 'ee1dbacf-76dd-4c8f-9ccd-b486a89bfb7b_305.jpg'),
(297, 5610, 'd9d54d9f-51ff-423e-963c-386d7c3980c2_306.jpg'),
(298, 5610, '0efd56e7-6aa6-4cc5-aef6-8ff543d16ba4_307.jpg'),
(299, 5610, 'ced78e52-8a2f-433b-be05-dfe36fbb9fd3_308.jpg'),
(300, 5611, '4562c571-0f2d-479a-bc1b-3bb63992ebfd_309.jpg'),
(301, 5611, '68b234a6-d018-4ed5-8b79-58f2fc34105d_310.jpg'),
(302, 5612, '620c6e73-54d7-41a3-bcd3-969ef9e8dda0_311.jpg'),
(303, 5612, 'bed95a29-6688-44a2-bc36-41bb8a9a69ad_312.jpg'),
(304, 5613, '2fa3dd9c-6d0f-4908-b686-00dfdce5341e_313.jpg'),
(305, 5613, 'c8196e38-008d-4653-b968-6c573dbb329e_314.jpg'),
(306, 5613, '6c2e47d5-579f-4717-bdda-9d2b1dd2b639_315.jpg'),
(307, 5614, 'b7aacca8-5512-46b6-a15a-181b98692090_316.jpg'),
(308, 5614, 'b48a672d-8532-4210-bd7f-93bfa463445b_317.jpg'),
(309, 5614, '05393d49-a7fa-4050-a0b7-8b6f915a4bec_318.jpg'),
(310, 5614, 'afdd6a5a-40f0-4f8e-8f09-1e7d851f91f1_319.jpg'),
(311, 5614, '29ca25a7-3031-494a-8a49-a7609bf7afaa_320.jpg'),
(312, 5614, 'e5425237-3c65-4798-a962-458d425b57d2_321.jpg'),
(313, 5615, 'f4d36aca-1608-4520-b85d-e9cebd4b9da5_320.jpg'),
(314, 5615, '5861b4be-5ff0-4794-8cff-bc441daf8a03_321.jpg'),
(315, 5616, 'd6139f30-37e6-4c1e-bf44-80e9610fdbce_322.jpg'),
(316, 5616, '9a6e4dcf-5742-4b1f-be0b-0c948ee12b2a_323.jpg'),
(317, 5616, '3654abe4-8e59-4b3d-b3e8-dbfdf22037dc_324.jpg'),
(318, 5617, '6158fac1-673a-41d7-be47-12caf248ef5c_325.jpg'),
(319, 5617, '63be5f64-b1b0-4c7a-9e4b-42542d9e52ca_326.jpg'),
(320, 5617, 'df861283-23bf-4d29-8b8e-91776a85fb0e_327.jpg'),
(321, 5618, 'ef7e05fb-f667-40f5-814f-eb537d178963_328.jpg'),
(322, 5618, 'bd073d0c-95b4-46a1-a6da-51e05231a8eb_329.jpg'),
(323, 5618, 'b08177dd-c081-4415-9515-e2bf6e3aff01_330.jpg'),
(324, 5619, '608a0da1-77e0-4560-9e70-08172847db59_331.jpg'),
(325, 5619, '64fc76d5-f03b-41f4-bdc4-0021f5899ed9_332.jpg'),
(326, 5619, '5fdfb305-56d2-406c-80b1-b40154b3e525_333.jpg'),
(327, 5620, 'c5e0a846-10f8-4db0-8a66-bfebf45e6230_334.jpg'),
(328, 5620, '2fd15b81-d78a-49d6-8435-0c16288e4ad5_335.jpg'),
(329, 5620, '199888ae-5e74-4881-8719-011f965c986f_336.jpg'),
(330, 5621, '97402346-8b6f-4aca-b89c-9685900ab3e6_337.jpg'),
(331, 5621, '95f8e5c0-3201-439c-b123-52d3739e9fdf_338.jpg'),
(332, 5621, 'a10387c6-3729-496c-88e7-62df568c98ee_339.jpg'),
(333, 5622, 'b9e6ad01-d9c4-41fd-9739-00fc9a55675d_340.jpg'),
(334, 5622, '2317d485-0c08-402c-b478-661e12be0e90_341.jpg'),
(335, 5622, '7ee173e1-ffe0-4356-9a27-59c277e6125a_342.jpg'),
(336, 5623, '8d7b214c-c256-47bd-ba7e-7fbd855005ac_343.jpg'),
(337, 5623, '58a95285-0e14-4611-8acb-2da651a169c0_344.jpg'),
(338, 5624, 'e9c622a4-8c0b-47b4-b55a-f94dce28fd5b_345.jpg'),
(339, 5624, '3430e6ca-c99a-410e-906b-5e42c8f13392_346.jpg'),
(340, 5625, '2ee1f438-42c6-409c-8330-297432774851_348.jpg'),
(341, 5625, '9926c556-62a0-46f5-9cbd-ca62f95954bc_349.jpg'),
(342, 5625, 'f7d3b470-783f-4d5e-8e4f-701873f27756_350.jpg'),
(343, 5626, '5980c017-a4d3-49a7-ac71-52ecb866507a_351.jpg'),
(344, 5626, 'd5ee5f6c-0c78-483d-a985-9f5c36ec9c4b_352.jpg'),
(345, 5626, '004009e7-06d3-4fa4-abba-8bc4588d9e20_353.jpg'),
(346, 5627, '36f851a1-ff96-458d-bd8c-92a37d118b5f_354.jpg'),
(347, 5627, 'aa557e5c-f5f2-454e-89b9-c5db44523a4a_355.jpg'),
(348, 5628, 'd985d825-4b63-4fcb-89be-37c1a61cc416_356.jpg'),
(349, 5628, 'b272128b-210c-4ca3-ba6b-eb3d89caaca0_357.jpg'),
(350, 5628, 'd52d1803-3911-4aab-8f5c-ea4718a4a9eb_358.jpg'),
(351, 5629, '4bad77b8-53ab-4d6e-863c-cf185d68e9aa_359.jpg'),
(352, 5629, '675c17b2-67bd-4b33-959e-8e34989a3f1a_360.jpg'),
(353, 5629, 'b12d4cc0-72a1-4d9c-9a1e-5b15112cc446_361.jpg'),
(354, 5630, 'caa2baac-313d-4ecc-8cf0-6f436cf0bc7a_362.jpg'),
(355, 5630, '794859d1-0ddd-436a-ab15-9fe75eed7ede_363.jpg'),
(356, 5631, 'bf655f7c-0c4b-41d3-9cc0-fbf6d2cbcf79_364.jpg'),
(357, 5631, '371bfcfb-dfe7-4209-8c7c-40ccbd70da7c_365.jpg'),
(358, 5631, '1f2dc19d-9452-4f68-91b9-762c57f22d78_366.jpg'),
(359, 5631, '15db0224-f4d8-4b16-81b1-d225084d3923_367.jpg'),
(360, 5632, '2dea6d31-f6ac-4a43-a120-95328eaf6e1c_368.jpg'),
(361, 5632, 'f0954d9d-d770-4c62-b52c-0e6f7ff7d088_369.jpg'),
(362, 5632, '139d27ba-4d7f-463c-8712-67da2b216f00_370.jpg'),
(363, 5632, '9e3760b0-a61d-4ae0-b2e3-b99aa7cdd7f5_371.jpg'),
(364, 5632, '424e8c11-38e7-41a9-8f37-f0acd9062f71_372.jpg'),
(365, 5633, '957516c1-7a74-435f-a687-9f7529ba53db_373.jpg'),
(366, 5633, '2440683a-1b54-43d7-a07d-c5b5e65acc7a_374.jpg'),
(367, 5633, '0f9129ba-fc0a-4abb-93e5-066760923c2e_375.jpg'),
(368, 5634, '997d244a-11cd-4a09-9128-1449c2d7d779_376.jpg'),
(369, 5634, 'd7392b92-b12b-43ba-a206-3e9db4b5870f_377.jpg'),
(370, 5634, '5d883b96-bfd5-4e8c-9f4a-7c0b52fcb81f_378.jpg'),
(371, 5635, '58427ada-dae7-4b0b-a6b6-0a4797b9cefd_379.jpg'),
(372, 5635, 'bd4ab387-0d02-4f2c-a52b-4096aa10678f_380.jpg'),
(373, 5635, 'f3383fa1-dac4-4d59-8590-45f06fc9392a_381.jpg'),
(374, 5636, 'e7d0a5e6-74b6-4bba-8693-45cae1dcfbd2_382.jpg'),
(375, 5636, '2ad00bb8-457a-41bb-bce2-5e7cdd6fba31_383.jpg'),
(376, 5636, 'd6f12f70-cf54-447d-987b-a315a307b2a8_384.jpg'),
(377, 5636, '44135241-86a3-4158-8046-2c0566b7022d_385.jpg'),
(378, 5637, '7d27d733-9afa-4e21-9405-12b832470ea8_386.jpg'),
(379, 5637, 'edb72831-e743-4f62-9d28-6c05138a9ba2_387.jpg'),
(380, 5637, 'ddb36804-460f-4458-9b98-2108bf2454fa_388.jpg'),
(381, 5638, '4b8cff2e-2419-41b5-9a3b-75fd98a6bfda_389.jpg'),
(382, 5638, '6446ac46-df53-409c-a72e-4d52d9469f80_390.jpg'),
(383, 5638, '074e8256-7ca3-401b-b2e4-a90e4e24fb42_391.jpg'),
(384, 5639, 'fd1232be-f194-40ab-a27b-1b329f93fddc_392.jpg'),
(385, 5639, '20472725-adb1-443b-bb06-f4ec37466448_393.jpg'),
(386, 5639, '5af214b1-257d-461d-a2d6-db3172444a22_394.jpg'),
(387, 5639, '52062cd6-fd32-4922-8ed6-d9e49910eda3_395.jpg'),
(388, 5640, '710e151c-0b55-414c-80f5-d8b85f1a693e_396.jpg'),
(389, 5640, 'eb058d64-43f2-4fc2-a8bc-0646ab20f8e3_397.jpg'),
(390, 5640, 'e0f9a905-7822-4255-9104-c93361e9a004_398.jpg'),
(391, 5640, '85899c2e-732f-4702-afe7-660956e14f64_399.jpg'),
(392, 5640, '0c85c747-4682-491a-81d1-903d9cef43f0_400.jpg'),
(393, 5641, 'c1dd2d8f-ff63-4e1b-b5a4-0db4a1f412fa_401.jpg'),
(394, 5641, '903fbf44-2a04-43e2-84c3-328a2eafb8ef_402.jpg'),
(395, 5641, '8660f9b5-150a-47a1-b91d-809264193491_403.jpg'),
(396, 5642, '45eeb85b-09ab-44d3-98cf-0071b1c091be_404.jpg'),
(397, 5642, 'a7f0c1dd-1df0-41c5-9fa4-3d8957de2528_405.jpg'),
(398, 5642, '02c0d9c6-f68c-4617-a6f5-b72a26b2e3f4_406.jpg'),
(399, 5643, 'b6e95190-5ff1-4c8e-8fa8-315905b53890_407.jpg'),
(400, 5643, '6d2fcdaf-7c6c-48b8-b7a6-93f52e3b3f89_408.jpg'),
(401, 5643, 'd2c4c75b-ac51-4da6-8abd-59aa0c598785_409.jpg'),
(402, 5643, '707b1113-2561-402f-bed8-b5070ac1476b_410.jpg'),
(403, 5644, 'f2113796-9b11-4281-84a6-808d9a3191ba_411.jpg'),
(404, 5644, 'f83ce8bc-edbd-4de2-8a25-94901654ebc0_412.jpg'),
(405, 5644, '41297a30-8335-4648-84ab-bebf773160bb_413.jpg'),
(406, 5645, '342b6ae1-821d-421e-a4a0-6a2626e9a97f_414.jpg'),
(407, 5645, '6c717758-57ba-49ec-85e1-581a4f9e5fd5_415.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(11) NOT NULL,
  `provider` varchar(20) NOT NULL COMMENT 'Tên nhà social network',
  `provider_id` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL COMMENT 'Email tài khoản',
  `name` varchar(100) NOT NULL COMMENT 'Tên người dùng',
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `token_type` varchar(50) NOT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT '',
  `phone_number` varchar(10) NOT NULL,
  `address` varchar(200) DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `date_of_birth` date DEFAULT NULL,
  `facebook_account_id` int(11) DEFAULT 0,
  `google_account_id` int(11) DEFAULT 0,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `phone_number`, `address`, `password`, `created_at`, `updated_at`, `is_active`, `date_of_birth`, `facebook_account_id`, `google_account_id`, `role_id`) VALUES
(1, 'Tài khoản user', '0123456', 'nha A,ngo B', '$2a$10$M89LR4iuSEwfQpA8KeTFne8XLfNhR.s9CUXFHDceelMhum4kZVQU2', '2025-04-25 09:48:13', '2025-04-25 09:48:13', 0, '2004-11-17', 0, 0, 1),
(2, 'Tài khoản admin', '11223344', 'nha cua Admin', '$2a$10$1LZsGfc0fFv6ZB3kDXGBMOmUspSYqlzuBslGs8sxdwGE6d7q6UUh6', '2025-04-25 13:57:10', '2025-04-25 13:57:10', 1, '2004-11-13', 0, 0, 2),
(4, 'Thảo Như', '0365398625', 'khu đô thị Bình Nguyên, Dĩ An, Bình Dương', '$2a$10$iw/TdkNXMRTbfMoYL1bbYOnyboVe.7R3yvynuoY6L25hbi07YjVwq', '2025-05-28 18:39:42', '2025-07-03 05:31:37', 1, '2004-11-12', 0, 0, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_images_product_id` (`product_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5646;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `fk_product_images_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
