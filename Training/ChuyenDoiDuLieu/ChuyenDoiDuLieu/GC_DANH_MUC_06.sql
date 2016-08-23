use SLXNK
go
/*Script: thong ke danh sach Dinh muc theo Hop dong Gia cong
LUU Y: Neu NamTN la NULL thi menh de where cua Script 2 la:
WHERE NAM_TN IS NULL
*/
--1) Lay danh sach cac Nam TN cua Hop dong Gia cong
select distinct nam_tn 
from dhdgc;
--2) Thay lan luot cac gia tri cua Nam_TN tu buoc 1 vao gia tri 2013 o Script duoi.
--> Ket xuat du lieu ra file Excel theo mau.
select a1.So_HD, a1.DVGC, a1.Ngay_Ky
		, a1.SPP_Code as  Ma_San_Pham, a1.NPLP_Code as Ma_Nguyen_Lieu 
		, a1.DMGC as  Dinh_Muc, a1.TLHH as Ti_Le_Hao_Hut, a1.DM_Chung Dinh_Muc_Chung
from DDMUc a1
where a1.Nam_TN = 2013