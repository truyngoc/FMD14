use SXXK
go
/*Script: thong ke danh sach Nguyen lieu SXXK da dang ky
LUU Y: Neu NamTN la NULL thi menh de where cua Script 2 la:
WHERE NAM_TN IS NULL
*/
--1) Lay danh sach cac Nam TN
select distinct nam_tn
from snpl;
--2) Thay lan luot cac gia tri cua Nam_TN tu buoc 1 vao gia tri 2013 o Script duoi.
--> Ket xuat du lieu ra file Excel theo mau.
select ma_dv, ma_npl, ten_npl, ma_dvt
from snpl
where nam_tn = 2013