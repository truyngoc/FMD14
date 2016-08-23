IF EXISTS(SELECT * FROM sys.servers WHERE name = '$(lnksrv_name)')
begin
	EXEC master.sys.sp_dropserver '$(lnksrv_name)','droplogins'  
	
	EXEC sp_addlinkedserver @server = $(lnksrv_name)
			, @srvproduct=$(lnksrv_datasource)
			, @provider=N'SQLNCLI'
			, @datasrc=$(lnksrv_datasource)

	EXEC sp_addlinkedsrvlogin @rmtsrvname=$(lnksrv_name)
			,@useself=N'False'
			,@locallogin=NULL
			,@rmtuser=$(usr_src)
			,@rmtpassword=$(pwd_src)
end
else
begin
	EXEC sp_addlinkedserver @server = $(lnksrv_name)
			, @srvproduct=$(lnksrv_datasource)
			, @provider=N'SQLNCLI'
			, @datasrc=$(lnksrv_datasource)

	EXEC sp_addlinkedsrvlogin @rmtsrvname=$(lnksrv_name)
			,@useself=N'False'
			,@locallogin=NULL
			,@rmtuser=$(usr_src)
			,@rmtpassword=$(pwd_src)
end
