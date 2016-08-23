use DanhMucGCCX
GO
--============Gia công - add PK========================
ALTER TABLE DHDGC ADD CONSTRAINT
	PK_DHDGC PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	DVGC,
	Ngay_Ky
	)
GO
ALTER TABLE DLOAISPGC ADD CONSTRAINT
	PK_DLOAISPGC PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	DVGC,
	Ngay_Ky,
	Ma_SPGC
	)
GO
ALTER TABLE DNPLHD ADD CONSTRAINT
	PK_DNPLHD PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	DVGC,
	Ngay_Ky,
	P_Code
	)
GO
ALTER TABLE DSPGC ADD CONSTRAINT
	PK_DSPGC PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	DVGC,
	Ngay_Ky,
	P_Code
	)
GO
ALTER TABLE DThietBi ADD CONSTRAINT
	PK_DThietBi PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	DVGC,
	Ngay_Ky,
	P_Code
	)
GO
ALTER TABLE ecsDHangMau ADD CONSTRAINT
	PK_ecsDHangMau PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	DVGC,
	Ngay_Ky,
	P_Code
	)
GO
ALTER TABLE DDMuc ADD CONSTRAINT
	PK_DDMuc PRIMARY KEY CLUSTERED 
	(
	So_HD,
	Ma_HQHD,
	Ngay_Ky,
	DVGC,
	SPP_Code,
	NPLP_Code
	)
GO
--============Chế xuất - add PK========================
ALTER TABLE ecsCX_DM_HH_DUA_VAO_D ADD CONSTRAINT
	PK_ecsCX_DM_HH_DUA_VAO_D PRIMARY KEY CLUSTERED 
	(
	MA_HQTN,
	MA_DV_XN,
	MA_HANG
	)
GO

ALTER TABLE ecsCX_DM_HH_DUA_RA_D ADD CONSTRAINT
	PK_ecsCX_DM_HH_DUA_RA_D PRIMARY KEY CLUSTERED 
	(
	MA_HQTN,
	MA_DV_XN,
	MA_HANG
	)
GO

ALTER TABLE ecsCX_DinhMuc ADD CONSTRAINT
	PK_ecsCX_DinhMuc PRIMARY KEY CLUSTERED 
	(
	MA_SP,
	MA_NPL,
	MA_HQ,
	MA_DV
	)
GO

ALTER TABLE ecsCX_CT_TOKHAI ADD CONSTRAINT
	PK_ecsCX_CT_TOKHAI PRIMARY KEY CLUSTERED 
	(
	SO_TN,
	NAM_TN,
	MA_HQTN
	)
GO

ALTER TABLE ecsCX_CT_TOKHAI_HANG ADD CONSTRAINT
	PK_ecsCX_CT_TOKHAI_HANG PRIMARY KEY CLUSTERED 
	(
	SO_TN,
	NAM_TN,
	MA_HQTN,
	STT_HANG
	)
GO

/*
--===============Gia công - check bản ghi trùng
select So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code, COUNT(*) as [SL NPL GC trùng] from DNPLHD 
group by So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code
having COUNT(*)>1
select So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code, COUNT(*) as [SL sản phẩm GC trùng] from DSPGC
group by So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code
having COUNT(*)>1
select So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code, COUNT(*) as [SL thiết bị GC trùng] from DThietBi
group by So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code
having COUNT(*)>1
select So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code, COUNT(*) as [SL hàng mẫu GC trùng] from ecsDHangMau
group by So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code
having COUNT(*)>1

--===============Chế xuất - check bản ghi trùng
-- 1. kiem tra ban ghi trung trong cac bang co key bi thay doi
-- cai nay co the chay hoac ko, vi no chi de lay so lieu

 -- Danh mục hàng hóa đưa vào
select MA_HQTN, MA_DV_XN, MA_HANG, COUNT(*) [SL HH đưa vào trùng] from ecsCX_DM_HH_DUA_VAO_D
group by MA_HQTN, MA_DV_XN, MA_HANG
having COUNT(*) > 1

-- Danh mục hàng hóa đưa ra
select MA_HQTN, MA_DV_XN, MA_HANG, COUNT(*) [SL HH đưa ra trùng] from ecsCX_DM_HH_DUA_RA_D
group by MA_HQTN, MA_DV_XN, MA_HANG
having COUNT(*) > 1

-- Định mức
select MA_SP, MA_NPL, MA_HQ, MA_DV, COUNT(*) [SL trùng] from ecsCX_DinhMuc
group by MA_SP, MA_NPL, MA_HQ, MA_DV
having COUNT(*) > 1

-- CT Tờ khai
select SO_TN, NAM_TN, MA_HQTN, COUNT(*) [SL trùng] from ecsCX_CT_TOKHAI
group by SO_TN, NAM_TN, MA_HQTN
having COUNT(*) > 1

-- Hàng CT tờ khai
select SO_TN, NAM_TN, MA_HQTN, STT_HANG, COUNT(*) [SL trùng] from ecsCX_CT_TOKHAI_HANG
group by SO_TN, NAM_TN, MA_HQTN, STT_HANG
having COUNT(*) > 1

-- NPL co trong dinh muc nhung ko co trong DM_HH_DUA_VAO
select * 	
from ecsCX_DinhMuc d
	left join ecsCX_DM_HH_DUA_VAO_D v on d.MA_NPL = v.MA_HANG and d.MA_DV = v.MA_DV_XN and d.MA_HQ = v.MA_HQTN and LOAI_HANG = 1 -- NPL
where v.MA_HANG is null

-- SP co trong dinh muc nhung ko co trong DM_HH_DUA_RA
select * 	
from ecsCX_DinhMuc d
	left join ecsCX_DM_HH_DUA_RA_D v on d.MA_SP = v.MA_HANG and d.MA_DV = v.MA_DV_XN and d.MA_HQ = v.MA_HQTN and LOAI_HANG = 2 -- SP
where v.MA_HANG is null

---- NPL, SP hủy
--select SO_TN, MA_HQTN, NAM_TN, MA_HANG, count(*) [SL trùng] from ecsCX_HUY_NPLSP_D
--group by SO_TN, MA_HQTN, NAM_TN, MA_HANG
--having COUNT(*) > 1 

*/