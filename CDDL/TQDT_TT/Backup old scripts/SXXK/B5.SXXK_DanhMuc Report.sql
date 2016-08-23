Use [DanhMuc]
GO

--đếm Nguyên phụ liệu
select COUNT(*) as [Số lượng bản ghi NPL SXXK] from SNPL

--đếm sản phẩm
select COUNT(*) as [Số lượng bản ghi SP SXXK] from SSP

--đếm định mức
select COUNT(*) as [Số lượng bản ghi định mức SXXK] from DDINHMUC

--đếm số lượng NPL, SP có trong định mức nhưng ko có trong danh mục NPL, SP
select COUNT(*) as [SL BGCT định mức sai NPL hoặc SP]
from DDINHMUC dm
	left join SNPL l on dm.MA_HQ = l.MA_HQ and dm.MA_DV = l.MA_DV and dm.MA_NPL = l.MA_NPL
	left join SSP s on dm.MA_HQ = s.MA_HQ and dm.MA_DV = s.MA_DV and dm.MA_SP = s.MA_SP
where l.MA_NPL is null or s.MA_SP is null
