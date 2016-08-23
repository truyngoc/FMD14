---------- Them truong du lieu chuyen doi Ma_DVT -----------
-- alter table dbo.SNPL add
			-- CDDL_Ma_DVT char(4) null

-- alter table dbo.SSP add
			-- CDDL_Ma_DVT char(4) null

---------------- tao ham doi MA_DVT --------------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doi_Ma_DVT]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Doi_Ma_DVT]
GO			
			
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[Doi_Ma_DVT] 
(
	@MaCu char(4)
)
RETURNS char(4)
AS
BEGIN
	return case @MaCu
				when '1  ' then 'GRM '
				when '2  ' then 'KGM '
				when '3  ' then 'MTR '
				when '4  ' then 'LTR '
				when '6  ' then 'MTQ '
				when '7  ' then 'KWH '
				when '8  ' then 'PR  '
				when '9  ' then 'CT  '
				when '10 ' then 'UNC '
				when '11 ' then 'PCE '
				when '12 ' then 'UNT'
				when '14 ' then 'MTK '
				when '15 ' then 'DZN'
				when '16 ' then 'TNE '
				when '17 ' then 'PCE '
				when '21 ' then 'KL'
				when '27 ' then 'UNQ '
				when '29 ' then 'UNV'
				when '33 ' then 'SET '
				when '36 ' then 'ROL '
				when '39 ' then 'UNK'
				when '40 ' then 'YRD '
				when '41 ' then 'UNK'
				when '45 ' then 'FTK '
				when '47 ' then 'UNA'
				when '48 ' then 'UNA'
				when '49 ' then 'UNA'
				when '50 ' then 'UNY '
				when '57 ' then 'UNV'
				when '58 ' then 'UNB'
				when '64 ' then 'YDK'
				when '66 ' then 'MLT '
				when '71 ' then 'UNH '
				when '72 ' then 'UNU '
				when '73 ' then 'UNL'
				when '75 ' then 'UNK'
				when '76 ' then 'UNL'
				when '84 ' then 'UNB'
				when '89 ' then 'PR  '
				when '90 ' then 'PR  '
				when '91 ' then 'PR  '
				when '95 ' then 'LBR '
				when '96 ' then 'UNT'
				when '97 ' then 'GRO'
				when '99 ' then 'UND'
				else @MaCu
			end

END

GO			
			
print N'--=====================SXXK - update key======================'
-- declare @IDCucHQ bigint
-- declare @IDChiCuc bigint
-- set	@IDCucHQ = {ID Cục: tra bảng}
-- set	@IDChiCuc = 0

declare @IDDanhMuc bigint
set	@IDDanhMuc =10000000000000 + $(IDCucHQ)*100000000000 + $(IDChiCuc)*1000000000

print N'update SNPL'
Update SNPL
	 Set	CDDL_VT_ID		= @IDDanhMuc + 100000000 + CDDL_ID
			,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQ,2,2)
			,CDDL_MA_HQ	= SUBSTRING(MA_HQ,2,2) + SUBSTRING(MA_HQ,1,1) + SUBSTRING(MA_HQ,4,10)
			,CDDL_MA_DVT = dbo.Doi_Ma_DVT(Ma_DVT)
			,CDDL_NAM_TK = case upper(LEFT(MA_NPL,1))
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

print N'update SSP'								
Update SSP
	 Set	CDDL_VT_ID		= @IDDanhMuc + 200000000 + CDDL_ID
			,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQ,2,2)
			,CDDL_MA_HQ	= SUBSTRING(MA_HQ,2,2) + SUBSTRING(MA_HQ,1,1) + SUBSTRING(MA_HQ,4,10)		
			,CDDL_MA_DVT = dbo.Doi_Ma_DVT(Ma_DVT)
			,CDDL_NAM_TK = case upper(LEFT(MA_SP,1))
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

print N'update DDINHMUC'								
Update DDINHMUC
	 Set	CDDL_DM_ID		= @IDDanhMuc + 500000000 + CDDL_ID
			,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQ,2,2)
			,CDDL_MA_HQ	= SUBSTRING(MA_HQ,2,2) + SUBSTRING(MA_HQ,1,1) + SUBSTRING(MA_HQ,4,10)
								
--update thông tin sản phẩm cho định mức SXXK
update dm
set	dm.CDDL_VT_ID_SP	= s.CDDL_VT_ID
	,dm.CDDL_TEN_VAT_TU_SP	= s.TEN_SP
	,dm.CDDL_MA_DVT_SP	= s.CDDL_MA_DVT	--s.MA_DVT
	,dm.CDDL_MA_HS_SP	= s.MA_HS
from DDINHMUC dm join SSP s on dm.MA_SP = s.MA_SP and dm.MA_DV=s.MA_DV and dm.MA_HQ=s.MA_HQ

--update thông tin NPL cho định mức SXXK
update dm
set	dm.CDDL_VT_ID_NPL	= l.CDDL_VT_ID
	,dm.CDDL_TEN_VAT_TU_NPL	= l.TEN_NPL
	,dm.CDDL_MA_DVT_NPL	= l.CDDL_MA_DVT	--l.MA_DVT
	,dm.CDDL_MA_HS_NPL	= l.MA_HS
from DDINHMUC dm join SNPL l on dm.MA_NPL=l.MA_NPL and dm.MA_DV=l.MA_DV and dm.MA_HQ=l.MA_HQ

print N'END====================SXXK - Update key======================'