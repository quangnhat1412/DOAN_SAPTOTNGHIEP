USE [QLNH_ASP]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 4/2/2023 1:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[MaBan] [int] IDENTITY(1,1) NOT NULL,
	[TinhTrang] [bit] NULL,
	[MaDat] [int] NULL,
 CONSTRAINT [PK_Table_2] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHoaDon]    Script Date: 4/2/2023 1:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHoaDon](
	[MaDat] [int] NOT NULL,
	[MaMA] [varchar](3) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_Cthd] PRIMARY KEY CLUSTERED 
(
	[MaDat] ASC,
	[MaMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatBan]    Script Date: 4/2/2023 1:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatBan](
	[MaDat] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[SoLuongBanDat] [int] NULL,
	[NgayDat] [datetime] NULL,
	[NgayHetHan] [datetime] NULL,
 CONSTRAINT [PK_OrderDate] PRIMARY KEY CLUSTERED 
(
	[MaDat] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/2/2023 1:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaDat] [int] NOT NULL,
	[NgayXuatHD] [datetime] NULL,
	[TraChua] [bit] NULL,
	[MaNV] [varchar](3) NULL,
	[TongHD] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/2/2023 1:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[LaNam] [bit] NULL,
	[SDT] [char](10) NULL,
	[TraTruoc] [int] NULL,
 CONSTRAINT [PK_Usẻ] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 4/2/2023 1:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MaMA] [varchar](3) NOT NULL,
	[MaPL] [varchar](3) NULL,
	[TenMA] [nvarchar](100) NULL,
	[DonGiaSP] [int] NULL,
	[HinhAnh] [nchar](10) NULL,
	[MieuTa] [nvarchar](max) NULL,
	[CoSan] [bit] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MaMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/2/2023 1:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](3) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[LaNam] [bit] NULL,
	[SĐT] [char](10) NULL,
	[NamSinh] [datetime] NULL,
	[DiaChi] [nvarchar](max) NULL,
	[CMND] [char](12) NULL,
	[Email] [varchar](100) NULL,
	[TenDangNhap] [varchar](20) NULL,
	[Password] [varchar](50) NULL,
	[IsAdmin] [bit] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanLoai]    Script Date: 4/2/2023 1:56:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoai](
	[MaPL] [varchar](3) NOT NULL,
	[TenPL] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhanLoai] PRIMARY KEY CLUSTERED 
(
	[MaPL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ban] ON 

INSERT [dbo].[Ban] ([MaBan], [TinhTrang], [MaDat]) VALUES (1, 1, 1)
INSERT [dbo].[Ban] ([MaBan], [TinhTrang], [MaDat]) VALUES (2, 0, NULL)
INSERT [dbo].[Ban] ([MaBan], [TinhTrang], [MaDat]) VALUES (3, 1, 3)
INSERT [dbo].[Ban] ([MaBan], [TinhTrang], [MaDat]) VALUES (4, 1, 3)
INSERT [dbo].[Ban] ([MaBan], [TinhTrang], [MaDat]) VALUES (5, 0, NULL)
INSERT [dbo].[Ban] ([MaBan], [TinhTrang], [MaDat]) VALUES (6, 1, 2)
INSERT [dbo].[Ban] ([MaBan], [TinhTrang], [MaDat]) VALUES (7, 0, NULL)
INSERT [dbo].[Ban] ([MaBan], [TinhTrang], [MaDat]) VALUES (8, 1, 4)
INSERT [dbo].[Ban] ([MaBan], [TinhTrang], [MaDat]) VALUES (9, 1, 4)
SET IDENTITY_INSERT [dbo].[Ban] OFF
GO
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (1, N'A2', 10, 150000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (1, N'B1', 2, 20000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (1, N'K1', 4, 8000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (1, N'L1', 1, 200000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (1, N'N2', 1, 220000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (1, N'X2', 1, 50000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (2, N'A2', 5, 75000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (2, N'B2', 2, 20000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (2, N'K2', 2, 20000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (2, N'L2', 1, 150000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (2, N'N2', 1, 170000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (3, N'A2', 15, 225000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (3, N'B1', 2, 20000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (3, N'B2', 2, 20000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (3, N'D3', 2, NULL)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (3, N'D5', 1, NULL)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (3, N'K1', 8, 16000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (3, N'X1', 1, 30000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (3, N'X2', 1, 50000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (4, N'A2', 20, 300000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (4, N'B1', 6, 60000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (4, N'D1', 1, 30000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (4, N'L2', 1, 15000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (4, N'N2', 1, NULL)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (4, N'N3', 1, 430000)
INSERT [dbo].[CTHoaDon] ([MaDat], [MaMA], [SoLuong], [DonGia]) VALUES (4, N'X2', 1, 50000)
GO
SET IDENTITY_INSERT [dbo].[DatBan] ON 

INSERT [dbo].[DatBan] ([MaDat], [MaKH], [SoLuongBanDat], [NgayDat], [NgayHetHan]) VALUES (1, 1, 1, CAST(N'2023-03-09T00:00:00.000' AS DateTime), CAST(N'2023-03-09T00:00:00.000' AS DateTime))
INSERT [dbo].[DatBan] ([MaDat], [MaKH], [SoLuongBanDat], [NgayDat], [NgayHetHan]) VALUES (2, 2, 1, CAST(N'2023-03-07T00:00:00.000' AS DateTime), CAST(N'2023-03-07T00:00:00.000' AS DateTime))
INSERT [dbo].[DatBan] ([MaDat], [MaKH], [SoLuongBanDat], [NgayDat], [NgayHetHan]) VALUES (3, 3, 2, CAST(N'2023-03-08T00:00:00.000' AS DateTime), CAST(N'2023-03-09T00:00:00.000' AS DateTime))
INSERT [dbo].[DatBan] ([MaDat], [MaKH], [SoLuongBanDat], [NgayDat], [NgayHetHan]) VALUES (4, 4, 2, CAST(N'2023-03-09T00:00:00.000' AS DateTime), CAST(N'2023-03-09T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DatBan] OFF
GO
INSERT [dbo].[HoaDon] ([MaDat], [NgayXuatHD], [TraChua], [MaNV], [TongHD]) VALUES (1, CAST(N'2023-03-09T00:00:00.000' AS DateTime), 1, N'E1', NULL)
INSERT [dbo].[HoaDon] ([MaDat], [NgayXuatHD], [TraChua], [MaNV], [TongHD]) VALUES (2, CAST(N'2023-03-07T00:00:00.000' AS DateTime), 1, N'E2', NULL)
INSERT [dbo].[HoaDon] ([MaDat], [NgayXuatHD], [TraChua], [MaNV], [TongHD]) VALUES (3, CAST(N'2023-03-09T00:00:00.000' AS DateTime), 0, N'E3', NULL)
INSERT [dbo].[HoaDon] ([MaDat], [NgayXuatHD], [TraChua], [MaNV], [TongHD]) VALUES (4, CAST(N'2023-03-09T00:00:00.000' AS DateTime), 1, N'E4', NULL)
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [LaNam], [SDT], [TraTruoc]) VALUES (1, N'
Nguyễn Trường Xuân', 1, N'0934335665', 300000)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [LaNam], [SDT], [TraTruoc]) VALUES (2, N'
Đặng Văn Hùng', 1, N'0382485743', 100000)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [LaNam], [SDT], [TraTruoc]) VALUES (3, N'
Lâm Anh Thư', 0, N'0333565773', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [LaNam], [SDT], [TraTruoc]) VALUES (4, N'
Trần Hải Nam Anh', 0, N'0834324582', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'A1', N'2', N'Rượu Vokca', 15000, N'A1.jpg    ', N'', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'A2', N'2', N'Bia Tiger', 15000, N'A2.jpg    ', N'', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'B1', N'2', N'Coca', 10000, N'B1.jpg    ', N'', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'B2', N'2', N'Nước suối', 10000, N'B2.jpg    ', N'', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'D1', N'3', N'Trái Cây', 30000, N'D1.jpg    ', N'', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'D2', N'3', N'Bánh Plan', 20000, N'D2.jpg    ', N'', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'D3', N'3', N'Bánh Ngọt', 20000, N'D3.jpg    ', N'Bánh ngọt giải tỏa tâm trạng', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'D4', N'3', N'Rau Câu', 15000, N'D4.jpg    ', N'Rau câu mềm dẻo', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'D5', N'3', N'Sữa chua', 15000, N'D5.jpg    ', N'Sữa chua ngọt mềm dẻo', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'K1', N'4', N'Khăn Lạnh', 2000, N'          ', N'', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'K2', N'4', N'Bún thêm', 10000, N'          ', N'', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'L1', N'1', N'Lẩu Kim Chi Hải Sản', 200000, N'L1.jpg    ', N'Lẩu kim chi là Lẩu kim chi là món ăn được nhiều người yêu thích và “săn lùng”, nhất là vào những người trời se lạnh. Còn gì bằng khi cùng cả gia đình quây quần bên nồi lẩu cay nồng nghi ngút khói', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'L2', N'1', N'Lẩu Cá Tằm', 150000, N'L2.jpg    ', N'Một phần lẩu sẽ có một dĩa cá tầm, rau xanh, mì gói. Tiết trời xe lạnh xì xụp miếng lẩu cá thì còn gì bằng.', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'N1', N'1', N'Gà Nướng Muối Ớt', 170000, N'N1.jpg    ', N'Thịt gà nướng thường được tẩm gia vị hoặc phủ trong một lớp gia vị, hỗn hợp nước sốt thịt nướng, hoặc cả hai, cũng có thể một số nơi chỉ nướng không. Nước xốt cũng được sử dụng để làm mềm thịt và thêm đậm đà hương vị.', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'N2', N'1', N'Vịt Quay', 220000, N'N3.jpg    ', N'Vịt quay có những hương vị rất riêng, tạo sức hút khiến nhiều người không thể cưỡng lại. Da vịt vàng ươm óng ánh với vị giòn tan trong miệng khi thưởng thức', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'N3', N'1', N'Heo Nướng', 430000, N'N2.jpg    ', N'Thịt heo quay giòn bì sau khi hoàn tất sẽ có lớp bì vàng thơm, giòn rụm hấp dẫn hòa cùng lớp thịt ba chỉ mềm ngon.Bạn cắt nhỏ thịt heo quay ra, ăn cùng với rau sống và chấm ăn nước tương tỏi ớt hoặc nước mắm chua ngọt thì hết sẩy!', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'X1', N'1', N'Mướp Đắng Xào Trứng', 30000, N'X1.jpg    ', N'Mướp đắng giúp thanh nhiệt, giải độc, trị mụn rất tốt cho sức khỏe. Tuy nhiên, người bị huyết áp thấp không nên sử dụng nhiều vì làmgiảm huyết áp, hạ đường trong máu.', 1)
INSERT [dbo].[Menu] ([MaMA], [MaPL], [TenMA], [DonGiaSP], [HinhAnh], [MieuTa], [CoSan]) VALUES (N'X2', N'1', N'Bò Xào Lăn', 50000, N'X2.jpg    ', N'Đây là món ăn nóng thích hợp trong những ngày trời đông lạnh. Bò xào lăn từ dầu hào có hương vị hấp dẫn bởi sự hòa quyện tuyệt vời giữa độ mềm ngọt của thịt cùng vị tươi mát của rau củ.', 1)
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [LaNam], [SĐT], [NamSinh], [DiaChi], [CMND], [Email], [TenDangNhap], [Password], [IsAdmin]) VALUES (N'E1', N'Hồng Cúc', 0, N'0332458433', CAST(N'2000-03-02T00:00:00.000' AS DateTime), N'34 CMT8, Quận Tân Bình, TP.HCM', N'043938483924', N'cuc23@gmail.com', N'Cuccute23', N'1234', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [LaNam], [SĐT], [NamSinh], [DiaChi], [CMND], [Email], [TenDangNhap], [Password], [IsAdmin]) VALUES (N'E2', N'Hùng Thanh', 1, N'0735678434', CAST(N'1999-02-12T00:00:00.000' AS DateTime), N'1 Hai Bà Trưng, Quận 3, TP.HCM', N'043438978689', N'thanh12@gmail.com', N'Thanhcute12', N'1234', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [LaNam], [SĐT], [NamSinh], [DiaChi], [CMND], [Email], [TenDangNhap], [Password], [IsAdmin]) VALUES (N'E3', N'Ngọc Kiều', 0, N'0435624656', CAST(N'1999-03-20T00:00:00.000' AS DateTime), N'23 Nguyễn Xí, Quận Bình Thạnh, TP.HCM', N'042567565445', N'kieu38@gmail.com', N'Kieucute38', N'2345', 1)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [LaNam], [SĐT], [NamSinh], [DiaChi], [CMND], [Email], [TenDangNhap], [Password], [IsAdmin]) VALUES (N'E4', N'Thanh Ngân', 0, N'0865357756', CAST(N'2000-05-17T00:00:00.000' AS DateTime), N'98, Nguyễn Thông, Quận 3, TP.HCM', N'041578555768', N'ngan47@gmail.com', N'Ngancute47', N'5432', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [LaNam], [SĐT], [NamSinh], [DiaChi], [CMND], [Email], [TenDangNhap], [Password], [IsAdmin]) VALUES (N'E5', N'Hoài Nam', 1, N'0439674687', CAST(N'1998-08-30T00:00:00.000' AS DateTime), N'52, Lý Thái Tổ, Quận 5, TP.HCM', N'041457578453', N'nam63@gmail.com', N'Namcute63', N'3456', 1)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [LaNam], [SĐT], [NamSinh], [DiaChi], [CMND], [Email], [TenDangNhap], [Password], [IsAdmin]) VALUES (N'E6', N'Ngọc Hiếu', 1, N'0484535654', CAST(N'1999-11-25T00:00:00.000' AS DateTime), N'4 Phan Văn Đối, Hóc Môn, TP.HCM', N'042457687478', N'hieu94@gmail.com', N'Hieucute94', N'6543', 0)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [LaNam], [SĐT], [NamSinh], [DiaChi], [CMND], [Email], [TenDangNhap], [Password], [IsAdmin]) VALUES (N'E7', N'Tuấn Kiệt', 1, N'0422785895', CAST(N'1998-09-23T00:00:00.000' AS DateTime), N'12 Phan Văn Trị, Gò Vấp, TP.HCM', N'048478546764', N'kiet86@gmail.com', N'Kietcute86', N'4567', 0)
GO
INSERT [dbo].[PhanLoai] ([MaPL], [TenPL]) VALUES (N'1', N'Thức Ăn')
INSERT [dbo].[PhanLoai] ([MaPL], [TenPL]) VALUES (N'2', N'Nước Uống')
INSERT [dbo].[PhanLoai] ([MaPL], [TenPL]) VALUES (N'3', N'Tráng Miệng')
INSERT [dbo].[PhanLoai] ([MaPL], [TenPL]) VALUES (N'4', N'Khác')
GO
ALTER TABLE [dbo].[CTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CTHoaDon_Menu] FOREIGN KEY([MaMA])
REFERENCES [dbo].[Menu] ([MaMA])
GO
ALTER TABLE [dbo].[CTHoaDon] CHECK CONSTRAINT [FK_CTHoaDon_Menu]
GO
ALTER TABLE [dbo].[DatBan]  WITH CHECK ADD  CONSTRAINT [FK_DatBan_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DatBan] CHECK CONSTRAINT [FK_DatBan_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_PhanLoai] FOREIGN KEY([MaPL])
REFERENCES [dbo].[PhanLoai] ([MaPL])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_PhanLoai]
GO
