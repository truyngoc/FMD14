
print N'--=====================SXXK - đổ dữ liệu vào eCustoms======================'
-- Nguyen phu lieu
print 'Insert From SNPL Into DSX_SP_NPL'
Insert Into DSX_SP_NPL(
	VT_ID
	,MA_HQ
	,MA_CUC_HQ
	,NAM_DK
	,NAM_TK
	,MA_DV
	,MA_VAT_TU
	,LOAI
	,TEN_VAT_TU
	,MA_HS
	,MA_DVT
	,SO_TN
	,NAM_TN
	,MessageID
	--,Reference
)
Select
	CDDL_VT_ID
	,CDDL_MA_HQ
	,CDDL_MA_CUC_HQ
	,isnull(Nam_TN,2007) as Nam_TN
	,CDDL_NAM_TK
	,MA_DV
	,MA_NPL
	,1 as LOAI
	,isnull(TEN_NPL,' ') as TEN_NPL
	,isnull(MA_HS,' ') as MA_HS
	,isnull(CDDL_MA_DVT,' ') as CDDL_MA_DVT
	,So_TN
	,Nam_TN
	,0 as MessageID
From	$(lnksrv_name).$(sxxk_dbname_src).dbo.SNPL
Where	CDDL_MA_HQ in ('02PJ','02XE','03PA','03PA01','47XE'
)

-- San pham
print 'Insert From SSP Into DSX_SP_NPL'
Insert Into DSX_SP_NPL(
	VT_ID
	,MA_HQ
	,MA_CUC_HQ
	,NAM_DK
	,NAM_TK
	,MA_DV
	,MA_VAT_TU
	,LOAI
	,TEN_VAT_TU
	,MA_HS
	,MA_DVT
	,SO_TN
	,NAM_TN
	,MessageID
	--,Reference
)
Select
	CDDL_VT_ID
	,CDDL_MA_HQ
	,CDDL_MA_CUC_HQ
	,isnull(Nam_TN,2007) as Nam_TN
	,CDDL_NAM_TK
	,MA_DV
	,MA_SP
	,2 as LOAI
	,isnull(TEN_SP,' ') as TEN_SP
	,isnull(MA_HS,' ') as MA_HS
	,isnull(CDDL_MA_DVT,' ') as CDDL_MA_DVT
	,So_TN
	,Nam_TN
	,0 as MessageID

From	$(lnksrv_name).$(sxxk_dbname_src).dbo.SSP
Where	CDDL_MA_HQ in ('02PJ','02XE','03PA','03PA01','47XE'
)

-- Dinh muc
print 'Insert From DDINHMUC Into DSX_DINH_MUC'
Insert Into DSX_DINH_MUC(
	DM_ID
	,MA_HQ
	,MA_CUC_HQ
	,NAM_DK
	,MA_DV
	,VT_ID_SP
	,MA_VAT_TU_SP
	,TEN_VAT_TU_SP
	,MA_DVT_SP
	,MA_HS_SP
	,VT_ID_NPL
	,MA_VAT_TU_NPL
	,TEN_VAT_TU_NPL
	,MA_DVT_NPL
	,MA_HS_NPL
	,DM_SD
	,TL_HH
	,DM_CHUNG
	,GHI_CHU
	,So_TN
	,Nam_TN
	,Kiem_Tra_TT
	,Sua_Sau_Kiem_Tra_TT
	,MessageID
	--,Reference
)
Select
	CDDL_DM_ID
	,CDDL_MA_HQ
	,CDDL_MA_CUC_HQ
	,isnull(Nam_TN, 2007) as NAM_TN
	,MA_DV
	,isnull(CDDL_VT_ID_SP,0) as CDDL_VT_ID_SP
	,isnull(MA_SP,' ') as MA_SP
	,isnull(CDDL_TEN_VAT_TU_SP,' ') as CDDL_TEN_VAT_TU_SP
	,isnull(CDDL_MA_DVT_SP,' ') as CDDL_MA_DVT_SP
	,isnull(CDDL_MA_HS_SP,' ') as CDDL_MA_HS_SP
	,isnull(CDDL_VT_ID_NPL,0) as CDDL_VT_ID_NPL
	,isnull(MA_NPL,' ') as MA_NPL
	,isnull(CDDL_TEN_VAT_TU_NPL,' ') as CDDL_TEN_VAT_TU_NPL
	,isnull(CDDL_MA_DVT_NPL,' ') as CDDL_MA_DVT_NPL
	,isnull(CDDL_MA_HS_NPL,' ') as CDDL_MA_HS_NPL
	,isnull(DM_SD,0) as DM_SD
	,isnull(TL_HH,0) as TL_HH
	,isnull(DM_CHUNG,0) as DM_CHUNG
	,GHI_CHU
	,So_TN
	,Nam_TN
	,ecsKiemTraTT
	,ecsSua_SauKTTT
	,0 as MessageID
From	$(lnksrv_name).$(sxxk_dbname_src).dbo.DDINHMUC
Where	CDDL_MA_HQ in ('02PJ','02XE','03PA','03PA01','47XE'
)

