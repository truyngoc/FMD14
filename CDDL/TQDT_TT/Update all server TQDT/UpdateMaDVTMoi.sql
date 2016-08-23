update DCX_CT_TOKHAI_HANG
set	
	MA_DVT_DK	= dbo.Doi_Ma_DVT(MA_DVT_DK)
	,MA_DVT_KB	= dbo.Doi_Ma_DVT(MA_DVT_KB)

update DCX_DINH_MUC
set	
	MA_DVT_SP	= dbo.Doi_Ma_DVT(MA_DVT_SP)
	,MA_DVT_NPL	= dbo.Doi_Ma_DVT(MA_DVT_NPL)
	
update DCX_DM_HH_DUA_VAO_RA
set	
	MA_DVT	= dbo.Doi_Ma_DVT(MA_DVT)

update DGC_DINH_MUC
set	
	Ma_DVT_SP	= dbo.Doi_Ma_DVT(Ma_DVT_SP)
	,Ma_DVT_NPL	= dbo.Doi_Ma_DVT(Ma_DVT_NPL)

update DGC_SP_NPL_TB_HM
set	
	Ma_DVT	= dbo.Doi_Ma_DVT(Ma_DVT)

update DSX_DINH_MUC
set	
	MA_DVT_SP	= dbo.Doi_Ma_DVT(MA_DVT_SP)
	,MA_DVT_NPL	= dbo.Doi_Ma_DVT(MA_DVT_NPL)

update DSX_SP_NPL
set	
	MA_DVT	= dbo.Doi_Ma_DVT(MA_DVT)
	
	