use SXXK
go
/*Script: thong ke danh sach Dinh Muc SXXK da dang ky
LUU Y: Neu NamTN la NULL thi menh de where cua Script 2 la:
WHERE NAM_TN IS NULL
*/
--1) Lay danh sach cac Nam TN
select distinct nam_tn
from ddinhmuc;
--2) Thay lan luot cac gia tri cua Nam_TN tu buoc 1 vao gia tri 2013 o Script duoi.
--> Ket xuat du lieu ra file Excel theo mau.
select ma_dv, ma_sp, ma_npl, dm_sd as Dinh_muc, tl_hh as Ti_Le_Hao_Hut, dm_chung as Dinh_Muc_Chung
from ddinhmuc
where nam_tn = 2013