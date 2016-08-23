Use [DanhMuc]
GO
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