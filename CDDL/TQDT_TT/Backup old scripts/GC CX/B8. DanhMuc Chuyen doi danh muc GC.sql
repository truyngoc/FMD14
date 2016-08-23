Insert into ECUSTOMS_01.eCustoms_His1.dbo.DGC_HD(
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
From	DHDGC

GO

Insert Into ECUSTOMS_01.eCustoms_His1.dbo.DGC_LOAI_SP(
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
From	DLOAISPGC

GO
Insert Into ECUSTOMS_01.eCustoms_His1.dbo.DGC_SP_NPL_TB_HM(
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
	)
Select
	CDDL_VT_ID
	,CDDL_MA_HQ_HD
	,CDDL_MA_CUC_HQ
	,CDDL_NAM_DK_HD
	,CDDL_HD_ID
	,SUBSTRING(P_Code,2,100) as P_Code
	,1 as Loai
	,Ten_NPL
	,HS_Code
	,Ma_DVT
	,SL_DK
From	DNPLHD

GO

Insert Into ECUSTOMS_01.eCustoms_His1.dbo.DGC_SP_NPL_TB_HM(
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
	)
Select
	CDDL_VT_ID
	,CDDL_MA_HQ_HD
	,CDDL_MA_CUC_HQ
	,CDDL_NAM_DK_HD
	,CDDL_HD_ID
	,SUBSTRING(P_Code,2,100) as P_Code
	,2 as Loai
	,Ten_SP
	,isnull(HS_Code,' ') as HS_Code
	,Ma_DVT
	,SL_DK
	,NgTe
	,TriGiaGC
	,Nhom_SP
From	DSPGC
GO

Insert Into ECUSTOMS_01.eCustoms_His1.dbo.DGC_SP_NPL_TB_HM(
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
	)
Select
	CDDL_VT_ID
	,CDDL_MA_HQ_HD
	,CDDL_MA_CUC_HQ
	,CDDL_NAM_DK_HD
	,CDDL_HD_ID
	,SUBSTRING(P_Code,2,100) as P_Code
	,3 as Loai
	,isnull(Ten_TB,' ') as Ten_TB
	,left(HS_Code,12) as HS_Code
	,Ma_DVT
	,SL_DK
	,left(Xuat_Xu,3) as Xuat_Xu
	,NGTe
	,TriGia
	,case len(TinhTrang) when 1 then TinhTrang else '1' end as TinhTrang
From	DThietBi
GO
Insert Into ECUSTOMS_01.eCustoms_His1.dbo.DGC_SP_NPL_TB_HM(
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
	)
Select
	CDDL_VT_ID
	,CDDL_MA_HQ_HD
	,CDDL_MA_CUC_HQ
	,CDDL_NAM_DK_HD
	,CDDL_HD_ID
	,SUBSTRING(P_Code,2,100) as P_Code
	,4 as Loai
	,isnull(Ten_HM,' ') as Ten_HM
	,isnull(HS_Code,' ') as HS_Code
	,Ma_DVT
	,So_Luong
From	ecsDHangMau
GO

Insert Into ECUSTOMS_01.eCustoms_His1.dbo.DGC_DINH_MUC(
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
	,SUBSTRING(SPP_Code,2,100) as MA_VAT_TU_SP
	,Ten_SP
	,isnull(MA_DVT_SP,' ') as MA_DVT_SP
	,SPHS_Code
	,isnull(CDDL_VT_ID_SP,0) as CDDL_VT_ID_SP
	,NPLP_Code
	,SUBSTRING(NPLP_Code,2,100) as Ma_Vat_Tu_NPL
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
From	DDMuc
GO