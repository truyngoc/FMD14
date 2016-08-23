-- Tạo mới một database trắng [DanhMuc]
-- Chuyển dữ liệu các bảng danh mục của SXXK sang Database [DanhMuc]
-- USE SXXK_CUC
-- GO

print N'--============Tạo cơ sở dữ liệu danh mục SXXK========================='
CREATE DATABASE [DanhMucSXXK] ON  PRIMARY 
( NAME = N'DanhMucSXXK', FILENAME = N'D:\SQLDatas\DanhMucSXXK.mdf' , SIZE = 2048KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DanhMucSXXK_log', FILENAME = N'D:\SQLDatas\DanhMucSXXK_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO

use DanhMucSXXK
go

declare @DBName varchar(100)
--phải sửa tên DB nguồn ở dưới
set	@DBName='SXXK_Z47Z.dbo.'

print N'--============Kết xuất dữ liệu LẦN ĐẦU================================'
print N'--============Sản xuất xuất khẩu======================================'

exec('select * into SNPL from ' + @DBName + 'SNPL')

exec('select * into  SSP from ' + @DBName + 'SSP')

exec('select * into DDINHMUC from ' + @DBName + 'DDINHMUC')

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

print N'--===================================================================='
-- Kiểm tra nguyên phụ liệu, sản phẩm xem có bản ghi nào bị trùng không, nếu có thì phải khắc phục
select [MA_HQ],[MA_DV],[MA_NPL], COUNT(*) as [SL NPL SXXK trùng] from SNPL
group by [MA_HQ],[MA_DV],[MA_NPL]
having COUNT(*)>1


select [MA_HQ],[MA_DV],[MA_SP], COUNT(*) as [SL SP SXXK trùng] from SSP
group by [MA_HQ],[MA_DV],[MA_SP]
having COUNT(*)>1

select ma_sp, ma_npl, ma_dv, ma_hq, count(*) as [SL DM SXXK trùng] from DDINHMUC
group by ma_sp, ma_npl, ma_dv, ma_hq
having count(*) > 1

