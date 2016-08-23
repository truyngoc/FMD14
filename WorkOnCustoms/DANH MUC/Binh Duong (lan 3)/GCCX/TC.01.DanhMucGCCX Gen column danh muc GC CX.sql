---------- Them truong du lieu chuyen doi Ma_DVT -----------
-- gia cong
alter table dbo.DDMuc add
			CDDL_Ma_DVT_NPL char(4) null

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

 
alter table dbo.DNPLHD add
			CDDL_Ma_DVT char(4) null

alter table dbo.DSPGC add
			CDDL_Ma_DVT char(4) null

alter table dbo.DThietBi add
			CDDL_Ma_DVT char(4) null

alter table dbo.ecsDHangMau add
			CDDL_Ma_DVT char(4) null
			
-- che xuat
alter table dbo.ecsCX_CT_TOKHAI_HANG add
			CDDL_MA_DVT_DK char(4) null,
			CDDL_MA_DVT_KB char(4) null
			
alter table dbo.ecsCX_DM_HH_DUA_RA_D add
			CDDL_Ma_DVT char(4) null
			
alter table dbo.ecsCX_DM_HH_DUA_VAO_D add
			CDDL_Ma_DVT char(4) null

--chay update trong truong hop dia phuong gui danh muc chua co CDDL_So_HD_HQ_Cap
if exists(select * from sys.columns 
             where Name = N'CDDL_So_HD_HQ_Cap' and Object_ID = Object_ID(N'DHDGC'))
begin
	alter table dbo.DHDGC drop column CDDL_So_HD_HQ_Cap
	
	ALTER TABLE dbo.DHDGC ADD
				CDDL_So_HD_HQ_Cap varchar(32) -- phan sua doi cua DungTQ bam ra 32 ky tu
end	
else
begin
	ALTER TABLE dbo.DHDGC ADD
			CDDL_So_HD_HQ_Cap varchar(32) -- phan sua doi cua DungTQ bam ra 32 ky tu
end		
			
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
    else @MaCu
   end

END

GO
---------------- END tao ham doi Doi_Ma_HQ --------------------------

print N'END=================Chế xuất - Gen column danh mục==============='
print N'--=====================Gia công - update key======================'

declare @IDDanhMuc bigint
set	@IDDanhMuc =10000000000000 + $(IDCucHQ)*100000000000 + $(IDChiCuc)*cast(1000000000 as bigint)

-- --chay update trong truong hop dia phuong gui danh muc chua co CDDL_So_HD_HQ_Cap
-- ALTER TABLE dbo.DHDGC ADD
			-- CDDL_So_HD_HQ_Cap varchar(32) -- phan sua doi cua DungTQ bam ra 32 ky tu

-- Update DHDGC
-- Set
	-- CDDL_So_HD_HQ_Cap = CONVERT(VARCHAR(32),HashBytes('MD5', (Ma_HQHD +'|'+DVGC+'|'+So_HD+'|'+CAST(datepart(year, Ngay_Ky) as varchar(4))+RIGHT('00'+CAST(datepart(M, Ngay_Ky) as varchar(2)),2)+RIGHT('00'+ CAST(datepart(d, Ngay_Ky) as varchar(2)),2))),2)					
			
-- Cap nhat du lieu
Update DHDGC
	 Set	CDDL_HD_ID		= @IDDanhMuc + CDDL_ID
			,CDDL_MA_Cuc_HQ	= SUBSTRING(ma_hqhd,2,2)
			,CDDL_NAM_DK	= datepart(YY,ngay_ky)
			,CDDL_MA_HQ_HD	= SUBSTRING(ma_hqhd,2,2) + SUBSTRING(ma_hqhd,1,1) + SUBSTRING(ma_hqhd,4,10)
			,CDDL_So_HD_HQ_Cap = CONVERT(VARCHAR(32),HashBytes('MD5', (SUBSTRING(ma_hqhd,2,2) + SUBSTRING(ma_hqhd,1,1) + SUBSTRING(ma_hqhd,4,10) +'|'+DVGC+'|'+ dbo.fcnTCVN2Unicode(So_HD)+'|'+CAST(datepart(year, Ngay_Ky) as varchar(4))+RIGHT('00'+CAST(datepart(M, Ngay_Ky) as varchar(2)),2)+RIGHT('00'+ CAST(datepart(d, Ngay_Ky) as varchar(2)),2))),2)

Update DNPLHD
	 Set	CDDL_VT_ID		= @IDDanhMuc + 100000000 + CDDL_ID
			,CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)
Update DSPGC
	 Set	CDDL_VT_ID		= @IDDanhMuc + 200000000 + CDDL_ID
			,CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)
Update DThietBi
	 Set	CDDL_VT_ID		= @IDDanhMuc + 300000000 + CDDL_ID
			,CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)
Update ecsDHangMau
	 Set	CDDL_VT_ID		= @IDDanhMuc + 400000000 + CDDL_ID
			,CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)
								
	--mất ~2phút cho bảng ~2.5M bản ghi
Update DDMuc
	 Set	CDDL_DM_ID		= @IDDanhMuc + 500000000 + CDDL_ID
			,CDDL_Ma_DVT_NPL = dbo.Doi_Ma_DVT(MA_DVT)

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
	,a.CDDL_P_CODE		= SUBSTRING(a.P_CODE,2,50)
	,a.CDDL_HS_CODE		= LEFT(HS_CODE,12)
From DNPLHD a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng cho SP GC
update a
set	a.CDDL_HD_ID		= hd.CDDL_HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
	,a.CDDL_P_CODE		= SUBSTRING(a.P_CODE,2,50)
From DSPGC a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng cho Thiết bị GC
update a
set	a.CDDL_HD_ID		= hd.CDDL_HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
	,a.CDDL_P_CODE		= SUBSTRING(a.P_CODE,2,50)
	,a.CDDL_HS_CODE		= left(HS_Code,12)
	,a.CDDL_XUAT_XU		= left(Xuat_Xu,3)
	,a.CDDL_TINHTRANG	= case TinhTrang when '0' then '0' else '1' end
From DThietBi a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng cho Hàng mẫu GC
update a
set	a.CDDL_HD_ID		= hd.CDDL_HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
	,a.CDDL_P_CODE		= SUBSTRING(a.P_CODE,2,50)
From ecsDHangMau a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng, NPL, SP cho đinh mức GC
--~10 phút cho 2M bản ghir
update dm
set	dm.CDDL_HD_ID		= hd.CDDL_HD_ID
	,dm.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,dm.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,dm.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
	,dm.CDDL_SPP_CODE	= SUBSTRING(dm.SPP_Code,2,50)
	,dm.CDDL_NPLP_CODE	= SUBSTRING(dm.NPLP_Code,2,50)
from DDMuc dm join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky

update dm
set	dm.CDDL_VT_ID_SP	= s.CDDL_VT_ID,
	dm.CDDL_MA_DVT_SP	= dbo.Doi_Ma_DVT(isnull(dm.MA_DVT_SP,s.MA_DVT))
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
print N'END====================Gia công - update key======================'
print N'--=====================Chế xuất - Update key===================='
update ecsCX_DM_HH_DUA_VAO_D
set
	CDDL_VT_ID = @IDDanhMuc + 600000000 + CDDL_ID
	,CDDL_MA_HQ	= SUBSTRING(MA_HQTN,2,2) + SUBSTRING(MA_HQTN,1,1) + SUBSTRING(MA_HQTN,4,10)
	,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQTN,2,2)		
	,CDDL_IS_DUA_VAO = 1	-- dua vao
	,CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)
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
	,CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)
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
	
-- update thong tin ecsCX_DinhMuc
update d
set 
	CDDL_VT_ID_NPL = v.CDDL_VT_ID
	,CDDL_Ten_NPL = v.TEN_HANG
	,CDDL_MA_HS_NPL = v.MA_HS
	,CDDL_MA_DVT_NPL = v.CDDL_Ma_DVT	--v.MA_DVT
from ecsCX_DinhMuc d
	join ecsCX_DM_HH_DUA_VAO_D v on d.MA_NPL = v.MA_HANG and d.MA_DV = v.MA_DV_XN and d.MA_HQ = v.MA_HQTN and LOAI_HANG = 1 -- NPL
	
-- SP		
update d
set CDDL_VT_ID_SP = r.CDDL_VT_ID
	,CDDL_TEN_SP = r.TEN_HANG
	,CDDL_MA_HS_SP = r.MA_HS
	,CDDL_MA_DVT_SP = r.CDDL_Ma_DVT		--r.MA_DVT
from ecsCX_DinhMuc d
	join ecsCX_DM_HH_DUA_RA_D r on d.MA_SP = r.MA_HANG and d.MA_DV = r.MA_DV_XN and d.MA_HQ = r.MA_HQTN and LOAI_HANG = 2 -- SP
	
-- update thong tin ecsCX_CT_TOKHAI_HANG
update h
set
	CDDL_CT_ID = t.CDDL_CT_ID
	,CDDL_MA_HQ = t.CDDL_MA_HQ
	,CDDL_MA_CUC_HQ = t.CDDL_MA_CUC_HQ
	,CDDL_NAM_DK = t.NAM_DK
	,CDDL_MA_DVT_DK = dbo.Doi_Ma_DVT(h.MA_DVT_DK)
	,CDDL_MA_DVT_KB = dbo.Doi_Ma_DVT(h.MA_DVT_KB)
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

print N'END====================Chế xuất - Update key===================='

if exists (select MaHQ
			From
			 (select distinct CDDL_MA_HQ_HD as MaHQ from DDMUC
				union
				select distinct CDDL_MA_HQ_HD as MaHQ from DHDGC
				union
				select distinct CDDL_MA_HQ_HD as MaHQ from DLOAISPGC
				union
				select distinct CDDL_MA_HQ_HD as MaHQ from DNPLHD
				union
				select distinct CDDL_MA_HQ_HD as MaHQ from DSPGC
				union
				select distinct CDDL_MA_HQ_HD as MaHQ from DThietBi
				union
				select distinct CDDL_MA_HQ_HD as MaHQ from ecsDHangMau
				union
				select distinct CDDL_MA_HQ as MaHQ from ecsCX_CT_TOKHAI
				union
				select distinct CDDL_MA_HQ as MaHQ from ecsCX_CT_TOKHAI_HANG
				union
				select distinct CDDL_MA_HQ as MaHQ from ecsCX_DM_HH_DUA_RA_D
				union
				select distinct CDDL_MA_HQ as MaHQ from ecsCX_DM_HH_DUA_VAO_D) a
			Where MaHQ in ('01AB02','01AB04','01AB05','01DD01','01DD03','01DD05','01PM','01PM01','01TE','01TE02','01TE03','02AB','02AB04','02IK02','02IK03','02IK04','02XF','02XF01','02XF02','11BB','11BB01','11BG','11BG01','15BB01','15BB02','15BE01','15BE02','15BE03','15BE04','18BA01','18BA02','18BA03','18BB','18BB01','20BE','20BF','27BB','27BB01','30CF','30CF01','31CD01','31CD02','31CD03','40BB01','40BB02','40PD01','40PD02','43IH02','43NK','43NK01','43NK02','45NF02','45NF03','47CD','47CD01','47CD02','47CI','47CI01','48BF03','48BF04','51CC','51CC01','61BA','61BA01','61PA','61PA02','01TE01','01PO')
			)
			
BEgin
			update DDMuc 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)

			update DHDGC 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)
				,CDDL_So_HD_HQ_Cap = CONVERT(VARCHAR(32),HashBytes('MD5', (dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD) +'|'+DVGC+'|'+ dbo.fcnTCVN2Unicode(So_HD)+'|'+CAST(datepart(year, Ngay_Ky) as varchar(4))+RIGHT('00'+CAST(datepart(M, Ngay_Ky) as varchar(2)),2)+RIGHT('00'+ CAST(datepart(d, Ngay_Ky) as varchar(2)),2))),2)
			
			
			update DLOAISPGC 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)

			update DNPLHD 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)

			update DSPGC 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)

			update DThietBi 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)

			update ecsDHangMau 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)

			update ecsCX_CT_TOKHAI 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(CDDL_MA_HQ)

			update ecsCX_CT_TOKHAI_HANG 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(CDDL_MA_HQ)

			update ecsCX_DM_HH_DUA_RA_D 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(CDDL_MA_HQ)

			update ecsCX_DM_HH_DUA_VAO_D 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(CDDL_MA_HQ)

			update ecsCX_DinhMuc 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(CDDL_MA_HQ)

end

GO