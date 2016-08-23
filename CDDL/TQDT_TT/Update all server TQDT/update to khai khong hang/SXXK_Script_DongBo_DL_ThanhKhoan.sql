--insert into dhangmdkh 
--select * from dhangmddk h
--where exists(
--select distinct a.sotk, a.Ma_lh, a.Ma_HQ, a.NamDK
-- from dtokhaimd a left join dhangmdkh b 
--							on a.sotk = b.sotk 
--							and a.ma_hq = b.ma_hq
--							and a.ma_lh = b.ma_lh
--							and a.namdk = b.namdk 
--where a.namdk = 2013
--and b.sotk is null 
--and a.sotk = h.sotk 
--and a.ma_hq = h.ma_hq 
--and a.ma_lh = h.ma_lh
--and a.namdk = h.namdk)


--insert into dhangmdth
--select * from dhangmddk h
--where exists(
--select distinct a.sotk, a.Ma_lh, a.Ma_HQ, a.NamDK
-- from dtokhaimd a left join dhangmdth b 
--							on a.sotk = b.sotk 
--							and a.ma_hq = b.ma_hq
--							and a.ma_lh = b.ma_lh
--							and a.namdk = b.namdk 
--where a.namdk = 2013
--and b.sotk is null 
--and a.sotk = h.sotk 
--and a.ma_hq = h.ma_hq 
--and a.ma_lh = h.ma_lh
--and a.namdk = h.namdk)
		
----1) Insert cac to khai NSX co trong DToKhaiMD ma khong co trong DDIEU_CHINH o lan DC 0
--Insert Into DDIEUCHINH
--            (
--              SOTK,
--              MA_LH,
--              MA_HQ,
--              NAMDK,
--              LAN_DC,
--              SO_CT,
--              NGAY_HL,
--              SNAHAN
--            )
-- Select b1.SoTK, b1.Ma_LH, b1.Ma_HQ, b1.NamDK, 0, null, b1.Ngay_DK, 275
-- From  DToKhaiMD b1 left join DDIEUCHINH a1 
--								on a1.SoTK = b1.SoTK
--								and a1.Ma_LH = b1.Ma_LH
--								and a1.NamDK = b1.NamDK   
--								and a1.Ma_HQ = b1.Ma_HQ
--								and a1.Lan_DC = 0
--where a1.SoTK is null and b1.Ma_LH like 'NSX%'  and b1.NamDK = 2013;

--2) Insert cac to khai NSX co trong ban DHangMDDK ma ko co trong DHangMDDC, DHangMDD_CT
INSERT  INTO DHangMDDC
            (SoTK,
              Ma_LH,
              Ma_HQ,
              NamDK,
              LAN_DC,
              MA_NPL_SP,
              STTHang,
              Ma_HangKB,
              Ma_Hang,
              Ma_Phu,
              Ten_Hang,
              DinhMuc,
              Nuoc_XX,
              Ma_DVT,
              Luong,
              DGia_KB,
              DGia_TT,
              Ma_DG,
              TriGia_KB,
              TriGia_TT,
              TGKB_VND,
              LoaiTSXNK,
              TS_XNK,
              TS_TTDB,
              TS_VAT,
              Thue_XNK,
              Thue_TTDB,
              Thue_VAT,
              Phu_Thu,
              MienThue,
              TL_QuyDoi,
              Ma_ThKe,
              ChoXuLy,
              TyLe_Thukhac,
              Trigia_Thukhac,
              Ma_HTS,
              Luong_HTS,
              DVT_HTS,
              DonGia_HTS
			 ,[ecsTHUE_MOI_TRUONG]
			   ,[ecsHANG_CU_MOI]
			   ,[ecsTHIET_BI_DONG_BO]
			   ,[ecsUU_DAI_THUE]
				)
SELECT  a1.SoTK,
                a1.Ma_LH,
                a1.Ma_HQ,
                a1.NamDK,
                0,
                a1.Ma_NPL_SP,
                a1.STTHang,
                a1.Ma_HangKB,
                a1.Ma_Hang,
                a1.STTHang,
                a1.Ten_Hang,
                a1.DinhMuc,
                a1.Nuoc_XX,
                a1.Ma_DVT,
                a1.Luong,
                a1.DGia_KB,
                a1.DGia_TT,
                a1.Ma_DG,
                a1.TriGia_KB,
                a1.TriGia_TT,
                a1.TGKB_VND,
                a1.LoaiTSXNK,
                a1.TS_XNK,
                a1.TS_TTDB,
                a1.TS_VAT,
                a1.Thue_XNK,
                a1.Thue_TTDB,
                a1.Thue_VAT,
                a1.Phu_Thu,
                a1.MienThue,
                a1.TL_QuyDoi,
                a1.Ma_ThKe,
                a1.ChoXuLy,
                a1.TyLe_Thukhac,
                a1.Trigia_Thukhac,
                a1.Ma_HTS,
                a1.Luong_HTS,
                a1.DVT_HTS,
                a1.DonGia_HTS
				,a1.[ecsTHUE_MOI_TRUONG]
			   ,a1.[ecsHANG_CU_MOI]
			   ,a1.[ecsTHIET_BI_DONG_BO]
			   ,a1.[ecsUU_DAI_THUE]
from DHangMDDK a1 left join DHangMDDC b1
					on a1.SoTK = b1.SoTK
					and a1.Ma_LH = b1.Ma_LH
					and a1.Ma_HQ = b1.Ma_HQ
					and a1.NamDK = b1.NamDK
					and a1.Ma_Phu = b1.Ma_Phu
					and b1.Lan_DC = 0
where a1.Ma_LH like 'NSX%' and b1.SoTK is null and a1.NamDK = 2013;

--===========================================================
 INSERT  DHANGMDDC_CT
                                (
                                  SOTK,
                                  MA_LH,
                                  MA_HQ,
                                  NAMDK,
                                  MA_PHU,
                                  LAN_DC,
                                  LAN_DC_CT,
                                  THUE_XNK,
                                  THUE_TTDB,
                                  THUE_VAT,
                                  PHU_THU,
                                  MIENTHUE,
                                  TRIGIA_THUKHAC
                                )
 SELECT     a1.SoTK,
			a1.Ma_LH,
			a1.Ma_HQ,
			a1.NamDK,
			a1.STTHang,
			0,
			0,
			a1.Thue_XNK,
			a1.Thue_TTDB,
			a1.Thue_VAT,
			a1.Phu_Thu,
			a1.MienThue,
			a1.TriGia_ThuKhac
FROM    DHangMDDK a1 left join DHangMDDC_CT b1
					on a1.SoTK = b1.SoTK
					and a1.Ma_LH = b1.Ma_LH
					and a1.Ma_HQ = b1.Ma_HQ
					and a1.NamDK = b1.NamDK
					and a1.Ma_Phu = b1.Ma_Phu
					and b1.Lan_DC = 0
					and b1.Lan_DC_CT = 0
where a1.Ma_LH like 'NSX%' and b1.SoTK is null  and a1.NamDK = 2013;


		