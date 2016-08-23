use SXXK
go
declare @tblTableNew table
        (sSQL varchar(max))
declare @tblColumnAdded table
        (sSQL varchar(max))
--SQL 1 
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DDINHMUC]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [DDINHMUC]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_SP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DDINHMUC]') AND type in (N'U')))
Begin
Alter Table [DDINHMUC] add [MA_SP] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DDINHMUC] da duoc bo sung them Column [MA_SP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_NPL' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DDINHMUC]') AND type in (N'U')))
Begin
Alter Table [DDINHMUC] add [MA_NPL] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DDINHMUC] da duoc bo sung them Column [MA_NPL]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DDINHMUC]') AND type in (N'U')))
Begin
Alter Table [DDINHMUC] add [MA_DV] varchar(17) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DDINHMUC] da duoc bo sung them Column [MA_DV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DDINHMUC]') AND type in (N'U')))
Begin
Alter Table [DDINHMUC] add [MA_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DDINHMUC] da duoc bo sung them Column [MA_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DM_SD' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DDINHMUC]') AND type in (N'U')))
Begin
Alter Table [DDINHMUC] add [DM_SD] numeric(18,8) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DDINHMUC] da duoc bo sung them Column [DM_SD]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TL_HH' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DDINHMUC]') AND type in (N'U')))
Begin
Alter Table [DDINHMUC] add [TL_HH] numeric(18,8) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DDINHMUC] da duoc bo sung them Column [TL_HH]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'DM_CHUNG' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DDINHMUC]') AND type in (N'U')))
Begin
Alter Table [DDINHMUC] add [DM_CHUNG] numeric(18,8) NULL
Insert Into @tblColumnAdded
Values ('--Table [DDINHMUC] da duoc bo sung them Column [DM_CHUNG]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'GHI_CHU' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DDINHMUC]') AND type in (N'U')))
Begin
Alter Table [DDINHMUC] add [GHI_CHU] nvarchar(256) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [DDINHMUC] da duoc bo sung them Column [GHI_CHU]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_TN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DDINHMUC]') AND type in (N'U')))
Begin
Alter Table [DDINHMUC] add [So_TN] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DDINHMUC] da duoc bo sung them Column [So_TN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nam_TN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DDINHMUC]') AND type in (N'U')))
Begin
Alter Table [DDINHMUC] add [Nam_TN] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DDINHMUC] da duoc bo sung them Column [Nam_TN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsKiemTraTT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DDINHMUC]') AND type in (N'U')))
Begin
Alter Table [DDINHMUC] add [ecsKiemTraTT] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DDINHMUC] da duoc bo sung them Column [ecsKiemTraTT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'ecsSua_SauKTTT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[DDINHMUC]') AND type in (N'U')))
Begin
Alter Table [DDINHMUC] add [ecsSua_SauKTTT] int NULL
Insert Into @tblColumnAdded
Values ('--Table [DDINHMUC] da duoc bo sung them Column [ecsSua_SauKTTT]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SNPL]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [SNPL]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SNPL]') AND type in (N'U')))
Begin
Alter Table [SNPL] add [MA_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [SNPL] da duoc bo sung them Column [MA_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SNPL]') AND type in (N'U')))
Begin
Alter Table [SNPL] add [MA_DV] varchar(14) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [SNPL] da duoc bo sung them Column [MA_DV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_NPL' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SNPL]') AND type in (N'U')))
Begin
Alter Table [SNPL] add [MA_NPL] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [SNPL] da duoc bo sung them Column [MA_NPL]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_NPL' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SNPL]') AND type in (N'U')))
Begin
Alter Table [SNPL] add [TEN_NPL] nvarchar(255) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [SNPL] da duoc bo sung them Column [TEN_NPL]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SNPL]') AND type in (N'U')))
Begin
Alter Table [SNPL] add [MA_HS] varchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [SNPL] da duoc bo sung them Column [MA_HS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SNPL]') AND type in (N'U')))
Begin
Alter Table [SNPL] add [MA_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [SNPL] da duoc bo sung them Column [MA_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_TN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SNPL]') AND type in (N'U')))
Begin
Alter Table [SNPL] add [So_TN] int NULL
Insert Into @tblColumnAdded
Values ('--Table [SNPL] da duoc bo sung them Column [So_TN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nam_TN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SNPL]') AND type in (N'U')))
Begin
Alter Table [SNPL] add [Nam_TN] int NULL
Insert Into @tblColumnAdded
Values ('--Table [SNPL] da duoc bo sung them Column [Nam_TN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Lay_Mau' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SNPL]') AND type in (N'U')))
Begin
Alter Table [SNPL] add [Lay_Mau] smallint NULL
Insert Into @tblColumnAdded
Values ('--Table [SNPL] da duoc bo sung them Column [Lay_Mau]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Lan_Lay_Mau' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SNPL]') AND type in (N'U')))
Begin
Alter Table [SNPL] add [Lan_Lay_Mau] int NULL
Insert Into @tblColumnAdded
Values ('--Table [SNPL] da duoc bo sung them Column [Lan_Lay_Mau]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Ngay_Lay_Mau' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SNPL]') AND type in (N'U')))
Begin
Alter Table [SNPL] add [Ngay_Lay_Mau] datetime NULL
Insert Into @tblColumnAdded
Values ('--Table [SNPL] da duoc bo sung them Column [Ngay_Lay_Mau]')
End
END
--===============================END TABLE ===============================
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SSP]') AND type in (N'U'))
BEGIN
    --***** Khong ton tai bang --> tao bang voi tat ca cac truong
    --SQL11
Insert Into @tblTableNew
Values('--***** KHONG TON TAI TABLE [SSP]. BAN SU DUNG SCRIPT DI KEM DE TAO TABLE ***** ')    
END
ELSE
BEGIN
    --Bang ton tai --> kiem tra so luong truong
    --SQL12

If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HQ' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SSP]') AND type in (N'U')))
Begin
Alter Table [SSP] add [MA_HQ] char(6) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [SSP] da duoc bo sung them Column [MA_HQ]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DV' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SSP]') AND type in (N'U')))
Begin
Alter Table [SSP] add [MA_DV] varchar(14) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [SSP] da duoc bo sung them Column [MA_DV]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_SP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SSP]') AND type in (N'U')))
Begin
Alter Table [SSP] add [MA_SP] varchar(30) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [SSP] da duoc bo sung them Column [MA_SP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'TEN_SP' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SSP]') AND type in (N'U')))
Begin
Alter Table [SSP] add [TEN_SP] nvarchar(255) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [SSP] da duoc bo sung them Column [TEN_SP]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_HS' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SSP]') AND type in (N'U')))
Begin
Alter Table [SSP] add [MA_HS] varchar(12) NULL
Insert Into @tblColumnAdded
Values ('--Table [SSP] da duoc bo sung them Column [MA_HS]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'MA_DVT' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SSP]') AND type in (N'U')))
Begin
Alter Table [SSP] add [MA_DVT] char(3) NOT NULL
Insert Into @tblColumnAdded
Values ('--Table [SSP] da duoc bo sung them Column [MA_DVT]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'So_TN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SSP]') AND type in (N'U')))
Begin
Alter Table [SSP] add [So_TN] int NULL
Insert Into @tblColumnAdded
Values ('--Table [SSP] da duoc bo sung them Column [So_TN]')
End
If not exists (SELECT 1 FROM sys.columns WHERE name = 'Nam_TN' and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(N'[dbo].[SSP]') AND type in (N'U')))
Begin
Alter Table [SSP] add [Nam_TN] int NULL
Insert Into @tblColumnAdded
Values ('--Table [SSP] da duoc bo sung them Column [Nam_TN]')
End
END
--===============================END TABLE ===============================

 
 Select * from @tblTableNew 
 Select * from @tblColumnAdded