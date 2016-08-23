-- update HD_ID cua bang DTO_KHAI_MD
Update t
set	t.HD_ID = h.HD_ID
From DTO_KHAI_MD t join DGC_HD h 
						on rtrim(t.Ma_HQ) = rtrim(h.Ma_HQ_HD) 
						and rtrim(t.Ma_Don_Vi)=rtrim(h.Don_Vi_GC)
						and rtrim(t.So_Hop_Dong)=rtrim(h.So_HD)
						and t.Ngay_Hop_Dong=h.Ngay_Ky
where (t.TK_ID >= 10000000000000 and t.TK_ID < 20000000000000) and t.Ma_LH like '_GC%'

GO
-- update HD_ID cua bang DHANG_MD
Update h
Set		
		h.HD_ID		= t.HD_ID
From	DHANG_MD h join DTO_KHAI_MD t on 
						t.So_TK = h.So_TK 
						and t.Ma_LH=h.Ma_LH 
						and rtrim(t.Ma_HQ)=rtrim(h.Ma_HQ) 
						and t.Nam_DK=h.Nam_DK
where (h.TK_ID >= 10000000000000 and h.TK_ID < 20000000000000) and h.Ma_LH like '_GC%'

GO
-- update VT_ID cua bang DHANG_MD
Update h
Set		h.VT_ID = n.VT_ID
From	DHANG_MD h join DGC_SP_NPL_TB_HM n on 
						h.HD_ID=n.HD_ID 
						and rtrim(h.Ma_Vat_Tu)=rtrim(n.Ma_Vat_Tu)
						and h.Loai_Hang=n.Loai
						and n.VT_ID >= 10000000000000 and n.VT_ID < 20000000000000
where (h.TK_ID >= 10000000000000 and h.TK_ID < 20000000000000) and h.Ma_LH like '_GC%'

GO