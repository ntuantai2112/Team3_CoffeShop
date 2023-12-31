USE [master]
GO
/****** Object:  Database [COFFEESHOP_DA1]    Script Date: 7/11/2023 8:50:41 PM ******/
CREATE DATABASE [COFFEESHOP_DA1]
GO
USE [COFFEESHOP_DA1]
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](10) NULL,
	[Ten] [nvarchar](10) NULL,
 CONSTRAINT [PK_Ban] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaLamViec]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaLamViec](
	[Id] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CapBac]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapBac](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[LuongPartime] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChamCong]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChamCong](
	[Id] [uniqueidentifier] NOT NULL,
	[IdNV] [uniqueidentifier] NULL,
	[Ngay] [date] NULL,
	[CaLamViec] [varchar](10) NULL,
	[GioVao] [time](7) NULL,
	[GioRa] [time](7) NULL,
 CONSTRAINT [PK_ChamCong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDoUong]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDoUong](
	[Id] [uniqueidentifier] NOT NULL,
	[IdLoaiDoUong] [uniqueidentifier] NULL,
	[TenDoUong] [nchar](10) NULL,
	[MoTa] [nvarchar](50) NULL,
	[GiaNhap] [decimal](20, 0) NULL,
	[GiaBan] [decimal](20, 0) NULL,
	[HinhAnh] [image] NULL,
	[MaGIamGia] [varchar](20) NULL,
 CONSTRAINT [PK__ChiTietS__3214EC0711508818] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiamGia]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiamGia](
	[MaGiamGia] [varchar](20) NOT NULL,
	[PhamTram] [float] NULL,
	[MoTa] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiamGia] PRIMARY KEY CLUSTERED 
(
	[MaGiamGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [uniqueidentifier] NOT NULL,
	[IdBan] [uniqueidentifier] NULL,
	[IdKH] [uniqueidentifier] NULL,
	[IdNV] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[NgayTao] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[TinhTrang] [int] NULL,
	[MaGiamGia] [varchar](20) NULL,
 CONSTRAINT [PK__HoaDon__3214EC0797507F85] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__HoaDon__3214CC9E38243EAD] UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[IdHoaDon] [uniqueidentifier] NOT NULL,
	[IdChiTietDoUong] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](20, 0) NULL,
 CONSTRAINT [PK_HoaDonCT] PRIMARY KEY CLUSTERED 
(
	[IdHoaDon] ASC,
	[IdChiTietDoUong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ho] [nvarchar](30) NULL,
	[NgaySinh] [date] NULL,
	[Sdt] [varchar](30) NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDoUong]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDoUong](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Luong]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Luong](
	[Id] [uniqueidentifier] NOT NULL,
	[IdNV] [uniqueidentifier] NULL,
	[Thang] [varchar](10) NULL,
 CONSTRAINT [PK_Luong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ho] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[MatKhau] [varchar](max) NULL,
	[IdCB] [uniqueidentifier] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapKho]    Script Date: 7/11/2023 8:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapKho](
	[Id] [uniqueidentifier] NOT NULL,
	[IdNV] [uniqueidentifier] NULL,
	[TenSP] [nvarchar](50) NULL,
	[NgayNhap] [date] NULL,
	[DonVi] [nvarchar](20) NULL,
	[SoLuong] [float] NULL,
	[DonGia] [money] NULL,
 CONSTRAINT [PK_NhapKho] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CapBac] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CapBac] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[ChiTietDoUong] ADD  CONSTRAINT [DF__ChiTietSP__Id__7F2BE32F]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChiTietDoUong] ADD  CONSTRAINT [DF__ChiTietSP__MoTa__01142BA1]  DEFAULT (NULL) FOR [MoTa]
GO
ALTER TABLE [dbo].[ChiTietDoUong] ADD  CONSTRAINT [DF__ChiTietSP__GiaNh__02084FDA]  DEFAULT ((0)) FOR [GiaNhap]
GO
ALTER TABLE [dbo].[ChiTietDoUong] ADD  CONSTRAINT [DF__ChiTietSP__GiaBa__02FC7413]  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [ThanhPho]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [QuocGia]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__Id__5BE2A6F2]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__NgayTao__5CD6CB2B]  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__NgayThan__5DCAEF64]  DEFAULT (NULL) FOR [NgayThanhToan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF__HoaDon__TinhTran__60A75C0F]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [TenDem]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Ho]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[LoaiDoUong] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [TenDem]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Ho]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [MatKhau]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[NhapKho] ADD  CONSTRAINT [DF_NhapKho_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChamCong]  WITH CHECK ADD  CONSTRAINT [FK_ChamCong_NhanVien] FOREIGN KEY([IdNV])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[ChamCong] CHECK CONSTRAINT [FK_ChamCong_NhanVien]
GO
ALTER TABLE [dbo].[ChiTietDoUong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDoUong_LoaiDoUong] FOREIGN KEY([IdLoaiDoUong])
REFERENCES [dbo].[LoaiDoUong] ([Id])
GO
ALTER TABLE [dbo].[ChiTietDoUong] CHECK CONSTRAINT [FK_ChiTietDoUong_LoaiDoUong]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__IdKH__114A936A] FOREIGN KEY([IdKH])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__IdKH__114A936A]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK__HoaDon__IdNV__1332DBDC] FOREIGN KEY([IdNV])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK__HoaDon__IdNV__1332DBDC]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Ban] FOREIGN KEY([IdBan])
REFERENCES [dbo].[Ban] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Ban]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_GiamGia] FOREIGN KEY([MaGiamGia])
REFERENCES [dbo].[GiamGia] ([MaGiamGia])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_GiamGia]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK1] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK1]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK2] FOREIGN KEY([IdChiTietDoUong])
REFERENCES [dbo].[ChiTietDoUong] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK2]
GO
ALTER TABLE [dbo].[Luong]  WITH CHECK ADD  CONSTRAINT [FK_Luong_NhanVien] FOREIGN KEY([IdNV])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[Luong] CHECK CONSTRAINT [FK_Luong_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IdCB])
REFERENCES [dbo].[CapBac] ([Id])
GO
ALTER TABLE [dbo].[NhapKho]  WITH CHECK ADD  CONSTRAINT [FK_NhapKho_NhanVien] FOREIGN KEY([IdNV])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[NhapKho] CHECK CONSTRAINT [FK_NhapKho_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [COFFEESHOP_DA1] SET  READ_WRITE 
GO
