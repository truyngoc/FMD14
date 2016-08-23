use SLXNK
GO

--các tờ khai gia công chưa thanh khoản
declare @SoHD nvarchar(500), @DVGC varchar(200)
set @DVGC='0101066328' -- để trống nếu chỉ lọc theo Số hợp đồng
set @SoHD = N''	--để trống nếu chỉ lọc theo đơn vị gia công


Select T.Ma_DV, t.So_HD,t.SoTK,t.Ma_LH,t.Ma_HQ,t.NamDK,t.Ngay_DK
From DToKhaiMD t join DHDGC h on t.So_HD=h.So_HD and t.Ma_HQ=h.Ma_HQHD and t.Ma_DV=h.DVGC and t.Ngay_HD=h.Ngay_Ky
Where Ma_LH like '_GC%' and h.ThanhKhoan<>1
and (t.So_HD = @SoHD or @SoHD='')
and (t.Ma_DV = @DVGC or @DVGC='')
Order by t.Ma_DV,t.So_HD
