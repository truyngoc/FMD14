print N'--============ Kết xuất dữ liệu danh mục từ ECUSTOMS_ONLINE ======================'
-- declare @IDDanhMuc bigint,@IDDanhMucMax bigint
-- set	@IDDanhMuc =10000000000000 + $(IDCucHQ)*100000000000 + $(IDChiCuc)*1000000000
-- set	@IDDanhMucMax =10000000000000 + $(IDCucHQ)*100000000000 + ($(IDChiCuc)+1)*1000000000


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

exec('select * into DGC_HD from ' + @DBName + 'vDGC_HD
		where Ma_HQ_HD in ' + '(' + @ma_hq_tk + ')')

exec('select * into DGC_SP_NPL_TB_HM from ' + @DBName + 'vDGC_SP_NPL_TB_HM
		where Ma_HQ_HD in ' + '(' + @ma_hq_tk + ')')
		
exec('select VT_ID
      ,MA_HQ
      ,MA_CUC_HQ
      ,NAM_DK
      ,NAM_TK
      ,MA_DV
      ,MA_HANG
      ,TEN_HANG
      ,MA_HS
      ,MA_DVT
      ,MUC_DICH_SU_DUNG
      ,LOAI_HANG
      ,GHI_CHU_KHAC
      ,SO_TN
      ,NAM_TN
      ,IS_SIGN
      ,MESSAGEID
      ,IS_DUA_VAO into DCX_DM_HH_DUA_VAO_RA from $(lnksrv_name).$(db_online).dbo.vDCX_DM_HH_DUA_VAO_RA where MA_HQ in ' + '(' + @ma_hq_tk + ')')
	  
-- exec('select * into DGC_HD from $(lnksrv_name).$(db_online).dbo.vDGC_HD Where HD_ID>' + @IDDanhMuc +' and HD_ID< ' +@IDDanhMucMax)

-- exec('select * into DGC_SP_NPL_TB_HM from $(lnksrv_name).$(db_online).dbo.vDGC_SP_NPL_TB_HM where VT_ID>' + @IDDanhMuc +' and VT_ID< ' +@IDDanhMucMax)

-- exec('select VT_ID
      -- ,MA_HQ
      -- ,MA_CUC_HQ
      -- ,NAM_DK
      -- ,NAM_TK
      -- ,MA_DV
      -- ,MA_HANG
      -- ,TEN_HANG
      -- ,MA_HS
      -- ,MA_DVT
      -- ,MUC_DICH_SU_DUNG
      -- ,LOAI_HANG
      -- ,GHI_CHU_KHAC
      -- ,SO_TN
      -- ,NAM_TN
      -- ,IS_SIGN
      -- ,MESSAGEID
      -- ,IS_DUA_VAO into DCX_DM_HH_DUA_VAO_RA from $(lnksrv_name).$(db_online).dbo.vDCX_DM_HH_DUA_VAO_RA where VT_ID>' + @IDDanhMuc +' and VT_ID< ' +@IDDanhMucMax)
		

print N'--============ add PK ========================'
ALTER TABLE DGC_HD ADD CONSTRAINT
	PK_DGC_HD PRIMARY KEY CLUSTERED 
	(
	HD_ID,
	Ma_HQ_HD
	)
	
ALTER TABLE DGC_SP_NPL_TB_HM ADD CONSTRAINT
	PK_DGC_SP_NPL_TB_HM PRIMARY KEY CLUSTERED 
	(
	VT_ID,
	Ma_HQ_HD
	)

ALTER TABLE DCX_DM_HH_DUA_VAO_RA ADD CONSTRAINT
	PK_DCX_DM_HH_DUA_VAO_RA PRIMARY KEY CLUSTERED 
	(
	VT_ID,
	Ma_HQ
	)	