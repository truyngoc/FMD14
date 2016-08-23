--DSX_SP_NPL		MA_HQ
select top 100
	case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end  as MA_HQ from vDSX_SP_NPL
where MA_CUC_HQ = '18'
order by MA_HQ

--DSX_DINH_MUC		MA_HQ
select top 100
	case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end  as MA_HQ from vDSX_DINH_MUC
where MA_CUC_HQ = '18'
order by MA_HQ



--DGC_HD			Ma_HQ_HD
select top 100
	case Ma_HQ_HD
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			Ma_HQ_HD
	end  as Ma_HQ_HD from vDGC_HD
where MA_CUC_HQ = '18'
order by Ma_HQ_HD
--DGC_LOAI_SP		Ma_HQ_HD
select top 100
	case Ma_HQ_HD
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			Ma_HQ_HD
	end  as Ma_HQ_HD from vDGC_LOAI_SP
where MA_CUC_HQ = '18'
order by Ma_HQ_HD

--DGC_SP_NPL_TB_HM	Ma_HQ_HD
select top 100
	case Ma_HQ_HD
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			Ma_HQ_HD
	end  as Ma_HQ_HD from vDGC_SP_NPL_TB_HM
where MA_CUC_HQ = '18'
order by Ma_HQ_HD

--DGC_DINH_MUC		Ma_HQ
select top 100
	case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end  as MA_HQ from vDGC_DINH_MUC
where MA_CUC_HQ = '18'
order by MA_HQ

--DCX_DM_HH_DUA_VAO_RA	MA_HQ
select top 100
	case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end  as MA_HQ from vDCX_DM_HH_DUA_VAO_RA
where MA_CUC_HQ = '18'
order by MA_HQ

--DCX_DINH_MUC		MA_HQ
select top 100
	case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end  as MA_HQ from vDCX_DINH_MUC
where MA_CUC_HQ = '18'
order by MA_HQ

--DCX_CT_TOKHAI		MA_HQ
select top 100
	case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end  as MA_HQ from vDCX_CT_TOKHAI
where MA_CUC_HQ = '18'
order by MA_HQ

--DCX_CT_TOKHAI_HANG	MA_HQ
select top 100
	case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end  as MA_HQ from vDCX_CT_TOKHAI_HANG
where MA_CUC_HQ = '18'
order by MA_HQ
