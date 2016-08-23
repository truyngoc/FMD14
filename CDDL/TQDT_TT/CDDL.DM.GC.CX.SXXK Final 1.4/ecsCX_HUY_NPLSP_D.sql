--- C.1. Add identity column
declare @idColumn as varchar(100)
Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_HUY_NPLSP_D'
if @idColumn is null
begin
	ALTER TABLE dbo.ecsCX_HUY_NPLSP_D ADD
		CDDL_ID int NOT NULL IDENTITY (1, 1)
end
GO

--- C.2. Gen column danh muc
declare @idColumn as varchar(100)
Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_HUY_NPLSP_D'
if @idColumn = 'CDDL_ID'
begin	
	ALTER TABLE dbo.ecsCX_HUY_NPLSP_D ADD
		CDDL_CT_ID bigint null,
		CDDL_MA_HQ varchar(6) NULL,
		CDDL_MA_CUC_HQ varchar(2) NULL,
		CDDL_VT_ID bigint null,
		CDDL_TK_ID bigint null,
		CDDL_NAM_DK_TK smallint null

end
else
begin
	ALTER TABLE dbo.ecsCX_HUY_NPLSP_D ADD
		CDDL_ID int NULL,	
		CDDL_CT_ID bigint null,
		CDDL_MA_HQ varchar(6) NULL,
		CDDL_MA_CUC_HQ varchar(2) NULL,
		CDDL_VT_ID bigint null,
		CDDL_TK_ID bigint null,
		CDDL_NAM_DK_TK smallint null
			
	exec('update ecsCX_HUY_NPLSP_D set CDDL_ID=' + @idColumn)
end

--- C.3. Bao cao so lieu
declare @huy_total varchar(20)
declare @huy_nplsp varchar(20)

select @huy_total=COUNT(*) from ecsCX_HUY_NPLSP_D
select @huy_nplsp=COUNT(*) from ecsCX_HUY_NPLSP_D where LOAI_HANG in (1,2)

print N'SL bản ghi bảng ecsCX_HUY_NPLSP_D (Chế xuất): ' + @huy_total
print N'SL NPL, SP hủy (Chế xuất)			: ' + @huy_nplsp
 
--- TC.1. Update column danh muc
declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = {ID Cục: tra bảng}
set	@IDChiCuc = 0

declare @IDDanhMuc bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000

Update ecsCX_HUY_NPLSP_D
Set	
	CDDL_CT_ID		= @IDDanhMuc + CDDL_ID
	,CDDL_MA_HQ	= SUBSTRING(MA_HQTN,2,2) + SUBSTRING(MA_HQTN,1,1) + SUBSTRING(MA_HQTN,4,10)
	,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQTN,2,2)
	,CDDL_NAM_DK_TK	= datepart(YY,NGAY_DK)
	
	
update h
set h.CDDL_TK_ID = d.CDDL_TK_ID
from ecsCX_HUY_NPLSP_D h
	join DToKhaiMD d on h.MA_HQ=d.Ma_HQ 
				and h.MA_LH=d.Ma_LH 
				and datepart(YY,h.NGAY_DK)=d.NamDK
				and h.SO_TK=d.SoTK

update h
set 
	h.CDDL_VT_ID = v.CDDL_VT_ID
from ecsCX_HUY_NPLSP_D h
	join ecsCX_DM_HH_DUA_VAO_D v on h.MA_HANG = v.MA_HANG 
							and h.MA_DV_XN = v.MA_DV_XN 
							and h.MA_HQTN = v.MA_HQTN 
							and h.LOAI_HANG = v.LOAI_HANG							

	
--- TC.2. Bao cao truoc chuyen doi
print N'===============Số liệu TRƯỚC chuyển đổi===================='
print N'===============Chế xuất===================='
--declare @IDCucHQ bigint
--declare @IDChiCuc bigint
--set	@IDCucHQ = 			{ID Cục: tra bảng}
--set	@IDChiCuc = '0'		--{ID chi cục: tra bảng}

declare @CT_ID varchar(20), @CT_ID_d varchar(20)
declare @slhuy_nplsp varchar(20), @slhuy_nplsp_d varchar(20)

--declare @IDDanhMuc bigint
declare @IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*1000000000

select @slhuy_nplsp = COUNT(*)
		,@CT_ID = MAX(CT_ID)
from vDCX_HUY_NPL_SP
where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax		

select @slhuy_nplsp_d = COUNT(*)
		,@CT_ID_d = MAX(CT_ID)
from vDCX_HUY_NPL_SP_D
where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax		

print N'SL NPL, SP hủy (Chế xuất)			: ' + @slhuy_nplsp
print N'SL NPL, SP hủy chi tiết (Chế xuất)	: ' + @slhuy_nplsp_d

Print '=========MAX ID======================================================'
Print '=========Chế xuất===================================================='
print N'MAX ID NPL, SP hủy					: ' + isnull(@CT_ID,'0')
print N'MAX ID NPL, SP hủy chi tiết			: ' + isnull(@CT_ID_d,'0')

--- TC.3. Chuyen doi

insert into DCX_HUY_NPL_SP (
	CT_ID
	,MA_HQ
	,MA_CUC_HQ
	,NAM_DK
	,SO_TN
	,NAM_TN
	,MSG_ID
	--,MSG_REFERENCE
	,TRANG_THAI
	,MA_DV_XN
	,TEN_DV_XN
	,NGAY_HUY
	,IS_SIGN
)
select
	CDDL_CT_ID
	,CDDL_MA_HQ
	,CDDL_MA_CUC_HQ
	,NAM_TN
	,SO_TN
	,NAM_TN
	,0
	--,
	,0
	,MA_DV_XN
	,TEN_DV_XN
	,NGAY_HUY
	,IS_SIGN
from DANHMUC_GCCX.DanhMucGCCX.dbo.ecsCX_HUY_NPLSP_D


insert into DCX_HUY_NPL_SP_D (
	CT_ID
	,MA_HQ
	,MA_CUC_HQ
	,VT_ID
	,MA_HANG
	,TEN_HANG
	,LOAI_HANG
	,MA_DVT
	,SO_LUONG
	,TK_ID
	,So_TK
	,MA_LH
	,NAM_DK_TK
	,MA_HQ_TK
	,NGAY_DK
)
select
	CDDL_CT_ID
	,CDDL_MA_HQ
	,CDDL_MA_CUC_HQ
	,CDDL_VT_ID
	,MA_HANG
	,TEN_HANG
	,LOAI_HANG
	,MA_DVT
	,SO_LUONG
	,CDDL_TK_ID
	,SO_TK
	,MA_LH
	,CDDL_NAM_DK_TK
	,MA_HQ
	,NGAY_DK
from DANHMUC_GCCX.DanhMucGCCX.dbo.ecsCX_HUY_NPLSP_D


--- TC.4. Bao cao sau chuyen doi
print N'===============Số liệu SAU chuyển đổi===================='
print N'===============Chế xuất===================='
select @slhuy_nplsp = COUNT(*)
		,@CT_ID = MAX(CT_ID)
from vDCX_HUY_NPL_SP
where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax		

select @slhuy_nplsp_d = COUNT(*)
		,@CT_ID_d = MAX(CT_ID)
from vDCX_HUY_NPL_SP_D
where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax

print N'SL NPL, SP hủy (Chế xuất)			: ' + @slhuy_nplsp
print N'SL NPL, SP hủy chi tiết (Chế xuất)	: ' + @slhuy_nplsp_d

Print '=========MAX ID======================================================'
Print '=========Chế xuất===================================================='
print N'MAX ID NPL, SP hủy					: ' + isnull(@CT_ID,'0')
print N'MAX ID NPL, SP hủy chi tiết			: ' + isnull(@CT_ID_d,'0')
