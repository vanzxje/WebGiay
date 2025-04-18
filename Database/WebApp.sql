USE [master]
GO
/****** Object:  Database [WebApp]    Script Date: 30/06/2023 7:03:55 CH ******/
CREATE DATABASE [WebApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebApp', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.VANZXJE\MSSQL\DATA\WebApp.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebApp_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.VANZXJE\MSSQL\DATA\WebApp_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebApp] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebApp] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [WebApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebApp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebApp] SET  MULTI_USER 
GO
ALTER DATABASE [WebApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebApp] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [WebApp]
GO
/****** Object:  Table [dbo].[CAUHINH]    Script Date: 30/06/2023 7:03:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAUHINH](
	[IdValue] [nvarchar](50) NOT NULL,
	[GiaTri] [nvarchar](max) NULL,
 CONSTRAINT [PK_CAUHINH] PRIMARY KEY CLUSTERED 
(
	[IdValue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DANHMUCSP]    Script Date: 30/06/2023 7:03:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHMUCSP](
	[IdDanhMuc] [bigint] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](max) NULL,
	[Position] [int] NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_DMSP_1] PRIMARY KEY CLUSTERED 
(
	[IdDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 30/06/2023 7:03:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[IdSanPham] [bigint] IDENTITY(1,1) NOT NULL,
	[HinhSP] [nvarchar](max) NULL,
	[TenSP] [nvarchar](max) NULL,
	[GiaGoc] [nvarchar](max) NULL,
	[GiaSP] [nvarchar](max) NULL,
	[IdDM] [bigint] NULL,
	[MoTa] [nvarchar](max) NULL,
	[ChiTietSP] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[IdSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 30/06/2023 7:03:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[IdTaiKhoan] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nchar](10) NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[IdTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TINTUC]    Script Date: 30/06/2023 7:03:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINTUC](
	[IdNews] [bigint] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_TINTUC] PRIMARY KEY CLUSTERED 
(
	[IdNews] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[CAUHINH] ([IdValue], [GiaTri]) VALUES (N'password', N'admin')
INSERT [dbo].[CAUHINH] ([IdValue], [GiaTri]) VALUES (N'username', N'Admin')
SET IDENTITY_INSERT [dbo].[DANHMUCSP] ON 

INSERT [dbo].[DANHMUCSP] ([IdDanhMuc], [TenDM], [Position], [Notes]) VALUES (1, N'Nike', 1, NULL)
INSERT [dbo].[DANHMUCSP] ([IdDanhMuc], [TenDM], [Position], [Notes]) VALUES (2, N'Adidas', 2, NULL)
INSERT [dbo].[DANHMUCSP] ([IdDanhMuc], [TenDM], [Position], [Notes]) VALUES (3, N'MLB', 3, NULL)
INSERT [dbo].[DANHMUCSP] ([IdDanhMuc], [TenDM], [Position], [Notes]) VALUES (4, N'Converse', 4, NULL)
INSERT [dbo].[DANHMUCSP] ([IdDanhMuc], [TenDM], [Position], [Notes]) VALUES (5, N'Vans', 5, NULL)
INSERT [dbo].[DANHMUCSP] ([IdDanhMuc], [TenDM], [Position], [Notes]) VALUES (6, N'Biti''s Hunter', 6, NULL)
SET IDENTITY_INSERT [dbo].[DANHMUCSP] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (48, N'nai kỳ.jpg', N'Giày Nike Air Force 1 Low ’07 LV8 ‘Panda’ Siêu Cấp', N'2.200.000', N'2.000.000', 1, N'Giày Nike Air Force 1 Low ’07 LV8 ‘Panda’ Siêu Cấp với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của Giày Nike Air Force 1 Low ’07 LV8 ‘Panda’ Siêu  (hàng chuẩn siêu cấp, bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (49, N'Adidas.jpeg', N'Giày Alpha Magma Màu Trắng 2022', N'800.000', N'710.000', 2, N'Giày Alpha Magma Màu Trắng với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của Giày Alpha Magma Màu Trắng 2022 (hàng chuẩn siêu cấp, bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (50, N'7.jpeg', N'Giày MLB BigBall Chunky Mono Heel New York Yankees Black', N'820.000', N'710.000', 3, N'Giày MLB BigBall Chunky Mono Heel New York Yankees Black, với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày MLB BigBall Chunky Mono Heel New York Yankees Blacki (hàng chuẩn 1:1, bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (51, N'update-4-4919241c04144943b35345ae0e457647-1024x1024-1.jpe', N' Giày Converse Unisex Chuck 70 Plus', N' 720.000', N'620.000', 4, N'Giày Converse Unisex Chuck 70 Plus với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của Giày Converse Unisex Chuck 70 Plus (bản đẹp nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (52, N'vans-ua-old-skool-lx-suede-canvas-blackt-vn0a4p3xoiu-2.jpe', N'Giày Van Vault', N'429.000', N'309.000', 5, N'Giày Van Vault  với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Van Vault  (hàng chuẩn 1:1, bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (53, N'Vans-FOG-Giay-Vans-Fear-Of-God-Slip-On.jpe', N'Giày Vans Classic Slip On Fear of God', N'620.000', N'510.000', 5, N'Giày Vans Classic Slip On Fear of God  với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giày Vans Classic Slip On Fear of God tại TyHi Sneaker (hàng chuẩn rep 1:1, bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (54, N'z3921722417193_2c56555ba54e3cf0826db976e86a46be-1.jpg', N'Van Mickey Trắng, Đen', N'520.000', N'410.000', 5, N'Van Mickey Trắng, Đen, với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giày Van Mickey Trắng, Đen, tại TyHi Sneaker (hàng chuẩn 1:1, bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (55, N'z3792855510714_9ad508c89448a0168326aaa9901c8045-1.jpg', N'GIÀY VANS ERA ĐEN TRẮNG', N'480.000', N'310.000', 5, N'GIÀY VANS ERA ĐEN TRẮNG, với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'GIÀY VANS ERA ĐEN TRẮNG, với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (56, N'vans-caro-lv-7-1.jpg', N'Giày Vans Caro LV Bản Cao Cấp', N'570.000', N'450.000', 5, N'Giày Vans Caro LV Bản Cao Cấp, với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Giày Vans Caro LV Bản Cao Cấp, với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (57, N'hao-nam-hunter-street-bloomin-central-dsmh08500den-den-7vy7y-color-den_9bc67f7ec91245c3a8c7c4dde07824d9.jpe', N'Giày Thể Thao Nam Biti''s Hunter Street Bloomin'' Central DSMH08500', N'1.103.200', N'1.000.000', 6, N'- Đế #LiteTraction với chất liệu cao su EVA nhẹ và êm ái nâng đỡ bàn chân trên mọi trải nghiệm. Độ ma sát & bền bỉ cao, tự tin “cân" mọi thử thách.', N'- Đệm lót EVA cùng công nghệ ép khuôn 3D theo biên dạng bàn chân, ôm đều & định vị tốt, tránh tuột chân khi vận động mạnh. Kết hợp với chất liệu thun kháng khuẩn, giúp thấm hút mồ hôi, hạn chế mùi và ẩm mốc.  - Có dây buộc  - Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (58, N'dsmh09700trg__2__c676c77da9e94da9a06dafb4b68b3495.jpg', N'[Phiên Bản Kỷ Niệm 40 Năm] Giày Thể Thao Nam Hunter X DSMH09700', N'1,133,100', N'1.000.000', 6, N'❖ Đế mới được ra mắt thị trường của Biti’s Hunter X .  ➢ Gồm đế giữa (Midsole) là chất liệu EVA (Ethylene và Vinayl Acetate), nhẹ, mềm dẻo, chống nước và chống tia UV. Đế được ép khuôn 3D bằng dây chuyền hiện đại, khép kín giúp chất liệu tạo được độ đàn hồi tốt, độ bền cao, giảm các phản lực từ mặt đất trong quá trình sử dụng sản phẩm. Hỗ trợ tăng chiều cao từ 3-5 cm.  ➢ Thành đế cao và hầm hố, liên kết chặt chẻ với mũ quai giúp bước di chuyển gọn gang và dứt khoát, vững trãi.  ➢ Đế ngoài (Outsole) là phần tiếp xúc với mặt đất và chịu ma sát trực tiếp, sử dụng cao su tự nhiên đã được cải tiến, tối ưu các đặc tính như mềm dẻo, ma sát tốt, kháng mài mòn giúp sản phẩm thêm bền bỉ và sử dụng lâu dài.', N'➢ ( Insock) bằng orthorlite ép khuôn 3D đồng bộ cùng thun cá sấu kháng khuẩn cho cảm giác êm ái và hút ẩm, giảm mồ hôi và mùi ẩm mốc khó chịu .  ➢ Điểm nhấn phần quai: Dùng nhiều Layer tạo phong cách mạnh mẽ . Phần đế IP cao 4.5 cm được thiết kế đường nét uốn lượng phá cách hơn .Kiểu dáng ý tưởng theo phong cách đôi giày Phom to đang được giới trẻ yêu thích .  - Có dây buộc   - Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (59, N'hao-nam-hunter-x-x-nite-22-collection-dsmh10500den-den-06o1s-color-den_c2877e8fa1844ce2acb3b1457fb7cbf4.jpe', N'Giày Thể Thao Nam Hunter X - X-NITE 22 Collection DSMH10500', N'855,200', N'850.000', 6, N'Biti''s Hunter X - X-NITE 22 collection  .thiết kế từ ánh sáng pháo hoa và lửa  .với 07 phối màu tươi trẻ - tự do  X-NITE 22 collection được lựa chọn đặt trên nền ♦️ ĐẾ NGOÀI LITEFLEX 2.0 IP CAO SU NHẸ uốn gấp đàn hồi tốt, chất liệu IP, hỗ trợ chiều cao tới 5cm, trải nghiệm bước đi nhẹ như bay với độ đàn hồi >40%  - Đế: IP/Cao su  - Quai: Knits/ si Nubucks ', N'Điểm nhấn nổi bật : Quai knits thông thoáng. Đế IP/Cao su nhẹ, uốn gấp đàn hồi tốt.   - Ý tưởng thiết kế: từ những góc cắt mạnh mẽ liên kết từ thành đế tạo sự đồng nhất sản phẩm  - Có dây buộc   - Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (60, N'hsm001201trg__2__0a43588e315e4a43abf59ffd31717d8f.jpe', N'Giày Thể Thao Nam Hunter X - Dune OTP Real White edition HSM001201', N'1,329,000', N'1.200.000', 6, N'Valentine này, cùng Biti’s Hunter khám phá những trải nghiệm thật đẹp của tình yêu, của OTP chính mình với BST Dune – OTP Real Black/ White edition 💥 FORM CHUNKY GỌN CHÂN, nâng chiều cao thêm 6cm để dễ HUN-tér hơn nè  💥 ĐẾ LITEFLEX 3.0 CAO-ÊM-COOL tôn dáng, thời thượng, sẵn sàng cùng trải nghiệm mọi hoạt động trong tình yêu  💥 MŨ QUAI/ PHẦN THÂN TRÊN SI NUBUCKS phong cách, thời thượng, dễ dàng mix-match cho mọi món đồ đôi  💥 LÓT ĐẾ ÊM ÁI O-FOAM ép 3D với 6 điểm massage để bên nhau nhiều ngày nhiều “5” vẫn thoải mái  💥 ĐẾ SƠN CHUYỂN NHIỀU MÀU tôn vinh mọi cá tính cá nhân, mọi sắc thái của tình yêu đôi lứa', N'- Có dây buộc   - Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (61, N'dsmh03600__4__635fba02a403477fb8f869446669629e.jpe', N'Giày Thể Thao Nam Biti''s Hunter Street Mid Americano DSMH03600', N'737,100', N'650.000', 6, N'Lần đầu tiên, Biti’s Êmbrace - một dòng sản phẩm chuyên da mới - 100% làm từ chất liệu da Microfiber cao cấp siêu êm mềm - với ngôn ngữ thiết kế Smart Casual tinh giản, nền nã mà lại sang.   Mũ quai Hypersoft Microfiber: Mũ quai với chất liệu da Microfiber mềm-như-bông nâng niu đôi chân cho mọi hoạt động đi làm, đi học và đi chơi hàng ngày  Đế IP CloudFlyer: ứng dụng công nghệ đế IP cao cấp chỉ từ 215gr, độ đàn hồi >40% nâng đỡ tuyệt đối cho bước chân êm ái cả ngày dài  Lót đế trong Microfiber: lót đế trong (Insole) làm từ chất liệu da microfiber mềm mịn cao cấp và hạn chế thấm nước vào mùa mưa', N'Cấu trúc cổ giày Hypersoft: tăng cường cấu trúc đệm bông dày dặn êm ái ở cổ chân hạn chế tình trạng xước gót  Ba phối màu Smart Casual: phối màu trung tính Creamy White, Blush Pink, Raven Black -  tinh giản sang trọng dễ phối đồ - ai mang cũng được - đi đâu cũng đẹp!', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (67, N'giay-nike-air-force-1-low-gore-tex-olive-black-likeauth-6.png', N'Giày Nike Air Force 1 Low Gore Tex ‘Olive Black’ Likeauth', N'1.500.000', N'1.200.000', 1, N'Giày Nike Air Force 1 Low Gore Tex ‘Olive Black’ Likeauth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của Giày Nike Air Force 1 Low Gore Tex ‘Olive Black’ Likeauth tại TyHi Sneaker (bản da xịn đẹp nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (68, N'giay-nike-air-force-1-gucci-son-tung-ban-2023-likeauth.jpg', N'Giày Nike Air Force 1 Gucci Sơn Tùng Bản 2023 Likeauth', N'2.200.000', N'2.000.000', 1, N'Giày Nike Air Force 1 Gucci Sơn Tùng Bản 2023 Likeauth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của Giày Nike Air Force 1 Gucci Sơn Tùng Bản 2023 Likeauth tại TyHi Sneaker (bản da xịn đẹp nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (69, N'giay-jd1-paris-ban-trung-cuc-net-11-9.jpeg', N' Giày Jd1 Paris Bản Trung Cực Nét 1:1', N'900.000', N'810.000', 1, N'Giày Jd1 Paris Bản Trung Cực Nét 1:1 với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Jd1 Paris Bản Trung Cực Nét 1:1 tại TyHi Sneaker (hàng chuẩn Trung, bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (70, N'giay-nike-wmns-air-jordan-1-low-panda-dc0774-100-size-38-5-63a264231d44a-21122022084051.jpg', N'Giày Nike Wmns Air Jordan 1 Low ‘Panda’ Like Auth', N'1.500.000', N'1.300.000', 1, N'Giày Nike Wmns Air Jordan 1 Low ‘Panda’ Like Auth với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Nike Wmns Air Jordan 1 Low ‘Panda’ Like Auth tại TyHi Sneaker (hàng chuẩn likeauth bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (71, N'giay-adidas-superstar-adifom-den-sieu-cap.jpg', N' Giày Adidas Superstar Adifom Đen Siêu Cấp', N'900.000', N'810.000', 2, N'Giày Adidas Superstar Adifom Đen Siêu Cấp với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Giày Adidas Superstar Adifom Đen Siêu Cấp với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (72, N'giay-adidas-originals-forum-84-low-og-noble-green-sieu-cap.jpg', N'Giày Adidas Originals Forum 84 Low OG Noble Green Siêu Cấp', N'1.200.000', N'1.199.000', 2, N'Giày Adidas Originals Forum 84 Low OG Noble Green Siêu Cấp với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Bảng nâng cấp 2023 Boost nén cực êm, đi như trên mây nên rất phù hợp cho các bạn thích sự thoải mái, nhẹ nhàng, chạy bộ thì không thể bỏ lỡ mẫu này được.', N'Giày Adidas Originals Forum 84 Low OG Noble Green Siêu Cấp với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Bảng nâng cấp 2023 Boost nén cực êm, đi như trên mây nên rất phù hợp cho các bạn thích sự thoải mái, nhẹ nhàng, chạy bộ thì không thể bỏ lỡ mẫu này được.', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (73, N'z3944009663948_356966b9cb0474b2567a8400a0b39cef-1.jpg', N'Adidas Ub 7.0 Xám', N'1.850.000', N'1.500.000', 2, N'Adidas Ub 7.0 Xám, với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giàyAdidas Ub 7.0 Xám, tại TyHi Sneaker (hàng chuẩn 1:1, bản xịn nhất thị trường)', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (74, N'giay-adidas-alphabounce-instinct-m-white-red-blue-1.jpeg', N'Giày Adidas Alphabounce Instinct M White Red Blue', N'1.700.000', N'1.520.000', 2, N'Giày Adidas Alphabounce Instinct M White Red Blue, với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Adidas Alphabounce Instinct M White Red Blue, tại TyHi Sneaker (hàng chuẩn 1:1, bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (75, N'830814d4df7d03235a6c.jpg', N'Giày MLB Liner High NY ‘White Black’ (QUAI DÁN)', N'1.500.000', N'1.300.000', 3, N'Giày MLB Liner High NY ‘White Black’ (QUAI DÁN) với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày MLB Liner High NY ‘White Black’ (QUAI DÁN) tại TyHi Sneaker (hàng chuẩn Siêu cấp bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (76, N'giay-mlb-chunky-liner-new-york-yankees-white-green-cao-cap.jpeg', N' Giày MLB Chunky Liner New York Yankees ‘White Green’ Cao Cấp', N'1.700.000', N'1.520.000', 3, N'Giày MLB Chunky Liner New York Yankees ‘White Green’ Cao Cấp, với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày MLB Chunky Liner New York Yankees ‘White Green’ Cao Cấp, tại TyHi Sneaker (hàng chuẩn 1:1, bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (77, N'giay-mlb-ny-chunky-high-black-32shu1111-50l-1jpg.jpg', N'MLB NY CAO ĐEN 1:1', N'1.450.000', N'1.399.000', 3, N'MLB NY CAO ĐEN 1:1 với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'MLB NY CAO ĐEN 1:1 với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (78, N'dsc4073.jpg', N' GIÀY MLB NY ĐEN 1:1 TRUNG', N'1.350.000', N'1.150.000', 3, N'GIÀY MLB NY ĐEN 1:1 TRUNG, với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giày MLB NY ĐEN 1:1 TRUNG , tại TyHi Sneaker (hàng chuẩn 1:1, bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (79, N'giay-converse-chuck-taylor-all-star-1970s-hi-top-sieu-cap.jpg', N' Giày Converse Chuck Taylor All Star 1970s Hi Top Siêu Cấp', N'1.103.200', N'1.200.000', 4, N'Giày Converse Chuck Taylor All Star 1970s Hi Top Siêu Cấp với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của Giày Converse Chuck Taylor All Star 1970s Hi Top Siêu Cấp tại TyHi Sneaker (bản da xịn đẹp nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (80, N'giay-converse-run-star-hike-hi-jw-anderson-black-dep-chat.jpeg', N' Giày Converse Run Star Hike Hi JW Anderson Black', N'1.200.000', N'1.000.000', 4, N'Giày Converse Run Star Hike Hi JW Anderson Black với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi giày Converse Run Star Hike Hi JW Anderson Black, tại TyHi Sneaker (hàng chuẩn siêu cấp bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (81, N'giay-converse-1970s.jpg', N' Giày Converse Chuck Taylor All Star 1970s Low Top Siêu Cấp', N'750.000', N'510.000', 4, N'Giày Converse Chuck Taylor All Star 1970s Low Top Siêu Cấp với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Và nếu bạn cũng là một người đam mê dòng sneaker dễ mang, dễ phố đồ thì không nên bỏ qua mẫu giày siêu phẩm này đâu nhé! Dưới đây là một số hình ảnh của đôi Giày Converse Chuck Taylor All Star 1970s Low Top Siêu Cấp tại TyHi Sneaker (hàng Trung chuẩn Siêu cấp, bản xịn nhất thị trường).', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (82, N'giay-converse-run-star-hike-high-white-trang-co-cao-4.jpg', N' Giày Converse Run Star Hike High ‘White’ Trắng cổ cao', N'1.500.000', N'1.300.000', 4, N'Giày Converse Run Star Hike High ‘White’ Trắng cổ cao , với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', N'Giày Converse Run Star Hike High ‘White’ Trắng cổ cao , với thiết kế đẹp, tinh tế & màu sắc vô cùng dễ phối đồ. Vậy nên đôi giày này trở nên phổ biến, mang tính biểu tượng và được rất nhiều giới trẻ yêu thích.', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (83, N'nai kỳ.jpg', N'Nike 1', N'1', N'1', 1, N'1111111', N'111', NULL)
INSERT [dbo].[SANPHAM] ([IdSanPham], [HinhSP], [TenSP], [GiaGoc], [GiaSP], [IdDM], [MoTa], [ChiTietSP], [Notes]) VALUES (84, N'giay-mlb-ny-chunky-high-black-32shu1111-50l-1jpg.jpg', N'123', N'abc', N'abckk', 1, N'kkk', N'kkkk', NULL)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
SET IDENTITY_INSERT [dbo].[TAIKHOAN] ON 

INSERT [dbo].[TAIKHOAN] ([IdTaiKhoan], [Username], [Password]) VALUES (1, N'Admin', N'admin     ')
INSERT [dbo].[TAIKHOAN] ([IdTaiKhoan], [Username], [Password]) VALUES (2, N'vanzxje', N'12345     ')
SET IDENTITY_INSERT [dbo].[TAIKHOAN] OFF
SET IDENTITY_INSERT [dbo].[TINTUC] ON 

INSERT [dbo].[TINTUC] ([IdNews], [TieuDe], [MoTa], [NoiDung], [ImagePath]) VALUES (18, N'Sức ép của Biti''s sau năm vụt sáng', N'', N' Sau năm 2019 đạt đỉnh, một phần nhờ chiến dịch marketing thành công, doanh thu của Biti''s sụt giảm trong hai năm đại dịch và đến nay, theo công ty, “đang tăng trở lại”.', N'-4839-1664767902.jpg')
INSERT [dbo].[TINTUC] ([IdNews], [TieuDe], [MoTa], [NoiDung], [ImagePath]) VALUES (19, N'Giày phân hủy sinh học làm thức ăn cho sinh vật biển', N'', N'Giày làm từ vật liệu polyurethane bắt đầu phân hủy chỉ sau 4 tuần dưới nước, giúp giải quyết vấn đề ô nhiễm của các đại dương trên thế giới.', N'-8753-1663994698.jpg')
INSERT [dbo].[TINTUC] ([IdNews], [TieuDe], [MoTa], [NoiDung], [ImagePath]) VALUES (20, N'Cách lưu trữ giày dép ngăn nắp', N'', N'Khu vực để giày dép thường lộn xộn nhất trong nhà, bởi chúng là những món đồ khó sắp xếp sao cho thật gọn và dễ tìm. Dưới đây là một số gợi ý về cách lưu trữ giày dép thông minh mà bạn có thể tham khảo.', N'cach-luu-tru-giay-dep-ngan-nap-1-1656315576.jpg')
INSERT [dbo].[TINTUC] ([IdNews], [TieuDe], [MoTa], [NoiDung], [ImagePath]) VALUES (21, N'Có nên cởi giày dép trước khi vào nhà?', N'', N'Có nên cởi giày dép trước khi vào nhà?', N'fa486c548e9cfe24a117e04e94-9597-1639897715.jpg')
SET IDENTITY_INSERT [dbo].[TINTUC] OFF
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_DANHMUCSP] FOREIGN KEY([IdDM])
REFERENCES [dbo].[DANHMUCSP] ([IdDanhMuc])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SANPHAM_DANHMUCSP]
GO
USE [master]
GO
ALTER DATABASE [WebApp] SET  READ_WRITE 
GO
