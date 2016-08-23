
-- Truncate the log by changing the database recovery model to SIMPLE.
ALTER DATABASE DanhMucGCCX
SET RECOVERY SIMPLE;
GO
-- Shrink the truncated log file to 1 MB.
DBCC SHRINKFILE (DanhMucGCCX_log, 1);
GO
