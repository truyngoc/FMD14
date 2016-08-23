-- ---------- Them truong du lieu chuyen doi Ma_DVT -----------
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
				when '0  ' then 'USD '
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
				when '12 ' then 'UNT '
				when '13 ' then 'BBL '
				when '14 ' then 'MTK '
				when '15 ' then 'DZN '
				when '16 ' then 'TNE '
				when '17 ' then 'PCE '
				when '18 ' then 'KUNC'
				when '19 ' then 'KPCE'
				when '20 ' then 'KUNQ'
				when '21 ' then 'KL  '
				when '22 ' then 'KROL'
				when '23 ' then 'KMTR'
				when '24 ' then 'KPR '
				when '25 ' then 'KPRO'
				when '26 ' then 'KVA '
				when '27 ' then 'UNQ '
				when '28 ' then 'KMTK'
				when '29 ' then 'UNV '
				when '30 ' then 'KPCE'
				when '31 ' then 'KSET'
				when '32 ' then 'KPKG'
				when '33 ' then 'SET '
				when '34 ' then 'KMTQ'
				when '35 ' then 'PRO '
				when '36 ' then 'ROL '
				when '37 ' then 'EXCH'
				when '38 ' then 'KUNV'
				when '39 ' then 'UNK '
				when '40 ' then 'YRD '
				when '41 ' then 'UNK '
				when '42 ' then 'TAM '
				when '43 ' then 'SOI '
				when '44 ' then 'HKGM'
				when '45 ' then 'FTK '
				when '46 ' then 'UNVI'
				when '47 ' then 'UNA '
				when '48 ' then 'UNA '
				when '49 ' then 'UNA '
				when '50 ' then 'UNY '
				when '51 ' then 'STER'
				when '52 ' then 'BAN '
				when '53 ' then 'PKG '
				when '54 ' then 'LOT '
				when '55 ' then 'CONT'
				when '56 ' then 'CHI '
				when '57 ' then 'UNV '
				when '58 ' then 'UNB '
				when '59 ' then 'TO  '
				when '60 ' then 'UNA '
				when '61 ' then 'RAM '
				when '62 ' then 'INC '
				when '63 ' then 'INCK'
				when '64 ' then 'YDK '
				when '65 ' then 'UNT '
				when '66 ' then 'MLT '
				when '67 ' then 'CEN '
				when '69 ' then 'MMTR'
				when '70 ' then 'MGRM'
				when '71 ' then 'UNH '
				when '72 ' then 'UNU '
				when '73 ' then 'UNL '
				when '74 ' then 'HMTR'
				when '75 ' then 'UNK '
				when '76 ' then 'UNL '
				when '79 ' then 'DUNK'
				when '80 ' then 'KPIP'
				when '81 ' then 'DPCE'
				when '82 ' then 'HPCE'
				when '83 ' then 'BICH'
				when '84 ' then 'UNB '
				when '85 ' then 'DMTR'
				when '86 ' then 'CUC '
				when '87 ' then 'HFT '
				when '88 ' then 'PCE '
				when '89 ' then 'PR  '
				when '90 ' then 'PR  '
				when '91 ' then 'PR  '
				when '92 ' then 'BANG'
				when '93 ' then 'BAG '
				when '95 ' then 'LBR '
				when '96 ' then 'UNT '
				when '97 ' then 'GRO '
				when '99 ' then 'UND '
				when '98 ' then 'LIEU'
				when '100' then 'CUM '
				when '101' then 'MM3 '
				when '102' then 'CM3 '
				when '103' then 'MM2 '
				when '104' then 'CM2 '
				when '105' then 'DM2 '
				when '106' then 'DM  '
				when '109' then 'KIT '
				when '120' then 'UNIT'
				when '121' then 'LBS '
				when '46 ' then 'VI  '
				when '94 ' then 'PIP '
				else @MaCu
			end

END

GO			
			
---------------- tao ham doi Doi_Ma_HQ --------------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doi_Ma_HQ]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Doi_Ma_HQ]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Doi_Ma_HQ] 
(
 @MaCu varchar(6)
)
RETURNS varchar(4)
AS
BEGIN
 return case @MaCu
    when '01AB02' then '01B1'
    when '01AB04' then '01B2'
    when '01AB05' then '01B3'
    when '01DD01' then '01D1'
    when '01DD03' then '01D2'
    when '01DD05' then '01D3'
    when '01PM' then '01M1'
    when '01PM01' then '01M2'
    when '01TE' then '01E1'
    when '01TE02' then '01E2'
    when '01TE03' then '01E3'
    when '02AB' then '02B1'
    when '02AB04' then '02B2'
    when '02IK02' then '02K1'
    when '02IK03' then '02K2'
    when '02IK04' then '02K3'
    when '02XF' then '02F1'
    when '02XF01' then '02F2'
    when '02XF02' then '02F3'
    when '11BB' then '11B1'
    when '11BB01' then '11B2'
    when '11BG' then '11G1'
    when '11BG01' then '11G2'
    when '15BB01' then '15B1'
    when '15BB02' then '15B2'
    when '15BE01' then '15E1'
    when '15BE02' then '15E2'
    when '15BE03' then '15E3'
    when '15BE04' then '15E4'
    when '18BA01' then '18A1'
    when '18BA02' then '18A2'
    when '18BA03' then '18A3'
    when '18BB' then '18B1'
    when '18BB01' then '18B2'
    when '20BE' then '20B1'
    when '20BF' then '20B2'
    when '27BB' then '27B1'
    when '27BB01' then '27B2'	
	when '27CF' then '27F1'
	when '27CF01' then '27F2'
    when '30CF' then '30F1'
    when '30CF01' then '30F2'
    when '31CD01' then '31D1'
    when '31CD02' then '31D2'
    when '31CD03' then '31D3'
    when '40BB01' then '40B1'
    when '40BB02' then '40B2'
    when '40PD01' then '40D1'
    when '40PD02' then '40D2'
    --when '43IH' then '43H1'
    when '43IH02' then '43H2'
    when '43NK' then '43K1'
    when '43NK01' then '43K2'
    when '43NK02' then '43K3'
    when '45NF02' then '45F1'
    when '45NF03' then '45F2'
	when '47CD' then '47D1'
    when '47CD01' then '47D2'
    when '47CD02' then '47D3'
    when '47CI' then '47I1'
    when '47CI01' then '47I2'
    when '48BF03' then '48F1'
    when '48BF04' then '48F2'
    when '51CC' then '51C1'
    when '51CC01' then '51C2'
    when '61BA' then '61A1'
    when '61BA01' then '61A2'
    when '61PA' then '61A3'
    when '61PA02' then '61A4'
	when '01TE01' then '01NV'
	when '01PO' then '01PR'
	when '12BB' then '12B1'
	when '12BB01' then '12B2'
	when '12BH' then '12H1'
	when '12BH01' then '12H2'
	when '12PF' then '12F1'
	when '12PF01' then '12F2'
	when '60NC' then '60C1'
	when '60BF' then '60C2'
    else @MaCu
   end

END

GO
---------------- END tao ham doi Doi_Ma_HQ --------------------------
			
print N'--=====================SXXK - update key======================'
-- declare @IDCucHQ bigint
-- declare @IDChiCuc bigint
-- set	@IDCucHQ = {ID Cục: tra bảng}
-- set	@IDChiCuc = 0

declare @IDDanhMuc bigint
set	@IDDanhMuc =10000000000000 + $(IDCucHQ)*100000000000 + $(IDChiCuc)*cast(1000000000 as bigint)

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

if exists (select MaHQ
			From
			 (select distinct CDDL_MA_HQ as MaHQ from DDINHMUC
				union
				select distinct CDDL_MA_HQ as MaHQ from SNPL
				union
				select distinct CDDL_MA_HQ as MaHQ from SSP
			) a
			Where MaHQ in ('01AB02','01AB04','01AB05','01DD01','01DD03','01DD05','01PM','01PM01','01TE','01TE02','01TE03','02AB','02AB04','02IK02','02IK03','02IK04','02XF','02XF01','02XF02','11BB','11BB01','11BG','11BG01','15BB01','15BB02','15BE01','15BE02','15BE03','15BE04','18BA01','18BA02','18BA03','18BB','18BB01','20BE','20BF','27BB','27BB01','30CF','30CF01','31CD01','31CD02','31CD03','40BB01','40BB02','40PD01','40PD02','43IH02','43NK','43NK01','43NK02','45NF02','45NF03','47CD','47CD01','47CD02','47CI','47CI01','48BF03','48BF04','51CC','51CC01','61BA','61BA01','61PA','61PA02','01TE01','01PO','12BB','12BB01','12BH','12BH01','12PF','12PF01','60NC','60BF','27CF','27CF01')
			)
			
BEgin
		update DDINHMUC 
		set CDDL_MA_HQ = dbo.Doi_Ma_HQ(CDDL_MA_HQ)

		update SNPL 
		set CDDL_MA_HQ = dbo.Doi_Ma_HQ(CDDL_MA_HQ)

		update SSP 
		set CDDL_MA_HQ = dbo.Doi_Ma_HQ(CDDL_MA_HQ)

end
