--To khai SXXK chua thanh khoản hoặc thanh khoản một phần
declare @MaHQ varchar(20)
set @MaHQ='P01L'

select * from DToKhaiMD 
where Thanh_Ly<>'H'
and MA_HQ =@MaHQ