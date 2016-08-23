-- use ecustoms_online
-- che xuat
update h
set	
	h.MA_DVT_DK	 = s.CDDL_MA_DVT_DK
from DCX_CT_TOKHAI_HANG h join $(lnksrv_name).$(slxnk_dbname_src).dbo.ecsCX_CT_TOKHAI_HANG s 
		on	h.CT_ID	= s.CDDL_CT_ID
		and h.MA_HQ = s.CDDL_MA_HQ 
		and h.STT_HANG = s.STT_HANG
		and s.CDDL_MA_DVT_DK in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
		and s.CDDL_MA_HQ in ('02PG')
		
update h
set		
	h.MA_DVT_KB	= s.CDDL_MA_DVT_KB
from DCX_CT_TOKHAI_HANG h join $(lnksrv_name).$(slxnk_dbname_src).dbo.ecsCX_CT_TOKHAI_HANG s 
		on	h.CT_ID	= s.CDDL_CT_ID
		and h.MA_HQ = s.CDDL_MA_HQ 
		and h.STT_HANG = s.STT_HANG
		and s.CDDL_MA_DVT_KB in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
		and s.CDDL_MA_HQ in ('02PG')
--
update d
set	
	d.MA_DVT_SP	= s.CDDL_MA_DVT_SP
from DCX_DINH_MUC d join $(lnksrv_name).$(slxnk_dbname_src).dbo.ecsCX_DinhMuc s
		on	d.DM_ID = s.CDDL_DM_ID 
		and d.MA_HQ = s.CDDL_MA_HQ 
		and d.MA_DV = s.MA_DV 
		and d.VT_ID_SP = s.CDDL_VT_ID_SP 
		and d.VT_ID_NPL = s.CDDL_VT_ID_NPL
		and s.CDDL_MA_DVT_SP in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
		and s.CDDL_MA_HQ in ('02PG')

update d
set	
	d.MA_DVT_NPL	= s.CDDL_MA_DVT_NPL
from DCX_DINH_MUC d join $(lnksrv_name).$(slxnk_dbname_src).dbo.ecsCX_DinhMuc s
		on	d.DM_ID = s.CDDL_DM_ID 
		and d.MA_HQ = s.CDDL_MA_HQ 
		and d.MA_DV = s.MA_DV 
		and d.VT_ID_SP = s.CDDL_VT_ID_SP 
		and d.VT_ID_NPL = s.CDDL_VT_ID_NPL
		and s.CDDL_MA_DVT_NPL in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
		and s.CDDL_MA_HQ in ('02PG')

--		
update h
set	
	h.MA_DVT	= s.CDDL_Ma_DVT
from DCX_DM_HH_DUA_VAO_RA h join $(lnksrv_name).$(slxnk_dbname_src).dbo.ecsCX_DM_HH_DUA_VAO_D s
		on h.VT_ID = s.CDDL_VT_ID 
		and h.MA_HQ = s.CDDL_MA_HQ
		and	h.IS_DUA_VAO	= 1 --NPL
		and s.CDDL_Ma_DVT in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
		and s.CDDL_MA_HQ in ('02PG')
		
update h
set	
	h.MA_DVT	= s.CDDL_Ma_DVT
from DCX_DM_HH_DUA_VAO_RA h join $(lnksrv_name).$(slxnk_dbname_src).dbo.ecsCX_DM_HH_DUA_RA_D s
		on h.VT_ID = s.CDDL_VT_ID 
		and h.MA_HQ = s.CDDL_MA_HQ
		and	h.IS_DUA_VAO	= 2 --SP
		and s.CDDL_Ma_DVT in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
		and s.CDDL_MA_HQ in ('02PG')
		
-- gia cong
update d
set 
 d.Ma_DVT_NPL = g.CDDL_MA_DVT_NPL
from DGC_DINH_MUC d join $(lnksrv_name).$(slxnk_dbname_src).dbo.ddmuc g 
  on d.DM_ID = g.CDDL_DM_ID
  and d.MA_HQ = g.CDDL_MA_HQ_HD
  and d.VT_ID_NPL = g.CDDL_VT_ID_NPL
  and d.VT_ID_SP = g.CDDL_VT_ID_SP
  and g.CDDL_MA_DVT_NPL in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
  and g.CDDL_MA_HQ_HD in ('02PG')

update d
set 
 d.Ma_DVT_SP = g.CDDL_MA_DVT_SP
from DGC_DINH_MUC d join $(lnksrv_name).$(slxnk_dbname_src).dbo.ddmuc g 
  on d.DM_ID = g.CDDL_DM_ID
  and d.MA_HQ = g.CDDL_MA_HQ_HD
  and d.VT_ID_NPL = g.CDDL_VT_ID_NPL
  and d.VT_ID_SP = g.CDDL_VT_ID_SP
  and g.CDDL_MA_DVT_SP in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
  and g.CDDL_MA_HQ_HD in ('02PG')
  
update d
set 
 d.Ma_DVT = g.CDDL_MA_DVT
from DGC_SP_NPL_TB_HM d join $(lnksrv_name).$(slxnk_dbname_src).dbo.DNPLHD g 
  on d.VT_ID = g.CDDL_VT_ID
  and d.MA_HQ_HD = g.CDDL_MA_HQ_HD
  and d.HD_ID = g.CDDL_HD_ID
  and d.Loai = 1 --NPL
  and g.CDDL_MA_DVT in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
  and g.CDDL_MA_HQ_HD in ('02PG')

update d
set 
 d.Ma_DVT = g.CDDL_MA_DVT
from DGC_SP_NPL_TB_HM d join $(lnksrv_name).$(slxnk_dbname_src).dbo.DSPGC g 
  on d.VT_ID = g.CDDL_VT_ID
  and d.MA_HQ_HD = g.CDDL_MA_HQ_HD
  and d.HD_ID = g.CDDL_HD_ID
  and d.Loai = 2 --SP
  and g.CDDL_MA_DVT in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
  and g.CDDL_MA_HQ_HD in ('02PG')

update d
set 
 d.Ma_DVT = g.CDDL_MA_DVT
from DGC_SP_NPL_TB_HM d join $(lnksrv_name).$(slxnk_dbname_src).dbo.DThietBi g 
  on d.VT_ID = g.CDDL_VT_ID
  and d.MA_HQ_HD = g.CDDL_MA_HQ_HD
  and d.HD_ID = g.CDDL_HD_ID
  and d.Loai = 3 --TB
  and g.CDDL_MA_DVT in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
  and g.CDDL_MA_HQ_HD in ('02PG')

update d
set 
 d.Ma_DVT = g.CDDL_MA_DVT
from DGC_SP_NPL_TB_HM d join $(lnksrv_name).$(slxnk_dbname_src).dbo.ecsDHangMau g 
  on d.VT_ID = g.CDDL_VT_ID
  and d.MA_HQ_HD = g.CDDL_MA_HQ_HD
  and d.HD_ID = g.CDDL_HD_ID
  and d.Loai = 4 --HM
  and g.CDDL_MA_DVT in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
  and g.CDDL_MA_HQ_HD in ('02PG')

-- san xuat xuat khau
update d
set	
	d.MA_DVT_SP	= s.CDDL_MA_DVT_SP
from DSX_DINH_MUC d join $(lnksrv_name).$(sxxk_dbname_src).dbo.DDINHMUC s
	on d.DM_ID = s.CDDL_DM_ID
	and d.MA_HQ = s.CDDL_MA_HQ
	and d.MA_DV = s.MA_DV
	and d.VT_ID_SP = s.CDDL_VT_ID_SP
	and d.VT_ID_NPL = s.CDDL_VT_ID_NPL
	and s.CDDL_MA_DVT_SP in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
	and s.CDDL_MA_HQ in ('02PG')
	

update d
set	
	d.MA_DVT_NPL	= s.CDDL_MA_DVT_NPL
from DSX_DINH_MUC d join $(lnksrv_name).$(sxxk_dbname_src).dbo.DDINHMUC s
	on d.DM_ID = s.CDDL_DM_ID
	and d.MA_HQ = s.CDDL_MA_HQ
	and d.MA_DV = s.MA_DV
	and d.VT_ID_SP = s.CDDL_VT_ID_SP
	and d.VT_ID_NPL = s.CDDL_VT_ID_NPL
	and s.CDDL_MA_DVT_NPL in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
	and s.CDDL_MA_HQ in ('02PG')
	
	
update h
set	
	h.MA_DVT	= s.CDDL_MA_DVT
from DSX_SP_NPL	h join $(lnksrv_name).$(sxxk_dbname_src).dbo.SNPL s
	on h.VT_ID = s.CDDL_VT_ID
	and h.MA_HQ = s.CDDL_MA_HQ
	and	h.Loai	= 1 --NPL
	and s.CDDL_MA_DVT in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
	and s.CDDL_MA_HQ in ('02PG')


update h
set	
	h.MA_DVT	= s.CDDL_MA_DVT
from DSX_SP_NPL	h join $(lnksrv_name).$(sxxk_dbname_src).dbo.SSP s
	on h.VT_ID = s.CDDL_VT_ID
	and h.MA_HQ = s.CDDL_MA_HQ
	and	h.Loai	= 2 --SP
	and s.CDDL_MA_DVT in ('BANG','BAN','INCK','INC','KPR','KPRO','UNV','UNVI','KMTK','KMTQ','KMTR','KUNC','KUNQ','KUNV')
	and s.CDDL_MA_HQ in ('02PG')	
	