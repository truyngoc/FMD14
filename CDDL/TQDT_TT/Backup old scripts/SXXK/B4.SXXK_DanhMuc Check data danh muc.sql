USE [DanhMuc]
GO

-- Tạo primary key cho các bảng dữ liệu danh mục SXXK được chuyển sang database [DanhMuc] ở bước B3.1
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

-- Kiểm tra nguyên phụ liệu, sản phẩm xem có bản ghi nào bị trùng không, nếu có thì phải khắc phục
select [MA_HQ],[MA_DV],[MA_NPL], COUNT(*) as [SL NPL SXXK trùng] from SNPL
group by [MA_HQ],[MA_DV],[MA_NPL]
having COUNT(*)>1


select [MA_HQ],[MA_DV],[MA_SP], COUNT(*) as [SL SP SXXK trùng] from SSP
group by [MA_HQ],[MA_DV],[MA_SP]
having COUNT(*)>1