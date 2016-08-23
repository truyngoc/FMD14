
--phải sửa tên DB nguồn ở dưới
print N'--============Tạo cơ sở dữ liệu danh mục GC CX========================='
CREATE DATABASE [DanhMucGCCX] ON  PRIMARY 
( NAME = N'DanhMucGCCX', FILENAME = N'D:\SQLDatas\DanhMucGCCX.mdf' , SIZE = 4096KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DanhMucGCCX_log', FILENAME = N'D:\SQLDatas\DanhMucGCCX_log.ldf' , SIZE = 2048KB , FILEGROWTH = 10%)
GO


use [DanhMucGCCX]
GO
declare @DBName varchar(100)
phải sửa tên DB nguồn ở dưới
set	@DBName='SLXNK_CUC.dbo.'
declare @MaHQs	varchar(1000)
phải nhập mã HQ kết xuất dữ liệu ở dưới
--vd: @MaHQs = '''T01E'',''T01E01'''
set @MaHQs = '''T01E'''


print N'--============Kết xuất dữ liệu LẦN ĐẦU======================'
print N'--============Gia công======================================'
exec('select * into DHDGC from ' + @DBName + 'DHDGC Where Ma_HQHD in (' + @MaHQs + ')')

exec('select * into DLOAISPGC from ' + @DBName + 'DLOAISPGC Where Ma_HQHD in (' + @MaHQs + ')')

exec('select * into DNPLHD from ' + @DBName + 'DNPLHD Where Ma_HQHD in (' + @MaHQs + ')')

exec('select * into DSPGC from ' + @DBName + 'DSPGC Where Ma_HQHD in (' + @MaHQs + ')')

exec('select * into DThietBi from ' + @DBName + 'DThietBi Where Ma_HQHD in (' + @MaHQs + ')')

exec('select * into ecsDHangMau from ' + @DBName + 'ecsDHangMau Where Ma_HQHD in (' + @MaHQs + ')')

exec('select * into DDMuc from ' + @DBName + 'DDMuc Where Ma_HQHD in (' + @MaHQs + ')')

print N'--============Chế xuất======================================'
exec('select * into ecsCX_DM_HH_DUA_VAO_D from ' + @DBName + 'ecsCX_DM_HH_DUA_VAO_D Where Ma_HQTN in (' + @MaHQs + ')')

exec('select * into ecsCX_DM_HH_DUA_RA_D from ' + @DBName + 'ecsCX_DM_HH_DUA_RA_D Where Ma_HQTN in (' + @MaHQs + ')')

exec('select * into ecsCX_DinhMuc from ' + @DBName + 'ecsCX_DinhMuc Where Ma_HQ in (' + @MaHQs + ')')

exec('select * into ecsCX_CT_TOKHAI from ' + @DBName + 'ecsCX_CT_TOKHAI Where Ma_HQTN in (' + @MaHQs + ')')

exec('select * into ecsCX_CT_TOKHAI_HANG from ' + @DBName + 'ecsCX_CT_TOKHAI_HANG Where Ma_HQTN in (' + @MaHQs + ')')
GO

use [DanhMucGCCX]
GO
print N'--============Gia công - add PK========================'
ALTER TABLE DHDGC ADD CONSTRAINT
	PK_DHDGC PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	DVGC,
	Ngay_Ky
	)
ALTER TABLE DLOAISPGC ADD CONSTRAINT
	PK_DLOAISPGC PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	DVGC,
	Ngay_Ky,
	Ma_SPGC
	)
ALTER TABLE DNPLHD ADD CONSTRAINT
	PK_DNPLHD PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	DVGC,
	Ngay_Ky,
	P_Code
	)
ALTER TABLE DSPGC ADD CONSTRAINT
	PK_DSPGC PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	DVGC,
	Ngay_Ky,
	P_Code
	)
ALTER TABLE DThietBi ADD CONSTRAINT
	PK_DThietBi PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	DVGC,
	Ngay_Ky,
	P_Code
	)
ALTER TABLE ecsDHangMau ADD CONSTRAINT
	PK_ecsDHangMau PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	DVGC,
	Ngay_Ky,
	P_Code
	)
ALTER TABLE DDMuc ADD CONSTRAINT
	PK_DDMuc PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	Ngay_Ky,
	DVGC,
	SPP_Code,
	NPLP_Code
	)
print N'--============Chế xuất - add PK========================'
ALTER TABLE ecsCX_DM_HH_DUA_VAO_D ADD CONSTRAINT
	PK_ecsCX_DM_HH_DUA_VAO_D PRIMARY KEY CLUSTERED 
	(
	MA_HQTN,
	MA_DV_XN,
	MA_HANG
	)

ALTER TABLE ecsCX_DM_HH_DUA_RA_D ADD CONSTRAINT
	PK_ecsCX_DM_HH_DUA_RA_D PRIMARY KEY CLUSTERED 
	(
	MA_HQTN,
	MA_DV_XN,
	MA_HANG
	)

ALTER TABLE ecsCX_DinhMuc ADD CONSTRAINT
	PK_ecsCX_DinhMuc PRIMARY KEY CLUSTERED 
	(
	MA_SP,
	MA_NPL,
	MA_HQ,
	MA_DV
	)

ALTER TABLE ecsCX_CT_TOKHAI ADD CONSTRAINT
	PK_ecsCX_CT_TOKHAI PRIMARY KEY CLUSTERED 
	(
	SO_TN,
	NAM_TN,
	MA_HQTN
	)

ALTER TABLE ecsCX_CT_TOKHAI_HANG ADD CONSTRAINT
	PK_ecsCX_CT_TOKHAI_HANG PRIMARY KEY CLUSTERED 
	(
	SO_TN,
	NAM_TN,
	MA_HQTN,
	STT_HANG
	)
GO

use [DanhMucGCCX]
GO


print N'===================Báo cáo số liệu==========================='

-- print N'===============Gia công===================='
--đếm hợp đồng GC
declare @slhdgc varchar(20),@slloaispgc varchar(20),@slnplgc varchar(20),@slspgc varchar(20),@sltbgc varchar(20),@slhmgc varchar(20)
declare @sldmgc varchar(20),@sldmgcSAIhd varchar(20),@sldmgcSAInplsp varchar(20)
declare @slnplSAIhd varchar(20),@slspSAIhd varchar(20),@sltbSAIhd varchar(20),@slhmSAIhd varchar(20)

-- select @slhdgc		= COUNT(*) from DHDGC
-- select @slloaispgc	= COUNT(*) from DLOAISPGC
-- select @slnplgc		= COUNT(*) from DNPLHD
-- select @slspgc		= COUNT(*) from DSPGC
-- select @sltbgc		= COUNT(*) from DThietBi
-- select @slhmgc		= COUNT(*) from ecsDHangMau
-- select @sldmgc		= COUNT(*) from DDMuc

select @sldmgcSAIhd	= COUNT(*) 
from DDMuc dm left join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @slnplSAIhd	= COUNT(*) 
from DNPLHD a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @slspSAIhd	= COUNT(*) 
from DSPGC a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @sltbSAIhd	= COUNT(*) 
from DThietBi a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @slhmSAIhd	= COUNT(*) 
from ecsDHangMau a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @sldmgcSAInplsp	= COUNT(*) 
from DDMuc dm join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky
	left join DNPLHD l on dm.So_HD=l.So_HD and dm.Ma_HQHD=l.Ma_HQHD and dm.DVGC=l.DVGC and dm.Ngay_Ky=l.Ngay_Ky and dm.NPLP_Code=l.P_Code
	left join DSPGC s on dm.So_HD=s.So_HD and dm.Ma_HQHD=s.Ma_HQHD and dm.DVGC=s.DVGC and dm.Ngay_Ky=s.Ngay_Ky and dm.SPP_Code=s.P_Code
where l.P_Code is null or s.P_Code is null



print N'===================Gia công - dữ liệu sai==========='

declare @msg nvarchar(255)
if @slnplSAIhd<>'0'
begin
	set @msg=N'Có ' + @slnplSAIhd + N' nguyên phụ liệu GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print N'Chạy script dưới để thực hiện thao tác xóa:'
	print 'delete a
from DNPLHD a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end

if @slspSAIhd <>'0'
begin
	set @msg=N'Có ' + @slspSAIhd + N' sản phẩm GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print N'Chạy script dưới để thực hiện thao tác xóa:'
	print 'delete a
from DSPGC a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end
if @sltbSAIhd <>'0'
begin
	set @msg=N'Có ' + @sltbSAIhd + N' thiết bị GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print N'Chạy script dưới để thực hiện thao tác xóa:'
	print 'delete a
from DThietBi a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end
if @slhmSAIhd <>'0'
begin
	set @msg=N'Có ' + @slhmSAIhd + N' hàng mẫu GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print N'Chạy script dưới để thực hiện thao tác xóa:'
	print 'delete a
from ecsDHangMau a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end
if @sldmgcSAIhd <>'0'
begin
	set @msg=N'Có ' + @sldmgcSAIhd + N' bản ghi chi tiết định mức GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print N'Chạy script dưới để thực hiện thao tác xóa:'
	print 'delete dm
from DDMuc dm left join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end

GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DHDGC'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.DHDGC ADD
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL
	end
	else
	begin
		ALTER TABLE dbo.DHDGC ADD
			CDDL_ID int NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL
		exec('update DHDGC set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DLOAISPGC'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.DLOAISPGC ADD
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL
	end
	else
	begin
		ALTER TABLE dbo.DLOAISPGC ADD
			CDDL_ID int,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL
		exec('update DLOAISPGC set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DNPLHD'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.DNPLHD ADD
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL,
			CDDL_HS_CODE varchar(12) NULL
	end
	else
	begin
		ALTER TABLE dbo.DNPLHD ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL,
			CDDL_HS_CODE varchar(12) NULL
		exec('update DNPLHD set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DSPGC'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.DSPGC ADD
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL
	end
	else
	begin
		ALTER TABLE dbo.DSPGC ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL
		exec('update DSPGC set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DThietBi'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.DThietBi ADD
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL,
			CDDL_HS_CODE varchar(12) NULL,
			CDDL_XUAT_XU varchar(3) NULL,
			CDDL_TINHTRANG varchar(1) NULL
	end
	else
	begin
		ALTER TABLE dbo.DThietBi ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL,
			CDDL_HS_CODE varchar(12) NULL,
			CDDL_XUAT_XU varchar(3) NULL,
			CDDL_TINHTRANG varchar(1) NULL
		exec('update DThietBi set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsDHangMau'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.ecsDHangMau ADD
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL
		end
	else
	begin
		ALTER TABLE dbo.ecsDHangMau ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL
		exec('update ecsDHangMau set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DDMuc'
	if @idColumn = 'CDDL_ID'
	begin
		--mất ~10phút cho bảng ~2M bản ghi
		ALTER TABLE dbo.DDMuc ADD
			CDDL_DM_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_VT_ID_SP bigint NULL,
			CDDL_VT_ID_NPL bigint NULL,
			CDDL_MA_DVT_SP varchar(3) NULL,
			CDDL_SPP_Code varchar(50) NULL,
			CDDL_NPLP_Code varchar(50) NULL
	end
	else
	begin
		ALTER TABLE dbo.DDMuc ADD
			CDDL_ID int,
			CDDL_DM_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_VT_ID_SP bigint NULL,
			CDDL_VT_ID_NPL bigint NULL,
			CDDL_MA_DVT_SP varchar(3) NULL,
			CDDL_SPP_Code varchar(50) NULL,
			CDDL_NPLP_Code varchar(50) NULL
		exec('update DDMuc set CDDL_ID=' + @idColumn)
	end
	GO
	
print N'END==================Gia công - Gen column danh mục==============='
print N'--==================Chế xuất - Gen column danh mục==============='
	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_DM_HH_DUA_VAO_D'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.ecsCX_DM_HH_DUA_VAO_D ADD
			CDDL_VT_ID bigint NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,		
			CDDL_NAM_TK smallint NULL,
			CDDL_IS_DUA_VAO smallint null
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_DM_HH_DUA_VAO_D ADD
			CDDL_ID int NULL,
			CDDL_VT_ID bigint NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,		
			CDDL_NAM_TK smallint NULL,
			CDDL_IS_DUA_VAO smallint null
		
		exec('update ecsCX_DM_HH_DUA_VAO_D set CDDL_ID=' + @idColumn)
	end

GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_DM_HH_DUA_RA_D'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.ecsCX_DM_HH_DUA_RA_D ADD
			CDDL_VT_ID bigint NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,		
			CDDL_NAM_TK smallint NULL,
			CDDL_IS_DUA_VAO smallint null
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_DM_HH_DUA_RA_D ADD
			CDDL_ID int NULL,
			CDDL_VT_ID bigint NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,		
			CDDL_NAM_TK smallint NULL
		
		exec('update ecsCX_DM_HH_DUA_RA_D set CDDL_ID=' + @idColumn)
	end
GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_DinhMuc'
	if @idColumn = 'CDDL_ID'
	begin	
		ALTER TABLE dbo.ecsCX_DinhMuc ADD
			CDDL_DM_ID bigint NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,	
			CDDL_VT_ID_SP bigint NULL,
			CDDL_VT_ID_NPL bigint NULL,
			CDDL_TEN_SP nvarchar(256) null,
			CDDL_MA_HS_SP varchar(12) NULL,
			CDDL_MA_DVT_SP char(4) null,
			CDDL_Ten_NPL nvarchar(256) null,
			CDDL_MA_HS_NPL varchar(12) null,
			CDDL_MA_DVT_NPL char(4) null
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_DinhMuc ADD
			CDDL_ID int NULL,	
			CDDL_DM_ID bigint NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,	
			CDDL_VT_ID_SP bigint NULL,
			CDDL_VT_ID_NPL bigint NULL,
			CDDL_TEN_SP nvarchar(256) null,
			CDDL_MA_HS_SP varchar(12) NULL,
			CDDL_MA_DVT_SP char(4) null,
			CDDL_Ten_NPL nvarchar(256) null,
			CDDL_MA_HS_NPL varchar(12) null,
			CDDL_MA_DVT_NPL char(4) null
				
		exec('update ecsCX_DinhMuc set CDDL_ID=' + @idColumn)
	end
				
GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_CT_TOKHAI'
	if @idColumn = 'CDDL_ID'
	begin	
		ALTER TABLE dbo.ecsCX_CT_TOKHAI ADD
			CDDL_CT_ID bigint null,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_CT_TOKHAI ADD
			CDDL_ID int NULL,	
			CDDL_CT_ID bigint null,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL
				
		exec('update ecsCX_CT_TOKHAI set CDDL_ID=' + @idColumn)
	end
		
GO		

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_CT_TOKHAI_HANG'
	if @idColumn = 'CDDL_ID'
	begin	
		ALTER TABLE dbo.ecsCX_CT_TOKHAI_HANG ADD
			CDDL_CT_ID bigint null,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK smallint null,
			CDDL_VT_ID bigint null
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_CT_TOKHAI_HANG ADD
			CDDL_ID int NULL,	
			CDDL_CT_ID bigint null,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK smallint null,
			CDDL_VT_ID bigint null
				
		exec('update ecsCX_CT_TOKHAI_HANG set CDDL_ID=' + @idColumn)
	end
GO