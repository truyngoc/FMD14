	select so_tk,ma_lh,ma_hq,nam_dk,Ma_Vat_Tu into CDDL_TMP_CNL--,COUNT(*)--,DGIA_TT,TS_XNK,count(*)
	from
		(select distinct h.so_tk,h.ma_lh,h.ma_hq,h.nam_dk,h.Ma_Vat_Tu,h.DGIA_TT,h.TS_XNK--,count(*) as sl--sum(luong) as luong-- into HangDCTmp
			from DHang_MD h join DSX_NPL_NHAP nl on h.SO_TK=nl.SO_TK and h.MA_LH=nl.MA_LH and h.MA_HQ=nl.MA_HQ and h.Ma_Vat_Tu=nl.MA_NPL
			where h.TK_ID > 10000000000000 and h.TK_ID < 20000000000000
		) x
			group by  so_tk,ma_lh,ma_hq,nam_dk,Ma_Vat_Tu--,DGIA_TT,TS_XNK
			having COUNT(*)>1
GO
		select so_tk,ma_lh,ma_hq,nam_dk,Ma_Vat_Tu,DGIA_TT,TS_XNK,sum(luong) as luong into CDDL_TMP_CH
		from (
			select distinct h.so_tk,h.ma_lh,h.ma_hq,h.nam_dk,h.Ma_Vat_Tu,h.DGIA_TT,h.TS_XNK,luong,h.STT_HANG
			from DHang_MD h join CDDL_TMP_CNL cnl on h.SO_TK=cnl.SO_TK and h.MA_LH=cnl.MA_LH and h.MA_HQ=cnl.MA_HQ and h.Ma_Vat_Tu=cnl.Ma_Vat_Tu
			where TK_ID > 10000000000000 and TK_ID < 20000000000000
			) y
		group by  so_tk,ma_lh,ma_hq,nam_dk,Ma_Vat_Tu,DGIA_TT,TS_XNK
GO
select 
	nl.HS_TL_ID
	,nl.NAM_DK as NAM_TL
	,rtrim(nl.MA_HQ) as Ma_HQ
	,nl.MA_CUC_HQ
	,nl.TK_ID
	,nl.SO_TK
	,nl.SO_TK_VNACCS
	,nl.MA_LH
	,nl.NAM_DK
	,isnull(nl.VT_ID,0)as VT_ID
	,nl.MA_NPL
	,coalesce(x.DGIA_TT,nl.DGIA_TT,0) as DGIA_TT
	,coalesce(x.TS_XNK,nl.TS_XNK,0) as TS_XNK
	,nl.MA_DV
	,x.LUONG as TON_DAU --nl.LUONG
	,x.luong-case when x.runningluong-nl.ton>x.luong then x.luong 
				when x.runningluong-nl.ton<0 then 0
			else x.runningluong-nl.ton end 
		as TON
	,case when x.runningluong-nl.ton>x.luong then x.luong 
		when x.runningluong-nl.ton<0 then 0
	else x.runningluong-nl.ton end 
		as LUONG
	,0 as LUONG_TON_DC
	,x.luong-case when x.runningluong-nl.ton>x.luong then x.luong 
				when x.runningluong-nl.ton<0 then 0
			else x.runningluong-nl.ton end 
		as LUONG_TON_SAU_DC
into CDDL_TMP_DSX_NPL_NHAP_TL
from
	(
--đoạn này để tính ra cột RunningLuong với ý nghĩa: nếu không sử dụng dòng này để thanh lý thì đây là số lượng NPL tồn
--RunningLuong = cộng dồn lượng của NPL và các NPL khác cùng mã, đơn giá lớn hơn
	select a.so_tk,a.ma_lh,a.ma_hq,a.nam_dk,a.Ma_Vat_Tu, a.DGIA_TT,a.TS_XNK,a.luong
		,SUM(b.luong) RunningLuong
	from CDDL_TMP_CH a join CDDL_TMP_CH b on a.SO_TK=b.SO_TK and a.MA_LH=b.MA_LH and a.MA_HQ=b.MA_HQ and a.Ma_Vat_Tu=b.Ma_Vat_Tu
				and a.DGIA_TT<=b.DGIA_TT
	group by  a.so_tk,a.ma_lh,a.ma_hq,a.nam_dk,a.Ma_Vat_Tu,a.DGIA_TT,a.TS_XNK,a.luong
	) x
	join DSX_NPL_NHAP nl on x.SO_TK=nl.SO_TK and x.MA_LH=nl.MA_LH and x.MA_HQ=nl.MA_HQ and x.Ma_Vat_Tu=nl.MA_NPL
	where HS_TL_ID > 10000000000000 and HS_TL_ID < 20000000000000

GO
update n 
set	LUONG = tl.LUONG
	,TON = tl.TON
	,TON_DAU = tl.TON_DAU
--select tl.vt_id,n.DGIA_TT, tl.dgia_tt, n.LUONG,tl.luong,n.TON,tl.TON,n.TON_DAU,tl.TON_DAU, * 
from DSX_NPL_NHAP_tl n join cddl_tmp_dsx_npl_nhap_tl tl on n.HS_TL_ID = tl.hs_tl_id
													and n.MA_HQ = tl.ma_hq
													and n.TK_ID = tl.tk_id
													and n.VT_ID = tl.vt_id
													and n.DGIA_TT = tl.dgia_tt
GO
Insert into DSX_NPL_NHAP_TL (
	HS_TL_ID
	,NAM_TL
	,MA_HQ
	,Ma_Cuc_HQ
	,TK_ID
	,SO_TK
	,SO_TK_VNACCS
	,MA_LH
	,NAM_DK
	,VT_ID
	,MA_NPL
	,DGIA_TT
	,TS_XNK
	,MA_DV
	,TON_DAU
	,TON
	,LUONG
	,LUONG_TON_DC
	,LUONG_TON_SAU_DC
)
select 
	tl.HS_TL_ID
	,tl.NAM_TL
	,tl.MA_HQ
	,tl.Ma_Cuc_HQ
	,tl.TK_ID
	,tl.SO_TK
	,tl.SO_TK_VNACCS
	,tl.MA_LH
	,tl.NAM_DK
	,tl.VT_ID
	,tl.MA_NPL
	,tl.DGIA_TT
	,tl.TS_XNK
	,tl.MA_DV
	,tl.TON_DAU
	,tl.TON
	,tl.LUONG
	,tl.LUONG_TON_DC
	,tl.LUONG_TON_SAU_DC
from DSX_NPL_NHAP_tl n right join cddl_tmp_dsx_npl_nhap_tl tl on n.HS_TL_ID = tl.hs_tl_id
													and n.MA_HQ = tl.ma_hq
													and n.TK_ID = tl.tk_id
													and n.VT_ID = tl.vt_id
													and n.DGIA_TT = tl.dgia_tt
where n.HS_TL_ID is null
GO


















-- chay tren ToKhaiSXXK
-- select so_tk,ma_lh,ma_hq,nam_dk,Ma_Vat_Tu,DGIA_TT,min(isnull(TS_XNK,0)) as TS_XNK,sum(luong) as luong into CDDL_TMP_CH
-- from (
	-- select distinct 
		-- h.sotk as so_tk
		-- ,h.ma_lh
		-- ,h.ma_hq
		-- ,h.NAMDK as nam_dk
		-- ,h.cddl_ma_npl_sp as Ma_Vat_Tu
		-- ,h.DGIA_TT
		-- ,h.TS_XNK
		-- ,h.luong
		-- ,h.CDDL_STT_Hang as STT_HANG
	-- from DHangMDDC h join DNPLNHAP cnl 
		-- on h.SOTK=cnl.SOTK 
			-- and rtrim(h.MA_LH)=rtrim(cnl.MA_LH) 
			-- and rtrim(h.MA_HQ)=rtrim(cnl.MA_HQ) 
			-- and h.namdk=cnl.namdk 
			-- and h.cddl_ma_npl_sp=cnl.Ma_NPL	
	-- ) y
-- group by  so_tk,ma_lh,ma_hq,nam_dk,Ma_Vat_Tu,DGIA_TT

-- go

-- insert into CDDL_TMP_CH
	-- (so_tk
	-- ,ma_lh
	-- ,ma_hq
	-- ,nam_dk
	-- ,Ma_Vat_Tu
	-- ,DGIA_TT
	-- ,TS_XNK
	-- ,luong)
-- select so_tk,ma_lh,ma_hq,nam_dk,Ma_Vat_Tu,DGIA_TT,min(isnull(TS_XNK,0)) as TS_XNK,sum(luong) as luong
-- from (
	-- select distinct 
		-- h.sotk as so_tk
		-- ,h.ma_lh
		-- ,h.ma_hq
		-- ,h.NAMDK as nam_dk
		-- ,h.cddl_ma_npl_sp as Ma_Vat_Tu
		-- ,h.DGIA_TT,h.TS_XNK
		-- ,h.luong
		-- ,h.CDDL_STT_Hang as STT_HANG
	-- from DHangMDTH h join DNPLNHAP cnl 
		-- on h.SOTK=cnl.SOTK 
			-- and rtrim(h.MA_LH)=rtrim(cnl.MA_LH) 
			-- and rtrim(h.MA_HQ)=rtrim(cnl.MA_HQ) 
			-- and h.namdk=cnl.namdk 
			-- and h.cddl_ma_npl_sp=cnl.Ma_NPL	
	-- ) y
-- group by  so_tk,ma_lh,ma_hq,nam_dk,Ma_Vat_Tu,DGIA_TT

-- go

-- select 
	-- nl.CDDL_HS_TL_ID as HS_TL_ID
	-- ,nl.NAMDK as NAM_TL
	-- ,rtrim(nl.CDDL_MA_HQ) as Ma_HQ
	-- ,nl.CDDL_MA_CUC_HQ as MA_CUC_HQ
	-- ,nl.CDDL_TK_ID as TK_ID
	-- ,nl.SOTK
	-- ,nl.CDDL_SO_TK_VNACCS as SO_TK_VNACCS
	-- ,nl.MA_LH
	-- ,nl.NAMDK as NAM_DK
	-- ,isnull(nl.CDDL_VT_ID,0)as VT_ID
	-- ,nl.MA_NPL
	-- ,coalesce(x.DGIA_TT,nl.CDDL_DGIA_TT,0) as DGIA_TT
	-- ,coalesce(x.TS_XNK,nl.CDDL_TS_XNK,0) as TS_XNK
	-- ,nl.MA_DV
	-- ,x.LUONG as TON_DAU --nl.LUONG
	-- ,x.luong-case when x.runningluong-nl.ton>x.luong then x.luong 
				-- when x.runningluong-nl.ton<0 then 0
			-- else x.runningluong-nl.ton end 
		-- as TON
	-- ,case when x.runningluong-nl.ton>x.luong then x.luong 
		-- when x.runningluong-nl.ton<0 then 0
	-- else x.runningluong-nl.ton end 
		-- as LUONG
	-- ,0 as LUONG_TON_DC
	-- ,x.luong-case when x.runningluong-nl.ton>x.luong then x.luong 
				-- when x.runningluong-nl.ton<0 then 0
			-- else x.runningluong-nl.ton end 
		-- as LUONG_TON_SAU_DC
-- into CDDL_TMP_DSX_NPL_NHAP_TL
-- from
	-- (
-- --đoạn này để tính ra cột RunningLuong với ý nghĩa: nếu không sử dụng dòng này để thanh lý thì đây là số lượng NPL tồn
-- --RunningLuong = cộng dồn lượng của NPL và các NPL khác cùng mã, đơn giá lớn hơn
	-- select a.so_tk,a.ma_lh,a.ma_hq,a.nam_dk,a.Ma_Vat_Tu, a.DGIA_TT,a.TS_XNK,a.luong
		-- ,SUM(b.luong) RunningLuong
	-- from CDDL_TMP_CH a join CDDL_TMP_CH b on a.SO_TK=b.SO_TK and a.MA_LH=b.MA_LH and a.MA_HQ=b.MA_HQ and a.NAM_DK=b.NAM_DK and a.Ma_Vat_Tu=b.Ma_Vat_Tu
				-- and a.DGIA_TT<=b.DGIA_TT
	-- group by  a.so_tk,a.ma_lh,a.ma_hq,a.nam_dk,a.Ma_Vat_Tu,a.DGIA_TT,a.TS_XNK,a.luong
	-- ) x
	-- join DNPLNHAP nl on x.SO_TK=nl.SOTK and x.MA_LH=nl.MA_LH and x.MA_HQ=nl.MA_HQ and x.NAM_DK=nl.NAMDK and x.Ma_Vat_Tu=nl.MA_NPL

-- go	