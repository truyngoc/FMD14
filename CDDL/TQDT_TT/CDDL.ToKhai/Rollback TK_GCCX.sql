declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = 1
set	@IDChiCuc = 0

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*1000000000

delete vDHang_MD where TK_ID >@IDDanhMuc and TK_ID<=@IDDanhMucMax
Delete vDTO_KHAI_MD where TK_ID >@IDDanhMuc and TK_ID<=@IDDanhMucMax

delete vDGC_NPL_TCU_D where TK_ID >@IDDanhMuc and TK_ID<=@IDDanhMucMax
delete vDGC_NPL_TCU where TK_ID >@IDDanhMuc and TK_ID<=@IDDanhMucMax


delete vDCX_HUY_NPL_SP_D where CT_ID >@IDDanhMuc and CT_ID<=@IDDanhMucMax
delete vDCX_HUY_NPL_SP  where  CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax




