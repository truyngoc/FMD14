use [eCustoms_His1]
GO

declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = {ID Cục: tra bảng}
set	@IDChiCuc = {ID chi cục: tra bảng}

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*1000000000
--đếm hợp đồng GC
select COUNT(*) as [Số lượng hợp đồng GC] from DGC_HD where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax

--đếm loại sản phẩm GC
select COUNT(*) as [Số lượng loại SP GC] from DGC_LOAI_SP  where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax
--select Don_Vi_GC,COUNT(*) as [Số lượng loại SP GC theo DV] from DLOAISPGC group by DVGC order by DVGC

--đếm NVL/SP/TB/HM GC
select case Loai when 1 then 'NPL' when '2' then 'SP' when '3' then 'TB' when '4' then 'HM' end as Loai_VT
	,COUNT(*) as [Số lượng VT GC] 
from DGC_SP_NPL_TB_HM  where VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
group by Loai

--đếm định mức GC
select COUNT(*) as [Số lượng BGCT định mức GC] from DGC_DINH_MUC  where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax

--===============Chế xuất - số tổng====================
select case IS_DUA_VAO when 1 then N'CX - HH đưa vào' else N'CX - HH đưa ra' end as Loai_Hang
	,COUNT(*) as [Số lượng] 
from DCX_DM_HH_DUA_VAO_RA
group by IS_DUA_VAO
select COUNT(*) as [Số lượng bản ghi định mức CX] from DCX_DINH_MUC 
select COUNT(*) as [Số lượng bản ghi CT tờ khai CX] from DCX_CT_TOKHAI
select COUNT(*) as [Số lượng bản ghi CT hàng CX] from DCX_CT_TOKHAI_HANG 

--================Gia công - số lượng theo đơn vị
select Don_Vi_GC,COUNT(*) as [Số lượng HD theo DVGC] from DGC_HD where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax group by Don_Vi_GC order by Don_Vi_GC
