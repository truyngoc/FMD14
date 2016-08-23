use [DanhMucGCCX]
GO
print N'===================Báo cáo số liệu==========================='
--đếm hợp đồng GC
declare @slhdgc varchar(20),@slloaispgc varchar(20),@slnplgc varchar(20),@slspgc varchar(20),@sltbgc varchar(20),@slhmgc varchar(20)
declare @sldmgc varchar(20),@sldmgcSAIhd varchar(20),@sldmgcSAInplsp varchar(20)

declare @HD_ID varchar(20), @NPL_ID varchar(20), @SP_ID varchar(20), @TB_ID varchar(20), @HM_ID varchar(20), @LOAISP_ID varchar(20),@DM_ID varchar(20)

declare @MaHQ varchar(6)
set	@MaHQ='01PP02'

select @slhdgc		= COUNT(*) 
from DHDGC
where CDDL_Ma_HQ_HD = @MaHQ

select @slloaispgc	= COUNT(*) 
from DLOAISPGC
where CDDL_Ma_HQ_HD = @MaHQ

select @slnplgc		= COUNT(*) 
from DNPLHD
where CDDL_Ma_HQ_HD = @MaHQ

select @slspgc		= COUNT(*) 
from DSPGC
where CDDL_Ma_HQ_HD = @MaHQ

select @sltbgc		= COUNT(*) 
from DThietBi
where CDDL_Ma_HQ_HD = @MaHQ

select @slhmgc		= COUNT(*) 
from ecsDHangMau
where CDDL_Ma_HQ_HD = @MaHQ

select @sldmgc		= COUNT(*) 
from DDMuc
where CDDL_Ma_HQ_HD = @MaHQ

print N'===============Số liệu Gia công của DV HQ ' + @MaHQ + '================'
print N'SL hợp đồng GC          : ' + @slhdgc
print N'SL loại sản phẩm GC     : ' + @slloaispgc
print N'SL NPL GC               : ' + @slnplgc
print N'SL SP GC                : ' + @slspgc
print N'SL thiết bị GC          : ' + @sltbgc
print N'SL hàng mẫu GC          : ' + @slhmgc
print N'SL chi tiết định mức GC : ' + @sldmgc

print N'--=============Số liệu Chế xuất của DV HQ ' + @MaHQ + '================'
declare @hh_in varchar(20)
declare @hh_out varchar(20)
declare @dinhmuc varchar(20)
declare @ct_tk varchar(20)
declare @ct_tk_h varchar(20)
declare @VAO_ID varchar(20), @RA_ID varchar(20), @DMCX_ID varchar(20), @CTTK_ID varchar(20), @CTHANG_ID varchar(20)

select @hh_in=COUNT(*) 
from ecsCX_DM_HH_DUA_VAO_D
where CDDL_Ma_HQ = @MaHQ

select @hh_out=COUNT(*) 
from ecsCX_DM_HH_DUA_RA_D
where CDDL_Ma_HQ = @MaHQ

select @dinhmuc=COUNT(*) 
from ecsCX_DinhMuc
where CDDL_Ma_HQ = @MaHQ

select @ct_tk=COUNT(*) 
from ecsCX_CT_TOKHAI
where CDDL_Ma_HQ = @MaHQ

select @ct_tk_h=COUNT(*) 
from ecsCX_CT_TOKHAI_HANG
where CDDL_Ma_HQ = @MaHQ

print N'SL danh mục đưa hàng VÀO: ' + @hh_in
print N'SL danh mục đưa hàng RA : ' + @hh_out
print N'SL bản ghi định mức CX  : ' + @dinhmuc
print N'SL bản ghi CT tờ khai   : ' + @ct_tk
print N'SL bản ghi CT hàng      : ' + @ct_tk_h
