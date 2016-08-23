declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = {ID Cục: tra bảng}
set	@IDChiCuc = {ID chi cục: tra bảng}

declare @IDDanhMuc bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000

Update SNPL
	 Set	CDDL_VT_ID		= @IDDanhMuc + 100000000 + CDDL_ID
			,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQ,2,2)
			,CDDL_MA_HQ	= SUBSTRING(MA_HQ,2,2) + SUBSTRING(MA_HQ,1,1) + SUBSTRING(MA_HQ,4,10)
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
								
Update SSP
	 Set	CDDL_VT_ID		= @IDDanhMuc + 200000000 + CDDL_ID
			,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQ,2,2)
			,CDDL_MA_HQ	= SUBSTRING(MA_HQ,2,2) + SUBSTRING(MA_HQ,1,1) + SUBSTRING(MA_HQ,4,10)		
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

Update DDINHMUC
	 Set	CDDL_DM_ID		= @IDDanhMuc + 500000000 + CDDL_ID
			,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQ,2,2)
			,CDDL_MA_HQ	= SUBSTRING(MA_HQ,2,2) + SUBSTRING(MA_HQ,1,1) + SUBSTRING(MA_HQ,4,10)
								
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