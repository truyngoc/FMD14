﻿-- set nocount on
-- --đếm Nguyên phụ liệu
-- select COUNT(*) as [Số lượng bản ghi NPL SXXK] from SNPL

-- --đếm sản phẩm
-- select COUNT(*) as [Số lượng bản ghi SP SXXK] from SSP

-- declare @IDDanhMuc bigint
-- set	@IDDanhMuc =10000000000000 + $(IDCucHQ)*100000000000 + $(IDChiCuc)*1000000000

-- select @IDDanhMuc

-- print 'wtf'

-- select * from dcm

-- use [eCustoms_His1]
-- GO

-- declare @IDCucHQ bigint
-- declare @IDChiCuc bigint
-- set	@IDCucHQ = 			{ID Cục: tra bảng}
-- set	@IDChiCuc = '0'		--{ID chi cục: tra bảng}

declare @TK_ID varchar(20)

--đếm tờ khai
declare @sltk varchar(20),@slhang varchar(20)

select @sltk		= COUNT(*) 
		,@TK_ID		= max(TK_ID)
from vDTO_KHAI_MD	--where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax

select @slhang		= COUNT(*) 
from vDHANG_MD	--where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax

print N'===============Số liệu TRƯỚC chuyển đổi===================='
print N'===============Số lượng bản ghi============================'
print N'SL tờ khai          : ' + @sltk
print N'SL hàng             : ' + @slhang

	-- select ma_hq, ma_lh, COUNT(*) sl from vDTO_KHAI_MD	where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax
	-- group by ma_hq, ma_lh
	select ma_hq
		, ma_lh
		, SUM(a.sl_tk) sl_tk
		, SUM(a.sl_h) sl_h
	from 
		(select ma_hq, ma_lh, COUNT(*) sl_tk, 0 as sl_h from vDTO_KHAI_MD
		--where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax
		group by ma_hq, ma_lh
		union 	
		select ma_hq, ma_lh, 0 as sl_tk, COUNT(*) sl_h from vDHANG_MD
		--where TK_ID>@IDDanhMuc and TK_ID<=@IDDanhMucMax
		group by ma_hq, ma_lh	
		) a
	group by a.Ma_HQ, a.Ma_LH	
	order by Ma_HQ


Print '================MAX ID======================================'
print N'MAX ID tờ khai      : ' + isnull(@TK_ID,'0')
GO
