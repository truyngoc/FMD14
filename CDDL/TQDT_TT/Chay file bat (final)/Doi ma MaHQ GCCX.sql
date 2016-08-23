update DDMuc 
set CDDL_MA_HQ_HD = case CDDL_MA_HQ_HD when '47NB' then '47B1' else CDDL_MA_HQ_HD end

update DHDGC 
set CDDL_MA_HQ_HD = case CDDL_MA_HQ_HD when '47NB' then '47B1' else CDDL_MA_HQ_HD end
	,CDDL_So_HD_HQ_Cap = CONVERT(VARCHAR(32),HashBytes('MD5', ('47B1' +'|'+DVGC+'|'+ dbo.fcnTCVN2Unicode(So_HD)+'|'+CAST(datepart(year, Ngay_Ky) as varchar(4))+RIGHT('00'+CAST(datepart(M, Ngay_Ky) as varchar(2)),2)+RIGHT('00'+ CAST(datepart(d, Ngay_Ky) as varchar(2)),2))),2)

update DLOAISPGC 
set CDDL_MA_HQ_HD = case CDDL_MA_HQ_HD when '47NB' then '47B1' else CDDL_MA_HQ_HD end

update DNPLHD 
set CDDL_MA_HQ_HD = case CDDL_MA_HQ_HD when '47NB' then '47B1' else CDDL_MA_HQ_HD end

update DSPGC 
set CDDL_MA_HQ_HD = case CDDL_MA_HQ_HD when '47NB' then '47B1' else CDDL_MA_HQ_HD end

update DThietBi 
set CDDL_MA_HQ_HD = case CDDL_MA_HQ_HD when '47NB' then '47B1' else CDDL_MA_HQ_HD end

update ecsDHangMau 
set CDDL_MA_HQ_HD = case CDDL_MA_HQ_HD when '47NB' then '47B1' else CDDL_MA_HQ_HD end

update ecsCX_CT_TOKHAI 
set CDDL_MA_HQ = case CDDL_MA_HQ when '47NB' then '47B1' else CDDL_MA_HQ end

update ecsCX_CT_TOKHAI_HANG 
set CDDL_MA_HQ = case CDDL_MA_HQ when '47NB' then '47B1' else CDDL_MA_HQ end

update ecsCX_DM_HH_DUA_RA_D 
set CDDL_MA_HQ = case CDDL_MA_HQ when '47NB' then '47B1' else CDDL_MA_HQ end

update ecsCX_DM_HH_DUA_VAO_D 
set CDDL_MA_HQ = case CDDL_MA_HQ when '47NB' then '47B1' else CDDL_MA_HQ end

update ecsCX_DinhMuc 
set CDDL_MA_HQ = case CDDL_MA_HQ when '47NB' then '47B1' else CDDL_MA_HQ end
