declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = {ID Cục: tra bảng}
set	@IDChiCuc = {ID chi cục: tra bảng}

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*1000000000

--đếm NVL/SP/TB/HM GC
select case Loai when 1 then 'NPL' when '2' then 'SP' when '3' then 'TB' when '4' then 'HM' end as Loai_VT
,COUNT(*) as [Số lượng VT SXXK] 
from ECUSTOMS_01.eCustoms_His1.dbo.DSX_SP_NPL  where VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
group by Loai

--đếm định mức GC
select COUNT(*) as [Số lượng BGCT định mức SXXK] from ECUSTOMS_01.[eCustoms_His1].[dbo].[DSX_DINH_MUC] where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax
