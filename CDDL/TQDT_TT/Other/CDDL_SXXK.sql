-- Quy trình SXXK
-- 1. restore db SXXK_Cuc
-- 2. chạy script GD1_Buoc1_SXXK_Add_Table_Column_1_1.sql: sửa dòng lệnh use SXXK để trỏ đúng DB cần thao tác
-- 3. chạy script GD1_Buoc2_SXXK_Check_DataType.sql: sửa dòng lệnh use SXXK để trỏ đúng DB cần thao tác
-- 3.1 trong trường hợp các bảng NPL, SP không có quan hệ với bảng định mức: phải chạy script kiểm tra xem có bản ghi nào trùng không. Nếu có thì phải sửa để các số liệu thống kê bước sau khớp nhau
select MA_HQ,MA_DV,MA_NPL, COUNT(*) as [SL NPL SXXK trùng] from SNPL 
group by MA_HQ,MA_DV,MA_NPL
having COUNT(*)>1
select MA_HQ,MA_DV,MA_SP, COUNT(*) as [SL SP SXXK trùng] from SSP 
group by MA_HQ,MA_DV,MA_SP
having COUNT(*)>1
select MA_SP,MA_NPL,MA_DV,MA_HQ, COUNT(*) as [SL bản ghi DM SXXK trùng] from DDINHMUC 
group by MA_SP,MA_NPL,MA_DV,MA_HQ
having COUNT(*)>1
select MA_SP,MA_DV,MA_HQ, COUNT(*) as [SL bản ghi DMTT SXXK trùng] from DDINHMUC_TT 
group by MA_SP,MA_DV,MA_HQ
having COUNT(*)>1
3.2 phải bổ sung script kiểm tra sự toàn vẹn dữ liệu: NPL, SP, DM không có hợp đồng; DM không có NPL/SP
--đếm nguyên liệu SXXK
select COUNT(*) as [Số lượng NPL SXXK] from SNPL
select MA_DV,COUNT(*) as [Số lượng NPL SXXK theo DV] from SNPL group by MA_DV order by MA_DV
--select SO_HD,COUNT(*) as [Số lượng NPL GC theo HD] from DNPLHD group by So_HD order by So_HD

--đếm sản phẩm SXXK
select COUNT(*) as [Số lượng SP SXXK] from SSP
select MA_DV,COUNT(*) as [Số lượng SP SXXK theo DV] from SSP group by MA_DV order by MA_DV
--select SO_HD,COUNT(*) as [Số lượng SP GC theo HD] from DSPGC group by So_HD order by So_HD

--đếm định mức SXXK
select COUNT(*) as [Số lượng BGCT định mức SXXK] from DDinhMuc
select MA_DV,COUNT(*) as [Số lượng BGCT định mức SXXK theo DV] from DDinhMuc group by MA_DV order by MA_DV

--đếm định mức TT SXXK
select COUNT(*) as [Số lượng BGCT định mức TT SXXK] from DDinhMuc_TT
select MA_DV,COUNT(*) as [Số lượng BGCT định mức TT SXXK theo DV] from DDinhMuc_TT group by MA_DV order by MA_DV

--đếm định mức SXXK sai NPL hoặc SP
select COUNT(*) as [SL BGCT định mức SXXK sai NPL hoặc SP] 
from DDinhMuc dm left join SNPL l on dm.Ma_HQ=l.Ma_HQ and dm.MA_DV=l.MA_DV and dm.MA_NPL=l.MA_NPL
	left join SSP s on dm.Ma_HQ=s.Ma_HQ and dm.MA_DV=s.MA_DV and dm.MA_SP=s.MA_SP
where l.MA_NPL is null or s.MA_SP is null

-- 4. chạy script bổ sung côt: 
	ALTER TABLE SSP ADD
		CDDL_ID int NOT NULL IDENTITY (1, 1),
		CDDL_VT_ID bigint NULL,
		CDDL_MA_CUC_HQ varchar(2) NULL,
		CDDL_MA_HQ varchar(6) NULL,
		CDDL_NAM_TK smallint NULL
	GO
	ALTER TABLE SNPL ADD
		CDDL_ID int NOT NULL IDENTITY (1, 1),
		CDDL_VT_ID bigint NULL,
		CDDL_MA_CUC_HQ varchar(2) NULL,
		CDDL_MA_HQ varchar(6) NULL,
		CDDL_NAM_TK smallint NULL
	GO
	ALTER TABLE DDINHMUC ADD
		CDDL_ID int NOT NULL IDENTITY (1, 1),
		CDDL_DM_ID bigint NULL,
		CDDL_MA_CUC_HQ varchar(2) NULL,
		CDDL_MA_HQ varchar(6) NULL,
		CDDL_VT_ID_SP bigint NULL,
		CDDL_TEN_VAT_TU_SP	nvarchar(256) null,
		CDDL_MA_DVT_SP	char(4) null,
		CDDL_MA_HS_SP	varchar(12) null,
		CDDL_VT_ID_NPL bigint NULL,
		CDDL_TEN_VAT_TU_NPL	nvarchar(256) null,
		CDDL_MA_DVT_NPL	char(4) null,
		CDDL_MA_HS_NPL	varchar(12) null

	GO
	ALTER TABLE DDINHMUC_TT ADD
		CDDL_ID int NOT NULL IDENTITY (1, 1),
		CDDL_DMTT_ID bigint NULL,
		CDDL_MA_CUC_HQ varchar(2) NULL,
		CDDL_MA_HQ varchar(6) NULL,
		CDDL_VT_ID_SP bigint NULL
	GO

-- 5. chạy script điền dữ liệu
-- CDDL_HD_ID: 1{xx:id cục hq}{xx:id chi cục}{x:1-NPL 2-SP 3-TB 4-HM 5-DM}{xxxxxxxxxx:CDDL_ID}
-- CDDL_MA_CUC_HQ: 2 ký tự số Cục HQ
-- CDDL_NAM_DK: năm dk
-- CDDL_MA_HQ_HD: đảo mã cục HQ lên đầu

declare @IDCucHQ int
declare @IDChiCuc int
set	@IDCucHQ = {ID cục HQ - tra bảng}
set	@IDChiCuc = {ID chi cục - tra bảng}

declare @IDDanhMuc bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000

Update SNPL
	 Set	CDDL_VT_ID		= @IDDanhMuc + 100000000 + CDDL_ID
			,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQ,2,2)
			,CDDL_MA_HQ	= SUBSTRING(MA_HQ,2,2) + SUBSTRING(MA_HQ,1,1) + SUBSTRING(MA_HQ,4,10)

Update SSP
	 Set	CDDL_VT_ID		= @IDDanhMuc + 200000000 + CDDL_ID
			,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQ,2,2)
			,CDDL_MA_HQ	= SUBSTRING(MA_HQ,2,2) + SUBSTRING(MA_HQ,1,1) + SUBSTRING(MA_HQ,4,10)

Update DDINHMUC_TT
	 Set	CDDL_DMTT_ID		= @IDDanhMuc + 600000000 + CDDL_ID
			,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQ,2,2)
			,CDDL_MA_HQ	= SUBSTRING(MA_HQ,2,2) + SUBSTRING(MA_HQ,1,1) + SUBSTRING(MA_HQ,4,10)

Update DDINHMUC
	 Set	CDDL_DM_ID		= @IDDanhMuc + 500000000 + CDDL_ID
			,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQ,2,2)
			,CDDL_MA_HQ	= SUBSTRING(MA_HQ,2,2) + SUBSTRING(MA_HQ,1,1) + SUBSTRING(MA_HQ,4,10)

GO

--update thông tin sản phẩm cho định mức SXXK
update dm
set	dm.CDDL_VT_ID_SP	= s.CDDL_VT_ID
	,dm.CDDL_TEN_VAT_TU_SP	= s.TEN_SP
	,dm.CDDL_MA_DVT_SP	= s.MA_DVT
	,dm.CDDL_MA_HS_SP	= s.MA_HS
from DDINHMUC dm join SSP s on dm.MA_SP = s.MA_SP and dm.MA_DV=s.MA_DV and dm.MA_HQ=s.MA_HQ

--update thông tin NPL cho định mức SXXK
update dm
set	dm.CDDL_VT_ID_NPL	= l.CDDL_VT_ID
	,dm.CDDL_TEN_VAT_TU_NPL	= l.TEN_NPL
	,dm.CDDL_MA_DVT_NPL	= l.MA_DVT
	,dm.CDDL_MA_HS_NPL	= l.MA_HS
from DDINHMUC dm join SNPL l on dm.MA_NPL=l.MA_NPL and dm.MA_DV=l.MA_DV and dm.MA_HQ=l.MA_HQ

--update thông tin sản phẩm cho định mức TT SXXK
update dm
set	dm.CDDL_VT_ID_SP	= s.CDDL_VT_ID
from DDINHMUC_TT dm join SSP s on dm.MA_SP = s.MA_SP and dm.MA_DV=s.MA_DV and dm.MA_HQ=s.MA_HQ