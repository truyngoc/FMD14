declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = {ID Cục: tra bảng}
set	@IDChiCuc = {ID chi cục: tra bảng}

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*cast(1000000000 as bigint)
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*cast(1000000000 as bigint)

Delete vDGC_LOAI_SP  where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax
Delete vDGC_DINH_MUC  where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax
Delete vDGC_SP_NPL_TB_HM  where VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
Delete vDGC_HD where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax

delete vDCX_CT_TOKHAI_HANG where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax
delete vDCX_CT_TOKHAI where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax
delete vDCX_DINH_MUC where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax
delete vDCX_DM_HH_DUA_VAO_RA where VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax

