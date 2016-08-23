use SLXNK
GO

select n.* 
from DThietBi n join DHDGC h on n.So_HD=h.So_HD and n.Ma_HQHD=h.Ma_HQHD and n.DVGC=h.DVGC and n.Ngay_Ky=h.Ngay_Ky
where h.ThanhKhoan<>1
