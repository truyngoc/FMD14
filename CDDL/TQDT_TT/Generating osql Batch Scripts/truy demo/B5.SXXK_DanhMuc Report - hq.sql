set nocount on


--select top 10 * From $(dbname_src).dbo.DDINHMUC

select top 10 * From $(linksrv_name).$(dbname_src).dbo.DDINHMUC