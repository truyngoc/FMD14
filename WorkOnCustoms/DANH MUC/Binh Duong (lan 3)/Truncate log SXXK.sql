
-- Truncate the log by changing the database recovery model to SIMPLE.
ALTER DATABASE DanhMucSXXK
SET RECOVERY SIMPLE;
GO
-- Shrink the truncated log file to 1 MB.
DBCC SHRINKFILE (DanhMucSXXK_log, 1);
GO