--đếm hợp đồng GC
select COUNT(*) as [Số lượng hợp đồng GC] from DHDGC

--đếm loại sản phẩm GC
select COUNT(*) as [Số lượng loại SP GC] from DLOAISPGC

--đếm nguyên liệu GC
select COUNT(*) as [Số lượng NPL GC] from DNPLHD
--select SO_HD,COUNT(*) as [Số lượng NPL GC theo HD] from DNPLHD group by So_HD order by So_HD

--đếm sản phẩm GC
select COUNT(*) as [Số lượng SP GC] from DSPGC
--select SO_HD,COUNT(*) as [Số lượng SP GC theo HD] from DSPGC group by So_HD order by So_HD

--đếm thiết bị GC
select COUNT(*) as [Số lượng TB GC] from DThietBi

--đếm hàng mẫu GC
select COUNT(*) as [Số lượng HM GC] from ecsDHangMau

--đếm định mức GC
select COUNT(*) as [Số lượng BGCT định mức GC] from DDMuc

--đếm định mức GC sai hợp đồng
select COUNT(*) as [SL BGCT định mức GC sai HĐ] from DDMuc dm left join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null
/*
select COUNT(*) as [SL BGCT định mức GC sai NPL] from DDMuc dm left join DNPLHD l on dm.So_HD=l.So_HD and dm.Ma_HQHD=l.Ma_HQHD and dm.DVGC=l.DVGC and dm.Ngay_Ky=l.Ngay_Ky and dm.NPLP_Code=l.P_Code
where not l.P_Code is null

select COUNT(*) as [SL BGCT định mức GC sai SP] from DDMuc dm left join DSPGC s on dm.So_HD=s.So_HD and dm.Ma_HQHD=s.Ma_HQHD and dm.DVGC=s.DVGC and dm.Ngay_Ky=s.Ngay_Ky and dm.SPP_Code=s.P_Code
where s.P_Code is null
*/
select COUNT(*) as [SL BGCT định mức sai NPL hoặc SP]
from DDMuc dm join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky
	left join DNPLHD l on dm.So_HD=l.So_HD and dm.Ma_HQHD=l.Ma_HQHD and dm.DVGC=l.DVGC and dm.Ngay_Ky=l.Ngay_Ky and dm.NPLP_Code=l.P_Code
	left join DSPGC s on dm.So_HD=s.So_HD and dm.Ma_HQHD=s.Ma_HQHD and dm.DVGC=s.DVGC and dm.Ngay_Ky=s.Ngay_Ky and dm.SPP_Code=s.P_Code
where l.P_Code is null or s.P_Code is null

--số lượng bản ghi theo đơn vị gia công
select DVGC,COUNT(*) as [Số lượng HD theo DVGC] from DHDGC group by DVGC order by DVGC
select DVGC,COUNT(*) as [Số lượng loại SP GC theo DV] from DLOAISPGC group by DVGC order by DVGC
select DVGC,COUNT(*) as [Số lượng NPL GC theo DV] from DNPLHD group by DVGC order by DVGC
select DVGC,COUNT(*) as [Số lượng SP GC theo DV] from DSPGC group by DVGC order by DVGC
select DVGC,COUNT(*) as [Số lượng TB GC theo DV] from DThietBi group by DVGC order by DVGC
select DVGC,COUNT(*) as [Số lượng HM GC theo DV] from ecsDHangMau group by DVGC order by DVGC
select DVGC,COUNT(*) as [Số lượng BGCT định mức GC theo DV] from DDMuc group by DVGC order by DVGC
