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