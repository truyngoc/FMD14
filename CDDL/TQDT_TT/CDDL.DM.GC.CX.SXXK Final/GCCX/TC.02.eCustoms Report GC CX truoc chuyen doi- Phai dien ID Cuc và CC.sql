-- use [eCustoms_His1]
-- GO

declare @IDCucHQ bigint
declare @IDChiCuc bigint
set	@IDCucHQ = 			{ID Cục: tra bảng}
set	@IDChiCuc = '0'		--{ID chi cục: tra bảng}

declare @HD_ID varchar(20), @NPL_ID varchar(20), @SP_ID varchar(20), @TB_ID varchar(20), @HM_ID varchar(20), @LOAISP_ID varchar(20),@DM_ID varchar(20)

declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000
set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*1000000000

--đếm hợp đồng GC
declare @slhdgc varchar(20),@slloaispgc varchar(20),@slnplgc varchar(20),@slspgc varchar(20),@sltbgc varchar(20),@slhmgc varchar(20)
declare @sldmgc varchar(20),@sldmgcSAIhd varchar(20),@sldmgcSAInplsp varchar(20)

select @slhdgc		= COUNT(*) 
		,@HD_ID		= max(HD_ID)
from DGC_HD	where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax

select @slloaispgc	= COUNT(*) 
--		,@LOAISP_ID		= max(HD_ID)
from DGC_LOAI_SP	where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax

select @slnplgc		= COUNT(*)	
		,@NPL_ID		= max(VT_ID)
from DGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 1

select @slspgc		= COUNT(*)	
		,@SP_ID		= max(VT_ID)
from DGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 2

select @sltbgc		= COUNT(*)	
		,@TB_ID		= max(VT_ID)
from DGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 3

select @slhmgc		= COUNT(*)	
		,@HM_ID		= max(VT_ID)
from DGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 4

select @sldmgc		= COUNT(*) 
		,@DM_ID		= max(DM_ID)
from DGC_DINH_MUC  where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax
select @sldmgc		= COUNT(*) from DGC_DINH_MUC  where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax
print N'===============Số liệu TRƯỚC chuyển đổi===================='
print N'===============Gia công===================================='
print N'SL hợp đồng GC          : ' + @slhdgc
print N'SL loại sản phẩm GC     : ' + @slloaispgc
print N'SL NPL GC               : ' + @slnplgc
print N'SL SP GC                : ' + @slspgc
print N'SL thiết bị GC          : ' + @sltbgc
print N'SL hàng mẫu GC          : ' + @slhmgc
print N'SL chi tiết định mức GC : ' + @sldmgc
print N'===============Chế xuất===================='
declare @dcx_vao varchar(20)
declare @dcx_ra varchar(20)
declare @dcx_dm varchar(20)
declare @dcx_ct_tk varchar(20)
declare @dcx_ct_tk_h varchar(20)
declare @VAO_ID varchar(20), @RA_ID varchar(20), @DMCX_ID varchar(20), @CTTK_ID varchar(20), @CTHANG_ID varchar(20)

select @dcx_vao	= COUNT(*)
		,@VAO_ID	= MAX(VT_ID)
from DCX_DM_HH_DUA_VAO_RA where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax and IS_DUA_VAO=1

select @dcx_ra	= COUNT(*)	
		,@RA_ID	= MAX(VT_ID)
from DCX_DM_HH_DUA_VAO_RA where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax and IS_DUA_VAO<>1

select @dcx_dm	= COUNT(*)	
		,@DMCX_ID	= MAX(DM_ID)
from DCX_DINH_MUC		where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax

select @dcx_ct_tk	= COUNT(*)	
		,@CTTK_ID	= MAX(CT_ID)
from DCX_CT_TOKHAI	where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax

select @dcx_ct_tk_h	= COUNT(*)	
		,@CTHANG_ID	= MAX(CT_ID)
from DCX_CT_TOKHAI_HANG 	where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax

print N'SL danh mục đưa hàng VÀO: ' + @dcx_vao
print N'SL danh mục đưa hàng RA : ' + @dcx_ra
print N'SL bản ghi định mức CX  : ' + @dcx_dm
print N'SL bản ghi CT tờ khai   : ' + @dcx_ct_tk
print N'SL bản ghi CT hàng      : ' + @dcx_ct_tk_h

Print '=========MAX ID======================================================'
Print '=========Gia công===================================================='
print N'MAX ID hợp đồng GC      : ' + isnull(@HD_ID,'0')
print N'MAX ID loại SP GC       : ' + isnull(@LOAISP_ID,'0')
print N'MAX ID NPL GC           : ' + isnull(@NPL_ID,'0')
print N'MAX ID SP GC            : ' + isnull(@SP_ID,'0')
print N'MAX ID thiết bị GC      : ' + isnull(@TB_ID,'0')
print N'MAX ID hàng mẫu GC      : ' + isnull(@HM_ID,'0')
print N'MAX ID định mức GC      : ' + isnull(@DM_ID,'0')
Print '=========Chế xuất===================================================='
print N'MAX ID hàng đưa VÀO     : ' + isnull(@VAO_ID,'0')
print N'MAX ID hàng đưa RA      : ' + isnull(@RA_ID,'0')
print N'MAX ID Định mức CX      : ' + isnull(@DMCX_ID,'0')
print N'MAX ID CT Tờ khai       : ' + isnull(@CTTK_ID,'0')
print N'MAX ID CT hàng          : ' + isnull(@CTHANG_ID,'0')
GO

print '--=====================Gia công - đổ dữ liệu vào eCustoms======================'
print 'Insert From DHDGC into DGC_HD'
Insert into DGC_HD(
	HD_ID
	,Ma_Cuc_HQ
	,Nam_DK
	,So_HD_HQ_Cap
	,So_HD
	,Ma_HQ_HD
	,Don_Vi_GC
	,Ngay_Ky
	,So_GP
	,Ngay_GP
	,Don_Vi_Doi_Tac
	,Dia_Chi_Doi_Tac
	,Ngay_DK
	,Ngay_HH
	,Ngay_GH
	,Nuoc_Thue_GC
	,Thi_Truong_XK
	,Nguoi_Nhan_Hang
	,Dieu_Kien_Giao_Hang
	,Nguoi_Giao_Trung_Gian
	,Tong_Tri_Gia_SP
	,Tong_Tri_Gia_Tien_Cong
	,Ma_NT
	,PT_TT
	,Thoi_han_TT
	,PT_Xu_Ly
	,Nguoi_Theo_Doi
	,Thanh_Khoan
	,Ngay_Thanh_Khoan
	,So_Thanh_Khoan
	,Nguoi_Thanh_Khoan
	,Noi_Dung_Thanh_Khoan
	,Nguoi_Duyet
	,Nguoi_Vao_May
	,Ngay_Vao_May
	,So_Luu
	,Ngay_Phan_Cong_Thanh_Khoan
	,Trang_Thai
	,So_TN
	,Nam_TN
	,Ma_Nguoi_Nhan
	,Ten_Nguoi_Nhan
	,Dia_Chi_nguoi_nhan
	,Ma_Nguoi_Thue
	,Ten_Nguoi_Thue
	,Dia_Chi_Nguoi_Thue
	,Nuoc_Nhan_Gia_Cong
	,Ghi_Chu_Khac
	,Ma_DV_KB
	,Ma_DV_XN
	,Ten_DV_KB
	,Ten_DV_XN
	,Ma_DV_UT
	,Ten_DV_UT
	,Ma_DV_NT
	,Ten_DV_NT
	,Gia_Cong_Nguoc
	,Ngay_TN
	,MessageID)
Select
	CDDL_HD_ID
	,CDDL_MA_Cuc_HQ
	,CDDL_NAM_DK
	,CDDL_HD_ID
	,So_HD
	,CDDL_MA_HQ_HD
	,DVGC
	,Ngay_Ky
	,So_GP
	,Ngay_GP
	,DVDT
	,DiaChi_DT
	,Ngay_DK
	,Ngay_HH
	,Ngay_GH
	,isnull(NuocThueGC,' ') as NuocThueGC
	,ThiTruongXK
	,Consignee
	,DK_Giao
	,TGian_Giao
	,TriGiaGC
	,GiaGC
	,NgTe
	,isnull(PTTT,' ') as PTTT
	,ThoiHanTT
	,PTXuLy
	,Nguoi_TD
	,ThanhKhoan
	,Ngay_TK
	,So_TK
	,Nguoi_TK
	,NoiDung_TK
	,Nguoi_Duyet
	,Nguoi_VM
	,Ngay_VM
	,So_Luu
	,Ngay_PCTK
	,TrangThai
	,So_TN
	,Nam_TN
	,MA_NGUOI_NHAN
	,TEN_NGUOI_NHAN
	,DIA_CHI_NGUOI_NHAN
	,MA_NGUOI_THUE
	,TEN_NGUOI_THUE
	,DIA_CHI_NGUOI_THUE
	,isnull(NuocNhanGC,'VN') as NuocNhanGC
	,GHI_CHU_KHAC
	,MA_DV_KB
	,MA_DV_XN
	,TEN_DV_KB
	,TEN_DV_XN
	,MA_DV_UT
	,TEN_DV_UT
	,MA_DV_NT
	,TEN_DV_NT
	,GIA_CONG_NGUOC
	,'01-01-1900' as Ngay_TN
	,0 as MessageID
From	DANHMUC_GCCX.DanhMucGCCX.dbo.DHDGC

GO
print 'Insert From DLOAISPGC Into DGC_LOAI_SP'
Insert Into DGC_LOAI_SP(
	HD_ID
	,Ma_HQ_HD
	,Ma_Cuc_HQ
	,Nam_DK_HD
	,Ma_SP_GC
	,Ma_Du_Kien
	,So_Luong
	,Gia_GC
	,Tri_Gia_SP
	,Ten_SP_GC
--	,Tri_Gia_GC
)
Select
	CDDL_HD_ID
	,CDDL_MA_HQ_HD
	,CDDL_MA_Cuc_HQ
	,CDDL_NAM_DK_HD
	,Ma_SPGC
	,Ma_DuKien
	,So_Luong
	,Gia_GC
	,TriGia_SP
	,Ten_SPGC
--	,Gia_GC * So_Luong as Tri_Gia_GC
From	DANHMUC_GCCX.DanhMucGCCX.dbo.DLOAISPGC

GO
print 'Insert From DNPLHD Into DGC_SP_NPL_TB_HM'
Insert Into DGC_SP_NPL_TB_HM(
	VT_ID
	,Ma_HQ_HD
	,Ma_Cuc_HQ
	,Nam_DK_HD
	,HD_ID
	,Ma_Vat_Tu
	,Loai
	,Ten_Vat_Tu
	,Ma_HS
	,Ma_DVT
	,So_Luong_DK
	,Nguon_Nguyen_Lieu -- moi them vao theo TT22
	)
Select
	CDDL_VT_ID
	,CDDL_MA_HQ_HD
	,CDDL_MA_CUC_HQ
	,CDDL_NAM_DK_HD
	,CDDL_HD_ID
	,CDDL_P_Code
	,1 as Loai
	,Ten_NPL
	,CDDL_HS_Code
	,Ma_DVT
	,SL_DK
	,1
From	DANHMUC_GCCX.DanhMucGCCX.dbo.DNPLHD

GO
print 'Insert Into DGC_SP_NPL_TB_HM'
Insert Into DGC_SP_NPL_TB_HM(
	VT_ID
	,Ma_HQ_HD
	,Ma_Cuc_HQ
	,Nam_DK_HD
	,HD_ID
	,Ma_Vat_Tu
	,Loai
	,Ten_Vat_Tu
	,Ma_HS
	,Ma_DVT
	,So_Luong_DK
	,Ma_NT
	,Tri_Gia
	,Ma_SP_GC
	,Nguon_Nguyen_Lieu -- moi them vao theo TT22
	)
Select
	CDDL_VT_ID
	,CDDL_MA_HQ_HD
	,CDDL_MA_CUC_HQ
	,CDDL_NAM_DK_HD
	,CDDL_HD_ID
	,CDDL_P_Code
	,2 as Loai
	,Ten_SP
	,isnull(HS_Code,' ') as HS_Code
	,Ma_DVT
	,SL_DK
	,NgTe
	,TriGiaGC
	,Nhom_SP
	,0
From	DANHMUC_GCCX.DanhMucGCCX.dbo.DSPGC
GO
print 'Insert From DThietBi Into DGC_SP_NPL_TB_HM'
Insert Into DGC_SP_NPL_TB_HM(
	VT_ID
	,Ma_HQ_HD
	,Ma_Cuc_HQ
	,Nam_DK_HD
	,HD_ID
	,Ma_Vat_Tu
	,Loai
	,Ten_Vat_Tu
	,Ma_HS
	,Ma_DVT
	,So_Luong_DK
	,Nuoc_Xuat_Xu
	,Ma_NT
	,Tri_Gia
	,Tinh_Trang
	,Nguon_Nguyen_Lieu -- moi them vao theo TT22
	)
Select
	CDDL_VT_ID
	,CDDL_MA_HQ_HD
	,CDDL_MA_CUC_HQ
	,CDDL_NAM_DK_HD
	,CDDL_HD_ID
	,CDDL_P_Code
	,3 as Loai
	,isnull(Ten_TB,' ') as Ten_TB
	,CDDL_HS_Code
	,Ma_DVT
	,SL_DK
	,CDDL_Xuat_Xu
	,NGTe
	,TriGia
	,CDDL_TinhTrang
	,0
From	DANHMUC_GCCX.DanhMucGCCX.dbo.DThietBi
GO
print 'Insert From ecsDHangMau Into DGC_SP_NPL_TB_HM'
Insert Into DGC_SP_NPL_TB_HM(
	VT_ID
	,Ma_HQ_HD
	,Ma_Cuc_HQ
	,Nam_DK_HD
	,HD_ID
	,Ma_Vat_Tu
	,Loai
	,Ten_Vat_Tu
	,Ma_HS
	,Ma_DVT
	,So_Luong_DK
	,Nguon_Nguyen_Lieu -- moi them vao theo TT22
	)
Select
	CDDL_VT_ID
	,CDDL_MA_HQ_HD
	,CDDL_MA_CUC_HQ
	,CDDL_NAM_DK_HD
	,CDDL_HD_ID
	,CDDL_P_Code
	,4 as Loai
	,isnull(Ten_HM,' ') as Ten_HM
	,isnull(HS_Code,' ') as HS_Code
	,Ma_DVT
	,So_Luong
	,0
From	DANHMUC_GCCX.DanhMucGCCX.dbo.ecsDHangMau
GO
print 'Insert From DDMuc Into DGC_DINH_MUC'
Insert Into DGC_DINH_MUC(
	DM_ID
	,HD_ID
	,Ma_HQ
	,Ma_Cuc_HQ
	,Nam_DK_HD
	,Ma_SP
	,Ma_Vat_Tu_SP
	,Ten_SP
	,Ma_DVT_SP
	,Ma_HS_SP
	,VT_ID_SP
	,Ma_NPL
	,Ma_Vat_Tu_NPL
	,Ten_NPL
	,Ma_DVT_NPL
	,Ma_HS_NPL
	,VT_ID_NPL
	,Dinh_Muc
	,Ti_Le_Hao_Hut
	,NgayNhap
	,Ghi_Chu
	,So_TN
	,Nam_TN
	,Kiem_Tra_TT
	,Sua_Sau_Kiem_Tra_TT
	,Dinh_Muc_Chung
	,Ngay_TN
	,MessageID
	)
select
	CDDL_DM_ID
	,CDDL_HD_ID
	,CDDL_MA_HQ_HD
	,CDDL_MA_CUC_HQ
	,CDDL_NAM_DK_HD
	,SPP_Code
	,CDDL_SPP_Code as MA_VAT_TU_SP
	,Ten_SP
	,isnull(CDDL_MA_DVT_SP,' ') as MA_DVT_SP
	,SPHS_Code
	,isnull(CDDL_VT_ID_SP,0) as CDDL_VT_ID_SP
	,NPLP_Code
	,NPLP_Code as Ma_Vat_Tu_NPL
	,Ten_NPL
	,Ma_DVT
	,NPLHS_Code
	,isnull(CDDL_VT_ID_NPL,0) as CDDL_VT_ID_NPL
	,DMGC
	,TLHH
	,NgayNhap
	,Ghi_Chu
	,So_TN
	,Nam_TN
	,ecsKiemTraTT
	,ecsSua_SauKTTT
	,DM_CHUNG
	,'01-01-1900' as Ngay_TN
	,0 as MessageID
From	DANHMUC_GCCX.DanhMucGCCX.dbo.DDMuc
GO
print N'--=====================Chế xuất - đổ dữ liệu vào eCustoms======================'
print 'From [ecsCX_DM_HH_DUA_VAO_D] to [DCX_DM_HH_DUA_VAO_RA]'
INSERT INTO DCX_DM_HH_DUA_VAO_RA
	   (VT_ID
		,MA_HQ
		,MA_CUC_HQ
		,NAM_DK
		,NAM_TK
		,MA_DV
		,MA_HANG
		,TEN_HANG
		,MA_HS
		,MA_DVT
		,MUC_DICH_SU_DUNG
		,LOAI_HANG
		,GHI_CHU_KHAC
		,SO_TN
		,NAM_TN
		,IS_SIGN
		,MESSAGEID
		--REFERENCE
		,IS_DUA_VAO
		)
 SELECT
		CDDL_VT_ID
		,CDDL_MA_HQ
		,CDDL_MA_CUC_HQ
		,NAM_DK
		,CDDL_NAM_TK
		,MA_DV_XN
		,MA_HANG
		,TEN_HANG
		,MA_HS
		,MA_DVT
		,MUC_DICH_SU_DUNG
		,LOAI_HANG
		,GHI_CHU_KHAC
		,SO_DK
		,NAM_DK
		,IS_SIGN
		,0
		--,
		,CDDL_IS_DUA_VAO
 FROM
	 DANHMUC_GCCX.DanhMucGCCX.dbo.[ecsCX_DM_HH_DUA_VAO_D] 
GO
--
print 'From [ecsCX_DM_HH_DUA_RA_D] to [DCX_DM_HH_DUA_VAO_RA]'		 	 
INSERT INTO DCX_DM_HH_DUA_VAO_RA
	   (VT_ID
		,MA_HQ
		,MA_CUC_HQ
		,NAM_DK
		,NAM_TK
		,MA_DV
		,MA_HANG
		,TEN_HANG
		,MA_HS
		,MA_DVT
		,MUC_DICH_SU_DUNG
		,LOAI_HANG
		,GHI_CHU_KHAC
		,SO_TN
		,NAM_TN
		,IS_SIGN
		,MESSAGEID
		--REFERENCE
		,IS_DUA_VAO
		)
 SELECT
		CDDL_VT_ID
		,CDDL_MA_HQ
		,CDDL_MA_CUC_HQ
		,NAM_DK
		,CDDL_NAM_TK
		,MA_DV_XN
		,MA_HANG
		,TEN_HANG
		,MA_HS
		,MA_DVT
		,MUC_DICH_SU_DUNG
		,LOAI_HANG
		,GHI_CHU_KHAC
		,SO_DK
		,NAM_DK
		,IS_SIGN
		,0
		--,
		,CDDL_IS_DUA_VAO
 FROM
	 DANHMUC_GCCX.DanhMucGCCX.dbo.[ecsCX_DM_HH_DUA_RA_D] 
GO
		 
print 'From [ecsCX_DinhMuc] to [DCX_DINH_MUC]'
INSERT INTO DCX_DINH_MUC
	   (
		DM_ID
		,MA_HQ
		,MA_CUC_HQ
		,NAM_DK
		,MA_DV
		,VT_ID_SP
		,MA_SP
		,VT_ID_NPL
		,MA_NPL
		,DINH_MUC
		,TY_LE_HH
		,DINH_MUC_CO_HH
		,TEN_SP
		,MA_HS_SP
		,MA_DVT_SP
		,Ten_NPL
		,MA_HS_NPL
		,MA_DVT_NPL
		,SO_TN
		,NAM_TN
		,IS_SIGN
		-- ,Kiem_Tra_TT
		-- ,Sua_Sau_Kiem_Tra_TT
		,MESSAGE_ID
		-- ,REFERENCE
		)
SELECT
		CDDL_DM_ID
		,CDDL_MA_HQ
		,CDDL_MA_CUC_HQ
		,NAM_DK
		,MA_DV
		,isnull(CDDL_VT_ID_SP,0) CDDL_VT_ID_SP
		,MA_SP
		,isnull(CDDL_VT_ID_NPL,0) CDDL_VT_ID_NPL
		,MA_NPL
		,DINH_MUC
		,TY_LE_HH
		,DINH_MUC_CO_HH
		,CDDL_TEN_SP
		,isnull(CDDL_MA_HS_SP,' ') CDDL_MA_HS_SP
		,isnull(CDDL_MA_DVT_SP, ' ') CDDL_MA_DVT_SP
		,CDDL_Ten_NPL
		,isnull(CDDL_MA_HS_NPL, ' ') CDDL_MA_HS_NPL
		,isnull(CDDL_MA_DVT_NPL, ' ') CDDL_MA_DVT_NPL
		,SO_DK
		,NAM_DK
		,IS_SIGN
		-- ,
		-- ,
		,0
		-- ,
FROM
	DANHMUC_GCCX.DanhMucGCCX.dbo.[ecsCX_DinhMuc] 
GO
print 'From [ecsCX_CT_TOKHAI] to [DCX_CT_TOKHAI]'
INSERT INTO DCX_CT_TOKHAI
	   (
		CT_ID
		,MA_HQ
		,MA_CUC_HQ
		,NAM_DK
		,MA_DV_XN
		,TEN_DV_XN
		,MA_DV_DT
		,TEN_DV_DT
		,MA_DV_KB
		,TEN_DV_KB
		,SO_HOP_DONG
		,NGAY_HOP_DONG_HL
		,NGAY_HOP_DONG_HH
		,SO_HOA_DON_TM
		,NGAY_HOA_DON_TM
		,MA_LOAI_HOA_DON
		,MA_NGUOI_NHAN_HANG
		,TEN_NGUOI_NHAN_HANG
		,MA_NGUOI_GIAO_HANG
		,TEN_NGUOI_GIAO_HANG
		,DIA_DIEM_GIAO_HANG
		,TUYEN_DUONG_VAN_CHUYEN
		,MA_CK_NHAP
		,TEN_CK_NHAP
		,MA_CK_XUAT
		,TEN_CK_XUAT
		,MA_GIAO_HANG
		,MSG_ID
		,MSG_REFERENCE
		,MSG_RECEIVE_TIME
		,Trang_Thai
		,LOAI_HINH_NHAP
		,NGAY_DK
		,NGAY_BAT_DAU
		,NGAY_KET_THUC	
		,SO_VAN_DON
		,TEN_VAN_DON
		,NGAY_VAN_DON
		,NGAY_VAN_DON_HH
		,LOAI_VAN_DON
		,TEN_HOP_DONG
		,MA_DV_UT
		,TEN_DV_UT
		,MA_DV_NT
		,TEN_DV_NT
		,MA_NUOC_XN
		,IS_SIGN
		,SO_TN
		,NAM_TN
		)
SELECT
		CDDL_CT_ID
		,CDDL_MA_HQ
		,CDDL_MA_CUC_HQ
		,NAM_DK
		,MA_DV_XN
		,TEN_DV_XN
		,MA_DV_DT
		,TEN_DV_DT
		,MA_DV_KB
		,TEN_DV_KB
		,SO_HOP_DONG
		,NGAY_HOP_DONG_HL
		,NGAY_HOP_DONG_HH
		,SO_HOA_DON_TM
		,NGAY_HOA_DON_TM
		,MA_LOAI_HOA_DON
		,MA_NGUOI_NHAN_HANG
		,TEN_NGUOI_NHAN_HANG
		,MA_NGUOI_GIAO_HANG
		,TEN_NGUOI_GIAO_HANG
		,DIA_DIEM_GIAO_HANG
		,TUYEN_DUONG_VAN_CHUYEN
		,MA_CK_NHAP
		,TEN_CK_NHAP
		,MA_CK_XUAT
		,TEN_CK_XUAT
		,MA_DKGH
		,MSG_ID
		,MSG_REFERENCE
		,MSG_RECEIVE_TIME
		,Trang_Thai
		,LOAI_HINH_NHAP
		,NGAY_DK
		,NGAYBATDAU
		,NGAYKETTHUC
		,SO_VAN_DON
		,TEN_VAN_DON
		,NGAY_VAN_DON
		,NGAY_VAN_DON_HH
		,LOAI_VAN_DON
		,TEN_HOP_DONG
		,MA_DV_UT
		,TEN_DV_UT
		,MA_DV_NT
		,TEN_DV_NT
		,MA_NUOC_XN
		,IS_SIGN
		,SO_TN
		,NAM_TN	
FROM
	DANHMUC_GCCX.DanhMucGCCX.dbo.[ecsCX_CT_TOKHAI] 
GO
print 'From [ecsCX_CT_TOKHAI_HANG] to [DCX_CT_TOKHAI_HANG]'
INSERT INTO DCX_CT_TOKHAI_HANG
	   (
		CT_ID
		,MA_HQ
		,MA_CUC_HQ
		,NAM_DK
		,STT_HANG
		,VT_ID
		,MA_HANG
		,TEN_HANG
		,MA_HS
		,MA_HS_MR
		,SO_LUONG
		,MA_DVT_DK
		,MA_DVT_KB
		,TY_LE_QUI_DOI
		,LOAI_HANG
		,NAM_TN
		,SO_TN	   
		)
SELECT
		CDDL_CT_ID
		,CDDL_MA_HQ
		,CDDL_MA_CUC_HQ
		,CDDL_NAM_DK
		,STT_HANG
		,CDDL_VT_ID
		,MA_HANG
		,TEN_HANG
		,MA_HS
		,MA_HS_MR
		,SO_LUONG
		,MA_DVT_DK
		,MA_DVT_KB
		,TY_LE_QUI_DOI
		,LOAI_HANG
		,NAM_TN
		,SO_TN	
FROM
	DANHMUC_GCCX.DanhMucGCCX.dbo.[ecsCX_CT_TOKHAI_HANG] 
GO

-- declare @IDCucHQ bigint
-- declare @IDChiCuc bigint
-- set	@IDCucHQ = {ID Cục: tra bảng}
-- set	@IDChiCuc = {ID chi cục: tra bảng}

-- declare @HD_ID varchar(20), @NPL_ID varchar(20), @SP_ID varchar(20), @TB_ID varchar(20), @HM_ID varchar(20), @LOAISP_ID varchar(20),@DM_ID varchar(20)

-- declare @IDDanhMuc bigint,@IDDanhMucMax bigint
-- set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*1000000000
-- set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*1000000000

--đếm hợp đồng GC
-- declare @slhdgc varchar(20),@slloaispgc varchar(20),@slnplgc varchar(20),@slspgc varchar(20),@sltbgc varchar(20),@slhmgc varchar(20)
-- declare @sldmgc varchar(20),@sldmgcSAIhd varchar(20),@sldmgcSAInplsp varchar(20)

select @slhdgc		= COUNT(*) 
		,@HD_ID		= max(HD_ID)
from DGC_HD	where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax

select @slloaispgc	= COUNT(*) 
--		,@LOAISP_ID		= max(HD_ID)
from DGC_LOAI_SP	where HD_ID>@IDDanhMuc and HD_ID<=@IDDanhMucMax

select @slnplgc		= COUNT(*)	
		,@NPL_ID		= max(VT_ID)
from DGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 1

select @slspgc		= COUNT(*)	
		,@SP_ID		= max(VT_ID)
from DGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 2

select @sltbgc		= COUNT(*)	
		,@TB_ID		= max(VT_ID)
from DGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 3

select @slhmgc		= COUNT(*)	
		,@HM_ID		= max(VT_ID)
from DGC_SP_NPL_TB_HM  
where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax
		and	Loai	= 4

select @sldmgc		= COUNT(*) 
		,@DM_ID		= max(DM_ID)
from DGC_DINH_MUC  where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax
print N'===============Số liệu SAU chuyển đổi===================='
print N'===============Gia công=================================='
print N'SL hợp đồng GC          : ' + @slhdgc
print N'SL loại sản phẩm GC     : ' + @slloaispgc
print N'SL NPL GC               : ' + @slnplgc
print N'SL SP GC                : ' + @slspgc
print N'SL thiết bị GC          : ' + @sltbgc
print N'SL hàng mẫu GC          : ' + @slhmgc
print N'SL chi tiết định mức GC : ' + @sldmgc



print N'===============Chế xuất=================================='
-- declare @dcx_vao varchar(20)
-- declare @dcx_ra varchar(20)
-- declare @dcx_dm varchar(20)
-- declare @dcx_ct_tk varchar(20)
-- declare @dcx_ct_tk_h varchar(20)
-- declare @VAO_ID varchar(20), @RA_ID varchar(20), @DMCX_ID varchar(20), @CTTK_ID varchar(20), @CTHANG_ID varchar(20)

select @dcx_vao	= COUNT(*)
		,@VAO_ID	= MAX(VT_ID)
from DCX_DM_HH_DUA_VAO_RA where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax and IS_DUA_VAO=1

select @dcx_ra	= COUNT(*)	
		,@RA_ID	= MAX(VT_ID)
from DCX_DM_HH_DUA_VAO_RA where	VT_ID>@IDDanhMuc and VT_ID<=@IDDanhMucMax and IS_DUA_VAO<>1

select @dcx_dm	= COUNT(*)	
		,@DMCX_ID	= MAX(DM_ID)
from DCX_DINH_MUC		where DM_ID>@IDDanhMuc and DM_ID<=@IDDanhMucMax

select @dcx_ct_tk	= COUNT(*)	
		,@CTTK_ID	= MAX(CT_ID)
from DCX_CT_TOKHAI	where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax

select @dcx_ct_tk_h	= COUNT(*)	
		,@CTHANG_ID	= MAX(CT_ID)
from DCX_CT_TOKHAI_HANG 	where CT_ID>@IDDanhMuc and CT_ID<=@IDDanhMucMax

print N'SL danh mục đưa hàng VÀO: ' + @dcx_vao
print N'SL danh mục đưa hàng RA : ' + @dcx_ra
print N'SL bản ghi định mức CX  : ' + @dcx_dm
print N'SL bản ghi CT tờ khai   : ' + @dcx_ct_tk
print N'SL bản ghi CT hàng      : ' + @dcx_ct_tk_h

Print '=========MAX ID======================================================'
Print '=========Gia công===================================================='
print N'MAX ID hợp đồng GC      : ' + isnull(@HD_ID,'0')
print N'MAX ID loại SP GC       : ' + isnull(@LOAISP_ID,'0')
print N'MAX ID NPL GC           : ' + isnull(@NPL_ID,'0')
print N'MAX ID SP GC            : ' + isnull(@SP_ID,'0')
print N'MAX ID thiết bị GC      : ' + isnull(@TB_ID,'0')
print N'MAX ID hàng mẫu GC      : ' + isnull(@HM_ID,'0')
print N'MAX ID định mức GC      : ' + isnull(@DM_ID,'0')
Print '=========Chế xuất===================================================='
print N'MAX ID hàng đưa VÀO     : ' + isnull(@VAO_ID,'0')
print N'MAX ID hàng đưa RA      : ' + isnull(@RA_ID,'0')
print N'MAX ID Định mức CX      : ' + isnull(@DMCX_ID,'0')
print N'MAX ID CT Tờ khai       : ' + isnull(@CTTK_ID,'0')
print N'MAX ID CT hàng          : ' + isnull(@CTHANG_ID,'0')
GO