use SLXNK
go
/*Script: thong ke danh sach Dinh muc san pham che xuat da dang ky
LUU Y: Neu NamTN la NULL thi menh de where cua Script 2 la:
WHERE NAM_TN IS NULL
*/
--1) Lay danh sach cac Nam TN
select distinct nam_dk
from ecsCX_DinhMuc;
--2) Thay lan luot cac gia tri cua Nam_TN tu buoc 1 vao gia tri 2013 o Script duoi.
--> Ket xuat du lieu ra file Excel theo mau.
select ma_dv, ma_sp, ma_npl, dinh_muc, ty_le_hh, dinh_muc_co_hh as Dinh_Muc_Chung
from ecsCX_DinhMuc
where nam_dk = 2013