declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = {ID Cục: tra bảng}
set	@IDChiCuc = 0

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*1000000000

Delete vDSX_DINH_MUC  where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax
Delete vDSX_SP_NPL  where VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax

