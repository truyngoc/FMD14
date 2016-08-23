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
declare @slhdgc varchar(20),@slloaispgc varchar(20),@slnplgc varchar(20),@slspgc varchar(20),@sltbgc varchar(20),@slhmgc varchar(20)
declare @sldmgc varchar(20),@sldmgcSAIhd varchar(20),@sldmgcSAInplsp varchar(20)

select @slhdgc		= COUNT(*) from DGC_HD	where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax
select @slloaispgc	= COUNT(*) from DGC_LOAI_SP	where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax
select @slnplgc		= COUNT(*)	from DGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 1
select @slspgc		= COUNT(*)	from DGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 2
select @sltbgc		= COUNT(*)	from DGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 3
select @slhmgc		= COUNT(*)	from DGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 4

select @sldmgc		= COUNT(*) from DGC_DINH_MUC  where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax
print N'===============Số liệu SAU chuyển đổi===================='
print N'===============Gia công=================================='
print N'SL hợp đồng GC          : ' + @slhdgc
print N'SL loại sản phẩm GC     : ' + @slloaispgc
print N'SL NPL GC               : ' + @slnplgc
print N'SL SP GC                : ' + @slspgc
print N'SL thiết bị GC          : ' + @sltbgc
print N'SL hàng mẫu GC          : ' + @slhmgc
print N'SL chi tiết định mức GC : ' + @sldmgc



print N'===============Chế xuất=================================='
declare @dcx_vao varchar(20)
declare @dcx_ra varchar(20)
declare @dcx_dm varchar(20)
declare @dcx_ct_tk varchar(20)
declare @dcx_ct_tk_h varchar(20)
select @dcx_vao	= COUNT(*)	from DCX_DM_HH_DUA_VAO_RA where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax and IS_DUA_VAO=1
select @dcx_ra	= COUNT(*)	from DCX_DM_HH_DUA_VAO_RA where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax and IS_DUA_VAO<>1
select @dcx_dm	= COUNT(*)	from DCX_DINH_MUC		where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax
select @dcx_ct_tk	= COUNT(*)	from DCX_CT_TOKHAI	where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax
select @dcx_ct_tk_h	= COUNT(*)	from DCX_CT_TOKHAI_HANG 	where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax

print N'SL danh mục đưa hàng VÀO: ' + @dcx_vao
print N'SL danh mục đưa hàng RA : ' + @dcx_ra
print N'SL bản ghi định mức CX  : ' + @dcx_dm
print N'SL bản ghi CT tờ khai   : ' + @dcx_ct_tk
print N'SL bản ghi CT hàng      : ' + @dcx_ct_tk_h

Print '======================================================================='

/*
print N'================Gia công - số lượng theo đơn vị'
select Don_Vi_GC,COUNT(*) as [Số lượng HD theo DVGC] from DGC_HD where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax group by Don_Vi_GC order by Don_Vi_GC
*/
