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

print N'--============ Kết xuất dữ liệu danh mục từ ECUSTOMS_ONLINE ======================'

declare @ma_hq_tk nvarchar(max)
-- danh sach ma hq to khai
select @ma_hq_tk = coalesce(@ma_hq_tk + ',' 
				+ '''' + dbo.Doi_Ma_HQ(rtrim(SUBSTRING(Ma_HQHD,2,2) + SUBSTRING(Ma_HQHD,1,1) + SUBSTRING(Ma_HQHD,4,10)))
				+ '''','''' + dbo.Doi_Ma_HQ(rtrim(SUBSTRING(Ma_HQHD,2,2) + SUBSTRING(Ma_HQHD,1,1) + SUBSTRING(Ma_HQHD,4,10)))+ '''')
from 
(
select distinct Ma_HQHD from DNPLHD
union
select distinct Ma_HQHD from DSPGC
union
select distinct Ma_HQHD from DDMUC
) a
group by Ma_HQHD



-- declare @ma_hq_tk varchar(250)

-- set @ma_hq_tk = '''01E1'''

-- chuyen du lieu tu Ecustoms_Online vao SLXNK_CC
declare @DBName varchar(100)
-- ECUSTOMS_01	: linkserver to ECUSTOMS_ONLINE
-- eCustoms		: database name	eCustoms=ECUSTOMS_ONLINE
set	@DBName='$(lnksrv_name).$(db_online).dbo.'

print 'bat dau export tu online nao'

exec('select * into DGC_HD from ' + @DBName + 'vDGC_HD
		where Ma_HQ_HD in ' + '(' + @ma_hq_tk + ')')

print N'--============ add PK ========================'
ALTER TABLE DGC_HD ADD CONSTRAINT
	PK_DGC_HD PRIMARY KEY CLUSTERED 
	(
	HD_ID,
	Ma_HQ_HD
	)	