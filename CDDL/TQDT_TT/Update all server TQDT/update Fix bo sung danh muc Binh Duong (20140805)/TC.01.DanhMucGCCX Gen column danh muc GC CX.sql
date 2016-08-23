print N'END=================Chế xuất - Gen column danh mục==============='
print N'--=====================Gia công - update key======================'

declare @IDDanhMuc bigint
set	@IDDanhMuc =10000000000000 + $(IDCucHQ)*100000000000 + $(IDChiCuc)*cast(1000000000 as bigint)

Update DNPLHD
	 Set	CDDL_VT_ID		= @IDDanhMuc + 100000000 + CDDL_ID
			,CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)
Update DSPGC
	 Set	CDDL_VT_ID		= @IDDanhMuc + 200000000 + CDDL_ID
			,CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)
Update DDMuc
	 Set	CDDL_DM_ID		= @IDDanhMuc + 500000000 + CDDL_ID
			,CDDL_Ma_DVT_NPL = dbo.Doi_Ma_DVT(MA_DVT)

update a
set	a.CDDL_HD_ID		= hd.HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.Ma_Cuc_HQ
	,a.CDDL_NAM_DK_HD	= hd.Nam_DK
	,a.CDDL_MA_HQ_HD	= hd.Ma_HQ_HD
	,a.CDDL_P_CODE		= SUBSTRING(a.P_CODE,2,50)
	,a.CDDL_HS_CODE		= LEFT(a.HS_CODE,12)
From DNPLHD a join DGC_HD hd on dbo.fcnTCVN2Unicode(a.So_HD)=hd.So_HD 
								and dbo.Doi_Ma_HQ(rtrim(SUBSTRING(a.Ma_HQHD,2,2) + SUBSTRING(a.Ma_HQHD,1,1) + SUBSTRING(a.Ma_HQHD,4,10)))=rtrim(hd.Ma_HQ_HD) 
								and rtrim(a.DVGC)=rtrim(hd.Don_Vi_GC) 
								and a.Ngay_Ky=hd.Ngay_Ky


update a
set	a.CDDL_HD_ID		= hd.HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.MA_HQ_HD
	,a.CDDL_P_CODE		= SUBSTRING(a.P_CODE,2,50)
From DSPGC a join DGC_HD hd on dbo.fcnTCVN2Unicode(a.So_HD)=hd.So_HD 
								and dbo.Doi_Ma_HQ(rtrim(SUBSTRING(a.Ma_HQHD,2,2) + SUBSTRING(a.Ma_HQHD,1,1) + SUBSTRING(a.Ma_HQHD,4,10)))=rtrim(hd.Ma_HQ_HD) 
								and rtrim(a.DVGC)=rtrim(hd.Don_Vi_GC) 
								and a.Ngay_Ky=hd.Ngay_Ky


update dm
set	dm.CDDL_HD_ID		= hd.HD_ID
	,dm.CDDL_MA_CUC_HQ	= hd.MA_CUC_HQ
	,dm.CDDL_NAM_DK_HD	= hd.NAM_DK
	,dm.CDDL_MA_HQ_HD	= hd.MA_HQ_HD
	,dm.CDDL_SPP_CODE	= SUBSTRING(dm.SPP_Code,2,50)
	,dm.CDDL_NPLP_CODE	= SUBSTRING(dm.NPLP_Code,2,50)
from DDMuc dm join DGC_HD hd on dbo.fcnTCVN2Unicode(dm.So_HD)=hd.So_HD and dbo.Doi_Ma_HQ(rtrim(SUBSTRING(dm.Ma_HQHD,2,2) + SUBSTRING(dm.Ma_HQHD,1,1) + SUBSTRING(dm.Ma_HQHD,4,10)))=rtrim(hd.Ma_HQ_HD) and rtrim(dm.DVGC)=rtrim(hd.Don_Vi_GC) and dm.Ngay_Ky=hd.Ngay_Ky


update dm
set	dm.CDDL_VT_ID_SP	= s.CDDL_VT_ID,
	dm.CDDL_MA_DVT_SP	= dbo.Doi_Ma_DVT(isnull(dm.MA_DVT_SP,s.MA_DVT))
from DDMuc dm join DSPGC s on dm.So_HD=s.So_HD and rtrim(dm.Ma_HQHD)=rtrim(s.Ma_HQHD) and dm.DVGC=s.DVGC and dm.Ngay_Ky=s.Ngay_Ky and dm.SPP_Code=s.P_Code

update dm
set	dm.CDDL_VT_ID_NPL	= l.CDDL_VT_ID
from DDMuc dm join DNPLHD l on dm.So_HD=l.So_HD and rtrim(dm.Ma_HQHD)=rtrim(l.Ma_HQHD) and dm.DVGC=l.DVGC and dm.Ngay_Ky=l.Ngay_Ky and dm.NPLP_Code=l.P_Code

/*update DDMuc 
set	CDDL_VT_ID_NPL = CDDL_ID
where	CDDL_VT_ID_NPL is null

update DDMuc 
set	CDDL_VT_ID_SP = CDDL_ID
where	CDDL_VT_ID_SP is null
*/
print N'END====================Gia công - update key======================'


if exists (select MaHQ
			From
			 (select distinct CDDL_MA_HQ_HD as MaHQ from DDMUC
				union
				select distinct CDDL_MA_HQ_HD as MaHQ from DNPLHD
				union
				select distinct CDDL_MA_HQ_HD as MaHQ from DSPGC
			) a
			Where rtrim(MaHQ) in ('01AB02','01AB04','01AB05','01DD01','01DD03','01DD05','01PM','01PM01','01TE','01TE02','01TE03','01TE01','01PO','02AB','02AB04','02CH','02CH01','02CL','02IK02','02IK03','02IK04','02XF','02XF01','02XF02','02CI02','11BB','11BB01','11BG','11BG01','12BB','12BB01','12BH','12BH01','12PF','12PF01','13SG','13SG01','15BB01','15BB02','15BE01','15BE02','15BE03','15BE04','18BA01','18BA02','18BA03','18BB','18BB01','20BE','20BF','27BB','27BB01','27CF','27CF01','30CF','30CF01','31CD01','31CD02','40PD','43IH02','43NK','43NK01','43NE','45BB','45BB01','45BC','45BC01','45NF','45NF03','47CD','47CD01','47CD02','47CI','47CI01','48BF03','48BF04','49CC','49CC01','51CC','51CC01','60NC','60BF')
			)			
BEgin
			update DDMuc 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(rtrim(CDDL_MA_HQ_HD))
		
			update DNPLHD 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(rtrim(CDDL_MA_HQ_HD))

			update DSPGC 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(rtrim(CDDL_MA_HQ_HD))

end

GO