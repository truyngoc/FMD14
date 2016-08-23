﻿declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = {ID Cục: tra bảng}
set	@IDChiCuc = 0		--{ID chi cục: tra bảng}
declare @NPL_ID_max int,@SP_ID_max int,@DM_ID_max int

select @NPL_ID_max	= {nhập giá trị}
	,@SP_ID_max		= {nhập giá trị}
	,@DM_ID_max		= {nhập giá trị}

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*1000000000

declare @slnpl varchar(20), @slsp varchar(20), @sldm varchar(20)
declare @sldmSAInplsp varchar(20)
declare @NPL_ID varchar(20), @SP_ID varchar(20), @DM_ID varchar(20)

select @slnpl	= COUNT(*)
		,@NPL_ID = MAX(VT_ID) 
from DSX_SP_NPL
where (VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax) and loai = 1

select @slsp	= COUNT(*) 
		,@SP_ID = MAX(VT_ID)
from DSX_SP_NPL
where  (VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax) and loai = 2

select @sldm	= COUNT(*) 
		, @DM_ID = MAX(DM_ID)
from DSX_DINH_MUC 
where  (DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax)

print N'===============Số liệu TRƯỚC chuyển đổi===================='
print N'===============SXXK===================================='
print N'SL NPL SXXK          : ' + @slnpl
print N'SL sản phẩm SXXK     : ' + @slsp
print N'SL định mức SXXK     : ' + @sldm
Print '================MAX ID======================================='
print N'MAX ID NPL SXXK           : ' + isnull(@NPL_ID,'0')
print N'MAX ID SP SXXK            : ' + isnull(@SP_ID,'0')
print N'MAX ID định mức SXXK      : ' + isnull(@DM_ID,'0')


print N'--=====================SXXK - đổ dữ liệu lan SAU vào eCustoms======================'
-- Nguyen phu lieu
print 'Insert From SNPL Into DSX_SP_NPL'
Insert Into DSX_SP_NPL(
	VT_ID
	,MA_HQ
	,MA_CUC_HQ
	,NAM_DK
	,NAM_TK
	,MA_DV
	,MA_VAT_TU
	,LOAI
	,TEN_VAT_TU
	,MA_HS
	,MA_DVT
	,SO_TN
	,NAM_TN
	,MessageID
	--,Reference
)
Select
	CDDL_VT_ID
	,CDDL_MA_HQ
	,CDDL_MA_CUC_HQ
	,isnull(Nam_TN,2007) as Nam_TN
	,CDDL_NAM_TK
	,MA_DV
	,MA_NPL
	,1 as LOAI
	,isnull(TEN_NPL,' ') as TEN_NPL
	,isnull(MA_HS,' ') as MA_HS
	,isnull(MA_DVT,' ') as MA_DVT
	,So_TN
	,Nam_TN
	,0 as MessageID
From	DANHMUC_GCCX.DanhMucSXXK.dbo.SNPL
Where	CDDL_ID > @NPL_ID_max

-- San pham
print 'Insert From SSP Into DSX_SP_NPL'
Insert Into DSX_SP_NPL(
	VT_ID
	,MA_HQ
	,MA_CUC_HQ
	,NAM_DK
	,NAM_TK
	,MA_DV
	,MA_VAT_TU
	,LOAI
	,TEN_VAT_TU
	,MA_HS
	,MA_DVT
	,SO_TN
	,NAM_TN
	,MessageID
	--,Reference
)
Select
	CDDL_VT_ID
	,CDDL_MA_HQ
	,CDDL_MA_CUC_HQ
	,isnull(Nam_TN,2007) as Nam_TN
	,CDDL_NAM_TK
	,MA_DV
	,MA_SP
	,2 as LOAI
	,isnull(TEN_SP,' ') as TEN_SP
	,isnull(MA_HS,' ') as MA_HS
	,isnull(MA_DVT,' ') as MA_DVT
	,So_TN
	,Nam_TN
	,0 as MessageID

From	DANHMUC_GCCX.DanhMucSXXK.dbo.SSP
Where	CDDL_ID > @SP_ID_max


-- Dinh muc
print 'Insert From DDINHMUC Into DSX_DINH_MUC'
Insert Into DSX_DINH_MUC(
	DM_ID
	,MA_HQ
	,MA_CUC_HQ
	,NAM_DK
	,MA_DV
	,VT_ID_SP
	,MA_VAT_TU_SP
	,TEN_VAT_TU_SP
	,MA_DVT_SP
	,MA_HS_SP
	,VT_ID_NPL
	,MA_VAT_TU_NPL
	,TEN_VAT_TU_NPL
	,MA_DVT_NPL
	,MA_HS_NPL
	,DM_SD
	,TL_HH
	,DM_CHUNG
	,GHI_CHU
	,So_TN
	,Nam_TN
	,Kiem_Tra_TT
	,Sua_Sau_Kiem_Tra_TT
	,MessageID
	--,Reference
)
Select
	CDDL_DM_ID
	,CDDL_MA_HQ
	,CDDL_MA_CUC_HQ
	,isnull(Nam_TN, 2007) as NAM_TN
	,MA_DV
	,isnull(CDDL_VT_ID_SP,0) as CDDL_VT_ID_SP
	,isnull(MA_SP,' ') as MA_SP
	,isnull(CDDL_TEN_VAT_TU_SP,' ') as CDDL_TEN_VAT_TU_SP
	,isnull(CDDL_MA_DVT_SP,' ') as CDDL_MA_DVT_SP
	,isnull(CDDL_MA_HS_SP,' ') as CDDL_MA_HS_SP
	,isnull(CDDL_VT_ID_NPL,0) as CDDL_VT_ID_NPL
	,isnull(MA_NPL,' ') as MA_NPL
	,isnull(CDDL_TEN_VAT_TU_NPL,' ') as CDDL_TEN_VAT_TU_NPL
	,isnull(CDDL_MA_DVT_NPL,' ') as CDDL_MA_DVT_NPL
	,isnull(CDDL_MA_HS_NPL,' ') as CDDL_MA_HS_NPL
	,isnull(DM_SD,0) as DM_SD
	,isnull(TL_HH,0) as TL_HH
	,isnull(DM_CHUNG,0) as DM_CHUNG
	,GHI_CHU
	,So_TN
	,Nam_TN
	,ecsKiemTraTT
	,ecsSua_SauKTTT
	,0 as MessageID
From	DANHMUC_GCCX.DanhMucSXXK.dbo.DDINHMUC
Where	CDDL_ID > @DM_ID_max



-- declare @IDCucHQ bigint
-- declare @IDChiCuc bigint
-- set	@IDCucHQ = {ID Cục: tra bảng}
-- set	@IDChiCuc = {ID chi cục: tra bảng}

-- declare @IDDanhMuc bigint,@IDDanhMucMax bigint
-- set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000
-- set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*1000000000

-- declare @slnpl varchar(20), @slsp varchar(20), @sldm varchar(20)
-- declare @sldmSAInplsp varchar(20)
-- declare @NPL_ID varchar(20), @SP_ID varchar(20), @DM_ID varchar(20)

select @slnpl	= COUNT(*)
		,@NPL_ID = MAX(VT_ID) 
from DSX_SP_NPL
where (VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax) and loai = 1

select @slsp	= COUNT(*) 
		,@SP_ID = MAX(VT_ID)
from DSX_SP_NPL
where  (VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax) and loai = 2

select @sldm	= COUNT(*) 
		, @DM_ID = MAX(DM_ID)
from DSX_DINH_MUC 
where  (DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax)
print N'--=====================SXXK - Hoàn thành đổ dữ liệu vào eCustoms======================'

print N'===============Số liệu SAU chuyển đổi===================='
print N'===============SXXK===================================='
print N'SL NPL SXXK          : ' + @slnpl
print N'SL sản phẩm SXXK     : ' + @slsp
print N'SL định mức SXXK     : ' + @sldm
Print '================MAX ID======================================='
print N'MAX ID NPL SXXK           : ' + isnull(@NPL_ID,'0')
print N'MAX ID SP SXXK            : ' + isnull(@SP_ID,'0')
print N'MAX ID định mức SXXK      : ' + isnull(@DM_ID,'0')