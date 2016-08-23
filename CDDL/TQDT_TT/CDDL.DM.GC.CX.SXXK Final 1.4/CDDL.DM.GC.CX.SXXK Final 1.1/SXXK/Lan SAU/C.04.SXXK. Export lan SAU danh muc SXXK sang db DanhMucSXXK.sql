declare @NPL_ID_max int,@SP_ID_max int,@DM_ID_max int

select @NPL_ID_max	= {nhập giá trị}
	,@SP_ID_max		= {nhập giá trị}
	,@DM_ID_max		= {nhập giá trị}

declare @iMin int
declare @idColumnNPLSXXK as varchar(100)
declare @idColumnSPSXXK as varchar(100)
declare @idColumnDMSXXK as varchar(100)

CREATE TABLE #MinIdentity (ID INT)

Select @idColumnDMSXXK=name from sys.identity_columns where object_name(object_id) = 'DDINHMUC'
Select @idColumnNPLSXXK=name from sys.identity_columns where object_name(object_id) = 'SNPL'
Select @idColumnSPSXXK=name from sys.identity_columns where object_name(object_id) = 'SSP'

if @idColumnDMSXXK is null
	set @idColumnDMSXXK='CDDL_ID'
if @idColumnNPLSXXK is null
	set @idColumnNPLSXXK='CDDL_ID'
if @idColumnSPSXXK is null
	set @idColumnSPSXXK='CDDL_ID'

--điều chỉnh NPL_ID theo định mức
exec('insert into #MinIdentity select min(a.' + @idColumnNPLSXXK + ')	from	DDINHMUC d join SNPL a on d.Ma_HQ = a.Ma_HQ and d.MA_DV = a.MA_DV and d.MA_NPL=a.MA_NPL Where d.' + @idColumnDMSXXK + '>' + @DM_ID_max)
select @iMin = ID From #MinIdentity
delete #MinIdentity
if @NPL_ID_max >= @iMin 
begin
	set @NPL_ID_max = @iMin-1
end

--điều chỉnh SP_ID theo định mức
exec('insert into #MinIdentity select min(a.' + @idColumnSPSXXK + ')	from	DDINHMUC d join SSP a on d.Ma_HQ = a.Ma_HQ and d.MA_DV = a.MA_DV and d.MA_SP=a.MA_SP Where d.' + @idColumnDMSXXK + '>' + @DM_ID_max)
select @iMin = ID From #MinIdentity
delete #MinIdentity
if @SP_ID_max >= @iMin 
begin
	set @SP_ID_max = @iMin-1
end

drop table #MinIdentity
select	@NPL_ID_max	as NPL_ID_max
	,@SP_ID_max		as SP_ID_max
	,@DM_ID_max		as DM_ID_max



print N'--============Tạo cơ sở dữ liệu danh mục SXXK========================='
CREATE DATABASE [DanhMucSXXK] ON  PRIMARY 
( NAME = N'DanhMucSXXK', FILENAME = N'D:\SQLDatas\DanhMucSXXK.mdf' , SIZE = 2048KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DanhMucSXXK_log', FILENAME = N'D:\SQLDatas\DanhMucSXXK_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)


declare @DBName varchar(100)
phải sửa tên DB nguồn ở dưới
set	@DBName='SXXK_CUC.dbo.'

print N'--============Kết xuất dữ liệu LẦN ĐẦU================================'
print N'--============Sản xuất xuất khẩu======================================'

exec('
use [DanhMucSXXK]

select * into SNPL from ' + @DBName + 'SNPL Where ' + @idColumnNPLSXXK + '>' + @NPL_ID_max +
'
select * into  SSP from ' + @DBName + 'SSP Where ' + @idColumnSPSXXK + '>' + @SP_ID_max +
'
select * into DDINHMUC from ' + @DBName + 'DDINHMUC Where ' + @idColumnDMSXXK + '>' + @DM_ID_max
)
GO
use [DanhMucSXXK]
GO
print N'--============Sản xuất xuất khẩu - add PK============================='
ALTER TABLE SNPL ADD CONSTRAINT
	PK_SNPL PRIMARY KEY CLUSTERED 
	(
	[MA_HQ]
	,[MA_DV]
	,[MA_NPL]	
	)
GO
ALTER TABLE SSP ADD CONSTRAINT
	PK_SSP PRIMARY KEY CLUSTERED 
	(
	[MA_HQ]
      ,[MA_DV]
      ,[MA_SP]
	)
GO
ALTER TABLE DDINHMUC ADD CONSTRAINT
	PK_DDINHMUC PRIMARY KEY CLUSTERED 
	(
	[MA_SP]
    ,[MA_NPL]
    ,[MA_DV]
    ,[MA_HQ]
	)
GO

-- print N'--===================================================================='
-- -- Kiểm tra nguyên phụ liệu, sản phẩm xem có bản ghi nào bị trùng không, nếu có thì phải khắc phục
-- select [MA_HQ],[MA_DV],[MA_NPL], COUNT(*) as [SL NPL SXXK trùng] from SNPL
-- group by [MA_HQ],[MA_DV],[MA_NPL]
-- having COUNT(*)>1


-- select [MA_HQ],[MA_DV],[MA_SP], COUNT(*) as [SL SP SXXK trùng] from SSP
-- group by [MA_HQ],[MA_DV],[MA_SP]
-- having COUNT(*)>1

-- select ma_sp, ma_npl, ma_dv, ma_hq, count(*) as [SL DM SXXK trùng] from DDINHMUC
-- group by ma_sp, ma_npl, ma_dv, ma_hq
-- having count(*) > 1



print N'--==================SXXK - Gen column danh mục==============='
	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'SNPL'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.SNPL ADD
			CDDL_VT_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_NAM_TK smallint NULL
	end
	else
	begin
		ALTER TABLE dbo.SNPL ADD
			CDDL_ID int NULL,
			CDDL_VT_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_NAM_TK smallint NULL
		exec('update SNPL set CDDL_ID=' + @idColumn)
	end
	GO


	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'SSP'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.SSP ADD
			CDDL_VT_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_NAM_TK smallint NULL
	end
	else
	begin
		ALTER TABLE dbo.SSP ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_NAM_TK smallint NULL
		exec('update SSP set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DDINHMUC'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.DDINHMUC ADD
			CDDL_DM_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_VT_ID_SP bigint NULL,
			CDDL_TEN_VAT_TU_SP	nvarchar(256) null,
			CDDL_MA_DVT_SP	char(4) null,
			CDDL_MA_HS_SP	varchar(12) null,
			CDDL_VT_ID_NPL bigint NULL,
			CDDL_TEN_VAT_TU_NPL	nvarchar(256) null,
			CDDL_MA_DVT_NPL	char(4) null,
			CDDL_MA_HS_NPL	varchar(12) null
	end
	else
	begin
		ALTER TABLE dbo.DDINHMUC ADD
			CDDL_ID int,
			CDDL_DM_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_VT_ID_SP bigint NULL,
			CDDL_TEN_VAT_TU_SP	nvarchar(256) null,
			CDDL_MA_DVT_SP	char(4) null,
			CDDL_MA_HS_SP	varchar(12) null,
			CDDL_VT_ID_NPL bigint NULL,
			CDDL_TEN_VAT_TU_NPL	nvarchar(256) null,
			CDDL_MA_DVT_NPL	char(4) null,
			CDDL_MA_HS_NPL	varchar(12) null
		exec('update DDINHMUC set CDDL_ID=' + @idColumn)
	end
	GO
print N'END==================SXXK - Gen column danh mục==============='
