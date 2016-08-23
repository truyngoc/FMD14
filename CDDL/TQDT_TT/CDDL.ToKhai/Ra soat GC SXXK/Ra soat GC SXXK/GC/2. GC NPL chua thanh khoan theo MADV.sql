use SLXNK
GO
declare @DVGC varchar(20)
set @DVGC = '0900282300'

select n.* 
from DNPLHD n join DHDGC h on n.So_HD=h.So_HD and n.Ma_HQHD=h.Ma_HQHD and n.DVGC=h.DVGC and n.Ngay_Ky=h.Ngay_Ky
where h.ThanhKhoan<>1
and	h.DVGC=@DVGC
