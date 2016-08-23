﻿USE SXXK
GO

-----Theo chi cuc Hai quan	
	 	
DECLARE @MA_HQ VARCHAR(50)
SET @MA_HQ='P01M'

SELECT 
	A.MA_DV,A.MA_NPL, SUM(A.TON) AS TON
FROM
	(
		SELECT MA_DV,SOTK,MA_LH,MA_HQ,NAMDK,MA_NPL,TON FROM DNPLNHAP WHERE MA_HQ=@MA_HQ AND TON > 0
		UNION 
		SELECT 
			B.MA_DV,A.SOTK,A.MA_LH,A.MA_HQ,A.NAMDK,A.MA_NPL_SP MA_NPL,A.LUONG AS TON
		FROM
			DHANGMDDK A INNER JOIN DTOKHAIMD B
			ON A.SOTK=B.SOTK AND A.MA_HQ=B.MA_HQ AND A.MA_LH=B.MA_LH AND A.NAMDK=B.NAMDK 
		WHERE 
			LEFT(B.MA_LH,1) ='N'
			AND B.THANH_LY = ''
			AND B.MA_HQ=@MA_HQ 
	) A
GROUP BY
	A.MA_DV
	, A.MA_NPL
ORDER BY
	A.MA_DV
	, A.MA_NPL		
	
	