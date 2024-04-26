CREATE DATABASE [QLBanQuanAo]
USE [QLBanQuanAo]
GO
/****** Object:  Table [dbo].[tAnhChiTietSP]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tAnhChiTietSP](
	[MaChiTietSP] [char](25) NOT NULL,
	[TenFileAnh] [char](100) NOT NULL,
	[ViTri] [smallint] NULL,
 CONSTRAINT [PK_tAnhChiTietSP] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSP] ASC,
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tAnhSP]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tAnhSP](
	[MaSP] [char](25) NOT NULL,
	[TenFileAnh] [char](100) NOT NULL,
	[ViTri] [smallint] NULL,
 CONSTRAINT [PK_tAnhSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChatLieu]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChatLieu](
	[MaChatLieu] [char](25) NOT NULL,
	[ChatLieu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tChatLieu] PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietHDB]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietHDB](
	[MaHoaDon] [char](25) NOT NULL,
	[MaChiTietSP] [char](25) NOT NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaBan] [money] NULL,
	[GiamGia] [float] NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietSanPham]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietSanPham](
	[MaChiTietSP] [char](25) NOT NULL,
	[MaSP] [char](25) NULL,
	[MaKichThuoc] [char](25) NULL,
	[MaMauSac] [char](25) NULL,
	[AnhDaiDien] [char](100) NULL,
	[Video] [char](100) NULL,
	[DonGiaBan] [float] NULL,
	[GiamGia] [float] NULL,
	[SLTon] [int] NULL,
 CONSTRAINT [PK_tChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[MaChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tDanhMucSP]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tDanhMucSP](
	[MaSP] [char](25) NOT NULL,
	[TenSP] [nvarchar](150) NULL,
	[MaChatLieu] [char](25) NULL,
	[NganLapTop] [nvarchar](55) NULL,
	[Model] [nvarchar](55) NULL,
	[CanNang] [float] NULL,
	[DoNoi] [float] NULL,
	[MaHangSX] [char](25) NULL,
	[MaNuocSX] [char](25) NULL,
	[MaDacTinh] [char](25) NULL,
	[Website] [char](155) NULL,
	[ThoiGianBaoHanh] [float] NULL,
	[GioiThieuSP] [nvarchar](255) NULL,
	[ChietKhau] [float] NULL,
	[MaLoai] [char](25) NULL,
	[MaDT] [char](25) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GiaNhoNhat] [money] NULL,
	[GiaLonNhat] [money] NULL,
 CONSTRAINT [PK_tDanhMucSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHangSX]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHangSX](
	[MaHangSX] [char](25) NOT NULL,
	[HangSX] [nvarchar](100) NULL,
	[MaNuocThuongHieu] [char](25) NULL,
 CONSTRAINT [PK_tHangSX] PRIMARY KEY CLUSTERED 
(
	[MaHangSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHoaDonBan]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHoaDonBan](
	[MaHoaDon] [char](25) NOT NULL,
	[NgayHoaDon] [datetime] NULL,
	[MaKhachHang] [char](25) NULL,
	[MaNhanVien] [char](25) NULL,
	[TongTienHD] [money] NULL,
	[GiamGiaHD] [float] NULL,
	[PhuongThucThanhToan] [tinyint] NULL,
	[MaSoThue] [char](100) NULL,
	[ThongTinThue] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKhachHang]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKhachHang](
	[MaKhanhHang] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[LoaiKhachHang] [tinyint] NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhanhHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKichThuoc]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKichThuoc](
	[MaKichThuoc] [char](25) NOT NULL,
	[KichThuoc] [nchar](150) NULL,
 CONSTRAINT [PK_tKichThuoc] PRIMARY KEY CLUSTERED 
(
	[MaKichThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiDT]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiDT](
	[MaDT] [char](25) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiDT] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiSP]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiSP](
	[MaLoai] [char](25) NOT NULL,
	[Loai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tMauSac]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tMauSac](
	[MaMauSac] [char](25) NOT NULL,
	[TenMauSac] [nvarchar](100) NULL,
 CONSTRAINT [PK_tMauSac] PRIMARY KEY CLUSTERED 
(
	[MaMauSac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tNhanVien]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tNhanVien](
	[MaNhanVien] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[TenNhanVien] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai1] [char](15) NULL,
	[SoDienThoai2] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[ChucVu] [nvarchar](100) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tQuocGia]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tQuocGia](
	[MaNuoc] [char](25) NOT NULL,
	[TenNuoc] [nvarchar](100) NULL,
 CONSTRAINT [PK_tQuocGia] PRIMARY KEY CLUSTERED 
(
	[MaNuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tUser]    Script Date: 10/4/2023 3:21:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUser](
	[username] [char](100) NOT NULL,
	[password] [char](256) NOT NULL,
	[LoaiUser] [tinyint] NULL,
 CONSTRAINT [PK_tUser] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES
(N'dadavakhtslencl',  N'Áo sơ mi nam', N'v', NULL, NULL, 3.8, 5, N'rbh', N'dc ', NULL, NULL, 3, N'Chịu v', NULL, N'AO ', N'dl ', N'ao-so-mi-nam.jpg', 2000000.0000, 2500000.0000),
(N'gicaditocalencl ', N'Quần jeans nam', N'v', NULL, NULL, 3.8, 5, NULL, N'my ', NULL, NULL, 5, N'', NULL, N'Quan ', N'nd', N'quan-jeans-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gokecogelamacode', N'Giày thể thao nam', N'n', NULL, NULL, 3.8, 5, N'rbh ', N'dc ', NULL, NULL, 3, N'Chịu ', NULL, N'Giay', N'dl ', N'giay-the-thao-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gokecohicalencl', N'Mũ nón', N'v', NULL, NULL, 3.8, 5, N'rbh', N'ita ', NULL, NULL, 3, N'C', NULL, N'PK ', N'dn', N'muAD.png ', 2000000.0000, 2500000.0000)

INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES
(N'dadavakhtslenc2',  N'Áo sơ mi nam', N'v', NULL, NULL, 3.8, 5, N'rbh', N'dc ', NULL, NULL, 3, N'Chịu v', NULL, N'AO ', N'dl ', N'ao-so-mi-nam.jpg', 2000000.0000, 2500000.0000),
(N'dadavakhtslenc3',  N'Áo sơ mi nam', N'v', NULL, NULL, 3.8, 5, N'rbh', N'dc ', NULL, NULL, 3, N'Chịu v', NULL, N'AO ', N'dl ', N'ao-so-mi-nam.jpg', 2000000.0000, 2500000.0000),
(N'dadavakhtslenc4',  N'Áo sơ mi nam', N'v', NULL, NULL, 3.8, 5, N'rbh', N'dc ', NULL, NULL, 3, N'Chịu v', NULL, N'AO ', N'dl ', N'ao-so-mi-nam.jpg', 2000000.0000, 2500000.0000),
(N'dadavakhtslenc5',  N'Áo sơ mi nam', N'v', NULL, NULL, 3.8, 5, N'rbh', N'dc ', NULL, NULL, 3, N'Chịu v', NULL, N'AO ', N'dl ', N'ao-so-mi-nam.jpg', 2000000.0000, 2500000.0000),
(N'dadavakhtslenc6',  N'Áo sơ mi nam', N'v', NULL, NULL, 3.8, 5, N'rbh', N'dc ', NULL, NULL, 3, N'Chịu v', NULL, N'AO ', N'dl ', N'ao-so-mi-nam.jpg', 2000000.0000, 2500000.0000),
(N'dadavakhtslenc7',  N'Áo sơ mi nam', N'v', NULL, NULL, 3.8, 5, N'rbh', N'dc ', NULL, NULL, 3, N'Chịu v', NULL, N'AO ', N'dl ', N'ao-so-mi-nam.jpg', 2000000.0000, 2500000.0000),
(N'dadavakhtslenc8',  N'Áo sơ mi nam', N'v', NULL, NULL, 3.8, 5, N'rbh', N'dc ', NULL, NULL, 3, N'Chịu v', NULL, N'AO ', N'dl ', N'ao-so-mi-nam.jpg', 2000000.0000, 2500000.0000),
(N'dadavakhtslenc9',  N'Áo sơ mi nam', N'v', NULL, NULL, 3.8, 5, N'rbh', N'dc ', NULL, NULL, 3, N'Chịu v', NULL, N'AO ', N'dl ', N'ao-so-mi-nam.jpg', 2000000.0000, 2500000.0000),
(N'dadavakhtslenc10',  N'Áo sơ mi nam', N'v', NULL, NULL, 3.8, 5, N'rbh', N'dc ', NULL, NULL, 3, N'Chịu v', NULL, N'AO ', N'dl ', N'ao-so-mi-nam.jpg', 2000000.0000, 2500000.0000),
(N'dadavakhtslencl1',  N'Áo sơ mi nam', N'v', NULL, NULL, 3.8, 5, N'rbh', N'dc ', NULL, NULL, 3, N'Chịu v', NULL, N'AO ', N'dl ', N'ao-so-mi-nam.jpg', 2000000.0000, 2500000.0000),
(N'dadavakhtslencl2 ',  N'Áo sơ mi nam', N'v', NULL, NULL, 3.8, 5, N'rbh', N'dc ', NULL, NULL, 3, N'Chịu v', NULL, N'AO ', N'dl ', N'ao-so-mi-nam.jpg', 2000000.0000, 2500000.0000)

INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES
(N'gicaditocalenc2 ', N'Quần jeans nam', N'v', NULL, NULL, 3.8, 5, NULL, N'my ', NULL, NULL, 5, N'', NULL, N'Quan ', N'nd', N'quan-jeans-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gicaditocalenc3 ', N'Quần jeans nam', N'v', NULL, NULL, 3.8, 5, NULL, N'my ', NULL, NULL, 5, N'', NULL, N'Quan ', N'nd', N'quan-jeans-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gicaditocalenc4 ', N'Quần jeans nam', N'v', NULL, NULL, 3.8, 5, NULL, N'my ', NULL, NULL, 5, N'', NULL, N'Quan ', N'nd', N'quan-jeans-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gicaditocalenc5 ', N'Quần jeans nam', N'v', NULL, NULL, 3.8, 5, NULL, N'my ', NULL, NULL, 5, N'', NULL, N'Quan ', N'nd', N'quan-jeans-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gicaditocalenc6 ', N'Quần jeans nam', N'v', NULL, NULL, 3.8, 5, NULL, N'my ', NULL, NULL, 5, N'', NULL, N'Quan ', N'nd', N'quan-jeans-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gicaditocalenc7 ', N'Quần jeans nam', N'v', NULL, NULL, 3.8, 5, NULL, N'my ', NULL, NULL, 5, N'', NULL, N'Quan ', N'nd', N'quan-jeans-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gicaditocalenc8 ', N'Quần jeans nam', N'v', NULL, NULL, 3.8, 5, NULL, N'my ', NULL, NULL, 5, N'', NULL, N'Quan ', N'nd', N'quan-jeans-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gicaditocalenc9 ', N'Quần jeans nam', N'v', NULL, NULL, 3.8, 5, NULL, N'my ', NULL, NULL, 5, N'', NULL, N'Quan ', N'nd', N'quan-jeans-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gicaditocalenc10 ', N'Quần jeans nam', N'v', NULL, NULL, 3.8, 5, NULL, N'my ', NULL, NULL, 5, N'', NULL, N'Quan ', N'nd', N'quan-jeans-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gicaditocalencl1 ', N'Quần jeans nam', N'v', NULL, NULL, 3.8, 5, NULL, N'my ', NULL, NULL, 5, N'', NULL, N'Quan ', N'nd', N'quan-jeans-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gicaditocalenc12 ', N'Quần jeans nam', N'v', NULL, NULL, 3.8, 5, NULL, N'my ', NULL, NULL, 5, N'', NULL, N'Quan ', N'nd', N'quan-jeans-nam.jpg ', 2000000.0000, 2500000.0000)


INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES
(N'gokecogelamacode8', N'Giày thể thao nam', N'n', NULL, NULL, 3.8, 5, N'rbh ', N'dc ', NULL, NULL, 3, N'Chịu ', NULL, N'Giay', N'dl ', N'giay-the-thao-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gokecogelamacode9', N'Giày thể thao nam', N'n', NULL, NULL, 3.8, 5, N'rbh ', N'dc ', NULL, NULL, 3, N'Chịu ', NULL, N'Giay', N'dl ', N'giay-the-thao-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gokecogelamacode2', N'Giày thể thao nam', N'n', NULL, NULL, 3.8, 5, N'rbh ', N'dc ', NULL, NULL, 3, N'Chịu ', NULL, N'Giay', N'dl ', N'giay-the-thao-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gokecogelamacode3', N'Giày thể thao nam', N'n', NULL, NULL, 3.8, 5, N'rbh ', N'dc ', NULL, NULL, 3, N'Chịu ', NULL, N'Giay', N'dl ', N'giay-the-thao-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gokecogelamacode4', N'Giày thể thao nam', N'n', NULL, NULL, 3.8, 5, N'rbh ', N'dc ', NULL, NULL, 3, N'Chịu ', NULL, N'Giay', N'dl ', N'giay-the-thao-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gokecogelamacode5', N'Giày thể thao nam', N'n', NULL, NULL, 3.8, 5, N'rbh ', N'dc ', NULL, NULL, 3, N'Chịu ', NULL, N'Giay', N'dl ', N'giay-the-thao-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gokecogelamacode6', N'Giày thể thao nam', N'n', NULL, NULL, 3.8, 5, N'rbh ', N'dc ', NULL, NULL, 3, N'Chịu ', NULL, N'Giay', N'dl ', N'giay-the-thao-nam.jpg ', 2000000.0000, 2500000.0000),
(N'gokecogelamacode7', N'Giày thể thao nam', N'n', NULL, NULL, 3.8, 5, N'rbh ', N'dc ', NULL, NULL, 3, N'Chịu ', NULL, N'Giay', N'dl ', N'giay-the-thao-nam.jpg ', 2000000.0000, 2500000.0000)


INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [NganLapTop], [Model], [CanNang], [DoNoi], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES
(N'gokecohicalenc7', N'Mũ nón', N'v', NULL, NULL, 3.8, 5, N'rbh', N'ita ', NULL, NULL, 3, N'C', NULL, N'PK ', N'dn', N'muAD.png ', 2000000.0000, 2500000.0000),
(N'gokecohicalenc8 ', N'Mũ nón', N'v', NULL, NULL, 3.8, 5, N'rbh', N'ita ', NULL, NULL, 3, N'C', NULL, N'PK ', N'dn', N'muAD.png ', 2000000.0000, 2500000.0000),
(N'gokecohicalenc2', N'Mũ nón', N'v', NULL, NULL, 3.8, 5, N'rbh', N'ita ', NULL, NULL, 3, N'C', NULL, N'PK', N'dn', N'muAD.png ', 2000000.0000, 2500000.0000),
(N'gokecohicalenc3', N'Mũ nón', N'v', NULL, NULL, 3.8, 5, N'rbh', N'ita ', NULL, NULL, 3, N'C', NULL, N'PK ', N'dn', N'muAD.png ', 2000000.0000, 2500000.0000),
(N'gokecohicalenc4', N'Mũ nón', N'v', NULL, NULL, 3.8, 5, N'rbh', N'ita ', NULL, NULL, 3, N'C', NULL, N'PK ', N'dn', N'muAD.png ', 2000000.0000, 2500000.0000),
(N'gokecohicalenc5', N'Mũ nón', N'v', NULL, NULL, 3.8, 5, N'rbh', N'ita ', NULL, NULL, 3, N'C', NULL, N'PK ', N'dn', N'muAD.png ', 2000000.0000, 2500000.0000),
(N'gokecohicalenc6 ', N'Mũ nón', N'v', NULL, NULL, 3.8, 5, N'rbh', N'ita ', NULL, NULL, 3, N'C', NULL, N'PK ', N'dn', N'muAD.png ', 2000000.0000, 2500000.0000)

INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'pd', N'Pendleton', N'my')
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'rbh', N'Ricardo Beverly Hills', N'my ')
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'rc', N'Roncato ', N'ita  ')
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'sky ', N'Skyway ', N'my ')
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'string  ', N'string', N'string ')
GO

INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'Ao  ', N'Áo')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'Quan  ', N'Quần ')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'Giay  ', N'Giày Dép ')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'PK  ', N'Phụ Kiện ')



INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'n ', N'Nhựa cứng')
GO
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'string  ', N'string')
GO
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'v ', N'Vải')
GO


INSERT [dbo].[tUser] ([username], [password], [LoaiUser]) VALUES (N'a ', N'1 ', 0)
GO
INSERT [dbo].[tUser] ([username], [password], [LoaiUser]) VALUES (N'b  ', N'1', 1)
GO
