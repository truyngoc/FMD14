/****** Object:  StoredProcedure [dbo].[DongBo_DDMuc_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_DDMuc_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into DDMuc(So_HD,Ma_HQHD,Ngay_Ky,DVGC,SPP_Code,NPLHS_Code,SPHS_Code,NPLP_Code,Ten_NPL,Tieu_Hao,DMGC,TLHH,Ma_DVT,DVT_QuyDoi,TL_QuyDoi,NgayNhap,Mua_VN,Ghi_Chu,STT,So_TN,Nam_TN,Ten_SP,MA_DVT_SP,ecsKiemTraTT,ecsSua_SauKTTT,DM_CHUNG)
	Select x.value('So_HD[1]','varchar(80)') AS So_HD
          ,x.value('Ma_HQHD[1]','varchar(6)') AS Ma_HQHD
          ,x.value('Ngay_Ky[1]','datetime') AS Ngay_Ky
          ,x.value('DVGC[1]','varchar(14)') AS DVGC
          ,x.value('SPP_Code[1]','varchar(51)') AS SPP_Code
          ,x.value('NPLHS_Code[1]','varchar(12)') AS NPLHS_Code
          ,x.value('SPHS_Code[1]','varchar(12)') AS SPHS_Code
          ,x.value('NPLP_Code[1]','varchar(51)') AS NPLP_Code
          ,x.value('Ten_NPL[1]','nvarchar(256)') AS Ten_NPL
          ,x.value('Tieu_Hao[1]','smallint') AS Tieu_Hao
          ,x.value('DMGC[1]','numeric(18,6)') AS DMGC
          ,x.value('TLHH[1]','numeric(18,6)') AS TLHH
          ,x.value('Ma_DVT[1]','char(3)') AS Ma_DVT
          ,x.value('DVT_QuyDoi[1]','char(3)') AS DVT_QuyDoi
          ,x.value('TL_QuyDoi[1]','numeric(18,6)') AS TL_QuyDoi
          ,x.value('NgayNhap[1]','datetime') AS NgayNhap
          ,x.value('Mua_VN[1]','numeric(18,6)') AS Mua_VN
          ,x.value('Ghi_Chu[1]','nvarchar(156)') AS Ghi_Chu
          ,x.value('STT[1]','int') AS STT
          ,x.value('So_TN[1]','int') AS So_TN
          ,x.value('Nam_TN[1]','int') AS Nam_TN
          ,x.value('Ten_SP[1]','nvarchar(256)') AS Ten_SP
          ,x.value('MA_DVT_SP[1]','char(3)') AS MA_DVT_SP
          ,x.value('ecsKiemTraTT[1]','tinyint') AS ecsKiemTraTT
          ,x.value('ecsSua_SauKTTT[1]','tinyint') AS ecsSua_SauKTTT
          ,x.value('DM_CHUNG[1]','numeric(18,6)') AS DM_CHUNG from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_DHDGC_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_DHDGC_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into DHDGC(So_HD,Ma_HQHD,DVGC,Ngay_Ky,So_GP,Ngay_GP,DVDT,DiaChi_DT,Ngay_DK,Ngay_HH,Ngay_GH,NuocThueGC,ThiTruongXK,Consignee,DK_Giao,TGian_Giao,TriGiaGC,GiaGC,NgTe,PTTT,ThoiHanTT,PTXuLy,MaSPGC,TenSPGC,Nhan_Hieu,SoLuong_SP,MaDVT_SP,Nguoi_TD,ThanhKhoan,Ngay_TK,So_TK,Nguoi_TK,NoiDung_TK,Nguoi_Duyet,Nguoi_VM,Ngay_VM,So_Luu,STT,Ngay_PCTK,TTCS,TrangThai,So_TN,Nam_TN,MA_NGUOI_NHAN,TEN_NGUOI_NHAN,DIA_CHI_NGUOI_NHAN,MA_NGUOI_THUE,TEN_NGUOI_THUE,DIA_CHI_NGUOI_THUE,NuocNhanGC,GHI_CHU_KHAC,MA_DV_KB,MA_DV_XN,TEN_DV_KB,TEN_DV_XN,MA_DV_UT,TEN_DV_UT,MA_DV_NT,TEN_DV_NT,GIA_CONG_NGUOC)
	Select x.value('So_HD[1]','varchar(80)') AS So_HD
          ,x.value('Ma_HQHD[1]','varchar(6)') AS Ma_HQHD
          ,x.value('DVGC[1]','varchar(14)') AS DVGC
          ,x.value('Ngay_Ky[1]','datetime') AS Ngay_Ky
          ,x.value('So_GP[1]','varchar(20)') AS So_GP
          ,x.value('Ngay_GP[1]','datetime') AS Ngay_GP
          ,x.value('DVDT[1]','nvarchar(40)') AS DVDT
          ,x.value('DiaChi_DT[1]','nvarchar(80)') AS DiaChi_DT
          ,x.value('Ngay_DK[1]','datetime') AS Ngay_DK
          ,x.value('Ngay_HH[1]','datetime') AS Ngay_HH
          ,x.value('Ngay_GH[1]','datetime') AS Ngay_GH
          ,x.value('NuocThueGC[1]','nvarchar(50)') AS NuocThueGC
          ,x.value('ThiTruongXK[1]','nvarchar(255)') AS ThiTruongXK
          ,x.value('Consignee[1]','nvarchar(50)') AS Consignee
          ,x.value('DK_Giao[1]','nvarchar(50)') AS DK_Giao
          ,x.value('TGian_Giao[1]','nvarchar(50)') AS TGian_Giao
          ,x.value('TriGiaGC[1]','numeric(18,6)') AS TriGiaGC
          ,x.value('GiaGC[1]','numeric(18,6)') AS GiaGC
          ,x.value('NgTe[1]','char(3)') AS NgTe
          ,x.value('PTTT[1]','nvarchar(80)') AS PTTT
          ,x.value('ThoiHanTT[1]','nvarchar(40)') AS ThoiHanTT
          ,x.value('PTXuLy[1]','nvarchar(80)') AS PTXuLy
          ,x.value('MaSPGC[1]','nvarchar(255)') AS MaSPGC
          ,x.value('TenSPGC[1]','nvarchar(255)') AS TenSPGC
          ,x.value('Nhan_Hieu[1]','nvarchar(255)') AS Nhan_Hieu
          ,x.value('SoLuong_SP[1]','numeric(18,6)') AS SoLuong_SP
          ,x.value('MaDVT_SP[1]','char(3)') AS MaDVT_SP
          ,x.value('Nguoi_TD[1]','nvarchar(40)') AS Nguoi_TD
          ,x.value('ThanhKhoan[1]','tinyint') AS ThanhKhoan
          ,x.value('Ngay_TK[1]','datetime') AS Ngay_TK
          ,x.value('So_TK[1]','varchar(10)') AS So_TK
          ,x.value('Nguoi_TK[1]','nvarchar(40)') AS Nguoi_TK
          ,x.value('NoiDung_TK[1]','nvarchar(255)') AS NoiDung_TK
          ,x.value('Nguoi_Duyet[1]','nvarchar(40)') AS Nguoi_Duyet
          ,x.value('Nguoi_VM[1]','varchar(30)') AS Nguoi_VM
          ,x.value('Ngay_VM[1]','datetime') AS Ngay_VM
          ,x.value('So_Luu[1]','varchar(50)') AS So_Luu
          ,x.value('STT[1]','int') AS STT
          ,x.value('Ngay_PCTK[1]','datetime') AS Ngay_PCTK
          ,x.value('TTCS[1]','int') AS TTCS
          ,x.value('TrangThai[1]','int') AS TrangThai
          ,x.value('So_TN[1]','int') AS So_TN
          ,x.value('Nam_TN[1]','int') AS Nam_TN
          ,x.value('MA_NGUOI_NHAN[1]','varchar(50)') AS MA_NGUOI_NHAN
          ,x.value('TEN_NGUOI_NHAN[1]','nvarchar(80)') AS TEN_NGUOI_NHAN
          ,x.value('DIA_CHI_NGUOI_NHAN[1]','nvarchar(256)') AS DIA_CHI_NGUOI_NHAN
          ,x.value('MA_NGUOI_THUE[1]','varchar(50)') AS MA_NGUOI_THUE
          ,x.value('TEN_NGUOI_THUE[1]','nvarchar(80)') AS TEN_NGUOI_THUE
          ,x.value('DIA_CHI_NGUOI_THUE[1]','nvarchar(256)') AS DIA_CHI_NGUOI_THUE
          ,x.value('NuocNhanGC[1]','nvarchar(50)') AS NuocNhanGC
          ,x.value('GHI_CHU_KHAC[1]','nvarchar(2000)') AS GHI_CHU_KHAC
          ,x.value('MA_DV_KB[1]','varchar(17)') AS MA_DV_KB
          ,x.value('MA_DV_XN[1]','varchar(17)') AS MA_DV_XN
          ,x.value('TEN_DV_KB[1]','nvarchar(80)') AS TEN_DV_KB
          ,x.value('TEN_DV_XN[1]','nvarchar(80)') AS TEN_DV_XN
          ,x.value('MA_DV_UT[1]','varchar(17)') AS MA_DV_UT
          ,x.value('TEN_DV_UT[1]','nvarchar(80)') AS TEN_DV_UT
          ,x.value('MA_DV_NT[1]','varchar(17)') AS MA_DV_NT
          ,x.value('TEN_DV_NT[1]','nvarchar(80)') AS TEN_DV_NT
          ,x.value('GIA_CONG_NGUOC[1]','bit') AS GIA_CONG_NGUOC from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_DLOAISPGC_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_DLOAISPGC_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into DLOAISPGC(So_HD,Ma_HQHD,DVGC,Ngay_Ky,Ma_SPGC,Ma_DuKien,So_Luong,Gia_GC,TriGia_SP,Ten_SPGC)
	Select x.value('So_HD[1]','varchar(80)') AS So_HD
          ,x.value('Ma_HQHD[1]','varchar(6)') AS Ma_HQHD
          ,x.value('DVGC[1]','varchar(14)') AS DVGC
          ,x.value('Ngay_Ky[1]','datetime') AS Ngay_Ky
          ,x.value('Ma_SPGC[1]','varchar(50)') AS Ma_SPGC
          ,x.value('Ma_DuKien[1]','varchar(50)') AS Ma_DuKien
          ,x.value('So_Luong[1]','numeric(18,6)') AS So_Luong
          ,x.value('Gia_GC[1]','numeric(18,6)') AS Gia_GC
          ,x.value('TriGia_SP[1]','numeric(18,6)') AS TriGia_SP
          ,x.value('Ten_SPGC[1]','nvarchar(80)') AS Ten_SPGC from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_DNPLHD_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_DNPLHD_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into DNPLHD(So_HD,Ma_HQHD,DVGC,Ngay_Ky,P_Code,HS_Code,Ten_NPL,SL_DK,SL_DC,VB_DC,DinhMuc,SL_TN,SL_SD,SL_DU,Ma_DVT,HaveImported,Nguoi_VM,Ngay_VM,STT,SL_Conlai,Mua_VN,DonGia)
	Select x.value('So_HD[1]','varchar(80)') AS So_HD
          ,x.value('Ma_HQHD[1]','varchar(6)') AS Ma_HQHD
          ,x.value('DVGC[1]','varchar(14)') AS DVGC
          ,x.value('Ngay_Ky[1]','datetime') AS Ngay_Ky
          ,x.value('P_Code[1]','varchar(51)') AS P_Code
          ,x.value('HS_Code[1]','char(30)') AS HS_Code
          ,x.value('Ten_NPL[1]','nvarchar(256)') AS Ten_NPL
          ,x.value('SL_DK[1]','numeric(18,6)') AS SL_DK
          ,x.value('SL_DC[1]','numeric(18,6)') AS SL_DC
          ,x.value('VB_DC[1]','nvarchar(80)') AS VB_DC
          ,x.value('DinhMuc[1]','numeric(18,6)') AS DinhMuc
          ,x.value('SL_TN[1]','numeric(18,6)') AS SL_TN
          ,x.value('SL_SD[1]','numeric(18,6)') AS SL_SD
          ,x.value('SL_DU[1]','numeric(18,6)') AS SL_DU
          ,x.value('Ma_DVT[1]','char(3)') AS Ma_DVT
          ,x.value('HaveImported[1]','tinyint') AS HaveImported
          ,x.value('Nguoi_VM[1]','nvarchar(40)') AS Nguoi_VM
          ,x.value('Ngay_VM[1]','datetime') AS Ngay_VM
          ,x.value('STT[1]','int') AS STT
          ,x.value('SL_Conlai[1]','numeric(18,6)') AS SL_Conlai
          ,x.value('Mua_VN[1]','numeric(18,6)') AS Mua_VN
          ,x.value('DonGia[1]','numeric(18,6)') AS DonGia from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_DPKHDGC_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




ALTER PROCEDURE [dbo].[DongBo_DPKHDGC_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into DPKHDGC(So_HD,Ma_HQHD,DVGC,Ngay_Ky,So_PK,Ma_PK,Ngay_PK,So_TN,Ngay_TN,Nguoi_Duyet,Nguoi_VM,Ngay_VM,Noi_Dung,VBCP,GhiChu,Old_Info,New_Info,STT,MA_DV_KB,TEN_DV_KB,Ten_DVGC,MA_DV_UT,TEN_DV_UT,MA_DV_NT,TEN_DV_NT)
	Select x.value('So_HD[1]','varchar(80)') AS So_HD
          ,x.value('Ma_HQHD[1]','varchar(6)') AS Ma_HQHD
          ,x.value('DVGC[1]','varchar(14)') AS DVGC
          ,x.value('Ngay_Ky[1]','datetime') AS Ngay_Ky
          ,x.value('So_PK[1]','varchar(50)') AS So_PK
          ,x.value('Ma_PK[1]','varchar(3)') AS Ma_PK
          ,x.value('Ngay_PK[1]','datetime') AS Ngay_PK
          ,x.value('So_TN[1]','int') AS So_TN
          ,x.value('Ngay_TN[1]','datetime') AS Ngay_TN
          ,x.value('Nguoi_Duyet[1]','nvarchar(40)') AS Nguoi_Duyet
          ,x.value('Nguoi_VM[1]','nvarchar(40)') AS Nguoi_VM
          ,x.value('Ngay_VM[1]','datetime') AS Ngay_VM
          ,x.value('Noi_Dung[1]','nvarchar(255)') AS Noi_Dung
          ,x.value('VBCP[1]','nvarchar(255)') AS VBCP
          ,x.value('GhiChu[1]','nvarchar(2000)') AS GhiChu
          ,x.value('Old_Info[1]','nvarchar(255)') AS Old_Info
          ,x.value('New_Info[1]','nvarchar(255)') AS New_Info
          ,x.value('STT[1]','int') AS STT
          ,x.value('MA_DV_KB[1]','varchar(14)') AS MA_DV_KB
          ,x.value('TEN_DV_KB[1]','nvarchar(80)') AS TEN_DV_KB
          ,x.value('Ten_DVGC[1]','nvarchar(80)') AS Ten_DVGC
          ,x.value('MA_DV_UT[1]','varchar(14)') AS MA_DV_UT
          ,x.value('TEN_DV_UT[1]','nvarchar(80)') AS TEN_DV_UT
          ,x.value('MA_DV_NT[1]','varchar(14)') AS MA_DV_NT
          ,x.value('TEN_DV_NT[1]','nvarchar(80)') AS TEN_DV_NT from  @x.nodes('/inserted')a(x)
END


GO

/****** Object:  StoredProcedure [dbo].[DongBo_DSPGC_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_DSPGC_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into DSPGC(So_HD,Ma_HQHD,DVGC,Ngay_Ky,P_Code,HS_Code,Ten_SP,SL_DK,SL_DC,VB_DC,Ma_DVT,DonGiaGC,TriGiaGC,Gia_FOB,PTTT,NgTe,HaveExported,NguoiDCMau,NgayDCMau,Nguoi_VM,Ngay_VM,STT,SL_ConLai,Nhom_SP,TTCS)
	Select x.value('So_HD[1]','varchar(80)') AS So_HD
          ,x.value('Ma_HQHD[1]','varchar(6)') AS Ma_HQHD
          ,x.value('DVGC[1]','varchar(14)') AS DVGC
          ,x.value('Ngay_Ky[1]','datetime') AS Ngay_Ky
          ,x.value('P_Code[1]','varchar(51)') AS P_Code
          ,x.value('HS_Code[1]','char(12)') AS HS_Code
          ,x.value('Ten_SP[1]','nvarchar(256)') AS Ten_SP
          ,x.value('SL_DK[1]','numeric(18,6)') AS SL_DK
          ,x.value('SL_DC[1]','numeric(18,6)') AS SL_DC
          ,x.value('VB_DC[1]','nvarchar(80)') AS VB_DC
          ,x.value('Ma_DVT[1]','char(3)') AS Ma_DVT
          ,x.value('DonGiaGC[1]','numeric(18,6)') AS DonGiaGC
          ,x.value('TriGiaGC[1]','numeric(18,6)') AS TriGiaGC
          ,x.value('Gia_FOB[1]','numeric(18,6)') AS Gia_FOB
          ,x.value('PTTT[1]','nvarchar(50)') AS PTTT
          ,x.value('NgTe[1]','char(3)') AS NgTe
          ,x.value('HaveExported[1]','tinyint') AS HaveExported
          ,x.value('NguoiDCMau[1]','nvarchar(40)') AS NguoiDCMau
          ,x.value('NgayDCMau[1]','datetime') AS NgayDCMau
          ,x.value('Nguoi_VM[1]','varchar(14)') AS Nguoi_VM
          ,x.value('Ngay_VM[1]','datetime') AS Ngay_VM
          ,x.value('STT[1]','int') AS STT
          ,x.value('SL_ConLai[1]','numeric(18,6)') AS SL_ConLai
          ,x.value('Nhom_SP[1]','varchar(30)') AS Nhom_SP
          ,x.value('TTCS[1]','nvarchar(50)') AS TTCS from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_DThietBi_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_DThietBi_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into DThietBi(So_HD,Ma_HQHD,DVGC,Ngay_Ky,P_CODE,HS_CODE,Ten_TB,SL_DK,Ma_DVT,Xuat_Xu,TinhTrang,DonGia,TriGia,NGTe,Nguoi_VM,Ngay_VM,STT,HaveImported,GhiChu)
	Select x.value('So_HD[1]','varchar(80)') AS So_HD
          ,x.value('Ma_HQHD[1]','varchar(6)') AS Ma_HQHD
          ,x.value('DVGC[1]','varchar(14)') AS DVGC
          ,x.value('Ngay_Ky[1]','datetime') AS Ngay_Ky
          ,x.value('P_CODE[1]','varchar(51)') AS P_CODE
          ,x.value('HS_CODE[1]','varchar(30)') AS HS_CODE
          ,x.value('Ten_TB[1]','varchar(256)') AS Ten_TB
          ,x.value('SL_DK[1]','numeric(18,6)') AS SL_DK
          ,x.value('Ma_DVT[1]','char(3)') AS Ma_DVT
          ,x.value('Xuat_Xu[1]','varchar(80)') AS Xuat_Xu
          ,x.value('TinhTrang[1]','varchar(255)') AS TinhTrang
          ,x.value('DonGia[1]','money') AS DonGia
          ,x.value('TriGia[1]','money') AS TriGia
          ,x.value('NGTe[1]','varchar(3)') AS NGTe
          ,x.value('Nguoi_VM[1]','varchar(14)') AS Nguoi_VM
          ,x.value('Ngay_VM[1]','datetime') AS Ngay_VM
          ,x.value('STT[1]','int') AS STT
          ,x.value('HaveImported[1]','tinyint') AS HaveImported
          ,x.value('GhiChu[1]','varchar(255)') AS GhiChu from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_BAO_CAO_TON_KHO_D_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_BAO_CAO_TON_KHO_D_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_BAO_CAO_TON_KHO_D(SoTK,MaLH,MaHQ,NamDK,MA_HANG,NAM_TN,SO_TN,MA_HQTN,TEN_HANG,LOAI_HANG,MA_DVT,SO_LUONG_SOSACH,SO_LUONG_THUCTE,GHI_CHU,PHAN_LOAI_MUC_DICH_SU_DUNG)
	Select x.value('SoTK[1]','int') AS SoTK
          ,x.value('MaLH[1]','nvarchar(5)') AS MaLH
          ,x.value('MaHQ[1]','varchar(6)') AS MaHQ
          ,x.value('NamDK[1]','smallint') AS NamDK
          ,x.value('MA_HANG[1]','varchar(50)') AS MA_HANG
          ,x.value('NAM_TN[1]','int') AS NAM_TN
          ,x.value('SO_TN[1]','int') AS SO_TN
          ,x.value('MA_HQTN[1]','varchar(50)') AS MA_HQTN
          ,x.value('TEN_HANG[1]','nvarchar(255)') AS TEN_HANG
          ,x.value('LOAI_HANG[1]','int') AS LOAI_HANG
          ,x.value('MA_DVT[1]','varchar(50)') AS MA_DVT
          ,x.value('SO_LUONG_SOSACH[1]','decimal') AS SO_LUONG_SOSACH
          ,x.value('SO_LUONG_THUCTE[1]','decimal') AS SO_LUONG_THUCTE
          ,x.value('GHI_CHU[1]','nvarchar(2000)') AS GHI_CHU
          ,x.value('PHAN_LOAI_MUC_DICH_SU_DUNG[1]','varchar(50)') AS PHAN_LOAI_MUC_DICH_SU_DUNG from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_BAO_CAO_TON_KHO_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_BAO_CAO_TON_KHO_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_BAO_CAO_TON_KHO(SoTK,MaLH,MaHQ,NamDK,NAM_TN,SO_TN,MA_HQTN,MA_DV_XN,TEN_DV_XN,MA_DV_KB,TEN_DV_KB,NGUOI_NM,NGAY_NM,MSG_ID,MSG_REFERENCE,MSG_RECEIVE_TIME)
	Select x.value('SoTK[1]','int') AS SoTK
          ,x.value('MaLH[1]','nvarchar(5)') AS MaLH
          ,x.value('MaHQ[1]','varchar(6)') AS MaHQ
          ,x.value('NamDK[1]','smallint') AS NamDK
          ,x.value('NAM_TN[1]','int') AS NAM_TN
          ,x.value('SO_TN[1]','int') AS SO_TN
          ,x.value('MA_HQTN[1]','varchar(50)') AS MA_HQTN
          ,x.value('MA_DV_XN[1]','varchar(50)') AS MA_DV_XN
          ,x.value('TEN_DV_XN[1]','nvarchar(255)') AS TEN_DV_XN
          ,x.value('MA_DV_KB[1]','varchar(50)') AS MA_DV_KB
          ,x.value('TEN_DV_KB[1]','nvarchar(255)') AS TEN_DV_KB
          ,x.value('NGUOI_NM[1]','nvarchar(50)') AS NGUOI_NM
          ,x.value('NGAY_NM[1]','datetime') AS NGAY_NM
          ,x.value('MSG_ID[1]','varchar(50)') AS MSG_ID
          ,x.value('MSG_REFERENCE[1]','varchar(50)') AS MSG_REFERENCE
          ,x.value('MSG_RECEIVE_TIME[1]','datetime') AS MSG_RECEIVE_TIME from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_CT_TOKHAI_HANG_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_CT_TOKHAI_HANG_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_CT_TOKHAI_HANG(SO_TN,NAM_TN,MA_HQTN,STT_HANG,MA_HANG,TEN_HANG,MA_HS,MA_HS_MR,SO_LUONG,MA_DVT_DK,MA_DVT_KB,TY_LE_QUI_DOI,LOAI_HANG)
	Select x.value('SO_TN[1]','int') AS SO_TN
          ,x.value('NAM_TN[1]','int') AS NAM_TN
          ,x.value('MA_HQTN[1]','varchar(50)') AS MA_HQTN
          ,x.value('STT_HANG[1]','int') AS STT_HANG
          ,x.value('MA_HANG[1]','varchar(50)') AS MA_HANG
          ,x.value('TEN_HANG[1]','nvarchar(256)') AS TEN_HANG
          ,x.value('MA_HS[1]','varchar(50)') AS MA_HS
          ,x.value('MA_HS_MR[1]','varchar(50)') AS MA_HS_MR
          ,x.value('SO_LUONG[1]','decimal') AS SO_LUONG
          ,x.value('MA_DVT_DK[1]','varchar(50)') AS MA_DVT_DK
          ,x.value('MA_DVT_KB[1]','varchar(50)') AS MA_DVT_KB
          ,x.value('TY_LE_QUI_DOI[1]','decimal') AS TY_LE_QUI_DOI
          ,x.value('LOAI_HANG[1]','int') AS LOAI_HANG from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_CT_TOKHAI_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_CT_TOKHAI_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_CT_TOKHAI(SO_TN,NAM_TN,MA_HQTN,MA_DV_XN,TEN_DV_XN,MA_DV_DT,TEN_DV_DT,MA_DV_KB,TEN_DV_KB,SO_HOP_DONG,NGAY_HOP_DONG_HL,NGAY_HOP_DONG_HH,SO_HOA_DON_TM,NGAY_HOA_DON_TM,MA_LOAI_HOA_DON,MA_NGUOI_NHAN_HANG,TEN_NGUOI_NHAN_HANG,MA_NGUOI_GIAO_HANG,TEN_NGUOI_GIAO_HANG,DIA_DIEM_GIAO_HANG,TUYEN_DUONG_VAN_CHUYEN,MA_CK_NHAP,TEN_CK_NHAP,MA_CK_XUAT,TEN_CK_XUAT,MA_DKGH,MSG_ID,MSG_REFERENCE,MSG_RECEIVE_TIME,Trang_Thai,LOAI_HINH_NHAP,NGAYBATDAU,NGAYKETTHUC,SO_VAN_DON,TEN_VAN_DON,NGAY_VAN_DON,NGAY_VAN_DON_HH,LOAI_VAN_DON,TEN_HOP_DONG,MA_DV_UT,TEN_DV_UT,MA_DV_NT,TEN_DV_NT,MA_NUOC_XN,NGAY_DK,NAM_DK,IS_SIGN,LY_DO_SUA_CHUA,NGAY_SUA_CHUA,GHI_CHU_KHAC)
	Select x.value('SO_TN[1]','int') AS SO_TN
          ,x.value('NAM_TN[1]','int') AS NAM_TN
          ,x.value('MA_HQTN[1]','varchar(50)') AS MA_HQTN
          ,x.value('MA_DV_XN[1]','varchar(50)') AS MA_DV_XN
          ,x.value('TEN_DV_XN[1]','nvarchar(255)') AS TEN_DV_XN
          ,x.value('MA_DV_DT[1]','varchar(50)') AS MA_DV_DT
          ,x.value('TEN_DV_DT[1]','nvarchar(255)') AS TEN_DV_DT
          ,x.value('MA_DV_KB[1]','varchar(50)') AS MA_DV_KB
          ,x.value('TEN_DV_KB[1]','nvarchar(255)') AS TEN_DV_KB
          ,x.value('SO_HOP_DONG[1]','nvarchar(50)') AS SO_HOP_DONG
          ,x.value('NGAY_HOP_DONG_HL[1]','datetime') AS NGAY_HOP_DONG_HL
          ,x.value('NGAY_HOP_DONG_HH[1]','datetime') AS NGAY_HOP_DONG_HH
          ,x.value('SO_HOA_DON_TM[1]','nvarchar(50)') AS SO_HOA_DON_TM
          ,x.value('NGAY_HOA_DON_TM[1]','datetime') AS NGAY_HOA_DON_TM
          ,x.value('MA_LOAI_HOA_DON[1]','int') AS MA_LOAI_HOA_DON
          ,x.value('MA_NGUOI_NHAN_HANG[1]','nvarchar(50)') AS MA_NGUOI_NHAN_HANG
          ,x.value('TEN_NGUOI_NHAN_HANG[1]','nvarchar(255)') AS TEN_NGUOI_NHAN_HANG
          ,x.value('MA_NGUOI_GIAO_HANG[1]','nvarchar(50)') AS MA_NGUOI_GIAO_HANG
          ,x.value('TEN_NGUOI_GIAO_HANG[1]','nvarchar(255)') AS TEN_NGUOI_GIAO_HANG
          ,x.value('DIA_DIEM_GIAO_HANG[1]','nvarchar(2000)') AS DIA_DIEM_GIAO_HANG
          ,x.value('TUYEN_DUONG_VAN_CHUYEN[1]','nvarchar(2000)') AS TUYEN_DUONG_VAN_CHUYEN
          ,x.value('MA_CK_NHAP[1]','varchar(50)') AS MA_CK_NHAP
          ,x.value('TEN_CK_NHAP[1]','nvarchar(255)') AS TEN_CK_NHAP
          ,x.value('MA_CK_XUAT[1]','varchar(50)') AS MA_CK_XUAT
          ,x.value('TEN_CK_XUAT[1]','nvarchar(255)') AS TEN_CK_XUAT
          ,x.value('MA_DKGH[1]','varchar(50)') AS MA_DKGH
          ,x.value('MSG_ID[1]','varchar(50)') AS MSG_ID
          ,x.value('MSG_REFERENCE[1]','varchar(50)') AS MSG_REFERENCE
          ,x.value('MSG_RECEIVE_TIME[1]','datetime') AS MSG_RECEIVE_TIME
          ,x.value('Trang_Thai[1]','int') AS Trang_Thai
          ,x.value('LOAI_HINH_NHAP[1]','varchar(50)') AS LOAI_HINH_NHAP
          ,x.value('NGAYBATDAU[1]','datetime') AS NGAYBATDAU
          ,x.value('NGAYKETTHUC[1]','datetime') AS NGAYKETTHUC
          ,x.value('SO_VAN_DON[1]','nvarchar(50)') AS SO_VAN_DON
          ,x.value('TEN_VAN_DON[1]','nvarchar(256)') AS TEN_VAN_DON
          ,x.value('NGAY_VAN_DON[1]','datetime') AS NGAY_VAN_DON
          ,x.value('NGAY_VAN_DON_HH[1]','datetime') AS NGAY_VAN_DON_HH
          ,x.value('LOAI_VAN_DON[1]','nvarchar(3)') AS LOAI_VAN_DON
          ,x.value('TEN_HOP_DONG[1]','nvarchar(256)') AS TEN_HOP_DONG
          ,x.value('MA_DV_UT[1]','varchar(17)') AS MA_DV_UT
          ,x.value('TEN_DV_UT[1]','nvarchar(256)') AS TEN_DV_UT
          ,x.value('MA_DV_NT[1]','varchar(17)') AS MA_DV_NT
          ,x.value('TEN_DV_NT[1]','nvarchar(256)') AS TEN_DV_NT
          ,x.value('MA_NUOC_XN[1]','varchar(2)') AS MA_NUOC_XN
          ,x.value('NGAY_DK[1]','datetime') AS NGAY_DK
          ,x.value('NAM_DK[1]','int') AS NAM_DK
          ,x.value('IS_SIGN[1]','int') AS IS_SIGN
          ,x.value('LY_DO_SUA_CHUA[1]','nvarchar(2000)') AS LY_DO_SUA_CHUA
          ,x.value('NGAY_SUA_CHUA[1]','date') AS NGAY_SUA_CHUA
          ,x.value('GHI_CHU_KHAC[1]','nvarchar(2000)') AS GHI_CHU_KHAC from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_DHOSOTL_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_DHOSOTL_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_DHOSOTL(Ma_HQ,Ma_DV,NamTL,QuyTL,TrangThai,NgayNhap)
	Select x.value('Ma_HQ[1]','char(6)') AS Ma_HQ
          ,x.value('Ma_DV[1]','varchar(17)') AS Ma_DV
          ,x.value('NamTL[1]','int') AS NamTL
          ,x.value('QuyTL[1]','smallint') AS QuyTL
          ,x.value('TrangThai[1]','int') AS TrangThai
          ,x.value('NgayNhap[1]','datetime') AS NgayNhap from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_DinhMuc_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_DinhMuc_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_DinhMuc(MA_SP,MA_NPL,MA_HQ,MA_DV,DINH_MUC,TY_LE_HH,DINH_MUC_CO_HH,SO_DK,NAM_DK,IS_SIGN)
	Select x.value('MA_SP[1]','varchar(50)') AS MA_SP
          ,x.value('MA_NPL[1]','varchar(50)') AS MA_NPL
          ,x.value('MA_HQ[1]','varchar(50)') AS MA_HQ
          ,x.value('MA_DV[1]','varchar(50)') AS MA_DV
          ,x.value('DINH_MUC[1]','float') AS DINH_MUC
          ,x.value('TY_LE_HH[1]','float') AS TY_LE_HH
          ,x.value('DINH_MUC_CO_HH[1]','float') AS DINH_MUC_CO_HH
          ,x.value('SO_DK[1]','int') AS SO_DK
          ,x.value('NAM_DK[1]','int') AS NAM_DK
          ,x.value('IS_SIGN[1]','int') AS IS_SIGN from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_DM_HH_DUA_RA_D_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_DM_HH_DUA_RA_D_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_DM_HH_DUA_RA_D(MA_HQTN,MA_DV_XN,MA_HANG,TEN_HANG,MA_HS,MA_DVT,MUC_DICH_SU_DUNG,LOAI_HANG,GHI_CHU_KHAC,SO_DK,NAM_DK,IS_SIGN)
	Select x.value('MA_HQTN[1]','varchar(50)') AS MA_HQTN
          ,x.value('MA_DV_XN[1]','varchar(50)') AS MA_DV_XN
          ,x.value('MA_HANG[1]','varchar(50)') AS MA_HANG
          ,x.value('TEN_HANG[1]','nvarchar(256)') AS TEN_HANG
          ,x.value('MA_HS[1]','varchar(50)') AS MA_HS
          ,x.value('MA_DVT[1]','varchar(50)') AS MA_DVT
          ,x.value('MUC_DICH_SU_DUNG[1]','int') AS MUC_DICH_SU_DUNG
          ,x.value('LOAI_HANG[1]','int') AS LOAI_HANG
          ,x.value('GHI_CHU_KHAC[1]','nvarchar(2000)') AS GHI_CHU_KHAC
          ,x.value('SO_DK[1]','int') AS SO_DK
          ,x.value('NAM_DK[1]','int') AS NAM_DK
          ,x.value('IS_SIGN[1]','int') AS IS_SIGN from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_DM_HH_DUA_VAO_D_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_DM_HH_DUA_VAO_D_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_DM_HH_DUA_VAO_D(MA_HQTN,MA_DV_XN,MA_HANG,TEN_HANG,MA_HS,MA_DVT,MUC_DICH_SU_DUNG,LOAI_HANG,GHI_CHU_KHAC,SO_DK,NAM_DK,IS_SIGN)
	Select x.value('MA_HQTN[1]','varchar(50)') AS MA_HQTN
          ,x.value('MA_DV_XN[1]','varchar(50)') AS MA_DV_XN
          ,x.value('MA_HANG[1]','varchar(50)') AS MA_HANG
          ,x.value('TEN_HANG[1]','nvarchar(256)') AS TEN_HANG
          ,x.value('MA_HS[1]','varchar(50)') AS MA_HS
          ,x.value('MA_DVT[1]','varchar(50)') AS MA_DVT
          ,x.value('MUC_DICH_SU_DUNG[1]','int') AS MUC_DICH_SU_DUNG
          ,x.value('LOAI_HANG[1]','int') AS LOAI_HANG
          ,x.value('GHI_CHU_KHAC[1]','nvarchar(2000)') AS GHI_CHU_KHAC
          ,x.value('SO_DK[1]','int') AS SO_DK
          ,x.value('NAM_DK[1]','int') AS NAM_DK
          ,x.value('IS_SIGN[1]','int') AS IS_SIGN from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_DTL_CT_TOKHAI_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_DTL_CT_TOKHAI_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_DTL_CT_TOKHAI(Ma_HQ,Ma_DV,NamTL,QuyTL,SoTN,NamTN,Ma_LH,NGAY_DK)
	Select x.value('Ma_HQ[1]','char(6)') AS Ma_HQ
          ,x.value('Ma_DV[1]','varchar(17)') AS Ma_DV
          ,x.value('NamTL[1]','int') AS NamTL
          ,x.value('QuyTL[1]','smallint') AS QuyTL
          ,x.value('SoTN[1]','int') AS SoTN
          ,x.value('NamTN[1]','char(5)') AS NamTN
          ,x.value('Ma_LH[1]','varchar(50)') AS Ma_LH
          ,x.value('NGAY_DK[1]','datetime') AS NGAY_DK from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_DTL_TOKHAI_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_DTL_TOKHAI_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_DTL_TOKHAI(Ma_HQ,Ma_DV,NamTL,QuyTL,SoTK,Ma_LH,NamDK,Ngay_DK)
	Select x.value('Ma_HQ[1]','char(6)') AS Ma_HQ
          ,x.value('Ma_DV[1]','varchar(17)') AS Ma_DV
          ,x.value('NamTL[1]','int') AS NamTL
          ,x.value('QuyTL[1]','smallint') AS QuyTL
          ,x.value('SoTK[1]','int') AS SoTK
          ,x.value('Ma_LH[1]','char(5)') AS Ma_LH
          ,x.value('NamDK[1]','int') AS NamDK
          ,x.value('Ngay_DK[1]','datetime') AS Ngay_DK from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_GhiNhan_ThanhKhoan_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_GhiNhan_ThanhKhoan_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_GhiNhan_ThanhKhoan(Ma_HQ,Ma_DV,NamTL,QuyTL,KhauNV,ID,GhiNhan,NgayNhap,NguoiNhap)
	Select x.value('Ma_HQ[1]','char(6)') AS Ma_HQ
          ,x.value('Ma_DV[1]','varchar(17)') AS Ma_DV
          ,x.value('NamTL[1]','int') AS NamTL
          ,x.value('QuyTL[1]','smallint') AS QuyTL
          ,x.value('KhauNV[1]','int') AS KhauNV
          ,x.value('ID[1]','int') AS ID
          ,x.value('GhiNhan[1]','nvarchar(2000)') AS GhiNhan
          ,x.value('NgayNhap[1]','datetime') AS NgayNhap
          ,x.value('NguoiNhap[1]','varchar(256)') AS NguoiNhap from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_HUY_NPLSP_D_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_HUY_NPLSP_D_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_HUY_NPLSP_D(SO_TN,MA_HQTN,NAM_TN,MA_HANG,TEN_HANG,LOAI_HANG,MA_DVT,SO_LUONG,MA_DV_XN,TEN_DV_XN,NGAY_HUY,IS_SIGN,SO_TK,MA_HQ,NGAY_DK,MA_LH)
	Select x.value('SO_TN[1]','int') AS SO_TN
          ,x.value('MA_HQTN[1]','varchar(50)') AS MA_HQTN
          ,x.value('NAM_TN[1]','int') AS NAM_TN
          ,x.value('MA_HANG[1]','varchar(50)') AS MA_HANG
          ,x.value('TEN_HANG[1]','nvarchar(256)') AS TEN_HANG
          ,x.value('LOAI_HANG[1]','int') AS LOAI_HANG
          ,x.value('MA_DVT[1]','varchar(50)') AS MA_DVT
          ,x.value('SO_LUONG[1]','decimal') AS SO_LUONG
          ,x.value('MA_DV_XN[1]','varchar(50)') AS MA_DV_XN
          ,x.value('TEN_DV_XN[1]','nvarchar(255)') AS TEN_DV_XN
          ,x.value('NGAY_HUY[1]','datetime') AS NGAY_HUY
          ,x.value('IS_SIGN[1]','int') AS IS_SIGN
          ,x.value('SO_TK[1]','int') AS SO_TK
          ,x.value('MA_HQ[1]','varchar(6)') AS MA_HQ
          ,x.value('NGAY_DK[1]','datetime') AS NGAY_DK
          ,x.value('MA_LH[1]','varchar(6)') AS MA_LH from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_QD_KT_TTE_HH_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_QD_KT_TTE_HH_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_QD_KT_TTE_HH(NAM_TN,SO_TN,MA_HQTN,MA_DV_XN,TEN_DV_XN,MA_DV_KB,TEN_DV_KB,MSG_ID,MSG_REFERENCE,MSG_RECEIVE_TIME,DIA_DIEM_KIEM_TRA,NGAY_KIEM_TRA,YEU_CAU_KIEM_TRA)
	Select x.value('NAM_TN[1]','int') AS NAM_TN
          ,x.value('SO_TN[1]','int') AS SO_TN
          ,x.value('MA_HQTN[1]','varchar(50)') AS MA_HQTN
          ,x.value('MA_DV_XN[1]','varchar(50)') AS MA_DV_XN
          ,x.value('TEN_DV_XN[1]','nvarchar(255)') AS TEN_DV_XN
          ,x.value('MA_DV_KB[1]','varchar(50)') AS MA_DV_KB
          ,x.value('TEN_DV_KB[1]','nvarchar(255)') AS TEN_DV_KB
          ,x.value('MSG_ID[1]','varchar(50)') AS MSG_ID
          ,x.value('MSG_REFERENCE[1]','varchar(50)') AS MSG_REFERENCE
          ,x.value('MSG_RECEIVE_TIME[1]','datetime') AS MSG_RECEIVE_TIME
          ,x.value('DIA_DIEM_KIEM_TRA[1]','nvarchar(255)') AS DIA_DIEM_KIEM_TRA
          ,x.value('NGAY_KIEM_TRA[1]','datetime') AS NGAY_KIEM_TRA
          ,x.value('YEU_CAU_KIEM_TRA[1]','nvarchar(255)') AS YEU_CAU_KIEM_TRA from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_TB_GT_CL_D_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_TB_GT_CL_D_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_TB_GT_CL_D(SO_TN,NAM_TN,MA_HQTN,MA_HANG,TEN_HANG,MA_HS,TG_LUONG_KB,TG_LUONG_TN,TG_LUONG_CL,SO_LUONG_KB,SO_LUONG_TN,SO_LUONG_CL,MA_DVT)
	Select x.value('SO_TN[1]','int') AS SO_TN
          ,x.value('NAM_TN[1]','int') AS NAM_TN
          ,x.value('MA_HQTN[1]','varchar(50)') AS MA_HQTN
          ,x.value('MA_HANG[1]','varchar(50)') AS MA_HANG
          ,x.value('TEN_HANG[1]','nvarchar(256)') AS TEN_HANG
          ,x.value('MA_HS[1]','varchar(50)') AS MA_HS
          ,x.value('TG_LUONG_KB[1]','decimal') AS TG_LUONG_KB
          ,x.value('TG_LUONG_TN[1]','decimal') AS TG_LUONG_TN
          ,x.value('TG_LUONG_CL[1]','decimal') AS TG_LUONG_CL
          ,x.value('SO_LUONG_KB[1]','decimal') AS SO_LUONG_KB
          ,x.value('SO_LUONG_TN[1]','decimal') AS SO_LUONG_TN
          ,x.value('SO_LUONG_CL[1]','decimal') AS SO_LUONG_CL
          ,x.value('MA_DVT[1]','varchar(50)') AS MA_DVT from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_TB_GT_CL_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_TB_GT_CL_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_TB_GT_CL(SO_TN,NAM_TN,MA_HQTN,MA_DV_XN,TEN_DV_XN,MA_DV_DT,TEN_DV_DT,MA_DV_KB,TEN_DV_KB,MSG_ID,MSG_REFERENCE,MSG_RECEIVE_TIME,GHI_CHU,GIAI_TRINH,SO_TK,MA_HQ_XK,MA_LH_XK,NGAY_DK)
	Select x.value('SO_TN[1]','int') AS SO_TN
          ,x.value('NAM_TN[1]','int') AS NAM_TN
          ,x.value('MA_HQTN[1]','varchar(50)') AS MA_HQTN
          ,x.value('MA_DV_XN[1]','varchar(50)') AS MA_DV_XN
          ,x.value('TEN_DV_XN[1]','nvarchar(255)') AS TEN_DV_XN
          ,x.value('MA_DV_DT[1]','varchar(50)') AS MA_DV_DT
          ,x.value('TEN_DV_DT[1]','nvarchar(255)') AS TEN_DV_DT
          ,x.value('MA_DV_KB[1]','varchar(50)') AS MA_DV_KB
          ,x.value('TEN_DV_KB[1]','nvarchar(255)') AS TEN_DV_KB
          ,x.value('MSG_ID[1]','varchar(50)') AS MSG_ID
          ,x.value('MSG_REFERENCE[1]','varchar(50)') AS MSG_REFERENCE
          ,x.value('MSG_RECEIVE_TIME[1]','datetime') AS MSG_RECEIVE_TIME
          ,x.value('GHI_CHU[1]','nvarchar(255)') AS GHI_CHU
          ,x.value('GIAI_TRINH[1]','nvarchar(255)') AS GIAI_TRINH
          ,x.value('SO_TK[1]','int') AS SO_TK
          ,x.value('MA_HQ_XK[1]','char(6)') AS MA_HQ_XK
          ,x.value('MA_LH_XK[1]','char(5)') AS MA_LH_XK
          ,x.value('NGAY_DK[1]','date') AS NGAY_DK from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsCX_TL_TSCD_D_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsCX_TL_TSCD_D_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsCX_TL_TSCD_D(SO_TN,MA_HQTN,NAM_TN,MA_HANG,TEN_HANG,MA_DVT,SO_LUONG,MA_DV_XN,TEN_DV_XN,NGAY_TL,IS_SIGN,SO_TK_NK,MA_HQ_NK,MA_LH_NK,NGAY_DK_NK)
	Select x.value('SO_TN[1]','int') AS SO_TN
          ,x.value('MA_HQTN[1]','varchar(50)') AS MA_HQTN
          ,x.value('NAM_TN[1]','int') AS NAM_TN
          ,x.value('MA_HANG[1]','varchar(50)') AS MA_HANG
          ,x.value('TEN_HANG[1]','nvarchar(256)') AS TEN_HANG
          ,x.value('MA_DVT[1]','varchar(50)') AS MA_DVT
          ,x.value('SO_LUONG[1]','decimal') AS SO_LUONG
          ,x.value('MA_DV_XN[1]','varchar(50)') AS MA_DV_XN
          ,x.value('TEN_DV_XN[1]','nvarchar(225)') AS TEN_DV_XN
          ,x.value('NGAY_TL[1]','datetime') AS NGAY_TL
          ,x.value('IS_SIGN[1]','int') AS IS_SIGN
          ,x.value('SO_TK_NK[1]','int') AS SO_TK_NK
          ,x.value('MA_HQ_NK[1]','char(6)') AS MA_HQ_NK
          ,x.value('MA_LH_NK[1]','char(5)') AS MA_LH_NK
          ,x.value('NGAY_DK_NK[1]','date') AS NGAY_DK_NK from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_ecsDHangMau_Insert]    Script Date: 04/01/2014 17:11:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_ecsDHangMau_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into ecsDHangMau(So_HD,Ma_HQHD,DVGC,Ngay_Ky,P_Code,HS_Code,Ten_HM,So_Luong,Ma_DVT)
	Select x.value('So_HD[1]','varchar(80)') AS So_HD
          ,x.value('Ma_HQHD[1]','varchar(6)') AS Ma_HQHD
          ,x.value('DVGC[1]','varchar(14)') AS DVGC
          ,x.value('Ngay_Ky[1]','datetime') AS Ngay_Ky
          ,x.value('P_Code[1]','varchar(80)') AS P_Code
          ,x.value('HS_Code[1]','varchar(30)') AS HS_Code
          ,x.value('Ten_HM[1]','varchar(256)') AS Ten_HM
          ,x.value('So_Luong[1]','numeric(18,6)') AS So_Luong
          ,x.value('Ma_DVT[1]','char(3)') AS Ma_DVT from  @x.nodes('/inserted')a(x)
END

GO


