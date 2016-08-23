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

print N'===============Số liệu SAU chuyển đổi===================='
print N'===============Số lượng bản ghi============================'
print N'SL tờ khai          : ' + @sltk
print N'SL hàng             : ' + @slhang

-- column
declare @ma_hq varchar(6), @ma_lh varchar(5), @sl_tk varchar(30), @sl_h varchar(30)
-- declare cursor
declare cur cursor for
	-- select ma_hq, ma_lh, COUNT(*) sl from vDTO_KHAI_MD	where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax
	-- group by ma_hq, ma_lh
	select ma_hq
		, ma_lh
		, SUM(a.sl_tk) sl_tk
		, SUM(a.sl_h) sl_h
	from 
		(select ma_hq, ma_lh, COUNT(*) sl_tk, 0 as sl_h from vDTO_KHAI_MD
		where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax
		group by ma_hq, ma_lh
		union 	
		select ma_hq, ma_lh, 0 as sl_tk, COUNT(*) sl_h from vDHANG_MD
		where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax
		group by ma_hq, ma_lh	
		) a
	group by a.Ma_HQ, a.Ma_LH	
	order by Ma_HQ

print N'Mã Hải quan' + '	' +  N'Mã loại hình' + '	' +  N'Số lượng tờ khai' + '	' + N'Số lượng dòng hàng';
-- open cursor
open cur

-- process
fetch next from cur into @ma_hq, @ma_lh, @sl_tk, @sl_h
while @@FETCH_STATUS = 0
begin
	print @ma_hq + '	' +  @ma_lh + '	' +  @sl_tk + '	' + @sl_h;
	fetch next from cur into @ma_hq, @ma_lh, @sl_tk, @sl_h
end

-- close cursor
close cur
deallocate cur


Print '================MAX ID======================================'
print N'MAX ID tờ khai      : ' + isnull(@TK_ID,'0')
GO
