-- use [eCustoms_His1]
-- GO

declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = 			{ID Cục: tra bảng}
set	@IDChiCuc = '0'		--{ID chi cục: tra bảng}

declare @HD_ID varchar(20), @NPL_ID varchar(20), @SP_ID varchar(20), @TB_ID varchar(20), @HM_ID varchar(20), @LOAISP_ID varchar(20),@DM_ID varchar(20)

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*1000000000

--đếm hợp đồng GC
declare @slhdgc varchar(20),@slloaispgc varchar(20),@slnplgc varchar(20),@slspgc varchar(20),@sltbgc varchar(20),@slhmgc varchar(20)
declare @sldmgc varchar(20),@sldmgcSAIhd varchar(20),@sldmgcSAInplsp varchar(20)

select @slhdgc		= COUNT(*) 
		,@HD_ID		= max(HD_ID)
from vDGC_HD	where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax

select @slloaispgc	= COUNT(*) 
--		,@LOAISP_ID		= max(HD_ID)
from vDGC_LOAI_SP	where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax

select @slnplgc		= COUNT(*)	
		,@NPL_ID		= max(VT_ID)
from vDGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 1

select @slspgc		= COUNT(*)	
		,@SP_ID		= max(VT_ID)
from vDGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 2

select @sltbgc		= COUNT(*)	
		,@TB_ID		= max(VT_ID)
from vDGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 3

select @slhmgc		= COUNT(*)	
		,@HM_ID		= max(VT_ID)
from vDGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 4

select @sldmgc		= COUNT(*) 
		,@DM_ID		= max(DM_ID)
from vDGC_DINH_MUC  where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax

print N'===============Số liệu TRƯỚC chuyển đổi===================='
print N'===============Gia công===================================='
print N'SL hợp đồng GC          : ' + @slhdgc
print N'SL loại sản phẩm GC     : ' + @slloaispgc
print N'SL NPL GC               : ' + @slnplgc
print N'SL SP GC                : ' + @slspgc
print N'SL thiết bị GC          : ' + @sltbgc
print N'SL hàng mẫu GC          : ' + @slhmgc
print N'SL chi tiết định mức GC : ' + @sldmgc
print N'===============Chế xuất===================='
declare @dcx_vao varchar(20)
declare @dcx_ra varchar(20)
declare @dcx_dm varchar(20)
declare @dcx_ct_tk varchar(20)
declare @dcx_ct_tk_h varchar(20)
declare @VAO_ID varchar(20), @RA_ID varchar(20), @DMCX_ID varchar(20), @CTTK_ID varchar(20), @CTHANG_ID varchar(20)

select @dcx_vao	= COUNT(*)
		,@VAO_ID	= MAX(VT_ID)
from vDCX_DM_HH_DUA_VAO_RA where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax and IS_DUA_VAO=1

select @dcx_ra	= COUNT(*)	
		,@RA_ID	= MAX(VT_ID)
from vDCX_DM_HH_DUA_VAO_RA where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax and IS_DUA_VAO<>1

select @dcx_dm	= COUNT(*)	
		,@DMCX_ID	= MAX(DM_ID)
from vDCX_DINH_MUC		where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax

select @dcx_ct_tk	= COUNT(*)	
		,@CTTK_ID	= MAX(CT_ID)
from vDCX_CT_TOKHAI	where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax

select @dcx_ct_tk_h	= COUNT(*)	
		,@CTHANG_ID	= MAX(CT_ID)
from vDCX_CT_TOKHAI_HANG 	where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax

print N'SL danh mục đưa hàng VÀO: ' + @dcx_vao
print N'SL danh mục đưa hàng RA : ' + @dcx_ra
print N'SL bản ghi định mức CX  : ' + @dcx_dm
print N'SL bản ghi CT tờ khai   : ' + @dcx_ct_tk
print N'SL bản ghi CT hàng      : ' + @dcx_ct_tk_h

Print '=========MAX ID======================================================'
Print '=========Gia công===================================================='
print N'MAX ID hợp đồng GC      : ' + isnull(@HD_ID,'0')
print N'MAX ID loại SP GC       : N/A' --+ isnull(@LOAISP_ID,'0')
print N'MAX ID NPL GC           : ' + isnull(@NPL_ID,'0')
print N'MAX ID SP GC            : ' + isnull(@SP_ID,'0')
print N'MAX ID thiết bị GC      : ' + isnull(@TB_ID,'0')
print N'MAX ID hàng mẫu GC      : ' + isnull(@HM_ID,'0')
print N'MAX ID định mức GC      : ' + isnull(@DM_ID,'0')
Print '=========Chế xuất===================================================='
print N'MAX ID hàng đưa VÀO     : ' + isnull(@VAO_ID,'0')
print N'MAX ID hàng đưa RA      : ' + isnull(@RA_ID,'0')
print N'MAX ID Định mức CX      : ' + isnull(@DMCX_ID,'0')
print N'MAX ID CT Tờ khai       : ' + isnull(@CTTK_ID,'0')
print N'MAX ID CT hàng          : ' + isnull(@CTHANG_ID,'0')
GO
