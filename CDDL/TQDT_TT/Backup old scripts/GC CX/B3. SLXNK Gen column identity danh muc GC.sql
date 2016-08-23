
	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DHDGC'
	if @idColumn is null
	begin
		ALTER TABLE dbo.DHDGC ADD
			CDDL_ID int NOT NULL IDENTITY (1, 1)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DNPLHD'
	if @idColumn is null
	begin
		ALTER TABLE dbo.DNPLHD ADD
			CDDL_ID int NOT NULL IDENTITY (1, 1)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DSPGC'
	if @idColumn is null
	begin
		ALTER TABLE dbo.DSPGC ADD
			CDDL_ID int NOT NULL IDENTITY (1, 1)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DThietBi'
	if @idColumn is null
	begin
		ALTER TABLE dbo.DThietBi ADD
			CDDL_ID int NOT NULL IDENTITY (1, 1)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsDHangMau'
	if @idColumn is null
	begin
		ALTER TABLE dbo.ecsDHangMau ADD
			CDDL_ID int NOT NULL IDENTITY (1, 1)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DDMuc'
	if @idColumn is null
	begin
		--mất ~10phút cho bảng ~2M bản ghi
		ALTER TABLE dbo.DDMuc ADD
			CDDL_ID int NOT NULL IDENTITY (1, 1)
	end
	GO
	
