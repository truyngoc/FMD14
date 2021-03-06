USE [ECUSTOMS_ONLINE]
GO
/****** Object:  UserDefinedFunction [dbo].[Doi_Ma_DVT]    Script Date: 04/06/2014 14:42:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER FUNCTION [dbo].[Doi_Ma_DVT] 
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
				when '25 ' then 'KPRO'
				when '26 ' then 'KVA'
				when '34 ' then 'KMTQ'
				when '35 ' then 'PRO'
				when '37 ' then 'EXCH'
				when '44 ' then 'HKGM'
				when '46 ' then 'UNVI'
				when '52 ' then 'BAN'
				when '54 ' then 'LOT'
				when '55 ' then 'CONT'
				when '56 ' then 'CHI'
				when '59 ' then 'TO'
				when '60 ' then 'UNA'
				when '61 ' then 'RAM'
				when '63 ' then 'INCK'
				when '67 ' then 'CEN'
				when '69 ' then 'MMTR'
				when '70 ' then 'MGRM'
				when '79 ' then 'DUNK'
				when '80 ' then 'KPIP'
				when '81 ' then 'DPCE'
				when '82 ' then 'HPCE'
				when '83 ' then 'BICH'
				when '85 ' then 'DMTR'
				when '86 ' then 'CUC'
				when '87 ' then 'HFT'
				when '88 ' then 'PCE'
				when '92 ' then 'BANG'
				when '98 ' then 'LIEU'
				when '100' then 'CUM'
				when '101' then 'MM3'
				when '102' then 'CM3'
				when '103' then 'MM2'
				when '104' then 'CM2'
				when '105' then 'DM2'
				when '106' then 'DM'
				when '109' then 'KIT'
				else @MaCu
			end

END
