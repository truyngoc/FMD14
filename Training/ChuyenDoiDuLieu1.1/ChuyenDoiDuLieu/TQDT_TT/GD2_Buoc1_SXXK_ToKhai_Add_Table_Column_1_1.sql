use SXXK
go
declare @tblTableNew table
        (sSQL varchar(max))
declare @tblColumnAdded table
        (sSQL varchar(max))
--SQL 1 
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DHANGMDDC]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'SOTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [SOTK] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [SOTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_LH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [MA_LH] char(5) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [MA_LH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [MA_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [MA_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NAMDK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [NAMDK] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [NAMDK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_PHU' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [MA_PHU] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [MA_PHU]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LAN_DC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [LAN_DC] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [LAN_DC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_NPL_SP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [MA_NPL_SP] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [MA_NPL_SP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'STTHANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [STTHANG] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [STTHANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HANGKB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [MA_HANGKB] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [MA_HANGKB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [MA_HANG] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [MA_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [TEN_HANG] nvarchar(255) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [TEN_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DINHMUC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [DINHMUC] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [DINHMUC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NUOC_XX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [NUOC_XX] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [NUOC_XX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [MA_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [MA_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [LUONG] numeric(18,8) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [LUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGIA_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [DGIA_KB] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [DGIA_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGIA_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [DGIA_TT] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [DGIA_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [MA_DG] char(2) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [MA_DG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TRIGIA_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [TRIGIA_KB] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [TRIGIA_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TRIGIA_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [TRIGIA_TT] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [TRIGIA_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TGKB_VND' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [TGKB_VND] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [TGKB_VND]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LOAITSXNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [LOAITSXNK] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [LOAITSXNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [TS_XNK] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [TS_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [TS_TTDB] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [TS_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [TS_VAT] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [TS_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [THUE_XNK] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [THUE_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [THUE_TTDB] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [THUE_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [THUE_VAT] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [THUE_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PHU_THU' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [PHU_THU] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [PHU_THU]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MIENTHUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [MIENTHUE] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [MIENTHUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TL_QUYDOI' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [TL_QUYDOI] numeric(15,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [TL_QUYDOI]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_THKE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [MA_THKE] varchar(10) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [MA_THKE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'CHOXULY' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [CHOXULY] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [CHOXULY]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TYLE_THUKHAC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [TYLE_THUKHAC] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [TYLE_THUKHAC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TRIGIA_THUKHAC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [TRIGIA_THUKHAC] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [TRIGIA_THUKHAC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [Ma_HTS] varchar(14) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [Ma_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Luong_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [Luong_HTS] numeric(18,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [Luong_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVT_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [DVT_HTS] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [DVT_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DonGia_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [DonGia_HTS] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [DonGia_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_MOI_TRUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [ecsTHUE_MOI_TRUONG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [ecsTHUE_MOI_TRUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHIET_BI_DONG_BO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [ecsTHIET_BI_DONG_BO] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [ecsTHIET_BI_DONG_BO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsUU_DAI_THUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [ecsUU_DAI_THUE] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [ecsUU_DAI_THUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHANG_CU_MOI' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC] add [ecsHANG_CU_MOI] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC] da duoc bo sung them Column [ecsHANG_CU_MOI]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DHANGMDDC_CT]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'SOTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC_CT] add [SOTK] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC_CT] da duoc bo sung them Column [SOTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_LH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC_CT] add [MA_LH] char(5) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC_CT] da duoc bo sung them Column [MA_LH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC_CT] add [MA_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC_CT] da duoc bo sung them Column [MA_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NAMDK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC_CT] add [NAMDK] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC_CT] da duoc bo sung them Column [NAMDK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_PHU' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC_CT] add [MA_PHU] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC_CT] da duoc bo sung them Column [MA_PHU]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LAN_DC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC_CT] add [LAN_DC] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC_CT] da duoc bo sung them Column [LAN_DC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LAN_DC_CT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC_CT] add [LAN_DC_CT] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC_CT] da duoc bo sung them Column [LAN_DC_CT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC_CT] add [THUE_XNK] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC_CT] da duoc bo sung them Column [THUE_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC_CT] add [THUE_TTDB] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC_CT] da duoc bo sung them Column [THUE_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC_CT] add [THUE_VAT] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC_CT] da duoc bo sung them Column [THUE_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PHU_THU' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC_CT] add [PHU_THU] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC_CT] da duoc bo sung them Column [PHU_THU]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MIENTHUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC_CT] add [MIENTHUE] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC_CT] da duoc bo sung them Column [MIENTHUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TRIGIA_THUKHAC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDC_CT]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDC_CT] add [TRIGIA_THUKHAC] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDC_CT] da duoc bo sung them Column [TRIGIA_THUKHAC]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DHANGMDDK]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'SOTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [SOTK] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [SOTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_LH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [MA_LH] char(5) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [MA_LH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [MA_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [MA_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NAMDK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [NAMDK] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [NAMDK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_NPL_SP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [MA_NPL_SP] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [MA_NPL_SP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'STTHANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [STTHANG] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [STTHANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HANGKB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [MA_HANGKB] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [MA_HANGKB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [MA_HANG] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [MA_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_PHU' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [MA_PHU] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [MA_PHU]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [TEN_HANG] nvarchar(255) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [TEN_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DINHMUC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [DINHMUC] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [DINHMUC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NUOC_XX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [NUOC_XX] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [NUOC_XX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [MA_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [MA_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [LUONG] numeric(18,8) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [LUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGIA_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [DGIA_KB] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [DGIA_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGIA_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [DGIA_TT] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [DGIA_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [MA_DG] char(2) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [MA_DG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TRIGIA_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [TRIGIA_KB] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [TRIGIA_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TRIGIA_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [TRIGIA_TT] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [TRIGIA_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TGKB_VND' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [TGKB_VND] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [TGKB_VND]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LOAITSXNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [LOAITSXNK] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [LOAITSXNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [TS_XNK] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [TS_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [TS_TTDB] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [TS_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [TS_VAT] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [TS_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [THUE_XNK] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [THUE_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [THUE_TTDB] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [THUE_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [THUE_VAT] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [THUE_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PHU_THU' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [PHU_THU] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [PHU_THU]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MIENTHUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [MIENTHUE] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [MIENTHUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TL_QUYDOI' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [TL_QUYDOI] numeric(15,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [TL_QUYDOI]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_THKE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [MA_THKE] varchar(10) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [MA_THKE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'CHOXULY' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [CHOXULY] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [CHOXULY]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TYLE_THUKHAC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [TYLE_THUKHAC] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [TYLE_THUKHAC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TRIGIA_THUKHAC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [TRIGIA_THUKHAC] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [TRIGIA_THUKHAC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [Ma_HTS] varchar(14) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [Ma_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Luong_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [Luong_HTS] numeric(18,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [Luong_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVT_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [DVT_HTS] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [DVT_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DonGia_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [DonGia_HTS] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [DonGia_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_MOI_TRUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [ecsTHUE_MOI_TRUONG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [ecsTHUE_MOI_TRUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHIET_BI_DONG_BO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [ecsTHIET_BI_DONG_BO] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [ecsTHIET_BI_DONG_BO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsUU_DAI_THUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [ecsUU_DAI_THUE] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [ecsUU_DAI_THUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHANG_CU_MOI' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [ecsHANG_CU_MOI] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [ecsHANG_CU_MOI]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [ecsMABIEUTHUE_VAT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [ecsMABIEUTHUE_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [ecsMABIEUTHUE_TTDB] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [ecsMABIEUTHUE_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_BVMT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [ecsMABIEUTHUE_BVMT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [ecsMABIEUTHUE_BVMT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [ecsMABIEUTHUE_TV] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [ecsMABIEUTHUE_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMA_BIEU_THUE_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [ecsMA_BIEU_THUE_XNK] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [ecsMA_BIEU_THUE_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [ecsTHUE_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [ecsTHUE_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_SUAT_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [ecsTHUE_SUAT_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [ecsTHUE_SUAT_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [Thue_Suat_Tuyet_Doi_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [Thue_Suat_Tuyet_Doi_XNK] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [Thue_Suat_Tuyet_Doi_VAT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [Thue_Suat_Tuyet_Doi_TTDB] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_MT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [Thue_Suat_Tuyet_Doi_MT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_MT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_Khac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [Thue_Suat_Tuyet_Doi_Khac] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_Khac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [Thue_Suat_Tuyet_Doi_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MaBieuThue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [MaBieuThue_CLG] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [MaBieuThue_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [Thue_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [Thue_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDDK]') AND type in (N'U')))
Begin
Alter Table [DHANGMDDK] add [Thue_Suat_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDDK] da duoc bo sung them Column [Thue_Suat_CLG]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DHANGMDKH]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'SOTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [SOTK] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [SOTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_LH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [MA_LH] char(5) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [MA_LH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [MA_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [MA_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NAMDK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [NAMDK] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [NAMDK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_NPL_SP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [MA_NPL_SP] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [MA_NPL_SP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'STTHANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [STTHANG] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [STTHANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HANGKB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [MA_HANGKB] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [MA_HANGKB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [MA_HANG] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [MA_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_PHU' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [MA_PHU] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [MA_PHU]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [TEN_HANG] nvarchar(255) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [TEN_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DINHMUC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [DINHMUC] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [DINHMUC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NUOC_XX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [NUOC_XX] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [NUOC_XX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [MA_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [MA_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [LUONG] numeric(18,8) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [LUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGIA_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [DGIA_KB] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [DGIA_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGIA_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [DGIA_TT] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [DGIA_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [MA_DG] char(2) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [MA_DG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TRIGIA_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [TRIGIA_KB] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [TRIGIA_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TRIGIA_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [TRIGIA_TT] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [TRIGIA_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TGKB_VND' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [TGKB_VND] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [TGKB_VND]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LOAITSXNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [LOAITSXNK] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [LOAITSXNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [TS_XNK] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [TS_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [TS_TTDB] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [TS_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [TS_VAT] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [TS_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [THUE_XNK] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [THUE_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [THUE_TTDB] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [THUE_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [THUE_VAT] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [THUE_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PHU_THU' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [PHU_THU] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [PHU_THU]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MIENTHUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [MIENTHUE] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [MIENTHUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TL_QUYDOI' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [TL_QUYDOI] numeric(15,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [TL_QUYDOI]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_THKE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [MA_THKE] varchar(10) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [MA_THKE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'CHOXULY' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [CHOXULY] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [CHOXULY]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TYLE_THUKHAC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [TYLE_THUKHAC] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [TYLE_THUKHAC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TRIGIA_THUKHAC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [TRIGIA_THUKHAC] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [TRIGIA_THUKHAC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [Ma_HTS] varchar(14) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [Ma_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Luong_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [Luong_HTS] numeric(18,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [Luong_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVT_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [DVT_HTS] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [DVT_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DonGia_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [DonGia_HTS] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [DonGia_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_MOI_TRUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [ecsTHUE_MOI_TRUONG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [ecsTHUE_MOI_TRUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHIET_BI_DONG_BO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [ecsTHIET_BI_DONG_BO] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [ecsTHIET_BI_DONG_BO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsUU_DAI_THUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [ecsUU_DAI_THUE] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [ecsUU_DAI_THUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHANG_CU_MOI' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [ecsHANG_CU_MOI] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [ecsHANG_CU_MOI]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [ecsMABIEUTHUE_VAT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [ecsMABIEUTHUE_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [ecsMABIEUTHUE_TTDB] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [ecsMABIEUTHUE_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_BVMT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [ecsMABIEUTHUE_BVMT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [ecsMABIEUTHUE_BVMT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [ecsMABIEUTHUE_TV] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [ecsMABIEUTHUE_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMA_BIEU_THUE_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [ecsMA_BIEU_THUE_XNK] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [ecsMA_BIEU_THUE_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [ecsTHUE_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [ecsTHUE_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_SUAT_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [ecsTHUE_SUAT_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [ecsTHUE_SUAT_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [Thue_Suat_Tuyet_Doi_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [Thue_Suat_Tuyet_Doi_XNK] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [Thue_Suat_Tuyet_Doi_VAT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [Thue_Suat_Tuyet_Doi_TTDB] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_MT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [Thue_Suat_Tuyet_Doi_MT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_MT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_Khac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [Thue_Suat_Tuyet_Doi_Khac] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_Khac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [Thue_Suat_Tuyet_Doi_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MaBieuThue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [MaBieuThue_CLG] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [MaBieuThue_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [Thue_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [Thue_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDKH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDKH] add [Thue_Suat_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDKH] da duoc bo sung them Column [Thue_Suat_CLG]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DHANGMDTH]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'SoTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [SoTK] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [SoTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_LH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [MA_LH] char(5) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [MA_LH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [MA_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [MA_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NAMDK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [NAMDK] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [NAMDK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_NPL_SP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [MA_NPL_SP] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [MA_NPL_SP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'STTHANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [STTHANG] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [STTHANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HANGKB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [MA_HANGKB] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [MA_HANGKB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [MA_HANG] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [MA_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_PHU' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [MA_PHU] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [MA_PHU]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_HANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [TEN_HANG] nvarchar(255) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [TEN_HANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DINHMUC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [DINHMUC] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [DINHMUC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NUOC_XX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [NUOC_XX] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [NUOC_XX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [MA_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [MA_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [LUONG] numeric(18,8) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [LUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGIA_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [DGIA_KB] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [DGIA_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DGIA_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [DGIA_TT] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [DGIA_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [MA_DG] char(2) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [MA_DG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TRIGIA_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [TRIGIA_KB] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [TRIGIA_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TRIGIA_TT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [TRIGIA_TT] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [TRIGIA_TT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TGKB_VND' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [TGKB_VND] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [TGKB_VND]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LOAITSXNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [LOAITSXNK] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [LOAITSXNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [TS_XNK] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [TS_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [TS_TTDB] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [TS_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TS_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [TS_VAT] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [TS_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [THUE_XNK] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [THUE_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [THUE_TTDB] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [THUE_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [THUE_VAT] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [THUE_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PHU_THU' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [PHU_THU] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [PHU_THU]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MIENTHUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [MIENTHUE] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [MIENTHUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TL_QUYDOI' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [TL_QUYDOI] numeric(15,6) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [TL_QUYDOI]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_THKE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [MA_THKE] varchar(10) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [MA_THKE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'CHOXULY' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [CHOXULY] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [CHOXULY]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TYLE_THUKHAC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [TYLE_THUKHAC] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [TYLE_THUKHAC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TRIGIA_THUKHAC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [TRIGIA_THUKHAC] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [TRIGIA_THUKHAC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [Ma_HTS] varchar(14) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [Ma_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Luong_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [Luong_HTS] numeric(18,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [Luong_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DVT_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [DVT_HTS] char(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [DVT_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DonGia_HTS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [DonGia_HTS] money NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [DonGia_HTS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_MOI_TRUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [ecsTHUE_MOI_TRUONG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [ecsTHUE_MOI_TRUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHIET_BI_DONG_BO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [ecsTHIET_BI_DONG_BO] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [ecsTHIET_BI_DONG_BO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsUU_DAI_THUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [ecsUU_DAI_THUE] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [ecsUU_DAI_THUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsHANG_CU_MOI' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [ecsHANG_CU_MOI] bit NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [ecsHANG_CU_MOI]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [ecsMABIEUTHUE_VAT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [ecsMABIEUTHUE_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [ecsMABIEUTHUE_TTDB] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [ecsMABIEUTHUE_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_BVMT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [ecsMABIEUTHUE_BVMT] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [ecsMABIEUTHUE_BVMT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMA_BIEU_THUE_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [ecsMA_BIEU_THUE_XNK] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [ecsMA_BIEU_THUE_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsMABIEUTHUE_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [ecsMABIEUTHUE_TV] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [ecsMABIEUTHUE_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [ecsTHUE_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [ecsTHUE_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsTHUE_SUAT_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [ecsTHUE_SUAT_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [ecsTHUE_SUAT_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [Thue_Suat_Tuyet_Doi_TV] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_XNK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [Thue_Suat_Tuyet_Doi_XNK] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_XNK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_VAT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [Thue_Suat_Tuyet_Doi_VAT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_VAT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_TTDB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [Thue_Suat_Tuyet_Doi_TTDB] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_TTDB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_MT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [Thue_Suat_Tuyet_Doi_MT] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_MT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_Khac' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [Thue_Suat_Tuyet_Doi_Khac] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_Khac]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_Tuyet_Doi_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [Thue_Suat_Tuyet_Doi_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [Thue_Suat_Tuyet_Doi_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MaBieuThue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [MaBieuThue_CLG] nvarchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [MaBieuThue_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [Thue_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [Thue_CLG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Thue_Suat_CLG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DHANGMDTH]') AND type in (N'U')))
Begin
Alter Table [DHANGMDTH] add [Thue_Suat_CLG] numeric(18,4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DHANGMDTH] da duoc bo sung them Column [Thue_Suat_CLG]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DTOKHAIMD]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'SOTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [SOTK] int NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [SOTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_LH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [MA_LH] char(5) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [MA_LH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [MA_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [MA_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NAMDK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NAMDK] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NAMDK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_DK] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [MA_DV] varchar(14) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [MA_DV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DVUT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [MA_DVUT] varchar(14) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [MA_DVUT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DV_DT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [DV_DT] varchar(500) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [DV_DT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_PTVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [MA_PTVT] varchar(3) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [MA_PTVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_PTVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [TEN_PTVT] varchar(255) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [TEN_PTVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAYKH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAYKH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAYKH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAYDEN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAYDEN] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAYDEN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'VAN_DON' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [VAN_DON] varchar(500) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [VAN_DON]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_CK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [MA_CK] char(4) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [MA_CK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'CANGNN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [CANGNN] varchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [CANGNN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SO_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [SO_GP] varchar(100) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [SO_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_GP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_GP] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_GP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_HHGP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_HHGP] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_HHGP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SO_HD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [SO_HD] varchar(500) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [SO_HD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TYGIA_USD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [TYGIA_USD] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [TYGIA_USD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_HD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_HD] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_HD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_HHHD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_HHHD] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_HHHD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NUOC_XK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NUOC_XK] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NUOC_XK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NUOC_NK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NUOC_NK] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NUOC_NK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_GH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [MA_GH] varchar(7) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [MA_GH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SOHANG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [SOHANG] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [SOHANG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_PTTT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [MA_PTTT] varchar(10) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [MA_PTTT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_NT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [MA_NT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [MA_NT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TYGIA_VND' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [TYGIA_VND] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [TYGIA_VND]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'LEPHI_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [LEPHI_HQ] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [LEPHI_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'BL_LPHQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [BL_LPHQ] varchar(20) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [BL_LPHQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'GIAYTO' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [GIAYTO] nvarchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [GIAYTO]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TENCH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [TENCH] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [TENCH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_KB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_KB] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_KB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'USER_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [USER_DK] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [USER_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DDIEM_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [DDIEM_KH] varchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [DDIEM_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PTHUC_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [PTHUC_KH] varchar(40) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [PTHUC_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_KH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'USER_KH1' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [USER_KH1] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [USER_KH1]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'USER_KH2' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [USER_KH2] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [USER_KH2]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'USER_PCKH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [USER_PCKH] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [USER_PCKH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PHI_BH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [PHI_BH] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [PHI_BH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PHI_VC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [PHI_VC] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [PHI_VC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_TH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_TH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_TH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'USER_TH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [USER_TH] varchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [USER_TH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TONGTGKB' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [TONGTGKB] float(53,0) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [TONGTGKB]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TONGTGTT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [TONGTGTT] float(53,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [TONGTGTT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TR_LUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [TR_LUONG] numeric(18,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [TR_LUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SO_KIEN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [SO_KIEN] numeric(15,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [SO_KIEN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SO_CONTAINER' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [SO_CONTAINER] numeric(15,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [SO_CONTAINER]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGUOINHAP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGUOINHAP] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGUOINHAP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAYNHAP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAYNHAP] datetime NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAYNHAP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PLUONG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [PLUONG] char(4) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [PLUONG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PASS_DK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [PASS_DK] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [PASS_DK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PASS_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [PASS_KH] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [PASS_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PASS_TH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [PASS_TH] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [PASS_TH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PASS_GC' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [PASS_GC] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [PASS_GC]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TTTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [TTTK] char(1) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [TTTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PPT_GTGT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [PPT_GTGT] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [PPT_GTGT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PPT_GTGTUT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [PPT_GTGTUT] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [PPT_GTGTUT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DATRUYEN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [DATRUYEN] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [DATRUYEN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DVKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [MA_DVKT] char(14) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [MA_DVKT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THANHKHOAN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [THANHKHOAN] tinyint NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [THANHKHOAN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_THN_THX' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_THN_THX] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_THN_THX]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'PPT_GTGTKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [PPT_GTGTKT] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [PPT_GTGTKT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_GIAOTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_GIAOTK] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_GIAOTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_NHANTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_NHANTK] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_NHANTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_LUUTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_LUUTK] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_LUUTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NVPSINH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NVPSINH] ntext NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NVPSINH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SO_CONTAINER40' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [SO_CONTAINER40] numeric(18,0) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [SO_CONTAINER40]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'KIEMHOANK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [KIEMHOANK] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [KIEMHOANK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SO_HDTM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [SO_HDTM] nvarchar(500) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [SO_HDTM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_HDTM' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_HDTM] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_HDTM]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_VANDON' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_VANDON] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_VANDON]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THUE' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [THUE] tinyint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [THUE]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'HTKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [HTKT] smallint NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [HTKT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TYLE_KT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [TYLE_KT] numeric(5,2) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [TYLE_KT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DENNGAY_KH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [DENNGAY_KH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [DENNGAY_KH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DAIDIEN_DN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [DAIDIEN_DN] nvarchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [DAIDIEN_DN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGUOIQDHTKT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGUOIQDHTKT] nvarchar(30) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGUOIQDHTKT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'SO_PLTK' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [SO_PLTK] smallint NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [SO_PLTK]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'XUAT_NPL_SP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [XUAT_NPL_SP] char(1) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [XUAT_NPL_SP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'THANH_LY' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [THANH_LY] char(1) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [THANH_LY]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ma_MID' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [Ma_MID] varchar(50) NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [Ma_MID]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'NGAY_HOANTHANH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DTOKHAIMD]') AND type in (N'U')))
Begin
Alter Table [DTOKHAIMD] add [NGAY_HOANTHANH] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [DTOKHAIMD] da duoc bo sung them Column [NGAY_HOANTHANH]')
End
END
--===============================END TABLE ===============================

 
 Select * from @tblTableNew 
 Select * from @tblColumnAdded