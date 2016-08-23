
--phải sửa tên DB nguồn ở dưới
print N'--============Tạo cơ sở dữ liệu danh mục SXXK========================='
print convert(varchar(30),getdate(),114) + N' - 0. Create db [ToKhaiSXXK]'
CREATE DATABASE [ToKhaiSXXK] ON  PRIMARY 
( NAME = N'ToKhaiSXXK', FILENAME = N'D:\SQLDatas\ToKhaiSXXK.mdf' , SIZE = 4096KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ToKhaiSXXK_log', FILENAME = N'D:\SQLDatas\ToKhaiSXXK_log.ldf' , SIZE = 2048KB , FILEGROWTH = 10%)
GO


use [ToKhaiSXXK]
GO
declare @DBNameSXXK varchar(100)
--phải sửa tên DB SXXK nguồn ở dưới
set	@DBNameSXXK='SXXK_DTGC.dbo.'

declare @DBNameSLXNK varchar(100)
--phải sửa tên DB SLXNK nguồn ở dưới
set	@DBNameSLXNK='SLXNK_DTGC.dbo.'

/*declare @MaHQs	varchar(1000)
phải nhập mã HQ kết xuất dữ liệu ở dưới
--vd: @MaHQs = '''T01E'',''T01E01'''
set @MaHQs = '''P01L'''
*/


print N'--============Kết xuất dữ liệu======================'
--to khai SXXK
print convert(varchar(30),getdate(),114) + N' - 1. Start DToKhaiMD'

exec('Select * into DToKhaiMD From ' + @DBNameSXXK + 'DToKhaiMD Where Thanh_Ly<>''H''')-- and Ma_HQ in (' + @MaHQs + ')')


ALTER TABLE DToKhaiMD ADD CONSTRAINT
	PK_DToKhaiMD PRIMARY KEY CLUSTERED 
	(
	SoTK,
	Ma_LH,
	Ma_HQ,
	NamDK
	)

print convert(varchar(30),getdate(),114) + N' - 2. Start ecsDToKhaiMD'

--thong tin ecsDToKhaiMD
exec('Select e.* into ecsToKhaiMD From ' + @DBNameSLXNK + 'ecsToKhaiMD e join DToKhaiMD t on e.SoTK=t.SoTK and e.NamDK=t.NamDK and e.Ma_HQ=t.Ma_HQ and e.Ma_LH=t.Ma_LH')-- and e.Ma_HQ in (' + @MaHQs + ')')

ALTER TABLE ecsToKhaiMD ADD CONSTRAINT
	PK_ecsToKhaiMD PRIMARY KEY CLUSTERED 
	(
	Ma_HQ,
	Ma_LH,
	NamDK,
	SoTK
	)

print convert(varchar(30),getdate(),114) + N' - 3. Start DHangMDTH'
--hàng TH
exec('select h.* into DHangMDTH from '+ @DBNameSXXK +'DHangMDTH h join ' + @DBNameSXXK + 'DToKhaiMD t on h.SoTK = t.SoTK and h.Ma_LH = t.Ma_LH and h.Ma_HQ = t.Ma_HQ and h.NamDK = t.NamDK Where t.Thanh_Ly<>''H'' and (h.Ma_LH like ''NKD%'' or h.Ma_LH like ''X%'')')-- and h.Ma_HQ in (' + @MaHQs + ')' )

ALTER TABLE DHangMDTH ADD CONSTRAINT
	PK_DHangMDTH PRIMARY KEY CLUSTERED 
	(
	SoTK,
	Ma_LH,
	Ma_HQ,
	NamDK,
	MA_PHU
	)

print convert(varchar(30),getdate(),114) + N' - 4. Start DHangMDDC'
--Hàng DC
exec('WITH cte AS(SELECT *,ROW_NUMBER() OVER (PARTITION BY sotk,ma_lh,ma_hq,namdk,ma_phu ORDER BY lan_dc DESC) AS rn 
FROM '+ @DBNameSXXK +'DHANGMDDC)
SELECT h.* into DHangMDDC
FROM cte h join ' + @DBNameSXXK + 'DToKhaiMD t on h.SoTK = t.SoTK and h.Ma_LH = t.Ma_LH and h.Ma_HQ = t.Ma_HQ and h.NamDK = t.NamDK and h.rn = 1
Where t.Thanh_Ly<>''H'' and h.Ma_LH like ''NSX%''')

/*
exec('select h.* into DHangMDDC from '+ @DBNameSXXK +'DHangMDDC h join ' + @DBNameSXXK + 'DToKhaiMD t on h.SoTK = t.SoTK and h.Ma_LH = t.Ma_LH and h.Ma_HQ = t.Ma_HQ and h.NamDK = t.NamDK Where t.Thanh_Ly<>''H'' and h.Ma_HQ in (' + @MaHQs + ') and h.Ma_LH like ''NSX%''')
*/

ALTER TABLE DHangMDDC ADD CONSTRAINT
	PK_DHangMDDC PRIMARY KEY CLUSTERED 
	(
	SoTK,
	Ma_LH,
	Ma_HQ,
	NamDK,
	MA_PHU,
	LAN_DC
	)

print convert(varchar(30),getdate(),114) + N' - 5. Start DHangMDDC_CT'
--Hàng DC CT
exec('WITH cte AS(SELECT *,ROW_NUMBER() OVER (PARTITION BY sotk,ma_lh,ma_hq,namdk,ma_phu ORDER BY lan_dc DESC,lan_dc_ct desc) AS rn 
	FROM '+ @DBNameSXXK +'DHANGMDDC_CT)
SELECT h.* into DHangMDDC_CT
FROM cte h join ' + @DBNameSXXK + 'DToKhaiMD t on h.SoTK = t.SoTK and h.Ma_LH = t.Ma_LH and h.Ma_HQ = t.Ma_HQ and h.NamDK = t.NamDK and h.rn = 1
Where t.Thanh_Ly<>''H'' and h.Ma_LH like ''NSX%''')
/*
exec('select h.* into DHangMDDC_CT from '+ @DBNameSXXK +'DHangMDDC_CT h join ' + @DBNameSXXK + 'DToKhaiMD t on h.SoTK = t.SoTK and h.Ma_LH = t.Ma_LH and h.Ma_HQ = t.Ma_HQ and h.NamDK = t.NamDK Where t.Thanh_Ly<>''H'' and h.Ma_HQ in (' + @MaHQs + ') and h.Ma_LH like ''NSX%''')
*/

ALTER TABLE DHangMDDC_CT ADD CONSTRAINT
	PK_DHangMDDC_CT PRIMARY KEY CLUSTERED 
	(
	SoTK,
	Ma_LH,
	Ma_HQ,
	NamDK,
	MA_PHU,
	LAN_DC,
	LAN_DC_CT
	)

print convert(varchar(30),getdate(),114) + N' - 6. Start DNPLNHAP'
--NPL tồn
exec('select h.* into DNPLNHAP from '+ @DBNameSXXK +'DNPLNHAP h join DToKhaiMD t on h.SoTK=t.SoTK and h.NamDK=t.NamDK and h.Ma_HQ=t.Ma_HQ and h.Ma_LH=t.Ma_LH Where h.TON>0')-- and Ma_HQ in (' + @MaHQs + ')')

ALTER TABLE DNPLNHAP ADD CONSTRAINT
	PK_DNPLNHAP PRIMARY KEY CLUSTERED 
	(
	SoTK,
	Ma_LH,
	NamDK,
	Ma_HQ,
	Ma_NPL
	)
	
print convert(varchar(30),getdate(),114) + N' - 7. END'
