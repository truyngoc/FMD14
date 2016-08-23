declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = 1
set	@IDChiCuc = 7

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*cast(1000000000 as bigint)
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*cast(1000000000 as bigint)

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
	,LUONG as [TON_DAU]
	,TON
	,LUONG-TON as [LUONG]
	,0 as [LUONG_TON_DC]
	,TON as [LUONG_TON_SAU_DC]
from DSX_NPL_NHAP
where TK_ID >@IDDanhMuc and TK_ID<=@IDDanhMucMax