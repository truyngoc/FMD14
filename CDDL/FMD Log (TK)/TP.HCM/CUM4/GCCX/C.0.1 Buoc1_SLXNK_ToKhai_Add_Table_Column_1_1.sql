use SLXNK
go
declare @tblTableNew table
        (sSQL varchar(max))
declare @tblColumnAdded table
        (sSQL varchar(max))
--SQL 1 
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DHangMD]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHQ_Gia_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsHQ_Gia_Truoc] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsHQ_Gia_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_LH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Ma_LH] char(5) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Ma_LH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Ma_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Ma_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Ma_DG] char(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Ma_DG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nuoc_XX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Nuoc_XX] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Nuoc_XX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Ma_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Ma_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSoQD_XD_MaHS_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsSoQD_XD_MaHS_Truoc] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsSoQD_XD_MaHS_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHQ_MaHS_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsHQ_MaHS_Truoc] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsHQ_MaHS_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSoQD_XD_Gia_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsSoQD_XD_Gia_Truoc] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsSoQD_XD_Gia_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMaBieuThue_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsMaBieuThue_TV] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsMaBieuThue_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsMABIEUTHUE_VAT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsMABIEUTHUE_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsMABIEUTHUE_TTDB] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsMABIEUTHUE_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_BVMT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsMABIEUTHUE_BVMT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsMABIEUTHUE_BVMT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MaBieuThue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [MaBieuThue_CLG] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [MaBieuThue_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNhan_Hieu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsNhan_Hieu] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsNhan_Hieu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsQuyCach_PC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsQuyCach_PC] nvarchar(1000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsQuyCach_PC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLoai_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsLoai_CO] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsLoai_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNguoi_XK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsNguoi_XK_CO] nvarchar(1000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsNguoi_XK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTo_Chuc_Cap_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsTo_Chuc_Cap_CO] nvarchar(100) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsTo_Chuc_Cap_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMo_Ta_HH_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsMo_Ta_HH_CO] nvarchar(2000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsMo_Ta_HH_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSo_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsSo_GP] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsSo_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNguoi_NK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsNguoi_NK_CO] nvarchar(1000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsNguoi_NK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsTen_GP] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsTen_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNguoi_Cap_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsNguoi_Cap_GP] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsNguoi_Cap_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNoi_Cap_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsNoi_Cap_GP] nvarchar(200) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsNoi_Cap_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ten_Hang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Ten_Hang] nvarchar(256) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Ten_Hang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HangKB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Ma_HangKB] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Ma_HangKB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_Hang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Ma_Hang] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Ma_Hang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_Phu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Ma_Phu] varchar(31) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Ma_Phu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMA_BIEU_THUE_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsMA_BIEU_THUE_XNK] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsMA_BIEU_THUE_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsUU_DAI_THUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsUU_DAI_THUE] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsUU_DAI_THUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_ThKe' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Ma_ThKe] varchar(10) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Ma_ThKe]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Ma_HTS] varchar(14) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Ma_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsThanhPhan' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsThanhPhan] varchar(100) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsThanhPhan]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsModel_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsModel_HH] varchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsModel_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_HangSX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsMa_HangSX] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsMa_HangSX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_HangSX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsTen_HangSX] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsTen_HangSX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_HSMR' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsMa_HSMR] varchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsMa_HSMR]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSo_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsSo_CO] varchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsSo_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNuoc_Cap_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsNuoc_Cap_CO] varchar(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsNuoc_Cap_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLoai_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsLoai_GP] varchar(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsLoai_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_Nuoc_XK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsMa_Nuoc_XK_CO] varchar(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsMa_Nuoc_XK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_Nuoc_NK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsMa_Nuoc_NK_CO] varchar(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsMa_Nuoc_NK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_Loai_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Ma_Loai_CO] char(10) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Ma_Loai_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsPPTG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsPPTG] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsPPTG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVT_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [DVT_HTS] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [DVT_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHANG_CU_MOI' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsHANG_CU_MOI] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsHANG_CU_MOI]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLayMau' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsLayMau] bit NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsLayMau]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [TS_XNK] numeric(5,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [TS_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [TS_TTDB] numeric(5,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [TS_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [TS_VAT] numeric(5,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [TS_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Luong' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Luong] numeric(21,6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Luong]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGia_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [DGia_KB] numeric(24,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [DGia_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGia_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [DGia_TT] numeric(24,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [DGia_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTong_CP_Khac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsTong_CP_Khac] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsTong_CP_Khac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsPhi_VC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsPhi_VC] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsPhi_VC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Luong_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Luong_HTS] numeric(18,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Luong_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TyLe_Thukhac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [TyLe_Thukhac] numeric(5,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [TyLe_Thukhac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TL_QuyDoi' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [TL_QuyDoi] numeric(15,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [TL_QuyDoi]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTong_CP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsTong_CP] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsTong_CP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTIENTHUEMOITRUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsTIENTHUEMOITRUONG] numeric(23,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsTIENTHUEMOITRUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Thue_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Thue_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Thue_Suat_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Thue_Suat_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsDGTT_BVMT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsDGTT_BVMT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsDGTT_BVMT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_MOI_TRUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsTHUE_MOI_TRUONG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsTHUE_MOI_TRUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsThue_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsThue_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsThue_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsThue_Suat_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsThue_Suat_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsThue_Suat_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Thue_Suat_Tuyet_Doi_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Thue_Suat_Tuyet_Doi_XNK] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Thue_Suat_Tuyet_Doi_VAT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Thue_Suat_Tuyet_Doi_TTDB] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_MT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Thue_Suat_Tuyet_Doi_MT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_MT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_Khac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Thue_Suat_Tuyet_Doi_Khac] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_Khac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Thue_Suat_Tuyet_Doi_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Trigia_Thukhac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Trigia_Thukhac] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Trigia_Thukhac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DonGia_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [DonGia_HTS] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [DonGia_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsNgay_CO] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsNgay_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_CO_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsNgay_CO_HH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsNgay_CO_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsNgay_GP] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsNgay_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_GP_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsNgay_GP_HH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsNgay_GP_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_Nop_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsNgay_Nop_CO] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsNgay_Nop_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DinhMuc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [DinhMuc] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [DinhMuc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TriGia_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [TriGia_KB] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [TriGia_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TriGia_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [TriGia_TT] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [TriGia_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TGKB_VND' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [TGKB_VND] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [TGKB_VND]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Thue_XNK] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Thue_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Thue_TTDB] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Thue_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Thue_VAT] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Thue_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Phu_Thu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [Phu_Thu] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [Phu_Thu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LoaiTSXNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [LoaiTSXNK] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [LoaiTSXNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgayQD_MaHS_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsNgayQD_MaHS_Truoc] date NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsNgayQD_MaHS_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgayQD_Gia_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsNgayQD_Gia_Truoc] date NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsNgayQD_Gia_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MienThue' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [MienThue] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [MienThue]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ChoXuLy' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ChoXuLy] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ChoXuLy]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NamDK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [NamDK] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [NamDK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'STTHang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [STTHang] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [STTHang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'IsNoCO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [IsNoCO] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [IsNoCO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHIET_BI_DONG_BO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [ecsTHIET_BI_DONG_BO] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [ecsTHIET_BI_DONG_BO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SoTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMD]') AND type in (N'U')))
Begin
Alter Table [DHangMD] add [SoTK] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMD] da duoc bo sung them Column [SoTK]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DHangMDDK]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'DinhMuc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [DinhMuc] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [DinhMuc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'IsNoCO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [IsNoCO] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [IsNoCO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHIET_BI_DONG_BO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsTHIET_BI_DONG_BO] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsTHIET_BI_DONG_BO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NamDK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [NamDK] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [NamDK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'STTHang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [STTHang] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [STTHang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SoTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [SoTK] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [SoTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LoaiTSXNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [LoaiTSXNK] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [LoaiTSXNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MienThue' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [MienThue] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [MienThue]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ChoXuLy' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ChoXuLy] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ChoXuLy]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgayQD_MaHS_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsNgayQD_MaHS_Truoc] date NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsNgayQD_MaHS_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgayQD_Gia_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsNgayQD_Gia_Truoc] date NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsNgayQD_Gia_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsNgay_CO] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsNgay_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_CO_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsNgay_CO_HH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsNgay_CO_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsNgay_GP] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsNgay_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_GP_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsNgay_GP_HH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsNgay_GP_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_Nop_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsNgay_Nop_CO] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsNgay_Nop_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TriGia_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [TriGia_KB] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [TriGia_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TriGia_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [TriGia_TT] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [TriGia_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TGKB_VND' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [TGKB_VND] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [TGKB_VND]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Thue_XNK] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Thue_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Thue_TTDB] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Thue_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Thue_VAT] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Thue_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Phu_Thu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Phu_Thu] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Phu_Thu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Trigia_Thukhac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Trigia_Thukhac] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Trigia_Thukhac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DonGia_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [DonGia_HTS] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [DonGia_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTong_CP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsTong_CP] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsTong_CP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsDGTT_BVMT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsDGTT_BVMT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsDGTT_BVMT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_MOI_TRUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsTHUE_MOI_TRUONG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsTHUE_MOI_TRUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsTHUE_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsTHUE_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_SUAT_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsTHUE_SUAT_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsTHUE_SUAT_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Thue_Suat_Tuyet_Doi_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Thue_Suat_Tuyet_Doi_XNK] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Thue_Suat_Tuyet_Doi_VAT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Thue_Suat_Tuyet_Doi_TTDB] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_MT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Thue_Suat_Tuyet_Doi_MT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_MT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_Khac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Thue_Suat_Tuyet_Doi_Khac] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_Khac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Thue_Suat_Tuyet_Doi_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTong_CP_Khac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsTong_CP_Khac] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsTong_CP_Khac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsPhi_VC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsPhi_VC] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsPhi_VC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Luong_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Luong_HTS] numeric(18,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Luong_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TyLe_Thukhac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [TyLe_Thukhac] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [TyLe_Thukhac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TL_QuyDoi' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [TL_QuyDoi] numeric(15,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [TL_QuyDoi]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [TS_XNK] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [TS_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [TS_TTDB] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [TS_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [TS_VAT] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [TS_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Luong' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Luong] numeric(21,6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Luong]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGia_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [DGia_KB] numeric(24,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [DGia_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGia_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [DGia_TT] numeric(24,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [DGia_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHANG_CU_MOI' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsHANG_CU_MOI] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsHANG_CU_MOI]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTIENTHUEMOITRUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsTIENTHUEMOITRUONG] numeric(23,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsTIENTHUEMOITRUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Thue_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Thue_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Thue_Suat_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Thue_Suat_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_LH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Ma_LH] char(5) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Ma_LH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Ma_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Ma_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsPPTG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsPPTG] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsPPTG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVT_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [DVT_HTS] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [DVT_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Ma_DG] char(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Ma_DG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nuoc_XX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Nuoc_XX] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Nuoc_XX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Ma_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Ma_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HangKB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Ma_HangKB] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Ma_HangKB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_Hang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Ma_Hang] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Ma_Hang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_Phu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Ma_Phu] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Ma_Phu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_ThKe' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Ma_ThKe] varchar(10) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Ma_ThKe]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Ma_HTS] varchar(14) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Ma_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_HangSX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsMa_HangSX] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsMa_HangSX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_HSMR' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsMa_HSMR] varchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsMa_HSMR]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMA_BIEU_THUE_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsMA_BIEU_THUE_XNK] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsMA_BIEU_THUE_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsUU_DAI_THUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsUU_DAI_THUE] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsUU_DAI_THUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSo_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsSo_CO] varchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsSo_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNuoc_Cap_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsNuoc_Cap_CO] varchar(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsNuoc_Cap_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_Nuoc_XK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsMa_Nuoc_XK_CO] varchar(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsMa_Nuoc_XK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_Nuoc_NK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsMa_Nuoc_NK_CO] varchar(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsMa_Nuoc_NK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLoai_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsLoai_GP] varchar(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsLoai_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_HangSX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsTen_HangSX] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsTen_HangSX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNhan_Hieu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsNhan_Hieu] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsNhan_Hieu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsQuyCach_PC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsQuyCach_PC] nvarchar(1000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsQuyCach_PC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsThanhPhan' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsThanhPhan] nvarchar(100) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsThanhPhan]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsModel_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsModel_HH] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsModel_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsTen_GP] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsTen_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNguoi_Cap_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsNguoi_Cap_GP] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsNguoi_Cap_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNoi_Cap_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsNoi_Cap_GP] nvarchar(200) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsNoi_Cap_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMo_Ta_HH_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsMo_Ta_HH_CO] nvarchar(2000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsMo_Ta_HH_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSo_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsSo_GP] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsSo_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNguoi_NK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsNguoi_NK_CO] nvarchar(1000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsNguoi_NK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLoai_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsLoai_CO] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsLoai_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNguoi_XK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsNguoi_XK_CO] nvarchar(1000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsNguoi_XK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTo_Chuc_Cap_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsTo_Chuc_Cap_CO] nvarchar(100) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsTo_Chuc_Cap_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsMABIEUTHUE_VAT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsMABIEUTHUE_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsMABIEUTHUE_TTDB] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsMABIEUTHUE_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_BVMT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsMABIEUTHUE_BVMT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsMABIEUTHUE_BVMT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MaBieuThue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [MaBieuThue_CLG] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [MaBieuThue_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ten_Hang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [Ten_Hang] nvarchar(255) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [Ten_Hang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSoQD_XD_MaHS_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsSoQD_XD_MaHS_Truoc] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsSoQD_XD_MaHS_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsMABIEUTHUE_TV] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsMABIEUTHUE_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHQ_Gia_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsHQ_Gia_Truoc] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsHQ_Gia_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHQ_MaHS_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsHQ_MaHS_Truoc] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsHQ_MaHS_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSoQD_XD_Gia_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDDK]') AND type in (N'U')))
Begin
Alter Table [DHangMDDK] add [ecsSoQD_XD_Gia_Truoc] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDDK] da duoc bo sung them Column [ecsSoQD_XD_Gia_Truoc]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DHangMDKH]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgayQD_MaHS_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsNgayQD_MaHS_Truoc] date NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsNgayQD_MaHS_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgayQD_Gia_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsNgayQD_Gia_Truoc] date NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsNgayQD_Gia_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LoaiTSXNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [LoaiTSXNK] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [LoaiTSXNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MienThue' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [MienThue] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [MienThue]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ChoXuLy' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ChoXuLy] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ChoXuLy]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NamDK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [NamDK] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [NamDK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'STTHang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [STTHang] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [STTHang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SoTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [SoTK] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [SoTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DinhMuc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [DinhMuc] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [DinhMuc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'IsNoCO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [IsNoCO] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [IsNoCO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHIET_BI_DONG_BO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsTHIET_BI_DONG_BO] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsTHIET_BI_DONG_BO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DonGia_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [DonGia_HTS] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [DonGia_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Trigia_Thukhac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Trigia_Thukhac] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Trigia_Thukhac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Thue_XNK] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Thue_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Thue_TTDB] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Thue_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Thue_VAT] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Thue_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Phu_Thu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Phu_Thu] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Phu_Thu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGia_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [DGia_KB] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [DGia_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGia_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [DGia_TT] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [DGia_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TriGia_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [TriGia_KB] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [TriGia_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TriGia_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [TriGia_TT] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [TriGia_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TGKB_VND' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [TGKB_VND] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [TGKB_VND]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTong_CP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsTong_CP] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsTong_CP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTong_CP_Khac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsTong_CP_Khac] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsTong_CP_Khac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsPhi_VC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsPhi_VC] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsPhi_VC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsDGTT_BVMT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsDGTT_BVMT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsDGTT_BVMT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_MOI_TRUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsTHUE_MOI_TRUONG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsTHUE_MOI_TRUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTIENTHUEMOITRUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsTIENTHUEMOITRUONG] numeric(23,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsTIENTHUEMOITRUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [TS_XNK] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [TS_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [TS_TTDB] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [TS_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [TS_VAT] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [TS_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TyLe_Thukhac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [TyLe_Thukhac] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [TyLe_Thukhac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TL_QuyDoi' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [TL_QuyDoi] numeric(15,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [TL_QuyDoi]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Luong_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Luong_HTS] numeric(18,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Luong_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Luong' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Luong] numeric(21,6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Luong]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsNgay_GP] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsNgay_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_GP_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsNgay_GP_HH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsNgay_GP_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_Nop_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsNgay_Nop_CO] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsNgay_Nop_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsNgay_CO] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsNgay_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_CO_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsNgay_CO_HH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsNgay_CO_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Thue_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Thue_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Thue_Suat_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Thue_Suat_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsTHUE_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsTHUE_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_SUAT_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsTHUE_SUAT_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsTHUE_SUAT_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Thue_Suat_Tuyet_Doi_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Thue_Suat_Tuyet_Doi_XNK] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Thue_Suat_Tuyet_Doi_VAT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Thue_Suat_Tuyet_Doi_TTDB] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_MT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Thue_Suat_Tuyet_Doi_MT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_MT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_Khac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Thue_Suat_Tuyet_Doi_Khac] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_Khac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Thue_Suat_Tuyet_Doi_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHANG_CU_MOI' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsHANG_CU_MOI] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsHANG_CU_MOI]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Ma_HTS] varchar(14) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Ma_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_ThKe' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Ma_ThKe] varchar(10) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Ma_ThKe]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HangKB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Ma_HangKB] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Ma_HangKB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_Hang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Ma_Hang] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Ma_Hang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_Phu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Ma_Phu] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Ma_Phu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_Nuoc_NK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsMa_Nuoc_NK_CO] varchar(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsMa_Nuoc_NK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsUU_DAI_THUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsUU_DAI_THUE] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsUU_DAI_THUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMA_BIEU_THUE_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsMA_BIEU_THUE_XNK] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsMA_BIEU_THUE_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLoai_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsLoai_GP] varchar(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsLoai_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsThanhPhan' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsThanhPhan] varchar(100) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsThanhPhan]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsModel_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsModel_HH] varchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsModel_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_HangSX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsMa_HangSX] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsMa_HangSX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_HangSX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsTen_HangSX] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsTen_HangSX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_HSMR' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsMa_HSMR] varchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsMa_HSMR]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSo_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsSo_CO] varchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsSo_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNuoc_Cap_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsNuoc_Cap_CO] varchar(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsNuoc_Cap_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_Nuoc_XK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsMa_Nuoc_XK_CO] varchar(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsMa_Nuoc_XK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsPPTG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsPPTG] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsPPTG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nuoc_XX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Nuoc_XX] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Nuoc_XX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Ma_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Ma_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_LH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Ma_LH] char(5) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Ma_LH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Ma_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Ma_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Ma_DG] char(2) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Ma_DG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVT_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [DVT_HTS] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [DVT_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_Loai_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Ma_Loai_CO] char(10) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Ma_Loai_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ten_Hang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [Ten_Hang] nvarchar(254) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [Ten_Hang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNhan_Hieu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsNhan_Hieu] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsNhan_Hieu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsQuyCach_PC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsQuyCach_PC] nvarchar(1000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsQuyCach_PC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNguoi_NK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsNguoi_NK_CO] nvarchar(1000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsNguoi_NK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLoai_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsLoai_CO] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsLoai_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNguoi_XK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsNguoi_XK_CO] nvarchar(1000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsNguoi_XK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTo_Chuc_Cap_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsTo_Chuc_Cap_CO] nvarchar(100) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsTo_Chuc_Cap_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsTen_GP] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsTen_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNguoi_Cap_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsNguoi_Cap_GP] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsNguoi_Cap_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNoi_Cap_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsNoi_Cap_GP] nvarchar(200) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsNoi_Cap_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsMABIEUTHUE_VAT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsMABIEUTHUE_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsMABIEUTHUE_TTDB] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsMABIEUTHUE_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_BVMT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsMABIEUTHUE_BVMT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsMABIEUTHUE_BVMT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMo_Ta_HH_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsMo_Ta_HH_CO] nvarchar(2000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsMo_Ta_HH_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSo_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsSo_GP] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsSo_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsMABIEUTHUE_TV] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsMABIEUTHUE_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHQ_Gia_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsHQ_Gia_Truoc] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsHQ_Gia_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSoQD_XD_MaHS_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsSoQD_XD_MaHS_Truoc] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsSoQD_XD_MaHS_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHQ_MaHS_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsHQ_MaHS_Truoc] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsHQ_MaHS_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSoQD_XD_Gia_Truoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [ecsSoQD_XD_Gia_Truoc] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [ecsSoQD_XD_Gia_Truoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MaBieuThue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDKH]') AND type in (N'U')))
Begin
Alter Table [DHangMDKH] add [MaBieuThue_CLG] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDKH] da duoc bo sung them Column [MaBieuThue_CLG]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DHangMDPS]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ten_Hang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Ten_Hang] nvarchar(255) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Ten_Hang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNhan_Hieu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsNhan_Hieu] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsNhan_Hieu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsQuyCach_PC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsQuyCach_PC] nvarchar(1000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsQuyCach_PC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTo_Chuc_Cap_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsTo_Chuc_Cap_CO] nvarchar(100) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsTo_Chuc_Cap_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLoai_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsLoai_CO] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsLoai_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNguoi_XK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsNguoi_XK_CO] nvarchar(1000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsNguoi_XK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMo_Ta_HH_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsMo_Ta_HH_CO] nvarchar(2000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsMo_Ta_HH_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSo_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsSo_GP] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsSo_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNguoi_NK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsNguoi_NK_CO] nvarchar(1000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsNguoi_NK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MaBieuThue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [MaBieuThue_CLG] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [MaBieuThue_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsTen_GP] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsTen_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNguoi_Cap_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsNguoi_Cap_GP] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsNguoi_Cap_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNoi_Cap_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsNoi_Cap_GP] nvarchar(200) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsNoi_Cap_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsMABIEUTHUE_VAT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsMABIEUTHUE_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsMABIEUTHUE_TTDB] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsMABIEUTHUE_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_BVMT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsMABIEUTHUE_BVMT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsMABIEUTHUE_BVMT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsMABIEUTHUE_TV] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsMABIEUTHUE_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsUU_DAI_THUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsUU_DAI_THUE] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsUU_DAI_THUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMA_BIEU_THUE_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsMA_BIEU_THUE_XNK] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsMA_BIEU_THUE_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLoai_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsLoai_GP] varchar(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsLoai_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_ThKe' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Ma_ThKe] varchar(10) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Ma_ThKe]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Ma_HTS] varchar(14) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Ma_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_HangSX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsMa_HangSX] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsMa_HangSX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_HangSX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsTen_HangSX] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsTen_HangSX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_HSMR' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsMa_HSMR] varchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsMa_HSMR]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsThanhPhan' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsThanhPhan] varchar(100) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsThanhPhan]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsModel_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsModel_HH] varchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsModel_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSo_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsSo_CO] varchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsSo_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNuoc_Cap_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsNuoc_Cap_CO] varchar(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsNuoc_Cap_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_Nuoc_XK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsMa_Nuoc_XK_CO] varchar(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsMa_Nuoc_XK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_Nuoc_NK_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsMa_Nuoc_NK_CO] varchar(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsMa_Nuoc_NK_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HangKB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Ma_HangKB] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Ma_HangKB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_Hang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Ma_Hang] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Ma_Hang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_Phu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Ma_Phu] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Ma_Phu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nuoc_XX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Nuoc_XX] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Nuoc_XX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Ma_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Ma_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Ma_DG] char(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Ma_DG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_LH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Ma_LH] char(5) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Ma_LH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Ma_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Ma_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_Loai_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Ma_Loai_CO] char(10) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Ma_Loai_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsPPTG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsPPTG] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsPPTG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVT_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [DVT_HTS] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [DVT_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHANG_CU_MOI' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsHANG_CU_MOI] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsHANG_CU_MOI]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLayMau' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsLayMau] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsLayMau]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsNgay_CO] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsNgay_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_CO_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsNgay_CO_HH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsNgay_CO_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Luong' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Luong] numeric(21,6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Luong]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [TS_XNK] numeric(5,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [TS_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [TS_TTDB] numeric(5,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [TS_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [TS_VAT] numeric(5,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [TS_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTong_CP_Khac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsTong_CP_Khac] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsTong_CP_Khac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsPhi_VC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsPhi_VC] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsPhi_VC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Luong_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Luong_HTS] numeric(18,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Luong_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TyLe_Thukhac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [TyLe_Thukhac] numeric(5,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [TyLe_Thukhac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TL_QuyDoi' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [TL_QuyDoi] numeric(15,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [TL_QuyDoi]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_Nop_CO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsNgay_Nop_CO] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsNgay_Nop_CO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsNgay_GP] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsNgay_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_GP_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsNgay_GP_HH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsNgay_GP_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Thue_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Thue_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Thue_Suat_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Thue_Suat_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsTHUE_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsTHUE_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_SUAT_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsTHUE_SUAT_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsTHUE_SUAT_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Thue_Suat_Tuyet_Doi_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Thue_Suat_Tuyet_Doi_XNK] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Thue_Suat_Tuyet_Doi_VAT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Thue_Suat_Tuyet_Doi_TTDB] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_MT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Thue_Suat_Tuyet_Doi_MT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_MT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_Khac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Thue_Suat_Tuyet_Doi_Khac] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_Khac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Thue_Suat_Tuyet_Doi_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsDGTT_BVMT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsDGTT_BVMT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsDGTT_BVMT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_MOI_TRUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsTHUE_MOI_TRUONG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsTHUE_MOI_TRUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTong_CP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsTong_CP] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsTong_CP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTIENTHUEMOITRUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsTIENTHUEMOITRUONG] numeric(23,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsTIENTHUEMOITRUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGia_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [DGia_KB] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [DGia_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGia_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [DGia_TT] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [DGia_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TriGia_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [TriGia_KB] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [TriGia_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TriGia_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [TriGia_TT] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [TriGia_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TGKB_VND' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [TGKB_VND] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [TGKB_VND]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Thue_XNK] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Thue_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Thue_TTDB] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Thue_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Thue_VAT] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Thue_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Phu_Thu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Phu_Thu] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Phu_Thu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Trigia_Thukhac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [Trigia_Thukhac] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [Trigia_Thukhac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DonGia_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [DonGia_HTS] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [DonGia_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'IsNoCO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [IsNoCO] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [IsNoCO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHIET_BI_DONG_BO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ecsTHIET_BI_DONG_BO] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ecsTHIET_BI_DONG_BO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DinhMuc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [DinhMuc] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [DinhMuc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SoTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [SoTK] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [SoTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NamDK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [NamDK] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [NamDK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'STTHang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [STTHang] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [STTHang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LoaiTSXNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [LoaiTSXNK] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [LoaiTSXNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MienThue' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [MienThue] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [MienThue]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ChoXuLy' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHangMDPS]') AND type in (N'U')))
Begin
Alter Table [DHangMDPS] add [ChoXuLy] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHangMDPS] da duoc bo sung them Column [ChoXuLy]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DToKhaiMD]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'PLuong' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [PLuong] char(4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [PLuong]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PPT_GTGTKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [PPT_GTGTKT] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [PPT_GTGTKT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_NT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ma_NT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ma_NT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TTTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [TTTK] char(1) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [TTTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PPT_GTGT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [PPT_GTGT] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [PPT_GTGT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PPT_GTGTUT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [PPT_GTGTUT] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [PPT_GTGTUT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DaTruyen' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [DaTruyen] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [DaTruyen]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DVKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ma_DVKT] char(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ma_DVKT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_HDTM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [So_HDTM] nvarchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [So_HDTM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NguoiKT_HTNVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [NguoiKT_HTNVT] nvarchar(255) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [NguoiKT_HTNVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsCan_Bo_XL_KTCT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [ecsCan_Bo_XL_KTCT] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [ecsCan_Bo_XL_KTCT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsCan_Bo_PC_KTCT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [ecsCan_Bo_PC_KTCT] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [ecsCan_Bo_PC_KTCT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DeXuatKhac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [DeXuatKhac] nvarchar(2000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [DeXuatKhac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DaiDien_DN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [DaiDien_DN] nvarchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [DaiDien_DN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NguoiQDHTKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [NguoiQDHTKT] nvarchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [NguoiQDHTKT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_LH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ma_LH] char(5) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ma_LH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ma_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ma_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nuoc_XK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Nuoc_XK] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Nuoc_XK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nuoc_NK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Nuoc_NK] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Nuoc_NK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_CK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ma_CK] char(4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ma_CK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_GH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ma_GH] varchar(7) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ma_GH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_HD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [So_HD] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [So_HD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'BL_LPHQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [BL_LPHQ] varchar(20) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [BL_LPHQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'GiayTo' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [GiayTo] varchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [GiayTo]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TenCH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [TenCH] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [TenCH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'User_KH1' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [User_KH1] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [User_KH1]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'User_KH2' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [User_KH2] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [User_KH2]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'User_PCKH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [User_PCKH] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [User_PCKH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'User_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [User_DK] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [User_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DDiem_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [DDiem_KH] varchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [DDiem_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PThuc_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [PThuc_KH] varchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [PThuc_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Van_Don' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Van_Don] varchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Van_Don]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ma_DV] varchar(17) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ma_DV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DVUT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ma_DVUT] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ma_DVUT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DV_DT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [DV_DT] varchar(256) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [DV_DT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_PTVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ma_PTVT] varchar(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ma_PTVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ten_PTVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ten_PTVT] varchar(20) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ten_PTVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'CangNN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [CangNN] varchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [CangNN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [So_GP] varchar(100) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [So_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_Container40' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [So_Container40] numeric(18,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [So_Container40]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TyLe_KT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [TyLe_KT] numeric(5,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [TyLe_KT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Tr_Luong' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Tr_Luong] numeric(20,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Tr_Luong]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_Kien' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [So_Kien] numeric(15,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [So_Kien]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_Container' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [So_Container] numeric(15,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [So_Container]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Phi_BH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Phi_BH] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Phi_BH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Phi_VC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Phi_VC] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Phi_VC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_PTTT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ma_PTTT] varchar(10) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ma_PTTT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NguoiNhap' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [NguoiNhap] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [NguoiNhap]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'User_TH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [User_TH] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [User_TH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_MID' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ma_MID] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ma_MID]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'CanBo_PCKTNVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [CanBo_PCKTNVT] varchar(255) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [CanBo_PCKTNVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NVPSinh' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [NVPSinh] ntext NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [NVPSinh]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_GP] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_HHGP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_HHGP] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_HHGP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_KB] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_KH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_HD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_HD] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_HD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_HHHD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_HHHD] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_HHHD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_DK] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NgayKH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [NgayKH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [NgayKH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NgayDen' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [NgayDen] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [NgayDen]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DenNgay_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [DenNgay_KH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [DenNgay_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_VanDon_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_VanDon_HH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_VanDon_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_HDTM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_HDTM] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_HDTM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_VanDon' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_VanDon] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_VanDon]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_TH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_TH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_TH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NgayNhap' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [NgayNhap] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [NgayNhap]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_GiaoTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_GiaoTK] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_GiaoTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_NhanTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_NhanTK] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_NhanTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_LuuTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Ngay_LuuTK] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Ngay_LuuTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TongTGKB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [TongTGKB] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [TongTGKB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TongTGTT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [TongTGTT] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [TongTGTT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SoTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [SoTK] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [SoTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TyGia_USD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [TyGia_USD] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [TyGia_USD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TyGia_VND' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [TyGia_VND] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [TyGia_VND]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LePhi_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [LePhi_HQ] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [LePhi_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_PLTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [So_PLTK] smallint NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [So_PLTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NamDK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [NamDK] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [NamDK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Pass_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Pass_DK] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Pass_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Pass_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Pass_KH] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Pass_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Pass_TH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Pass_TH] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Pass_TH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Pass_GC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Pass_GC] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Pass_GC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ThanhKhoan' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [ThanhKhoan] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [ThanhKhoan]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'KiemHoaNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [KiemHoaNK] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [KiemHoaNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Thue] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Thue]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MienKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [MienKT] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [MienKT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'HTKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [HTKT] smallint NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [HTKT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SoHang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [SoHang] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [SoHang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNhom_Can_Bo_XL_KTCT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [ecsNhom_Can_Bo_XL_KTCT] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [ecsNhom_Can_Bo_XL_KTCT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nhom_KTNVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMD] add [Nhom_KTNVT] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMD] da duoc bo sung them Column [Nhom_KTNVT]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DToKhaiMDPS]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'NamDK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [NamDK] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [NamDK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Pass_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Pass_DK] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Pass_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Pass_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Pass_KH] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Pass_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Pass_TH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Pass_TH] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Pass_TH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Pass_GC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Pass_GC] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Pass_GC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ThanhKhoan' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [ThanhKhoan] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [ThanhKhoan]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'KiemhoaNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [KiemhoaNK] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [KiemhoaNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Thue] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Thue]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'HTKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [HTKT] smallint NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [HTKT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_PLTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [So_PLTK] smallint NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [So_PLTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SoHang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [SoHang] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [SoHang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SoTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [SoTK] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [SoTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TongTGKB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [TongTGKB] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [TongTGKB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TongTGTT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [TongTGTT] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [TongTGTT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TyGia_USD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [TyGia_USD] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [TyGia_USD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TyGia_VND' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [TyGia_VND] money NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [TyGia_VND]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LePhi_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [LePhi_HQ] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [LePhi_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Phi_BH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Phi_BH] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Phi_BH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Phi_VC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Phi_VC] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Phi_VC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TyLe_KT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [TyLe_KT] numeric(5,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [TyLe_KT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Tr_Luong' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Tr_Luong] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Tr_Luong]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_Kien' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [So_Kien] numeric(15,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [So_Kien]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_Container' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [So_Container] numeric(15,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [So_Container]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_Container40' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [So_Container40] numeric(5,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [So_Container40]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ngay_DK] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ngay_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NgayNhap' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [NgayNhap] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [NgayNhap]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DenNgay_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [DenNgay_KH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [DenNgay_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_HDTM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ngay_HDTM] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ngay_HDTM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_Vandon' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ngay_Vandon] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ngay_Vandon]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_GiaoTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ngay_GiaoTK] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ngay_GiaoTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_NhanTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ngay_NhanTK] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ngay_NhanTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_LuuTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ngay_LuuTK] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ngay_LuuTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_TH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ngay_TH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ngay_TH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ngay_KH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ngay_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ngay_KB] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ngay_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_HD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ngay_HD] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ngay_HD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_HHHD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ngay_HHHD] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ngay_HHHD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ngay_GP] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ngay_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_HHGP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ngay_HHGP] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ngay_HHGP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NgayKH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [NgayKH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [NgayKH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NgayDen' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [NgayDen] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [NgayDen]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NVPSinh' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [NVPSinh] ntext NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [NVPSinh]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NguoiNhap' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [NguoiNhap] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [NguoiNhap]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_PTTT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ma_PTTT] varchar(10) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ma_PTTT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_MID' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ma_MID] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ma_MID]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_CK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ma_CK] char(4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ma_CK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nuoc_XK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Nuoc_XK] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Nuoc_XK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nuoc_NK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Nuoc_NK] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Nuoc_NK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_LH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ma_LH] char(5) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ma_LH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ma_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ma_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ma_DV] char(14) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ma_DV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DVUT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ma_DVUT] char(14) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ma_DVUT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PPT_GTGTKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [PPT_GTGTKT] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [PPT_GTGTKT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_NT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ma_NT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ma_NT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PLuong' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [PLuong] char(4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [PLuong]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TTTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [TTTK] char(1) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [TTTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PPT_GTGT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [PPT_GTGT] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [PPT_GTGT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PPT_GTGTUT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [PPT_GTGTUT] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [PPT_GTGTUT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DaTruyen' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [DaTruyen] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [DaTruyen]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_DVKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ma_DVKT] char(14) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ma_DVKT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_GH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ma_GH] varchar(7) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ma_GH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_HD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [So_HD] varchar(255) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [So_HD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Van_Don' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Van_Don] varchar(255) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Van_Don]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DV_DT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [DV_DT] varchar(255) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [DV_DT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_PTVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ma_PTVT] varchar(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ma_PTVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ten_PTVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [Ten_PTVT] varchar(20) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [Ten_PTVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'CangNN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [CangNN] varchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [CangNN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [So_GP] varchar(255) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [So_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'User_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [User_DK] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [User_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DDiem_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [DDiem_KH] varchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [DDiem_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PThuc_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [PThuc_KH] varchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [PThuc_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'BL_LPHQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [BL_LPHQ] varchar(20) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [BL_LPHQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'GiayTo' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [GiayTo] varchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [GiayTo]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TenCH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [TenCH] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [TenCH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'User_KH1' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [User_KH1] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [User_KH1]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'User_KH2' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [User_KH2] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [User_KH2]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'User_PCKH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [User_PCKH] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [User_PCKH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'User_TH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [User_TH] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [User_TH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_HDTM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [So_HDTM] nvarchar(255) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [So_HDTM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LyDoHuy' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [LyDoHuy] nvarchar(2000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [LyDoHuy]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DeXuatKhac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [DeXuatKhac] nvarchar(2000) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [DeXuatKhac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DaiDien_DN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [DaiDien_DN] nvarchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [DaiDien_DN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NguoiQDHTKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DToKhaiMDPS]') AND type in (N'U')))
Begin
Alter Table [DToKhaiMDPS] add [NguoiQDHTKT] nvarchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DToKhaiMDPS] da duoc bo sung them Column [NguoiQDHTKT]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [ecsToKhaiMD]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'MessageId' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [MessageId] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [MessageId]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'KetQuaXLBuocTruoc' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [KetQuaXLBuocTruoc] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [KetQuaXLBuocTruoc]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'KhauNV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [KhauNV] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [KhauNV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'KhauNVCu' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [KhauNVCu] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [KhauNVCu]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'KhauNV_TruocSuaOrHuy' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [KhauNV_TruocSuaOrHuy] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [KhauNV_TruocSuaOrHuy]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsKQGiamDinh' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsKQGiamDinh] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsKQGiamDinh]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsKiem_Hoa_Ho' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsKiem_Hoa_Ho] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsKiem_Hoa_Ho]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLay_Mau_CK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsLay_Mau_CK] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsLay_Mau_CK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMsgVersion' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsMsgVersion] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsMsgVersion]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTrangThai_DL' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTrangThai_DL] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTrangThai_DL]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNoCT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsNoCT] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsNoCT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLayMau' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsLayMau] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsLayMau]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLuongTK_TruocSua' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsLuongTK_TruocSua] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsLuongTK_TruocSua]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'KVGiamSat' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [KVGiamSat] smallint NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [KVGiamSat]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'HinhThucKhai' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [HinhThucKhai] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [HinhThucKhai]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'CoChuKySo' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [CoChuKySo] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [CoChuKySo]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsDaKiemHoa' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsDaKiemHoa] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsDaKiemHoa]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsDaXNThongQuan' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsDaXNThongQuan] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsDaXNThongQuan]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsDaXNChuyenCK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsDaXNChuyenCK] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsDaXNChuyenCK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsDaXNGiaiPhongHang' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsDaXNGiaiPhongHang] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsDaXNGiaiPhongHang]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsThongQuan_GPH_BQ_CCK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsThongQuan_GPH_BQ_CCK] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsThongQuan_GPH_BQ_CCK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsDaXNMangHangBaoQuan' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsDaXNMangHangBaoQuan] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsDaXNMangHangBaoQuan]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NamDK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [NamDK] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [NamDK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NamTN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [NamTN] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [NamTN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SoTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [SoTK] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [SoTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SoTN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [SoTN] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [SoTN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSo_Ngay_An_Han' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsSo_Ngay_An_Han] int NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsSo_Ngay_An_Han]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'KTHS_NgayCap' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [KTHS_NgayCap] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [KTHS_NgayCap]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_HDGN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsNgay_HDGN] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsNgay_HDGN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_HHHDGN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsNgay_HHHDGN] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsNgay_HHHDGN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_Bat_Dau_Dam_Bao' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsNgay_Bat_Dau_Dam_Bao] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsNgay_Bat_Dau_Dam_Bao]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_Ket_Thuc_Dam_Bao' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsNgay_Ket_Thuc_Dam_Bao] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsNgay_Ket_Thuc_Dam_Bao]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_Phu_Luc_Hop_Dong' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsNgay_Phu_Luc_Hop_Dong] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsNgay_Phu_Luc_Hop_Dong]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_Het_Han_Hop_Dong' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsNgay_Het_Han_Hop_Dong] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsNgay_Het_Han_Hop_Dong]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgayHH_TNTX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsNgayHH_TNTX] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsNgayHH_TNTX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsNgay_GH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsNgay_GH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsNgay_GH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NgayTN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [NgayTN] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [NgayTN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTri_Gia_Dam_Bao' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTri_Gia_Dam_Bao] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTri_Gia_Dam_Bao]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsDaHoanThanhNghiaVuThue' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsDaHoanThanhNghiaVuThue] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsDaHoanThanhNghiaVuThue]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsDaHoanChinhHoSo' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsDaHoanChinhHoSo] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsDaHoanChinhHoSo]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsCo_An_Han' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsCo_An_Han] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsCo_An_Han]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsDaRaThongBaoThue' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsDaRaThongBaoThue] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsDaRaThongBaoThue]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsCo_Dam_Bao_Nghia_Vu_Thue' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsCo_Dam_Bao_Nghia_Vu_Thue] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsCo_Dam_Bao_Nghia_Vu_Thue]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_DL' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsMa_DL] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsMa_DL]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_DV_NT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsMa_DV_NT] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsMa_DV_NT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_CKNhap' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsMa_CKNhap] varchar(6) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsMa_CKNhap]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_CKXuat' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsMa_CKXuat] varchar(6) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsMa_CKXuat]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSo_HDGN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsSo_HDGN] varchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsSo_HDGN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_DVG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsMa_DVG] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsMa_DVG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_DVN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsMa_DVN] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsMa_DVN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_DVCD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsMa_DVCD] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsMa_DVCD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMa_DV_DT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsMa_DV_DT] varchar(17) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsMa_DV_DT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSo_Phu_Luc_Hop_Dong' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsSo_Phu_Luc_Hop_Dong] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsSo_Phu_Luc_Hop_Dong]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSinhCanhBao' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsSinhCanhBao] varchar(2) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsSinhCanhBao]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_DL' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTen_DL] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTen_DL]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_NguoiDD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTen_NguoiDD] nvarchar(35) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTen_NguoiDD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsChucVu_NguoiDD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsChucVu_NguoiDD] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsChucVu_NguoiDD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'KTHS_DaiDienDN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [KTHS_DaiDienDN] nvarchar(255) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [KTHS_DaiDienDN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'KTHS_SoCMT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [KTHS_SoCMT] nvarchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [KTHS_SoCMT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DeXuatKhac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [DeXuatKhac] nvarchar(2000) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [DeXuatKhac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHinh_Thuc_Dam_Bao' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsHinh_Thuc_Dam_Bao] nvarchar(254) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsHinh_Thuc_Dam_Bao]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_DVCD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTen_DVCD] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTen_DVCD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsDD_GH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsDD_GH] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsDD_GH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_DVN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTen_DVN] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTen_DVN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_DVG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTen_DVG] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTen_DVG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_CKXuat' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTen_CKXuat] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTen_CKXuat]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_DV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTen_DV] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTen_DV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_DVKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTen_DVKT] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTen_DVKT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_DV_NT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTen_DV_NT] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTen_DV_NT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_CKNhap' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTen_CKNhap] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTen_CKNhap]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTen_DVUT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTen_DVUT] nvarchar(256) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTen_DVUT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsLy_Do_An_Han' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsLy_Do_An_Han] nvarchar(500) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsLy_Do_An_Han]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTrong_Luong_Tinh' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [ecsTrong_Luong_Tinh] numeric(23,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [ecsTrong_Luong_Tinh]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [Ma_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [Ma_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_LH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[ecsToKhaiMD]') AND type in (N'U')))
Begin
Alter Table [ecsToKhaiMD] add [Ma_LH] char(5) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [ecsToKhaiMD] da duoc bo sung them Column [Ma_LH]')
End
END
--===============================END TABLE ===============================

 
 Select * from @tblTableNew 
 Select * from @tblColumnAdded