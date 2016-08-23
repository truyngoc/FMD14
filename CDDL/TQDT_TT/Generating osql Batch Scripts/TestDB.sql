DECLARE 
@pathName NVARCHAR(512),
@databaseName NVARCHAR(512) 
SET @databaseName = 'TestDB' 
SET @pathName = 'E:\TestDB_Backup\TestDB_Backup_Data\TestScript_' + Convert(varchar(8), GETDATE(), 112) + '_' + Replace((Convert(varchar(8), GETDATE(), 108)),':','-')+ '.bak' 
BACKUP DATABASE @databaseName TO DISK = @pathName WITH NOFORMAT, NOINIT,  NAME = N'TestDBScript-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

