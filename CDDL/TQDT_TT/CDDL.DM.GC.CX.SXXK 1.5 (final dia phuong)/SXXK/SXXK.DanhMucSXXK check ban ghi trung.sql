use DanhMucSXXK
go

-- Kiểm tra nguyên phụ liệu, sản phẩm xem có bản ghi nào bị trùng không, nếu có thì phải khắc phục
select [MA_HQ],[MA_DV],[MA_NPL], COUNT(*) as [SL NPL SXXK trùng] from SNPL
group by [MA_HQ],[MA_DV],[MA_NPL]
having COUNT(*)>1


select [MA_HQ],[MA_DV],[MA_SP], COUNT(*) as [SL SP SXXK trùng] from SSP
group by [MA_HQ],[MA_DV],[MA_SP]
having COUNT(*)>1

select ma_sp, ma_npl, ma_dv, ma_hq, count(*) as [SL DM SXXK trùng] from DDINHMUC
group by ma_sp, ma_npl, ma_dv, ma_hq
having count(*) > 1