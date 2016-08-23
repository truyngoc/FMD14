-- use [eCustoms_His1]
-- GO

-- declare @IDCucHQ bigint
-- declare @IDChiCuc bigint
-- set	@IDCucHQ = 			{ID Cục: tra bảng}
-- set	@IDChiCuc = '0'		--{ID chi cục: tra bảng}

declare @TK_ID varchar(20)

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + $(IDCucHQ)*cast(100000000000 as bigint) + $(IDChiCuc)*cast(1000000000 as bigint)
set	@IDDanhMucMax =10000000000000 + $(IDCucHQ)*cast(100000000000 as bigint) + ($(IDChiCuc)+1)*cast(1000000000 as bigint)

--đếm tờ khai
declare @sltk varchar(20),@slhang varchar(20)

select @sltk		= COUNT(*) 
		,@TK_ID		= max(TK_ID)
from vDTO_KHAI_MD	where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax

select @slhang		= COUNT(*) 
from vDHANG_MD	where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax

print N'===============Số liệu TRƯỚC chuyển đổi===================='
print N'===============Số lượng bản ghi============================'
print N'SL tờ khai          : ' + @sltk
print N'SL hàng             : ' + @slhang
Print '================MAX ID======================================'
print N'MAX ID tờ khai      : ' + isnull(@TK_ID,'0')
GO
