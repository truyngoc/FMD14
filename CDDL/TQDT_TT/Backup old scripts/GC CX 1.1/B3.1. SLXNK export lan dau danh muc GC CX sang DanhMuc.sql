/*
Tạo DB trắng với tên DanhMucGCCX
trường hợp tạo DB DanhMucGCCX trên máy khác thì phải tạo DB link và sửa script ở dưới
*/
--============Gia công======================
select * 
into DanhMucGCCX.dbo.DHDGC
from DHDGC

select * 
into DanhMucGCCX.dbo.DLOAISPGC
from DLOAISPGC

select * 
into DanhMucGCCX.dbo.DNPLHD
from DNPLHD

select * 
into DanhMucGCCX.dbo.DSPGC
from DSPGC

select * 
into DanhMucGCCX.dbo.DThietBi
from DThietBi

select * 
into DanhMucGCCX.dbo.ecsDHangMau
from ecsDHangMau

select * 
into DanhMucGCCX.dbo.DDMuc
from DDMuc

--=============Chế xuất=========================
select * 
into DanhMucGCCX.dbo.ecsCX_DM_HH_DUA_VAO_D
from ecsCX_DM_HH_DUA_VAO_D

select * 
into DanhMucGCCX.dbo.ecsCX_DM_HH_DUA_RA_D
from ecsCX_DM_HH_DUA_RA_D

select * 
into DanhMucGCCX.dbo.ecsCX_DinhMuc
from ecsCX_DinhMuc

select * 
into DanhMucGCCX.dbo.ecsCX_CT_TOKHAI
from ecsCX_CT_TOKHAI

select * 
into DanhMucGCCX.dbo.ecsCX_CT_TOKHAI_HANG
from ecsCX_CT_TOKHAI_HANG
