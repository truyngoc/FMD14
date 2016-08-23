
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

	ALTER TABLE dbo.DLOAISPGC ADD
		CDDL_HD_ID bigint NULL,
		CDDL_MA_CUC_HQ varchar(2) NULL,
		CDDL_NAM_DK_HD smallint NULL,
		CDDL_MA_HQ_HD varchar(6) NULL
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
	
