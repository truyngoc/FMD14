use DanhMucGCCX
GO
print'--==================Gia công - Gen column danh mục==============='
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
			CDDL_MA_HQ_HD varchar(6) NULL
	end
	else
	begin
		ALTER TABLE dbo.DNPLHD ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL
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
			CDDL_MA_HQ_HD varchar(6) NULL
	end
	else
	begin
		ALTER TABLE dbo.DSPGC ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL
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
			CDDL_MA_HQ_HD varchar(6) NULL
	end
	else
	begin
		ALTER TABLE dbo.DThietBi ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL
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
			CDDL_MA_HQ_HD varchar(6) NULL
		end
	else
	begin
		ALTER TABLE dbo.ecsDHangMau ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL
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
			CDDL_MA_DVT_SP varchar(3) NULL
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
			CDDL_MA_DVT_SP varchar(3) NULL
		exec('update DDMuc set CDDL_ID=' + @idColumn)
	end
	GO
	
print'--==================Chế xuất - Gen column danh mục==============='
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

