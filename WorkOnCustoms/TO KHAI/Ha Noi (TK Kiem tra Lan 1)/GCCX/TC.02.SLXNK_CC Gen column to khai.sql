-- alter table dbo.DHangMD add
			-- CDDL_MA_DVT char(4) null
			
-- alter table dbo.ecsNPLTCU_CT add			
			-- CDDL_MA_DVT char(4) null
			
-- alter table dbo.ecsCX_HUY_NPLSP_D add
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
				when '46 ' then 'UNVI'
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
				else @MaCu
			end

END

GO			

---------------- tao ham doi fcnTCVN2Unicode --------------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fcnTCVN2Unicode]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fcnTCVN2Unicode]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create FUNCTION [dbo].[fcnTCVN2Unicode] (@strInput VARCHAR(4000))
RETURNS NVARCHAR(4000)
AS
BEGIN
    DECLARE @TCVN CHAR(671)
    DECLARE @UNICODE CHAR(671)
    SET @TCVN = ',184 ,181 ,182 ,183 ,185 ,168 ,190 ,187 ,188 ,189 ,198 ,169 ,202 ,199 ,200 ,201 ,203 ,208 ,204 ,206 ,207 ,209 ,170 ,213 ,210 ,211 ,212 ,214 ,221 ,215 ,216 ,220 ,222 ,227 ,223 ,225 ,226 ,228 ,171 ,232 ,229 ,230 ,231 ,233 ,172 ,237 ,234 ,235 ,236 ,238 ,243 ,239 ,241 ,242 ,244 ,173 ,248 ,245 ,246 ,247 ,249 ,253 ,250 ,251 ,252 ,254 ,174 ,184 ,181 ,182 ,183 ,185 ,161 ,190 ,187 ,188 ,189 ,198 ,162 ,202 ,199 ,200 ,201 ,203 ,208 ,204 ,206 ,207 ,209 ,163 ,213 ,210 ,211 ,212 ,214 ,221 ,215 ,216 ,220 ,222 ,227 ,223 ,225 ,226 ,228 ,164 ,232 ,229 ,230 ,231 ,233 ,165 ,237 ,234 ,235 ,236 ,238 ,243 ,239 ,241 ,242 ,244 ,166 ,248 ,245 ,246 ,247 ,249 ,253 ,250 ,251 ,252 ,254 ,167 ,'
    SET @UNICODE = ',225 ,224 ,7843,227 ,7841,259 ,7855,7857,7859,7861,7863,226 ,7845,7847,7849,7851,7853,233 ,232 ,7867,7869,7865,234 ,7871,7873,7875,7877,7879,237 ,236 ,7881,297 ,7883,243 ,242 ,7887,245 ,7885,244 ,7889,7891,7893,7895,7897,417 ,7899,7901,7903,7905,7907,250 ,249 ,7911,361 ,7909,432 ,7913,7915,7917,7919,7921,253 ,7923,7927,7929,7925,273 ,193 ,192 ,7842,195 ,7840,258 ,7854,7856,7858,7860,7862,194 ,7844,7846,7848,7850,7852,201 ,200 ,7866,7868,7864,202 ,7870,7872,7874,7876,7878,205 ,204 ,7880,296 ,7882,211 ,210 ,7886,213 ,7884,212 ,7888,7890,7892,7894,7896,416 ,7898,7900,7902,7904,7906,218 ,217 ,7910,360 ,7908,431 ,7912,7914,7916,7918,7920,221 ,7922,7926,7928,7924,272 ,'
    IF @strInput IS NULL RETURN NULL
    IF @strInput = '' RETURN NULL
    DECLARE @strOutput NVARCHAR(4000)
    DECLARE @COUNTER INT
    DECLARE @POSITION INT
    SET @COUNTER = 1
    SET @strOutput = ''
    WHILE (@COUNTER <= LEN(@strInput))
    BEGIN
        SET @POSITION = CHARINDEX(','+CONVERT(CHAR(4),ASCII(SUBSTRING(@strInput, @COUNTER, 1)))+',', @TCVN, 1)
        IF @POSITION > 0
            SET @strOutput = @strOutput + NCHAR(CONVERT(INT,SUBSTRING(@UNICODE, @POSITION+1, 4)))
        ELSE
            SET @strOutput = @strOutput + SUBSTRING(@strInput, @COUNTER, 1)
        SET @COUNTER = @COUNTER + 1
    END 
    RETURN @strOutput
END

GO
---------------- END tao ham doi fcnTCVN2Unicode --------------------------

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
    when '02AB' then '02B1'
    when '02AB04' then '02B2'
    when '02IK02' then '02K1'
    when '02IK03' then '02K2'
    when '02IK04' then '02K3'
    when '02XF' then '02F1'
    when '02XF01' then '02F2'
    when '02XF02' then '02F3'
    when '11BB' then '11B1'
    when '11BB01' then '11B2'
    when '11BG' then '11G1'
    when '11BG01' then '11G2'
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
    when '20BB01' then '20B1'
    when '20BB02' then '20B2'
    when '27BB' then '27B1'
    when '27BB01' then '27B2'
    when '30CF' then '30F1'
    when '30CF01' then '30F2'
    when '31CD01' then '31D1'
    when '31CD02' then '31D2'
    when '31CD03' then '31D3'
    when '40BB01' then '40B1'
    when '40BB02' then '40B2'
    when '40PD01' then '40D1'
    when '40PD02' then '40D2'
    when '43IH' then '43H1'
    when '43IH02' then '43H2'
    when '43NK' then '43K1'
    when '43NK01' then '43K2'
    when '43NK02' then '43K3'
    when '45NF02' then '45F1'
    when '45NF03' then '45F2'
	when '47CD' then '47D1'
    when '47CD01' then '47D2'
    when '47CD02' then '47D3'
    when '47CI' then '47I1'
    when '47CI01' then '47I2'
    when '48BF03' then '48F1'
    when '48BF04' then '48F2'
    when '51CC' then '51C1'
    when '51CC01' then '51C2'
    when '61BA' then '61A1'
    when '61BA01' then '61A2'
    when '61PA' then '61A3'
    when '61PA02' then '61A4'
	when '01TE01' then '01NV'
	when '01PO' then '01PR'
    else @MaCu
   end

END

GO
---------------- END tao ham doi Doi_Ma_HQ --------------------------

print N'==================Tờ khai - update cột ==============='
-- declare @IDCucHQ bigint
-- declare @IDChiCuc bigint
-- set	@IDCucHQ = 	{ID Cục: tra bảng}
-- set	@IDChiCuc = {ID chi cục: tra bảng}
declare @IDDanhMuc bigint
set	@IDDanhMuc =10000000000000 + $(IDCucHQ)*100000000000 + ($(IDChiCuc)*cast(1000000000 as bigint))

-- TK.1
Update DToKhaiMD
	 Set	CDDL_TK_ID		= @IDDanhMuc + CDDL_ID
			,CDDL_MA_Cuc_HQ	= SUBSTRING(ma_hq,2,2)
			,CDDL_MA_HQ		= dbo.Doi_Ma_HQ(SUBSTRING(ma_hq,2,2) + SUBSTRING(ma_hq,1,1) + SUBSTRING(ma_hq,4,10))
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
													
-- TK.2 join DGC_HD
Update t
set	CDDL_HD_ID = h.HD_ID
From DToKhaiMD t join DGC_HD h on t.CDDL_MA_HQ = h.Ma_HQ_HD and t.Ma_DV=h.Don_Vi_GC and dbo.fcnTCVN2Unicode(t.So_HD)=h.So_HD and t.Ngay_HD=h.Ngay_Ky
where t.Ma_LH like '_GC%'

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

From DToKhaiMD t join ecsToKhaiMD e on t.SoTK = e.SoTK and t.Ma_LH=e.Ma_LH and t.Ma_HQ=e.Ma_HQ and t.NamDK=e.NamDK

-- H.1 join DToKhaiMD
Update h
Set		h.CDDL_TK_ID	= t.CDDL_TK_ID
		,h.CDDL_MA_HQ	= dbo.Doi_Ma_HQ(SUBSTRING(h.ma_hq,2,2) + SUBSTRING(h.ma_hq,1,1) + SUBSTRING(h.ma_hq,4,10))
		,h.CDDL_Ma_Cuc_HQ	= SUBSTRING(h.ma_hq,2,2)
		,h.CDDL_Ma_Don_Vi	= t.Ma_DV
		,h.CDDL_HD_ID		= t.CDDL_HD_ID
		,h.CDDL_Ma_Vat_Tu	= SUBSTRING(h.Ma_Phu,2,50)
		,h.CDDL_Loai_Hang	= case SUBSTRING(h.Ma_Phu,1,1)
								when 'N' then 1		-- npl
								when 'S' then 2		-- sp
								when 'T' then 3		-- thiet bi
								when 'M' then 4		-- hang mau
								when 'P' then 5		-- phe pham
								when 'C' then 6		-- tieu dung
								when 'U' then 7		-- loai khac
								end				
		,h.CDDL_MA_DVT		= dbo.Doi_Ma_DVT(MA_DVT)
From	DHangMD h join DToKhaiMD t on t.SoTK = h.SoTK and t.Ma_LH=h.Ma_LH and t.Ma_HQ=h.Ma_HQ and t.NamDK=h.NamDK

-- H2. join DGC_SP_NPL_TB_HM ja cong
Update h
Set		h.CDDL_VT_ID = n.VT_ID
From	DHangMD h join DGC_SP_NPL_TB_HM n on h.CDDL_HD_ID=n.HD_ID and h.CDDL_Ma_Vat_Tu=n.Ma_Vat_Tu and h.CDDL_Loai_Hang=n.Loai
where	h.Ma_LH like '_GC%'

-- H3. join DCX_DM_HH_DUA_VAO_RA che xuat
Update h
Set		h.CDDL_VT_ID = n.VT_ID
From	DHangMD h join DCX_DM_HH_DUA_VAO_RA n on h.CDDL_MA_HQ=n.MA_HQ and h.CDDL_Ma_Don_Vi=n.MA_DV and h.CDDL_Ma_Vat_Tu=n.MA_HANG
where	h.Ma_LH like '_CX%'

-- gia cong
update n
set 
		n.CDDL_MA_HQ	= dbo.Doi_Ma_HQ(SUBSTRING(n.ma_hq,2,2) + SUBSTRING(n.ma_hq,1,1) + SUBSTRING(n.ma_hq,4,10))
		,n.CDDL_Ma_Cuc_HQ	= SUBSTRING(n.ma_hq,2,2)
		,n.CDDL_Ma_Vat_Tu	= SUBSTRING(n.NPLP_Code,2,51)
from ecsNPLTCU n

update n
set 
		n.CDDL_VT_ID = d.VT_ID
from ecsNPLTCU n join DGC_SP_NPL_TB_HM d on n.CDDL_MA_HQ=d.Ma_HQ_HD and n.CDDL_Ma_Vat_Tu=d.Ma_Vat_Tu and d.Loai=1


update n
set 
		n.CDDL_TK_ID = t.CDDL_TK_ID
from ecsNPLTCU n join DToKhaiMD t on t.SoTK = n.SoTK and t.Ma_LH=n.Ma_LH and t.Ma_HQ=n.Ma_HQ and t.NamDK=n.NamDK


update t
set 
	t.CDDL_MA_HQ 		= n.CDDL_MA_HQ,
	t.CDDL_Ma_Cuc_HQ 	= n.CDDL_Ma_Cuc_HQ,
	t.CDDL_TK_ID		= n.CDDL_TK_ID,
	t.CDDL_VT_ID		= n.CDDL_VT_ID,
	t.SO_CT				= dbo.fcnTCVN2Unicode(So_CT),
	t.CDDL_MA_DVT		= dbo.Doi_Ma_DVT(MA_DVT)
from ecsNPLTCU_CT t join ecsNPLTCU n on n.SoTK = t.SoTK and n.Ma_LH = t.Ma_LH and n.Ma_HQ = t.Ma_HQ and n.NamDK = t.NamDK and n.NPLP_Code = t.NPLP_Code

-- che xuat
Update ecsCX_HUY_NPLSP_D
Set	
	CDDL_CT_ID			= @IDDanhMuc + 900000000 + CDDL_ID
	,CDDL_MA_HQ			= dbo.Doi_Ma_HQ(SUBSTRING(MA_HQTN,2,2) + SUBSTRING(MA_HQTN,1,1) + SUBSTRING(MA_HQTN,4,10))
	,CDDL_MA_CUC_HQ		= SUBSTRING(MA_HQTN,2,2)
	,CDDL_NAM_DK_TK		= datepart(YY,NGAY_DK)
	,CDDL_MA_DVT		= dbo.Doi_Ma_DVT(MA_DVT)
	
update h
set h.CDDL_TK_ID = d.CDDL_TK_ID
from ecsCX_HUY_NPLSP_D h
	join DToKhaiMD d on h.MA_HQTN=d.Ma_HQ 
				and h.MA_LH=d.Ma_LH 
				and h.NAM_TN=d.NamDK
				and h.SO_TK=d.SoTK

update h
set 
	h.CDDL_VT_ID = v.VT_ID
from ecsCX_HUY_NPLSP_D h
	join DCX_DM_HH_DUA_VAO_RA v on h.MA_HANG = v.MA_HANG 
							and h.MA_DV_XN = v.MA_DV 
							and h.CDDL_MA_HQ = v.MA_HQ 
							and h.LOAI_HANG = v.LOAI_HANG		
							
GO


