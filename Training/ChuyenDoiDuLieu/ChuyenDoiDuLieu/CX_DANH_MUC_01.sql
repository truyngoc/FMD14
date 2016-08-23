use SLXNK
go
/*Script: thong ke danh sach San pham che xuat da dang ky
LUU Y: Neu NamTN la NULL thi menh de where cua Script 2 la:
WHERE NAM_TN IS NULL
*/
--1) Lay danh sach cac Nam TN
select distinct nam_dk
from ecsCX_DM_HH_DUA_RA_D;
--2) Thay lan luot cac gia tri cua Nam_TN tu buoc 1 vao gia tri 2013 o Script duoi.
--> Ket xuat du lieu ra file Excel theo mau.
select ma_dv_xn, ma_hang, ten_hang, ma_dvt
from ecsCX_DM_HH_DUA_RA_D
where nam_dk = 2013