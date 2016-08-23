declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + $(IDCucHQ)*100000000000 + $(IDChiCuc)*cast(1000000000 as bigint)
set	@IDDanhMucMax =10000000000000 + $(IDCucHQ)*100000000000 + ($(IDChiCuc)+1)*cast(1000000000 as bigint)

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
	,CDDL_So_HD_HQ_Cap
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
	,isnull(GiaGC, 0) as GiaGC
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
	,isnull(TrangThai,0) as TrangThai
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
From	$(lnksrv_name).$(slxnk_dbname_src).dbo.DHDGC
Where	CDDL_MA_HQ_HD in ('01B1','01B3','01PJ','01TE','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1'
)

update	DGC_HD
Set		So_HD=dbo.fcnTCVN2Unicode(So_HD)
Where	HD_ID>@IDDanhMuc and HD_ID<@IDDanhMucMax

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
From	$(lnksrv_name).$(slxnk_dbname_src).dbo.DLOAISPGC
Where	CDDL_MA_HQ_HD in ('01B1','01B3','01PJ','01TE','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1'
)

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
	,CDDL_Ma_DVT
	,SL_DK
	,1
From	$(lnksrv_name).$(slxnk_dbname_src).dbo.DNPLHD
Where	CDDL_MA_HQ_HD in ('01B1','01B3','01PJ','01TE','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1'
)

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
	,CDDL_Ma_DVT
	,SL_DK
	,NgTe
	,TriGiaGC
	,Nhom_SP
	,0
From	$(lnksrv_name).$(slxnk_dbname_src).dbo.DSPGC
Where	CDDL_MA_HQ_HD in ('01B1','01B3','01PJ','01TE','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1'
)

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
	,CDDL_Ma_DVT
	,SL_DK
	,CDDL_Xuat_Xu
	,NGTe
	,TriGia
	,CDDL_TinhTrang
	,0
From	$(lnksrv_name).$(slxnk_dbname_src).dbo.DThietBi
Where	CDDL_MA_HQ_HD in ('01B1','01B3','01PJ','01TE','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1'
)

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
	,CDDL_Ma_DVT
	,So_Luong
	,0
From	$(lnksrv_name).$(slxnk_dbname_src).dbo.ecsDHangMau
Where	CDDL_MA_HQ_HD in ('01B1','01B3','01PJ','01TE','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1'
)

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
	,CDDL_SPP_Code
	,CDDL_SPP_Code as MA_VAT_TU_SP
	,Ten_SP
	,isnull(CDDL_MA_DVT_SP,' ') as MA_DVT_SP
	,SPHS_Code
	,isnull(CDDL_VT_ID_SP,0) as CDDL_VT_ID_SP
	,CDDL_NPLP_Code
	,CDDL_NPLP_Code as Ma_Vat_Tu_NPL
	,Ten_NPL
	,CDDL_Ma_DVT_NPL
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
From	$(lnksrv_name).$(slxnk_dbname_src).dbo.DDMuc
Where	CDDL_MA_HQ_HD in ('01B1','01B3','01PJ','01TE','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1'
)

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
		,CDDL_Ma_DVT
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
	 $(lnksrv_name).$(slxnk_dbname_src).dbo.[ecsCX_DM_HH_DUA_VAO_D] 
 Where	CDDL_MA_HQ in ('01B1','01B3','01PJ','01TE','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1'
)

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
		,CDDL_Ma_DVT
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
	 $(lnksrv_name).$(slxnk_dbname_src).dbo.[ecsCX_DM_HH_DUA_RA_D] 
  Where	CDDL_MA_HQ in ('01B1','01B3','01PJ','01TE','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1'
)

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
	$(lnksrv_name).$(slxnk_dbname_src).dbo.[ecsCX_DinhMuc] 
 Where	CDDL_MA_HQ in ('01B1','01B3','01PJ','01TE','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1'
)

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
	$(lnksrv_name).$(slxnk_dbname_src).dbo.[ecsCX_CT_TOKHAI] 
 Where	CDDL_MA_HQ in ('01B1','01B3','01PJ','01TE','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1'
)

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
		,CDDL_MA_DVT_DK
		,CDDL_MA_DVT_KB
		,TY_LE_QUI_DOI
		,LOAI_HANG
		,NAM_TN
		,SO_TN	
FROM
	$(lnksrv_name).$(slxnk_dbname_src).dbo.[ecsCX_CT_TOKHAI_HANG] 
 Where	CDDL_MA_HQ in ('01B1','01B3','01PJ','01TE','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1'
)

GO

