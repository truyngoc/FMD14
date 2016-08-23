-- select t.ma_hq,t.ma_lh,SUBSTRING(cast(t.TK_ID as varchar(50)),2,4) as [TK_ID],COUNT(*) as [SL]
-- from vDTO_KHAI_MD t left join vDHANG_MD h on t.TK_ID=h.TK_ID
-- where h.TK_ID is null and (t.Ma_LH like 'NKD%' or t.Ma_LH like 'X%' or t.Ma_LH like 'NSX%')
-- group by t.Ma_HQ,t.ma_lh,SUBSTRING(cast(t.TK_ID as varchar(50)),2,4)
-- order by t.Ma_HQ,t.ma_lh


-- select t.ma_hq,t.ma_lh,COUNT(*)
-- from vDTO_KHAI_MD t left join vDHANG_MD h on t.TK_ID=h.TK_ID
-- where h.TK_ID is null and (t.Ma_LH like 'NKD%' or t.Ma_LH like 'X%' or t.Ma_LH like 'NSX%')
-- group by t.Ma_HQ,t.ma_lh
-- order by t.Ma_HQ,t.ma_lh



-- use tokhaisxxk
-- go

-- select *
-- From DHangMDDC h join .eCustoms.dbo.DTO_KHAI_MD_NOH_TMP a
	-- on h.CDDL_MA_HQ=a.ma_hq and h.ma_lh=a.ma_lh and h.namdk=a.nam_dk and h.sotk=a.so_tk and h.CDDL_TK_ID=a.tk_id
-- and h.ma_lh like 'NSX%'


-- select *
-- From DHangMDTH h join .eCustoms.dbo.DTO_KHAI_MD_NOH_TMP a
	-- on h.CDDL_MA_HQ=a.ma_hq and h.ma_lh=a.ma_lh and h.namdk=a.nam_dk and h.sotk=a.so_tk and h.CDDL_TK_ID=a.tk_id
-- and h.ma_lh not like 'NSX%'



-- kiem tra xem to khai dua vao thanh khoan nao con bi thieu hang ko

-- select t.ma_hq,t.ma_lh,COUNT(*)
-- from vDTO_KHAI_MD t left join vDHANG_MD h on t.TK_ID=h.TK_ID
-- where h.TK_ID is null and (t.Ma_LH like 'NKD%' or t.Ma_LH like 'X%' or t.Ma_LH like 'NSX%')
-- group by t.Ma_HQ,t.ma_lh
-- order by t.Ma_HQ,t.ma_lh

-- ket xuat du lieu to khai khong co hang ra

-- select distinct t.ma_hq,t.ma_lh,t.nam_dk,t.so_tk,t.tk_id into DTO_KHAI_MD_NOH_TMP
-- from src_link_ecustoms_online.ecustoms_online.dbo.vDTO_KHAI_MD t left join src_link_ecustoms_online.ecustoms_online.dbo.vDHANG_MD h 
		-- on t.TK_ID=h.TK_ID
-- where h.TK_ID is null
-- go


insert into dhangmdth([SOTK]
      ,[MA_LH]
      ,[MA_HQ]
      ,[NAMDK]
      ,[MA_NPL_SP]
      ,[STTHANG]
      ,[MA_HANGKB]
      ,[MA_HANG]
      ,[MA_PHU]
      ,[TEN_HANG]
      ,[DINHMUC]
      ,[NUOC_XX]
      ,[MA_DVT]
      ,[LUONG]
      ,[DGIA_KB]
      ,[DGIA_TT]
      ,[MA_DG]
      ,[TRIGIA_KB]
      ,[TRIGIA_TT]
      ,[TGKB_VND]
      ,[LOAITSXNK]
      ,[TS_XNK]
      ,[TS_TTDB]
      ,[TS_VAT]
      ,[THUE_XNK]
      ,[THUE_TTDB]
      ,[THUE_VAT]
      ,[PHU_THU]
      ,[MIENTHUE]
      ,[TL_QUYDOI]
      ,[MA_THKE]
      ,[CHOXULY]
      ,[TYLE_THUKHAC]
      ,[TRIGIA_THUKHAC]
      ,[Ma_HTS]
      ,[Luong_HTS]
      ,[DVT_HTS]
      ,[DonGia_HTS]
      ,[ecsMABIEUTHUE_TV]
      ,[ecsTHUE_TV]
      ,[ecsTHUE_SUAT_TV]
      ,[Thue_Suat_Tuyet_Doi_TV]
      ,[Thue_Suat_Tuyet_Doi_XNK]
      ,[Thue_Suat_Tuyet_Doi_VAT]
      ,[Thue_Suat_Tuyet_Doi_TTDB]
      ,[Thue_Suat_Tuyet_Doi_MT]
      ,[Thue_Suat_Tuyet_Doi_Khac]
      ,[Thue_Suat_Tuyet_Doi_CLG]
      ,[MaBieuThue_CLG]
      ,[Thue_CLG]
      ,[Thue_Suat_CLG]
      ,[ecsTHUE_MOI_TRUONG]
      ,[ecsHANG_CU_MOI]
      ,[ecsTHIET_BI_DONG_BO]
      ,[ecsUU_DAI_THUE]
      ,[ecsMA_BIEU_THUE_XNK]
      ,[ecsMABIEUTHUE_VAT]
      ,[ecsMABIEUTHUE_TTDB]
      ,[ecsMABIEUTHUE_BVMT])
select [SOTK]
      ,[MA_LH]
      ,[MA_HQ]
      ,[NAMDK]
      ,[MA_NPL_SP]
      ,[STTHANG]
      ,[MA_HANGKB]
      ,[MA_HANG]
      ,[MA_PHU]
      ,[TEN_HANG]
      ,[DINHMUC]
      ,[NUOC_XX]
      ,[MA_DVT]
      ,[LUONG]
      ,[DGIA_KB]
      ,[DGIA_TT]
      ,[MA_DG]
      ,[TRIGIA_KB]
      ,[TRIGIA_TT]
      ,[TGKB_VND]
      ,[LOAITSXNK]
      ,[TS_XNK]
      ,[TS_TTDB]
      ,[TS_VAT]
      ,[THUE_XNK]
      ,[THUE_TTDB]
      ,[THUE_VAT]
      ,[PHU_THU]
      ,[MIENTHUE]
      ,[TL_QUYDOI]
      ,[MA_THKE]
      ,[CHOXULY]
      ,[TYLE_THUKHAC]
      ,[TRIGIA_THUKHAC]
      ,[Ma_HTS]
      ,[Luong_HTS]
      ,[DVT_HTS]
      ,[DonGia_HTS]
      ,[ecsMABIEUTHUE_TV]
      ,[ecsTHUE_TV]
      ,[ecsTHUE_SUAT_TV]
      ,[Thue_Suat_Tuyet_Doi_TV]
      ,[Thue_Suat_Tuyet_Doi_XNK]
      ,[Thue_Suat_Tuyet_Doi_VAT]
      ,[Thue_Suat_Tuyet_Doi_TTDB]
      ,[Thue_Suat_Tuyet_Doi_MT]
      ,[Thue_Suat_Tuyet_Doi_Khac]
      ,[Thue_Suat_Tuyet_Doi_CLG]
      ,[MaBieuThue_CLG]
      ,[Thue_CLG]
      ,[Thue_Suat_CLG]
      ,[ecsTHUE_MOI_TRUONG]
      ,[ecsHANG_CU_MOI]
      ,[ecsTHIET_BI_DONG_BO]
      ,[ecsUU_DAI_THUE]
      ,[ecsMA_BIEU_THUE_XNK]
      ,[ecsMABIEUTHUE_VAT]
      ,[ecsMABIEUTHUE_TTDB]
      ,[ecsMABIEUTHUE_BVMT] from dhangmddk h
where exists(
select distinct a.sotk, a.Ma_lh, a.Ma_HQ, a.NamDK
from dtokhaimd a left join dhangmdth b 
							on a.sotk = b.sotk 
							and a.ma_hq = b.ma_hq
							and a.ma_lh = b.ma_lh
							and a.namdk = b.namdk 
where b.sotk is null 
and a.sotk = h.sotk 
and a.ma_hq = h.ma_hq 
and a.ma_lh = h.ma_lh
and a.namdk = h.namdk
and h.ma_lh not like 'NSX%')

GO

--====================================================================
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
                a1.MA_PHU,
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
					--and b1.Lan_DC = 0
where a1.Ma_LH like 'NSX%' and b1.SoTK is null

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
			a1.MA_PHU,
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
where a1.Ma_LH like 'NSX%' and b1.SoTK is null