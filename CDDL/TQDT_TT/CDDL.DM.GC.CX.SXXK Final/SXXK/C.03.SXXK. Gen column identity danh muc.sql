-- USE SXXK_CUC
-- GO

declare @idColumn as varchar(100)
Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'SNPL'
if @idColumn is null
begin
	ALTER TABLE dbo.SNPL ADD
		CDDL_ID int NOT NULL IDENTITY (1, 1)
end
GO

declare @idColumn as varchar(100)
Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'SSP'
if @idColumn is null
begin
	ALTER TABLE dbo.SSP ADD
		CDDL_ID int NOT NULL IDENTITY (1, 1)
end
GO

declare @idColumn as varchar(100)
Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DDINHMUC'
if @idColumn is null
begin
	ALTER TABLE dbo.DDINHMUC ADD
		CDDL_ID int NOT NULL IDENTITY (1, 1)
end
GO