﻿use DanhMucGCCX
GO
--đếm hợp đồng GC
declare @slhdgc varchar(20),@slloaispgc varchar(20),@slnplgc varchar(20),@slspgc varchar(20),@sltbgc varchar(20),@slhmgc varchar(20)
declare @sldmgc varchar(20),@sldmgcSAIhd varchar(20),@sldmgcSAInplsp varchar(20)
declare @slnplSAIhd varchar(20),@slspSAIhd varchar(20),@sltbSAIhd varchar(20),@slhmSAIhd varchar(20)

select @slhdgc		= COUNT(*) from DHDGC
select @slloaispgc	= COUNT(*) from DLOAISPGC
select @slnplgc		= COUNT(*) from DNPLHD
select @slspgc		= COUNT(*) from DSPGC
select @sltbgc		= COUNT(*) from DThietBi
select @slhmgc		= COUNT(*) from ecsDHangMau
select @sldmgc		= COUNT(*) from DDMuc

select @sldmgcSAIhd	= COUNT(*) 
from DDMuc dm left join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @slnplSAIhd	= COUNT(*) 
from DNPLHD a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @slspSAIhd	= COUNT(*) 
from DSPGC a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @sltbSAIhd	= COUNT(*) 
from DThietBi a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @slhmSAIhd	= COUNT(*) 
from ecsDHangMau a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null

select @sldmgcSAInplsp	= COUNT(*) 
from DDMuc dm join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky
	left join DNPLHD l on dm.So_HD=l.So_HD and dm.Ma_HQHD=l.Ma_HQHD and dm.DVGC=l.DVGC and dm.Ngay_Ky=l.Ngay_Ky and dm.NPLP_Code=l.P_Code
	left join DSPGC s on dm.So_HD=s.So_HD and dm.Ma_HQHD=s.Ma_HQHD and dm.DVGC=s.DVGC and dm.Ngay_Ky=s.Ngay_Ky and dm.SPP_Code=s.P_Code
where l.P_Code is null or s.P_Code is null

print N'===============Gia công===================='
print N'SL hợp đồng GC          : ' + @slhdgc
print N'SL loại sản phẩm GC     : ' + @slloaispgc
print N'SL NPL GC               : ' + @slnplgc
print N'SL SP GC                : ' + @slspgc
print N'SL thiết bị GC          : ' + @sltbgc
print N'SL hàng mẫu GC          : ' + @slhmgc
print N'SL chi tiết định mức GC : ' + @sldmgc

print N'SL NPL gia công sai hợp đồng                         : ' + @slnplSAIhd
print N'SL SP gia công sai hợp đồng                          : ' + @slspSAIhd
print N'SL thiết bị gia công sai hợp đồng                    : ' + @sltbSAIhd
print N'SL hàng mẫu gia công sai hợp đồng                    : ' + @slhmSAIhd
print N'SL bản ghi chi tiết định mức gia công sai hợp đồng   : ' + @sldmgcSAIhd
print N'SL bản ghi chi tiết định mức gia công sai NPL hoặc SP: ' + @sldmgcSAInplsp

/*
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
select COUNT(*) as [SL BGCT định mức sai NPL hoặc SP]
from DDMuc dm join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky
	left join DNPLHD l on dm.So_HD=l.So_HD and dm.Ma_HQHD=l.Ma_HQHD and dm.DVGC=l.DVGC and dm.Ngay_Ky=l.Ngay_Ky and dm.NPLP_Code=l.P_Code
	left join DSPGC s on dm.So_HD=s.So_HD and dm.Ma_HQHD=s.Ma_HQHD and dm.DVGC=s.DVGC and dm.Ngay_Ky=s.Ngay_Ky and dm.SPP_Code=s.P_Code
where l.P_Code is null or s.P_Code is null
*/
print N'--================Chế xuất - Số tổng=========================='
declare @hh_in varchar(20)
declare @hh_out varchar(20)
declare @dinhmuc varchar(20)
declare @ct_tk varchar(20)
declare @ct_tk_h varchar(20)
select @hh_in=COUNT(*) from ecsCX_DM_HH_DUA_VAO_D
select @hh_out=COUNT(*) from ecsCX_DM_HH_DUA_RA_D
select @dinhmuc=COUNT(*) from ecsCX_DinhMuc
select @ct_tk=COUNT(*) from ecsCX_CT_TOKHAI
select @ct_tk_h=COUNT(*) from ecsCX_CT_TOKHAI_HANG
print N'SL danh mục đưa hàng VÀO: ' + @hh_in
print N'SL danh mục đưa hàng RA : ' + @hh_out
print N'SL bản ghi định mức CX  : ' + @dinhmuc
print N'SL bản ghi CT tờ khai   : ' + @ct_tk
print N'SL bản ghi CT hàng      : ' + @ct_tk_h
/*
select COUNT(*) as [CX - SL bản ghi DM hàng đưa vào] from ecsCX_DM_HH_DUA_VAO_D
select COUNT(*) as [CX - SL bản ghi DM hàng đưa ra] from ecsCX_DM_HH_DUA_RA_D
select COUNT(*) as [CX - SL bản ghi định mức] from ecsCX_DinhMuc
select COUNT(*) as [CX - SL bản ghi CT tờ khai] from ecsCX_CT_TOKHAI
select COUNT(*) as [CX - SL bản ghi CT hàng] from ecsCX_CT_TOKHAI_HANG
*/
print N'===================Gia công - số tổng theo đơn vị==========='
/*
--số lượng bản ghi theo đơn vị gia công
select DVGC,COUNT(*) as [Số lượng HD theo DVGC] from DHDGC group by DVGC order by DVGC
select DVGC,COUNT(*) as [Số lượng loại SP GC theo DV] from DLOAISPGC group by DVGC order by DVGC
select DVGC,COUNT(*) as [Số lượng NPL GC theo DV] from DNPLHD group by DVGC order by DVGC
select DVGC,COUNT(*) as [Số lượng SP GC theo DV] from DSPGC group by DVGC order by DVGC
select DVGC,COUNT(*) as [Số lượng TB GC theo DV] from DThietBi group by DVGC order by DVGC
select DVGC,COUNT(*) as [Số lượng HM GC theo DV] from ecsDHangMau group by DVGC order by DVGC
select DVGC,COUNT(*) as [Số lượng BGCT định mức GC theo DV] from DDMuc group by DVGC order by DVGC
*/
declare @msg nvarchar(255)
if @slnplSAIhd<>'0'
begin
	set @msg=N'Có ' + @slnplSAIhd + N' nguyên phụ liệu GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print 'delete a
from DNPLHD a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end

if @slspSAIhd <>'0'
begin
	set @msg=N'Có ' + @slspSAIhd + N' sản phẩm GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print 'delete a
from DSPGC a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end
if @sltbSAIhd <>'0'
begin
	set @msg=N'Có ' + @sltbSAIhd + N' thiết bị GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print 'delete a
from DThietBi a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end
if @slhmSAIhd <>'0'
begin
	set @msg=N'Có ' + @slhmSAIhd + N' hàng mẫu GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print 'delete a
from ecsDHangMau a left join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end
if @sldmgcSAIhd <>'0'
begin
	set @msg=N'Có ' + @sldmgcSAIhd + N' bản ghi chi tiết định mức GC sai hợp đồng, cần xóa đi'
	raiserror(@msg,16,1)
	print 'delete a
from DDMuc dm left join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky
where hd.So_HD is null'
end