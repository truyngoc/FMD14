-- Tạo mới một database trắng [DanhMuc]
-- Chuyển dữ liệu các bảng danh mục của SXXK sang Database [DanhMuc]
USE [SXXK]
GO

select * 
into DanhMuc.dbo.SNPL
from SNPL

select * 
into DanhMuc.dbo.SSP
from SSP

select * 
into DanhMuc.dbo.DDINHMUC
from DDINHMUC