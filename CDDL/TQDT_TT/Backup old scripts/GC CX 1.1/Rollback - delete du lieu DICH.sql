use [eCustoms_His1]
GO
declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = {ID Cục: tra bảng}
set	@IDChiCuc = {ID chi cục: tra bảng}

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*1000000000

Delete DGC_LOAI_SP  where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax
Delete DGC_DINH_MUC  where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax
Delete DGC_SP_NPL_TB_HM  where VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
Delete DGC_HD where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax

delete DCX_CT_TOKHAI_HANG where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax
delete DCX_CT_TOKHAI where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax
delete DCX_DINH_MUC where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax
delete DCX_DM_HH_DUA_VAO_RA where VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax

