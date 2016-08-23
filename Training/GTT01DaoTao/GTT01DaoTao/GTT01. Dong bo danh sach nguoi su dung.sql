USE [GTT01QuanTri]
GO

--[GTT_TT] La LinkServer ket noi toi db [GTT01QuanTri] do dia phuong gui len sau khi backup
INSERT INTO [GTT01QuanTri].[dbo].[APP_Users]
           ([User_ID]
           ,[Customs_ID]
           ,[User_Password]
           ,[User_Principal]
           ,[User_Name]
           ,[User_Mail]
           ,[User_Desc]
           ,[User_Locked])
SELECT
	A.User_ID
	   ,A.Customs_ID
	   ,A.User_Password
	   ,A.User_Principal
	   ,A.User_Name
	   ,A.User_Mail
	   ,A.User_Desc
	   ,A.User_Locked           
FROM
	[GTT_TT].[GTT01QuanTri].[dbo].[APP_Users] A LEFT JOIN [GTT01QuanTri].[dbo].[APP_Users] B
	ON A.User_ID=B.User_ID AND A.Customs_ID=B.Customs_ID
WHERE
	B.Customs_ID IS NULL	   
   

INSERT INTO [GTT01QuanTri].[dbo].[APP_User_Items]
           ([Item_ID]
           ,[User_ID]
           ,[Customs_ID])
SELECT
	A.Item_ID
       ,A.User_ID
       ,A.Customs_ID	           
FROM
	[GTT_TT].[GTT01QuanTri].[dbo].[APP_User_Items] A LEFT JOIN [GTT01QuanTri].[dbo].[APP_User_Items] B
	ON A.User_ID=B.User_ID AND A.Customs_ID=B.Customs_ID AND A.Item_ID=B.Item_ID
WHERE
	B.Customs_ID IS NULL	       

INSERT INTO [GTT01QuanTri].[dbo].[APP_User_Groups]
           ([User_ID]
           ,[Group_ID]
           ,[Customs_ID])
SELECT   
	A.User_ID
	   ,A.Group_ID
	   ,A.Customs_ID         
FROM
	[GTT_TT].[GTT01QuanTri].[dbo].[APP_User_Groups] A LEFT JOIN [GTT01QuanTri].[dbo].[APP_User_Groups] B
	ON A.User_ID=B.User_ID AND A.Customs_ID=B.Customs_ID AND A.Group_ID= B.Group_ID
WHERE
	B.Customs_ID IS NULL	             
    
