-- declare @IDCucHQ bigint
-- declare @IDChiCuc bigint
-- set	@IDCucHQ = {ID Cục: tra bảng}
-- set	@IDChiCuc = 0		--{ID chi cục: tra bảng}

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + $(IDCucHQ)*100000000000 + $(IDChiCuc)*1000000000
set	@IDDanhMucMax =10000000000000 + $(IDCucHQ)*100000000000 + ($(IDChiCuc)+1)*1000000000

declare @slnpl varchar(20), @slsp varchar(20), @sldm varchar(20)
declare @sldmSAInplsp varchar(20)
declare @NPL_ID varchar(20), @SP_ID varchar(20), @DM_ID varchar(20)

select @slnpl	= COUNT(*)
		,@NPL_ID = MAX(VT_ID) 
from vDSX_SP_NPL
where (VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax) and loai = 1

select @slsp	= COUNT(*) 
		,@SP_ID = MAX(VT_ID)
from vDSX_SP_NPL
where  (VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax) and loai = 2

select @sldm	= COUNT(*) 
		, @DM_ID = MAX(DM_ID)
from vDSX_DINH_MUC 
where  (DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax)

print N'===============Số liệu TRƯỚC chuyển đổi===================='
print N'===============SXXK===================================='
print N'SL NPL SXXK          : ' + @slnpl
print N'SL sản phẩm SXXK     : ' + @slsp
print N'SL định mức SXXK     : ' + @sldm
Print '================MAX ID======================================='
print N'MAX ID NPL SXXK           : ' + isnull(@NPL_ID,'0')
print N'MAX ID SP SXXK            : ' + isnull(@SP_ID,'0')
print N'MAX ID định mức SXXK      : ' + isnull(@DM_ID,'0')

