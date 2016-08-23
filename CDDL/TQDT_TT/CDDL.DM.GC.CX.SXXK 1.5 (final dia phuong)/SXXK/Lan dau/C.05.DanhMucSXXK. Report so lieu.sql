Use [DanhMucSXXK]
GO

print N'===================Báo cáo số liệu==========================='
print N'===============SXXK===================='
declare @slnpl varchar(20), @slsp varchar(20), @sldm varchar(20)
declare @sldmSAInplsp varchar(20)
declare @NPL_ID varchar(20), @SP_ID varchar(20), @DM_ID varchar(20)

select @slnpl	= COUNT(*)
		,@NPL_ID = MAX(CDDL_ID) 
from SNPL

select @slsp	= COUNT(*) 
		,@SP_ID = MAX(CDDL_ID)
from SSP

select @sldm	= COUNT(*) 
		, @DM_ID = MAX(CDDL_ID)
from DDINHMUC

select @sldmSAInplsp = COUNT(*)
from DDINHMUC dm
	left join SNPL l on dm.MA_HQ = l.MA_HQ and dm.MA_DV = l.MA_DV and dm.MA_NPL = l.MA_NPL
	left join SSP s on dm.MA_HQ = s.MA_HQ and dm.MA_DV = s.MA_DV and dm.MA_SP = s.MA_SP
where l.MA_NPL is null or s.MA_SP is null


print N'SL NPL SXXK          : ' + @slnpl
print N'SL sản phẩm SXXK     : ' + @slsp
print N'SL định mức SXXK     : ' + @sldm
 
print N'Số lượng bản ghi chi tiết định mức SXXK sai NPL hoặc SP:	' + @sldmSAInplsp
 
Print '=========MAX ID========================================================'
print N'MAX ID NPL SXXK           : ' + isnull(@NPL_ID,'0')
print N'MAX ID SP SXXK            : ' + isnull(@SP_ID,'0')
print N'MAX ID định mức SXXK      : ' + isnull(@DM_ID,'0')
