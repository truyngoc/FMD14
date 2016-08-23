use SLXNK
go
declare @tblTableNew table
        (sSQL varchar(max))
declare @tblColumnAdded table
        (sSQL varchar(max))
--SQL 1 
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DHDGC]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_HD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [So_HD] varchar(80) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [So_HD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HQHD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Ma_HQHD] varchar(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Ma_HQHD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVGC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [DVGC] varchar(14) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [DVGC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_Ky' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Ngay_Ky] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Ngay_Ky]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [So_GP] varchar(20) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [So_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Ngay_GP] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Ngay_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVDT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [DVDT] nvarchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [DVDT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DiaChi_DT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [DiaChi_DT] nvarchar(80) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [DiaChi_DT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Ngay_DK] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Ngay_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Ngay_HH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Ngay_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_GH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Ngay_GH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Ngay_GH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NuocThueGC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [NuocThueGC] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [NuocThueGC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ThiTruongXK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [ThiTruongXK] nvarchar(255) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [ThiTruongXK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Consignee' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Consignee] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Consignee]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DK_Giao' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [DK_Giao] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [DK_Giao]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TGian_Giao' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [TGian_Giao] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [TGian_Giao]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TriGiaGC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [TriGiaGC] numeric(18,3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [TriGiaGC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'GiaGC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [GiaGC] numeric(18,3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [GiaGC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NgTe' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [NgTe] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [NgTe]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PTTT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [PTTT] nvarchar(80) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [PTTT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ThoiHanTT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [ThoiHanTT] nvarchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [ThoiHanTT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PTXuLy' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [PTXuLy] nvarchar(80) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [PTXuLy]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MaSPGC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [MaSPGC] nvarchar(255) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [MaSPGC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TenSPGC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [TenSPGC] nvarchar(255) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [TenSPGC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nhan_Hieu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Nhan_Hieu] nvarchar(255) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Nhan_Hieu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SoLuong_SP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [SoLuong_SP] numeric(18,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [SoLuong_SP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MaDVT_SP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [MaDVT_SP] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [MaDVT_SP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nguoi_TD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Nguoi_TD] nvarchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Nguoi_TD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ThanhKhoan' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [ThanhKhoan] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [ThanhKhoan]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_TK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Ngay_TK] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Ngay_TK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_TK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [So_TK] varchar(10) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [So_TK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nguoi_TK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Nguoi_TK] nvarchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Nguoi_TK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NoiDung_TK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [NoiDung_TK] nvarchar(255) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [NoiDung_TK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nguoi_Duyet' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Nguoi_Duyet] nvarchar(40) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Nguoi_Duyet]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nguoi_VM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Nguoi_VM] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Nguoi_VM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_VM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Ngay_VM] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Ngay_VM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_Luu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [So_Luu] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [So_Luu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'STT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [STT] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [STT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_PCTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Ngay_PCTK] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Ngay_PCTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TTCS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [TTCS] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [TTCS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TrangThai' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [TrangThai] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [TrangThai]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_TN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [So_TN] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [So_TN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nam_TN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [Nam_TN] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [Nam_TN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_NGUOI_NHAN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [MA_NGUOI_NHAN] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [MA_NGUOI_NHAN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_NGUOI_NHAN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [TEN_NGUOI_NHAN] nvarchar(80) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [TEN_NGUOI_NHAN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DIA_CHI_NGUOI_NHAN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [DIA_CHI_NGUOI_NHAN] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [DIA_CHI_NGUOI_NHAN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_NGUOI_THUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [MA_NGUOI_THUE] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [MA_NGUOI_THUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_NGUOI_THUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [TEN_NGUOI_THUE] nvarchar(80) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [TEN_NGUOI_THUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DIA_CHI_NGUOI_THUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [DIA_CHI_NGUOI_THUE] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [DIA_CHI_NGUOI_THUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NuocNhanGC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [NuocNhanGC] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [NuocNhanGC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'GHI_CHU_KHAC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [GHI_CHU_KHAC] nvarchar(2000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [GHI_CHU_KHAC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DV_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [MA_DV_KB] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [MA_DV_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DV_XN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [MA_DV_XN] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [MA_DV_XN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_DV_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [TEN_DV_KB] nvarchar(80) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [TEN_DV_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_DV_XN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [TEN_DV_XN] nvarchar(80) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [TEN_DV_XN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DV_UT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [MA_DV_UT] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [MA_DV_UT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_DV_UT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [TEN_DV_UT] nvarchar(80) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [TEN_DV_UT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DV_NT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [MA_DV_NT] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [MA_DV_NT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_DV_NT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [TEN_DV_NT] nvarchar(80) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [TEN_DV_NT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'GIA_CONG_NGUOC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHDGC]') AND type in (N'U')))
Begin
Alter Table [DHDGC] add [GIA_CONG_NGUOC] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [DHDGC] da duoc bo sung them Column [GIA_CONG_NGUOC]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DNPLHD]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_HD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [So_HD] varchar(80) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [So_HD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HQHD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [Ma_HQHD] varchar(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [Ma_HQHD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVGC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [DVGC] varchar(14) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [DVGC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_Ky' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [Ngay_Ky] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [Ngay_Ky]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'P_Code' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [P_Code] varchar(51) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [P_Code]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'HS_Code' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [HS_Code] char(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [HS_Code]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ten_NPL' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [Ten_NPL] nvarchar(256) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [Ten_NPL]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SL_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [SL_DK] numeric(18,6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [SL_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SL_DC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [SL_DC] numeric(18,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [SL_DC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'VB_DC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [VB_DC] nvarchar(80) NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [VB_DC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DinhMuc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [DinhMuc] numeric(18,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [DinhMuc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SL_TN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [SL_TN] numeric(18,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [SL_TN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SL_SD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [SL_SD] numeric(18,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [SL_SD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SL_DU' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [SL_DU] numeric(18,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [SL_DU]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [Ma_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [Ma_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'HaveImported' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [HaveImported] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [HaveImported]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nguoi_VM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [Nguoi_VM] nvarchar(40) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [Nguoi_VM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_VM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [Ngay_VM] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [Ngay_VM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'STT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [STT] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [STT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SL_Conlai' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [SL_Conlai] numeric(18,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [SL_Conlai]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Mua_VN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [Mua_VN] numeric(18,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [Mua_VN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DonGia' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [DonGia] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [DonGia]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Lay_Mau' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [Lay_Mau] smallint NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [Lay_Mau]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Lan_Lay_Mau' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [Lan_Lay_Mau] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [Lan_Lay_Mau]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_Lay_Mau' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DNPLHD]') AND type in (N'U')))
Begin
Alter Table [DNPLHD] add [Ngay_Lay_Mau] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DNPLHD] da duoc bo sung them Column [Ngay_Lay_Mau]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DSPGC]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_HD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [So_HD] varchar(80) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [So_HD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HQHD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [Ma_HQHD] varchar(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [Ma_HQHD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVGC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [DVGC] varchar(14) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [DVGC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_Ky' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [Ngay_Ky] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [Ngay_Ky]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'P_Code' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [P_Code] varchar(51) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [P_Code]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'HS_Code' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [HS_Code] char(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [HS_Code]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ten_SP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [Ten_SP] nvarchar(256) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [Ten_SP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SL_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [SL_DK] numeric(18,6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [SL_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SL_DC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [SL_DC] numeric(18,6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [SL_DC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'VB_DC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [VB_DC] nvarchar(80) NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [VB_DC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [Ma_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [Ma_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DonGiaGC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [DonGiaGC] numeric(18,3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [DonGiaGC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TriGiaGC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [TriGiaGC] numeric(18,3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [TriGiaGC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Gia_FOB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [Gia_FOB] numeric(18,3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [Gia_FOB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PTTT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [PTTT] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [PTTT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NgTe' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [NgTe] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [NgTe]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'HaveExported' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [HaveExported] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [HaveExported]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NguoiDCMau' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [NguoiDCMau] nvarchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [NguoiDCMau]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NgayDCMau' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [NgayDCMau] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [NgayDCMau]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nguoi_VM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [Nguoi_VM] varchar(14) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [Nguoi_VM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_VM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [Ngay_VM] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [Ngay_VM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'STT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [STT] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [STT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SL_ConLai' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [SL_ConLai] numeric(18,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [SL_ConLai]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nhom_SP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [Nhom_SP] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [Nhom_SP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TTCS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DSPGC]') AND type in (N'U')))
Begin
Alter Table [DSPGC] add [TTCS] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DSPGC] da duoc bo sung them Column [TTCS]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DThietBi]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_HD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [So_HD] varchar(80) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [So_HD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HQHD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [Ma_HQHD] varchar(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [Ma_HQHD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVGC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [DVGC] varchar(14) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [DVGC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_Ky' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [Ngay_Ky] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [Ngay_Ky]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'P_CODE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [P_CODE] varchar(51) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [P_CODE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'HS_CODE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [HS_CODE] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [HS_CODE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ten_TB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [Ten_TB] varchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [Ten_TB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SL_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [SL_DK] numeric(18,6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [SL_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [Ma_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [Ma_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Xuat_Xu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [Xuat_Xu] varchar(80) NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [Xuat_Xu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TinhTrang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [TinhTrang] varchar(255) NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [TinhTrang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DonGia' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [DonGia] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [DonGia]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TriGia' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [TriGia] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [TriGia]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGTe' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [NGTe] varchar(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [NGTe]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nguoi_VM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [Nguoi_VM] varchar(14) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [Nguoi_VM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_VM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [Ngay_VM] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [Ngay_VM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'STT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [STT] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [STT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'HaveImported' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [HaveImported] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [HaveImported]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'GhiChu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DThietBi]') AND type in (N'U')))
Begin
Alter Table [DThietBi] add [GhiChu] varchar(255) NULL
Insert Into @tblColumnAdded
Values ('--Table [DThietBi] da duoc bo sung them Column [GhiChu]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_RA_D]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [ecsCX_DM_HH_DUA_RA_D]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HQTN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_RA_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_RA_D] add [MA_HQTN] varchar(50) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_RA_D] da duoc bo sung them Column [MA_HQTN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DV_XN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_RA_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_RA_D] add [MA_DV_XN] varchar(50) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_RA_D] da duoc bo sung them Column [MA_DV_XN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_RA_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_RA_D] add [MA_HANG] varchar(50) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_RA_D] da duoc bo sung them Column [MA_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_RA_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_RA_D] add [TEN_HANG] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_RA_D] da duoc bo sung them Column [TEN_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_RA_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_RA_D] add [MA_HS] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_RA_D] da duoc bo sung them Column [MA_HS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_RA_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_RA_D] add [MA_DVT] varchar(50) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_RA_D] da duoc bo sung them Column [MA_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MUC_DICH_SU_DUNG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_RA_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_RA_D] add [MUC_DICH_SU_DUNG] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_RA_D] da duoc bo sung them Column [MUC_DICH_SU_DUNG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LOAI_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_RA_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_RA_D] add [LOAI_HANG] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_RA_D] da duoc bo sung them Column [LOAI_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'GHI_CHU_KHAC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_RA_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_RA_D] add [GHI_CHU_KHAC] nvarchar(2000) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_RA_D] da duoc bo sung them Column [GHI_CHU_KHAC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SO_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_RA_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_RA_D] add [SO_DK] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_RA_D] da duoc bo sung them Column [SO_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NAM_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_RA_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_RA_D] add [NAM_DK] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_RA_D] da duoc bo sung them Column [NAM_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'IS_SIGN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_RA_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_RA_D] add [IS_SIGN] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_RA_D] da duoc bo sung them Column [IS_SIGN]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_VAO_D]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [ecsCX_DM_HH_DUA_VAO_D]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HQTN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_VAO_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_VAO_D] add [MA_HQTN] varchar(50) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_VAO_D] da duoc bo sung them Column [MA_HQTN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DV_XN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_VAO_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_VAO_D] add [MA_DV_XN] varchar(50) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_VAO_D] da duoc bo sung them Column [MA_DV_XN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_VAO_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_VAO_D] add [MA_HANG] varchar(50) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_VAO_D] da duoc bo sung them Column [MA_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_VAO_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_VAO_D] add [TEN_HANG] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_VAO_D] da duoc bo sung them Column [TEN_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_VAO_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_VAO_D] add [MA_HS] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_VAO_D] da duoc bo sung them Column [MA_HS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_VAO_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_VAO_D] add [MA_DVT] varchar(50) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_VAO_D] da duoc bo sung them Column [MA_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MUC_DICH_SU_DUNG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_VAO_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_VAO_D] add [MUC_DICH_SU_DUNG] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_VAO_D] da duoc bo sung them Column [MUC_DICH_SU_DUNG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LOAI_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_VAO_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_VAO_D] add [LOAI_HANG] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_VAO_D] da duoc bo sung them Column [LOAI_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'GHI_CHU_KHAC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_VAO_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_VAO_D] add [GHI_CHU_KHAC] nvarchar(2000) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_VAO_D] da duoc bo sung them Column [GHI_CHU_KHAC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SO_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_VAO_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_VAO_D] add [SO_DK] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_VAO_D] da duoc bo sung them Column [SO_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NAM_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_VAO_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_VAO_D] add [NAM_DK] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_VAO_D] da duoc bo sung them Column [NAM_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'IS_SIGN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsCX_DM_HH_DUA_VAO_D]') AND type in (N'U')))
Begin
Alter Table [ecsCX_DM_HH_DUA_VAO_D] add [IS_SIGN] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsCX_DM_HH_DUA_VAO_D] da duoc bo sung them Column [IS_SIGN]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ecsDHangMau]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [ecsDHangMau]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_HD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsDHangMau]') AND type in (N'U')))
Begin
Alter Table [ecsDHangMau] add [So_HD] varchar(80) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsDHangMau] da duoc bo sung them Column [So_HD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HQHD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsDHangMau]') AND type in (N'U')))
Begin
Alter Table [ecsDHangMau] add [Ma_HQHD] varchar(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsDHangMau] da duoc bo sung them Column [Ma_HQHD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVGC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsDHangMau]') AND type in (N'U')))
Begin
Alter Table [ecsDHangMau] add [DVGC] varchar(14) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsDHangMau] da duoc bo sung them Column [DVGC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_Ky' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsDHangMau]') AND type in (N'U')))
Begin
Alter Table [ecsDHangMau] add [Ngay_Ky] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsDHangMau] da duoc bo sung them Column [Ngay_Ky]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'P_Code' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsDHangMau]') AND type in (N'U')))
Begin
Alter Table [ecsDHangMau] add [P_Code] varchar(80) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsDHangMau] da duoc bo sung them Column [P_Code]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'HS_Code' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsDHangMau]') AND type in (N'U')))
Begin
Alter Table [ecsDHangMau] add [HS_Code] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsDHangMau] da duoc bo sung them Column [HS_Code]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ten_HM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsDHangMau]') AND type in (N'U')))
Begin
Alter Table [ecsDHangMau] add [Ten_HM] varchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsDHangMau] da duoc bo sung them Column [Ten_HM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_Luong' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsDHangMau]') AND type in (N'U')))
Begin
Alter Table [ecsDHangMau] add [So_Luong] numeric(18,6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsDHangMau] da duoc bo sung them Column [So_Luong]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsDHangMau]') AND type in (N'U')))
Begin
Alter Table [ecsDHangMau] add [Ma_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsDHangMau] da duoc bo sung them Column [Ma_DVT]')
End
END
--===============================END TABLE ===============================

 
 Select * from @tblTableNew 
 Select * from @tblColumnAdded