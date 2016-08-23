﻿-- use [eCustoms_His1]
-- GO

-- declare @IDCucHQ bigint
-- declare @IDChiCuc bigint
-- set	@IDCucHQ = 			{ID Cục: tra bảng}
-- set	@IDChiCuc = '0'		--{ID chi cục: tra bảng}

declare @TK_ID varchar(20)

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + $(IDCucHQ)*100000000000 + $(IDChiCuc)*cast(1000000000 as bigint)
set	@IDDanhMucMax =10000000000000 + $(IDCucHQ)*100000000000 + ($(IDChiCuc)+1)*cast(1000000000 as bigint)

--đếm tờ khai
declare @sltk varchar(20),@slhang varchar(20),@slnplton varchar(20)
declare @sltk_srv1den9 varchar(20),@slhang_srv1den9 varchar(20),@slnplton_srv1den9 varchar(20)
declare @sltk_khac varchar(20),@slhang_khac varchar(20),@slnplton_khac varchar(20)

select @sltk_srv1den9		= COUNT(*) 
		--,@TK_ID		= max(TK_ID)
from vDTO_KHAI_MD	where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax

select @slhang_srv1den9		= COUNT(*) 
from vDHANG_MD	where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax

select @slnplton_srv1den9	= COUNT(*) 
from vDSX_NPL_NHAP	where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax


select @sltk_khac		= COUNT(*) 
		--,@TK_ID		= max(TK_ID)
from ECUSTOMS_HIS.dbo.DTO_KHAI_MD	where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax

select @slhang_khac		= COUNT(*) 
from ECUSTOMS_HIS.dbo.DHANG_MD	where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax

select @slnplton_khac	= COUNT(*) 
from ECUSTOMS_HIS.dbo.DSX_NPL_NHAP	where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax

set @sltk = @sltk_srv1den9 + ' + '+ @sltk_khac
set @slhang = @slhang_srv1den9 + ' + ' + @slhang_khac
set @slnplton = @slnplton_srv1den9 + ' + ' + @slnplton_khac

print N'===============Số liệu TRƯỚC chuyển đổi===================='
print N'===============Số lượng bản ghi============================'
print N'SL tờ khai          : ' + @sltk
-- column
declare @ma_hq varchar(6), @ma_lh varchar(5), @sl varchar(30)
-- declare cursor
declare cur cursor for
	select ma_hq, ma_lh, COUNT(*) sl from vDTO_KHAI_MD	where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax
	group by ma_hq, ma_lh

print 'Ma_HQ ' + '	' +  'Ma_LH' + '	' +  N'Số lượng bản ghi';
-- open cursor
open cur

-- process
fetch next from cur into @ma_hq, @ma_lh, @sl
while @@FETCH_STATUS = 0
begin
	print @ma_hq + '	' +  @ma_lh + '	' +  @sl;
	fetch next from cur into @ma_hq, @ma_lh, @sl
end

-- close cursor
close cur
deallocate cur


print N'SL hàng             : ' + @slhang
-- declare cursor
declare cur cursor for
	select ma_hq, ma_lh, COUNT(*) sl from vDHANG_MD	where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax
	group by ma_hq, ma_lh

print 'Ma_HQ ' + '	' +  'Ma_LH' + '	' +  N'Số lượng bản ghi';
-- open cursor
open cur

-- process
fetch next from cur into @ma_hq, @ma_lh, @sl
while @@FETCH_STATUS = 0
begin
	print @ma_hq + '	' +  @ma_lh + '	' +  @sl;
	fetch next from cur into @ma_hq, @ma_lh, @sl
end

-- close cursor
close cur
deallocate cur


print N'SL NPL tồn          : ' + @slnplton

-- declare cursor
declare cur cursor for
	select ma_hq, ma_lh, COUNT(*) sl from vDSX_NPL_NHAP	where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax
	group by ma_hq, ma_lh

print 'Ma_HQ ' + '	' +  'Ma_LH' + '	' +  N'Số lượng bản ghi';
-- open cursor
open cur

-- process
fetch next from cur into @ma_hq, @ma_lh, @sl
while @@FETCH_STATUS = 0
begin
	print @ma_hq + '	' +  @ma_lh + '	' +  @sl;
	fetch next from cur into @ma_hq, @ma_lh, @sl
end

-- close cursor
close cur
deallocate cur

--Print '================MAX ID======================================'
--print N'MAX ID tờ khai      : ' + isnull(@TK_ID,'0')


GO
