﻿-- hang TH
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
	h.CDDL_TK_ID
	,h.SOTK
	,h.MA_LH
	,rtrim(h.CDDL_MA_HQ)
	,h.CDDL_Ma_Cuc_HQ
	,h.NAMDK
	,h.CDDL_STT_Hang
	,h.CDDL_MA_Don_Vi
	,0
	,rtrim(h.CDDL_MA_HQ)
	,isnull(h.CDDL_MA_NPL_SP,' ')
	,isnull(h.CDDL_VT_ID,0)
	,h.MA_HANGKB
	,h.MA_HANG
	--,MA_PHU
	,isnull(h.CDDL_MA_NPL_SP,' ')
	,h.TEN_HANG
	,h.NUOC_XX
	,h.CDDL_MA_DVT
	,h.LUONG
	,h.DGIA_KB
	,h.DGIA_TT
	,h.MA_DG
	,h.TRIGIA_KB
	,h.TRIGIA_TT
	,h.TGKB_VND
	,h.LOAITSXNK
	,h.TS_XNK
	,h.TS_TTDB
	,h.TS_VAT
	,h.THUE_XNK
	,h.THUE_TTDB
	,h.THUE_VAT
	,h.PHU_THU
	,h.MIENTHUE
	,h.TL_QUYDOI
	,h.TYLE_THUKHAC
	,h.TRIGIA_THUKHAC
	,h.Ma_HTS
	,h.Luong_HTS
	,h.DVT_HTS
	,h.DonGia_HTS
	,h.ecsTHUE_MOI_TRUONG
	,h.ecsMA_BIEU_THUE_XNK
	,h.ecsHANG_CU_MOI
	,h.ecsTHIET_BI_DONG_BO
	,h.ecsUU_DAI_THUE
	,isnull(h.CDDL_Loai_Hang,0)
	,h.ecsTHUE_SUAT_TV
	,h.ecsTHUE_TV
	,h.ecsMABIEUTHUE_TTDB
	,h.ecsMABIEUTHUE_BVMT
	,h.ecsMABIEUTHUE_TV
	,h.MaBieuThue_CLG
	,h.ecsMABIEUTHUE_VAT
	,isnull(h.Thue_Suat_Tuyet_Doi_XNK,0)
	,isnull(h.Thue_Suat_Tuyet_Doi_TTDB,0)
	,isnull(h.Thue_Suat_Tuyet_Doi_MT,0)
	,isnull(h.Thue_Suat_Tuyet_Doi_TV,0)
	,isnull(h.Thue_Suat_Tuyet_Doi_CLG,0)
	,isnull(h.Thue_Suat_Tuyet_Doi_VAT,0)
	,isnull(h.Thue_Suat_Tuyet_Doi_Khac,0)
	,0
	,isnull(h.Thue_Suat_CLG,0)
	,isnull(h.Thue_CLG,0)
From $(lnksrv_name).$(sxxk_dbname_src).dbo.DHangMDTH h
	join $(lnksrv_name).eCustoms.dbo.DTO_KHAI_MD_NOH_TMP a
	on h.cddl_ma_hq=a.ma_hq and h.ma_lh=a.ma_lh and h.namdk=a.nam_dk and h.sotk=a.so_tk and h.CDDL_TK_ID=a.tk_id
Where	h.CDDL_MA_HQ in ('01B1','01B3','01PJ','01E1','02B4','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1','01TE'
)
and h.ma_lh not like 'NSX%'

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
	h.CDDL_TK_ID
	,h.SOTK
	,h.MA_LH
	,rtrim(h.CDDL_MA_HQ)
	,h.CDDL_Ma_Cuc_HQ
	,h.NAMDK
	,h.CDDL_STT_Hang
	,h.CDDL_MA_Don_Vi
	,0
	,rtrim(h.CDDL_MA_HQ)
	,isnull(h.CDDL_MA_NPL_SP,' ')
	,isnull(h.CDDL_VT_ID,0)
	,h.MA_HANGKB
	,h.MA_HANG
	--,MA_PHU
	,isnull(h.CDDL_MA_NPL_SP,' ')
	,h.TEN_HANG
	,h.NUOC_XX
	,h.CDDL_MA_DVT
	,h.LUONG
	,h.DGIA_KB
	,h.DGIA_TT
	,h.MA_DG
	,h.TRIGIA_KB
	,h.TRIGIA_TT
	,h.TGKB_VND
	,h.LOAITSXNK
	,h.TS_XNK
	,h.TS_TTDB
	,h.TS_VAT
	,h.CDDL_THUE_XNK
	,h.CDDL_THUE_TTDB
	,h.CDDL_THUE_VAT
	,h.CDDL_PHU_THU
	,h.CDDL_MIENTHUE
	,h.TL_QUYDOI
	,h.TYLE_THUKHAC
	,h.CDDL_TRIGIA_THUKHAC
	,h.Ma_HTS
	,h.Luong_HTS
	,h.DVT_HTS
	,h.DonGia_HTS
	,h.ecsTHUE_MOI_TRUONG
	,h.ecsBIEU_THUE_XNK
	,h.ecsHANG_CU_MOI
	,h.ecsTHIET_BI_DONG_BO
	,h.ecsUU_DAI_THUE
	,isnull(h.CDDL_Loai_Hang,0)
	,h.ecsBIEU_THUE_TTDB
	,h.ecsBIEU_THUE_VAT
From $(lnksrv_name).$(sxxk_dbname_src).dbo.DHangMDDC h
	join $(lnksrv_name).eCustoms.dbo.DTO_KHAI_MD_NOH_TMP a
	on h.cddl_ma_hq=a.ma_hq and h.ma_lh=a.ma_lh and h.namdk=a.nam_dk and h.sotk=a.so_tk and h.CDDL_TK_ID=a.tk_id
Where	h.CDDL_MA_HQ in ('01B1','01B3','01PJ','01E1','02B4','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1','01TE'
)
and h.ma_lh like 'NSX%'