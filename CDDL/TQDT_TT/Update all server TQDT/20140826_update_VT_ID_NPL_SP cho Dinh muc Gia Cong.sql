declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = 43
set	@IDChiCuc = 4

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*cast(1000000000 as bigint)
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*cast(1000000000 as bigint)


update d
set
	d.VT_ID_NPL=h.VT_ID
from vDGC_DINH_MUC d
	join vDGC_SP_NPL_TB_HM h on 
		d.HD_ID=h.HD_ID and 
		d.MA_HQ=h.Ma_HQ_HD and 
		d.Ma_Vat_Tu_NPL=h.Ma_Vat_Tu and 
		h.Loai=1 and 
		h.VT_ID >= 14300000000000 and h.VT_ID <= 14399999999999
where
		d.DM_ID >= @IDDanhMuc and d.DM_ID <=@IDDanhMucMax



	
--select d.VT_ID_SP,h.VT_ID from vDGC_DINH_MUC d
--	join vDGC_SP_NPL_TB_HM h on d.HD_ID=h.HD_ID and d.MA_HQ=h.Ma_HQ_HD and d.Ma_Vat_Tu_SP=h.Ma_Vat_Tu and h.Loai=2	
--	and VT_ID >= 10000000000000 and VT_ID < 20000000000000
--where MA_HQ='43NG'
--and d.DM_ID >= @IDDanhMuc and d.DM_ID <@IDDanhMucMax
----and d.VT_ID_SP <> h.VT_ID
--and d.VT_ID_SP=0