-- alter table dbo.DHangMDTH add
			-- CDDL_MA_DVT char(4) null

-- alter table dbo.DHangMDDC add
			-- CDDL_MA_DVT char(4) null			

---------------- tao ham doi MA_DVT --------------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doi_Ma_DVT]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Doi_Ma_DVT]
GO			
			
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[Doi_Ma_DVT] 
(
	@MaCu char(4)
)
RETURNS char(4)
AS
BEGIN
	return case @MaCu
				when '0  ' then 'USD '
				when '1  ' then 'GRM '
				when '2  ' then 'KGM '
				when '3  ' then 'MTR '
				when '4  ' then 'LTR '
				when '6  ' then 'MTQ '
				when '7  ' then 'KWH '
				when '8  ' then 'PR  '
				when '9  ' then 'CT  '
				when '10 ' then 'UNC '
				when '11 ' then 'PCE '
				when '12 ' then 'UNT '
				when '13 ' then 'BBL '
				when '14 ' then 'MTK '
				when '15 ' then 'DZN '
				when '16 ' then 'TNE '
				when '17 ' then 'PCE '
				when '18 ' then 'KUNC'
				when '19 ' then 'KPCE'
				when '20 ' then 'KUNQ'
				when '21 ' then 'KL  '
				when '22 ' then 'KROL'
				when '23 ' then 'KMTR'
				when '24 ' then 'KPR '
				when '25 ' then 'KPRO'
				when '26 ' then 'KVA '
				when '27 ' then 'UNQ '
				when '28 ' then 'KMTK'
				when '29 ' then 'UNV '
				when '30 ' then 'KPCE'
				when '31 ' then 'KSET'
				when '32 ' then 'KPKG'
				when '33 ' then 'SET '
				when '34 ' then 'KMTQ'
				when '35 ' then 'PRO '
				when '36 ' then 'ROL '
				when '37 ' then 'EXCH'
				when '38 ' then 'KUNV'
				when '39 ' then 'UNK '
				when '40 ' then 'YRD '
				when '41 ' then 'UNK '
				when '42 ' then 'TAM '
				when '43 ' then 'SOI '
				when '44 ' then 'HKGM'
				when '45 ' then 'FTK '				
				when '47 ' then 'UNA '
				when '48 ' then 'UNA '
				when '49 ' then 'UNA '
				when '50 ' then 'UNY '
				when '51 ' then 'STER'
				when '52 ' then 'BAN '
				when '53 ' then 'PKG '
				when '54 ' then 'LOT '
				when '55 ' then 'CONT'
				when '56 ' then 'CHI '
				when '57 ' then 'UNV '
				when '58 ' then 'UNB '
				when '59 ' then 'TO  '
				when '60 ' then 'UNA '
				when '61 ' then 'RAM '
				when '62 ' then 'INC '
				when '63 ' then 'INCK'
				when '64 ' then 'YDK '
				when '65 ' then 'UNT '
				when '66 ' then 'MLT '
				when '67 ' then 'CEN '
				when '69 ' then 'MMTR'
				when '70 ' then 'MGRM'
				when '71 ' then 'UNH '
				when '72 ' then 'UNU '
				when '73 ' then 'UNL '
				when '74 ' then 'HMTR'
				when '75 ' then 'UNK '
				when '76 ' then 'UNL '
				when '79 ' then 'DUNK'
				when '80 ' then 'KPIP'
				when '81 ' then 'DPCE'
				when '82 ' then 'HPCE'
				when '83 ' then 'BICH'
				when '84 ' then 'UNB '
				when '85 ' then 'DMTR'
				when '86 ' then 'CUC '
				when '87 ' then 'HFT '
				when '88 ' then 'PCE '
				when '89 ' then 'PR  '
				when '90 ' then 'PR  '
				when '91 ' then 'PR  '
				when '92 ' then 'BANG'
				when '93 ' then 'BAG '
				when '95 ' then 'LBR '
				when '96 ' then 'UNT '
				when '97 ' then 'GRO '
				when '99 ' then 'UND '
				when '98 ' then 'LIEU'
				when '100' then 'CUM '
				when '101' then 'MM3 '
				when '102' then 'CM3 '
				when '103' then 'MM2 '
				when '104' then 'CM2 '
				when '105' then 'DM2 '
				when '106' then 'DM  '
				when '109' then 'KIT '
				when '120' then 'UNIT'
				when '121' then 'LBS '
				when '46 ' then 'VI  '
				when '94 ' then 'PIP '
				when '107' then 'SYS '
				when '122' then 'FOT '
				when '45 ' then 'FTK '
				else @MaCu
			end

END

GO			

---------------- tao ham doi Doi_Ma_HQ --------------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doi_Ma_HQ]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[Doi_Ma_HQ]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[Doi_Ma_HQ] 
(
 @MaCu varchar(6)
)
RETURNS varchar(4)
AS
BEGIN
 return case @MaCu
    when '01AB02' then '01B1'
    when '01AB04' then '01B2'
    when '01AB05' then '01B3'
    when '01DD01' then '01D1'
    when '01DD03' then '01D2'
    when '01DD05' then '01D3'
    when '01PM' then '01M1'
    when '01PM01' then '01M2'
    when '01TE' then '01E1'
    when '01TE02' then '01E2'
    when '01TE03' then '01E3'
	when '01TE01' then '01NV'
	when '01PO' then '01PR'	
	when '02AB' then '02B1'
	when '02AB04' then '02B4'
	when '02CH' then '02H1'
	when '02CH01' then '02H2'
	when '02CL' then '02H3'
	when '02XF' then '02F1'
	when '02XF01' then '02F2'
	when '02XF02' then '02F3'
	when '02CI02' then '02CI'
	when '02IK02' then '02K1'
	when '02IK03' then '02K2'
	when '02IK04' then '02K3'
    when '11BB' then '11B1'
    when '11BB01' then '11B2'
    when '11BG' then '11G1'
    when '11BG01' then '11G2'
	when '12BB' then '12B1'
	when '12BB01' then '12B2'
	when '12BH' then '12H1'
	when '12BH01' then '12H2'
	when '12PF' then '12F1'
	when '12PF01' then '12F2'	
	when '13SG' then '13G1'
	when '13SG01' then '13G2'
    when '15BB01' then '15B1'
    when '15BB02' then '15B2'
    when '15BE01' then '15E1'
    when '15BE02' then '15E2'
    when '15BE03' then '15E3'
    when '15BE04' then '15E4'
    when '18BA01' then '18A1'
    when '18BA02' then '18A2'
    when '18BA03' then '18A3'
    when '18BB' then '18B1'
    when '18BB01' then '18B2'
    when '20BE' then '20B1'
    when '20BF' then '20B2'
    when '27BB' then '27B1'
    when '27BB01' then '27B2'	
	when '27CF' then '27F1'
	when '27CF01' then '27F2'
    when '30CF' then '30F1'
    when '30CF01' then '30F2'
    when '31CD01' then '31D2'
    when '31CD02' then '31D1'
    when '40PD' then '40D1'
    --when '43IH' then '43H1'
    when '43IH02' then '43H2'
    when '43NK' then '43K1'
    when '43NK01' then '43K2'
    when '43NE' then '43K3'
	when '45BB' then '45B1'
    when '45BB01' then '45B2'
    when '45BC' then '45C1'
    when '45BC01' then '45C2'
    when '45NF' then '45F1'
    when '45NF03' then '45F2'
	when '47CD' then '47D1'
    when '47CD01' then '47D2'
    when '47CD02' then '47D3'
    when '47CI' then '47I1'
    when '47CI01' then '47I2'
    when '48BF03' then '48F1'
    when '48BF04' then '48F2'
	when '49CC' then '49C1'
	when '49CC01' then '49C2'
    when '51CC' then '51C1'
    when '51CC01' then '51C2'
	when '60NC' then '60C1'
	when '60BF' then '60C2'
    else @MaCu
   end

END

GO
---------------- END tao ham doi Doi_Ma_HQ --------------------------


---------------- START chuyen hang tu DHANGMDDK --------------------------
use tokhaisxxk
go

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

GO
---------------- END chuyen hang tu DHANGMDDK --------------------------

print N'==================Tờ khai - update cột ==============='
-- declare @IDCucHQ bigint
-- declare @IDChiCuc bigint
-- set	@IDCucHQ = 	1--{ID Cục: tra bảng}
-- set	@IDChiCuc = 0--{ID chi cục: tra bảng}
declare @IDDanhMuc bigint
set	@IDDanhMuc =10000000000000 + $(IDCucHQ)*100000000000 + $(IDChiCuc)*cast(1000000000 as bigint)

print convert(varchar(30),getdate(),114) + N' - 1. Start DToKhaiMD'
-- TK.1
-- 15/07/2014 fix loi TQDT to khai NSX co XUAT_NPL_SP='S'
update DToKhaiMD
set XUAT_NPL_SP='N'
where SUBSTRING(MA_LH,1,1)='N' or MA_LH='XSX05'

update DToKhaiMD
set XUAT_NPL_SP='S'
where SUBSTRING(MA_LH,1,1)='X' and MA_LH <> 'XSX05'
-- end 15/07/2014

Update DToKhaiMD
	 Set	CDDL_TK_ID		= @IDDanhMuc + CDDL_ID
			,CDDL_MA_Cuc_HQ	= SUBSTRING(ma_hq,2,2)
			,CDDL_MA_HQ		= rtrim(SUBSTRING(ma_hq,2,2) + SUBSTRING(ma_hq,1,1) + SUBSTRING(ma_hq,4,10))
			,CDDL_PLUONG	= case upper(rtrim(PLuong))	when N'ĐỎ' then 3
													when '§á' then 3
													when N'VÀNG' then 2
													when 'VµNG' then 2
													when 'XANH' then 1
													when 'XANH' then 1
													else 0 end
			,CDDL_Reference = '00000000-0000-0000-0000-000000000000'
			,CDDL_So_Container20 = So_Container-SO_CONTAINER40
			,CDDL_SO_CONTAINER40 = SO_CONTAINER40
			,CDDL_So_Container	 = So_Container
			,CDDL_DV_DT	= LEFT(DV_DT,256)
			,CDDL_VAN_DON	= LEFT(VAN_DON,35)
			,CDDL_SO_HD	= LEFT(SO_HD,50)
			,CDDL_SO_HDTM	= LEFT(SO_HDTM,30)
			,CDDL_Ngay_Dua_Vao_Thanh_Khoan = case when Ma_LH like 'X%' then Ngay_DK else null end
													
print convert(varchar(30),getdate(),114) + N' - 2. Start join ecsToKhaiMD'
--phải sửa phần tờ khai và hàng theo SXXK
-- TK.3 join ecsToKhaiMD
update t
set		t.CDDL_SoTN	= e.SoTN
		,t.CDDL_NamTN	= e.NamTN
		,t.CDDL_NgayTN	= e.NgayTN
		,t.CDDL_MessageId	= e.MessageId
		,t.CDDL_HinhThucKhai	= e.HinhThucKhai
		,t.CDDL_KhauNV	= e.KhauNV
		,t.CDDL_KhauNVCu	= e.KhauNVCu
		,t.CDDL_KhauNV_TruocSuaOrHuy	= e.KhauNV_TruocSuaOrHuy
		,t.CDDL_KTHS_DaiDienDN	= e.KTHS_DaiDienDN
		,t.CDDL_KTHS_SoCMT	= e.KTHS_SoCMT
		,t.CDDL_KTHS_NgayCap	= e.KTHS_NgayCap
		,t.CDDL_KetQuaXLBuocTruoc	= e.KetQuaXLBuocTruoc
		,t.CDDL_DeXuatKhac	= e.DeXuatKhac
		,t.CDDL_CoChuKySo	= e.CoChuKySo
		,t.CDDL_KVGiamSat	= e.KVGiamSat
		,t.CDDL_ecsTen_DL	= e.ecsTen_DL
		,t.CDDL_ecsMa_DL	= e.ecsMa_DL
		,t.CDDL_ecsTrangThai_DL	= e.ecsTrangThai_DL
		,t.CDDL_ecsSo_HDGN	= e.ecsSo_HDGN
		,t.CDDL_ecsNgay_HDGN	= e.ecsNgay_HDGN
		,t.CDDL_ecsNgay_HHHDGN	= e.ecsNgay_HHHDGN
		,t.CDDL_ecsTen_NguoiDD	= e.ecsTen_NguoiDD
		,t.CDDL_ecsChucVu_NguoiDD	= e.ecsChucVu_NguoiDD
		,t.CDDL_ecsMa_DVG	= e.ecsMa_DVG
		,t.CDDL_ecsTen_DVG	= e.ecsTen_DVG
		,t.CDDL_ecsMa_DVN	= e.ecsMa_DVN
		,t.CDDL_ecsTen_DVN	= e.ecsTen_DVN
		,t.CDDL_ecsMa_DVCD	= e.ecsMa_DVCD
		,t.CDDL_ecsTen_DVCD	= e.ecsTen_DVCD
		,t.CDDL_ecsDD_GH	= e.ecsDD_GH
		,t.CDDL_ecsNgay_GH	= e.ecsNgay_GH
		,t.CDDL_ecsMa_CKNhap	= e.ecsMa_CKNhap
		,t.CDDL_ecsMa_CKXuat	= e.ecsMa_CKXuat
		,t.CDDL_ecsTen_CKXuat	= e.ecsTen_CKXuat
		,t.CDDL_ecsMa_DV_DT	= e.ecsMa_DV_DT
		,t.CDDL_ecsNoCT	= e.ecsNoCT
		,t.CDDL_ecsLayMau	= e.ecsLayMau
		,t.CDDL_ecsLuongTK_TruocSua	= e.ecsLuongTK_TruocSua
		,t.CDDL_ecsTen_DV	= e.ecsTen_DV
		,t.CDDL_ecsTen_DVKT	= e.ecsTen_DVKT
		,t.CDDL_ecsMa_DV_NT	= e.ecsMa_DV_NT
		,t.CDDL_ecsTen_DV_NT	= e.ecsTen_DV_NT
		,t.CDDL_ecsTen_CKNhap	= e.ecsTen_CKNhap
		,t.CDDL_ecsDaKiemHoa	= e.ecsDaKiemHoa
		,t.CDDL_ecsDaXNThongQuan	= e.ecsDaXNThongQuan
		,t.CDDL_ecsDaXNChuyenCK	= e.ecsDaXNChuyenCK
		,t.CDDL_ecsDaXNGiaiPhongHang	= e.ecsDaXNGiaiPhongHang
		,t.CDDL_ecsThongQuan_GPH_BQ_CCK	= e.ecsThongQuan_GPH_BQ_CCK
		,t.CDDL_ecsTen_DVUT	= e.ecsTen_DVUT
		,t.CDDL_ecsDaXNMangHangBaoQuan	= e.ecsDaXNMangHangBaoQuan
		,t.CDDL_ecsTrong_Luong_Tinh	= e.ecsTrong_Luong_Tinh
		,t.CDDL_ecsKQGiamDinh	= e.ecsKQGiamDinh
		,t.CDDL_ecsKiem_Hoa_Ho	= e.ecsKiem_Hoa_Ho
		,t.CDDL_ecsLay_Mau_CK	= e.ecsLay_Mau_CK
		,t.CDDL_ecsMsgVersion	= e.ecsMsgVersion
		,t.CDDL_ecsCo_An_Han	= e.ecsCo_An_Han
		,t.CDDL_ecsLy_Do_An_Han	= left(e.ecsLy_Do_An_Han,256)
		,t.CDDL_ecsSo_Ngay_An_Han	= e.ecsSo_Ngay_An_Han
		,t.CDDL_ecsCo_Dam_Bao_Nghia_Vu_Thue	= e.ecsCo_Dam_Bao_Nghia_Vu_Thue
		,t.CDDL_ecsHinh_Thuc_Dam_Bao	= e.ecsHinh_Thuc_Dam_Bao
		,t.CDDL_ecsTri_Gia_Dam_Bao	= e.ecsTri_Gia_Dam_Bao
		,t.CDDL_ecsNgay_Bat_Dau_Dam_Bao	= e.ecsNgay_Bat_Dau_Dam_Bao
		,t.CDDL_ecsNgay_Ket_Thuc_Dam_Bao	= e.ecsNgay_Ket_Thuc_Dam_Bao
		,t.CDDL_ecsSo_Phu_Luc_Hop_Dong	= e.ecsSo_Phu_Luc_Hop_Dong
		,t.CDDL_ecsNgay_Phu_Luc_Hop_Dong	= e.ecsNgay_Phu_Luc_Hop_Dong
		,t.CDDL_ecsNgay_Het_Han_Hop_Dong	= e.ecsNgay_Het_Han_Hop_Dong
		,t.CDDL_ecsDaHoanThanhNghiaVuThue	= e.ecsDaHoanThanhNghiaVuThue
		,t.CDDL_ecsDaHoanChinhHoSo	= e.ecsDaHoanChinhHoSo
		,t.CDDL_ecsNgayHH_TNTX	= e.ecsNgayHH_TNTX

From DToKhaiMD t join ecsToKhaiMD e on t.SoTK = e.SoTK and t.Ma_LH=e.Ma_LH and rtrim(t.Ma_HQ)=rtrim(e.Ma_HQ) and t.NamDK=e.NamDK

--=======================================
--DHangMDTH
--update thong tin tờ khai
print convert(varchar(30),getdate(),114) + N' - 3. Start DHangMDTH h join DToKhaiMD'
Update h
Set		h.CDDL_TK_ID	= t.CDDL_TK_ID
		,h.CDDL_MA_HQ	= rtrim(SUBSTRING(h.ma_hq,2,2) + SUBSTRING(h.ma_hq,1,1) + SUBSTRING(h.ma_hq,4,10))
		,h.CDDL_Ma_Cuc_HQ	= SUBSTRING(h.ma_hq,2,2)
		,h.CDDL_Ma_Don_Vi	= t.Ma_DV
		,h.CDDL_Loai_Hang	= case t.XUAT_NPL_SP
								when 'N' then 1		-- npl
								when 'S' then 2		-- sp
								end				
		,h.CDDL_MA_DVT		= dbo.Doi_Ma_DVT(MA_DVT)
		,h.CDDL_MA_NPL_SP	= h.MA_NPL_SP
From	DHangMDTH h join DToKhaiMD t on t.SoTK = h.SoTK and t.Ma_LH=h.Ma_LH and rtrim(t.Ma_HQ)=rtrim(h.Ma_HQ) and t.NamDK=h.NamDK


update h
set h.CDDL_MA_NPL_SP = d.MA_NPL_SP
from DHangMDTH h join DHANGMDDK d on d.SoTK = h.SoTK and d.Ma_LH=h.Ma_LH and rtrim(d.Ma_HQ)=rtrim(h.Ma_HQ) and d.NamDK=h.NamDK and d.MA_PHU = h.MA_PHU
where h.MA_NPL_SP = h.MA_PHU
--doi ma hai quan

--update VT_ID
print convert(varchar(30),getdate(),114) + N' - 4. Start DHangMDTH update VT_ID'
-- Update h
-- Set		h.CDDL_VT_ID = n.VT_ID
-- From	DHangMDTH h join DSX_SP_NPL n on h.CDDL_Ma_HQ=n.Ma_HQ and h.MA_NPL_SP=n.Ma_Vat_Tu and h.CDDL_Ma_Don_Vi=n.MA_DV and h.CDDL_Loai_Hang=n.Loai

--update STTHang
print convert(varchar(30),getdate(),114) + N' - 5. Start DHangMDTH update STTHang'
;with h as
(
	select *,
			ROW_NUMBER() OVER (PARTITION BY sotk,ma_lh,ma_hq,namdk order by ma_phu) as STTTT
	from	DHangMDTH
)
Update h
set		CDDL_STT_Hang = STTTT

--=======================================

--=======================================
--DHangMDDC
--update thong tin tờ khai
print convert(varchar(30),getdate(),114) + N' - 6. Start DHangMDDC update thong tin tờ khai'
Update h
Set		h.CDDL_TK_ID	= t.CDDL_TK_ID
		,h.CDDL_MA_HQ	= rtrim(SUBSTRING(h.ma_hq,2,2) + SUBSTRING(h.ma_hq,1,1) + SUBSTRING(h.ma_hq,4,10))
		,h.CDDL_Ma_Cuc_HQ	= SUBSTRING(h.ma_hq,2,2)
		,h.CDDL_Ma_Don_Vi	= t.Ma_DV
		,h.CDDL_Loai_Hang	= case t.XUAT_NPL_SP
								when 'N' then 1		-- npl
								when 'S' then 2		-- sp
								end			
		,h.CDDL_MA_DVT		= dbo.Doi_Ma_DVT(MA_DVT)
		,h.CDDL_MA_NPL_SP	= h.MA_NPL_SP		
From	DHangMDDC h join DToKhaiMD t on t.SoTK = h.SoTK and t.Ma_LH=h.Ma_LH and rtrim(t.Ma_HQ)=rtrim(h.Ma_HQ) and t.NamDK=h.NamDK



update h
set h.CDDL_MA_NPL_SP = d.MA_NPL_SP
from DHangMDDC h join DHANGMDDK d on d.SoTK = h.SoTK and d.Ma_LH=h.Ma_LH and rtrim(d.Ma_HQ)=rtrim(h.Ma_HQ) and d.NamDK=h.NamDK and d.MA_PHU = h.MA_PHU
where h.MA_NPL_SP = h.MA_PHU


--update VT_ID
print convert(varchar(30),getdate(),114) + N' - 7. Start DHangMDDC update VT_ID'
-- Update h
-- Set		h.CDDL_VT_ID = n.VT_ID
-- From	DHangMDDC h join DSX_SP_NPL n on h.CDDL_Ma_HQ=n.Ma_HQ and h.MA_NPL_SP=n.Ma_Vat_Tu and h.CDDL_Ma_Don_Vi=n.MA_DV and h.CDDL_Loai_Hang=n.Loai

--update STTHang
print convert(varchar(30),getdate(),114) + N' - 8. Start DHangMDDC update STTHang'
;with h as
(
	select *,
			ROW_NUMBER() OVER (PARTITION BY sotk,ma_lh,ma_hq,namdk order by ma_phu) as STTTT
	from	DHangMDDC
)
Update h
set		CDDL_STT_Hang = STTTT
		,CDDL_THUE_XNK	= THUE_XNK
		,CDDL_THUE_TTDB	= THUE_TTDB
		,CDDL_THUE_VAT	= THUE_VAT
		,CDDL_PHU_THU	= PHU_THU
		,CDDL_MIENTHUE	= MIENTHUE
		,CDDL_TRIGIA_THUKHAC	= TRIGIA_THUKHAC
--From	DHangMDDC h
		
--update từ điều chỉnh chi tiết
print convert(varchar(30),getdate(),114) + N' - 9. Start DHangMDDC update từ điều chỉnh chi tiết'
Update h
set		CDDL_THUE_XNK	= c.THUE_XNK
		,CDDL_THUE_TTDB	= c.THUE_TTDB
		,CDDL_THUE_VAT	= c.THUE_VAT
		,CDDL_PHU_THU	= c.PHU_THU
		,CDDL_MIENTHUE	= c.MIENTHUE
		,CDDL_TRIGIA_THUKHAC	= c.TRIGIA_THUKHAC
From	DHangMDDC h join DHangMDDC_CT c on h.SOTK=c.SOTK and h.MA_LH=c.MA_LH and rtrim(h.MA_HQ)=rtrim(c.MA_HQ) and h.NAMDK=c.NAMDK and h.MA_PHU=c.MA_PHU and h.LAN_DC=c.LAN_DC

--=======================================

--=====================================
--update thong tin NPL tồn
--update mã
print convert(varchar(30),getdate(),114) + N' - 10. Start DNPLNHAP'
update	h
set		CDDL_HS_TL_ID	= @IDDanhMuc + 100000000 + CDDL_ID
		,CDDL_MA_HQ 	= rtrim(SUBSTRING(MA_HQ,2,2) + SUBSTRING(MA_HQ,1,1) + SUBSTRING(MA_HQ,4,10))
		,CDDL_MA_CUC_HQ = SUBSTRING(MA_HQ,2,2)
		,CDDL_SO_TK_VNACCS = ' '
From	DNPLNHAP h 

--update VT_ID
print convert(varchar(30),getdate(),114) + N' - 11. Start DNPLNHAP update VT_ID'
-- update	h
-- set		CDDL_VT_ID 	= d.VT_ID
-- From	DNPLNHAP h join DSX_SP_NPL d on h.CDDL_MA_HQ = d.MA_HQ and h.MA_DV=d.MA_DV and h.MA_NPL = d.MA_VAT_TU and d.LOAI = 1 --NPL


--update thong tin từ TK
print convert(varchar(30),getdate(),114) + N' - 12. Start DNPLNHAP update thong tin từ TK'
update	h
set		h.CDDL_TK_ID = d.CDDL_TK_ID
From	DNPLNHAP h join DToKhaiMD d on rtrim(h.MA_HQ) = rtrim(d.MA_HQ) and h.Ma_LH = d.Ma_LH and h.SoTK = d.SoTK and h.NamDK = d.NamDK

--update thong tin từ DHangMDTH
print convert(varchar(30),getdate(),114) + N' - 13. Start DNPLNHAP update thong tin từ DHangMDTH'
update	h
set		CDDL_DGIA_TT	= DGIA_TT
		,CDDL_TS_XNK	= TS_XNK
From	DNPLNHAP h join DHangMDTH d on rtrim(h.MA_HQ) = rtrim(d.MA_HQ) and h.Ma_LH = d.Ma_LH and h.SoTK = d.SoTK and h.NamDK = d.NamDK and h.MA_NPL = d.CDDL_MA_NPL_SP

--update thong tin từ DHangMDDC
print convert(varchar(30),getdate(),114) + N' - 14. Start DNPLNHAP update thong tin từ DHangMDDC'
update	h
set		CDDL_DGIA_TT	= DGIA_TT
		,CDDL_TS_XNK	= TS_XNK
From	DNPLNHAP h join DHangMDDC d on rtrim(h.MA_HQ) = rtrim(d.MA_HQ) and h.Ma_LH = d.Ma_LH and h.SoTK = d.SoTK and h.NamDK = d.NamDK and h.MA_NPL = d.CDDL_MA_NPL_SP


-- cap nhat ma hai quan
if exists (select MaHQ
			From
			 (
				select distinct CDDL_MA_HQ as MaHQ from DToKhaiMD
				union
				select distinct CDDL_MA_HQ as MaHQ from DHangMDTH
				union
				select distinct CDDL_MA_HQ as MaHQ from DHangMDDC
				union
				select distinct CDDL_MA_HQ as MaHQ from DNPLNHAP) a
			Where rtrim(MaHQ) in ('01AB02','01AB04','01AB05','01DD01','01DD03','01DD05','01PM','01PM01','01TE','01TE02','01TE03','01TE01','01PO','02XF','02XF01','02XF02','02AB','02AB04','02CI02','02CH','02CH01','02CL','02IK02','02IK03','02IK04','11BB','11BB01','11BG','11BG01','12BB','12BB01','12BH','12BH01','12PF','12PF01','13SG','13SG01','15BB01','15BB02','15BE01','15BE02','15BE03','15BE04','18BA01','18BA02','18BA03','18BB','18BB01','20BE','20BF','27BB','27BB01','27CF','27CF01','30CF','30CF01','31CD01','31CD02','40PD','43IH02','43NK','43NK01','43NE','45BB','45BB01','45BC','45BC01','45NF','45NF03','47CD','47CD01','47CD02','47CI','47CI01','48BF03','48BF04','49CC','49CC01','51CC','51CC01','60NC','60BF')
			)
			
BEgin		
			update DToKhaiMD 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(rtrim(CDDL_MA_HQ))

			update DHangMDTH 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(rtrim(CDDL_MA_HQ))

			update DHangMDDC 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(rtrim(CDDL_MA_HQ))

			update DNPLNHAP 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(rtrim(CDDL_MA_HQ))
end


-- update join voi cac bang danh muc cua TQDT_TT (sau khi thuc hien doi ma)
Update h
Set		h.CDDL_VT_ID = n.VT_ID
From	DHangMDTH h join DSX_SP_NPL n on rtrim(h.CDDL_Ma_HQ)=rtrim(n.Ma_HQ) and rtrim(h.CDDL_MA_NPL_SP)=rtrim(n.Ma_Vat_Tu) and rtrim(h.CDDL_Ma_Don_Vi)=rtrim(n.MA_DV) and h.CDDL_Loai_Hang=n.Loai


Update h
Set		h.CDDL_VT_ID = n.VT_ID
From	DHangMDDC h join DSX_SP_NPL n on rtrim(h.CDDL_Ma_HQ)=rtrim(n.Ma_HQ) and rtrim(h.CDDL_MA_NPL_SP)=rtrim(n.Ma_Vat_Tu) and rtrim(h.CDDL_Ma_Don_Vi)=rtrim(n.MA_DV) and h.CDDL_Loai_Hang=n.Loai

update	h
set		CDDL_VT_ID 	= d.VT_ID
From	DNPLNHAP h join DSX_SP_NPL d on rtrim(h.CDDL_MA_HQ) = rtrim(d.MA_HQ) and rtrim(h.MA_DV)=rtrim(d.MA_DV) and rtrim(h.MA_NPL) = rtrim(d.MA_VAT_TU) and d.LOAI = 1 --NPL

GO

-- chay tren ToKhaiSXXK
-- lay dong hang co cung Ma_Vat_Tu nhung DGIA_TT,TS_XNK,luong,STT_HANG khac nhau
select so_tk,ma_lh,ma_hq,nam_dk,Ma_Vat_Tu,DGIA_TT,min(isnull(TS_XNK,0)) as TS_XNK,sum(luong) as luong into CDDL_TMP_CH
from (
	select distinct 
		h.sotk as so_tk
		,h.ma_lh
		,h.cddl_ma_hq as ma_hq
		,h.NAMDK as nam_dk
		,h.cddl_ma_npl_sp as Ma_Vat_Tu
		,h.DGIA_TT
		,h.TS_XNK
		,h.luong
		,h.CDDL_STT_Hang as STT_HANG
	from DHangMDDC h join DNPLNHAP cnl 
		on h.SOTK=cnl.SOTK 
			and rtrim(h.MA_LH)=rtrim(cnl.MA_LH) 
			and rtrim(h.MA_HQ)=rtrim(cnl.MA_HQ) 
			and h.namdk=cnl.namdk 
			and h.cddl_ma_npl_sp=cnl.Ma_NPL	
	) y
group by  so_tk,ma_lh,ma_hq,nam_dk,Ma_Vat_Tu,DGIA_TT

go
-- lay dong hang co cung Ma_Vat_Tu nhung DGIA_TT,TS_XNK,luong,STT_HANG khac nhau
insert into CDDL_TMP_CH
	(so_tk
	,ma_lh
	,ma_hq
	,nam_dk
	,Ma_Vat_Tu
	,DGIA_TT
	,TS_XNK
	,luong)
select so_tk,ma_lh,ma_hq,nam_dk,Ma_Vat_Tu,DGIA_TT,min(isnull(TS_XNK,0)) as TS_XNK,sum(luong) as luong
from (
	select distinct 
		h.sotk as so_tk
		,h.ma_lh
		,h.cddl_ma_hq as ma_hq
		,h.NAMDK as nam_dk
		,h.cddl_ma_npl_sp as Ma_Vat_Tu
		,h.DGIA_TT,h.TS_XNK
		,h.luong
		,h.CDDL_STT_Hang as STT_HANG
	from DHangMDTH h join DNPLNHAP cnl 
		on h.SOTK=cnl.SOTK 
			and rtrim(h.MA_LH)=rtrim(cnl.MA_LH) 
			and rtrim(h.MA_HQ)=rtrim(cnl.MA_HQ) 
			and h.namdk=cnl.namdk 
			and h.cddl_ma_npl_sp=cnl.Ma_NPL	
	) y
group by  so_tk,ma_lh,ma_hq,nam_dk,Ma_Vat_Tu,DGIA_TT

go

select 
	nl.CDDL_HS_TL_ID as HS_TL_ID
	,nl.NAMDK as NAM_TL
	,rtrim(nl.CDDL_MA_HQ) as Ma_HQ
	,nl.CDDL_MA_CUC_HQ as MA_CUC_HQ
	,nl.CDDL_TK_ID as TK_ID
	,nl.SOTK as SO_TK
	,nl.CDDL_SO_TK_VNACCS as SO_TK_VNACCS
	,nl.MA_LH
	,nl.NAMDK as NAM_DK
	,isnull(nl.CDDL_VT_ID,0)as VT_ID
	,nl.MA_NPL
	,coalesce(x.DGIA_TT,nl.CDDL_DGIA_TT,0) as DGIA_TT
	,coalesce(x.TS_XNK,nl.CDDL_TS_XNK,0) as TS_XNK
	,nl.MA_DV
	,x.LUONG as TON_DAU --nl.LUONG
	,x.luong-case when x.runningluong-nl.ton>x.luong then x.luong 
				when x.runningluong-nl.ton<0 then 0
			else x.runningluong-nl.ton end 
		as TON
	,case when x.runningluong-nl.ton>x.luong then x.luong 
		when x.runningluong-nl.ton<0 then 0
	else x.runningluong-nl.ton end 
		as LUONG
	,0 as LUONG_TON_DC
	,x.luong-case when x.runningluong-nl.ton>x.luong then x.luong 
				when x.runningluong-nl.ton<0 then 0
			else x.runningluong-nl.ton end 
		as LUONG_TON_SAU_DC
into CDDL_TMP_DSX_NPL_NHAP_TL
from
	(
--đoạn này để tính ra cột RunningLuong với ý nghĩa: nếu không sử dụng dòng này để thanh lý thì đây là số lượng NPL tồn
--RunningLuong = cộng dồn lượng của NPL và các NPL khác cùng mã, đơn giá lớn hơn
	select a.so_tk,a.ma_lh,a.ma_hq,a.nam_dk,a.Ma_Vat_Tu, a.DGIA_TT,a.TS_XNK,a.luong
		,SUM(b.luong) RunningLuong
	from CDDL_TMP_CH a join CDDL_TMP_CH b on a.SO_TK=b.SO_TK and a.MA_LH=b.MA_LH and a.MA_HQ=b.MA_HQ and a.NAM_DK=b.NAM_DK and a.Ma_Vat_Tu=b.Ma_Vat_Tu
				and a.DGIA_TT<=b.DGIA_TT
	group by  a.so_tk,a.ma_lh,a.ma_hq,a.nam_dk,a.Ma_Vat_Tu,a.DGIA_TT,a.TS_XNK,a.luong
	) x
	join DNPLNHAP nl on x.SO_TK=nl.SOTK and rtrim(x.MA_LH)=rtrim(nl.MA_LH) and rtrim(x.MA_HQ)=nl.CDDL_MA_HQ and x.NAM_DK=nl.NAMDK and rtrim(x.Ma_Vat_Tu)=rtrim(nl.MA_NPL)

go	