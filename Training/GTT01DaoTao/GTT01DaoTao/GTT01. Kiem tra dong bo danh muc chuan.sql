USE [GTT01QuanTri]
GO

--[GTT_TT] La LinkServer ket noi toi db [GTT01QuanTri] do dia phuong gui len sau khi backup
INSERT INTO [GTT01QuanTri].[dbo].[SHAIQUAN]
           ([Ma_HQ]
           ,[Ten_HQ]
           ,[Cap_HQ])
SELECT
     A.[Ma_HQ]
	   ,A.[Ten_HQ]
	   ,A.[Cap_HQ]
FROM
	[GTT_TT].[GTT01QuanTri].[dbo].[SHAIQUAN]	A LEFT JOIN [GTT01QuanTri].[dbo].[SHAIQUAN] B
	ON A.Ma_HQ=B.Ma_HQ
WHERE 
	B.Ma_HQ IS NULL	

	   
INSERT INTO [GTT01QuanTri].[dbo].[SDVT]
           ([Ma_DVT]
           ,[Ten_DVT]
           ,[Ma_Std]
           ,[TL_QuyDoi])
SELECT           
	A.[Ma_DVT]
       ,A.[Ten_DVT]
       ,A.[Ma_Std]
       ,A.[TL_QuyDoi]
FROM
	[GTT_TT].[GTT01QuanTri].[dbo].[SDVT]	A LEFT JOIN [GTT01QuanTri].[dbo].[SDVT] B
	ON A.Ma_DVT=B.Ma_DVT
WHERE 
	B.Ma_DVT IS NULL
		
INSERT INTO [GTT01QuanTri].[dbo].[SNUOC]
           ([Ma_Nuoc]
           ,[Ten_Nuoc]
           ,[Ma_NT])
SELECT
	A.[Ma_Nuoc]
       ,A.[Ten_Nuoc]
       ,A.[Ma_NT]
FROM
	[GTT_TT].[GTT01QuanTri].[dbo].[SNUOC] A LEFT JOIN [GTT01QuanTri].[dbo].[SNUOC] B
	ON A.MA_NUOC=B.MA_NUOC
WHERE 
	B.MA_NUOC IS NULL

INSERT INTO [GTT01QuanTri].[dbo].[SDONVI]
           ([Ma_DV]
           ,[Ten_DV]
           ,[Ten_GD]
           ,[MaLHDN]
           ,[TWDP]
           ,[NoiQuanLy]
           ,[SoGPKD]
           ,[NgayCapGPKD]
           ,[DiaChi]
           ,[DienThoai]
           ,[Fax]
           ,[GiamDoc]
           ,[KeToan]
           ,[TaiKhoan]
           ,[PPT_GTGT]
           ,[Nhom_CQ]
           ,[TT_DV]
           ,[MLNSChuong]
           ,[SoGC])
SELECT
	A.Ma_DV
       ,A.Ten_DV
       ,A.Ten_GD
       ,A.MaLHDN
       ,A.TWDP
       ,A.NoiQuanLy
       ,A.SoGPKD
       ,A.NgayCapGPKD
       ,A.DiaChi
       ,A.DienThoai
       ,A.Fax
       ,A.GiamDoc
       ,A.KeToan
       ,A.TaiKhoan
       ,A.PPT_GTGT
       ,A.Nhom_CQ
       ,A.TT_DV
       ,A.MLNSChuong
       ,A.SoGC	    
FROM
	[GTT_TT].[GTT01QuanTri].[dbo].[SDONVI] A LEFT JOIN [GTT01QuanTri].[dbo].[SDONVI] B
	ON A.MA_DV=B.MA_DV
WHERE 
	B.MA_DV IS NULL
