set nocount on

USE SLXNK_Z47Z
GO
-- 1. kiem tra ban ghi trung trong cac bang co key bi thay doi
-- cai nay co the chay hoac ko, vi no chi de lay so lieu

/* -- Danh mục hàng hóa đưa vào
select MA_HQTN, MA_DV_XN, MA_HANG, COUNT(*) [SL HH đưa vào trùng] from ecsCX_DM_HH_DUA_VAO_D
group by MA_HQTN, MA_DV_XN, MA_HANG
having COUNT(*) > 1

-- Danh mục hàng hóa đưa ra
select MA_HQTN, MA_DV_XN, MA_HANG, COUNT(*) [SL HH đưa ra trùng] from ecsCX_DM_HH_DUA_RA_D
group by MA_HQTN, MA_DV_XN, MA_HANG
having COUNT(*) > 1

-- Định mức
select MA_SP, MA_NPL, MA_HQ, MA_DV, COUNT(*) [SL trùng] from ecsCX_DinhMuc
group by MA_SP, MA_NPL, MA_HQ, MA_DV
having COUNT(*) > 1

-- CT Tờ khai
select SO_TN, NAM_TN, MA_HQTN, COUNT(*) [SL trùng] from ecsCX_CT_TOKHAI
group by SO_TN, NAM_TN, MA_HQTN
having COUNT(*) > 1

-- Hàng CT tờ khai
select SO_TN, NAM_TN, MA_HQTN, STT_HANG, COUNT(*) [SL trùng] from ecsCX_CT_TOKHAI_HANG
group by SO_TN, NAM_TN, MA_HQTN, STT_HANG
having COUNT(*) > 1

-- NPL, SP hủy
select SO_TN, MA_HQTN, NAM_TN, MA_HANG, count(*) [SL trùng] from ecsCX_HUY_NPLSP_D
group by SO_TN, MA_HQTN, NAM_TN, MA_HANG
having COUNT(*) > 1 

-- NPL co trong dinh muc nhung ko co trong DM_HH_DUA_VAO
select * 	
from ecsCX_DinhMuc d
	left join ecsCX_DM_HH_DUA_VAO_D v on d.MA_NPL = v.MA_HANG and d.MA_DV = v.MA_DV_XN and d.MA_HQ = v.MA_HQTN and LOAI_HANG = 1 -- NPL
where v.MA_HANG is null

-- SP co trong dinh muc nhung ko co trong DM_HH_DUA_RA
select * 	
from ecsCX_DinhMuc d
	left join ecsCX_DM_HH_DUA_RA_D v on d.MA_SP = v.MA_HANG and d.MA_DV = v.MA_DV_XN and d.MA_HQ = v.MA_HQTN and LOAI_HANG = 2 -- SP
where v.MA_HANG is null
*/

declare @hh_in varchar(20)
declare @hh_out varchar(20)
declare @dinhmuc varchar(20)
declare @ct_tk varchar(20)
declare @ct_tk_h varchar(20)
select @hh_in=COUNT(*) from ecsCX_DM_HH_DUA_VAO_D
select @hh_out=COUNT(*) from ecsCX_DM_HH_DUA_RA_D
select @dinhmuc=COUNT(*) from ecsCX_DinhMuc
select @ct_tk=COUNT(*) from ecsCX_CT_TOKHAI
select @ct_tk_h=COUNT(*) from ecsCX_CT_TOKHAI_HANG
print N'SL bản ghi bảng ecsCX_DM_HH_DUA_VAO_D: ' + @hh_in
print N'SL bản ghi bảng ecsCX_DM_HH_DUA_RA_D: ' + @hh_out
print N'SL bản ghi bảng ecsCX_DinhMuc: ' + @dinhmuc
print N'SL bản ghi bảng ecsCX_CT_TOKHAI: ' + @ct_tk
print N'SL bản ghi bảng ecsCX_CT_TOKHAI_HANG: ' + @ct_tk_h


Print '======================================================================='
Print '1.Bat dau: ' + convert(varchar(20),getdate())
Print '======================================================================='

Print 'Xoa du lieu cu o CSDL dest'
-- chuyen ma moi dinh dang VNACCS
-- declare @MA_HQ varchar(6)='X47E' 
-- declare @MA_HQ_VNACCS varchar(6)
-- select @MA_HQ_VNACCS = SUBSTRING(@MA_HQ,2,2) + SUBSTRING(@MA_HQ,1,1) + SUBSTRING(@MA_HQ,4,10)

-- xoa du lieu o bang dest di ( xoa cho tung chi cuc chuyen doi)
-- delete from [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_DM_HH_DUA_VAO_RA where MA_HQ = @MA_HQ_VNACCS
-- delete from [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_DINH_MUC where MA_HQ = @MA_HQ_VNACCS
-- delete from [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_CT_TOKHAI where MA_HQ = @MA_HQ_VNACCS
-- delete from [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_CT_TOKHAI_HANG where MA_HQ = @MA_HQ_VNACCS


declare @MA_HQ varchar(6)='47' 
-- xoa cho du lieu chuyen doi ca Cuc
delete from [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_DM_HH_DUA_VAO_RA where MA_CUC_HQ = @MA_HQ
delete from [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_DINH_MUC where MA_CUC_HQ = @MA_HQ
delete from [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_CT_TOKHAI where MA_CUC_HQ = @MA_HQ
delete from [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_CT_TOKHAI_HANG where MA_CUC_HQ = @MA_HQ

-- xoa cac cot da tao de chuyen doi o bang source neu co
-- alter table ecsCX_DM_HH_DUA_VAO_D drop column 
	-- CDDL_ID,CDDL_VT_ID,CDDL_MA_HQ,CDDL_MA_CUC_HQ,CDDL_NAM_TK,CDDL_IS_DUA_VAO

-- alter table ecsCX_DM_HH_DUA_RA_D drop column 
	-- CDDL_ID,CDDL_VT_ID,CDDL_MA_HQ,CDDL_MA_CUC_HQ,CDDL_NAM_TK,CDDL_IS_DUA_VAO

-- alter table ecsCX_DinhMuc drop column 
	-- CDDL_ID,CDDL_DM_ID,CDDL_MA_HQ,CDDL_MA_CUC_HQ,CDDL_VT_ID_SP,CDDL_VT_ID_NPL,CDDL_TEN_SP,CDDL_MA_HS_SP,CDDL_MA_DVT_SP
	-- ,CDDL_Ten_NPL,CDDL_MA_HS_NPL,CDDL_MA_DVT_NPL

-- alter table ecsCX_CT_TOKHAI drop column 
	-- CDDL_ID,CDDL_CT_ID ,CDDL_MA_HQ ,CDDL_MA_CUC_HQ 

-- alter table ecsCX_CT_TOKHAI_HANG  drop column 
	-- CDDL_CT_ID,CDDL_MA_HQ ,CDDL_MA_CUC_HQ ,CDDL_NAM_DK ,CDDL_VT_ID 

Print '======================================================================='
Print '1.Bo sung cot du lieu chuyen doi '

-- 2. Chạy scripts bổ sung cột
	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_DM_HH_DUA_VAO_D'
	if @idColumn is null
	begin
		ALTER TABLE dbo.ecsCX_DM_HH_DUA_VAO_D ADD
		CDDL_ID int NOT NULL IDENTITY (1, 1),
		CDDL_VT_ID bigint NULL,
		CDDL_MA_HQ varchar(6) NULL,
		CDDL_MA_CUC_HQ varchar(2) NULL,		
		CDDL_NAM_TK smallint NULL,
		CDDL_IS_DUA_VAO smallint null
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_DM_HH_DUA_VAO_D ADD
		CDDL_ID int NULL,
		CDDL_VT_ID bigint NULL,
		CDDL_MA_HQ varchar(6) NULL,
		CDDL_MA_CUC_HQ varchar(2) NULL,		
		CDDL_NAM_TK smallint NULL,
		CDDL_IS_DUA_VAO smallint null
		
		exec('update ecsCX_DM_HH_DUA_VAO_D set CDDL_ID=' + @idColumn)
	end

GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_DM_HH_DUA_RA_D'
	if @idColumn is null
	begin
		ALTER TABLE dbo.ecsCX_DM_HH_DUA_RA_D ADD
		CDDL_ID int NOT NULL IDENTITY (1, 1),
		CDDL_VT_ID bigint NULL,
		CDDL_MA_HQ varchar(6) NULL,
		CDDL_MA_CUC_HQ varchar(2) NULL,		
		CDDL_NAM_TK smallint NULL,
		CDDL_IS_DUA_VAO smallint null
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_DM_HH_DUA_RA_D ADD
		CDDL_ID int NULL,
		CDDL_VT_ID bigint NULL,
		CDDL_MA_HQ varchar(6) NULL,
		CDDL_MA_CUC_HQ varchar(2) NULL,		
		CDDL_NAM_TK smallint NULL
		
		exec('update ecsCX_DM_HH_DUA_RA_D set CDDL_ID=' + @idColumn)
	end
GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_DinhMuc'
	if @idColumn is null
	begin	
		ALTER TABLE dbo.ecsCX_DinhMuc ADD
				CDDL_ID int NOT NULL IDENTITY (1, 1),	
				CDDL_DM_ID bigint NULL,
				CDDL_MA_HQ varchar(6) NULL,
				CDDL_MA_CUC_HQ varchar(2) NULL,	
				CDDL_VT_ID_SP bigint NULL,
				CDDL_VT_ID_NPL bigint NULL,
				CDDL_TEN_SP nvarchar(256) null,
				CDDL_MA_HS_SP varchar(12) NULL,
				CDDL_MA_DVT_SP char(4) null,
				CDDL_Ten_NPL nvarchar(256) null,
				CDDL_MA_HS_NPL varchar(12) null,
				CDDL_MA_DVT_NPL char(4) null
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_DinhMuc ADD
				CDDL_ID int NULL,	
				CDDL_DM_ID bigint NULL,
				CDDL_MA_HQ varchar(6) NULL,
				CDDL_MA_CUC_HQ varchar(2) NULL,	
				CDDL_VT_ID_SP bigint NULL,
				CDDL_VT_ID_NPL bigint NULL,
				CDDL_TEN_SP nvarchar(256) null,
				CDDL_MA_HS_SP varchar(12) NULL,
				CDDL_MA_DVT_SP char(4) null,
				CDDL_Ten_NPL nvarchar(256) null,
				CDDL_MA_HS_NPL varchar(12) null,
				CDDL_MA_DVT_NPL char(4) null
				
		exec('update ecsCX_DinhMuc set CDDL_ID=' + @idColumn)
	end
				
GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_CT_TOKHAI'
	if @idColumn is null
	begin	
		ALTER TABLE dbo.ecsCX_CT_TOKHAI ADD
				CDDL_ID int NOT NULL IDENTITY (1, 1),	
				CDDL_CT_ID bigint null,
				CDDL_MA_HQ varchar(6) NULL,
				CDDL_MA_CUC_HQ varchar(2) NULL
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_CT_TOKHAI ADD
				CDDL_ID int NULL,	
				CDDL_CT_ID bigint null,
				CDDL_MA_HQ varchar(6) NULL,
				CDDL_MA_CUC_HQ varchar(2) NULL
				
		exec('update ecsCX_CT_TOKHAI set CDDL_ID=' + @idColumn)
	end
		
GO		

ALTER TABLE dbo.ecsCX_CT_TOKHAI_HANG ADD	
	CDDL_CT_ID bigint null,
	CDDL_MA_HQ varchar(6) NULL,
	CDDL_MA_CUC_HQ varchar(2) NULL,
	CDDL_NAM_DK smallint null,
	CDDL_VT_ID bigint null
GO

/* ALTER TABLE dbo.ecsCX_HUY_NPLSP_D ADD
	CDDL_ID int NOT NULL IDENTITY (1, 1),	
	CDDL_CT_ID bigint null,
	CDDL_MA_HQ varchar(6) NULL,
	CDDL_MA_CUC_HQ varchar(2) NULL,
	CDDL_VT_ID bigint null,
	CDDL_TK_ID bigint null,	-- cai nay check lai vi hien tai chua chuyen to khai thi lay dau ra TK_ID
	CDDL_NAM_DK_TK smallint null
GO */

Print '======================================================================='
Print '2. Cap nhat du lieu'

-- 3. Sinh ID cho các bảng dữ liệu
-- 1{xx:id cục hq}{xx:id chi cục}{x:6-DUA VAO 7-DUA RA 5-DM 8-TK 9-HUY NPL SP}{xxxxxxxxxx:CDDL_ID}

declare @IDCucHQ bigint		-- kieu int chi toi da 2^16 -> so co do dai toi da 10 ky tu -> loi
declare @IDChiCuc bigint
set	@IDCucHQ = 47 --dong nai		--{ID cục HQ - tra bảng}
set	@IDChiCuc = 0 -- X47E					--{ID chi cục - tra bảng}

declare @IDDanhMuc bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000	-- nới rộng thì thêm 0 vào 3 chỗ :D

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
	

Print '======================================================================='
Print '3. Thuc hien chuyen doi du lieu'
	
-- 4. Chuyển dữ liệu

print 'From [ecsCX_DM_HH_DUA_VAO_D] to [DCX_DM_HH_DUA_VAO_RA]'
INSERT INTO [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_DM_HH_DUA_VAO_RA
	   (VT_ID
		,MA_HQ
		,MA_CUC_HQ
		,NAM_DK
		,NAM_TK
		,MA_DV
		,MA_HANG
		,TEN_HANG
		,MA_HS
		,MA_DVT
		,MUC_DICH_SU_DUNG
		,LOAI_HANG
		,GHI_CHU_KHAC
		,SO_TN
		,NAM_TN
		,IS_SIGN
		,MESSAGEID
		--REFERENCE
		,IS_DUA_VAO
		)
 SELECT
		CDDL_VT_ID
		,CDDL_MA_HQ
		,CDDL_MA_CUC_HQ
		,NAM_DK
		,CDDL_NAM_TK
		,MA_DV_XN
		,MA_HANG
		,TEN_HANG
		,MA_HS
		,MA_DVT
		,MUC_DICH_SU_DUNG
		,LOAI_HANG
		,GHI_CHU_KHAC
		,SO_DK
		,NAM_DK
		,IS_SIGN
		,0
		--,
		,CDDL_IS_DUA_VAO
 FROM
	 [ecsCX_DM_HH_DUA_VAO_D] 
		 
--
print 'From [ecsCX_DM_HH_DUA_RA_D] to [DCX_DM_HH_DUA_VAO_RA]'		 	 
INSERT INTO [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_DM_HH_DUA_VAO_RA
	   (VT_ID
		,MA_HQ
		,MA_CUC_HQ
		,NAM_DK
		,NAM_TK
		,MA_DV
		,MA_HANG
		,TEN_HANG
		,MA_HS
		,MA_DVT
		,MUC_DICH_SU_DUNG
		,LOAI_HANG
		,GHI_CHU_KHAC
		,SO_TN
		,NAM_TN
		,IS_SIGN
		,MESSAGEID
		--REFERENCE
		,IS_DUA_VAO
		)
 SELECT
		CDDL_VT_ID
		,CDDL_MA_HQ
		,CDDL_MA_CUC_HQ
		,NAM_DK
		,CDDL_NAM_TK
		,MA_DV_XN
		,MA_HANG
		,TEN_HANG
		,MA_HS
		,MA_DVT
		,MUC_DICH_SU_DUNG
		,LOAI_HANG
		,GHI_CHU_KHAC
		,SO_DK
		,NAM_DK
		,IS_SIGN
		,0
		--,
		,CDDL_IS_DUA_VAO
 FROM
	 [ecsCX_DM_HH_DUA_RA_D] 
		 
		 
print 'From [ecsCX_DinhMuc] to [DCX_DINH_MUC]'
INSERT INTO [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_DINH_MUC
	   (
		DM_ID
		,MA_HQ
		,MA_CUC_HQ
		,NAM_DK
		,MA_DV
		,VT_ID_SP
		,MA_SP
		,VT_ID_NPL
		,MA_NPL
		,DINH_MUC
		,TY_LE_HH
		,DINH_MUC_CO_HH
		,TEN_SP
		,MA_HS_SP
		,MA_DVT_SP
		,Ten_NPL
		,MA_HS_NPL
		,MA_DVT_NPL
		,SO_TN
		,NAM_TN
		,IS_SIGN
		-- ,Kiem_Tra_TT
		-- ,Sua_Sau_Kiem_Tra_TT
		,MESSAGE_ID
		-- ,REFERENCE
		)
SELECT
		CDDL_DM_ID
		,CDDL_MA_HQ
		,CDDL_MA_CUC_HQ
		,NAM_DK
		,MA_DV
		,isnull(CDDL_VT_ID_SP,0) CDDL_VT_ID_SP
		,MA_SP
		,isnull(CDDL_VT_ID_NPL,0) CDDL_VT_ID_NPL
		,MA_NPL
		,DINH_MUC
		,TY_LE_HH
		,DINH_MUC_CO_HH
		,CDDL_TEN_SP
		,isnull(CDDL_MA_HS_SP,' ') CDDL_MA_HS_SP
		,isnull(CDDL_MA_DVT_SP, ' ') CDDL_MA_DVT_SP
		,CDDL_Ten_NPL
		,isnull(CDDL_MA_HS_NPL, ' ') CDDL_MA_HS_NPL
		,isnull(CDDL_MA_DVT_NPL, ' ') CDDL_MA_DVT_NPL
		,SO_DK
		,NAM_DK
		,IS_SIGN
		-- ,
		-- ,
		,0
		-- ,
FROM
	[ecsCX_DinhMuc] 
	
print 'From [ecsCX_CT_TOKHAI] to [DCX_CT_TOKHAI]'
INSERT INTO [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_CT_TOKHAI
	   (
		CT_ID
		,MA_HQ
		,MA_CUC_HQ
		,NAM_DK
		,MA_DV_XN
		,TEN_DV_XN
		,MA_DV_DT
		,TEN_DV_DT
		,MA_DV_KB
		,TEN_DV_KB
		,SO_HOP_DONG
		,NGAY_HOP_DONG_HL
		,NGAY_HOP_DONG_HH
		,SO_HOA_DON_TM
		,NGAY_HOA_DON_TM
		,MA_LOAI_HOA_DON
		,MA_NGUOI_NHAN_HANG
		,TEN_NGUOI_NHAN_HANG
		,MA_NGUOI_GIAO_HANG
		,TEN_NGUOI_GIAO_HANG
		,DIA_DIEM_GIAO_HANG
		,TUYEN_DUONG_VAN_CHUYEN
		,MA_CK_NHAP
		,TEN_CK_NHAP
		,MA_CK_XUAT
		,TEN_CK_XUAT
		,MA_GIAO_HANG
		,MSG_ID
		,MSG_REFERENCE
		,MSG_RECEIVE_TIME
		,Trang_Thai
		,LOAI_HINH_NHAP
		,NGAY_DK
		,NGAY_BAT_DAU
		,NGAY_KET_THUC	
		,SO_VAN_DON
		,TEN_VAN_DON
		,NGAY_VAN_DON
		,NGAY_VAN_DON_HH
		,LOAI_VAN_DON
		,TEN_HOP_DONG
		,MA_DV_UT
		,TEN_DV_UT
		,MA_DV_NT
		,TEN_DV_NT
		,MA_NUOC_XN
		,IS_SIGN
		,SO_TN
		,NAM_TN
		)
SELECT
		CDDL_CT_ID
		,CDDL_MA_HQ
		,CDDL_MA_CUC_HQ
		,NAM_DK
		,MA_DV_XN
		,TEN_DV_XN
		,MA_DV_DT
		,TEN_DV_DT
		,MA_DV_KB
		,TEN_DV_KB
		,SO_HOP_DONG
		,NGAY_HOP_DONG_HL
		,NGAY_HOP_DONG_HH
		,SO_HOA_DON_TM
		,NGAY_HOA_DON_TM
		,MA_LOAI_HOA_DON
		,MA_NGUOI_NHAN_HANG
		,TEN_NGUOI_NHAN_HANG
		,MA_NGUOI_GIAO_HANG
		,TEN_NGUOI_GIAO_HANG
		,DIA_DIEM_GIAO_HANG
		,TUYEN_DUONG_VAN_CHUYEN
		,MA_CK_NHAP
		,TEN_CK_NHAP
		,MA_CK_XUAT
		,TEN_CK_XUAT
		,MA_DKGH
		,MSG_ID
		,MSG_REFERENCE
		,MSG_RECEIVE_TIME
		,Trang_Thai
		,LOAI_HINH_NHAP
		,NGAY_DK
		,NGAYBATDAU
		,NGAYKETTHUC
		,SO_VAN_DON
		,TEN_VAN_DON
		,NGAY_VAN_DON
		,NGAY_VAN_DON_HH
		,LOAI_VAN_DON
		,TEN_HOP_DONG
		,MA_DV_UT
		,TEN_DV_UT
		,MA_DV_NT
		,TEN_DV_NT
		,MA_NUOC_XN
		,IS_SIGN
		,SO_TN
		,NAM_TN	
FROM
	[ecsCX_CT_TOKHAI] 
	
print 'From [ecsCX_CT_TOKHAI_HANG] to [DCX_CT_TOKHAI_HANG]'
INSERT INTO [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_CT_TOKHAI_HANG
	   (
		CT_ID
		,MA_HQ
		,MA_CUC_HQ
		,NAM_DK
		,STT_HANG
		,VT_ID
		,MA_HANG
		,TEN_HANG
		,MA_HS
		,MA_HS_MR
		,SO_LUONG
		,MA_DVT_DK
		,MA_DVT_KB
		,TY_LE_QUI_DOI
		,LOAI_HANG
		,NAM_TN
		,SO_TN	   
		)
SELECT
		CDDL_CT_ID
		,CDDL_MA_HQ
		,CDDL_MA_CUC_HQ
		,CDDL_NAM_DK
		,STT_HANG
		,CDDL_VT_ID
		,MA_HANG
		,TEN_HANG
		,MA_HS
		,MA_HS_MR
		,SO_LUONG
		,MA_DVT_DK
		,MA_DVT_KB
		,TY_LE_QUI_DOI
		,LOAI_HANG
		,NAM_TN
		,SO_TN	
FROM
	[ecsCX_CT_TOKHAI_HANG] 
	
Print '======================================================================='
Print '4. Ket thuc: ' + convert(varchar(20),getdate())
Print '======================================================================='

declare @dcx_vr varchar(20)
declare @dcx_dm varchar(20)
declare @dcx_ct_tk varchar(20)
declare @dcx_ct_tk_h varchar(20)
select @dcx_vr=COUNT(*) from [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_DM_HH_DUA_VAO_RA
select @dcx_dm=COUNT(*) from [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_DINH_MUC 
select @dcx_ct_tk=COUNT(*) from [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_CT_TOKHAI
select @dcx_ct_tk_h=COUNT(*) from [ECUSTOMS_01].[eCustoms_His1].[dbo].DCX_CT_TOKHAI_HANG 

print N'SL bản ghi chuyển vào DCX_DM_HH_DUA_VAO_RA: ' + @dcx_vr
print N'SL bản ghi chuyển vào DCX_DINH_MUC: ' + @dcx_dm
print N'SL bản ghi chuyển vào DCX_CT_TOKHAI: ' + @dcx_ct_tk
print N'SL bản ghi chuyển vào DCX_CT_TOKHAI_HANG: ' + @dcx_ct_tk_h

Print '======================================================================='