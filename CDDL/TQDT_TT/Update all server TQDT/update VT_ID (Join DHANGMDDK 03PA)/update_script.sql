declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = 3
set	@IDChiCuc = 1

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*cast(1000000000 as bigint)
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*cast(1000000000 as bigint)

-- update h
-- set
	-- Ma_Vat_Tu = isnull(CDDL_MA_NPL_SP,' ')
	-- ,VT_ID = isnull(CDDL_VT_ID,0)	
	-- ,Ma_Phu = isnull(CDDL_MA_NPL_SP,' ')
-- from DHANG_MD h 
	-- join ecustoms_link_src.tokhaisxxk.dbo.dhangmdth t
	-- on h.TK_ID = t.CDDL_TK_ID and h.Ma_HQ = rtrim(t.CDDL_MA_HQ) and h.STT_Hang = t.CDDL_STT_Hang
-- where h.TK_ID >@IDDanhMuc and h.TK_ID<=@IDDanhMucMax
	

-- update h
-- set
	-- Ma_Vat_Tu = isnull(CDDL_MA_NPL_SP,' ')
	-- ,VT_ID = isnull(CDDL_VT_ID,0)	
	-- ,Ma_Phu = isnull(CDDL_MA_NPL_SP,' ')
-- from DHANG_MD h 
	-- join ecustoms_link_src.tokhaisxxk.dbo.dhangmddc t
	-- on h.TK_ID = t.CDDL_TK_ID and h.Ma_HQ = rtrim(t.CDDL_MA_HQ) and h.STT_Hang = t.CDDL_STT_Hang
-- where h.TK_ID >@IDDanhMuc and h.TK_ID<=@IDDanhMucMax	


-- dnpl nhap
-- update n
-- set 
	-- DGIA_TT = isnull(CDDL_DGIA_TT,0)
	-- ,TS_XNK = isnull(CDDL_TS_XNK,0)
-- from DSX_NPL_NHAP n
	-- join ecustoms_link_src.tokhaisxxk.dbo.DNPLNHAP t
	-- on n.SO_TK = t.SOTK and n.MA_LH = t.MA_LH and n.NAM_DK = t.NAMDK and n.MA_HQ = rtrim(t.CDDL_MA_HQ) and n.MA_NPL= t.MA_NPL
-- where n.TK_ID >@IDDanhMuc and n.TK_ID<=@IDDanhMucMax



-- update n
-- set 
	-- DGIA_TT = isnull(CDDL_DGIA_TT,0)
	-- ,TS_XNK = isnull(CDDL_TS_XNK,0)
-- from DSX_NPL_NHAP_TL n
	-- join ecustoms_link_src.tokhaisxxk.dbo.DNPLNHAP t
	-- on n.SO_TK = t.SOTK and n.MA_LH = t.MA_LH and n.NAM_DK = t.NAMDK and n.MA_HQ = rtrim(t.CDDL_MA_HQ) and n.MA_NPL= t.MA_NPL
-- where n.TK_ID >@IDDanhMuc and n.TK_ID<=@IDDanhMucMax
