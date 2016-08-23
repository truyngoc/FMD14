print N'--============ Kết xuất dữ liệu danh mục từ ECUSTOMS_ONLINE ======================'

-- declare @MaHQs	varchar(1000)
-- phải nhập mã HQ kết xuất dữ liệu ở dưới
-- --vd: @MaHQs = '''01TE'',''01E1'''
-- set @MaHQs = '''01PL'''
-- --set	@MaHQs='$(MaHQs)'

declare @ma_hq_tk nvarchar(max)
-- danh sach ma hq to khai
select @ma_hq_tk = coalesce(@ma_hq_tk + ',' 
				+ '''' + rtrim(SUBSTRING(ma_hq,2,2) + SUBSTRING(ma_hq,1,1) + SUBSTRING(ma_hq,4,10)) 
				+ '''','''' + rtrim(SUBSTRING(ma_hq,2,2) + SUBSTRING(ma_hq,1,1) + SUBSTRING(ma_hq,4,10))+ '''')
from DTOKHAIMD
group by SUBSTRING(ma_hq,2,2) + SUBSTRING(ma_hq,1,1) + SUBSTRING(ma_hq,4,10)


-- chuyen du lieu tu Ecustoms_Online vao SLXNK_CC
declare @DBName varchar(100)
-- ECUSTOMS_01	: linkserver to ECUSTOMS_ONLINE
-- eCustoms		: database name	eCustoms=ECUSTOMS_ONLINE
set	@DBName='$(lnksrv_name).$(db_online).dbo.'

		
print 'bat dau export tu online nao'		
exec('select * into DSX_SP_NPL from ' + @DBName + 'vDSX_SP_NPL Where MA_HQ in (' + @ma_hq_tk + ')')


print N'--============ add PK ========================'
ALTER TABLE DSX_SP_NPL ADD CONSTRAINT
	PK_DSX_SP_NPL PRIMARY KEY CLUSTERED 
	(
	VT_ID,
	Ma_HQ
	)
	
