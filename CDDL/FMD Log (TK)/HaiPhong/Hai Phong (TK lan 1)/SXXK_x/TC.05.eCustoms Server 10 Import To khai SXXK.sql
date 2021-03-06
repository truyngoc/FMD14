﻿Insert into DTO_KHAI_MD(
	TK_ID
	,So_TK
	,Ma_LH
	,Ma_HQ
	,Ma_Cuc_HQ
	,Nam_DK
	,Ngay_DK
	,Ma_Don_Vi
	,Ma_Don_Vi_Uy_Thac
	,Don_Vi_Doi_Tac
	,Ma_PTVT
	,Ten_PTVT
	,Ngay_Den_PTVT
	,So_Van_Don
	,Ma_Cua_Khau
	,Cang_Nuoc_Ngoai
	,So_GP
	,Ngay_GP
	,Ngay_HH_GP
	,So_Hop_Dong
	,HD_ID
	,Ty_Gia_USD
	,Ngay_Hop_Dong
	,Ngay_HH_Hop_Dong
	,Nuoc_XK
	,Nuoc_NK
	,Ma_Giao_Hang
	,So_Dong_Hang
	,Ma_PTTT
	,Ma_NT
	,Ty_Gia_VND
	,Le_Phi_HQ
	,Bien_Lai_Le_Phi_HQ
	,Giay_To
	,Ngay_KB
	,Nguoi_Dang_Ky
	,Dia_Diem_Kiem_Hoa
	,Phuong_Thuc_Kiem_Hoa
	,Ngay_Kiem_Hoa
	,Ngay_Kiem_Hoa_1
	,User_Kiem_Hoa_1
	,User_Kiem_Hoa_2
	,User_Phan_Cong_Kiem_Hoa
	,Phi_Bao_Hiem
	,Phi_Van_Chuyen
	,Ngay_Tinh_Thue
	,Nguoi_Tinh_Thue
	,Tong_TG_KB
	,Tong_TG_TT
	,Trong_Luong
	,So_Kien
	,Nguoi_Nhap
	,Ngay_Nhap
	,Phan_Luong
	,Pass_DK
	,Pass_KH
	,Pass_TH
	,Pass_GC
	,Ma_DV_Khai_Thue
	,Thanh_Khoan
	,Ngay_Giao_TK
	,Ngay_Nhan_TK
	,Ngay_Luu_TK
	,So_Hoa_Don_TM
	,Ngay_Hoa_Don_TM
	,Ngay_Van_Don
	,HTKT
	,Ty_Le_KT
	--,Mien_KT
	,Ma_MID
	--,Ngay_Van_Don_HH
	,So_TN
	,Nam_TN
	,Ngay_TN
	,Message_ID
	,Reference
	,Hinh_Thuc_Khai
	,Khau_NV
	,Khau_NV_Cu
	,Khau_NV_Truoc_Sua_Huy
	,KTHS_Dai_Dien_DN
	,KTHS_So_CMND
	,KTHS_Ngay_Cap
	,KTTT_Dai_Dien_DN
	,Ket_Qua_XL_Buoc_Truoc
	,De_Xuat_Khac
	,Co_Chu_Ky_So
	,KV_Giam_Sat
	,Ten_Dai_Ly
	,Ma_Dai_Ly
	,Trang_Thai_Dai_Ly
	,So_HD_Giao_Nhan
	,Ngay_HD_Giao_Nhan
	,Ngay_Het_Han_HD_Giao_Nhan
	,Ten_Nguoi_Dai_Dien
	,Chuc_Vu_Nguoi_Dai_Dien
	,Ma_DV_Giao
	,Ten_DV_Giao
	,Ma_DV_Nhan
	,Ten_DV_Nhan
	,Ma_DV_Trung_Gian
	,Ten_DV_Trung_Gian
	,Dia_Diem_Giao_Hang
	,Ngay_Giao_Hang
	,Ma_CK_Nhap
	,Ma_CK_Xuat
	,Ten_CK_Xuat
	,Ma_DV_DT
	,No_CT
	,Lay_Mau
	,Luong_TK_Truoc_Sua
	,Ten_DV
	,Ten_DV_Khai_Thue
	,Ma_DV_Nop_Thue
	,Ten_DV_Nop_Thue
	,Ten_CK_Nhap
	,Da_Kiem_Hoa
	,Da_XN_Thong_Quan
	,Da_XN_Chuyen_CK
	,Da_XN_Giai_Phong_Hang
	,Thong_Quan_GPH_BQ_CCK
	,Ten_DV_Uy_Thac
	,Da_XN_Mang_Hang_Bao_Quan
	,Trong_Luong_Tinh
	,Da_Giam_Dinh
	,Kiem_Hoa_Ho
	,Lay_Mau_CK
	,Msg_Version
	,Co_An_Han_Thue
	,Ly_Do_An_Han
	,So_Ngay_An_Han
	,Co_Dam_Bao_NV_Thue
	,Hinh_Thuc_Dam_Bao
	,Tri_Gia_Dam_Bao
	,Ngay_Bat_Dau_Dam_Bao
	,Ngay_Ket_Thuc_Dam_Bao
	,So_Phu_Luc_Hop_Dong
	,Ngay_Phu_Luc_Hop_Dong
	,Ngay_Het_Han_Hop_Dong
	,Da_Hoan_Thanh_NV_Thue
	,Da_Hoan_Chinh_Ho_So
	,So_Container20
	,So_Container45
	,So_Container_Khac
	,So_Container40
	,So_Container
	,So_TK_VNACCS
	,Ngay_THN_THX
	,Ngay_Dua_Vao_Thanh_Khoan
	,Ngay_Hoan_Thanh
	)
Select 
	CDDL_TK_ID
	,SoTK
	,Ma_LH
	,rtrim(CDDL_MA_HQ)
	,CDDL_MA_CUC_HQ
	,NamDK
	,Ngay_DK
	,Ma_DV
	,Ma_DVUT
	,CDDL_DV_DT
	,Ma_PTVT
	,Ten_PTVT
	,NgayDen
	,CDDL_VAN_DON
	,Ma_CK
	,CangNN
	,So_GP
	,Ngay_GP
	,Ngay_HHGP
	,CDDL_SO_HD
	,0 as HD_ID
	,TyGia_USD
	,Ngay_HD
	,Ngay_HHHD
	,Nuoc_XK
	,Nuoc_NK
	,isnull(Ma_GH,' ')
	,SoHang
	,isnull(Ma_PTTT,' ')
	,Ma_NT
	,TyGia_VND
	,LePhi_HQ
	,BL_LPHQ
	,GiayTo
	,Ngay_KB
	,User_DK
	,DDiem_KH
	,PThuc_KH
	,Ngay_KH
	,DenNgay_KH
	,User_KH1
	,User_KH2
	,User_PCKH
	,Phi_BH
	,Phi_VC
	,Ngay_TH
	,User_TH
	,TongTGKB
	,TongTGTT
	,Tr_Luong
	,So_Kien
	,isnull(NguoiNhap,'system')
	,NgayNhap
	,CDDL_Pluong
	,Pass_DK
	,Pass_KH
	,Pass_TH
	,Pass_GC
	,Ma_DVKT
	,ThanhKhoan
	,Ngay_GiaoTK
	,Ngay_NhanTK
	,Ngay_LuuTK
	,CDDL_SO_HDTM
	,NGAY_HDTM
	,NGAY_VANDON
	,HTKT
	,TYLE_KT
	--,MienKT
	,Ma_MID
	--,Ngay_VanDon_HH
	,isnull(CDDL_SoTN,0)
	,isnull(CDDL_NamTN,0)
	,isnull(CDDL_NgayTN,'01-01-1900')
	,isnull(CDDL_MessageId,0)
	,CDDL_Reference
	,CDDL_HinhThucKhai
	,999--CDDL_KhauNV
	,CDDL_KhauNVCu
	,CDDL_KhauNV_TruocSuaOrHuy
	,CDDL_KTHS_DaiDienDN
	,CDDL_KTHS_SoCMT
	,CDDL_KTHS_NgayCap
	,DaiDien_DN
	,CDDL_KetQuaXLBuocTruoc
	,CDDL_DeXuatKhac
	,isnull(CDDL_CoChuKySo,0)
	,isnull(CDDL_KVGiamSat,0)
	,CDDL_ecsTen_DL
	,CDDL_ecsMa_DL
	,CDDL_ecsTrangThai_DL
	,CDDL_ecsSo_HDGN
	,CDDL_ecsNgay_HDGN
	,CDDL_ecsNgay_HHHDGN
	,CDDL_ecsTen_NguoiDD
	,CDDL_ecsChucVu_NguoiDD
	,CDDL_ecsMa_DVG
	,CDDL_ecsTen_DVG
	,CDDL_ecsMa_DVN
	,CDDL_ecsTen_DVN
	,CDDL_ecsMa_DVCD
	,CDDL_ecsTen_DVCD
	,CDDL_ecsDD_GH
	,CDDL_ecsNgay_GH
	,CDDL_ecsMa_CKNhap
	,CDDL_ecsMa_CKXuat
	,CDDL_ecsTen_CKXuat
	,CDDL_ecsMa_DV_DT
	,CDDL_ecsNoCT
	,CDDL_ecsLayMau
	,CDDL_ecsLuongTK_TruocSua
	,CDDL_ecsTen_DV
	,CDDL_ecsTen_DVKT
	,CDDL_ecsMa_DV_NT
	,CDDL_ecsTen_DV_NT
	,CDDL_ecsTen_CKNhap
	,CDDL_ecsDaKiemHoa
	,CDDL_ecsDaXNThongQuan
	,CDDL_ecsDaXNChuyenCK
	,CDDL_ecsDaXNGiaiPhongHang
	,CDDL_ecsThongQuan_GPH_BQ_CCK
	,CDDL_ecsTen_DVUT
	,CDDL_ecsDaXNMangHangBaoQuan
	,CDDL_ecsTrong_Luong_Tinh
	,CDDL_ecsKQGiamDinh
	,CDDL_ecsKiem_Hoa_Ho
	,CDDL_ecsLay_Mau_CK
	,CDDL_ecsMsgVersion
	,CDDL_ecsCo_An_Han
	,CDDL_ecsLy_Do_An_Han
	,CDDL_ecsSo_Ngay_An_Han
	,CDDL_ecsCo_Dam_Bao_Nghia_Vu_Thue
	,CDDL_ecsHinh_Thuc_Dam_Bao
	,CDDL_ecsTri_Gia_Dam_Bao
	,CDDL_ecsNgay_Bat_Dau_Dam_Bao
	,CDDL_ecsNgay_Ket_Thuc_Dam_Bao
	,CDDL_ecsSo_Phu_Luc_Hop_Dong
	,CDDL_ecsNgay_Phu_Luc_Hop_Dong
	,CDDL_ecsNgay_Het_Han_Hop_Dong
	,CDDL_ecsDaHoanThanhNghiaVuThue
	,CDDL_ecsDaHoanChinhHoSo
	,CDDL_So_Container20
	,0
	,0
	,CDDL_SO_CONTAINER40
	,CDDL_So_Container
	,'0'
	--,isnull(CDDL_ecsNgayHH_TNTX,NGAY_HOANTHANH)
	,Ngay_THN_THX
	,CDDL_Ngay_Dua_Vao_Thanh_Khoan
	,NGAY_HOANTHANH
From	$(lnksrv_name).$(sxxk_dbname_src).dbo.DToKhaiMD
Where	CDDL_MA_HQ not in ('01B2','01AC','01BT','01D1','01D2','01D3','01IK','01NV','01M1','01M2','01SI','01E2','01E3','02B1','02AB01','02AB02','02AB03','02AB05','02CC','02CH01','02CV','02K1','10BB','10BC','10BD','10BF','10BI','11B1','11B2','11BE','11BF','11G1','11G2','11BH','11PK','12BB01','12BE','12BH','12BH01','12BI','12PF','12PF01','13BB','13BB01','13BC','13BD','13SG01','15B1','15B2','15BC','15BD','15E1','15E2','15E3','15E4','15SI','18B1','18B2','20BC','20BD','20CD','20CE','20CF','20CG','27B1','27B2','27CF01','27PC02','29BB','29BH','29CC','29PF','30BB','30BE','30BI','30CC','30F1','30F2','31BB','31BF','31D1','31D2','31D3','32BB','32BC','32CD','32VG','33BA01','33CC','33CF','33PD02','34AB','34CC','34CE','34NH','35CB','35NC','37CB','37TC','38BB01','38BC','38PD','40BB','40B1','40B2','40BC','40BC01','40PD','40D1','40D2','41BH','41CB','41CC','41PE','43CN','43IH01','43H2','45BB01','45BC01','45BD','45BE','47I1','47I2','47NM','48BC','48BD','48BE','48BF01','48F1','48F2','48BI','49BB','49BE','49BF','49BG','49CC01','50BB','50BC','50BD','50BJ','50BK','50CE','51BE','51CB','51C2','51CH','51CI','53BC01','53BK','53CD','53CH','54CB','54CD','54PH','54PK','59BD','59CB','60BD','60CB','60NC','61A1','61A2','61BB','61BB01','61A3','61A4','01B1','01B3','01PJ','01E1','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1','01PL','01PO','01PR','02CX','02DS','02F1','02F2','03CE','03EE','18BC','43K1','43K2','43K3','47D1','47D2','47D3','02F3','03CC','03NK','03PL','03RR','03TG','43H1','18A2','43PB','47NB','47NB01','47NF','47NG','01TE01','03PJ','18A1','43ND','43NF','02PJ','02XE','03PA','03PA01','47XE','02CI02','02PG')

-- hang TH
Insert into DHang_MD(
	TK_ID
	,So_TK
	,Ma_LH
	,Ma_HQ
	,Ma_Cuc_HQ
	,Nam_DK
	,STT_Hang
	,Ma_DV
	,HD_ID
	,MA_HQ_VT_ID 
	,Ma_Vat_Tu
	,VT_ID
	,Ma_Hang_KB
	,Ma_Hang
	,Ma_Phu
	,Ten_Hang
	,Nuoc_XX
	,Ma_DVT
	,Luong
	,DGia_KB
	,DGia_TT
	,Ma_DG
	,Tri_Gia_KB
	,Tri_Gia_TT
	,Tri_Gia_KB_VND
	,Loai_TS_XNK
	,TS_XNK
	,TS_TTDB
	,TS_VAT
	,Thue_XNK
	,Thue_TTDB
	,Thue_VAT
	,Phu_Thu
	,Mien_Thue
	,TL_Quy_Doi
	,Ty_Le_Thu_Khac
	,Tri_Gia_Thu_Khac
	,Ma_HTS
	,Luong_HTS
	,DVT_HTS
	,DonGia_HTS
	,Thue_Bao_Ve_MT
	,Ma_Bieu_Thue_XNK
	,IsHang_Cu_Moi
	,Thiet_Bi_Dong_Bo
	,Uu_Dai_Thue
	,Loai_Hang
	,TS_TV
	,Thue_TV
	,MA_BIEU_THUE_TTDB
	,MA_BIEU_THUE_BVMT
	,MA_BIEU_THUE_TV
	,MA_BIEU_THUE_CLG
	,MA_BIEU_THUE_VAT
	,TS_TUYET_DOI_XNK
	,TS_TUYET_DOI_TTDB
	,TS_TUYET_DOI_BVMT
	,TS_TUYET_DOI_TV
	,TS_TUYET_DOI_CLG
	,TS_TUYET_DOI_VAT
	,TS_TUYET_DOI_THU_KHAC
	,TS_BVMT
	,TS_CLG
	,THUE_CLG
	)
Select
	CDDL_TK_ID
	,SOTK
	,MA_LH
	,rtrim(CDDL_MA_HQ)
	,CDDL_Ma_Cuc_HQ
	,NAMDK
	,CDDL_STT_Hang
	,CDDL_MA_Don_Vi
	,0
	,' ' as MA_HQ
	,isnull(MA_NPL_SP,' ')
	,isnull(CDDL_VT_ID,0)
	,MA_HANGKB
	,MA_HANG
	,MA_PHU
	,TEN_HANG
	,NUOC_XX
	,CDDL_MA_DVT
	,LUONG
	,DGIA_KB
	,DGIA_TT
	,MA_DG
	,TRIGIA_KB
	,TRIGIA_TT
	,TGKB_VND
	,LOAITSXNK
	,TS_XNK
	,TS_TTDB
	,TS_VAT
	,THUE_XNK
	,THUE_TTDB
	,THUE_VAT
	,PHU_THU
	,MIENTHUE
	,TL_QUYDOI
	,TYLE_THUKHAC
	,TRIGIA_THUKHAC
	,Ma_HTS
	,Luong_HTS
	,DVT_HTS
	,DonGia_HTS
	,ecsTHUE_MOI_TRUONG
	,ecsMA_BIEU_THUE_XNK
	,ecsHANG_CU_MOI
	,ecsTHIET_BI_DONG_BO
	,ecsUU_DAI_THUE
	,isnull(CDDL_Loai_Hang,0)
	,ecsTHUE_SUAT_TV
	,ecsTHUE_TV
	,ecsMABIEUTHUE_TTDB
	,ecsMABIEUTHUE_BVMT
	,ecsMABIEUTHUE_TV
	,MaBieuThue_CLG
	,ecsMABIEUTHUE_VAT
	,isnull(Thue_Suat_Tuyet_Doi_XNK,0)
	,isnull(Thue_Suat_Tuyet_Doi_TTDB,0)
	,isnull(Thue_Suat_Tuyet_Doi_MT,0)
	,isnull(Thue_Suat_Tuyet_Doi_TV,0)
	,isnull(Thue_Suat_Tuyet_Doi_CLG,0)
	,isnull(Thue_Suat_Tuyet_Doi_VAT,0)
	,isnull(Thue_Suat_Tuyet_Doi_Khac,0)
	,0
	,isnull(Thue_Suat_CLG,0)
	,isnull(Thue_CLG,0)
From $(lnksrv_name).$(sxxk_dbname_src).dbo.DHangMDTH
Where	CDDL_MA_HQ not in ('01B2','01AC','01BT','01D1','01D2','01D3','01IK','01NV','01M1','01M2','01SI','01E2','01E3','02B1','02AB01','02AB02','02AB03','02AB05','02CC','02CH01','02CV','02K1','10BB','10BC','10BD','10BF','10BI','11B1','11B2','11BE','11BF','11G1','11G2','11BH','11PK','12BB01','12BE','12BH','12BH01','12BI','12PF','12PF01','13BB','13BB01','13BC','13BD','13SG01','15B1','15B2','15BC','15BD','15E1','15E2','15E3','15E4','15SI','18B1','18B2','20BC','20BD','20CD','20CE','20CF','20CG','27B1','27B2','27CF01','27PC02','29BB','29BH','29CC','29PF','30BB','30BE','30BI','30CC','30F1','30F2','31BB','31BF','31D1','31D2','31D3','32BB','32BC','32CD','32VG','33BA01','33CC','33CF','33PD02','34AB','34CC','34CE','34NH','35CB','35NC','37CB','37TC','38BB01','38BC','38PD','40BB','40B1','40B2','40BC','40BC01','40PD','40D1','40D2','41BH','41CB','41CC','41PE','43CN','43IH01','43H2','45BB01','45BC01','45BD','45BE','47I1','47I2','47NM','48BC','48BD','48BE','48BF01','48F1','48F2','48BI','49BB','49BE','49BF','49BG','49CC01','50BB','50BC','50BD','50BJ','50BK','50CE','51BE','51CB','51C2','51CH','51CI','53BC01','53BK','53CD','53CH','54CB','54CD','54PH','54PK','59BD','59CB','60BD','60CB','60NC','61A1','61A2','61BB','61BB01','61A3','61A4','01B1','01B3','01PJ','01E1','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1','01PL','01PO','01PR','02CX','02DS','02F1','02F2','03CE','03EE','18BC','43K1','43K2','43K3','47D1','47D2','47D3','02F3','03CC','03NK','03PL','03RR','03TG','43H1','18A2','43PB','47NB','47NB01','47NF','47NG','01TE01','03PJ','18A1','43ND','43NF','02PJ','02XE','03PA','03PA01','47XE','02CI02','02PG')

--hang DC
Insert into DHang_MD(
	TK_ID
	,So_TK
	,Ma_LH
	,Ma_HQ
	,Ma_Cuc_HQ
	,Nam_DK
	,STT_Hang
	,Ma_DV
	,HD_ID
	,MA_HQ_VT_ID 
	,Ma_Vat_Tu
	,VT_ID
	,Ma_Hang_KB
	,Ma_Hang
	,Ma_Phu
	,Ten_Hang
	,Nuoc_XX
	,Ma_DVT
	,Luong
	,DGia_KB
	,DGia_TT
	,Ma_DG
	,Tri_Gia_KB
	,Tri_Gia_TT
	,Tri_Gia_KB_VND
	,Loai_TS_XNK
	,TS_XNK
	,TS_TTDB
	,TS_VAT
	,Thue_XNK
	,Thue_TTDB
	,Thue_VAT
	,Phu_Thu
	,Mien_Thue
	,TL_Quy_Doi
	,Ty_Le_Thu_Khac
	,Tri_Gia_Thu_Khac
	,Ma_HTS
	,Luong_HTS
	,DVT_HTS
	,DonGia_HTS
	,Thue_Bao_Ve_MT
	,Ma_Bieu_Thue_XNK
	,IsHang_Cu_Moi
	,Thiet_Bi_Dong_Bo
	,Uu_Dai_Thue
	,Loai_Hang
	,MA_BIEU_THUE_TTDB
	,MA_BIEU_THUE_VAT
	)
Select
	CDDL_TK_ID
	,SOTK
	,MA_LH
	,rtrim(CDDL_MA_HQ)
	,CDDL_Ma_Cuc_HQ
	,NAMDK
	,CDDL_STT_Hang
	,CDDL_MA_Don_Vi
	,0
	,' ' as MA_HQ
	,isnull(MA_NPL_SP,' ')
	,isnull(CDDL_VT_ID,0)
	,MA_HANGKB
	,MA_HANG
	,MA_PHU
	,TEN_HANG
	,NUOC_XX
	,CDDL_MA_DVT
	,LUONG
	,DGIA_KB
	,DGIA_TT
	,MA_DG
	,TRIGIA_KB
	,TRIGIA_TT
	,TGKB_VND
	,LOAITSXNK
	,TS_XNK
	,TS_TTDB
	,TS_VAT
	,CDDL_THUE_XNK
	,CDDL_THUE_TTDB
	,CDDL_THUE_VAT
	,CDDL_PHU_THU
	,CDDL_MIENTHUE
	,TL_QUYDOI
	,TYLE_THUKHAC
	,CDDL_TRIGIA_THUKHAC
	,Ma_HTS
	,Luong_HTS
	,DVT_HTS
	,DonGia_HTS
	,ecsTHUE_MOI_TRUONG
	,ecsBIEU_THUE_XNK
	,ecsHANG_CU_MOI
	,ecsTHIET_BI_DONG_BO
	,ecsUU_DAI_THUE
	,isnull(CDDL_Loai_Hang,0)
	,ecsBIEU_THUE_TTDB
	,ecsBIEU_THUE_VAT
From $(lnksrv_name).$(sxxk_dbname_src).dbo.DHangMDDC
Where	CDDL_MA_HQ not in ('01B2','01AC','01BT','01D1','01D2','01D3','01IK','01NV','01M1','01M2','01SI','01E2','01E3','02B1','02AB01','02AB02','02AB03','02AB05','02CC','02CH01','02CV','02K1','10BB','10BC','10BD','10BF','10BI','11B1','11B2','11BE','11BF','11G1','11G2','11BH','11PK','12BB01','12BE','12BH','12BH01','12BI','12PF','12PF01','13BB','13BB01','13BC','13BD','13SG01','15B1','15B2','15BC','15BD','15E1','15E2','15E3','15E4','15SI','18B1','18B2','20BC','20BD','20CD','20CE','20CF','20CG','27B1','27B2','27CF01','27PC02','29BB','29BH','29CC','29PF','30BB','30BE','30BI','30CC','30F1','30F2','31BB','31BF','31D1','31D2','31D3','32BB','32BC','32CD','32VG','33BA01','33CC','33CF','33PD02','34AB','34CC','34CE','34NH','35CB','35NC','37CB','37TC','38BB01','38BC','38PD','40BB','40B1','40B2','40BC','40BC01','40PD','40D1','40D2','41BH','41CB','41CC','41PE','43CN','43IH01','43H2','45BB01','45BC01','45BD','45BE','47I1','47I2','47NM','48BC','48BD','48BE','48BF01','48F1','48F2','48BI','49BB','49BE','49BF','49BG','49CC01','50BB','50BC','50BD','50BJ','50BK','50CE','51BE','51CB','51C2','51CH','51CI','53BC01','53BK','53CD','53CH','54CB','54CD','54PH','54PK','59BD','59CB','60BD','60CB','60NC','61A1','61A2','61BB','61BB01','61A3','61A4','01B1','01B3','01PJ','01E1','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1','01PL','01PO','01PR','02CX','02DS','02F1','02F2','03CE','03EE','18BC','43K1','43K2','43K3','47D1','47D2','47D3','02F3','03CC','03NK','03PL','03RR','03TG','43H1','18A2','43PB','47NB','47NB01','47NF','47NG','01TE01','03PJ','18A1','43ND','43NF','02PJ','02XE','03PA','03PA01','47XE','02CI02','02PG')

--NPLNHAP
Insert into DSX_NPL_NHAP(
	HS_TL_ID
	,NAM_TL
	,MA_HQ
	,Ma_Cuc_HQ
	,TK_ID
	,SO_TK
	,SO_TK_VNACCS
	,MA_LH
	,NAM_DK
	,VT_ID
	,MA_NPL
	,DGIA_TT
	,TS_XNK
	,MA_DV
	,LUONG
	,TON
	,THUE_XNK
	,THUE_TTDB
	,THUE_VAT
	,PHU_THU
	,TRI_GIA_THU_KHAC
	)
Select
	CDDL_HS_TL_ID
	,NAMDK
	,rtrim(CDDL_MA_HQ)
	,CDDL_MA_CUC_HQ
	,CDDL_TK_ID
	,SOTK
	,CDDL_SO_TK_VNACCS
	,MA_LH
	,NAMDK
	,isnull(CDDL_VT_ID,0)
	,MA_NPL
	,isnull(CDDL_DGIA_TT,0)
	,isnull(CDDL_TS_XNK,0)
	,MA_DV
	,LUONG
	,TON
	,THUE_XNK
	,THUE_TTDB
	,THUE_VAT
	,PHU_THU
	,TRIGIA_THUKHAC
From	$(lnksrv_name).$(sxxk_dbname_src).dbo.DNPLNHAP
Where	CDDL_MA_HQ not in ('01B2','01AC','01BT','01D1','01D2','01D3','01IK','01NV','01M1','01M2','01SI','01E2','01E3','02B1','02AB01','02AB02','02AB03','02AB05','02CC','02CH01','02CV','02K1','10BB','10BC','10BD','10BF','10BI','11B1','11B2','11BE','11BF','11G1','11G2','11BH','11PK','12BB01','12BE','12BH','12BH01','12BI','12PF','12PF01','13BB','13BB01','13BC','13BD','13SG01','15B1','15B2','15BC','15BD','15E1','15E2','15E3','15E4','15SI','18B1','18B2','20BC','20BD','20CD','20CE','20CF','20CG','27B1','27B2','27CF01','27PC02','29BB','29BH','29CC','29PF','30BB','30BE','30BI','30CC','30F1','30F2','31BB','31BF','31D1','31D2','31D3','32BB','32BC','32CD','32VG','33BA01','33CC','33CF','33PD02','34AB','34CC','34CE','34NH','35CB','35NC','37CB','37TC','38BB01','38BC','38PD','40BB','40B1','40B2','40BC','40BC01','40PD','40D1','40D2','41BH','41CB','41CC','41PE','43CN','43IH01','43H2','45BB01','45BC01','45BD','45BE','47I1','47I2','47NM','48BC','48BD','48BE','48BF01','48F1','48F2','48BI','49BB','49BE','49BF','49BG','49CC01','50BB','50BC','50BD','50BJ','50BK','50CE','51BE','51CB','51C2','51CH','51CI','53BC01','53BK','53CD','53CH','54CB','54CD','54PH','54PK','59BD','59CB','60BD','60CB','60NC','61A1','61A2','61BB','61BB01','61A3','61A4','01B1','01B3','01PJ','01E1','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1','01PL','01PO','01PR','02CX','02DS','02F1','02F2','03CE','03EE','18BC','43K1','43K2','43K3','47D1','47D2','47D3','02F3','03CC','03NK','03PL','03RR','03TG','43H1','18A2','43PB','47NB','47NB01','47NF','47NG','01TE01','03PJ','18A1','43ND','43NF','02PJ','02XE','03PA','03PA01','47XE','02CI02','02PG')