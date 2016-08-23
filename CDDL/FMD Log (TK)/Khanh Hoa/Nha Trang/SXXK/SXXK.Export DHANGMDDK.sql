--phải sửa tên DB nguồn ở dưới
CREATE DATABASE [SXXK_DHANGMDDK] ON  PRIMARY 
( NAME = N'SXXK_DHANGMDDK', FILENAME = N'D:\SQLDatas\SXXK_DHANGMDDK.mdf' , SIZE = 4096KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SXXK_DHANGMDDK_log', FILENAME = N'D:\SQLDatas\SXXK_DHANGMDDK_log.ldf' , SIZE = 2048KB , FILEGROWTH = 10%)
GO




use [SXXK_DHANGMDDK]
GO

declare @DBNameSXXK varchar(100)
--phải sửa tên DB SXXK nguồn ở dưới
set	@DBNameSXXK='SXXK.dbo.'

exec('select h.* into DHANGMDDK from '+ @DBNameSXXK +'DHANGMDDK h join ' + @DBNameSXXK + 'DToKhaiMD t on h.SoTK = t.SoTK and h.Ma_LH = t.Ma_LH and h.Ma_HQ = t.Ma_HQ and h.NamDK = t.NamDK')


ALTER TABLE DHANGMDDK ADD CONSTRAINT
	PK_DHANGMDDK PRIMARY KEY CLUSTERED 
	(
	SoTK,
	Ma_LH,
	Ma_HQ,
	NamDK,
	MA_PHU
	)