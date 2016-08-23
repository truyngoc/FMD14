alter table DGC_NPL_TCU check constraint FK_DGC_NPL_TCU_DGC_NPL_TCU
go

alter table DGC_NPL_TCU_D check constraint FK_DGC_NPL_TCU_D_DGC_NPL_TCU
go


-- dua du lieu can join vao database nguon roi update join tren tung server

-- update t
-- set t.VT_ID = h.cddl_vt_id
-- from vDGC_NPL_TCU t
	-- join exDGC_NPL_TCU h on t.Ma_HQ = h.ma_hq and t.TK_ID = h.TK_ID and t.VT_ID = h.vt_id
-- where h.VT_ID <> h.cddl_vt_id

-- update t
-- set t.VT_ID = h.cddl_vt_id
-- from DGC_NPL_TCU_D t
	-- join ECUSTOMS_LINK_SRC.HaiPhong_2104.dbo.exDGC_NPL_TCU h on t.Ma_HQ = h.ma_hq and t.TK_ID = h.TK_ID and t.VT_ID = h.vt_id
-- where h.VT_ID <> h.cddl_vt_id