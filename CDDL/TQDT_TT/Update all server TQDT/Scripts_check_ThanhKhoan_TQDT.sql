-- kiem tra xem co thang nao VT_ID của hợp đồng A gắn vào hợp đồng B khong
-- khong tinh nhung thang to khai gia cong ton tai trong database SXXK cu~
select * from
(
select *  
from DHANG_MD
where 
	VT_ID <> 0
	and HD_ID <> 0 
	and TK_ID >= 10000000000000 and TK_ID < 20000000000000
	and Ma_LH like '_GC%'
 and VT_ID in (select VT_ID from DGC_SP_NPL_TB_HM 
 where DHANG_MD.VT_ID=DGC_SP_NPL_TB_HM.VT_ID and DHANG_MD.HD_ID <> DGC_SP_NPL_TB_HM.HD_ID)
 ) a
 where  SUBSTRING(cast(a.TK_ID as varchar(50)),4,2) % 2 = 0
 
-- kiem tra thang nao co VT_ID khong nam trong danh muc chuan 
-- khong tinh nhung thang to khai gia cong ton tai trong database SXXK cu~
 select * from 
(
select *  from vDHANG_MD
where  
	VT_ID <> 0 
	and HD_ID <> 0
	and TK_ID >= 10000000000000 and TK_ID < 20000000000000
	and Ma_LH like '_GC%'
	and VT_ID not in (select VT_ID from vDGC_SP_NPL_TB_HM where vDHANG_MD.VT_ID=vDGC_SP_NPL_TB_HM.VT_ID)
) a
where  SUBSTRING(cast(a.TK_ID as varchar(50)),4,2) % 2 = 0  









-- kiem tra hang VT_ID ko co trong danh muc
-- select count(*) as [Total] from 
-- (
-- select *  from DHANG_MD
-- where  
	-- VT_ID <> 0 
	-- and HD_ID <> 0
	-- and TK_ID >= 10000000000000 and TK_ID < 20000000000000
	-- and Ma_LH like '_GC%'
	-- and VT_ID not in (select VT_ID from DGC_SP_NPL_TB_HM where DHANG_MD.VT_ID=DGC_SP_NPL_TB_HM.VT_ID)
-- ) a
-- where  SUBSTRING(cast(a.TK_ID as varchar(50)),4,2) % 2 = 0  
-- GO

-- kiem tra hang VT_ID cua hop dong khac
-- select count(*) as [Total] from
-- (
-- select *  
-- from DHANG_MD
-- where 
	-- VT_ID <> 0
	-- and HD_ID <> 0 
	-- and TK_ID >= 10000000000000 and TK_ID < 20000000000000
	-- and Ma_LH like '_GC%'
 -- and VT_ID in (select VT_ID from DGC_SP_NPL_TB_HM 
 -- where DHANG_MD.VT_ID=DGC_SP_NPL_TB_HM.VT_ID and DHANG_MD.HD_ID <> DGC_SP_NPL_TB_HM.HD_ID)
 -- ) a
 -- where  SUBSTRING(cast(a.TK_ID as varchar(50)),4,2) % 2 = 0
 -- GO
 
-- kiem tra hang HD_ID=0, VT_ID<>0
-- select count(*) as [Total] from
-- (
-- select TK_ID from DHANG_MD
-- where HD_ID=0 
	-- and VT_ID <> 0 
	-- and TK_ID >= 10000000000000 and TK_ID < 20000000000000
	-- and Ma_LH like '_GC%'
-- ) a
-- where SUBSTRING(cast(a.TK_ID as varchar(50)),4,2) % 2 = 0

-- GO


-- cap nhat VT_ID cho DSX_NPL_NHAP_TL
-- update a
-- set a.VT_ID= n.VT_ID
-- from DSX_NPL_NHAP_TL a
	-- join DSX_SP_NPL n on a.MA_HQ=n.MA_HQ and a.MA_NPL=n.MA_VAT_TU and a.MA_DV=n.MA_DV and n.LOAI=1
-- where a.VT_ID=0

-- GO