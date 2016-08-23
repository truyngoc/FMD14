﻿declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = {ID Cục: tra bảng}
set	@IDChiCuc = {ID chi cục: tra bảng}

declare @IDDanhMuc bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000

Update DHDGC
	 Set	CDDL_HD_ID		= @IDDanhMuc + CDDL_ID
			,CDDL_MA_Cuc_HQ	= SUBSTRING(ma_hqhd,2,2)
			,CDDL_NAM_DK	= datepart(YY,ngay_ky)
			,CDDL_MA_HQ_HD	= SUBSTRING(ma_hqhd,2,2) + SUBSTRING(ma_hqhd,1,1) + SUBSTRING(ma_hqhd,4,10)

Update DNPLHD
	 Set	CDDL_VT_ID		= @IDDanhMuc + 100000000 + CDDL_ID
Update DSPGC
	 Set	CDDL_VT_ID		= @IDDanhMuc + 200000000 + CDDL_ID
Update DThietBi
	 Set	CDDL_VT_ID		= @IDDanhMuc + 300000000 + CDDL_ID
Update ecsDHangMau
	 Set	CDDL_VT_ID		= @IDDanhMuc + 400000000 + CDDL_ID
	--mất ~2phút cho bảng ~2.5M bản ghi
Update DDMuc
	 Set	CDDL_DM_ID		= @IDDanhMuc + 500000000 + CDDL_ID
	GO

--update các thông tin hợp đồng cho loại SP GC
update a
set	a.CDDL_HD_ID		= hd.CDDL_HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
From DLOAISPGC a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng cho NPL GC
update a
set	a.CDDL_HD_ID		= hd.CDDL_HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
From DNPLHD a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng cho SP GC
update a
set	a.CDDL_HD_ID		= hd.CDDL_HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
From DSPGC a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng cho Thiết bị GC
update a
set	a.CDDL_HD_ID		= hd.CDDL_HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
From DThietBi a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng cho Hàng mẫu GC
update a
set	a.CDDL_HD_ID		= hd.CDDL_HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
From ecsDHangMau a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng, NPL, SP cho đinh mức GC
--~10 phút cho 2M bản ghir
update dm
set	dm.CDDL_HD_ID		= hd.CDDL_HD_ID
	,dm.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,dm.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,dm.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
from DDMuc dm join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky

update dm
set	dm.CDDL_VT_ID_SP	= s.CDDL_VT_ID,
	dm.CDDL_MA_DVT_SP	= isnull(dm.MA_DVT_SP,s.MA_DVT)
from DDMuc dm join DSPGC s on dm.So_HD=s.So_HD and dm.Ma_HQHD=s.Ma_HQHD and dm.DVGC=s.DVGC and dm.Ngay_Ky=s.Ngay_Ky and dm.SPP_Code=s.P_Code

update dm
set	dm.CDDL_VT_ID_NPL	= l.CDDL_VT_ID
from DDMuc dm join DNPLHD l on dm.So_HD=l.So_HD and dm.Ma_HQHD=l.Ma_HQHD and dm.DVGC=l.DVGC and dm.Ngay_Ky=l.Ngay_Ky and dm.NPLP_Code=l.P_Code

/*update DDMuc 
set	CDDL_VT_ID_NPL = CDDL_ID
where	CDDL_VT_ID_NPL is null

update DDMuc 
set	CDDL_VT_ID_SP = CDDL_ID
where	CDDL_VT_ID_SP is null
*/