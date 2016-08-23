use SXXK
GO

--To khai SXXK chua thanh khoản hoặc thanh khoản một phần
declare @MaDV varchar(20)
set @MaDV='0101310618'

select * from DDINHMUC 
where MA_DV=@MaDV