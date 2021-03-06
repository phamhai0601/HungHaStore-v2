USE [master]
GO
/****** Object:  Database [hung_ha_store]    Script Date: 2/23/2022 5:40:13 PM ******/
CREATE DATABASE [hung_ha_store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'hung_ha_store', SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'hung_ha_store_log', SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [hung_ha_store] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [hung_ha_store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [hung_ha_store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [hung_ha_store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [hung_ha_store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [hung_ha_store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [hung_ha_store] SET ARITHABORT OFF 
GO
ALTER DATABASE [hung_ha_store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [hung_ha_store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [hung_ha_store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [hung_ha_store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [hung_ha_store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [hung_ha_store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [hung_ha_store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [hung_ha_store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [hung_ha_store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [hung_ha_store] SET  DISABLE_BROKER 
GO
ALTER DATABASE [hung_ha_store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [hung_ha_store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [hung_ha_store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [hung_ha_store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [hung_ha_store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [hung_ha_store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [hung_ha_store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [hung_ha_store] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [hung_ha_store] SET  MULTI_USER 
GO
ALTER DATABASE [hung_ha_store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [hung_ha_store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [hung_ha_store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [hung_ha_store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [hung_ha_store] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [hung_ha_store] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [hung_ha_store] SET QUERY_STORE = OFF
GO
USE [hung_ha_store]
GO
/****** Object:  Table [dbo].[chitiet_hd]    Script Date: 2/23/2022 5:40:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiet_hd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_hd] [int] NOT NULL,
	[id_sp] [int] NOT NULL,
	[gia_tien] [int] NOT NULL,
	[so_luong] [int] NOT NULL,
 CONSTRAINT [PK_chitiet_hd] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoa_don]    Script Date: 2/23/2022 5:40:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_nd] [int] NOT NULL,
	[trang_thai] [int] NOT NULL,
	[tong_tien] [int] NOT NULL,
	[tg_tao] [date] NOT NULL,
 CONSTRAINT [PK_hoa_don] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loai_sp]    Script Date: 2/23/2022 5:40:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_sp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](255) NOT NULL,
	[mo_ta] [nvarchar](255) NOT NULL,
	[tg_tao] [date] NOT NULL,
 CONSTRAINT [PK_loai_sp] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguoi_dung]    Script Date: 2/23/2022 5:40:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoi_dung](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tai_khoan] [nvarchar](255) NOT NULL,
	[mat_khau] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[quyen] [int] NOT NULL,
	[id_thong_tin_nd] [int] NOT NULL,
	[tg_tao] [date] NOT NULL,
 CONSTRAINT [PK_nguoi_dung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[san_pham]    Script Date: 2/23/2022 5:40:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](255) NOT NULL,
	[id_loai_sp] [int] NOT NULL,
	[gia_tien] [int] NOT NULL,
	[giam_gia] [int] NOT NULL,
	[mo_ta] [nvarchar](255) NOT NULL,
	[hinh_anh] [nvarchar](255) NOT NULL,
	[luot_xem] [int] NOT NULL,
	[tg_tao] [date] NULL,
 CONSTRAINT [PK_san_pham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thongtin_nd]    Script Date: 2/23/2022 5:40:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thongtin_nd](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_nd] [int] NOT NULL,
	[gio_tinh] [int] NOT NULL,
	[sdt] [nvarchar](50) NOT NULL,
	[dia_chi] [nvarchar](255) NOT NULL,
	[ngay_sinh] [date] NOT NULL,
 CONSTRAINT [PK_thongtin_nd] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[loai_sp] ON 

INSERT [dbo].[loai_sp] ([id], [ten], [mo_ta], [tg_tao]) VALUES (3, N'Giá sách gỗ', N'', CAST(N'2022-02-20' AS Date))
INSERT [dbo].[loai_sp] ([id], [ten], [mo_ta], [tg_tao]) VALUES (4, N'Kệ ti vi', N'', CAST(N'2022-02-20' AS Date))
INSERT [dbo].[loai_sp] ([id], [ten], [mo_ta], [tg_tao]) VALUES (5, N'Tủ quần áo', N'', CAST(N'2022-02-20' AS Date))
INSERT [dbo].[loai_sp] ([id], [ten], [mo_ta], [tg_tao]) VALUES (6, N'Bàn ghế ăn', N'', CAST(N'2022-02-20' AS Date))
INSERT [dbo].[loai_sp] ([id], [ten], [mo_ta], [tg_tao]) VALUES (7, N'Bàn làm việc', N'', CAST(N'2022-02-20' AS Date))
INSERT [dbo].[loai_sp] ([id], [ten], [mo_ta], [tg_tao]) VALUES (8, N'Giường', N'', CAST(N'2022-02-20' AS Date))
SET IDENTITY_INSERT [dbo].[loai_sp] OFF
GO
SET IDENTITY_INSERT [dbo].[san_pham] ON 

INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (1, N'Kệ góc bằng gỗ MDF kết cấu chắc chắn GHS-2400', 3, 1800000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-goc-bang-go-mdf-ket-cau-chac-chan-ghs-2400-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (2, N'Kệ để sách bằng gỗ MDF cao cấp GHS-2399', 3, 1900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-de-sach-bang-go-mdf-cao-cap-ghs-2399-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (3, N'Giá kệ sách gỗ thiết kế đơn giản GHS-2398', 3, 1600000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'gia-ke-sach-go-thiet-ke-don-gian-ghs-2398-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (4, N'Kệ để sách báo gỗ MDF phủ melamine GHS-2397', 3, 1900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-de-sach-bao-go-mdf-phu-melamine-ghs-2397-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (5, N'Kệ sách đa năng kiểu dáng độc đáo GHS-2395', 3, 2900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-sach-da-nang-kieu-dang-doc-dao-ghs-2395-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (6, N'Giá kệ sách bằng gỗ đa năng GHS-2394', 3, 2400000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'gia-ke-sach-bang-go-da-nang-ghs-2394-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (7, N'Kệ sách gỗ MDF phủ melamine GHS-2393', 3, 2500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-sach-go-mdf-phu-melamine-ghs-2393-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (8, N'Kệ giá để sách bằng gỗ tại nhà GHS-2389', 3, 3200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-gia-de-sach-bang-go-tai-nha-ghs-2388-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (9, N'Giá để sách gỗ nhỏ gọn GHS-2388', 3, 1700000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'gia-de-sach-go-nho-gon-ghs-2388-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (10, N'Giá để sách truyện cho bé bằng gỗ GHS-2385', 3, 2500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'gia-de-sach-truyen-cho-be-bang-go-ghs-2385-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (11, N'Kệ giá sách gỗ đa năng kiểu dáng trẻ trung GHS-51598', 3, 500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-gia-sach-go-da-nang-kieu-dang-tre-trung-ghs-51598-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (12, N'Kệ sách nhỏ gọn kết cấu chắc chắn GHC-1105', 3, 1100000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-sach-nho-gon-ket-cau-chac-chan-ghc-1105-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (13, N'Kệ để đồ hình Robot bằng gỗ thiết kế mới GHC-1104', 3, 1600000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-de-do-hinh-robot-bang-go-thiet-ke-moi-ghc-1104-ava2-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (14, N'Kệ trưng bày Tatami 120 cm bằng gỗ MDF GHC-2430', 3, 1800000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-go-tatami-thiet-ke-thong-minh-tien-loi-ghc-2424-ava-1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (15, N'Kệ gỗ Tatami 90 cm thiết kế thông minh tiện lợi GHC-2424', 3, 1500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-go-tatami-thiet-ke-thong-minh-tien-loi-ghc-2424-ava-1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (16, N'Kệ gỗ Tatami kiểu dáng đơn giản phong cách Nhật GHC-2422', 3, 1600000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-go-tatami-kieu-dang-don-gian-phong-cach-nhat-ghc-2422-ava-1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (17, N'Giá sách gỗ nhỏ gọn thiết kế đa năng GHC-2418', 3, 950000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'gia-sach-go-nho-gon-thiet-ke-da-nang-ghc-2418-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (18, N'Giá kệ để đồ xếp hình lắp ráp đa năng size 36cm GHC-2406', 3, 399000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Giá-k?-sách-t?-d?-d?-x?p-hình-l?p-ráp-da-nang-8-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (19, N'Kệ sách đa năng bằng gỗ công nghiệp MDF cao cấp GHC-2405', 3, 1190000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'gia-sach-gia-dinh-thiet-ke-da-nang-ghc-2405-9-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (20, N'Kệ sách đứng đẹp thiết kế nhỏ gọn GHS-2384', 3, 1500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-sach-dung-dep-thiet-ke-nho-gon-ghs-2384-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (21, N'Kệ sách hiện đại thiết kế sang trọng GHS-2383', 3, 2100000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ke-sach-hien-dai-thiet-ke-sang-trong-ghs-2383-ava-1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (22, N'Giá sách cao cấp bằng gỗ GHS-2382', 3, 8600000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'gia-sach-cao-cap-bang-go-ghs-2382-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (23, N'Giá sách đa năng thiết kế sang trọng GHS-2381', 3, 5800000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'gia-sach-da-nang-thiet-ke-sang-trong-ghs-2381-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (24, N'Giá sách hiện đại thiết kế thông minh GHS-2380', 3, 2100000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'gia-sach-hien-dai-thiet-ke-thong-minh-ghs-2380-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (25, N'Giá sách gia đình kiểu dáng nhỏ gọn GHS-2379', 3, 1700000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'gia-sach-gia-dinh-kieu-dang-nho-gon-ghs-2379-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (26, N'Giá sách bằng gỗ kiểu dáng tiện dụng GHS-2378', 3, 2300000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'gia-sach-bang-go-kieu-dang-tien-dung-ghs-2378-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (27, N'Giá sách hiện đại thiết kế đơn giản GHS-2377', 3, 4200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'gia-sach-hien-dai-thiet-ke-don-gian-ghs-2377-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (28, N'Bàn ăn bằng gỗ 4 chỗ thiết kế đẹp GHS-41221', 4, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-bang-go-4-cho-thiet-ke-dep-GHS-41221-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (29, N'Bàn ăn gia đình phong cách hiện đại GHS-41220', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-gia-dinh-phong-cach-hien-dai-GHS-41220-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (30, N'Bàn ăn bằng gỗ đẹp cho gia đình GHS-41219', 4, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-bang-go-dep-cho-gia-dinh-GHS-41219-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (31, N'Bàn ăn gỗ sồi kiểu dáng nhỏ gọn cho gia đình GHS-41218', 4, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-go-soi-kieu-dang-nho-gon-cho-gia-dinh-GHS-41218-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (32, N'Bộ bàn ăn hiện đại gỗ sồi kiểu dáng nhỏ gọn GHS-41217', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-hien-dai-go-soi-kieu-dang-nho-gon-GHS-41217-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (33, N'Bàn ăn gia đình 4 chỗ bằng gỗ tự nhiên GHS-41216', 4, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-gia-dinh-4-cho-bang-go-tu-nhien-GHS-41216-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (34, N'Bàn ăn gỗ sồi thiết kế đẹp thanh lịch GHS-41215', 4, 14000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-go-soi-thiet-ke-dep-thanh-lich-GHS-41215-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (35, N'Bộ bàn ghế ăn gỗ chất lượng cao cho gia đình GHS-41214', 4, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-ghe-an-go-chat-luong-cao-cho-gia-dinh-GHS-41214-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (36, N'Bàn ăn bằng gỗ kiểu dáng thanh lịch GHS-41213', 4, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-bang-go-kieu-dang-tahnh-lich-GHS-41213-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (37, N'Bàn ăn gia đình thiết kế đẹp bằng gỗ sồi GHS-41212', 4, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-gia-dinh-thiet-ke-dep-bang-go-soi-GHS-41212-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (38, N'Bộ bàn ăn gia đình kiểu dáng nhỏ gọn GHS-41155', 4, 11500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-gia-dinh-kieu-dang-nho-gon-GHS-41155-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (39, N'Bàn ăn bằng gỗ chất lượng cao GHS-41154', 4, 14500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-bang-go-chat-luong-cao-GHS-41154-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (40, N'Bộ bàn ăn gia đình đẹp thanh lịch GHS-41153', 4, 14000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-gia-dinh-dep-thanh-lich-GHS-41153-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (41, N'Bàn ăn hiện đại bằng gỗ cho gia đình GHS-41152', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-hien-dai-bang-go-cho-gia-dinh-GHS-41152-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (42, N'Bộ bàn ghế ăn bằng gỗ tự nhiên GHS-41151', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-ghe-an-bang-go-tu-nhien-GHS-41151-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (43, N'Bộ bàn ăn gỗ thiết kế ấn tượng GHS-41150', 4, 13500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-go-thiet-ke-an-tuong-GHS-41150-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (44, N'Bộ bàn ăn tròn phong cách hiện đại GHS-41149', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (45, N'Bàn ăn hiện đại cho gia đình GHS-41148', 4, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-hien-dai-cho-gia-dinh-GHS-41148-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (46, N'Bàn ăn gia đình bằng gỗ thiết kế đẹp GHS-41147', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-gia-dinh-bang-go-thiet-ke-dep-GHS-41147-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (47, N'Bộ bàn ghế ăn phong cách hiện đại GHS-41146', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-ghe-an-phong-cach-hien-dai-GHS-41146-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (48, N'Bàn ăn hiện đại bằng gỗ cao cấp GHS-41145', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-hien-dai-bang-go-cao-cap-GHS-41145-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (49, N'Bàn ăn đẹp bằng gỗ tự nhiên GHS-41093', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-dep-bang-go-tu-nhien-GHS-41093-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (50, N'Bàn ăn hình vuông bằng gỗ tự nhiên GHS-41092', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-hinh-vuong-bang-go-tu-nhien-GHS-41092-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (51, N'Bộ bàn ăn chất lượng cao thiết kế đẹp GHS-41091', 4, 14500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-chat-luong-cao-thiet-ke-dep-GHS-41091-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (52, N'Bàn ăn hiện đại 4 ghế cho gia đình GHS-41090', 4, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-hien-dai-4-ghe-cho-gia-dinh-GHS-41090-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (53, N'Bàn ăn hiện đại thiết kế ấn tượng GHS-41089', 4, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-hien-dai-thiet-ke-an-tuong-GHS-41089-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (54, N'Bàn ăn gỗ tự nhiên cao cấp GHS-41088', 4, 14500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-go-tu-nhien-cao-cap-GHS-41088-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (55, N'Bộ bàn ăn gỗ đẹp cho gia đình GHS-41087', 4, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-go-dep-cho-gia-dinh-GHS-41087-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (56, N'Bàn ăn gia đình bằng gỗ tự nhiên GHS-41086', 4, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-gia-dinh-bang-go-tu-nhien-GHS-41086-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (57, N'Bàn ăn bằng gỗ thiết kế đẹp GHS-41085', 4, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-bang-go-thiet-ke-dep-GHS-41085-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (58, N'Bộ bàn ăn hiện đại cho gia đình GHS-41084', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-hien-dai-cho-gia-dinh-GHS-41084-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (59, N'Bộ bàn ăn gia đình thiết kế đẹp GHS-41083', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-gia-dinh-thiet-ke-dep-GHS-41083-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (60, N'Bộ bàn ăn gỗ kiểu dáng nhỏ gọn GHS-41082', 4, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-gi-kieu-dang-nho-gon-GHS-41082-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (61, N'Bàn ăn bằng gỗ chất lượng cao GHS-41081', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-bang-go-chat-luong-cao-GHS-41081-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (62, N'Bộ bàn ăn gỗ 4 ghế hiện đại GHS-41080', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-go-4-ghe-hien-dai-GHS-41080-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (63, N'Bàn ăn gia đình hiện đại đẹp GHS-41079', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-gia-dinh-hien-dai-dep-GHS-41079-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (64, N'Bàn ăn gỗ gia đình ghế bọc nỉ cao cấp GHS-4909', 4, 11500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-gia-dinh-ghe-boc-ni-cao-cap-ghs-4909-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (65, N'Bàn ăn gỗ hiện đại thiết kế nhỏ gọn sang trọng GHS-4908', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-hien-dai-thiet-ke-nho-gon-sang-trong-ghs-4908-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (66, N'Bàn ăn gỗ gia đình đẹp sang trọng hiện đại GHS-4905', 4, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-gia-dinh-dep-sang-trong-hien-dai-ghs-4905-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (67, N'Bàn ăn gỗ sồi gia đình thiết kế đẹp hiện đại GHS-4902', 4, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-soi-gia-dinh-thiet-ke-dep-hien-dai-ghs-4902-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (68, N'Bàn ăn hiện đại bằng gỗ sồi tự nhiên sang trọng GHS-4900', 4, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-hien-dai-bang-go-soi-tu-nhien-sang-trong-ghs-4900-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (69, N'Bàn ăn gỗ gia đình thiết kế sang trọng hiện đại GHS-4899', 4, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-gia-dinh-thiet-ke-sang-trong-hien-dai-ghs-4899-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (70, N'Bàn ăn gỗ công nghiệp nhỏ gọn tiện lợi GHS-4854', 4, 7000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-cong-nghiep-nho-gon-tien-loi-ghs-4854-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (71, N'Bàn ăn gỗ gia đình thiết kế đẹp hiện đại GHS-4853', 4, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-gia-dinh-thiet-ke-dep-hien-dai-ghs-4853-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (72, N'Bàn ăn gỗ hiện đại sang trọng tiện dụng GHS-4852', 4, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-hien-dai-sang-trong-tien-dung-ghs-4852-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (73, N'Tủ áo Tatami gỗ thiết kế tiện dụng GHC-51469', 5, 1900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-ao-tatami-go-thiet-ke-tien-dung-ghc-51469-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (74, N'Tủ áo gỗ nhỏ gọn thiết kế phong cách hiện đại GHC-51473', 5, 699000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-ao-go-nho-gon-thiet-ke-phong-cach-hien-dai-ghc-51473-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (75, N'Tủ áo gỗ MDF kết cấu chắc chắn phủ melamine GHC-51472', 5, 1299000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-ao-go-mdf-ket-cau-chac-chan-phu-melamine-ghc-51472-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (76, N'Tủ áo gỗ hiện đại thiết kế cánh mở GHS-51444', 5, 6400000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-ao-go-hien-dai-thiet-ke-canh-mo-ghs-51444-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (77, N'Tủ áo cánh lùa bằng gỗ sồi tự nhiên GHS-51443', 5, 15000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-ao-canh-lua-bang-go-soi-tu-nhien-ghs-51143-ava1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (78, N'Tủ áo cánh chớp bằng gỗ sồi tự nhiên cao cấp GHS-51442', 5, 15900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-ao-canh-chop-bang-go-soi-tu-nhien-cao-cap-ghs-51442-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (79, N'Tủ áo cánh lùa thiết kế chớp giả GHS-51441', 5, 15200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-ao-canh-lua-thiet-ke-chop-gia-ghs-51441-ava-1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (80, N'Tủ để quần áo gỗ cánh chớp giả cao cấp GHS-51440', 5, 22000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-quan-ao-go-canh-chop-gia-cao-cap-ghs-51440-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (81, N'Tủ quần áo cánh trượt bằng gỗ cao cấp GHS-51439', 5, 8900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-quan-ao-canh-truot-bang-go-cao-cap-ghs-51439-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (82, N'Tủ áo gỗ MDF cho bé gái kiểu dáng dễ thương GHS-51438', 5, 8900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-ao-go-mdf-cho-be-gai-kieu-dang-de-thuong-ghs-51438-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (83, N'Tủ quần áo cho bé bằng gỗ công nghiệp GHS-51437', 5, 4900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-quan-ao-cho-be-bang-go-cong-nghiep-ghs-51437-ava-1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (84, N'Tủ áo bằng gỗ thiết kế cánh mở tiện dụng GHS-51436', 5, 13500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-ao-bang-go-thiet-ke-canh-mo-tien-dung-ghs-51436-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (85, N'Tủ áo cánh mở gia đình bằng gỗ cao cấp GHS-51435', 5, 9500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-ao-canh-mo-gia-dinh-bang-go-cao-cap-ghs-51435-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (86, N'Tủ áo gia đình bằng gỗ thiết kế đẹp GHS-51434', 5, 7900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-ao-gia-dinh-bang-go-thiet-ke-dep-ghs-51434-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (87, N'Tủ để quần áo bằng gỗ MDF phun sơn GHS-51433', 5, 7500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-de-quan-ao-bang-go-mdf-phun-son-ghs-51433-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (88, N'Tủ đựng quần áo gỗ sồi sang trọng GHS-51432', 5, 18500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-dung-quan-ao-go-soi-sang-trong-ghs-51432-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (89, N'Tủ quần áo đẹp thiết kế cánh mở GHS-51431', 5, 4200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-quan-ao-dep-thiet-ke-canh-mo-ghs-51431-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (90, N'Tủ để quần áo bằng gỗ thiết kế tiện lợi GHS-51430', 5, 4200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-de-quan-ao-bang-go-thiet-ke-tien-loi-ghs-51430-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (91, N'Tủ quần áo cánh lùa thiết kế hiện đại GHS-51429', 5, 13200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-quan-ao-canh-lua-thiet-ke-hien-dai-ghs-51429-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (92, N'Tủ đựng quần áo cánh mở kích thước nhỏ gọn GHS-51428', 5, 4600000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-dung-quan-ao-canh-mo-kich-thuoc-nho-gon-ghs-51428-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (93, N'Tủ áo cánh mở bằng gỗ kiểu dáng nhỏ gọn GHS-51345', 5, 7600000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-ao-canh-mo-bang-go-kieu-dang-nho-gon-ghs-51345-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (94, N'Tủ để quần áo gỗ công nghiệp kết cấu chắc chắn GHS-51344', 5, 5700000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-de-quan-ao-go-cong-nghiep-ket-cau-chac-chan-ghs-51344-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (95, N'Tủ gỗ đựng quần áo gia đình thiết kế hiện đại GHS-51343', 5, 8900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-go-dung-quan-ao-gia-dinh-thiet-ke-hien-dai-ghs-51343-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (96, N'Tủ để quần áo cánh trượt gỗ MDF cốt lõi xanh GHS-51342', 5, 8900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-de-quan-ao-canh-truot-go-mdf-cot-loi-xanh-ghs-51342-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (97, N'Tủ quần áo cánh mở gỗ MDF thiết kế hiện đại GHS-51341', 5, 6900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-quan-ao-canh-mo-go-mdf-thiet-ke-hien-dai-ghs-51341-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (98, N'Tủ đựng quần áo thiết kế cánh trượt triện dụng GHS-51340', 5, 12900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-dung-quan-ao-thiet-ke-canh-truot-trien-dung-ghs-51340-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (99, N'Tủ quần áo cánh lùa bằng gỗ kết cấu chắc chắn GHS-51339', 5, 9300000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-quan-ao-canh-lua-bang-go-ket-cau-chac-chan-ghs-51339-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
GO
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (100, N'Tủ áo bằng gỗ cánh trượt thiết kế tiện lợi GHS-51338', 5, 8900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'tu-ao-bang-go-canh-truot-thiet-ke-tien-loi-ghs-51338-ava-1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (101, N'Bàn ăn bằng gỗ 4 chỗ thiết kế đẹp GHS-41221', 6, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-bang-go-4-cho-thiet-ke-dep-GHS-41221-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (102, N'Bàn ăn gia đình phong cách hiện đại GHS-41220', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-gia-dinh-phong-cach-hien-dai-GHS-41220-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (103, N'Bàn ăn bằng gỗ đẹp cho gia đình GHS-41219', 6, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-bang-go-dep-cho-gia-dinh-GHS-41219-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (104, N'Bàn ăn gỗ sồi kiểu dáng nhỏ gọn cho gia đình GHS-41218', 6, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-go-soi-kieu-dang-nho-gon-cho-gia-dinh-GHS-41218-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (105, N'Bộ bàn ăn hiện đại gỗ sồi kiểu dáng nhỏ gọn GHS-41217', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-hien-dai-go-soi-kieu-dang-nho-gon-GHS-41217-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (106, N'Bàn ăn gia đình 4 chỗ bằng gỗ tự nhiên GHS-41216', 6, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-gia-dinh-4-cho-bang-go-tu-nhien-GHS-41216-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (107, N'Bàn ăn gỗ sồi thiết kế đẹp thanh lịch GHS-41215', 6, 14000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-go-soi-thiet-ke-dep-thanh-lich-GHS-41215-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (108, N'Bộ bàn ghế ăn gỗ chất lượng cao cho gia đình GHS-41214', 6, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-ghe-an-go-chat-luong-cao-cho-gia-dinh-GHS-41214-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (109, N'Bàn ăn bằng gỗ kiểu dáng thanh lịch GHS-41213', 6, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-bang-go-kieu-dang-tahnh-lich-GHS-41213-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (110, N'Bàn ăn gia đình thiết kế đẹp bằng gỗ sồi GHS-41212', 6, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-gia-dinh-thiet-ke-dep-bang-go-soi-GHS-41212-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (111, N'Bộ bàn ăn gia đình kiểu dáng nhỏ gọn GHS-41155', 6, 11500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-gia-dinh-kieu-dang-nho-gon-GHS-41155-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (112, N'Bàn ăn bằng gỗ chất lượng cao GHS-41154', 6, 14500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-bang-go-chat-luong-cao-GHS-41154-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (113, N'Bộ bàn ăn gia đình đẹp thanh lịch GHS-41153', 6, 14000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-gia-dinh-dep-thanh-lich-GHS-41153-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (114, N'Bàn ăn hiện đại bằng gỗ cho gia đình GHS-41152', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-hien-dai-bang-go-cho-gia-dinh-GHS-41152-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (115, N'Bộ bàn ghế ăn bằng gỗ tự nhiên GHS-41151', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-ghe-an-bang-go-tu-nhien-GHS-41151-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (116, N'Bộ bàn ăn gỗ thiết kế ấn tượng GHS-41150', 6, 13500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-go-thiet-ke-an-tuong-GHS-41150-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (117, N'Bộ bàn ăn tròn phong cách hiện đại GHS-41149', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-tron-phong-cach-hien-dai-GHS-41149-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (118, N'Bàn ăn hiện đại cho gia đình GHS-41148', 6, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-hien-dai-cho-gia-dinh-GHS-41148-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (119, N'Bàn ăn gia đình bằng gỗ thiết kế đẹp GHS-41147', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-gia-dinh-bang-go-thiet-ke-dep-GHS-41147-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (120, N'Bộ bàn ghế ăn phong cách hiện đại GHS-41146', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-ghe-an-phong-cach-hien-dai-GHS-41146-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (121, N'Bàn ăn hiện đại bằng gỗ cao cấp GHS-41145', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-hien-dai-bang-go-cao-cap-GHS-41145-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (122, N'Bàn ăn đẹp bằng gỗ tự nhiên GHS-41093', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-dep-bang-go-tu-nhien-GHS-41093-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (123, N'Bàn ăn hình vuông bằng gỗ tự nhiên GHS-41092', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-hinh-vuong-bang-go-tu-nhien-GHS-41092-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (124, N'Bộ bàn ăn chất lượng cao thiết kế đẹp GHS-41091', 6, 14500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-chat-luong-cao-thiet-ke-dep-GHS-41091-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (125, N'Bàn ăn hiện đại 4 ghế cho gia đình GHS-41090', 6, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-hien-dai-4-ghe-cho-gia-dinh-GHS-41090-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (126, N'Bàn ăn hiện đại thiết kế ấn tượng GHS-41089', 6, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-hien-dai-thiet-ke-an-tuong-GHS-41089-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (127, N'Bàn ăn gỗ tự nhiên cao cấp GHS-41088', 6, 14500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-go-tu-nhien-cao-cap-GHS-41088-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (128, N'Bộ bàn ăn gỗ đẹp cho gia đình GHS-41087', 6, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-go-dep-cho-gia-dinh-GHS-41087-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (129, N'Bàn ăn gia đình bằng gỗ tự nhiên GHS-41086', 6, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-gia-dinh-bang-go-tu-nhien-GHS-41086-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (130, N'Bàn ăn bằng gỗ thiết kế đẹp GHS-41085', 6, 13000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-bang-go-thiet-ke-dep-GHS-41085-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (131, N'Bộ bàn ăn hiện đại cho gia đình GHS-41084', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-hien-dai-cho-gia-dinh-GHS-41084-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (132, N'Bộ bàn ăn gia đình thiết kế đẹp GHS-41083', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-gia-dinh-thiet-ke-dep-GHS-41083-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (133, N'Bộ bàn ăn gỗ kiểu dáng nhỏ gọn GHS-41082', 6, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-gi-kieu-dang-nho-gon-GHS-41082-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (134, N'Bàn ăn bằng gỗ chất lượng cao GHS-41081', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-bang-go-chat-luong-cao-GHS-41081-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (135, N'Bộ bàn ăn gỗ 4 ghế hiện đại GHS-41080', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Bo-ban-an-go-4-ghe-hien-dai-GHS-41080-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (136, N'Bàn ăn gia đình hiện đại đẹp GHS-41079', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-an-gia-dinh-hien-dai-dep-GHS-41079-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (137, N'Bàn ăn gỗ gia đình ghế bọc nỉ cao cấp GHS-4909', 6, 11500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-gia-dinh-ghe-boc-ni-cao-cap-ghs-4909-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (138, N'Bàn ăn gỗ hiện đại thiết kế nhỏ gọn sang trọng GHS-4908', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-hien-dai-thiet-ke-nho-gon-sang-trong-ghs-4908-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (139, N'Bàn ăn gỗ gia đình đẹp sang trọng hiện đại GHS-4905', 6, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-gia-dinh-dep-sang-trong-hien-dai-ghs-4905-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (140, N'Bàn ăn gỗ sồi gia đình thiết kế đẹp hiện đại GHS-4902', 6, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-soi-gia-dinh-thiet-ke-dep-hien-dai-ghs-4902-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (141, N'Bàn ăn hiện đại bằng gỗ sồi tự nhiên sang trọng GHS-4900', 6, 12500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-hien-dai-bang-go-soi-tu-nhien-sang-trong-ghs-4900-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (142, N'Bàn ăn gỗ gia đình thiết kế sang trọng hiện đại GHS-4899', 6, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-gia-dinh-thiet-ke-sang-trong-hien-dai-ghs-4899-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (143, N'Bàn ăn gỗ công nghiệp nhỏ gọn tiện lợi GHS-4854', 6, 7000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-cong-nghiep-nho-gon-tien-loi-ghs-4854-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (144, N'Bàn ăn gỗ gia đình thiết kế đẹp hiện đại GHS-4853', 6, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-gia-dinh-thiet-ke-dep-hien-dai-ghs-4853-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (145, N'Bàn ăn gỗ hiện đại sang trọng tiện dụng GHS-4852', 6, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-an-go-hien-dai-sang-trong-tien-dung-ghs-4852-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (146, N'Bàm làm việc thông minh tiết kiệm diện tích GHC-4624', 7, 1400000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-thong-minh-GHC-4624-11-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (147, N'Bàn Nhật đa năng bằng gỗ sồi cao cấp GHC-41414', 7, 2200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-nhat-da-nang-bang-go-soi-cao-cap-ghc-41414-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (148, N'Bàn làm việc thông minh bằng gỗ công nghiệp GHS-4155-2', 7, 2800000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-thong-minh-bang-go-cong-nghiep-ghs-4155-2-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (149, N'Bàn làm việc hiện đại liền giá sách bằng gỗ GHS-41413', 7, 4800000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-hien-dai-lien-gia-sach-bang-go-ghs-41413-15-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (150, N'Bàn làm việc gỗ liền giá sách bền đẹp GHS-41411', 7, 4600000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-go-lien-gia-sach-ben-dep-ghs-41411-ava-3-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (151, N'Bàn làm việc liền giá kết cấu chắc chắn GHS-41410', 7, 4800000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-lien-gia-ket-cau-chac-chan-ghs-41410-ava-1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (152, N'Bàn làm việc tại nhà liền tủ chứa tài liệu GHS-41408', 7, 3600000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-tai-nha-lien-tu-chua-tai-lieu-ghs-41408-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (153, N'Bàn làm việc đơn giản kiểu dáng hiện đại GHS-41407', 7, 2900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-don-gian-kieu-dang-hien-dai-ghs-41407-9-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (154, N'Bàn làm việc gỗ MDF liền tủ tài liệu GHS-41406', 7, 3600000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-go-mdf-lien-tu-tai-lieu-ghs-41406-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (155, N'Bàn làm việc tại nhà bằng gỗ công nghiệp GHS-41405', 7, 3600000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-tai-nha-bang-go-cong-nghiep-ghs-41405-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (156, N'Bàn làm việc nhỏ gọn bằng gỗ MDF cốt lõi xanh GHS-41404', 7, 3500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-nho-gon-bang-go-mdf-cot-loi-xanh-ghs-41404-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (157, N'Bàn làm việc cá nhân thiết kế đơn giản GHS-41403', 7, 3600000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-ca-nhan-thiet-ke-don-gian-ghs-41403-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (158, N'Bàn làm việc bằng gỗ thiết kế đa năng GHS-41401', 7, 2900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-bang-go-thiet-ke-da-nang-ghs-41401-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (159, N'Bàn làm việc gỗ kiểu dáng nhỏ gọn GHS-41396', 7, 5300000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-go-kieu-dang-nho-gon-ghs-41396-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (160, N'Bàn làm việc gỗ công nghiệp cao cấp GHS-41400', 7, 3200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-go-cong-nghiep-cao-cap-ghs-41400-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (161, N'Bàn làm việc hiện đại kích thước nhỏ gọn GHS-41399', 7, 3200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-hien-dai-go-GHS-41399-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (162, N'Bàn làm việc liền giá kiểu dáng đơn giản GHS-41398', 7, 3000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-lien-gia-kieu-dang-don-gian-ghs-41398-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (163, N'Bàn làm việc bằng gỗ MDF phủ melamine GHS-41397', 7, 5300000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'ban-lam-viec-bang-go-mdf-phu-melamine-ghs-41397-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (164, N'Bàn làm việc đẹp bằng gỗ phong cách hiện đại GHS-41373', 7, 7800000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-dep-bang-go-phong-cach-hien-dai-GHS-41373-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (165, N'Bàn làm việc gỗ sồi tự nhiên thiết kế đẹp GHS-41372', 7, 7000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-go-soi-tu-nhien-thiet-ke-dep-GHS-41372-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (166, N'Bàn làm việc cá nhân bằng gỗ công nghiệp nhỏ gọn GHS-41371', 7, 3300000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-ca-nhan-bang-go-cong-nghiep-nho-gon-GHS-41371-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (167, N'Bàn làm việc gỗ công nghiệp khung sắt chất lượng cao GHS-41370', 7, 3400000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-go-cong-nghiep-khung-sat-chat-luong-cao-GHS-41370-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (168, N'Bàn làm việc tại nhà bằng gỗ thiết kế tiện lợi GHS-41369', 7, 3600000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-tai-nha-bang-go-thiet-ke-tien-loi-GHS-41369-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (169, N'Bàn làm việc đẹp kiểu dáng nhỏ gọn gỗ công nghiệp GHS-41368', 7, 3300000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-dep-kieu-dang-nho-gon-go-cong-nghiep-GHS-41368-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (170, N'Bàn làm việc gỗ tự nhiên thiết kế tiện dụng GHS-41366', 7, 4900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-go-tu-nhien-thiet-ke-tien-dung-GHS-41366-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (171, N'Bàn làm việc hiện đại thiết kế đẹp thông minh GHS-41365', 7, 3900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-hien-dai-thiet-ke-dep-thong-minh-GHS-41365-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (172, N'Bàn làm việc tại nhà nhỏ gọn thiết kế đẹp GHS-41364', 7, 4500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-tai-nha-nho-gon-thiet-ke-dep-GHS-41364-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (173, N'Bàn làm việc gỗ công nghiệp phun sơn cao cấp GHS-41363', 7, 4200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-go-cong-nghiep-phun-son-cao-cap-GHS-41363-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (174, N'Bàn làm việc hiện đại bằng gỗ công nghiệp cho cá nhân GHS-41362', 7, 3500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-hien-dai-bang-go-cong-nghiep-cho-ca-nhan-GHS-41362-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (175, N'Bàn làm việc tại nhà bằng gỗ kiểu dáng nhỏ gọn GHS-41361', 7, 3200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-tai-nha-bang-go-kieu-dang-nho-gon-GHS-41361-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (176, N'Bàn làm việc gỗ công nghiệp tiện lợi kèm giá sách GHS-41360', 7, 4100000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-go-cong-nghiep-tien-loi-kem-gia-sach-GHS-41360-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (177, N'Bàn làm việc cá nhân tại nhà kiểu dáng nhỏ gọn GHS-41359', 7, 3500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-ca-nhan-tai-nha-kieu-dang-nho-gon-GHS-41359-ava-300x300.png', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (178, N'Bàn làm việc gỗ công nghiệp phun sơn hiện đại GHS-41358', 7, 3800000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-go-cong-nghiep-phun-son-hien-dai-GHS-41358-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (179, N'Bàn làm việc tại nhà khung sắt chất lượng cao GHS-41357', 7, 3500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-tai-nha-khung-sat-chat-luong-cao-GHS-41357-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (180, N'Bàn làm việc cá nhân bằng gỗ kiểu dáng nhỏ gọn GHS-41356', 7, 3300000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-ca-nhan-bang-go-kieu-dang-nho-gon-GHS-41356-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (181, N'Bàn làm việc gỗ công nghiệp khung sắt tĩnh điện GHS-41355', 7, 3700000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-go-cong-nghiep-khung-sat-phun-son-tinh-dien-GHS-41355-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (182, N'Bàn làm việc tại nhà thiết kế hiện đại GHS-41315', 7, 4700000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-tai-nha-thiet-ke-hien-dai-bang-go-GHS-41315-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (183, N'Bàn làm việc tiện dụng bằng gỗ công nghiệp GHS-41314', 7, 6500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'Ban-lam-viec-tien-dung-bang-go-cong-nghiep-GHS-41314-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (184, N'Giường ngủ Nhật Tatami 1m8 x 2m bằng gỗ công nghiệp GHC-9230', 8, 2500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-nhat-tatami-bang-go-cong-nghiep-ghc-9230-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (185, N'Giường ngủ cho trẻ em 1m4 thiết kế ấn tượng GHC-9226', 8, 3500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-cho-tre-em-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (186, N'Giường gỗ cho bé 1m2 kết hợp giá sách hiện đại GHC-9225', 8, 3300000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-go-cho-be-ghc-9226-1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (187, N'Giường Nhật bằng gỗ MDF chất lượng rộng 1m6 GHC-9224', 8, 2100000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-nhat-bang-go-GHC-9224-10-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (188, N'Giường gỗ MDF phong cách Tatami rộng 1m4 GHC-9223', 8, 2100000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-go-MDF-ghc-9223-11-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (189, N'Giường Tatami bằng gỗ công nghiệp cao cấp rộng 1m2 GHC-9222', 8, 1900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-tatami-bang-go-ghc-9222-11-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (190, N'Giường ngủ bệt kiểu Nhật gỗ công nghiệp rộng 1m GHC-9221', 8, 1900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-bet-GHC-9221-11-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (191, N'Giường ngủ Nhật Tatami rộng 1m6 bằng gỗ công nghiệp GHC-9220', 8, 2400000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-nhat-tatami-rong-1m6-bang-go-cong-nghiep-ghc-9220-ava-1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (192, N'Giường ngủ gỗ MDF Tatami rộng 1m4 thiết kế mới GHC-9219', 8, 2200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-go-mdf-tatami-rong-1m4-thiet-ke-moi-ghc-9219-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (193, N'Giường ngủ hiện đại Tatami rộng 1m2 kết cấu chắc chắn GHC-9218', 8, 2000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-hien-dai-tatami-rong-1m2-ket-cau-chac-chan-ghc-9218-ava-1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (194, N'Giường ngủ gia đình rộng 1m phong cách Nhật GHC-9217', 8, 1900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-gia-dinh-phong-cach-nhat-ghc-9217-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (195, N'Giường ngủ gỗ công nghiệp MDF thiết kế mới GHC-9216', 8, 2500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-go-cong-nghiep-mdf-thiet-ke-moi-ghc-9216-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (196, N'Giường Nhật bằng gỗ rộng 1m4 kiểu dáng hiện đại GHC-9215', 8, 2300000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-nhat-bang-go-rong-1m4-kieu-dang-hien-dai-ghc-9215-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (197, N'Giường gỗ MDF rộng 1m2 phong cách Nhật GHC-9214', 8, 2200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-go-mdf-rong-1m2-phong-cach-nhat-ghc-9214-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (198, N'Giường ngủ Tatami rộng 1m thiết kế đơn giản GHC-9213', 8, 2100000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-tatami-rong-1m-thiet-ke-don-gian-ghc-9213-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (199, N'Giường ngủ Tatami thiết kế trẻ trung GHC-9209', 8, 2400000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-tatami-thiet-ke-tre-trung-ghc-9209-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
GO
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (200, N'Set giường bệt tab đầu giường kiểu Nhật GHC-9208', 8, 2999000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'set-giuong-bet-tab-dau-giuong-kieu-nhat-ghc-9208-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (201, N'Giường Nhật Tatami bằng gỗ công nghiệp GHC-9207', 8, 2999000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-nhat-tatami-bang-go-cong-nghiep-ghc-9207-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (202, N'Giường gia đình gỗ cao cấp thiết kế đa năng GHS-9205', 8, 8200000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-gia-dinh-go-cao-cap-thiet-ke-da-nang-ghs-9205-ava-1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (203, N'Giường đơn bằng gỗ công nghiệp thiết kế đơn giản GHS-9204', 8, 4900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-don-bang-go-cong-nghiep-thiet-ke-don-gian-ghs-9204-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (204, N'Giường ngủ gỗ gia đình thiết kế đơn giản GHS-9203', 8, 5600000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-go-gia-dinh-thiet-ke-don-gian-ghs-9203-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (205, N'Giường ngủ Nhật bằng gỗ thiết kế tiện lợi GHS-9202', 8, 6900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-nhat-bang-go-thiet-ke-tien-loi-ghs-9202-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (206, N'Giường ngủ gỗ MDF thiết kế kiểu dáng đơn giản GHS-9201', 8, 7900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-go-mdf-thiet-ke-kieu-dang-don-gian-ghs-9201-ava-1-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (207, N'Giường gỗ gia đình kiểu dáng sang trọng GHS-9200', 8, 7900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-go-gia-dinh-kieu-dang-sang-trong-ghs-9200-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (208, N'Giường ngủ đẹp hiện đại thiết kế đa năng GHS-9199', 8, 7800000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-dep-hien-dai-thiet-ke-da-nang-ghs-9199-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (209, N'Giường ngủ gia đình cao cấp làm bằng gỗ MDF GHS-9198', 8, 8300000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-gia-dinh-cao-cap-lam-bang-go-mdf-ghs-9198-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (210, N'Giường ngủ hiện đại bằng gỗ thiết kế liền giá trưng bày GHS-9196', 8, 7500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-hien-dai-bang-go-thiet-ke-lien-gia-trung-bay-ghs-9196-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (211, N'Giường ngủ gia đình hiện đại thiết kế trẻ trung GHS-9195', 8, 6500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-gia-dinh-hien-dai-thiet-ke-tre-trung-ghs-9195-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (212, N'Giường gỗ công nghiệp MDF thiết kế đa năng GHS-9192', 8, 5900000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-go-cong-nghiep-mdf-thiet-ke-da-nang-ghs-9192-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (213, N'Giường ngủ bằng gỗ thiết kế sang trọng GHC-9093', 8, 10000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-bang-go-thiet-ke-sang-trong-ghc-9093-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (214, N'Giường gỗ tự nhiên cao cấp thiết kế đơn giản GHS-9191', 8, 10500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-go-tu-nhien-cao-cap-thiet-ke-don-gian-ghs-9191-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (215, N'Giường ngủ bằng gỗ hiện đại kiểu dáng sang trọng GHS-9190', 8, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-bang-go-hien-dai-kieu-dang-sang-trong-ghs-9190-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (216, N'Giường gỗ sồi tự nhiên kết cấu chắc chắn GHS-9189', 8, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-go-soi-tu-nhien-ket-cau-chac-chan-ghs-9189-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (217, N'Giường ngủ hiện đại bằng gỗ sồi GHS-9188', 8, 11500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-hien-dai-bang-go-soi-ghs-9188-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (218, N'Giường ngủ gỗ sồi thiết kế đơn giản GHS-9187', 8, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-go-soi-thiet-ke-don-gian-ghs-9187-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (219, N'Giường ngủ gia đình bằng gỗ thiết kế sang trọng GHS-9186', 8, 11500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-gia-dinh-bang-go-thiet-ke-sang-trong-ghs-9186-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (220, N'Giường ngủ hiện đại kiểu dáng sang trọng GHS-9185', 8, 11000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-hien-dai-kieu-dang-sang-trong-ghs-9185-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (221, N'Giường ngủ gỗ sồi thiết kế sang trọng GHS-9184', 8, 11000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-go-soi-thiet-ke-sang-trong-ghs-9184-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (222, N'Giường ngủ gỗ sồi đa năng tiện dụng GHS-9183', 8, 11500000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-go-soi-da-nang-tien-dung-ghs-9183-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (223, N'Giường ngủ gỗ đẹp kết cấu chắc chắn GHS-9182', 8, 11000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-go-dep-ket-cau-chac-chan-ghs-9182-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
INSERT [dbo].[san_pham] ([id], [ten], [id_loai_sp], [gia_tien], [giam_gia], [mo_ta], [hinh_anh], [luot_xem], [tg_tao]) VALUES (224, N'Giường ngủ bằng gỗ thiết kế phong cách hiện đại GHS-9181', 8, 12000000, 0, N'hiện tại chưa có mô tả về sản phẩm', N'giuong-ngu-bang-go-thiet-ke-phong-cach-hien-dai-ghs-9181-ava-300x300.jpg', 0, CAST(N'2022-02-20' AS Date))
SET IDENTITY_INSERT [dbo].[san_pham] OFF
GO
ALTER TABLE [dbo].[chitiet_hd] ADD  CONSTRAINT [DF_chitiet_hd_so_luong]  DEFAULT ((1)) FOR [so_luong]
GO
ALTER TABLE [dbo].[hoa_don] ADD  CONSTRAINT [DF_hoa_don_trang_thai]  DEFAULT ((0)) FOR [trang_thai]
GO
ALTER TABLE [dbo].[hoa_don] ADD  CONSTRAINT [DF_hoa_don_tong_tien]  DEFAULT ((0)) FOR [tong_tien]
GO
ALTER TABLE [dbo].[nguoi_dung] ADD  CONSTRAINT [DF_nguoi_dung_quyen]  DEFAULT ((0)) FOR [quyen]
GO
ALTER TABLE [dbo].[san_pham] ADD  CONSTRAINT [DF_san_pham_giam_gia]  DEFAULT ((0)) FOR [giam_gia]
GO
ALTER TABLE [dbo].[chitiet_hd]  WITH CHECK ADD  CONSTRAINT [FK_chitiet_hd_hoa_don] FOREIGN KEY([id_hd])
REFERENCES [dbo].[hoa_don] ([id])
GO
ALTER TABLE [dbo].[chitiet_hd] CHECK CONSTRAINT [FK_chitiet_hd_hoa_don]
GO
ALTER TABLE [dbo].[chitiet_hd]  WITH CHECK ADD  CONSTRAINT [FK_chitiet_hd_san_pham] FOREIGN KEY([id_sp])
REFERENCES [dbo].[san_pham] ([id])
GO
ALTER TABLE [dbo].[chitiet_hd] CHECK CONSTRAINT [FK_chitiet_hd_san_pham]
GO
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [FK_hoa_don_nguoi_dung] FOREIGN KEY([id_nd])
REFERENCES [dbo].[nguoi_dung] ([id])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [FK_hoa_don_nguoi_dung]
GO
ALTER TABLE [dbo].[nguoi_dung]  WITH CHECK ADD  CONSTRAINT [FK_nguoi_dung_thongtin_nd] FOREIGN KEY([id_thong_tin_nd])
REFERENCES [dbo].[thongtin_nd] ([id])
GO
ALTER TABLE [dbo].[nguoi_dung] CHECK CONSTRAINT [FK_nguoi_dung_thongtin_nd]
GO
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [FK_san_pham_loai_sp] FOREIGN KEY([id_loai_sp])
REFERENCES [dbo].[loai_sp] ([id])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [FK_san_pham_loai_sp]
GO
USE [master]
GO
ALTER DATABASE [hung_ha_store] SET  READ_WRITE 
GO
