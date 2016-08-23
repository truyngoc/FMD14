use [DanhMucGCCX]
GO
print N'===================Báo cáo số liệu==========================='
--đếm hợp đồng GC
declare @slhdgc varchar(20),@slloaispgc varchar(20),@slnplgc varchar(20),@slspgc varchar(20),@sltbgc varchar(20),@slhmgc varchar(20)
declare @sldmgc varchar(20),@sldmgcSAIhd varchar(20),@sldmgcSAInplsp varchar(20)
declare @slnplSAIhd varchar(20),@slspSAIhd varchar(20),@sltbSAIhd varchar(20),@slhmSAIhd varchar(20)

declare @HD_ID varchar(20), @NPL_ID varchar(20), @SP_ID varchar(20), @TB_ID varchar(20), @HM_ID varchar(20), @LOAISP_ID varchar(20),@DM_ID varchar(20)

select @slhdgc		= COUNT(*) 
		,@HD_ID		= max(CDDL_ID)
from DHDGC

select @slloaispgc	= COUNT(*) 
		,@LOAISP_ID		= max(CDDL_ID)
from DLOAISPGC

select @slnplgc		= COUNT(*) 
		,@NPL_ID		= max(CDDL_ID)
from DNPLHD

select @slspgc		= COUNT(*) 
		,@SP_ID		= max(CDDL_ID)
from DSPGC

select @sltbgc		= COUNT(*) 
		,@TB_ID		= max(CDDL_ID)
from DThietBi

select @slhmgc		= COUNT(*) 
		,@HM_ID		= max(CDDL_ID)
from ecsDHangMau

select @sldmgc		= COUNT(*) 
		,@DM_ID		= max(CDDL_ID)
from DDMuc

select @sldmgcSAIhd	= COUNT(*) 
from DDMuc dm left join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @slnplSAIhd	= COUNT(*) 
from DNPLHD a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @slspSAIhd	= COUNT(*) 
from DSPGC a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @sltbSAIhd	= COUNT(*) 
from DThietBi a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @slhmSAIhd	= COUNT(*) 
from ecsDHangMau a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @sldmgcSAInplsp	= COUNT(*) 
from DDMuc dm join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky
	left join DNPLHD l on dm.So_HD=l.So_HD and dm.Ma_HQHD=l.Ma_HQHD and dm.DVGC=l.DVGC and dm.Ngay_Ky=l.Ngay_Ky and dm.NPLP_Code=l.P_Code
	left join DSPGC s on dm.So_HD=s.So_HD and dm.Ma_HQHD=s.Ma_HQHD and dm.DVGC=s.DVGC and dm.Ngay_Ky=s.Ngay_Ky and dm.SPP_Code=s.P_Code
where l.P_Code is null or s.P_Code is null

print N'===============Gia công===================='
print N'SL hợp đồng GC          : ' + @slhdgc
print N'SL loại sản phẩm GC     : ' + @slloaispgc
print N'SL NPL GC               : ' + @slnplgc
print N'SL SP GC                : ' + @slspgc
print N'SL thiết bị GC          : ' + @sltbgc
print N'SL hàng mẫu GC          : ' + @slhmgc
print N'SL chi tiết định mức GC : ' + @sldmgc

print N'SL NPL gia công sai hợp đồng                         : ' + @slnplSAIhd
print N'SL SP gia công sai hợp đồng                          : ' + @slspSAIhd
print N'SL thiết bị gia công sai hợp đồng                    : ' + @sltbSAIhd
print N'SL hàng mẫu gia công sai hợp đồng                    : ' + @slhmSAIhd
print N'SL bản ghi chi tiết định mức gia công sai hợp đồng   : ' + @sldmgcSAIhd
print N'SL bản ghi chi tiết định mức gia công sai NPL hoặc SP: ' + @sldmgcSAInplsp
print N'--================Chế xuất - Số tổng=========================='
declare @hh_in varchar(20)
declare @hh_out varchar(20)
declare @dinhmuc varchar(20)
declare @ct_tk varchar(20)
declare @ct_tk_h varchar(20)
declare @VAO_ID varchar(20), @RA_ID varchar(20), @DMCX_ID varchar(20), @CTTK_ID varchar(20), @CTHANG_ID varchar(20)

select @hh_in=COUNT(*) 
		,@VAO_ID	= MAX(CDDL_ID)
from ecsCX_DM_HH_DUA_VAO_D

select @hh_out=COUNT(*) 
		,@RA_ID	= MAX(CDDL_ID)
from ecsCX_DM_HH_DUA_RA_D

select @dinhmuc=COUNT(*) 
		,@DMCX_ID	= MAX(CDDL_ID)
from ecsCX_DinhMuc

select @ct_tk=COUNT(*) 
		,@CTTK_ID	= MAX(CDDL_ID)
from ecsCX_CT_TOKHAI

select @ct_tk_h=COUNT(*) 
		,@CTHANG_ID	= MAX(CDDL_ID)
from ecsCX_CT_TOKHAI_HANG

print N'SL danh mục đưa hàng VÀO: ' + @hh_in
print N'SL danh mục đưa hàng RA : ' + @hh_out
print N'SL bản ghi định mức CX  : ' + @dinhmuc
print N'SL bản ghi CT tờ khai   : ' + @ct_tk
print N'SL bản ghi CT hàng      : ' + @ct_tk_h
Print '=========MAX ID======================================================'
Print '=========Gia công===================================================='
print N'MAX ID hợp đồng GC      : ' + isnull(@HD_ID,'0')
print N'MAX ID loại SP GC       : ' + isnull(@LOAISP_ID,'0')
print N'MAX ID NPL GC           : ' + isnull(@NPL_ID,'0')
print N'MAX ID SP GC            : ' + isnull(@SP_ID,'0')
print N'MAX ID thiết bị GC      : ' + isnull(@TB_ID,'0')
print N'MAX ID hàng mẫu GC      : ' + isnull(@HM_ID,'0')
print N'MAX ID định mức GC      : ' + isnull(@DM_ID,'0')
Print N'=========Chế xuất===================================================='
print N'MAX ID hàng đưa VÀO     : ' + isnull(@VAO_ID,'0')
print N'MAX ID hàng đưa RA      : ' + isnull(@RA_ID,'0')
print N'MAX ID Định mức CX      : ' + isnull(@DMCX_ID,'0')
print N'MAX ID CT Tờ khai       : ' + isnull(@CTTK_ID,'0')
print N'MAX ID CT hàng          : ' + isnull(@CTHANG_ID,'0')
declare @msg nvarchar(255)
if @slnplSAIhd<>'0'
begin
	set @msg=N'Có ' + @slnplSAIhd + N' nguyên phụ liệu GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print N'Chạy script dưới để thực hiện thao tác xóa:'
	print 'delete a
from DNPLHD a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end

if @slspSAIhd <>'0'
begin
	set @msg=N'Có ' + @slspSAIhd + N' sản phẩm GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print N'Chạy script dưới để thực hiện thao tác xóa:'
	print 'delete a
from DSPGC a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end
if @sltbSAIhd <>'0'
begin
	set @msg=N'Có ' + @sltbSAIhd + N' thiết bị GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print N'Chạy script dưới để thực hiện thao tác xóa:'
	print 'delete a
from DThietBi a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end
if @slhmSAIhd <>'0'
begin
	set @msg=N'Có ' + @slhmSAIhd + N' hàng mẫu GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print N'Chạy script dưới để thực hiện thao tác xóa:'
	print 'delete a
from ecsDHangMau a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end
if @sldmgcSAIhd <>'0'
begin
	set @msg=N'Có ' + @sldmgcSAIhd + N' bản ghi chi tiết định mức GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print N'Chạy script dưới để thực hiện thao tác xóa:'
	print 'delete a
from DDMuc dm left join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end

GO