/****** Object:  StoredProcedure [dbo].[DongBo_DDINHMUC_Insert]    Script Date: 04/01/2014 17:15:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_DDINHMUC_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into DDINHMUC(MA_SP,MA_NPL,MA_DV,MA_HQ,DM_SD,TL_HH,DM_CHUNG,GHI_CHU,So_TN,Nam_TN,ecsKiemTraTT,ecsSua_SauKTTT)
	Select x.value('MA_SP[1]','varchar(30)') AS MA_SP
          ,x.value('MA_NPL[1]','varchar(30)') AS MA_NPL
          ,x.value('MA_DV[1]','varchar(17)') AS MA_DV
          ,x.value('MA_HQ[1]','char(6)') AS MA_HQ
          ,x.value('DM_SD[1]','numeric(18,6)') AS DM_SD
          ,x.value('TL_HH[1]','numeric(18,6)') AS TL_HH
          ,x.value('DM_CHUNG[1]','numeric(18,6)') AS DM_CHUNG
          ,x.value('GHI_CHU[1]','nvarchar(256)') AS GHI_CHU
          ,x.value('So_TN[1]','int') AS So_TN
          ,x.value('Nam_TN[1]','int') AS Nam_TN
          ,x.value('ecsKiemTraTT[1]','int') AS ecsKiemTraTT
          ,x.value('ecsSua_SauKTTT[1]','int') AS ecsSua_SauKTTT from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_DDINHMUC_TT_Insert]    Script Date: 04/01/2014 17:15:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_DDINHMUC_TT_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into DDINHMUC_TT(MA_SP,MA_DV,MA_HQ,SO_DM,NGAY_DK,NGAY_AD,NGAY_HH,THANH_LY)
	Select x.value('MA_SP[1]','varchar(30)') AS MA_SP
          ,x.value('MA_DV[1]','varchar(17)') AS MA_DV
          ,x.value('MA_HQ[1]','char(6)') AS MA_HQ
          ,x.value('SO_DM[1]','int') AS SO_DM
          ,x.value('NGAY_DK[1]','datetime') AS NGAY_DK
          ,x.value('NGAY_AD[1]','datetime') AS NGAY_AD
          ,x.value('NGAY_HH[1]','datetime') AS NGAY_HH
          ,x.value('THANH_LY[1]','int') AS THANH_LY from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_SNPL_Insert]    Script Date: 04/01/2014 17:15:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_SNPL_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into SNPL(MA_HQ,MA_DV,MA_NPL,TEN_NPL,MA_HS,MA_DVT,So_TN,Nam_TN)
	Select x.value('MA_HQ[1]','char(6)') AS MA_HQ
          ,x.value('MA_DV[1]','varchar(14)') AS MA_DV
          ,x.value('MA_NPL[1]','varchar(30)') AS MA_NPL
          ,x.value('TEN_NPL[1]','nvarchar(255)') AS TEN_NPL
          ,x.value('MA_HS[1]','varchar(12)') AS MA_HS
          ,x.value('MA_DVT[1]','char(3)') AS MA_DVT
          ,x.value('So_TN[1]','int') AS So_TN
          ,x.value('Nam_TN[1]','int') AS Nam_TN from  @x.nodes('/inserted')a(x)
END

GO

/****** Object:  StoredProcedure [dbo].[DongBo_SSP_Insert]    Script Date: 04/01/2014 17:15:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



ALTER PROCEDURE [dbo].[DongBo_SSP_Insert]
@x xml
AS
BEGIN
  SET NOCOUNT ON;
  
    Insert Into SSP(MA_HQ,MA_DV,MA_SP,TEN_SP,MA_HS,MA_DVT,So_TN,Nam_TN)
	Select x.value('MA_HQ[1]','char(6)') AS MA_HQ
          ,x.value('MA_DV[1]','varchar(14)') AS MA_DV
          ,x.value('MA_SP[1]','varchar(30)') AS MA_SP
          ,x.value('TEN_SP[1]','nvarchar(255)') AS TEN_SP
          ,x.value('MA_HS[1]','varchar(12)') AS MA_HS
          ,x.value('MA_DVT[1]','char(3)') AS MA_DVT
          ,x.value('So_TN[1]','int') AS So_TN
          ,x.value('Nam_TN[1]','int') AS Nam_TN from  @x.nodes('/inserted')a(x)
END

GO


