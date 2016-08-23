USE GTT01NghiepVu
GO

DECLARE @CucHQ varchar(2)='01'

Print '======================================================================='
Print 'Dem so luong ban ghi'

SELECT 
	sc.name +'.'+ ta.name TableName
	,SUM(pa.rows) TongSoRow
FROM 
	sys.tables ta INNER JOIN sys.partitions pa
	ON pa.OBJECT_ID = ta.OBJECT_ID
	INNER JOIN sys.schemas sc
	ON ta.schema_id = sc.schema_id
WHERE 
	ta.is_ms_shipped = 0 AND pa.index_id IN (1,0)
GROUP BY 
	sc.name,ta.name
ORDER BY 
	SUM(pa.rows) DESC


Print '======================================================================='
Print 'Thong tin don gia nguyen te, don gia vnd cua to khai tri gia'

Select ISNULL(SUM(TRI_GIA_NT),0) TRI_GIA_NT,ISNULL(SUM(TRI_GIA_VND),0) TRI_GIA_VND  from  GN_TKTGKB_PP1CT Where substring(MA_HQQL ,2,2)= @CucHQ 
Select ISNULL(SUM(TRI_GIA_NT),0) TRI_GIA_NT,ISNULL(SUM(TRI_GIA_VND),0) TRI_GIA_VND  from  GN_TKTGKB_PP23 Where substring(MA_HQQL ,2,2)= @CucHQ
Select ISNULL(SUM(TRI_GIA_NT),0) TRI_GIA_NT,ISNULL(SUM(TRI_GIA_VND),0) TRI_GIA_VND from  GN_TKTGKB_PP4 Where substring(MA_HQQL ,2,2)= @CucHQ
Select ISNULL(SUM(TRI_GIA_NT),0) TRI_GIA_NT,ISNULL(SUM(TRI_GIA_VND),0) TRI_GIA_VND from  GN_TKTGKB_PP5 Where substring(MA_HQQL ,2,2)= @CucHQ 
Select ISNULL(SUM(TRI_GIA_NT),0) TRI_GIA_NT,ISNULL(SUM(TRI_GIA_VND),0) TRI_GIA_VND from  GN_TKTGKB_PP6 Where substring(MA_HQQL ,2,2)= @CucHQ

Select ISNULL(SUM(TRI_GIA_NT),0) TRI_GIA_NT,ISNULL(SUM(TRI_GIA_VND),0) TRI_GIA_VND from  GN_TKTGAG_PP1CT Where substring(MA_HQQL ,2,2)= @CucHQ
Select ISNULL(SUM(TRI_GIA_NT),0) TRI_GIA_NT,ISNULL(SUM(TRI_GIA_VND),0) TRI_GIA_VND  from  GN_TKTGAG_PP23 Where substring(MA_HQQL ,2,2)= @CucHQ
Select ISNULL(SUM(TRI_GIA_NT),0) TRI_GIA_NT,ISNULL(SUM(TRI_GIA_VND),0) TRI_GIA_VND  from  GN_TKTGAG_PP4 Where substring(MA_HQQL ,2,2)= @CucHQ
Select ISNULL(SUM(TRI_GIA_NT),0) TRI_GIA_NT,ISNULL(SUM(TRI_GIA_VND),0) TRI_GIA_VND  from  GN_TKTGAG_PP5 Where substring(MA_HQQL ,2,2)= @CucHQ 
Select ISNULL(SUM(TRI_GIA_NT),0) TRI_GIA_NT,ISNULL(SUM(TRI_GIA_VND),0) TRI_GIA_VND  from  GN_TKTGAG_PP6 Where substring(MA_HQQL ,2,2)= @CucHQ

Select ISNULL(SUM(TRI_GIA_NT),0) TRI_GIA_NT,ISNULL(SUM(TRI_GIA_TT),0) TRI_GIA_TT  from  GN_ApGia Where substring(MA_HQQL ,2,2)= @CucHQ 
Select ISNULL(SUM(TRI_GIA_NT),0) TRI_GIA_NT,ISNULL(SUM(TRI_GIA_TT),0) TRI_GIA_TT  from  GN_ApGia_XK Where substring(MA_HQQL ,2,2)= @CucHQ 