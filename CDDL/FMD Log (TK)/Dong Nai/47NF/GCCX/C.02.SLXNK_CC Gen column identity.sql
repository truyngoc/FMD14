-- use [TKGCCX]

print N'--=====================Tờ khai - thêm cột Identity ======================'
	-- Tờ khai GC, CX
	declare @idColumn as varchar(100)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DToKhaiMD'
	if @idColumn is null
	begin
		ALTER TABLE dbo.DToKhaiMD ADD
			CDDL_ID int NOT NULL IDENTITY (1, 1)
	end
	else
	begin
		ALTER TABLE dbo.DToKhaiMD ADD
			CDDL_ID int NULL
		exec('update DToKhaiMD set CDDL_ID=' + @idColumn)
	end

	/*
	-- Hàng GC, CX
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'DHangMD'
	if @idColumn is null
	begin
		ALTER TABLE dbo.DHangMD ADD
			CDDL_ID int NOT NULL IDENTITY (1, 1)
	end
	else
	begin
		ALTER TABLE dbo.DHangMD ADD
			CDDL_ID int NULL
		exec('update DHangMD set CDDL_ID=' + @idColumn)
	end
	*/
	
	-- NPL SP huy (CX)
	Select @idColumn=name from sys.identity_columns where object_name(object_id) = 'ecsCX_HUY_NPLSP_D'
	if @idColumn is null
	begin
		ALTER TABLE dbo.ecsCX_HUY_NPLSP_D ADD
			CDDL_ID int NOT NULL IDENTITY (1, 1)
	end
	else
	begin
		ALTER TABLE dbo.ecsCX_HUY_NPLSP_D ADD
			CDDL_ID int NULL
		exec('update ecsCX_HUY_NPLSP_D set CDDL_ID=' + @idColumn)
	end
	
	GO
print N'--=====================Tờ khai - thêm cột dữ liệu biến đổi ======================'
	ALTER TABLE dbo.DToKhaiMD ADD
			CDDL_TK_ID bigint NULL,
			CDDL_MA_CUC_HQ varchar(2) NULL,
			CDDL_NAM_DK smallint NULL,
			CDDL_MA_HQ varchar(6) NULL,
			CDDL_HD_ID bigint NULL,
			CDDL_PHAN_LUONG smallint NULL,
			CDDL_SoTN int null,
			CDDL_NamTN smallint null,
			CDDL_NgayTN datetime null,
			CDDL_MessageId int null,
			CDDL_Reference uniqueidentifier null,
			CDDL_HinhThucKhai tinyint null,
			CDDL_KhauNV int null,
			CDDL_KhauNVCu int null,
			CDDL_KhauNV_TruocSuaOrHuy int null,
			CDDL_KTHS_DaiDienDN nvarchar(255) null,
			CDDL_KTHS_SoCMT nvarchar(50) null,
			CDDL_KTHS_NgayCap datetime null,
			CDDL_KetQuaXLBuocTruoc int null,
			CDDL_DeXuatKhac nvarchar(2000) null,
			CDDL_CoChuKySo tinyint null,
			CDDL_KVGiamSat smallint null,
			CDDL_ecsTen_DL nvarchar(256) null,
			CDDL_ecsMa_DL varchar(17) null,
			CDDL_ecsTrangThai_DL int null,
			CDDL_ecsSo_HDGN varchar(256) null,
			CDDL_ecsNgay_HDGN datetime null,
			CDDL_ecsNgay_HHHDGN datetime null,
			CDDL_ecsTen_NguoiDD nvarchar(35) null,
			CDDL_ecsChucVu_NguoiDD nvarchar(256) null,
			CDDL_ecsMa_DVG varchar(17) null,
			CDDL_ecsTen_DVG nvarchar(256) null,
			CDDL_ecsMa_DVN varchar(17) null,
			CDDL_ecsTen_DVN nvarchar(256) null,
			CDDL_ecsMa_DVCD varchar(17) null,
			CDDL_ecsTen_DVCD nvarchar(256) null,
			CDDL_ecsDD_GH nvarchar(256) null,
			CDDL_ecsNgay_GH datetime null,
			CDDL_ecsMa_CKNhap varchar(6) null,
			CDDL_ecsMa_CKXuat varchar(6) null,
			CDDL_ecsTen_CKXuat nvarchar(256) null,
			CDDL_ecsMa_DV_DT varchar(17) null,
			CDDL_ecsNoCT int null,
			CDDL_ecsLayMau int null,
			CDDL_ecsLuongTK_TruocSua int null,
			CDDL_ecsTen_DV nvarchar(256) null,
			CDDL_ecsTen_DVKT nvarchar(256) null,
			CDDL_ecsMa_DV_NT varchar(17) null,
			CDDL_ecsTen_DV_NT nvarchar(256) null,
			CDDL_ecsTen_CKNhap nvarchar(256) null,
			CDDL_ecsDaKiemHoa tinyint null,
			CDDL_ecsDaXNThongQuan tinyint null,
			CDDL_ecsDaXNChuyenCK tinyint null,
			CDDL_ecsDaXNGiaiPhongHang tinyint null,
			CDDL_ecsThongQuan_GPH_BQ_CCK tinyint null,
			CDDL_ecsTen_DVUT nvarchar(256) null,
			CDDL_ecsDaXNMangHangBaoQuan tinyint null,
			CDDL_ecsTrong_Luong_Tinh numeric(18, 4) null,
			CDDL_ecsKQGiamDinh int null,
			CDDL_ecsKiem_Hoa_Ho int null,
			CDDL_ecsLay_Mau_CK int null,
			CDDL_ecsMsgVersion int null,
			CDDL_ecsCo_An_Han bit null,
			CDDL_ecsLy_Do_An_Han nvarchar(256) null,
			CDDL_ecsSo_Ngay_An_Han int null,
			CDDL_ecsCo_Dam_Bao_Nghia_Vu_Thue bit null,
			CDDL_ecsHinh_Thuc_Dam_Bao nvarchar(254) null,
			CDDL_ecsTri_Gia_Dam_Bao numeric(18, 4) null,
			CDDL_ecsNgay_Bat_Dau_Dam_Bao datetime null,
			CDDL_ecsNgay_Ket_Thuc_Dam_Bao datetime null,
			CDDL_ecsSo_Phu_Luc_Hop_Dong varchar(50) null,
			CDDL_ecsNgay_Phu_Luc_Hop_Dong datetime null,
			CDDL_ecsNgay_Het_Han_Hop_Dong datetime null,
			CDDL_ecsDaHoanThanhNghiaVuThue bit null,
			CDDL_ecsDaHoanChinhHoSo bit null,
			CDDL_So_Container20 int  null,
			CDDL_SO_CONTAINER40 int null,
			CDDL_So_Container int null,
			CDDL_PLUONG	int null,
			CDDL_DV_DT	varchar(256) null,
			CDDL_VAN_DON varchar(35) null,
			CDDL_SO_HD varchar(50) null,
			CDDL_SO_HDTM varchar(30) null,
			CDDL_ecsNgayHH_TNTX datetime null,
			CDDL_Ngay_Dua_Vao_Thanh_Khoan datetime null
			
	ALTER TABLE dbo.DHangMD ADD
			CDDL_TK_ID bigint null
			,CDDL_MA_HQ varchar(6) null
			,CDDL_Ma_Cuc_HQ varchar(2) null
			,CDDL_Ma_Don_Vi varchar(17) null
			,CDDL_HD_ID bigint null
			,CDDL_VT_ID bigint null
			,CDDL_Ma_Vat_Tu varchar(51) null
			,CDDL_Loai_Hang smallint null
	
	-- nguyen phu lieu gia cong
	ALTER TABLE dbo.ecsNPLTCU ADD
			CDDL_TK_ID bigint null,
			CDDL_VT_ID bigint null,
			CDDL_MA_HQ varchar(6) null,
			CDDL_Ma_Cuc_HQ varchar(2) null,
			CDDL_Ma_Vat_Tu varchar(50)
			
	ALTER TABLE dbo.ecsNPLTCU_CT ADD
			CDDL_TK_ID bigint null,
			CDDL_VT_ID bigint null,
			CDDL_MA_HQ varchar(6) null,
			CDDL_Ma_Cuc_HQ varchar(2) null
	
	-- nguyen phu lieu, sp huy che xuat
	ALTER TABLE dbo.ecsCX_HUY_NPLSP_D ADD
		CDDL_CT_ID bigint null,
		CDDL_MA_HQ varchar(6) NULL,
		CDDL_MA_CUC_HQ varchar(2) NULL,
		CDDL_VT_ID bigint null,
		CDDL_TK_ID bigint null,
		CDDL_NAM_DK_TK smallint null

GO	