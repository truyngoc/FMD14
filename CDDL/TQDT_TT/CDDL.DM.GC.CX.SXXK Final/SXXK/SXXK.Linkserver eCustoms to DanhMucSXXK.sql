declare @linkservername varchar(20)
declare @datasource varchar(20)
declare @dbname varchar(20)
declare @uid varchar(20)
declare @pwd varchar(20)

-- ten link server
set @linkservername = N'DANHMUC'
-- dia chi may chu chua csdl nguon
set @datasource = N'10.224.133.155'
-- ten csdl nguon
set @dbname = N'DanhMucSXXK'
-- user name
set @uid = N'sa'
-- password
set @pwd = 'asdqwe@123'


IF EXISTS(SELECT * FROM sys.servers WHERE name = @linkservername)
begin
	EXEC master.sys.sp_dropserver @linkservername,'droplogins'  
end
else
begin
	EXEC sp_addlinkedserver @server = @linkservername
			, @srvproduct=@datasource
			, @provider=N'SQLNCLI'
			, @datasrc=@datasource
			, @catalog=@dbname

	EXEC sp_addlinkedsrvlogin @rmtsrvname=@linkservername
			,@useself=N'False'
			,@locallogin=NULL
			,@rmtuser=@uid
			,@rmtpassword=@pwd	
end
