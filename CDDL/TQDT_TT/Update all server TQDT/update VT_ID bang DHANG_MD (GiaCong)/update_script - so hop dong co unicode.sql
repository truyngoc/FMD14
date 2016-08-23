declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = 1
set	@IDChiCuc = 0

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*cast(1000000000 as bigint)
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*cast(1000000000 as bigint)

-- 1.update so hop dong cho nhung thang co chu~ đ
--update DTO_KHAI_MD
--set So_Hop_Dong = dbo.fcnTCVN2Unicode(So_Hop_Dong)
--where 
--(TK_ID >= @IDDanhMuc and TK_ID < @IDDanhMucMax) and Ma_LH like '_GC%'


-- 2. update HD_ID cho bang to khai
 --Update t
 --set	t.HD_ID = h.HD_ID
 --From DTO_KHAI_MD t join DGC_HD h 
	--					 on rtrim(t.Ma_HQ) = rtrim(h.Ma_HQ_HD) 
	--					 and rtrim(t.Ma_Don_Vi)=rtrim(h.Don_Vi_GC)
	--					 and rtrim(t.So_Hop_Dong)=rtrim(h.So_HD)
	--					 and t.Ngay_Hop_Dong=h.Ngay_Ky
 --where (t.TK_ID >= @IDDanhMuc and t.TK_ID < @IDDanhMucMax) and t.Ma_LH like '_GC%'
	

-- 3. update HD_ID cho bang hang
 --Update h
 --Set		
	--	 h.HD_ID		= t.HD_ID	
 --From	DHANG_MD h join DTO_KHAI_MD t on 
	--					 t.So_TK = h.So_TK 
	--					 and t.Ma_LH=h.Ma_LH 
	--					 and rtrim(t.Ma_HQ)=rtrim(h.Ma_HQ) 
	--					 and t.Nam_DK=h.Nam_DK
 --where (t.TK_ID >= @IDDanhMuc and t.TK_ID < @IDDanhMucMax) and t.Ma_LH like '_GC%'
	



-- 4. update VT_ID cua hang
 --Update h
 --Set		h.VT_ID = n.VT_ID
 --From	DHANG_MD h join DGC_SP_NPL_TB_HM n on 
	--					 h.HD_ID=n.HD_ID 
	--					 and rtrim(h.Ma_Vat_Tu)=rtrim(n.Ma_Vat_Tu)
	--					 and h.Loai_Hang=n.Loai
	--					 and n.VT_ID >= 10000000000000 and n.VT_ID < 20000000000000
 --where (h.TK_ID >= @IDDanhMuc and h.TK_ID < @IDDanhMucMax) and h.Ma_LH like '_GC%'
