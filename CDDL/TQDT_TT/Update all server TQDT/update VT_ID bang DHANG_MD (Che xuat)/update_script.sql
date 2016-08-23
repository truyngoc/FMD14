update h
set h.VT_ID = n.VT_ID
From DHANG_MD h join DCX_DM_HH_DUA_VAO_RA n on 
				rtrim(h.MA_HQ_VT_ID)=rtrim(n.MA_HQ) 
				and h.Ma_DV=n.MA_DV 
				and h.Ma_Vat_Tu=n.MA_HANG
				and h.Loai_Hang = n.Loai_Hang
where (h.TK_ID >= 10000000000000 and h.TK_ID < 20000000000000) and h.Ma_LH like '_CX%'