-- NPL, SP hủy
select SO_TN, MA_HQTN, NAM_TN, MA_HANG, count(*) [SL trùng] from ecsCX_HUY_NPLSP_D
group by SO_TN, MA_HQTN, NAM_TN, MA_HANG
having COUNT(*) > 1

ALTER TABLE dbo.ecsCX_HUY_NPLSP_D ADD
	CDDL_ID int NOT NULL IDENTITY (1, 1),	
	CDDL_CT_ID bigint null,
	CDDL_MA_HQ varchar(6) NULL,
	CDDL_MA_CUC_HQ varchar(2) NULL,
	CDDL_VT_ID bigint null,
	CDDL_TK_ID bigint null,	-- cai nay check lai vi hien tai chua chuyen to khai thi lay dau ra TK_ID
	CDDL_NAM_DK_TK smallint null
	
-- 3. Sinh ID cho các bảng dữ liệu
-- 1{xx:id cục hq}{xx:id chi cục}{x:1-DUA VAO 2-DUA RA 3-DM 4-TK 5-HUY NPL SP}{xxxxxxxxxx:CDDL_ID}

declare @IDCucHQ bigint		-- kieu int chi toi da 2^16 -> so co do dai toi da 10 ky tu -> loi
declare @IDChiCuc bigint
set	@IDCucHQ = 11	--{ID cục HQ - tra bảng}
set	@IDChiCuc = 12	--{ID chi cục - tra bảng}

declare @IDDanhMuc bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000	-- nới rộng thì thêm 0 vào 3 chỗ :D
	
update ecsCX_HUY_NPLSP_D
set
	CDDL_CT_ID = @IDDanhMuc + 500000000 + CDDL_ID
	,CDDL_MA_HQ	= SUBSTRING(MA_HQTN,2,2) + SUBSTRING(MA_HQTN,1,1) + SUBSTRING(MA_HQTN,4,10)
	,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQTN,2,2)
	,CDDL_NAM_DK_TK = DATEPART(YY,NGAY_DK)

update d
set 
	d.CDDL_VT_ID = v.CDDL_VT_ID
from ecsCX_HUY_NPLSP_D d
	join ecsCX_DM_HH_DUA_VAO_D v on d.MA_HANG = v.MA_HANG and d.MA_DV_XN = v.MA_DV_XN and d.MA_HQTN = v.MA_HQTN and v.LOAI_HANG = 1 -- NPL
	
update d
set 
	d.CDDL_VT_ID = v.CDDL_VT_ID
from ecsCX_HUY_NPLSP_D d
	join ecsCX_DM_HH_DUA_RA_D v on d.MA_HANG = v.MA_HANG and d.MA_DV_XN = v.MA_DV_XN and d.MA_HQTN = v.MA_HQTN and v.LOAI_HANG = 2 -- NPL
	
-- lay CDDL_TK_ID nua
-- Dựa vào So_TK, Nam_DK để lấy thông tin trong bảng DTO_KHAI_MD -> cai nay ko chac lam


-- DCX_HUY_NPL_SP
INSERT INTO DCX_HUY_NPL_SP
	   (
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
		)
SELECT
		CDDL_CT_ID
		,CDDL_MA_HQ
		,CDDL_MA_CUC_HQ
		,NAM_TN
		,SO_TN
		,NAM_TN
		,0
		,0
		,MA_DV_XN
		,TEN_DV_XN
		,NGAY_HUY		
FROM
	[LinkServer_Name].[SLXNK].[dbo].[ecsCX_HUY_NPLSP_D] 
	
-- DCX_HUY_NPL_SP_D	
INSERT INTO DCX_HUY_NPL_SP_D
	   (
		CT_ID
		,MA_HQ
		,MA_CUC_HQ
		--,NAM_DK
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
SELECT
		CDDL_CT_ID
		,CDDL_MA_HQ
		,CDDL_MA_CUC_HQ
		--,
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
FROM
	[LinkServer_Name].[SLXNK].[dbo].[ecsCX_HUY_NPLSP_D] 