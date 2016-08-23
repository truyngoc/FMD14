use [DanhMucGCCX]
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
GO

print N'--==================Gia công - Gen column danh mục==============='
	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DHDGC'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.DHDGC ADD
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL
	end
	else
	begin
		ALTER TABLE dbo.DHDGC ADD
			CDDL_ID int NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL
		exec('update DHDGC set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DLOAISPGC'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.DLOAISPGC ADD
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL
	end
	else
	begin
		ALTER TABLE dbo.DLOAISPGC ADD
			CDDL_ID int,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL
		exec('update DLOAISPGC set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DNPLHD'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.DNPLHD ADD
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL,
			CDDL_HS_CODE varchar(12) NULL
	end
	else
	begin
		ALTER TABLE dbo.DNPLHD ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL,
			CDDL_HS_CODE varchar(12) NULL
		exec('update DNPLHD set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DSPGC'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.DSPGC ADD
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL
	end
	else
	begin
		ALTER TABLE dbo.DSPGC ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL
		exec('update DSPGC set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DThietBi'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.DThietBi ADD
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL,
			CDDL_HS_CODE varchar(12) NULL,
			CDDL_XUAT_XU varchar(3) NULL,
			CDDL_TINHTRANG varchar(1) NULL
	end
	else
	begin
		ALTER TABLE dbo.DThietBi ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL,
			CDDL_HS_CODE varchar(12) NULL,
			CDDL_XUAT_XU varchar(3) NULL,
			CDDL_TINHTRANG varchar(1) NULL
		exec('update DThietBi set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsDHangMau'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.ecsDHangMau ADD
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL
		end
	else
	begin
		ALTER TABLE dbo.ecsDHangMau ADD
			CDDL_ID int,
			CDDL_VT_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_P_CODE varchar(50) NULL
		exec('update ecsDHangMau set CDDL_ID=' + @idColumn)
	end
	GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DDMuc'
	if @idColumn = 'CDDL_ID'
	begin
		--mất ~10phút cho bảng ~2M bản ghi
		ALTER TABLE dbo.DDMuc ADD
			CDDL_DM_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_VT_ID_SP bigint NULL,
			CDDL_VT_ID_NPL bigint NULL,
			CDDL_MA_DVT_SP varchar(3) NULL,
			CDDL_SPP_Code varchar(50) NULL,
			CDDL_NPLP_Code varchar(50) NULL
	end
	else
	begin
		ALTER TABLE dbo.DDMuc ADD
			CDDL_ID int,
			CDDL_DM_ID bigint NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK_HD smallint NULL,
			CDDL_MA_HQ_HD varchar(6) NULL,
			CDDL_VT_ID_SP bigint NULL,
			CDDL_VT_ID_NPL bigint NULL,
			CDDL_MA_DVT_SP varchar(3) NULL,
			CDDL_SPP_Code varchar(50) NULL,
			CDDL_NPLP_Code varchar(50) NULL
		exec('update DDMuc set CDDL_ID=' + @idColumn)
	end
	GO
	
print N'END==================Gia công - Gen column danh mục==============='
print N'--==================Chế xuất - Gen column danh mục==============='
	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_DM_HH_DUA_VAO_D'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.ecsCX_DM_HH_DUA_VAO_D ADD
			CDDL_VT_ID bigint NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,		
			CDDL_NAM_TK smallint NULL,
			CDDL_IS_DUA_VAO smallint null
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_DM_HH_DUA_VAO_D ADD
			CDDL_ID int NULL,
			CDDL_VT_ID bigint NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,		
			CDDL_NAM_TK smallint NULL,
			CDDL_IS_DUA_VAO smallint null
		
		exec('update ecsCX_DM_HH_DUA_VAO_D set CDDL_ID=' + @idColumn)
	end

GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_DM_HH_DUA_RA_D'
	if @idColumn = 'CDDL_ID'
	begin
		ALTER TABLE dbo.ecsCX_DM_HH_DUA_RA_D ADD
			CDDL_VT_ID bigint NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,		
			CDDL_NAM_TK smallint NULL,
			CDDL_IS_DUA_VAO smallint null
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_DM_HH_DUA_RA_D ADD
			CDDL_ID int NULL,
			CDDL_VT_ID bigint NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,		
			CDDL_NAM_TK smallint NULL
		
		exec('update ecsCX_DM_HH_DUA_RA_D set CDDL_ID=' + @idColumn)
	end
GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_DinhMuc'
	if @idColumn = 'CDDL_ID'
	begin	
		ALTER TABLE dbo.ecsCX_DinhMuc ADD
			CDDL_DM_ID bigint NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,	
			CDDL_VT_ID_SP bigint NULL,
			CDDL_VT_ID_NPL bigint NULL,
			CDDL_TEN_SP nvarchar(256) null,
			CDDL_MA_HS_SP varchar(12) NULL,
			CDDL_MA_DVT_SP char(4) null,
			CDDL_Ten_NPL nvarchar(256) null,
			CDDL_MA_HS_NPL varchar(12) null,
			CDDL_MA_DVT_NPL char(4) null
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_DinhMuc ADD
			CDDL_ID int NULL,	
			CDDL_DM_ID bigint NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,	
			CDDL_VT_ID_SP bigint NULL,
			CDDL_VT_ID_NPL bigint NULL,
			CDDL_TEN_SP nvarchar(256) null,
			CDDL_MA_HS_SP varchar(12) NULL,
			CDDL_MA_DVT_SP char(4) null,
			CDDL_Ten_NPL nvarchar(256) null,
			CDDL_MA_HS_NPL varchar(12) null,
			CDDL_MA_DVT_NPL char(4) null
				
		exec('update ecsCX_DinhMuc set CDDL_ID=' + @idColumn)
	end
				
GO

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_CT_TOKHAI'
	if @idColumn = 'CDDL_ID'
	begin	
		ALTER TABLE dbo.ecsCX_CT_TOKHAI ADD
			CDDL_CT_ID bigint null,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_CT_TOKHAI ADD
			CDDL_ID int NULL,	
			CDDL_CT_ID bigint null,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL
				
		exec('update ecsCX_CT_TOKHAI set CDDL_ID=' + @idColumn)
	end
		
GO		

	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_CT_TOKHAI_HANG'
	if @idColumn = 'CDDL_ID'
	begin	
		ALTER TABLE dbo.ecsCX_CT_TOKHAI_HANG ADD
			CDDL_CT_ID bigint null,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK smallint null,
			CDDL_VT_ID bigint null
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_CT_TOKHAI_HANG ADD
			CDDL_ID int NULL,	
			CDDL_CT_ID bigint null,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK smallint null,
			CDDL_VT_ID bigint null
				
		exec('update ecsCX_CT_TOKHAI_HANG set CDDL_ID=' + @idColumn)
	end
GO

print N'END=================Chế xuất - Gen column danh mục==============='
print N'--=====================Gia công - update key======================'
declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = {ID Cục: tra bảng}
set	@IDChiCuc = {ID chi cục: tra bảng}

declare @IDDanhMuc bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000

Update DHDGC
	 Set	CDDL_HD_ID		= @IDDanhMuc + CDDL_ID
			,CDDL_MA_Cuc_HQ	= SUBSTRING(ma_hqhd,2,2)
			,CDDL_NAM_DK	= datepart(YY,ngay_ky)
			,CDDL_MA_HQ_HD	= SUBSTRING(ma_hqhd,2,2) + SUBSTRING(ma_hqhd,1,1) + SUBSTRING(ma_hqhd,4,10)

Update DNPLHD
	 Set	CDDL_VT_ID		= @IDDanhMuc + 100000000 + CDDL_ID
Update DSPGC
	 Set	CDDL_VT_ID		= @IDDanhMuc + 200000000 + CDDL_ID
Update DThietBi
	 Set	CDDL_VT_ID		= @IDDanhMuc + 300000000 + CDDL_ID
Update ecsDHangMau
	 Set	CDDL_VT_ID		= @IDDanhMuc + 400000000 + CDDL_ID
	--mất ~2phút cho bảng ~2.5M bản ghi
Update DDMuc
	 Set	CDDL_DM_ID		= @IDDanhMuc + 500000000 + CDDL_ID
	

--update các thông tin hợp đồng cho loại SP GC
update a
set	a.CDDL_HD_ID		= hd.CDDL_HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
From DLOAISPGC a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng cho NPL GC
update a
set	a.CDDL_HD_ID		= hd.CDDL_HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
	,a.CDDL_P_CODE		= SUBSTRING(a.P_CODE,2,50)
	,a.CDDL_HS_CODE		= LEFT(HS_CODE,12)
From DNPLHD a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng cho SP GC
update a
set	a.CDDL_HD_ID		= hd.CDDL_HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
	,a.CDDL_P_CODE		= SUBSTRING(a.P_CODE,2,50)
From DSPGC a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng cho Thiết bị GC
update a
set	a.CDDL_HD_ID		= hd.CDDL_HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
	,a.CDDL_P_CODE		= SUBSTRING(a.P_CODE,2,50)
	,a.CDDL_HS_CODE		= left(HS_Code,12)
	,a.CDDL_XUAT_XU		= left(Xuat_Xu,3)
	,a.CDDL_TINHTRANG	= case TinhTrang when '0' then '0' else '1' end
From DThietBi a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng cho Hàng mẫu GC
update a
set	a.CDDL_HD_ID		= hd.CDDL_HD_ID
	,a.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,a.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,a.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
	,a.CDDL_P_CODE		= SUBSTRING(a.P_CODE,2,50)
From ecsDHangMau a join DHDGC hd on a.So_HD=hd.So_HD and a.Ma_HQHD=hd.Ma_HQHD and a.DVGC=hd.DVGC and a.Ngay_Ky=hd.Ngay_Ky

--update các thông tin hợp đồng, NPL, SP cho đinh mức GC
--~10 phút cho 2M bản ghir
update dm
set	dm.CDDL_HD_ID		= hd.CDDL_HD_ID
	,dm.CDDL_MA_CUC_HQ	= hd.CDDL_MA_CUC_HQ
	,dm.CDDL_NAM_DK_HD	= hd.CDDL_NAM_DK
	,dm.CDDL_MA_HQ_HD	= hd.CDDL_MA_HQ_HD
	,dm.CDDL_SPP_CODE	= SUBSTRING(dm.SPP_Code,2,50)
	,dm.CDDL_NPLP_CODE	= SUBSTRING(dm.NPLP_Code,2,50)
from DDMuc dm join DHDGC hd on dm.So_HD=hd.So_HD and dm.Ma_HQHD=hd.Ma_HQHD and dm.DVGC=hd.DVGC and dm.Ngay_Ky=hd.Ngay_Ky

update dm
set	dm.CDDL_VT_ID_SP	= s.CDDL_VT_ID,
	dm.CDDL_MA_DVT_SP	= isnull(dm.MA_DVT_SP,s.MA_DVT)
from DDMuc dm join DSPGC s on dm.So_HD=s.So_HD and dm.Ma_HQHD=s.Ma_HQHD and dm.DVGC=s.DVGC and dm.Ngay_Ky=s.Ngay_Ky and dm.SPP_Code=s.P_Code

update dm
set	dm.CDDL_VT_ID_NPL	= l.CDDL_VT_ID
from DDMuc dm join DNPLHD l on dm.So_HD=l.So_HD and dm.Ma_HQHD=l.Ma_HQHD and dm.DVGC=l.DVGC and dm.Ngay_Ky=l.Ngay_Ky and dm.NPLP_Code=l.P_Code

/*update DDMuc 
set	CDDL_VT_ID_NPL = CDDL_ID
where	CDDL_VT_ID_NPL is null

update DDMuc 
set	CDDL_VT_ID_SP = CDDL_ID
where	CDDL_VT_ID_SP is null
*/
print N'END====================Gia công - update key======================'
print N'--=====================Chế xuất - Update key===================='
update ecsCX_DM_HH_DUA_VAO_D
set
	CDDL_VT_ID = @IDDanhMuc + 600000000 + CDDL_ID
	,CDDL_MA_HQ	= SUBSTRING(MA_HQTN,2,2) + SUBSTRING(MA_HQTN,1,1) + SUBSTRING(MA_HQTN,4,10)
	,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQTN,2,2)		
	,CDDL_IS_DUA_VAO = 1	-- dua vao
	,CDDL_NAM_TK = case upper(LEFT(MA_HANG,1))
						when '0' then 2014
						when '1' then 2015
						when '2' then 2016
						when '3' then 2017
						when '4' then 2018
						when '5' then 2019
						when '6' then 2020
						when '7' then 2021
						when '8' then 2022
						when '9' then 2023
						when 'A' then 2024
						when 'B' then 2025
						when 'C' then 2026
						when 'D' then 2027
						when 'E' then 2028
						when 'F' then 2029
						when 'G' then 2030
						when 'H' then 2031
						when 'I' then 2032
						when 'J' then 2033
						when 'K' then 2034
						when 'L' then 2035
						when 'M' then 2036
						when 'N' then 2037
						when 'O' then 2038
						when 'P' then 2039
						when 'Q' then 2040
						when 'R' then 2041
						when 'S' then 2042
						when 'T' then 2043
						when 'U' then 2044
						when 'V' then 2045
						when 'W' then 2046
						when 'X' then 2047
						when 'Y' then 2048
						when 'Z' then 2049
						else
							2050
					end
					
update ecsCX_DM_HH_DUA_RA_D
set
	CDDL_VT_ID = @IDDanhMuc + 700000000 + CDDL_ID
	,CDDL_MA_HQ	= SUBSTRING(MA_HQTN,2,2) + SUBSTRING(MA_HQTN,1,1) + SUBSTRING(MA_HQTN,4,10)
	,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQTN,2,2)		
	,CDDL_IS_DUA_VAO = 2	-- dua ra
	,CDDL_NAM_TK = case upper(LEFT(MA_HANG,1))
						when '0' then 2014
						when '1' then 2015
						when '2' then 2016
						when '3' then 2017
						when '4' then 2018
						when '5' then 2019
						when '6' then 2020
						when '7' then 2021
						when '8' then 2022
						when '9' then 2023
						when 'A' then 2024
						when 'B' then 2025
						when 'C' then 2026
						when 'D' then 2027
						when 'E' then 2028
						when 'F' then 2029
						when 'G' then 2030
						when 'H' then 2031
						when 'I' then 2032
						when 'J' then 2033
						when 'K' then 2034
						when 'L' then 2035
						when 'M' then 2036
						when 'N' then 2037
						when 'O' then 2038
						when 'P' then 2039
						when 'Q' then 2040
						when 'R' then 2041
						when 'S' then 2042
						when 'T' then 2043
						when 'U' then 2044
						when 'V' then 2045
						when 'W' then 2046
						when 'X' then 2047
						when 'Y' then 2048
						when 'Z' then 2049
						else
							2050
					end

update ecsCX_DinhMuc
set
	CDDL_DM_ID = @IDDanhMuc + 500000000 + CDDL_ID
	,CDDL_MA_HQ	= SUBSTRING(MA_HQ,2,2) + SUBSTRING(MA_HQ,1,1) + SUBSTRING(MA_HQ,4,10)
	,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQ,2,2)		
	
	
update ecsCX_CT_TOKHAI
set
	CDDL_CT_ID = @IDDanhMuc + 800000000 + CDDL_ID
	,CDDL_MA_HQ	= SUBSTRING(MA_HQTN,2,2) + SUBSTRING(MA_HQTN,1,1) + SUBSTRING(MA_HQTN,4,10)
	,CDDL_MA_CUC_HQ	= SUBSTRING(MA_HQTN,2,2)
	
-- update thong tin ecsCX_DinhMuc
update d
set 
	CDDL_VT_ID_NPL = v.CDDL_VT_ID
	,CDDL_Ten_NPL = v.TEN_HANG
	,CDDL_MA_HS_NPL = v.MA_HS
	,CDDL_MA_DVT_NPL = v.MA_DVT
from ecsCX_DinhMuc d
	join ecsCX_DM_HH_DUA_VAO_D v on d.MA_NPL = v.MA_HANG and d.MA_DV = v.MA_DV_XN and d.MA_HQ = v.MA_HQTN and LOAI_HANG = 1 -- NPL
	
-- SP		
update d
set CDDL_VT_ID_SP = r.CDDL_VT_ID
	,CDDL_TEN_SP = r.TEN_HANG
	,CDDL_MA_HS_SP = r.MA_HS
	,CDDL_MA_DVT_SP = r.MA_DVT
from ecsCX_DinhMuc d
	join ecsCX_DM_HH_DUA_RA_D r on d.MA_SP = r.MA_HANG and d.MA_DV = r.MA_DV_XN and d.MA_HQ = r.MA_HQTN and LOAI_HANG = 2 -- SP
	
-- update thong tin ecsCX_CT_TOKHAI_HANG
update h
set
	CDDL_CT_ID = t.CDDL_CT_ID
	,CDDL_MA_HQ = t.CDDL_MA_HQ
	,CDDL_MA_CUC_HQ = t.CDDL_MA_CUC_HQ
	,CDDL_NAM_DK = t.NAM_DK
	--,CDDL_VT_ID
from ecsCX_CT_TOKHAI_HANG h
	join ecsCX_CT_TOKHAI t on h.SO_TN = t.SO_TN and h.NAM_TN = t.NAM_TN and h.MA_HQTN = t.MA_HQTN
	
-- 

update h
set
	CDDL_VT_ID = v.CDDL_VT_ID
from ecsCX_CT_TOKHAI_HANG h
	join ecsCX_CT_TOKHAI t on h.SO_TN = t.SO_TN and h.NAM_TN = t.NAM_TN and h.MA_HQTN = t.MA_HQTN	-- join de lay MA_DV_XN
	join ecsCX_DM_HH_DUA_VAO_D v on h.MA_HANG = v.MA_HANG and t.MA_DV_XN = v.MA_DV_XN and h.MA_HQTN = v.MA_HQTN and h.LOAI_HANG = v.LOAI_HANG

--

update h
set
	CDDL_VT_ID = v.CDDL_VT_ID
from ecsCX_CT_TOKHAI_HANG h
	join ecsCX_CT_TOKHAI t on h.SO_TN = t.SO_TN and h.NAM_TN = t.NAM_TN and h.MA_HQTN = t.MA_HQTN	-- join de lay MA_DV_XN
	join ecsCX_DM_HH_DUA_RA_D v on h.MA_HANG = v.MA_HANG and t.MA_DV_XN = v.MA_DV_XN and h.MA_HQTN = v.MA_HQTN and h.LOAI_HANG = v.LOAI_HANG

print N'END====================Chế xuất - Update key===================='

GO