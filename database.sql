USE [Faslink]
GO
/****** Object:  Table [dbo].[BHXHBHYT]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BHXHBHYT](
	[NoiKhamBenh] [nvarchar](1000) NULL,
	[SoBHXH] [int] NOT NULL,
	[NgayThamGia] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoBHXH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietNghiPhep]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietNghiPhep](
	[IdChiTietNghiPhep] [int] NOT NULL,
	[TuNgay] [date] NULL,
	[TuGio] [time](7) NULL,
	[DenNgay] [date] NULL,
	[DenGio] [time](7) NULL,
	[IdNghiPhep] [int] NOT NULL,
	[IdNhanVien] [int] NOT NULL,
	[IdLoaiPhep] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdChiTietNghiPhep] ASC,
	[IdNghiPhep] ASC,
	[IdNhanVien] ASC,
	[IdLoaiPhep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[IdChucVu] [int] NOT NULL CONSTRAINT [DF_ChucVu_IdChucVu]  DEFAULT ((0)),
	[TenChucVu] [nvarchar](100) NULL CONSTRAINT [DF_ChucVu_TenChucVu]  DEFAULT ('NO DATA'),
PRIMARY KEY CLUSTERED 
(
	[IdChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuyenCan]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenCan](
	[IdChuyenCan] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdChuyenCan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChuyenCongTac]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenCongTac](
	[IdChuyenCongTac] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdChuyenCongTac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CongNhanMoi]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongNhanMoi](
	[IdCongNhanMoi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCongNhanMoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CongTac]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongTac](
	[IdCongTac] [int] NOT NULL,
	[IdNhanVien] [int] NOT NULL,
	[ChiNhanh] [nvarchar](100) NULL,
	[DiaDiem_CongTac] [nvarchar](100) NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
	[SoNgay_CongTac] [float] NULL,
	[NguoiDuyet] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[NgaySua] [date] NULL,
 CONSTRAINT [PK__CongTac__ABE82A85DD61A4B5] PRIMARY KEY CLUSTERED 
(
	[IdCongTac] ASC,
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiaChiLienLac]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChiLienLac](
	[IdLienLac] [int] IDENTITY(1,1) NOT NULL,
	[SoNhaDuong] [nvarchar](1000) NOT NULL CONSTRAINT [DF_DiaChiLienLac_SoNha_Duong]  DEFAULT ('NO DATA'),
	[Thoigian] [datetime] NULL,
	[TrangThai] [bit] NULL CONSTRAINT [DF_DiaChiLienLac_TrangThai]  DEFAULT ((0)),
	[IdTinh_TP] [int] NOT NULL CONSTRAINT [DF_DiaChiLienLac_IdTinh]  DEFAULT ((0)),
	[IdNhanVien] [int] NOT NULL CONSTRAINT [DF_DiaChiLienLac_IdNhanVien]  DEFAULT ((0)),
	[IdQuan_Huyen] [int] NULL,
 CONSTRAINT [PK__DiaChiLi__90202BF3F3D4CB8B] PRIMARY KEY CLUSTERED 
(
	[IdLienLac] ASC,
	[IdTinh_TP] ASC,
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiaChiThuongTru]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaChiThuongTru](
	[IdThuongTru] [int] IDENTITY(1,1) NOT NULL,
	[IdTinh_TP] [int] NOT NULL CONSTRAINT [DF_DiaChiThuongTru_IdTinh]  DEFAULT ((1)),
	[SoNhaDuong] [nvarchar](1000) NOT NULL CONSTRAINT [DF_DiaChiThuongTru_SoNhaDuong]  DEFAULT ('NO DATA'),
	[TrangThai] [bit] NULL CONSTRAINT [DF_DiaChiThuongTru_TrangThai]  DEFAULT ((0)),
	[IdNhanVien] [int] NOT NULL CONSTRAINT [DF_DiaChiThuongTru_IdNhanVien]  DEFAULT ((0)),
	[IdQuan_Huyen] [int] NULL,
 CONSTRAINT [PK__DiaChiTh__7A3736BFF9C2AD22] PRIMARY KEY CLUSTERED 
(
	[IdThuongTru] ASC,
	[IdTinh_TP] ASC,
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiaDiemLamViec]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiaDiemLamViec](
	[IdDiaDiemLamViec] [int] NOT NULL,
	[DiaChi] [nvarchar](200) NULL,
	[IdNhanVien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDiaDiemLamViec] ASC,
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonNghiPhep]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonNghiPhep](
	[ID_DonNghiPhep] [int] NOT NULL,
	[Hoten] [nvarchar](100) NULL,
	[ChucVu] [nvarchar](100) NULL,
	[BoPhan] [nvarchar](100) NULL,
	[SoNgayNghi] [float] NULL,
	[GioBatDau] [date] NULL,
	[GioKetThuc] [date] NULL,
	[LyDo] [nvarchar](200) NULL,
	[NguoiBanGiao] [nvarchar](100) NULL,
	[CongViecBanGiao] [nvarchar](200) NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
 CONSTRAINT [PK__DonNghiP__FDC8AF6A77CFBCA9] PRIMARY KEY CLUSTERED 
(
	[ID_DonNghiPhep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonXinNghiThaiSan]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonXinNghiThaiSan](
	[IdDonXinNghiThaiSan] [int] NOT NULL,
	[IdNhanVien] [int] NOT NULL,
	[NgayBatDau] [date] NULL,
	[ThoiGianKetThuc] [date] NULL,
	[TuGio] [time](7) NULL,
	[ToiGio] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDonXinNghiThaiSan] ASC,
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HopDongLaoDong]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopDongLaoDong](
	[IdHopDong] [int] NOT NULL,
	[IdNhanVien] [int] NOT NULL,
	[IdLoaiHopDong] [int] NOT NULL,
	[SoHopDong] [nvarchar](100) NULL,
	[NgayKy] [date] NULL,
	[BoPhan] [nvarchar](100) NULL,
	[NgheNghiep] [nvarchar](100) NULL,
	[ChucDanh] [nvarchar](100) NULL,
	[DiaDiemLamViec] [nvarchar](200) NULL,
	[Luong] [decimal](18, 0) NULL,
	[NgayTao] [date] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[NgayThanhLy] [date] NULL,
	[TuNgay] [date] NULL,
	[DenNgay] [date] NULL,
 CONSTRAINT [PK__HopDongL__332A40FB8FEFBC11] PRIMARY KEY CLUSTERED 
(
	[IdHopDong] ASC,
	[IdNhanVien] ASC,
	[IdLoaiHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhamThaiSan]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhamThaiSan](
	[IdKhamThaiSan] [int] NOT NULL,
	[Thang] [int] NULL,
	[Tuan] [int] NULL,
	[Ngay] [int] NULL,
	[NoiDung] [nvarchar](200) NULL,
	[IdThaiSan] [int] NOT NULL,
	[IdNhanVien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdKhamThaiSan] ASC,
	[IdThaiSan] ASC,
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LichLamViec]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichLamViec](
	[IdLich] [int] NOT NULL,
	[TenLich] [nvarchar](100) NULL,
	[Thu2] [time](7) NULL,
	[Thu3] [time](7) NULL,
	[Thu4] [time](7) NULL,
	[Thu5] [time](7) NULL,
	[Thu6] [time](7) NULL,
	[Thu7] [time](7) NULL,
	[ChuNhat] [time](7) NULL,
	[Ka] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LichNhanVien]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichNhanVien](
	[IdNhanVien] [int] NOT NULL,
	[IdLich] [int] NOT NULL,
	[Ngay] [date] NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK__LichNhan__4B34D8BCE7591B13] PRIMARY KEY CLUSTERED 
(
	[IdNhanVien] ASC,
	[IdLich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiHopDong]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHopDong](
	[IdLoaiHopDong] [int] NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLoaiHopDong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiPhep]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhep](
	[IdLoaiPhep] [int] NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLoaiPhep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LogBoPhan]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogBoPhan](
	[IdLogBoPhan] [int] IDENTITY(1,1) NOT NULL,
	[NgayThayDoi] [date] NULL,
	[IdNhanVien] [int] NOT NULL,
	[IdBoPhan] [int] NULL,
 CONSTRAINT [PK_LogBoPhan] PRIMARY KEY CLUSTERED 
(
	[IdLogBoPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LogHDLD]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogHDLD](
	[IdLogHDLD] [int] NOT NULL,
	[IdHopDong] [int] NOT NULL,
	[NgaySua] [date] NULL,
	[NguoiSua] [nvarchar](100) NULL,
	[IdLoaiHopDong] [int] NOT NULL,
	[IdNhanVien] [int] NOT NULL,
 CONSTRAINT [PK__LogHDLD__DEC25CFB56CC4D17] PRIMARY KEY CLUSTERED 
(
	[IdLogHDLD] ASC,
	[IdHopDong] ASC,
	[IdLoaiHopDong] ASC,
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NghiPhep]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NghiPhep](
	[IdNghiPhep] [int] NOT NULL,
	[LyDo] [nvarchar](1000) NULL,
	[NguoiNhanBanGiaoId] [int] NULL,
	[CongViecBanGiao] [char](1) NULL,
	[NgayTao] [char](1) NULL,
	[NguoiDuyet] [nvarchar](100) NULL,
	[IdNhanVien] [int] NOT NULL,
	[IdLoaiPhep] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNghiPhep] ASC,
	[IdNhanVien] ASC,
	[IdLoaiPhep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[IdNhanVien] [int] NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[IdGioiTinh] [int] NULL,
	[NgayVao] [date] NULL,
	[NgaySinh] [date] NULL,
	[NoiSinh] [nvarchar](100) NULL,
	[HonNhan] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](15) NULL,
	[DienThoaiNguoiThan] [nvarchar](15) NULL,
	[EmailCTy] [nvarchar](100) NULL,
	[EmailCaNhan] [nvarchar](100) NULL,
	[QuocTich] [nvarchar](100) NULL,
	[TonGiao] [nvarchar](100) NULL,
	[DanToc] [nvarchar](100) NULL,
	[Hinh] [nvarchar](200) NULL,
	[SoNguoiPhuThuoc] [int] NULL,
	[TrangThai] [bit] NULL,
	[Mvt] [int] NULL,
	[Ka] [nvarchar](100) NULL,
	[ToLamViec] [nvarchar](100) NULL,
	[NgayNghi] [date] NULL,
	[NguoiGioiThieu] [nvarchar](100) NULL,
	[SoCMND] [nvarchar](100) NULL,
	[NgayCap] [date] NULL,
	[NoiCap] [nvarchar](100) NULL,
	[NguyenQuan] [nvarchar](100) NULL,
 CONSTRAINT [PK__NhanVien__B82948451FFD1853] PRIMARY KEY CLUSTERED 
(
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVienChucVu]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVienChucVu](
	[IdNhanVien] [int] NOT NULL,
	[IdChucVu] [int] NOT NULL,
	[ThoiGian] [date] NULL,
 CONSTRAINT [PK__NhanVien__5034D928D9C60418] PRIMARY KEY CLUSTERED 
(
	[IdNhanVien] ASC,
	[IdChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NuoiConNho]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NuoiConNho](
	[IdNuoiConNho] [int] NOT NULL,
	[HoTenCon] [nvarchar](100) NULL,
	[NgaySinhCon] [date] NULL,
	[TuoiCon] [float] NULL,
	[IdNhanVien] [int] NOT NULL,
 CONSTRAINT [PK__NuoiConN__EABC40DA984E787A] PRIMARY KEY CLUSTERED 
(
	[IdNuoiConNho] ASC,
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quan]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quan](
	[IdQuan] [int] NOT NULL,
	[TenQuan] [nvarchar](100) NOT NULL,
	[IdTinh] [int] NULL,
	[code] [nvarchar](100) NULL,
	[published] [int] NULL,
	[ordering] [int] NULL,
 CONSTRAINT [PK__Quan__9005E789A3E2844A] PRIMARY KEY CLUSTERED 
(
	[IdQuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThaiSan]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThaiSan](
	[IdThaiSan] [int] NOT NULL,
	[NgayMangThai] [date] NULL,
	[DuKienNghi] [date] NULL,
	[NgayNghi] [date] NULL,
	[NgaySinhEmBe] [date] NULL,
	[DuKienLamLai] [date] NULL,
	[NgayLamLai] [date] NULL,
	[NgayKetThuc] [date] NULL,
	[TinhTrangThaiSan] [nvarchar](100) NULL,
	[NgayTao] [date] NULL,
	[NguoiTao] [nvarchar](100) NULL,
	[NgaySua] [date] NULL,
	[NguoiSua] [nvarchar](100) NULL,
	[IdNhanVien] [int] NOT NULL,
 CONSTRAINT [PK__ThaiSan__1B014CA34EDEA114] PRIMARY KEY CLUSTERED 
(
	[IdThaiSan] ASC,
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThuongPhat]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongPhat](
	[IdThuongPhat] [int] NOT NULL,
	[ThuongPhat] [bit] NULL,
	[LyDo] [nvarchar](200) NULL,
	[TienThuong] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdThuongPhat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tinh]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tinh](
	[IdTinh] [int] NOT NULL,
	[TenTinh] [nvarchar](100) NULL,
	[code] [nvarchar](100) NULL,
	[published] [int] NULL,
	[ordering] [int] NULL,
 CONSTRAINT [PK_Tinh] PRIMARY KEY CLUSTERED 
(
	[IdTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhTrangHopDong]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangHopDong](
	[IdTinhTrangHD] [int] NOT NULL,
	[TenTinhTrang] [nvarchar](100) NULL,
	[IdHopDong] [int] NOT NULL,
	[IdLoaiHopDong] [int] NOT NULL,
	[IdNhanVien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTinhTrangHD] ASC,
	[IdHopDong] ASC,
	[IdLoaiHopDong] ASC,
	[IdNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrinhDo]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDo](
	[IdTrinhDo] [int] IDENTITY(1,1) NOT NULL,
	[HocVan] [nvarchar](500) NULL CONSTRAINT [DF_TrinhDo_HocVan]  DEFAULT ('NO DATA'),
	[TruongHoc] [nvarchar](500) NULL CONSTRAINT [DF_TrinhDo_TruongHoc]  DEFAULT ('NO DATA'),
	[ChuyenMon] [nvarchar](500) NULL CONSTRAINT [DF_TrinhDo_ChuyenMon]  DEFAULT ('NO DATA'),
	[NgoaiNgu] [nvarchar](500) NULL CONSTRAINT [DF_TrinhDo_NgoaiNgu]  DEFAULT ('NO DATA'),
	[ViTinh] [nvarchar](500) NULL CONSTRAINT [DF_TrinhDo_ViTinh]  DEFAULT ('NO DATA'),
	[ThoiGian] [date] NULL CONSTRAINT [DF_TrinhDo_ThoiGian]  DEFAULT (NULL),
	[IdNhanVien] [int] NOT NULL CONSTRAINT [DF_TrinhDo_IdNhanVien]  DEFAULT ((0)),
 CONSTRAINT [PK_TrinhDo] PRIMARY KEY CLUSTERED 
(
	[IdTrinhDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ChucVu] ([IdChucVu], [TenChucVu]) VALUES (1, N'Lập trình viên')
INSERT [dbo].[ChucVu] ([IdChucVu], [TenChucVu]) VALUES (2, N'Kế toán')
INSERT [dbo].[ChucVu] ([IdChucVu], [TenChucVu]) VALUES (3, N'Thủ kho')
INSERT [dbo].[ChucVu] ([IdChucVu], [TenChucVu]) VALUES (4, N'Giám đốc')
SET IDENTITY_INSERT [dbo].[DiaChiLienLac] ON 

INSERT [dbo].[DiaChiLienLac] ([IdLienLac], [SoNhaDuong], [Thoigian], [TrangThai], [IdTinh_TP], [IdNhanVien], [IdQuan_Huyen]) VALUES (3, N'45 Hòn rom', CAST(N'2017-12-05 00:00:00.000' AS DateTime), 0, 0, 111, 0)
SET IDENTITY_INSERT [dbo].[DiaChiLienLac] OFF
SET IDENTITY_INSERT [dbo].[DiaChiThuongTru] ON 

INSERT [dbo].[DiaChiThuongTru] ([IdThuongTru], [IdTinh_TP], [SoNhaDuong], [TrangThai], [IdNhanVien], [IdQuan_Huyen]) VALUES (5, 701, N'97 Hoàng Hoa Thám', 1, 111, 70133)
SET IDENTITY_INSERT [dbo].[DiaChiThuongTru] OFF
INSERT [dbo].[LichLamViec] ([IdLich], [TenLich], [Thu2], [Thu3], [Thu4], [Thu5], [Thu6], [Thu7], [ChuNhat], [Ka]) VALUES (0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LichLamViec] ([IdLich], [TenLich], [Thu2], [Thu3], [Thu4], [Thu5], [Thu6], [Thu7], [ChuNhat], [Ka]) VALUES (1, N'Hành chính', CAST(N'08:00:00' AS Time), CAST(N'08:00:00' AS Time), CAST(N'08:00:00' AS Time), CAST(N'08:00:00' AS Time), CAST(N'08:00:00' AS Time), CAST(N'08:00:00' AS Time), NULL, N'Sáng')
INSERT [dbo].[LichLamViec] ([IdLich], [TenLich], [Thu2], [Thu3], [Thu4], [Thu5], [Thu6], [Thu7], [ChuNhat], [Ka]) VALUES (2, N'Tăng ca', CAST(N'18:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'08:00:00' AS Time), N'Tối')
SET IDENTITY_INSERT [dbo].[LogBoPhan] ON 

INSERT [dbo].[LogBoPhan] ([IdLogBoPhan], [NgayThayDoi], [IdNhanVien], [IdBoPhan]) VALUES (9, CAST(N'0001-01-01' AS Date), 111, 1)
SET IDENTITY_INSERT [dbo].[LogBoPhan] OFF
INSERT [dbo].[NhanVien] ([IdNhanVien], [HoTen], [IdGioiTinh], [NgayVao], [NgaySinh], [NoiSinh], [HonNhan], [DienThoai], [DienThoaiNguoiThan], [EmailCTy], [EmailCaNhan], [QuocTich], [TonGiao], [DanToc], [Hinh], [SoNguoiPhuThuoc], [TrangThai], [Mvt], [Ka], [ToLamViec], [NgayNghi], [NguoiGioiThieu], [SoCMND], [NgayCap], [NoiCap], [NguyenQuan]) VALUES (111, N'Hưng đã sửa', 2, CAST(N'2018-02-12' AS Date), CAST(N'2017-06-26' AS Date), N'Quảng Ngai', N'3', N'0938557453', N'0123456789', N'hunght@phamgiatech.vn', N'huynhthai@gmail.com', NULL, NULL, NULL, NULL, 1, 0, 12346, N'HC', NULL, CAST(N'2018-02-13' AS Date), N'Phương dollar', NULL, CAST(N'2015-09-21' AS Date), N'Quảng Ngãi', N'Quảng Ngãi')
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (0, N'NO DATA', NULL, NULL, NULL, NULL)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (2, N'Qu?n Ba Ðình', 17, N'10101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (3, N'Qu?n Tây H?', 17, N'10103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (4, N'Qu?n Hoàn Ki?m', 17, N'10105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (5, N'Qu?n Hai Bà Trung', 17, N'10107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (6, N'Qu?n Ð?ng Ða', 17, N'10109', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (7, N'Qu?n Thanh Xuân', 17, N'10111', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (8, N'Qu?n C?u Gi?y', 17, N'10113', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (9, N'Huy?n Sóc Son', 17, N'10115', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (10, N'Huy?n Ðông Anh', 17, N'10117', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (11, N'Huy?n Gia Lâm', 17, N'10119', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (12, N'Huy?n T? Liêm', 17, N'10121', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (13, N'Huy?n Thanh Trì', 17, N'10123', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (15, N'Qu?n H?ng Bàng', 23, N'10301', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (16, N'Qu?n Ngô Quy?n', 23, N'10303', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (17, N'Qu?n Lê Chân', 23, N'10305', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (18, N'Qu?n Ki?n An', 23, N'10307', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (19, N'Th? xã Ð? Son', 23, N'10309', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (20, N'Huy?n Thu? Nguyên', 23, N'10311', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (21, N'Huy?n An H?i', 23, N'10313', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (22, N'Huy?n An Lão', 23, N'10315', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (23, N'Huy?n Ki?n Thu?', 23, N'10317', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (24, N'Huy?n Tiên Lãng', 23, N'10319', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (25, N'Huy?n Vinh B?o', 23, N'10321', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (26, N'Huy?n Cát H?i', 23, N'10323', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (27, N'Huy?n B?ch Long Vi', 23, N'10325', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (29, N'Th? xã Vinh Yên', 55, N'10401', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (30, N'Huy?n L?p Th?ch', 55, N'10403', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (31, N'Huy?n Tam Duong', 55, N'10405', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (32, N'Huy?n Vinh Tu?ng', 55, N'10407', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (33, N'Huy?n Yên L?c', 55, N'10409', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (34, N'Huy?n Mê Linh', 55, N'10411', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (35, N'Huy?n Bình Xuyên', 55, N'10413', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (37, N'Th? xã Hà Ðông', 18, N'10501', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (38, N'Th? xã Son Tây', 18, N'10503', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (39, N'Huy?n Ba Vì', 18, N'10505', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (40, N'Huy?n Phúc Th?', 18, N'10507', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (41, N'Huy?n Ðan Phu?ng', 18, N'10509', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (42, N'Huy?n Th?ch Th?t', 18, N'10511', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (43, N'Huy?n Hoài Ð?c', 18, N'10513', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (44, N'Huy?n Qu?c Oai', 18, N'10515', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (45, N'Huy?n Chuong M?', 18, N'10517', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (46, N'Huy?n Thanh Oai', 18, N'10519', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (47, N'Huy?n Thu?ng Tín', 18, N'10521', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (48, N'Huy?n M? Ð?c', 18, N'10523', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (49, N'Huy?n ?ng Hòa', 18, N'10525', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (50, N'Huy?n Phú Xuyên', 18, N'10527', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (52, N'Th? xã B?c Ninh', 9, N'22301', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (53, N'Huy?n Yên Phong', 9, N'22303', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (54, N'Huy?n Qu? Võ', 9, N'22305', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (55, N'Huy?n Tiên Du', 9, N'22307', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (56, N'Huy?n T? Son', 9, N'22308', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (57, N'Huy?n Thu?n Thành', 9, N'22309', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (58, N'Huy?n Luong Tài', 9, N'22311', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (59, N'Huy?n Gia Bình', 9, N'22312', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (61, N'Thành ph? H?i Duong', 22, N'10701', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (62, N'Huy?n Chí Linh', 22, N'10703', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (63, N'Huy?n Nam Sách', 22, N'10705', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (64, N'Huy?n Thanh Hà', 22, N'10707', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (65, N'Huy?n Kinh Môn', 22, N'10709', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (66, N'Huy?n Kim Thành', 22, N'10711', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (67, N'Huy?n Gia L?c', 22, N'10713', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (68, N'Huy?n T? K?', 22, N'10715', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (69, N'Huy?n C?m Giàng', 22, N'10717', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (70, N'Huy?n Bình Giang', 22, N'10719', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (71, N'Huy?n Thanh Mi?n', 22, N'10721', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (72, N'Huy?n Ninh Giang', 22, N'10723', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (74, N'Th? xã Hung Yên', 21, N'10901', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (75, N'Huy?n Van Lâm', 21, N'10902', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (76, N'Huy?n M? Van', 21, N'10903', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (77, N'Huy?n Yên M?', 21, N'10904', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (78, N'Huy?n Châu Giang', 21, N'10905', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (79, N'Huy?n Khoái Châu', 21, N'10906', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (80, N'Huy?n Ân Thi', 21, N'10907', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (81, N'Huy?n Kim Ð?ng', 21, N'10909', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (82, N'Huy?n Phù C?', 21, N'10911', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (83, N'Huy?n Tiên L?', 21, N'10913', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (85, N'Th? xã Ph? Lý', 16, N'11101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (86, N'Huy?n Duy Tiên', 16, N'11103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (87, N'Huy?n Kim B?ng', 16, N'11105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (88, N'Huy?n Lý Nhân', 16, N'11107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (89, N'Huy?n Thanh Liêm', 16, N'11109', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (90, N'Huy?n Bình L?c', 16, N'11111', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (92, N'Thành ph? Nam Ð?nh', 34, N'11301', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (93, N'Huy?n V? B?n', 34, N'11303', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (94, N'Huy?n M? L?c', 34, N'11305', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (95, N'Huy?n ý Yên', 34, N'11307', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (96, N'Huy?n Nam Tr?c', 34, N'11309', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (97, N'Huy?n Tr?c Ninh', 34, N'11311', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (98, N'Huy?n Xuân Tru?ng', 34, N'11313', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (99, N'Huy?n Giao Th?y', 34, N'11315', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (100, N'Huy?n Nghia Hung', 34, N'11317', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (101, N'Huy?n H?i H?u', 34, N'11319', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (103, N'Th? xã Thái Bình', 47, N'11501', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (104, N'Huy?n Qu?nh Ph?', 47, N'11503', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (105, N'Huy?n Hung Hà', 47, N'11505', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (106, N'Huy?n Thái Th?y', 47, N'11507', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (107, N'Huy?n Ðông Hung', 47, N'11509', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (108, N'Huy?n Vu Thu', 47, N'11511', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (109, N'Huy?n Ki?n Xuong', 47, N'11513', 1, 5)
GO
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (110, N'Huy?n Ti?n H?i', 47, N'11515', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (112, N'Th? xã Ninh Bình', 36, N'11701', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (113, N'Th? xã Tam Ði?p', 36, N'11703', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (114, N'Huy?n Nho Quan', 36, N'11705', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (115, N'Huy?n Gia Vi?n', 36, N'11707', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (116, N'Huy?n Hoa Lu', 36, N'11709', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (117, N'Huy?n Yên Mô', 36, N'11711', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (118, N'Huy?n Yên Khánh', 36, N'11713', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (119, N'Huy?n Kim Son', 36, N'11715', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (121, N'Th? xã Hà Giang', 15, N'20101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (122, N'Huy?n Ð?ng Van', 15, N'20103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (123, N'Huy?n Mèo V?c', 15, N'20105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (124, N'Huy?n Yên Minh', 15, N'20107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (125, N'Huy?n Qu?n B?', 15, N'20109', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (126, N'Huy?n B?c Mê', 15, N'20111', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (127, N'Huy?n Hoàng Su Phì', 15, N'20113', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (128, N'Huy?n V? Xuyên', 15, N'20115', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (129, N'Huy?n Xín M?n', 15, N'20117', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (130, N'Huy?n B?c Quang', 15, N'20119', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (132, N'Th? xã Cao B?ng', 11, N'20301', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (133, N'Huy?n B?o L?c', 11, N'20303', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (134, N'Huy?n Hà Qu?ng', 11, N'20305', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (135, N'Huy?n Thông Nông', 11, N'20307', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (136, N'Huy?n Trà Linh', 11, N'20309', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (137, N'Huy?n Trùng Khánh', 11, N'20311', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (138, N'Huy?n Nguyên Bình', 11, N'20313', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (139, N'Huy?n Hoà An', 11, N'20315', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (140, N'Huy?n Qu?ng Hoà', 11, N'20317', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (141, N'Huy?n H? Lang', 11, N'20319', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (142, N'Huy?n Th?ch An', 11, N'20321', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (144, N'Th? xã Lào Cai', 31, N'20501', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (145, N'Th? xã Cam Ðu?ng', 31, N'20503', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (146, N'Huy?n Mu?ng Khuong', 31, N'20505', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (147, N'Huy?n Bát Xát', 31, N'20507', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (148, N'Huy?n B?c Hà', 31, N'20509', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (149, N'Huy?n B?o Th?ng', 31, N'20511', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (150, N'Huy?n Sa Pa', 31, N'20513', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (151, N'Huy?n B?o Yên', 31, N'20515', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (152, N'Huy?n Than Uyên', 31, N'20517', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (153, N'Huy?n Van Bàn', 31, N'20519', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (155, N'Th? xã B?c K?n', 8, N'20701', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (156, N'Huy?n Ba B?', 8, N'20703', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (157, N'Huy?n Ngân Son', 8, N'20705', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (158, N'Huy?n Ch? Ð?n', 8, N'20707', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (159, N'Huy?n Na Rì', 8, N'20709', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (160, N'Huy?n B?ch Thông', 8, N'20711', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (161, N'Huy?n Ch? M?i', 8, N'20713', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (163, N'Th? xã L?ng Son', 33, N'20901', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (164, N'Huy?n Tràng Ð?nh', 33, N'20903', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (165, N'Huy?n Van Lãng', 33, N'20905', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (166, N'Huy?n Bình Gia', 33, N'20907', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (167, N'Huy?n B?c Son', 33, N'20909', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (168, N'Huy?n Van Quan', 33, N'20911', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (169, N'Huy?n Cao L?c', 33, N'20913', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (170, N'Huy?n L?c Bình', 33, N'20915', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (171, N'Huy?n Chi Lang', 33, N'20917', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (172, N'Huy?n Ðình L?p', 33, N'20919', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (173, N'Huy?n H?u Lung', 33, N'20921', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (175, N'Th? xã Tuyên Quang', 52, N'21101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (176, N'Huy?n Nà Hang', 52, N'21103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (177, N'Huy?n Chiêm Hóa', 52, N'21105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (178, N'Huy?n Hàm Yên', 52, N'21107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (179, N'Huy?n Yên Son', 52, N'21109', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (180, N'Huy?n Son Duong', 52, N'21111', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (182, N'Th? xã Yên Bái', 56, N'21301', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (183, N'Th? xã Nghia L?', 56, N'21303', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (184, N'Huy?n L?c Yên', 56, N'21305', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (185, N'Huy?n Van Yên', 56, N'21307', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (186, N'Huy?n Mù Cang Ch?i', 56, N'21309', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (187, N'Huy?n Tr?n Yên', 56, N'21311', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (188, N'Huy?n Yên Bình', 56, N'21313', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (189, N'Huy?n Van Ch?n', 56, N'21315', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (190, N'Huy?n Tr?m T?u', 56, N'21317', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (192, N'Thành ph? Thái Nguyên', 48, N'21501', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (193, N'Th? xã Sông Công', 48, N'21503', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (194, N'Huy?n Ð?nh Hóa', 48, N'21505', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (195, N'Huy?n Võ Nhai', 48, N'21507', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (196, N'Huy?n Phú Luong', 48, N'21509', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (197, N'Huy?n Ð?ng H?', 48, N'21511', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (198, N'Huy?n Ð?i T?', 48, N'21513', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (199, N'Huy?n Phú Bình', 48, N'21515', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (200, N'Huy?n Ph? Yên', 48, N'21517', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (202, N'Thành ph? Vi?t Trì', 38, N'21701', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (203, N'Th? xã Phú Th?', 38, N'21703', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (204, N'Huy?n Ðoan Hùng', 38, N'21705', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (205, N'Huy?n H? Hoà', 38, N'21707', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (206, N'Huy?n Thanh Ba', 38, N'21709', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (207, N'Huy?n Phong Châu', 38, N'21711', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (208, N'Huy?n Lâm Thao', 38, N'21712', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (209, N'Huy?n Sông Thao', 38, N'21713', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (210, N'Huy?n Yên L?p', 38, N'21715', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (211, N'Huy?n Tam Thanh', 38, N'21717', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (212, N'Huy?n Thanh Thu?', 38, N'21718', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (213, N'Huy?n Thanh Son', 38, N'21719', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (215, N'Th? xã B?c Giang', 7, N'22101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (216, N'Huy?n Yên Th?', 7, N'22103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (217, N'Huy?n Tân Yên', 7, N'22105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (218, N'Huy?n L?c Ng?n', 7, N'22107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (219, N'Huy?n Hi?p Hòa', 7, N'22109', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (220, N'Huy?n L?ng Giang', 7, N'22111', 1, 5)
GO
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (221, N'Huy?n Son Ð?ng', 7, N'22113', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (222, N'Huy?n L?c Nam', 7, N'22115', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (223, N'Huy?n Vi?t Yên', 7, N'22117', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (224, N'Huy?n Yên Dung', 7, N'22119', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (226, N'Thành ph? H? Long', 43, N'22501', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (227, N'Th? xã C?m Ph?', 43, N'22503', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (228, N'Th? xã Uông Bí', 43, N'22505', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (229, N'Huy?n Bình Liêu', 43, N'22507', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (230, N'Th? Xã Móng Cái', 43, N'22509', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (231, N'Huy?n Qu?ng Hà', 43, N'22511', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (232, N'Huy?n Tiên Yên', 43, N'22513', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (233, N'Huy?n Ba Ch?', 43, N'22515', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (234, N'Huy?n Vân Ð?n', 43, N'22517', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (235, N'Huy?n Hoành B?', 43, N'22519', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (236, N'Huy?n Ðông Tri?u', 43, N'22521', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (237, N'Huy?n Cô Tô', 43, N'22523', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (238, N'Huy?n Yên Hung', 43, N'22525', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (240, N'Th? xã Ði?n Biên Ph?', 29, N'30101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (241, N'Th? xã Lai Châu', 29, N'30103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (242, N'Huy?n Mu?ng Tè', 29, N'30105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (243, N'Huy?n Phong Th?', 29, N'30107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (244, N'Huy?n Sìn H?', 29, N'30109', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (245, N'Huy?n Mu?ng Lay', 29, N'30111', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (246, N'Huy?n T?a Chùa', 29, N'30113', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (247, N'Huy?n Tu?n Giáo', 29, N'30115', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (248, N'Huy?n Ði?n Biên', 29, N'30117', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (249, N'Huy?n Ði?n Biên Ðông', 29, N'30119', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (251, N'Th? xã Son La', 45, N'30301', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (252, N'Huy?n Qu?nh Nhai', 45, N'30303', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (253, N'Huy?n Mu?ng La', 45, N'30305', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (254, N'Huy?n Thu?n Châu', 45, N'30307', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (255, N'Huy?n B?c Yên', 45, N'30309', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (256, N'Huy?n Phù Yên', 45, N'30311', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (257, N'Huy?n Mai Son', 45, N'30313', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (258, N'Huy?n Sông Mã', 45, N'30315', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (259, N'Huy?n Yên Châu', 45, N'30317', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (260, N'Huy?n M?c Châu', 45, N'30319', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (262, N'Th? xã Hòa Bình', 20, N'30501', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (263, N'Huy?n Ðà B?c', 20, N'30503', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (264, N'Huy?n Mai Châu', 20, N'30505', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (265, N'Huy?n K? Son', 20, N'30507', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (266, N'Huy?n Luong Son', 20, N'30509', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (267, N'Huy?n Kim Bôi', 20, N'30511', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (268, N'Huy?n Tân L?c', 20, N'30513', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (269, N'Huy?n L?c Son', 20, N'30515', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (270, N'Huy?n L?c Th?y', 20, N'30517', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (271, N'Huy?n Yên Th?y', 20, N'30519', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (273, N'Thành ph? Thanh Hóa', 46, N'40101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (274, N'Th? xã B?m Son', 46, N'40103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (275, N'Th? xã S?m Son', 46, N'40105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (276, N'Huy?n Mu?ng Lát', 46, N'40107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (277, N'Huy?n Quan Hóa', 46, N'40109', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (278, N'Huy?n Quan Son', 46, N'40111', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (279, N'Huy?n Bá Thu?c', 46, N'40113', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (280, N'Huy?n C?m Th?y', 46, N'40115', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (281, N'Huy?n Lang Chánh', 46, N'40117', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (282, N'Huy?n Th?ch Thành', 46, N'40119', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (283, N'Huy?n Ng?c L?c', 46, N'40121', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (284, N'Huy?n Thu?ng Xuân', 46, N'40123', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (285, N'Huy?n Nhu Xuân', 46, N'40125', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (286, N'Huy?n Nhu Thanh', 46, N'40127', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (287, N'Huy?n Vinh L?c', 46, N'40129', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (288, N'Huy?n Hà Trung', 46, N'40131', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (289, N'Huy?n Nga Son', 46, N'40133', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (290, N'Huy?n Yên Ð?nh', 46, N'40135', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (291, N'Huy?n Th? Xuân', 46, N'40137', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (292, N'Huy?n H?u L?c', 46, N'40139', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (293, N'Huy?n Thi?u Hoá', 46, N'40141', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (294, N'Huy?n Ho?ng Hóa', 46, N'40143', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (295, N'Huy?n Ðông Son', 46, N'40145', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (296, N'Huy?n Tri?u Son', 46, N'40147', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (297, N'Huy?n Qu?ng Xuong', 46, N'40149', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (298, N'Huy?n Nông C?ng', 46, N'40151', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (299, N'Huy?n Tinh Gia', 46, N'40153', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (301, N'Thành ph? Vinh', 35, N'40301', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (302, N'Th? xã C?a Lò', 35, N'40303', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (303, N'Huy?n Qu? Phong', 35, N'40305', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (304, N'Huy?n Qu? Châu', 35, N'40307', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (305, N'Huy?n K? Son', 35, N'40309', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (306, N'Huy?n Qu? H?p', 35, N'40311', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (307, N'Huy?n Nghia Ðàn', 35, N'40313', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (308, N'Huy?n Tuong Duong', 35, N'40315', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (309, N'Huy?n Qu?nh Luu', 35, N'40317', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (310, N'Huy?n Tân K?', 35, N'40319', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (311, N'Huy?n Con Cuông', 35, N'40321', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (312, N'Huy?n Yên Thành', 35, N'40323', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (313, N'Huy?n Di?n Châu', 35, N'40325', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (314, N'Huy?n Anh Son', 35, N'40327', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (315, N'Huy?n Ðô Luong', 35, N'40329', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (316, N'Huy?n Thanh Chuong', 35, N'40331', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (317, N'Huy?n Nghi L?c', 35, N'40333', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (318, N'Huy?n Nam Ðàn', 35, N'40335', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (319, N'Huy?n Hung Nguyên', 35, N'40337', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (321, N'Th? xã Hà Tinh', 19, N'40501', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (322, N'Th? xã H?ng Linh', 19, N'40503', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (323, N'Huy?n Nghi Xuân', 19, N'40505', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (324, N'Huy?n Ð?c Th?', 19, N'40507', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (325, N'Huy?n Huong Son', 19, N'40509', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (326, N'Huy?n Can L?c', 19, N'40511', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (327, N'Huy?n Th?ch Hà', 19, N'40513', 1, 5)
GO
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (328, N'Huy?n C?m Xuyên', 19, N'40515', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (329, N'Huy?n Huong Khê', 19, N'40517', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (330, N'Huy?n K? Anh', 19, N'40519', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (332, N'Th? xã Ð?ng H?i', 40, N'40701', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (333, N'Huy?n Tuyên Hóa', 40, N'40703', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (334, N'Huy?n Minh Hóa', 40, N'40705', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (335, N'Huy?n Qu?ng Tr?ch', 40, N'40707', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (336, N'Huy?n B? Tr?ch', 40, N'40709', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (337, N'Huy?n Qu?ng Ninh', 40, N'40711', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (338, N'Huy?n L? Th?y', 40, N'40713', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (340, N'Th? xã Ðông Hà', 44, N'40901', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (341, N'Th? xã Qu?ng Tr?', 44, N'40903', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (342, N'Huy?n Vinh Linh', 44, N'40905', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (343, N'Huy?n Gio Linh', 44, N'40907', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (344, N'Huy?n Cam L?', 44, N'40909', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (345, N'Huy?n Tri?u Phong', 44, N'40911', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (346, N'Huy?n H?i Lang', 44, N'40913', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (347, N'Huy?n Hu?ng Hóa', 44, N'40915', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (348, N'Huy?n Ða Krông', 44, N'40917', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (350, N'Thành ph? Hu?', 49, N'41101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (351, N'Huy?n Phong Ði?n', 49, N'41103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (352, N'Huy?n Qu?ng Ði?n', 49, N'41105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (353, N'Huy?n Huong Trà', 49, N'41107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (354, N'Huy?n Phú Vang', 49, N'41109', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (355, N'Huy?n Huong Th?y', 49, N'41111', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (356, N'Huy?n Phú L?c', 49, N'41113', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (357, N'Huy?n A Lu?i', 49, N'41115', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (358, N'Huy?n Nam Ðông', 49, N'41117', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (360, N'Qu?n H?i Châu', 57, N'50101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (361, N'Qu?n Thanh Khê', 57, N'50103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (362, N'Qu?n Son Trà', 57, N'50105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (363, N'Qu?n Ngu Hành Son', 57, N'50107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (364, N'Qu?n Liên Chi?u', 57, N'50109', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (365, N'Huy?n Hoà Vang', 57, N'50111', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (366, N'Huy?n Ð?o Hoàng Sa', 57, N'50113', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (368, N'Th? xã Tam K?', 41, N'50301', 1, 1)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (369, N'Th? xã H?i An', 41, N'50303', 1, 2)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (370, N'Huy?n Hiên', 41, N'50305', 1, 13)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (371, N'Huy?n Ð?i L?c', 41, N'50307', 1, 12)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (372, N'Huy?n Ði?n Bàn', 41, N'50309', 1, 11)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (373, N'Huy?n Duy Xuyên', 41, N'50311', 1, 10)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (374, N'Huy?n Gi?ng', 41, N'50313', 1, 9)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (375, N'Huy?n Thang Bình', 41, N'50315', 1, 8)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (376, N'Huy?n Qu? Son', 41, N'50317', 1, 7)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (377, N'Huy?n Hi?p Ð?c', 41, N'50319', 1, 6)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (378, N'Huy?n Tiên Phu?c', 41, N'50321', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (379, N'Huy?n Phu?c Son', 41, N'50323', 1, 4)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (380, N'Huy?n Núi Thành', 41, N'50325', 1, 3)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (381, N'Huy?n Trà My', 41, N'50327', 1, 14)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (383, N'Th? xã Qu?ng Ngãi', 42, N'50501', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (384, N'Huy?n Lý Son', 42, N'50503', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (385, N'Huy?n Bình Son', 42, N'50505', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (386, N'Huy?n Trà B?ng', 42, N'50507', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (387, N'Huy?n Son T?nh', 42, N'50509', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (388, N'Huy?n Son Tây', 42, N'50511', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (389, N'Huy?n Son Hà', 42, N'50513', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (390, N'Huy?n Tu Nghia', 42, N'50515', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (391, N'Huy?n Nghia Hành', 42, N'50517', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (392, N'Huy?n Minh Long', 42, N'50519', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (393, N'Huy?n M? Ð?c', 42, N'50521', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (394, N'Huy?n Ð?c Ph?', 42, N'50523', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (395, N'Huy?n Ba To', 42, N'50525', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (397, N'Thành ph? Qui Nhon', 6, N'50701', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (398, N'Huy?n An Lão', 6, N'50703', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (399, N'Huy?n Hoài Nhon', 6, N'50705', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (400, N'Huy?n Hoài Ân', 6, N'50707', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (401, N'Huy?n Phù M?', 6, N'50709', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (402, N'Huy?n Vinh Th?nh', 6, N'50711', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (403, N'Huy?n Phù Cát', 6, N'50713', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (404, N'Huy?n Tây Son', 6, N'50715', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (405, N'Huy?n An Nhon', 6, N'50717', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (406, N'Huy?n Tuy Phu?c', 6, N'50719', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (407, N'Huy?n Vân Canh', 6, N'50721', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (409, N'Thành ph? Tuy Hòa', 39, N'50901', 1, 1)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (410, N'Huy?n Ð?ng Xuân', 39, N'50903', 1, 2)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (411, N'Huy?n Sông C?u', 39, N'50905', 1, 3)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (412, N'Huy?n Tuy An', 39, N'50907', 1, 4)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (413, N'Huy?n Son Hòa', 39, N'50909', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (414, N'Huy?n Ðông Hòa', 39, N'50911', 1, 6)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (415, N'Huy?n Sông Hinh', 39, N'50913', 1, 7)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (417, N'Thành ph? Nha Trang', 25, N'51101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (418, N'Huy?n V?n Ninh', 25, N'51103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (419, N'Huy?n Ninh Hòa', 25, N'51105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (420, N'Huy?n Diên Khánh', 25, N'51107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (421, N'Huy?n Cam Ranh', 25, N'51109', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (422, N'Huy?n Khánh Vinh', 25, N'51111', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (423, N'Huy?n Khánh Son', 25, N'51113', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (424, N'Huy?n Tru?ng Sa', 25, N'51115', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (426, N'Th? xã Kon Tum', 28, N'60101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (427, N'Huy?n Ð?k Glei', 28, N'60103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (428, N'Huy?n Ng?c H?i', 28, N'60105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (429, N'Huy?n Ð?k Tô', 28, N'60107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (430, N'Huy?n Kon Plông', 28, N'60109', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (431, N'Huy?n Ðak Hà', 28, N'60111', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (432, N'Huy?n Sa Th?y', 28, N'60113', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (434, N'Th? xã Pleiku', 14, N'60301', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (435, N'Huy?n KBang', 14, N'60303', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (436, N'Huy?n Mang Yang', 14, N'60305', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (437, N'Huy?n Chu Pah', 14, N'60307', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (438, N'Huy?n Ia Grai', 14, N'60309', 1, 5)
GO
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (439, N'Huy?n An Khê', 14, N'60311', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (440, N'Huy?n Kông Chro', 14, N'60313', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (441, N'Huy?n Ð?c Co', 14, N'60315', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (442, N'Huy?n Chu Prông', 14, N'60317', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (443, N'Huy?n Chu Sê', 14, N'60319', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (444, N'Huy?n Ayun Pa', 14, N'60321', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (445, N'Huy?n Krông Pa', 14, N'60323', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (447, N'Thành ph? Buôn Ma Thu?t', 58, N'60501', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (448, N'Huy?n Ea H''leo', 58, N'60503', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (449, N'Huy?n Ea Súp', 58, N'60505', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (450, N'Huy?n Krông Nang', 58, N'60507', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (451, N'Huy?n Krông Búk', 58, N'60509', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (452, N'Huy?n Buôn Ðôn', 58, N'60511', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (453, N'Huy?n Cu M''gar', 58, N'60513', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (454, N'Huy?n Ea Kar', 58, N'60515', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (455, N'Huy?n M''Ðr?k', 58, N'60517', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (456, N'Huy?n Krông P?c', 58, N'60519', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (457, N'Huy?n Cu Jút', 64, N'60703', 1, 2)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (458, N'Huy?n Krông A Na', 58, N'60523', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (459, N'Huy?n Krông Bông', 58, N'60525', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (460, N'Huy?n Ð?k Mil', 64, N'60705', 1, 3)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (461, N'Huy?n Krông Nô', 64, N'60707', 1, 4)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (462, N'Huy?n L?k', 58, N'60531', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (463, N'Huy?n Ð?k R''L?p', 58, N'60533', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (464, N'Huy?n Ðak Glong', 64, N'60701', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (466, N'Qu?n 1', 24, N'70101', 1, 24)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (467, N'Qu?n 2', 24, N'70103', 1, 15)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (468, N'Qu?n 3', 24, N'70105', 1, 16)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (469, N'Qu?n 4', 24, N'70107', 1, 17)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (470, N'Qu?n 5', 24, N'70109', 1, 18)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (471, N'Qu?n 6', 24, N'70111', 1, 19)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (472, N'Qu?n 7', 24, N'70113', 1, 20)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (473, N'Qu?n 8', 24, N'70115', 1, 21)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (474, N'Qu?n 9', 24, N'70117', 1, 22)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (475, N'Qu?n 10', 24, N'70119', 1, 1)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (476, N'Qu?n 11', 24, N'70121', 1, 23)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (477, N'Qu?n 12', 24, N'70123', 1, 14)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (478, N'Qu?n Gò V?p', 24, N'70125', 1, 13)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (479, N'Qu?n Tân Bình', 24, N'70127', 1, 4)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (480, N'Qu?n Bình Th?nh', 24, N'70129', 1, 11)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (481, N'Qu?n Phú Nhu?n', 24, N'70131', 1, 9)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (482, N'Qu?n Th? Ð?c', 24, N'70133', 1, 8)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (483, N'Huy?n C? Chi', 24, N'70135', 1, 12)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (484, N'Huy?n Hóc Môn', 24, N'70137', 1, 6)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (485, N'Huy?n Bình Chánh', 24, N'70139', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (486, N'Huy?n Nhà Bè', 24, N'70141', 1, 7)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (487, N'Huy?n C?n Gi?', 24, N'70143', 1, 10)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (489, N'Thành ph? Ðà L?t', 32, N'70301', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (490, N'Th? xã B?o L?c', 32, N'70303', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (491, N'Huy?n L?c Duong', 32, N'70305', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (492, N'Huy?n Ðon Duong', 32, N'70307', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (493, N'Huy?n Ð?c Tr?ng', 32, N'70309', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (494, N'Huy?n Lâm Hà', 32, N'70311', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (495, N'Huy?n B?o Lâm', 32, N'70313', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (496, N'Huy?n Di Linh', 32, N'70315', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (497, N'Huy?n Ð? Huoai', 32, N'70317', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (498, N'Huy?n Ð? T?h', 32, N'70319', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (499, N'Huy?n Cát Tiên', 32, N'70321', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (501, N'Th? xã Phan Rang-Tháp Chàm', 37, N'70501', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (502, N'Huy?n Ninh Son', 37, N'70503', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (503, N'Huy?n Ninh H?i', 37, N'70505', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (504, N'Huy?n Ninh Phu?c', 37, N'70507', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (506, N'Huy?n Ð?ng Phú', 4, N'70701', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (507, N'Huy?n Phu?c Long', 4, N'70703', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (508, N'Huy?n L?c Ninh', 4, N'70705', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (509, N'Huy?n Bù Ðang', 4, N'70707', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (510, N'Huy?n Bình Long', 4, N'70709', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (512, N'Th? xã Tây Ninh', 53, N'70901', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (513, N'Huy?n Tân Biên', 53, N'70903', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (514, N'Huy?n Tân Châu', 53, N'70905', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (515, N'Huy?n Duong Minh Châu', 53, N'70907', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (516, N'Huy?n Châu Thành', 53, N'70909', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (517, N'Huy?n Hòa Thành', 53, N'70911', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (518, N'Huy?n B?n C?u', 53, N'70913', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (519, N'Huy?n Gò D?u', 53, N'70915', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (520, N'Huy?n Tr?ng Bàng', 53, N'70917', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (522, N'Th? xã Th? D?u M?t', 3, N'71101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (523, N'Huy?n B?n Cát', 3, N'71103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (524, N'Huy?n Tân Uyên', 3, N'71105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (525, N'Huy?n Thu?n An', 3, N'71107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (527, N'Thành ph? Biên Hòa', 59, N'71301', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (528, N'Huy?n Tân Phú', 59, N'71303', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (529, N'Huy?n Ð?nh Quán', 59, N'71305', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (530, N'Huy?n Vinh C?u', 59, N'71307', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (531, N'Huy?n Th?ng Nh?t', 59, N'71309', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (532, N'Huy?n Long Khánh', 59, N'71311', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (533, N'Huy?n Xuân L?c', 59, N'71313', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (534, N'Huy?n Long Thành', 59, N'71315', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (535, N'Huy?n Nhon Tr?ch', 59, N'71317', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (537, N'Th? xã Phan Thi?t', 5, N'71501', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (538, N'Huy?n Tuy Phong', 5, N'71503', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (539, N'Huy?n B?c Bình', 5, N'71505', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (540, N'Huy?n Hàm Thu?n B?c', 5, N'71507', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (541, N'Huy?n Hàm Thu?n Nam', 5, N'71509', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (542, N'Huy?n Tánh Linh', 5, N'71511', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (543, N'Huy?n Hàm Tân', 5, N'71513', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (544, N'Huy?n Ð?c Linh', 5, N'71515', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (545, N'Huy?n Phú Quí', 5, N'71517', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (547, N'Thành ph? Vung T?u', 2, N'71701', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (548, N'Th? xã Bà R?a', 2, N'71703', 1, 5)
GO
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (549, N'Huy?n Châu Ð?c', 2, N'71705', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (550, N'Huy?n Xuyên M?c', 2, N'71707', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (551, N'Huy?n Tân Thành', 2, N'71709', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (552, N'Huy?n Long Ð?t', 2, N'71711', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (553, N'Huy?n Côn Ð?o', 2, N'71713', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (555, N'Th? xã Tân An', 30, N'80101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (556, N'Huy?n Tân Hung', 30, N'80103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (557, N'Huy?n Vinh Hung', 30, N'80105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (558, N'Huy?n M?c Hóa', 30, N'80107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (559, N'Huy?n Tân Th?nh', 30, N'80109', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (560, N'Huy?n Th?nh Hóa', 30, N'80111', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (561, N'Huy?n Ð?c Hu?', 30, N'80113', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (562, N'Huy?n Ð?c Hòa', 30, N'80115', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (563, N'Huy?n B?n L?c', 30, N'80117', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (564, N'Huy?n Th? Th?a', 30, N'80119', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (565, N'Huy?n Châu Thành', 30, N'80121', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (566, N'Huy?n Tân Tr?', 30, N'80123', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (567, N'Huy?n C?n Ðu?c', 30, N'80125', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (568, N'Huy?n C?n Giu?c', 30, N'80127', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (570, N'Th? xã Cao Lãnh', 60, N'80301', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (571, N'Th? xã Sa Ðéc', 60, N'80303', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (572, N'Huy?n Tân H?ng', 60, N'80305', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (573, N'Huy?n H?ng Ng?', 60, N'80307', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (574, N'Huy?n Tam Nông', 60, N'80309', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (575, N'Huy?n Thanh Bình', 60, N'80311', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (576, N'Huy?n Tháp Mu?i', 60, N'80313', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (577, N'Huy?n Cao Lãnh', 60, N'80315', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (578, N'Huy?n L?p Vò', 60, N'80317', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (579, N'Huy?n Lai Vung', 60, N'80319', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (580, N'Huy?n Châu Thành', 60, N'80321', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (582, N'Thành Ph? Long Xuyên', 1, N'80501', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (583, N'Th? xã Châu Ð?c', 1, N'80503', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (584, N'Huy?n An Phú', 1, N'80505', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (585, N'Huy?n Tân Châu', 1, N'80507', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (586, N'Huy?n Phú Tân', 1, N'80509', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (587, N'Huy?n Châu Phú', 1, N'80511', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (588, N'Huy?n T?nh Biên', 1, N'80513', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (589, N'Huy?n Tri Tôn', 1, N'80515', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (590, N'Huy?n Ch? M?i', 1, N'80517', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (591, N'Huy?n Châu Thành', 1, N'80519', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (592, N'Huy?n Tho?i Son', 1, N'80521', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (594, N'Thành ph? M? Tho', 50, N'80701', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (595, N'Th? xã Gò Công', 50, N'80703', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (596, N'Huy?n Tân Phu?c', 50, N'80705', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (597, N'Huy?n Châu Thành', 50, N'80707', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (598, N'Huy?n Cai L?y', 50, N'80709', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (599, N'Huy?n Ch? G?o', 50, N'80711', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (600, N'Huy?n Cái Bè', 50, N'80713', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (601, N'Huy?n Gò Công Tây', 50, N'80715', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (602, N'Huy?n Gò Công Ðông', 50, N'80717', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (604, N'Th? xã Vinh Long', 54, N'80901', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (605, N'Huy?n Long H?', 54, N'80903', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (606, N'Huy?n Mang Thít', 54, N'80905', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (607, N'Huy?n Bình Minh', 54, N'80907', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (608, N'Huy?n Tam Bình', 54, N'80909', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (609, N'Huy?n Trà Ôn', 54, N'80911', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (610, N'Huy?n Vung Liêm', 54, N'80913', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (612, N'Th? xã B?n Tre', 10, N'81101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (613, N'Huy?n Châu Thành', 10, N'81103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (614, N'Huy?n Ch? Lách', 10, N'81105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (615, N'Huy?n M? Cày', 10, N'81107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (616, N'Huy?n Gi?ng Trôm', 10, N'81109', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (617, N'Huy?n Bình Ð?i', 10, N'81111', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (618, N'Huy?n Ba Tri', 10, N'81113', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (619, N'Huy?n Th?nh Phú', 10, N'81115', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (621, N'Th? xã R?ch Giá', 27, N'81301', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (622, N'Huy?n Hà Tiên', 27, N'81303', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (623, N'Huy?n Hòn Ð?t', 27, N'81305', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (624, N'Huy?n Tân Hi?p', 27, N'81307', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (625, N'Huy?n Châu Thành', 27, N'81309', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (626, N'Huy?n Gi?ng Gi?ng', 27, N'81311', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (627, N'Huy?n Gò Quao', 27, N'81313', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (628, N'Huy?n An Biên', 27, N'81315', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (629, N'Huy?n An Minh', 27, N'81317', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (630, N'Huy?n Vinh Thu?n', 27, N'81319', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (631, N'Huy?n Phú Qu?c', 27, N'81321', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (632, N'Huy?n Kiên H?i', 27, N'81323', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (633, N'Th? xã Hà Tiên', 27, N'81325', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (635, N'Thành ph? C?n Tho', 13, N'81501', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (636, N'Th? xã V? Thanh', 13, N'81502', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (637, N'Huy?n Th?t N?t', 13, N'81503', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (638, N'Huy?n Ô Môn', 13, N'81505', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (639, N'Huy?n Châu Thành', 13, N'81507', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (640, N'Huy?n Ph?ng Hi?p', 13, N'81509', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (641, N'Huy?n V? Thu?', 13, N'81511', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (642, N'Huy?n Long M?', 13, N'81513', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (644, N'Th? xã Trà Vinh', 51, N'81701', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (645, N'Huy?n Càng Long', 51, N'81703', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (646, N'Huy?n Châu Thành', 51, N'81705', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (647, N'Huy?n C?u Kè', 51, N'81707', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (648, N'Huy?n Ti?u C?n', 51, N'81709', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (649, N'Huy?n C?u Ngang', 51, N'81711', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (650, N'Huy?n Trà Cú', 51, N'81713', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (651, N'Huy?n Duyên H?i', 51, N'81715', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (653, N'Th? xã Sóc Trang', 62, N'81901', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (654, N'Huy?n K? Sách', 62, N'81903', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (655, N'Huy?n Long Phú', 62, N'81905', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (656, N'Huy?n M? Tú', 62, N'81907', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (657, N'Huy?n M? Xuyên', 62, N'81909', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (658, N'Huy?n Th?nh Tr?', 62, N'81911', 1, 5)
GO
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (659, N'Huy?n Vinh Châu', 62, N'81913', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (661, N'Th? xã B?c Liêu', 61, N'82101', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (662, N'Huy?n H?ng Dân', 61, N'82103', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (663, N'Huy?n Vinh L?i', 61, N'82105', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (664, N'Huy?n Giá Rai', 61, N'82107', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (666, N'Th? xã Cà Mau', 12, N'82301', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (667, N'Huy?n Th?i Bình', 12, N'82303', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (668, N'Huy?n U Minh', 12, N'82305', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (669, N'Huy?n Tr?n Van Th?i', 12, N'82307', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (670, N'Huy?n Cái Nu?c', 12, N'82309', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (671, N'Huy?n Ð?m Doi', 12, N'82311', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (672, N'Huy?n Ng?c Hi?n', 12, N'82313', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (673, N'Huy?n Ð?k Song', 64, N'60709', 1, 6)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (674, N'Th? xã Gia Nghia', 64, N'60713', 1, 1)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (675, N'Huy?n Tuy Ð?c', 64, N'60715', 1, 7)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (676, N'Huy?n Phú Hòa', 39, N'50915', 1, 8)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (677, N'Huy?n Tây Hoà', 39, N'50917', 1, 9)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (678, N'Th? xã Ð?ng Xoài', 4, N'70711', 1, 5)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (679, N'Qu?n Bình Tân', 24, N'70145', 1, 3)
INSERT [dbo].[Quan] ([IdQuan], [TenQuan], [IdTinh], [code], [published], [ordering]) VALUES (680, N'Qu?n Tân Phú', 24, N'70147', 1, 2)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (0, NULL, NULL, NULL, NULL)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (1, N'An Giang', N'805', 1, 63)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (2, N'Bà Rịa - Vung Tàu', N'717', 1, 46)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (3, N'Bình Duong', N'711', 1, 45)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (4, N'Bình Phước', N'707', 1, 44)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (5, N'Bình Thuận', N'715', 1, 43)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (6, N'Bình Ðịnh', N'507', 1, 42)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (7, N'Bắc Giang', N'221', 1, 41)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (8, N'Bắc Kạn', N'207', 1, 40)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (9, N'Bắc Ninh', N'223', 1, 39)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (10, N'Bến Tre', N'811', 1, 38)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (11, N'Cao Bằng', N'203', 1, 37)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (12, N'Cà Mau', N'823', 1, 36)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (13, N'Cần Thơ', N'815', 1, 35)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (14, N'Gia Lai', N'603', 1, 34)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (15, N'Hà Giang', N'201', 1, 47)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (16, N'Hà Nam', N'111', 1, 48)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (17, N'Hà Nội', N'101', 1, 49)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (18, N'Hà Tây', N'105', 1, 62)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (19, N'Hà Tinh', N'405', 1, 61)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (20, N'Hòa Bình', N'305', 1, 60)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (21, N'Hung Yên', N'109', 1, 59)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (22, N'Hải Dương', N'107', 1, 58)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (23, N'Hải Phòng', N'103', 1, 57)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (24, N'Hồ Chí Minh', N'701', 1, 1)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (25, N'Khánh Hòa', N'511', 1, 56)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (27, N'Kiên Giang', N'813', 1, 55)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (28, N'Kon Tum', N'601', 1, 54)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (29, N'Lai Châu', N'301', 1, 53)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (30, N'Long An', N'801', 1, 52)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (31, N'Lào Cai', N'205', 1, 51)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (32, N'Lâm Ð?ng', N'703', 1, 50)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (33, N'Lạng Sơn', N'209', 1, 33)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (34, N'Nam Định', N'113', 1, 32)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (35, N'Nghệ An', N'403', 1, 15)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (36, N'Ninh Bình', N'117', 1, 14)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (37, N'Ninh Thuận', N'705', 1, 13)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (38, N'Phú Th?', N'217', 1, 12)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (39, N'Phú Yên', N'509', 1, 11)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (40, N'Qu?ng Bình', N'407', 1, 10)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (41, N'Qu?ng Nam', N'503', 1, 9)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (42, N'Qu?ng Ngãi', N'505', 1, 7)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (43, N'Qu?ng Ninh', N'225', 1, 6)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (44, N'Qu?ng Tr?', N'409', 1, 5)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (45, N'Son La', N'303', 1, 4)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (46, N'Thanh Hóa', N'401', 1, 3)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (47, N'Thái Bình', N'115', 1, 2)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (48, N'Thái Nguyên', N'215', 1, 16)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (49, N'Th?a Thiên - Hu?', N'411', 1, 17)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (50, N'Ti?n Giang', N'807', 1, 31)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (51, N'Trà Vinh', N'817', 1, 30)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (52, N'Tuyên Quang', N'211', 1, 29)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (53, N'Tây Ninh', N'709', 1, 28)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (54, N'Vinh Long', N'809', 1, 27)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (55, N'Vinh Phúc', N'104', 1, 26)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (56, N'Yên Bái', N'213', 1, 25)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (57, N'Ðà N?ng', N'501', 1, 24)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (58, N'Ð?k L?k', N'605', 1, 23)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (59, N'Ð?ng Nai', N'713', 1, 22)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (60, N'Ð?ng Tháp', N'803', 1, 21)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (61, N'B?c Liêu', N'821', 1, 20)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (62, N'Sóc Trang', N'819', 1, 19)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (63, N'H?u Giang', N'825', 1, 18)
INSERT [dbo].[Tinh] ([IdTinh], [TenTinh], [code], [published], [ordering]) VALUES (64, N'Ð?k Nông', N'607', 1, 8)
SET IDENTITY_INSERT [dbo].[TrinhDo] ON 

INSERT [dbo].[TrinhDo] ([IdTrinhDo], [HocVan], [TruongHoc], [ChuyenMon], [NgoaiNgu], [ViTinh], [ThoiGian], [IdNhanVien]) VALUES (4, N'Đại học', N'Hutech', N'CNTT', N'Hàn Anh Pháp', N'BA', CAST(N'0001-01-01' AS Date), 111)
SET IDENTITY_INSERT [dbo].[TrinhDo] OFF
ALTER TABLE [dbo].[NhanVienChucVu] ADD  CONSTRAINT [DF_NhanVienChucVu_ThoiGian]  DEFAULT (NULL) FOR [ThoiGian]
GO
ALTER TABLE [dbo].[ChiTietNghiPhep]  WITH CHECK ADD FOREIGN KEY([IdNghiPhep], [IdNhanVien], [IdLoaiPhep])
REFERENCES [dbo].[NghiPhep] ([IdNghiPhep], [IdNhanVien], [IdLoaiPhep])
GO
ALTER TABLE [dbo].[CongTac]  WITH CHECK ADD  CONSTRAINT [FK__CongTac__IdNhanV__4222D4EF] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[CongTac] CHECK CONSTRAINT [FK__CongTac__IdNhanV__4222D4EF]
GO
ALTER TABLE [dbo].[DiaChiLienLac]  WITH CHECK ADD  CONSTRAINT [FK_DiaChiLienLac_NhanVien] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[DiaChiLienLac] CHECK CONSTRAINT [FK_DiaChiLienLac_NhanVien]
GO
ALTER TABLE [dbo].[DiaChiThuongTru]  WITH CHECK ADD  CONSTRAINT [FK__DiaChiThu__IdNha__30C33EC3] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[DiaChiThuongTru] CHECK CONSTRAINT [FK__DiaChiThu__IdNha__30C33EC3]
GO
ALTER TABLE [dbo].[DiaDiemLamViec]  WITH CHECK ADD  CONSTRAINT [FK__DiaDiemLa__IdNha__4CA06362] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[DiaDiemLamViec] CHECK CONSTRAINT [FK__DiaDiemLa__IdNha__4CA06362]
GO
ALTER TABLE [dbo].[DonXinNghiThaiSan]  WITH CHECK ADD  CONSTRAINT [FK_DonXinNghiThaiSan_NhanVien] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[DonXinNghiThaiSan] CHECK CONSTRAINT [FK_DonXinNghiThaiSan_NhanVien]
GO
ALTER TABLE [dbo].[HopDongLaoDong]  WITH CHECK ADD  CONSTRAINT [FK__HopDongLa__IdLoa__571DF1D5] FOREIGN KEY([IdLoaiHopDong])
REFERENCES [dbo].[LoaiHopDong] ([IdLoaiHopDong])
GO
ALTER TABLE [dbo].[HopDongLaoDong] CHECK CONSTRAINT [FK__HopDongLa__IdLoa__571DF1D5]
GO
ALTER TABLE [dbo].[HopDongLaoDong]  WITH CHECK ADD  CONSTRAINT [FK__HopDongLa__IdNha__4BAC3F29] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[HopDongLaoDong] CHECK CONSTRAINT [FK__HopDongLa__IdNha__4BAC3F29]
GO
ALTER TABLE [dbo].[KhamThaiSan]  WITH CHECK ADD  CONSTRAINT [FK__KhamThaiSan__4F7CD00D] FOREIGN KEY([IdThaiSan], [IdNhanVien])
REFERENCES [dbo].[ThaiSan] ([IdThaiSan], [IdNhanVien])
GO
ALTER TABLE [dbo].[KhamThaiSan] CHECK CONSTRAINT [FK__KhamThaiSan__4F7CD00D]
GO
ALTER TABLE [dbo].[LichNhanVien]  WITH CHECK ADD  CONSTRAINT [FK__LichNhanV__IdLic__5EBF139D] FOREIGN KEY([IdLich])
REFERENCES [dbo].[LichLamViec] ([IdLich])
GO
ALTER TABLE [dbo].[LichNhanVien] CHECK CONSTRAINT [FK__LichNhanV__IdLic__5EBF139D]
GO
ALTER TABLE [dbo].[LichNhanVien]  WITH CHECK ADD  CONSTRAINT [FK__LichNhanV__IdNha__4AB81AF0] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[LichNhanVien] CHECK CONSTRAINT [FK__LichNhanV__IdNha__4AB81AF0]
GO
ALTER TABLE [dbo].[LogBoPhan]  WITH CHECK ADD  CONSTRAINT [FK_LogBoPhan_NhanVien1] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[LogBoPhan] CHECK CONSTRAINT [FK_LogBoPhan_NhanVien1]
GO
ALTER TABLE [dbo].[LogHDLD]  WITH CHECK ADD  CONSTRAINT [FK__LogHDLD__4D94879B] FOREIGN KEY([IdHopDong], [IdNhanVien], [IdLoaiHopDong])
REFERENCES [dbo].[HopDongLaoDong] ([IdHopDong], [IdNhanVien], [IdLoaiHopDong])
GO
ALTER TABLE [dbo].[LogHDLD] CHECK CONSTRAINT [FK__LogHDLD__4D94879B]
GO
ALTER TABLE [dbo].[NghiPhep]  WITH CHECK ADD  CONSTRAINT [FK_NghiPhep_LoaiPhep] FOREIGN KEY([IdLoaiPhep])
REFERENCES [dbo].[LoaiPhep] ([IdLoaiPhep])
GO
ALTER TABLE [dbo].[NghiPhep] CHECK CONSTRAINT [FK_NghiPhep_LoaiPhep]
GO
ALTER TABLE [dbo].[NghiPhep]  WITH CHECK ADD  CONSTRAINT [FK_NghiPhep_NhanVien] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[NghiPhep] CHECK CONSTRAINT [FK_NghiPhep_NhanVien]
GO
ALTER TABLE [dbo].[NhanVienChucVu]  WITH CHECK ADD  CONSTRAINT [FK__NhanVienC__IdChu__5629CD9C] FOREIGN KEY([IdChucVu])
REFERENCES [dbo].[ChucVu] ([IdChucVu])
GO
ALTER TABLE [dbo].[NhanVienChucVu] CHECK CONSTRAINT [FK__NhanVienC__IdChu__5629CD9C]
GO
ALTER TABLE [dbo].[NhanVienChucVu]  WITH CHECK ADD  CONSTRAINT [FK__NhanVienC__IdNha__48CFD27E] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[NhanVienChucVu] CHECK CONSTRAINT [FK__NhanVienC__IdNha__48CFD27E]
GO
ALTER TABLE [dbo].[NuoiConNho]  WITH CHECK ADD  CONSTRAINT [FK__NuoiConNh__IdNha__778AC167] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[NuoiConNho] CHECK CONSTRAINT [FK__NuoiConNh__IdNha__778AC167]
GO
ALTER TABLE [dbo].[ThaiSan]  WITH CHECK ADD  CONSTRAINT [FK__ThaiSan__IdNhanV__46E78A0C] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[ThaiSan] CHECK CONSTRAINT [FK__ThaiSan__IdNhanV__46E78A0C]
GO
ALTER TABLE [dbo].[TinhTrangHopDong]  WITH CHECK ADD  CONSTRAINT [FK__TinhTrangHopDong__4E88ABD4] FOREIGN KEY([IdHopDong], [IdNhanVien], [IdLoaiHopDong])
REFERENCES [dbo].[HopDongLaoDong] ([IdHopDong], [IdNhanVien], [IdLoaiHopDong])
GO
ALTER TABLE [dbo].[TinhTrangHopDong] CHECK CONSTRAINT [FK__TinhTrangHopDong__4E88ABD4]
GO
ALTER TABLE [dbo].[TrinhDo]  WITH CHECK ADD  CONSTRAINT [FK__TrinhDo__IdNhanV__440B1D61] FOREIGN KEY([IdNhanVien])
REFERENCES [dbo].[NhanVien] ([IdNhanVien])
GO
ALTER TABLE [dbo].[TrinhDo] CHECK CONSTRAINT [FK__TrinhDo__IdNhanV__440B1D61]
GO
/****** Object:  StoredProcedure [dbo].[ChiTietNhanVienTheoId]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChiTietNhanVienTheoId]
    @IdNhanVien int
AS
BEGIN
     SELECT nv.IdNhanVien, nv.HoTen,nv.IdGioiTinh, nv.NgayVao,nv.NgaySinh,nv.NoiSinh, nv.HonNhan
	 , nv.DienThoai, nv.DienThoaiNguoiThan,nv.EmailCTy,nv.EmailCaNhan,nv.QuocTich,nv.TonGiao, nv.DanToc
	 , nv.hinh,NV.SoNguoiPhuThuoc, nv.TrangThai[TrangThaiNhanVien], NV.Mvt, NV.Ka, NV.ToLamViec, nv.NgayNghi,nv.NguoiGioiThieu
	 , nv.SoCMND, nv.NgayCap, nv.NoiCap, nv.NguyenQuan
	 , td.HocVan,td.TruongHoc, td.ChuyenMon, td.NgoaiNgu, td.ViTinh, td.ThoiGian[ThoiGianTrinhDo]
	 , lbp.NgayThayDoi, lbp.IdBoPhan
	 , dctt.SoNhaDuong[SoNhaDuongThuongTru], dctt.TrangThai[TrangThaiThuongTru], dctt.IdTinh_TP[Tinh_TPThuongTru], dctt.IdQuan_Huyen[Quan_HuyenThuongTru]
	 , dcll.SoNhaDuong[SoNhaDuongLienLac], dcll.Thoigian, dcll.TrangThai, dcll.IdTinh_TP[Tinh_TPLienLac], dcll.IdQuan_Huyen[Quan_HuyenLienLac]
	 FROM NhanVien nv, TrinhDo td, LogBoPhan lbp, DiaChiThuongTru dctt, DiaChiLienLac dcll
     WHERE nv.IdNhanVien = @IdNhanVien 
	 and nv.IdNhanVien = td.IdNhanVien
	 and nv.IdNhanVien = lbp.IdNhanVien
	 and lbp.NgayThayDoi = ( select max(lbp.NgayThayDoi) from LogBoPhan lbp where nv.IdNhanVien=Lbp.IdNhanVien)
	 and nv.IdNhanVien = dctt.IdNhanVien
	 and nv.IdNhanVien = dcll.IdNhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[DanhSachNhanVien]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DanhSachNhanVien]
AS
BEGIN
	SELECT nv.Hinh, nv.IdNhanVien, nv.HoTen, nv.NgayVao, nv.TrangThai, lbp.IdBoPhan, lbp.NgayThayDoi
	FROM NhanVien nv, LogBoPhan lbp
	WHERE nv.IdNhanVien = lbp.IdNhanVien
end
GO
/****** Object:  StoredProcedure [dbo].[SuaNhanVien]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SuaNhanVien]
	@IdNhanVien int, @HoTen nvarchar(100), @GioiTinh int, @NgayVao date
	, @NgaySinh date, @NoiSinh nvarchar(100), @HonNhan nvarchar(100)
	, @DienThoai nvarchar(15), @DienThoaiNguoiThan nvarchar(15), @EmailCTy nvarchar(100)
	, @EmailCaNhan nvarchar(100), @QuocTich nvarchar(100), @TonGiao nvarchar(100)
	, @DanToc nvarchar(100), @Hinh nvarchar(200), @SoNguoiPhuThuoc int, @TrangThai bit
	, @Mvt int, @Ka nvarchar(100), @To nvarchar(100), @NgayNghi date, @NguoiGioiThieu nvarchar(100)
	, @SoCMND nvarchar(100), @NgayCap date, @NoiCap nvarchar(100), @NguyenQuan nvarchar(100)

AS
BEGIN
UPDATE NhanVien
SET IdNhanVien = @IdNhanVien, HoTen = @HoTen, IdGioiTinh = @GioiTinh, NgayVao = @NgayVao
	, NgaySinh = @NgaySinh, NoiSinh = @NoiSinh, HonNhan = @HonNhan
	, DienThoai = @DienThoai, DienThoaiNguoiThan = @DienThoaiNguoiThan, EmailCTy = @EmailCTy
	, EmailCaNhan = @EmailCaNhan, QuocTich = @QuocTich, TonGiao = @TonGiao
	, DanToc = @DanToc, Hinh = @Hinh, SoNguoiPhuThuoc = @SoNguoiPhuThuoc, TrangThai = @TrangThai
	, Mvt = @Mvt, Ka = @Ka, ToLamViec = @To, NgayNghi = @NgayNghi, NguoiGioiThieu = @NguoiGioiThieu
	, SoCMND = @SoCMND, NgayCap = @NgayCap, NoiCap = @NoiCap, NguyenQuan = @NguyenQuan
WHERE IdNhanVien = @IdNhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[ThemBoPhan]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemBoPhan]
	@TenBoPhan nvarchar(100)
AS
BEGIN
INSERT INTO BoPhan(TenBoPhan)
	VALUES (@TenBoPhan)
SELECT 
		TenBoPhan = @TenBoPhan
FROM BoPhan 
END

GO
/****** Object:  StoredProcedure [dbo].[ThemDiaChiLienLac]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemDiaChiLienLac]
	@SoNhaDuong nvarchar(1000), @ThoiGian date, @TrangThai bit, @IdTinh_TP int, @IdNhanVien int, @IdQuan_Huyen int
AS
BEGIN
INSERT INTO DiaChiLienLac(SoNhaDuong, Thoigian, TrangThai, IdTinh_TP, IdNhanVien, IdQuan_Huyen)
	VALUES (@SoNhaDuong, @ThoiGian, @TrangThai, @IdTinh_TP, @IdNhanVien, @IdQuan_Huyen)
SELECT 
		SoNhaDuong = @SoNhaDuong, Thoigian = @ThoiGian, TrangThai = @TrangThai, IdTinh_TP = @IdTinh_TP, NhanVien = @IdNhanVien
		, IdQuan_Huyen = @IdQuan_Huyen
FROM DiaChiLienLac
END
GO
/****** Object:  StoredProcedure [dbo].[ThemDiaChiThuongTru]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemDiaChiThuongTru]
	@IdTinh_TP int, @SoNhaDuong nvarchar(1000), @TrangThai bit, @IdNhanVien int, @IdQuan_Huyen int 
AS
BEGIN
INSERT INTO DiaChiThuongTru(IdTinh_TP, SoNhaDuong, TrangThai, IdNhanVien, IdQuan_Huyen)
	VALUES (@IdTinh_TP, @SoNhaDuong, @TrangThai, @IdNhanVien, @IdQuan_Huyen)
SELECT 
		IdTinh = @IdTinh_TP, SoNhaDuong = @SoNhaDuong, TrangThai = @TrangThai, IdNhanVien = @IdNhanVien, IdQuan_Huyen = @IdQuan_Huyen
FROM DiaChiThuongTru
END
GO
/****** Object:  StoredProcedure [dbo].[ThemLogBoPhan]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemLogBoPhan]
	@NgayThayDoi date, @IdNhanVien int, @IdBoPhan int
AS
BEGIN
INSERT INTO LogBoPhan(NgayThayDoi,IdNhanVien, IdBoPhan)
	VALUES (@NgayThayDoi, @IdNhanVien, @IdBoPhan)
SELECT 
		NgayThayDoi=@NgayThayDoi, IdNhanVien = @IdNhanVien, IdBoPhan = @IdBoPhan
FROM LogBoPhan
END
GO
/****** Object:  StoredProcedure [dbo].[ThemNhanVien]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemNhanVien]
	@IdNhanVien int, @HoTen nvarchar(100), @IdGioiTinh int, @NgayVao date
	, @NgaySinh date, @NoiSinh nvarchar(100), @HonNhan nvarchar(100)
	, @DienThoai nvarchar(15), @DienThoaiNguoiThan nvarchar(15), @EmailCTy nvarchar(100)
	, @EmailCaNhan nvarchar(100), @QuocTich nvarchar(100), @TonGiao nvarchar(100)
	, @DanToc nvarchar(100), @Hinh nvarchar(200), @SoNguoiPhuThuoc int, @TrangThai bit
	, @Mvt int, @Ka nvarchar(100), @ToLamViec nvarchar(100), @NgayNghi date, @NguoiGioiThieu nvarchar(100)
	, @SoCMND nvarchar(100), @NgayCap date, @NoiCap nvarchar(100), @NguyenQuan nvarchar(100)
AS
BEGIN
INSERT INTO NhanVien (
		IdNhanVien, HoTen, IdGioiTinh,NgayVao,NgaySinh, NoiSinh, HonNhan
		, DienThoai, DienThoaiNguoiThan, EmailCTy, EmailCaNhan, QuocTich, TonGiao
		, DanToc, Hinh, SoNguoiPhuThuoc, TrangThai, Mvt, Ka, ToLamViec, NgayNghi, NguoiGioiThieu
		, SoCMND, NgayCap, NoiCap, NguyenQuan)
	VALUES (
		@IdNhanVien, @HoTen, @IdGioiTinh, @NgayVao, @NgaySinh, @NoiSinh, @HonNhan
		, @DienThoai, @DienThoaiNguoiThan, @EmailCTy, @EmailCaNhan, @QuocTich, @TonGiao
		, @DanToc, @Hinh, @SoNguoiPhuThuoc, @TrangThai, @Mvt, @Ka, @ToLamViec, @NgayNghi, @NguoiGioiThieu
		, @SoCMND, @NgayCap, @NoiCap, @NguyenQuan)
SELECT 
		IdNhanVien = @IdNhanVien, HoTen = @HoTen, GioiTinh = @IdGioiTinh, NgayVao = @NgayVao
		, NgaySinh = @NgaySinh, NoiSinh = @NoiSinh, HonNhan = @HonNhan
		, DienThoai = @DienThoai, DienThoaiNguoiThan = @DienThoaiNguoiThan, EmailCTy = @EmailCTy
		, EmailCaNhan = @EmailCaNhan, QuocTich = @QuocTich, TonGiao = @TonGiao
		, DanToc = @DanToc, Hinh = @Hinh, SoNguoiPhuThuoc = @SoNguoiPhuThuoc, TrangThai = @TrangThai
		, Mvt = @Mvt, Ka = @Ka, ToLamViec = @ToLamViec, NgayNghi = @NgayNghi, NguoiGioiThieu = @NguoiGioiThieu
		, SoCMND = @SoCMND, NgayCap = @NgayCap, NoiCap = @NoiCap, NguyenQuan = @NguyenQuan
FROM NhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[ThemTrinhDo]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThemTrinhDo]
	@HocVan nvarchar(500), @TruongHoc nvarchar(500), @ChuyenMon nvarchar(500)
	, @NgoaiNgu nvarchar(500), @ViTinh nvarchar(500), @ThoiGian date
	, @IdNhanVien int
AS
BEGIN
INSERT INTO TrinhDo(HocVan, TruongHoc, ChuyenMon, NgoaiNgu, ViTinh, ThoiGian, IdNhanVien)
	VALUES (@HocVan, @TruongHoc, @ChuyenMon, @NgoaiNgu, @ViTinh, @ThoiGian, @IdNhanVien)
SELECT 
		HocVan = @HocVan, TruongHoc = @TruongHoc, ChuyenMon = @ChuyenMon
		, NgoaiNgu = @NgoaiNgu, ViTinh = @ViTinh, ThoiGian = @ThoiGian
		, IdNhanVien = @IdNhanVien
FROM TrinhDo
END
GO
/****** Object:  StoredProcedure [dbo].[XoaDiaChiLienLac]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaDiaChiLienLac] 
    @IdNhanVien int
AS 
BEGIN 
DELETE
FROM   DiaChiLienLac
WHERE  IdNhanVien = @IdNhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[XoaDiaChiThuongTru]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaDiaChiThuongTru] 
    @IdNhanVien int
AS 
BEGIN 
DELETE
FROM   DiaChiThuongTru
WHERE  IdNhanVien = @IdNhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[XoaLogBoPhan]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaLogBoPhan] 
    @IdNhanVien int
AS 
BEGIN 
DELETE
FROM   LogBoPhan
WHERE  IdNhanVien = @IdNhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[XoaNhanVien]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaNhanVien] 
    @IdNhanVien int
AS 
BEGIN 
DELETE
FROM   NhanVien
WHERE  IdNhanVien = @IdNhanVien
END


GO
/****** Object:  StoredProcedure [dbo].[XoaTrinhDo]    Script Date: 13/02/2018 3:01:38 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaTrinhDo] 
    @IdNhanVien int
AS 
BEGIN 
DELETE
FROM   TrinhDo
WHERE  IdNhanVien = @IdNhanVien
END
GO
