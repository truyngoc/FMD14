-- use TKSXXK
--đếm tờ khai
declare @sltk varchar(20),@slhangth varchar(20),@slnplton varchar(20)
declare @slhangdc varchar(20),@slhangdcct varchar(20)

select @sltk		= COUNT(*) 
from DToKhaiMD

select @slhangth		= COUNT(*) 
from DHangMDTH
select @slhangdc		= COUNT(*) 
from DHangMDDC
select @slhangdcct		= COUNT(*) 
from DHangMDDC_CT

select @slnplton	= COUNT(*)
from DNPLNHAP

print N'===============Số liệu TRƯỚC chuyển đổi===================='
print N'===============Số lượng bản ghi============================'
print N'SL tờ khai (DToKhaiMD)          : ' + @sltk
print N'SL hàng TH						: ' + @slhangth
print N'SL hàng	DC						: ' + @slhangdc
print N'SL hàng	DC_CT					: ' + @slhangdcct
print N'SL NPL tồn                      : ' + @slnplton

