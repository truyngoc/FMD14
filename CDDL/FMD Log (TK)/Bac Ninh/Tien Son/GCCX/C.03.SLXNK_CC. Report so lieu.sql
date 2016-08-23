-- use SLXNK_CC
--đếm tờ khai
declare @sltk varchar(20),@slhang varchar(20),@sltk_ecs varchar(20)
declare @huy_total varchar(20),@huy_nplsp varchar(20)
declare @gc_npl varchar(20), @gc_npl_ct varchar(20)

select @sltk		= COUNT(*) 
from DToKhaiMD

select @sltk_ecs	= COUNT(*)
from ecsToKhaiMD

select @slhang		= COUNT(*) 
from DHangMD

select @gc_npl = count(*)
from ecsNPLTCU

select @gc_npl_ct = count(*)
from ecsNPLTCU_CT

select @huy_total=COUNT(*) 
from ecsCX_HUY_NPLSP_D

select @huy_nplsp=COUNT(*) 
from ecsCX_HUY_NPLSP_D where LOAI_HANG in (1,2)


print N'===============Số liệu TRƯỚC chuyển đổi===================='
print N'===============Số lượng bản ghi============================'
print N'SL tờ khai (DToKhaiMD)          : ' + @sltk
print N'SL tờ khai (ecsecsToKhaiMD)     : ' + @sltk_ecs
print N'SL hàng							: ' + @slhang

print N'SL bản ghi bảng ecsNPLTCU (GC)		: ' + @gc_npl
print N'SL bản ghi bảng ecsNPLTCU_CT (GC)	: ' + @gc_npl_ct

print N'SL bản ghi bảng ecsCX_HUY_NPLSP_D (Chế xuất): ' + @huy_total
print N'SL NPL, SP hủy (Chế xuất)			: ' + @huy_nplsp