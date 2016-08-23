use SLXNK
go
/*Script: thong ke danh sach Hop dong gia cong & tinh trang
LUU Y: Neu NamTN la NULL thi menh de where cua Script 2 la:
WHERE NAM_TN IS NULL
*/
--1) Lay danh sach cac Nam TN cua Hop dong Gia cong
select distinct nam_tn 
from dhdgc;
--2) Thay lan luot cac gia tri cua Nam_TN tu buoc 1 vao gia tri 2013 o Script duoi.
--> Ket xuat du lieu ra file Excel theo mau.
select so_hd, dvgc, ngay_ky
     , case trangthai
			when 1 then 'DA THANH KHOAN'
			else  'CHUA THANH KHOAN'
		  end	
		  'Tinh trang'
from dhdgc
where nam_tn = 2013