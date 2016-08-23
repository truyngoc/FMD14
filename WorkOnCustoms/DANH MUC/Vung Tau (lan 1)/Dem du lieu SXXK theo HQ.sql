Use [DanhMucSXXK]
GO

declare @slnpl varchar(20), @slsp varchar(20), @sldm varchar(20)
declare @MaHQ varchar(6)
set	@MaHQ='01PP02'

select @slnpl	= COUNT(*)
from SNPL
Where	CDDL_MA_HQ=@MaHQ

select @slsp	= COUNT(*) 
from SSP
Where	CDDL_MA_HQ=@MaHQ

select @sldm	= COUNT(*) 
from DDINHMUC
Where	CDDL_MA_HQ=@MaHQ


Print N'=========Số liệu SXXK của đơn vị HQ: ' + @MaHQ + '==================='
print N'SL NPL SXXK          : ' + @slnpl
print N'SL sản phẩm SXXK     : ' + @slsp
print N'SL định mức SXXK     : ' + @sldm
 