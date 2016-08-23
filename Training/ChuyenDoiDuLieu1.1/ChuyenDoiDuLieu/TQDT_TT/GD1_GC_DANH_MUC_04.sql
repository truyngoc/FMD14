use SLXNK
go
/*Script: thong ke danh sach Thiet bi theo Hop dong Gia cong
LUU Y: Neu NamTN la NULL thi menh de where cua Script 2 la:
WHERE NAM_TN IS NULL
*/
--1) Lay danh sach cac Nam TN cua Hop dong Gia cong
select distinct nam_tn 
from dhdgc;
--2) Thay lan luot cac gia tri cua Nam_TN tu buoc 1 vao gia tri 2013 o Script duoi.
--> Ket xuat du lieu ra file Excel theo mau.
select a1.So_HD, a1.DVGC, a1.Ngay_Ky, b1.P_Code, b1.Ten_TB, b1.Ma_DVT
from dhdgc a1 inner join dThietBi b1
					on a1.So_HD = b1.So_HD
					and a1.Ma_HQHD = b1.Ma_HQHD
					and a1.DVGC = b1.DVGC 
					and a1.Ngay_Ky = b1.Ngay_Ky
where a1.Nam_TN = 2013