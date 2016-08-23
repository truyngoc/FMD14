
--phải sửa tên DB nguồn ở dưới
print N'--============Tạo cơ sở dữ liệu tờ khai GC CX========================='
CREATE DATABASE [TOKHAIGCCX] ON  PRIMARY 
( NAME = N'TOKHAIGCCX', FILENAME = N'D:\SQLDatas\TOKHAIGCCX.mdf' , SIZE = 2048KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TOKHAIGCCX_log', FILENAME = N'D:\SQLDatas\TOKHAIGCCX_log.ldf' , SIZE = 1024KB , FILEGROWTH = 10%)
GO


use [TOKHAIGCCX]
GO
declare @DBName varchar(100), @Ma_HQs varchar(255)

phải sửa tên DB nguồn ở dưới
set	@DBName='SLXNK_CC.dbo.'

nhap ma hai quan chuyen doi nhu ben duoi ''T01E''
set @Ma_HQs = '''N47B'''

print N'--============Kết xuất dữ liệu======================'
-- to khai gia cong thuoc hop dong chua thanh khoan
-- to khai che xuat
exec('Select t.* into DToKhaiMD From ' + @DBName + 'DToKhaiMD t join '+ @DBName +'DHDGC h on t.So_HD=h.So_HD and t.Ma_HQ=h.Ma_HQHD and t.Ma_DV=h.DVGC and t.Ngay_HD=h.Ngay_Ky Where ((Ma_LH like ''_GC%'' and h.ThanhKhoan<>1) or (Ma_LH like ''_CX%''))' + ' and t.Ma_HQ in (' + @Ma_HQs + ')')

ALTER TABLE DToKhaiMD ADD CONSTRAINT
	PK_DToKhaiMD PRIMARY KEY CLUSTERED 
	(
	SoTK,
	Ma_LH,
	Ma_HQ,
	NamDK
	)

exec('select h.* into DHangMD from '+ @DBName +'DHangMD h join DToKhaiMD t on h.SoTK = t.SoTK and h.Ma_LH = t.Ma_LH and h.Ma_HQ = t.Ma_HQ and h.NamDK = t.NamDK')

ALTER TABLE DHangMD ADD CONSTRAINT
	PK_DHangMD PRIMARY KEY CLUSTERED 
	(
	SoTK,
	Ma_LH,
	Ma_HQ,
	NamDK,
	STTHang
	)


exec('select e.* into ecsToKhaiMD from '+ @DBName +'ecsToKhaiMD e join DToKhaiMD t on e.SoTK = t.SoTK and e.Ma_LH=t.Ma_LH and e.Ma_HQ=t.Ma_HQ and e.NamDK=t.NamDK')

ALTER TABLE ecsToKhaiMD ADD CONSTRAINT
	PK_ecsToKhaiMD PRIMARY KEY CLUSTERED 
	(
	SoTK,
	Ma_LH,
	Ma_HQ,
	NamDK
	)			
	
exec('select e.* into ecsNPLTCU from '+ @DBName +'ecsNPLTCU e join DToKhaiMD t on e.SoTK = t.SoTK and e.Ma_LH=t.Ma_LH and e.Ma_HQ=t.Ma_HQ and e.NamDK=t.NamDK where e.Ma_HQ in (' + @Ma_HQs + ')')	
ALTER TABLE ecsNPLTCU ADD CONSTRAINT
	PK_ecsNPLTCU PRIMARY KEY CLUSTERED 
	(
	SoTK,
	Ma_LH,
	Ma_HQ,
	NamDK,
	NPLP_Code
	)	
	
exec('select n.* into ecsNPLTCU_CT from '+ @DBName +'ecsNPLTCU_CT n join ecsNPLTCU t on n.SoTK = t.SoTK and n.Ma_LH = t.Ma_LH and n.Ma_HQ = t.Ma_HQ and n.NamDK = t.NamDK and n.NPLP_Code = t.NPLP_Code where n.Ma_HQ in (' + @Ma_HQs + ')')
ALTER TABLE ecsNPLTCU_CT ADD CONSTRAINT
	PK_ecsNPLTCU_CT PRIMARY KEY CLUSTERED 
	(
	SoTK,
	Ma_LH,
	Ma_HQ,
	NamDK,
	NPLP_Code,
	So_CT
	)	

exec('select * into ecsCX_HUY_NPLSP_D from '+ @DBName +'ecsCX_HUY_NPLSP_D where Ma_HQ in (' + @Ma_HQs + ')')		

ALTER TABLE ecsCX_HUY_NPLSP_D ADD CONSTRAINT
	PK_ecsCX_HUY_NPLSP_D PRIMARY KEY CLUSTERED 
	(
		SO_TN,
		MA_HQTN,
		NAM_TN,
		MA_HANG
	)