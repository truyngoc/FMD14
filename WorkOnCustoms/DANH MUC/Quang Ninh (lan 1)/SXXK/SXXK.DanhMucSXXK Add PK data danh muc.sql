use DanhMucSXXK
go

print N'--============Sản xuất xuất khẩu - add PK============================='
ALTER TABLE SNPL ADD CONSTRAINT
	PK_SNPL PRIMARY KEY CLUSTERED 
	(
	[MA_HQ]
	,[MA_DV]
	,[MA_NPL]	
	)
GO
ALTER TABLE SSP ADD CONSTRAINT
	PK_SSP PRIMARY KEY CLUSTERED 
	(
	[MA_HQ]
      ,[MA_DV]
      ,[MA_SP]
	)
GO
ALTER TABLE DDINHMUC ADD CONSTRAINT
	PK_DDINHMUC PRIMARY KEY CLUSTERED 
	(
	[MA_SP]
    ,[MA_NPL]
    ,[MA_DV]
    ,[MA_HQ]
	)
GO