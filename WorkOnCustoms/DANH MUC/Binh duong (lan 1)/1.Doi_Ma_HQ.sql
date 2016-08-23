declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = 18
set	@IDChiCuc = 0

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*1000000000


--DSX_SP_NPL		MA_HQ
update DSX_SP_NPL
	set MA_HQ = case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end
where VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax

--DSX_DINH_MUC		MA_HQ
update DSX_DINH_MUC
	set MA_HQ = case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end
where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax


--DGC_HD			Ma_HQ_HD
update DGC_HD
	set Ma_HQ_HD = case Ma_HQ_HD
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			Ma_HQ_HD
	end
where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax

--DGC_LOAI_SP		Ma_HQ_HD
update DGC_LOAI_SP
	set Ma_HQ_HD = case Ma_HQ_HD
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			Ma_HQ_HD
	end
where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax

--DGC_SP_NPL_TB_HM	Ma_HQ_HD
update DGC_SP_NPL_TB_HM
	set Ma_HQ_HD = case Ma_HQ_HD
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			Ma_HQ_HD
	end
where VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax

--DGC_DINH_MUC		Ma_HQ
update DGC_DINH_MUC
	set MA_HQ = case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end
where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax

--DCX_DM_HH_DUA_VAO_RA	MA_HQ
update DCX_DM_HH_DUA_VAO_RA
	set MA_HQ = case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end
where VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax

--DCX_DINH_MUC		MA_HQ
update DCX_DINH_MUC
	set MA_HQ = case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end
where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax

--DCX_CT_TOKHAI		MA_HQ
update DCX_CT_TOKHAI
	set MA_HQ = case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end
where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax

--DCX_CT_TOKHAI_HANG	MA_HQ
update DCX_CT_TOKHAI_HANG
	set MA_HQ = case MA_HQ
		when '18BA01' then '18A1'						
		when '18BA02' then '18A2'					
		when '18BA03' then '18A3'					
		else
			MA_HQ
	end
where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax




-- select COUNT(*) from vDSX_SP_NPL
-- where MA_HQ in ('18BA01','18BA02','18BA03')
-- select COUNT(*) from vDSX_DINH_MUC
-- where MA_HQ in ('18BA01','18BA02','18BA03')
-- select COUNT(*) from vDGC_HD
-- where Ma_HQ_HD in ('18BA01','18BA02','18BA03')
-- select COUNT(*) from vDGC_LOAI_SP
-- where Ma_HQ_HD in ('18BA01','18BA02','18BA03')
-- select COUNT(*) from vDGC_SP_NPL_TB_HM
-- where Ma_HQ_HD in ('18BA01','18BA02','18BA03')
-- select COUNT(*) from vDGC_DINH_MUC
-- where MA_HQ in ('18BA01','18BA02','18BA03')
-- select COUNT(*) from vDCX_DM_HH_DUA_VAO_RA
-- where MA_HQ in ('18BA01','18BA02','18BA03')
-- select COUNT(*) from vDCX_DINH_MUC
-- where MA_HQ in ('18BA01','18BA02','18BA03')
-- select COUNT(*) from vDCX_CT_TOKHAI
-- where MA_HQ in ('18BA01','18BA02','18BA03')
-- select COUNT(*) from vDCX_CT_TOKHAI_HANG

-- update lai So_HD_HQ_Cap theo Ma_HQ update
--update vDGC_HD
--	set So_HD_HQ_Cap = dbo.fn_Get_So_HD_HQ_Cap(Ma_HQ_HD,Don_Vi_GC, So_HD, Ngay_Ky)
--where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax

--select dbo.fn_Get_So_HD_HQ_Cap(Ma_HQ_HD,Don_Vi_GC, So_HD, Ngay_Ky),* from vDGC_HD
--where Ma_HQ_HD in ('18A1', '18A2','18A3')