-- -- 1. DDMuc
-- if exists(select * from sys.columns 
            -- where Name = N'CDDL_Ma_DVT_NPL' and Object_ID = Object_ID(N'DDMuc'))
-- begin
    -- -- Column Exists
	-- alter table DDMuc drop column CDDL_Ma_DVT_NPL
-- end
-- else
-- begin
	-- alter table dbo.DDMuc add
			-- CDDL_Ma_DVT_NPL char(4) null
-- end

-- -- 2. DNPLHD
-- if exists(select * from sys.columns 
            -- where Name = N'CDDL_Ma_DVT' and Object_ID = Object_ID(N'DNPLHD'))
-- begin
    -- -- Column Exists
	-- alter table DNPLHD drop column CDDL_Ma_DVT
-- end
-- else
-- begin		
	-- alter table dbo.DNPLHD add
			-- CDDL_Ma_DVT char(4) null
-- end

-- -- 3. 
-- if exists(select * from sys.columns 
            -- where Name = N'CDDL_Ma_DVT' and Object_ID = Object_ID(N'DSPGC'))
-- begin
    -- -- Column Exists
	-- alter table DSPGC drop column CDDL_Ma_DVT
-- end
-- else
-- begin
	-- alter table dbo.DSPGC add
			-- CDDL_Ma_DVT char(4) null
-- end

-- -- 4.
-- if exists(select * from sys.columns 
            -- where Name = N'CDDL_Ma_DVT' and Object_ID = Object_ID(N'DThietBi'))
-- begin
    -- -- Column Exists
	-- alter table DThietBi drop column CDDL_Ma_DVT
-- end
-- else
-- begin
	-- alter table dbo.DThietBi add
			-- CDDL_Ma_DVT char(4) null
-- end

-- -- 5.
-- if exists(select * from sys.columns 
            -- where Name = N'CDDL_Ma_DVT' and Object_ID = Object_ID(N'ecsDHangMau'))
-- begin
    -- -- Column Exists
	-- alter table ecsDHangMau drop column CDDL_Ma_DVT
-- end
-- else
-- begin
	-- alter table dbo.ecsDHangMau add
			-- CDDL_Ma_DVT char(4) null
-- end

-- 6. Che xuat
if exists(select * from sys.columns 
            where Name = N'CDDL_MA_DVT_DK' and Object_ID = Object_ID(N'ecsCX_CT_TOKHAI_HANG'))
begin
    -- Column Exists
	alter table ecsCX_CT_TOKHAI_HANG drop column CDDL_MA_DVT_DK
end
else
begin
	-- che xuat
	alter table dbo.ecsCX_CT_TOKHAI_HANG add
				CDDL_MA_DVT_DK char(4) null
end

if exists(select * from sys.columns 
            where Name = N'CDDL_MA_DVT_KB' and Object_ID = Object_ID(N'ecsCX_CT_TOKHAI_HANG'))
begin
    -- Column Exists
	alter table ecsCX_CT_TOKHAI_HANG drop column CDDL_MA_DVT_KB
end
else
begin
	-- che xuat
	alter table dbo.ecsCX_CT_TOKHAI_HANG add
				CDDL_MA_DVT_KB char(4) null
end


-- 7.
if exists(select * from sys.columns 
            where Name = N'CDDL_Ma_DVT' and Object_ID = Object_ID(N'ecsCX_DM_HH_DUA_RA_D'))
begin
    -- Column Exists
	alter table ecsCX_DM_HH_DUA_RA_D drop column CDDL_Ma_DVT
end
else
begin
	alter table dbo.ecsCX_DM_HH_DUA_RA_D add
			CDDL_Ma_DVT char(4) null
end

-- 8.
if exists(select * from sys.columns 
            where Name = N'CDDL_Ma_DVT' and Object_ID = Object_ID(N'ecsCX_DM_HH_DUA_VAO_D'))
begin
    -- Column Exists
	alter table ecsCX_DM_HH_DUA_VAO_D drop column CDDL_Ma_DVT
end
else
begin
	alter table dbo.ecsCX_DM_HH_DUA_VAO_D add
			CDDL_Ma_DVT char(4) null
end


-- 9. SXXK
if exists(select * from sys.columns 
            where Name = N'CDDL_Ma_DVT' and Object_ID = Object_ID(N'SNPL'))
begin
    -- Column Exists
	alter table SNPL drop column CDDL_Ma_DVT
end
else
begin
	alter table dbo.SNPL add
			CDDL_Ma_DVT char(4) null
end
	
-- 10
if exists(select * from sys.columns 
            where Name = N'CDDL_Ma_DVT' and Object_ID = Object_ID(N'SSP'))
begin
    -- Column Exists
	alter table SSP drop column CDDL_Ma_DVT
end
else
begin
	alter table dbo.SSP add
			CDDL_Ma_DVT char(4) null
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
				when '93 ' then 'TUI '
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
			
-- gia cong
-- Update DDMuc
	 -- Set	CDDL_Ma_DVT_NPL = dbo.Doi_Ma_DVT(MA_DVT)
	 
-- Update DNPLHD
	 -- Set	CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)

-- Update DSPGC
	 -- Set	CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)

-- Update DThietBi
	 -- Set	CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)

-- Update ecsDHangMau
	 -- Set	CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)	 
			
-- che xuat
update ecsCX_CT_TOKHAI_HANG
set
	CDDL_MA_DVT_DK = dbo.Doi_Ma_DVT(MA_DVT_DK)
	,CDDL_MA_DVT_KB = dbo.Doi_Ma_DVT(MA_DVT_KB)

update ecsCX_DM_HH_DUA_RA_D
set
	CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)
	

update ecsCX_DM_HH_DUA_VAO_D
set
	CDDL_Ma_DVT = dbo.Doi_Ma_DVT(MA_DVT)
	
-- sxxk			
Update SNPL
	 Set	CDDL_MA_DVT = dbo.Doi_Ma_DVT(Ma_DVT)
	 
Update SSP
	 Set	CDDL_MA_DVT = dbo.Doi_Ma_DVT(Ma_DVT)	