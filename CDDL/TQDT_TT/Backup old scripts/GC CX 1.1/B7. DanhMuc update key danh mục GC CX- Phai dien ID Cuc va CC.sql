use DanhMucGCCX
GO
print '--=====================Gia công - update key======================'
declare @IDCucHQ bigint
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
--===========Chế xuất - Update key====================
update ecsCX_DM_HH_DUA_VAO_D
set
	CDDL_VT_ID = @IDDanhMuc + 600000000 + CDDL_ID
	,CDDL_MA_HQ	= SUBSTRING(MA_HQTN,2,2) + SUBSTRING(MA_HQTN,1,1) + SUBSTRING(MA_HQTN,4,10)
	,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQTN,2,2)		
	,CDDL_IS_DUA_VAO = 1	-- dua vao
	,CDDL_NAM_TK = case upper(LEFT(MA_HANG,1))
						when '0' then 2014
						when '1' then 2015
						when '2' then 2016
						when '3' then 2017
						when '4' then 2018
						when '5' then 2019
						when '6' then 2020
						when '7' then 2021
						when '8' then 2022
						when '9' then 2023
						when 'A' then 2024
						when 'B' then 2025
						when 'C' then 2026
						when 'D' then 2027
						when 'E' then 2028
						when 'F' then 2029
						when 'G' then 2030
						when 'H' then 2031
						when 'I' then 2032
						when 'J' then 2033
						when 'K' then 2034
						when 'L' then 2035
						when 'M' then 2036
						when 'N' then 2037
						when 'O' then 2038
						when 'P' then 2039
						when 'Q' then 2040
						when 'R' then 2041
						when 'S' then 2042
						when 'T' then 2043
						when 'U' then 2044
						when 'V' then 2045
						when 'W' then 2046
						when 'X' then 2047
						when 'Y' then 2048
						when 'Z' then 2049
						else
							2050
					end
					
update ecsCX_DM_HH_DUA_RA_D
set
	CDDL_VT_ID = @IDDanhMuc + 700000000 + CDDL_ID
	,CDDL_MA_HQ	= SUBSTRING(MA_HQTN,2,2) + SUBSTRING(MA_HQTN,1,1) + SUBSTRING(MA_HQTN,4,10)
	,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQTN,2,2)		
	,CDDL_IS_DUA_VAO = 2	-- dua ra
	,CDDL_NAM_TK = case upper(LEFT(MA_HANG,1))
						when '0' then 2014
						when '1' then 2015
						when '2' then 2016
						when '3' then 2017
						when '4' then 2018
						when '5' then 2019
						when '6' then 2020
						when '7' then 2021
						when '8' then 2022
						when '9' then 2023
						when 'A' then 2024
						when 'B' then 2025
						when 'C' then 2026
						when 'D' then 2027
						when 'E' then 2028
						when 'F' then 2029
						when 'G' then 2030
						when 'H' then 2031
						when 'I' then 2032
						when 'J' then 2033
						when 'K' then 2034
						when 'L' then 2035
						when 'M' then 2036
						when 'N' then 2037
						when 'O' then 2038
						when 'P' then 2039
						when 'Q' then 2040
						when 'R' then 2041
						when 'S' then 2042
						when 'T' then 2043
						when 'U' then 2044
						when 'V' then 2045
						when 'W' then 2046
						when 'X' then 2047
						when 'Y' then 2048
						when 'Z' then 2049
						else
							2050
					end

update ecsCX_DinhMuc
set
	CDDL_DM_ID = @IDDanhMuc + 500000000 + CDDL_ID
	,CDDL_MA_HQ	= SUBSTRING(MA_HQ,2,2) + SUBSTRING(MA_HQ,1,1) + SUBSTRING(MA_HQ,4,10)
	,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQ,2,2)		
	
	
update ecsCX_CT_TOKHAI
set
	CDDL_CT_ID = @IDDanhMuc + 800000000 + CDDL_ID
	,CDDL_MA_HQ	= SUBSTRING(MA_HQTN,2,2) + SUBSTRING(MA_HQTN,1,1) + SUBSTRING(MA_HQTN,4,10)
	,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQTN,2,2)
	
/* update ecsCX_HUY_NPLSP_D
set
	CDDL_CT_ID = @IDDanhMuc + 500000000 + CDDL_ID
	,CDDL_MA_HQ	= SUBSTRING(MA_HQTN,2,2) + SUBSTRING(MA_HQTN,1,1) + SUBSTRING(MA_HQTN,4,10)
	,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQTN,2,2)
	,CDDL_NAM_DK_TK = DATEPART(YY,NGAY_DK) */
	
	
-- update thong tin ecsCX_DinhMuc
update d
set 
	CDDL_VT_ID_NPL = v.CDDL_VT_ID
	,CDDL_Ten_NPL = v.TEN_HANG
	,CDDL_MA_HS_NPL = v.MA_HS
	,CDDL_MA_DVT_NPL = v.MA_DVT
from ecsCX_DinhMuc d
	join ecsCX_DM_HH_DUA_VAO_D v on d.MA_NPL = v.MA_HANG and d.MA_DV = v.MA_DV_XN and d.MA_HQ = v.MA_HQTN and LOAI_HANG = 1 -- NPL
	
-- SP		
update d
set CDDL_VT_ID_SP = r.CDDL_VT_ID
	,CDDL_TEN_SP = r.TEN_HANG
	,CDDL_MA_HS_SP = r.MA_HS
	,CDDL_MA_DVT_SP = r.MA_DVT
from ecsCX_DinhMuc d
	join ecsCX_DM_HH_DUA_RA_D r on d.MA_SP = r.MA_HANG and d.MA_DV = r.MA_DV_XN and d.MA_HQ = r.MA_HQTN and LOAI_HANG = 2 -- SP
	
-- update thong tin ecsCX_CT_TOKHAI_HANG
update h
set
	CDDL_CT_ID = t.CDDL_CT_ID
	,CDDL_MA_HQ = t.CDDL_MA_HQ
	,CDDL_MA_CUC_HQ = t.CDDL_MA_CUC_HQ
	,CDDL_NAM_DK = t.NAM_DK
	--,CDDL_VT_ID
from ecsCX_CT_TOKHAI_HANG h
	join ecsCX_CT_TOKHAI t on h.SO_TN = t.SO_TN and h.NAM_TN = t.NAM_TN and h.MA_HQTN = t.MA_HQTN
	
-- 

update h
set
	CDDL_VT_ID = v.CDDL_VT_ID
from ecsCX_CT_TOKHAI_HANG h
	join ecsCX_CT_TOKHAI t on h.SO_TN = t.SO_TN and h.NAM_TN = t.NAM_TN and h.MA_HQTN = t.MA_HQTN	-- join de lay MA_DV_XN
	join ecsCX_DM_HH_DUA_VAO_D v on h.MA_HANG = v.MA_HANG and t.MA_DV_XN = v.MA_DV_XN and h.MA_HQTN = v.MA_HQTN and h.LOAI_HANG = v.LOAI_HANG

--

update h
set
	CDDL_VT_ID = v.CDDL_VT_ID
from ecsCX_CT_TOKHAI_HANG h
	join ecsCX_CT_TOKHAI t on h.SO_TN = t.SO_TN and h.NAM_TN = t.NAM_TN and h.MA_HQTN = t.MA_HQTN	-- join de lay MA_DV_XN
	join ecsCX_DM_HH_DUA_RA_D v on h.MA_HANG = v.MA_HANG and t.MA_DV_XN = v.MA_DV_XN and h.MA_HQTN = v.MA_HQTN and h.LOAI_HANG = v.LOAI_HANG
