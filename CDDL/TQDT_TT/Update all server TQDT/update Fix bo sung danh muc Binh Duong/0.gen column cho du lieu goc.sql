print '1.Tao key cho cac bang do lai du lieu'
	ALTER TABLE DNPLHD ADD CONSTRAINT
		PK_DNPLHD PRIMARY KEY CLUSTERED 
		(
		So_HD,
		Ma_HQHD,
		DVGC,
		Ngay_Ky,
		P_Code
		)
	GO
	
	ALTER TABLE DSPGC ADD CONSTRAINT
		PK_DSPGC PRIMARY KEY CLUSTERED 
		(
		So_HD,
		Ma_HQHD,
		DVGC,
		Ngay_Ky,
		P_Code
		)
	GO
	
	ALTER TABLE DDMuc ADD CONSTRAINT
		PK_DDMuc PRIMARY KEY CLUSTERED 
		(
		So_HD,
		Ma_HQHD,
		Ngay_Ky,
		DVGC,
		SPP_Code,
		NPLP_Code
		)
	GO
	
print '2.Gen cot identity'
	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DSPGC'
	if @idColumn is null
	begin
		ALTER TABLE dbo.DSPGC ADD
			CDDL_ID int NOT NULL IDENTITY (1, 1)
	end
	GO	
	
	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DNPLHD'
	if @idColumn is null
	begin
		ALTER TABLE dbo.DNPLHD ADD
			CDDL_ID int NOT NULL IDENTITY (1, 1)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DDMuc'
	if @idColumn is null
	begin
		--mất ~10phút cho bảng ~2M bản ghi
		ALTER TABLE dbo.DDMuc ADD
			CDDL_ID int NOT NULL IDENTITY (1, 1)
	end
	GO
	

print '3.Them cot cddl'
	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DNPLHD'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.DNPLHD ADD
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL,
			CDDL_HS_CODE varchar(12) NULL
	end
	else
	begin
		ALTER TABLE dbo.DNPLHD ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL,
			CDDL_HS_CODE varchar(12) NULL
		exec('update DNPLHD set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DSPGC'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.DSPGC ADD
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL
	end
	else
	begin
		ALTER TABLE dbo.DSPGC ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL
		exec('update DSPGC set CDDL_ID=' + @idColumn)
	end
	GO	
	
	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DDMuc'
	if @idColumn = 'CDDL_ID'
	begin
		--mất ~10phút cho bảng ~2M bản ghi
		ALTER TABLE dbo.DDMuc ADD
			CDDL_DM_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_VT_ID_SP bigint NULL,
			CDDL_VT_ID_NPL bigint NULL,
			CDDL_MA_DVT_SP varchar(3) NULL,
			CDDL_SPP_Code varchar(50) NULL,
			CDDL_NPLP_Code varchar(50) NULL
	end
	else
	begin
		ALTER TABLE dbo.DDMuc ADD
			CDDL_ID int,
			CDDL_DM_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_VT_ID_SP bigint NULL,
			CDDL_VT_ID_NPL bigint NULL,
			CDDL_MA_DVT_SP varchar(3) NULL,
			CDDL_SPP_Code varchar(50) NULL,
			CDDL_NPLP_Code varchar(50) NULL
		exec('update DDMuc set CDDL_ID=' + @idColumn)
	end
	GO
	
print '4.Bo sung cot cddl neu can'	

	alter table dbo.DDMuc add
				CDDL_Ma_DVT_NPL char(4) null
	GO

	if exists(select * from sys.columns 
				 where Name = N'CDDL_MA_DVT_SP' and Object_ID = Object_ID(N'DDMuc'))
	 begin
		 -- Column Exists
		 alter table DDMuc drop column CDDL_MA_DVT_SP
		 
		 alter table dbo.DDMuc add
				 CDDL_MA_DVT_SP char(4) null
	 end
	 else
	 begin
		 alter table dbo.DDMuc add
				 CDDL_MA_DVT_SP char(4) null
	end
	GO
	 
	alter table dbo.DNPLHD add
				CDDL_Ma_DVT char(4) null
	GO

	alter table dbo.DSPGC add
				CDDL_Ma_DVT char(4) null
	GO

print '5.Tao cac function ho tro'

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
				when '107' then 'SYS '
				when '122' then 'FOT '
				when '45 ' then 'FTK '
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
	when '01TE01' then '01NV'
	when '01PO' then '01PR'	
	when '02AB' then '02B1'
	when '02AB04' then '02B4'
	when '02CH' then '02H1'
	when '02CH01' then '02H2'
	when '02CL' then '02H3'
	when '02XF' then '02F1'
	when '02XF01' then '02F2'
	when '02XF02' then '02F3'
	when '02CI02' then '02CI'
	when '02IK02' then '02K1'
	when '02IK03' then '02K2'
	when '02IK04' then '02K3'
    when '11BB' then '11B1'
    when '11BB01' then '11B2'
    when '11BG' then '11G1'
    when '11BG01' then '11G2'
	when '12BB' then '12B1'
	when '12BB01' then '12B2'
	when '12BH' then '12H1'
	when '12BH01' then '12H2'
	when '12PF' then '12F1'
	when '12PF01' then '12F2'	
	when '13SG' then '13G1'
	when '13SG01' then '13G2'
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
    when '31CD01' then '31D2'
    when '31CD02' then '31D1'
    when '40PD' then '40D1'
    --when '43IH' then '43H1'
    when '43IH02' then '43H2'
    when '43NK' then '43K1'
    when '43NK01' then '43K2'
    when '43NE' then '43K3'
	when '45BB' then '45B1'
    when '45BB01' then '45B2'
    when '45BC' then '45C1'
    when '45BC01' then '45C2'
    when '45NF' then '45F1'
    when '45NF03' then '45F2'
	when '47CD' then '47D1'
    when '47CD01' then '47D2'
    when '47CD02' then '47D3'
    when '47CI' then '47I1'
    when '47CI01' then '47I2'
    when '48BF03' then '48F1'
    when '48BF04' then '48F2'
	when '49CC' then '49C1'
	when '49CC01' then '49C2'
    when '51CC' then '51C1'
    when '51CC01' then '51C2'
	when '60NC' then '60C1'
	when '60BF' then '60C2'
    else @MaCu
   end

END

GO
---------------- END tao ham doi Doi_Ma_HQ --------------------------			

---------------- tao ham doi fcnTCVN2Unicode --------------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fcnTCVN2Unicode]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fcnTCVN2Unicode]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create FUNCTION [dbo].[fcnTCVN2Unicode] (@strInput VARCHAR(4000))
RETURNS NVARCHAR(4000)
AS
BEGIN
    DECLARE @TCVN CHAR(671)
    DECLARE @UNICODE CHAR(671)
    SET @TCVN = ',184 ,181 ,182 ,183 ,185 ,168 ,190 ,187 ,188 ,189 ,198 ,169 ,202 ,199 ,200 ,201 ,203 ,208 ,204 ,206 ,207 ,209 ,170 ,213 ,210 ,211 ,212 ,214 ,221 ,215 ,216 ,220 ,222 ,227 ,223 ,225 ,226 ,228 ,171 ,232 ,229 ,230 ,231 ,233 ,172 ,237 ,234 ,235 ,236 ,238 ,243 ,239 ,241 ,242 ,244 ,173 ,248 ,245 ,246 ,247 ,249 ,253 ,250 ,251 ,252 ,254 ,174 ,184 ,181 ,182 ,183 ,185 ,161 ,190 ,187 ,188 ,189 ,198 ,162 ,202 ,199 ,200 ,201 ,203 ,208 ,204 ,206 ,207 ,209 ,163 ,213 ,210 ,211 ,212 ,214 ,221 ,215 ,216 ,220 ,222 ,227 ,223 ,225 ,226 ,228 ,164 ,232 ,229 ,230 ,231 ,233 ,165 ,237 ,234 ,235 ,236 ,238 ,243 ,239 ,241 ,242 ,244 ,166 ,248 ,245 ,246 ,247 ,249 ,253 ,250 ,251 ,252 ,254 ,167 ,'
    SET @UNICODE = ',225 ,224 ,7843,227 ,7841,259 ,7855,7857,7859,7861,7863,226 ,7845,7847,7849,7851,7853,233 ,232 ,7867,7869,7865,234 ,7871,7873,7875,7877,7879,237 ,236 ,7881,297 ,7883,243 ,242 ,7887,245 ,7885,244 ,7889,7891,7893,7895,7897,417 ,7899,7901,7903,7905,7907,250 ,249 ,7911,361 ,7909,432 ,7913,7915,7917,7919,7921,253 ,7923,7927,7929,7925,273 ,193 ,192 ,7842,195 ,7840,258 ,7854,7856,7858,7860,7862,194 ,7844,7846,7848,7850,7852,201 ,200 ,7866,7868,7864,202 ,7870,7872,7874,7876,7878,205 ,204 ,7880,296 ,7882,211 ,210 ,7886,213 ,7884,212 ,7888,7890,7892,7894,7896,416 ,7898,7900,7902,7904,7906,218 ,217 ,7910,360 ,7908,431 ,7912,7914,7916,7918,7920,221 ,7922,7926,7928,7924,272 ,'
    IF @strInput IS NULL RETURN NULL
    IF @strInput = '' RETURN NULL
    DECLARE @strOutput NVARCHAR(4000)
    DECLARE @COUNTER INT
    DECLARE @POSITION INT
    SET @COUNTER = 1
    SET @strOutput = ''
    WHILE (@COUNTER <= LEN(@strInput))
    BEGIN
        SET @POSITION = CHARINDEX(','+CONVERT(CHAR(4),ASCII(SUBSTRING(@strInput, @COUNTER, 1)))+',', @TCVN, 1)
        IF @POSITION > 0
            SET @strOutput = @strOutput + NCHAR(CONVERT(INT,SUBSTRING(@UNICODE, @POSITION+1, 4)))
        ELSE
            SET @strOutput = @strOutput + SUBSTRING(@strInput, @COUNTER, 1)
        SET @COUNTER = @COUNTER + 1
    END 
    RETURN @strOutput
END

GO
---------------- END tao ham doi fcnTCVN2Unicode --------------------------

-- print '6.Gen column de cddl'
-- declare @IDCucHQ bigint
-- declare @IDChiCuc bigint
-- set	@IDCucHQ = 43
-- set	@IDChiCuc = 1

-- declare @IDDanhMuc bigint,@IDDanhMucMax bigint
-- set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*cast(1000000000 as bigint)
-- set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*cast(1000000000 as bigint)
