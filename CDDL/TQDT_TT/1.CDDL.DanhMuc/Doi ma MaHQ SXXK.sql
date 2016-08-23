update DDINHMUC 
set CDDL_MA_HQ = case CDDL_MA_HQ when '01E1' then '01TE' else CDDL_MA_HQ end

update SNPL 
set CDDL_MA_HQ = case CDDL_MA_HQ when '01E1' then '01TE' else CDDL_MA_HQ end

update SSP 
set CDDL_MA_HQ = case CDDL_MA_HQ when '01E1' then '01TE' else CDDL_MA_HQ end

