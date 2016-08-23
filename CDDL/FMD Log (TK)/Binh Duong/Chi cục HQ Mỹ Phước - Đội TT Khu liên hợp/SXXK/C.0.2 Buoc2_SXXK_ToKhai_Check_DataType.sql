
--Use DB    
USE SXXK
GO
--1) Khai bao
declare @tblTEXT_DATA table 
		(name varchar(50))	
declare @tblNUM_DATA table 
		(name varchar(50))
declare @tblOTHER_DATA table 
		(name varchar(50))		

declare @tblDB_KHUNG table
		(dbName varchar(50)
		,dbTableName varchar(50)
		,dbColName varchar(50)
		,dbDataType varchar(50)
		,dbintCHARACTER_MAXIMUM_LENGTH int
		,dbintNUMERIC_PRECISION int
		,dbintNUMERIC_SCALE int
		,dbDATA_TYPE_DBKHUNG_EXT varchar(50)
        ,dbIS_NULL varchar(20)
		PRIMARY KEY (dbName,dbTableName,dbColName)
		)	

declare @tblKQ table
		(sqlScript varchar(2000))
declare @tblNote table
		(strNote varchar(2000))	
			
declare @DATA_TYPE varchar(50)
declare @intCHARACTER_MAXIMUM_LENGTH int
declare @intNUMERIC_PRECISION int
declare @intNUMERIC_SCALE int

declare @DATA_TYPE_DBKHUNG varchar(50)
declare @intCHARACTER_MAXIMUM_LENGTH_DBKHUNG int
declare @intNUMERIC_PRECISION_DBKHUNG int
declare @intNUMERIC_SCALE_DBKHUNG int
declare @DATA_TYPE_DBKHUNG_EXT varchar(50)
declare @IS_NULL varchar(20)

declare @ColName varchar(50)
declare @Tbl varchar(50)
declare @DBName varchar(50)

--2) Khoi tao du lieu
--char,text,ntext,nchar,nvarchar,varchar
insert into @tblTEXT_DATA
values ('char')
insert into @tblTEXT_DATA
values ('nchar')
insert into @tblTEXT_DATA
values ('ntext')
insert into @tblTEXT_DATA
values ('varchar')
insert into @tblTEXT_DATA
values ('nvarchar')
--decimal,numeric
insert into @tblNUM_DATA
values ('decimal')
insert into @tblNUM_DATA
values ('numeric')
--bigint,int,smallint,money,float,bit,datetime,uniqueidentifier,image,binary,xml
insert into @tblOTHER_DATA
values ('bigint')
insert into @tblOTHER_DATA
values ('int')
insert into @tblOTHER_DATA
values ('smallint')
insert into @tblOTHER_DATA
values ('money')
insert into @tblOTHER_DATA
values ('float')
insert into @tblOTHER_DATA
values ('bit')
insert into @tblOTHER_DATA
values ('datetime')
insert into @tblOTHER_DATA
values ('uniqueidentifier')
insert into @tblOTHER_DATA
values ('image')
insert into @tblOTHER_DATA
values ('binary')
insert into @tblOTHER_DATA
values ('xml')
insert into @tblOTHER_DATA
values ('sysname')

--------------------------------SCHEMA DB KHUNG ---------------------------
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'SOTK', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'MA_LH', 'char', 5, 0, 0, '5', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'MA_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'NAMDK', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'MA_PHU', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'LAN_DC', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'MA_NPL_SP', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'STTHANG', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'MA_HANGKB', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'MA_HANG', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'TEN_HANG', 'nvarchar', 255, 0, 0, '255', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'DINHMUC', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'NUOC_XX', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'MA_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'LUONG', 'numeric', 9, 18, 8, '18,8', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'DGIA_KB', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'DGIA_TT', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'MA_DG', 'char', 2, 0, 0, '2', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'TRIGIA_KB', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'TRIGIA_TT', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'TGKB_VND', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'LOAITSXNK', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'TS_XNK', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'TS_TTDB', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'TS_VAT', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'THUE_XNK', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'THUE_TTDB', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'THUE_VAT', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'PHU_THU', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'MIENTHUE', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'TL_QUYDOI', 'numeric', 9, 15, 6, '15,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'MA_THKE', 'varchar', 10, 0, 0, '10', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'CHOXULY', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'TYLE_THUKHAC', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'TRIGIA_THUKHAC', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'Ma_HTS', 'varchar', 14, 0, 0, '14', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'Luong_HTS', 'numeric', 9, 18, 0, '18,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'DVT_HTS', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'DonGia_HTS', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'ecsTHUE_MOI_TRUONG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'ecsTHIET_BI_DONG_BO', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'ecsUU_DAI_THUE', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC', 'ecsHANG_CU_MOI', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC_CT', 'SOTK', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC_CT', 'MA_LH', 'char', 5, 0, 0, '5', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC_CT', 'MA_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC_CT', 'NAMDK', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC_CT', 'MA_PHU', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC_CT', 'LAN_DC', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC_CT', 'LAN_DC_CT', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC_CT', 'THUE_XNK', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC_CT', 'THUE_TTDB', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC_CT', 'THUE_VAT', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC_CT', 'PHU_THU', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC_CT', 'MIENTHUE', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDC_CT', 'TRIGIA_THUKHAC', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'SOTK', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'MA_LH', 'char', 5, 0, 0, '5', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'MA_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'NAMDK', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'MA_NPL_SP', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'STTHANG', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'MA_HANGKB', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'MA_HANG', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'MA_PHU', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'TEN_HANG', 'nvarchar', 255, 0, 0, '255', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'DINHMUC', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'NUOC_XX', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'MA_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'LUONG', 'numeric', 9, 18, 8, '18,8', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'DGIA_KB', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'DGIA_TT', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'MA_DG', 'char', 2, 0, 0, '2', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'TRIGIA_KB', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'TRIGIA_TT', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'TGKB_VND', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'LOAITSXNK', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'TS_XNK', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'TS_TTDB', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'TS_VAT', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'THUE_XNK', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'THUE_TTDB', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'THUE_VAT', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'PHU_THU', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'MIENTHUE', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'TL_QUYDOI', 'numeric', 9, 15, 6, '15,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'MA_THKE', 'varchar', 10, 0, 0, '10', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'CHOXULY', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'TYLE_THUKHAC', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'TRIGIA_THUKHAC', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'Ma_HTS', 'varchar', 14, 0, 0, '14', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'Luong_HTS', 'numeric', 9, 18, 0, '18,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'DVT_HTS', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'DonGia_HTS', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'ecsTHUE_MOI_TRUONG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'ecsTHIET_BI_DONG_BO', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'ecsUU_DAI_THUE', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'ecsHANG_CU_MOI', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'ecsMABIEUTHUE_VAT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'ecsMABIEUTHUE_TTDB', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'ecsMABIEUTHUE_BVMT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'ecsMABIEUTHUE_TV', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'ecsMA_BIEU_THUE_XNK', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'ecsTHUE_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'ecsTHUE_SUAT_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'Thue_Suat_Tuyet_Doi_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'Thue_Suat_Tuyet_Doi_XNK', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'Thue_Suat_Tuyet_Doi_VAT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'Thue_Suat_Tuyet_Doi_TTDB', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'Thue_Suat_Tuyet_Doi_MT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'Thue_Suat_Tuyet_Doi_Khac', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'Thue_Suat_Tuyet_Doi_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'MaBieuThue_CLG', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'Thue_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDDK', 'Thue_Suat_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'SOTK', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'MA_LH', 'char', 5, 0, 0, '5', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'MA_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'NAMDK', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'MA_NPL_SP', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'STTHANG', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'MA_HANGKB', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'MA_HANG', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'MA_PHU', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'TEN_HANG', 'nvarchar', 255, 0, 0, '255', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'DINHMUC', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'NUOC_XX', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'MA_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'LUONG', 'numeric', 9, 18, 8, '18,8', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'DGIA_KB', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'DGIA_TT', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'MA_DG', 'char', 2, 0, 0, '2', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'TRIGIA_KB', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'TRIGIA_TT', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'TGKB_VND', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'LOAITSXNK', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'TS_XNK', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'TS_TTDB', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'TS_VAT', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'THUE_XNK', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'THUE_TTDB', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'THUE_VAT', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'PHU_THU', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'MIENTHUE', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'TL_QUYDOI', 'numeric', 9, 15, 6, '15,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'MA_THKE', 'varchar', 10, 0, 0, '10', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'CHOXULY', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'TYLE_THUKHAC', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'TRIGIA_THUKHAC', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'Ma_HTS', 'varchar', 14, 0, 0, '14', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'Luong_HTS', 'numeric', 9, 18, 0, '18,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'DVT_HTS', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'DonGia_HTS', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'ecsTHUE_MOI_TRUONG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'ecsTHIET_BI_DONG_BO', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'ecsUU_DAI_THUE', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'ecsHANG_CU_MOI', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'ecsMABIEUTHUE_VAT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'ecsMABIEUTHUE_TTDB', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'ecsMABIEUTHUE_BVMT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'ecsMABIEUTHUE_TV', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'ecsMA_BIEU_THUE_XNK', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'ecsTHUE_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'ecsTHUE_SUAT_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'Thue_Suat_Tuyet_Doi_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'Thue_Suat_Tuyet_Doi_XNK', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'Thue_Suat_Tuyet_Doi_VAT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'Thue_Suat_Tuyet_Doi_TTDB', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'Thue_Suat_Tuyet_Doi_MT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'Thue_Suat_Tuyet_Doi_Khac', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'Thue_Suat_Tuyet_Doi_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'MaBieuThue_CLG', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'Thue_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDKH', 'Thue_Suat_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'SoTK', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'MA_LH', 'char', 5, 0, 0, '5', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'MA_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'NAMDK', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'MA_NPL_SP', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'STTHANG', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'MA_HANGKB', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'MA_HANG', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'MA_PHU', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'TEN_HANG', 'nvarchar', 255, 0, 0, '255', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'DINHMUC', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'NUOC_XX', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'MA_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'LUONG', 'numeric', 9, 18, 8, '18,8', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'DGIA_KB', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'DGIA_TT', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'MA_DG', 'char', 2, 0, 0, '2', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'TRIGIA_KB', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'TRIGIA_TT', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'TGKB_VND', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'LOAITSXNK', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'TS_XNK', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'TS_TTDB', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'TS_VAT', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'THUE_XNK', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'THUE_TTDB', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'THUE_VAT', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'PHU_THU', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'MIENTHUE', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'TL_QUYDOI', 'numeric', 9, 15, 6, '15,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'MA_THKE', 'varchar', 10, 0, 0, '10', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'CHOXULY', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'TYLE_THUKHAC', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'TRIGIA_THUKHAC', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'Ma_HTS', 'varchar', 14, 0, 0, '14', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'Luong_HTS', 'numeric', 9, 18, 0, '18,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'DVT_HTS', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'DonGia_HTS', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'ecsTHUE_MOI_TRUONG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'ecsTHIET_BI_DONG_BO', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'ecsUU_DAI_THUE', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'ecsHANG_CU_MOI', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'ecsMABIEUTHUE_VAT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'ecsMABIEUTHUE_TTDB', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'ecsMABIEUTHUE_BVMT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'ecsMA_BIEU_THUE_XNK', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'ecsMABIEUTHUE_TV', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'ecsTHUE_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'ecsTHUE_SUAT_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'Thue_Suat_Tuyet_Doi_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'Thue_Suat_Tuyet_Doi_XNK', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'Thue_Suat_Tuyet_Doi_VAT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'Thue_Suat_Tuyet_Doi_TTDB', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'Thue_Suat_Tuyet_Doi_MT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'Thue_Suat_Tuyet_Doi_Khac', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'Thue_Suat_Tuyet_Doi_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'MaBieuThue_CLG', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'Thue_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DHANGMDTH', 'Thue_Suat_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'SOTK', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'MA_LH', 'char', 5, 0, 0, '5', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'MA_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NAMDK', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_DK', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'MA_DV', 'varchar', 14, 0, 0, '14', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'MA_DVUT', 'varchar', 14, 0, 0, '14', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'DV_DT', 'varchar', 500, 0, 0, '500', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'MA_PTVT', 'varchar', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'TEN_PTVT', 'varchar', 255, 0, 0, '255', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAYKH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAYDEN', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'VAN_DON', 'varchar', 500, 0, 0, '500', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'MA_CK', 'char', 4, 0, 0, '4', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'CANGNN', 'varchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'SO_GP', 'varchar', 100, 0, 0, '100', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_GP', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_HHGP', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'SO_HD', 'varchar', 500, 0, 0, '500', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'TYGIA_USD', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_HD', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_HHHD', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NUOC_XK', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NUOC_NK', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'MA_GH', 'varchar', 7, 0, 0, '7', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'SOHANG', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'MA_PTTT', 'varchar', 10, 0, 0, '10', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'MA_NT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'TYGIA_VND', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'LEPHI_HQ', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'BL_LPHQ', 'varchar', 20, 0, 0, '20', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'GIAYTO', 'nvarchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'TENCH', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_KB', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'USER_DK', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'DDIEM_KH', 'varchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'PTHUC_KH', 'varchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_KH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'USER_KH1', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'USER_KH2', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'USER_PCKH', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'PHI_BH', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'PHI_VC', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_TH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'USER_TH', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'TONGTGKB', 'float', 8, 53, 0, '53,0', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'TONGTGTT', 'float', 8, 53, 0, '53,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'TR_LUONG', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'SO_KIEN', 'numeric', 9, 15, 0, '15,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'SO_CONTAINER', 'numeric', 9, 15, 0, '15,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGUOINHAP', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAYNHAP', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'PLUONG', 'char', 4, 0, 0, '4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'PASS_DK', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'PASS_KH', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'PASS_TH', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'PASS_GC', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'TTTK', 'char', 1, 0, 0, '1', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'PPT_GTGT', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'PPT_GTGTUT', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'DATRUYEN', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'MA_DVKT', 'char', 14, 0, 0, '14', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'THANHKHOAN', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_THN_THX', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'PPT_GTGTKT', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_GIAOTK', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_NHANTK', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_LUUTK', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NVPSINH', 'ntext', 16, 0, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'SO_CONTAINER40', 'numeric', 9, 18, 0, '18,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'KIEMHOANK', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'SO_HDTM', 'nvarchar', 500, 0, 0, '500', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_HDTM', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_VANDON', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'THUE', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'HTKT', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'TYLE_KT', 'numeric', 5, 5, 2, '5,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'DENNGAY_KH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'DAIDIEN_DN', 'nvarchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGUOIQDHTKT', 'nvarchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'SO_PLTK', 'smallint', 2, 5, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'XUAT_NPL_SP', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'THANH_LY', 'char', 1, 0, 0, '1', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'Ma_MID', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DTOKHAIMD', 'NGAY_HOANTHANH', 'datetime', 8, 23, 3, '', 'NULL')

--------------------------------END SCHEMA DB KHUNG ------------------------

declare @count int
select @count= COUNT(*) from @tblDB_KHUNG

WHILE (@count > 0)
	BEGIN
		--set @DBName = 'Training_SLXNK'
		--set @Tbl = 'DHangMD'
		--set @ColName = 'Luong'
		--set @DATA_TYPE_DBKHUNG = 'numeric'
		--set @DATA_TYPE_DBKHUNG_EXT = '(18,4)'
		--set @intCHARACTER_MAXIMUM_LENGTH_DBKHUNG = 7
		--set @intNUMERIC_PRECISION_DBKHUNG = 18
		--set @intNUMERIC_SCALE_DBKHUNG = 4

		Select top 1 @DBName = dbName
					,@Tbl = dbTableName
					,@ColName = dbColName
					,@DATA_TYPE_DBKHUNG = dbDataType
					,@DATA_TYPE_DBKHUNG_EXT = dbDATA_TYPE_DBKHUNG_EXT
					,@intCHARACTER_MAXIMUM_LENGTH_DBKHUNG = dbintCHARACTER_MAXIMUM_LENGTH
					,@intNUMERIC_PRECISION_DBKHUNG = dbintNUMERIC_PRECISION
					,@intNUMERIC_SCALE_DBKHUNG = dbintNUMERIC_SCALE
                    ,@IS_NULL = dbIS_NULL
		From @tblDB_KHUNG

		--PRINT '--1) Xet Bang ' + @Tbl + ' Truong Du Lieu ' + @ColName + ',Kieu Du Lieu ' + '''' + @DATA_TYPE_DBKHUNG + '''' + '(' + @DATA_TYPE_DBKHUNG_EXT + ')'
		insert into @tblNote values ('--1) Xet Bang ' + @Tbl + ' Truong Du Lieu ' + @ColName + ',Kieu Du Lieu ' + '''' + @DATA_TYPE_DBKHUNG + '''' + '(' + @DATA_TYPE_DBKHUNG_EXT + ')')
		IF exists(SELECT 1 FROM sys.columns WHERE name = @ColName and object_id = (select object_id from sys.objects where object_id= OBJECT_ID(@Tbl) AND type in (N'U'))) 
			BEGIN				
					select @DATA_TYPE = t.name 
						, @intCHARACTER_MAXIMUM_LENGTH = case 
															 when t.name in ('nvarchar','nchar') then c.max_length /2
															 else c.max_length
														 end	 
						, @intNUMERIC_PRECISION = c.[precision]
						, @intNUMERIC_SCALE = c.scale
					from sys.columns c inner join sys.types t 
										on c.user_type_id = t.user_type_id 
										where c.name = @ColName 
										  and c.object_id = (select object_id from sys.objects where object_id= OBJECT_ID(@Tbl) AND type in (N'U'))

					if @DATA_TYPE_DBKHUNG != @DATA_TYPE 
					--Khac kieu du lieu
						begin
							--Print '--Khac kieu du lieu, kieu du lieu DB KHUNG la: ' + @DATA_TYPE_DBKHUNG + '.Kieu du lieu DB CHI CUC la: ' + @DATA_TYPE
							--print 'Alter table ' + @Tbl + ' Alter Column ' + @ColName + ' ' + @DATA_TYPE_DBKHUNG + '(' + @DATA_TYPE_DBKHUNG_EXT + ')' 
							if (
								@DATA_TYPE_DBKHUNG in ('tinyint', 'smallint', 'int', 'bigint','bit') 
								And  @DATA_TYPE in ('tinyint', 'smallint', 'int', 'bigint','bit')
								)
							Or	(
								@DATA_TYPE_DBKHUNG in ('decimal', 'numeric') 
								And  @DATA_TYPE in ('decimal', 'numeric')
								)
							Or (
								@DATA_TYPE_DBKHUNG in ('date', 'smalldatetime', 'datetime2', 'datetime', 'datetimeoffset', 'time') 
								And  @DATA_TYPE in ('date', 'smalldatetime', 'datetime2', 'datetime', 'datetimeoffset', 'time')
								)
							Or (
								@DATA_TYPE_DBKHUNG in ('char', 'varchar', 'text') 
								And  @DATA_TYPE in ('char', 'varchar', 'text')
								)
							Or (
								@DATA_TYPE_DBKHUNG in ('binary', 'varbinary', 'image') 
								And  @DATA_TYPE in ('binary', 'varbinary', 'image')
								)
								begin
									if @DATA_TYPE_DBKHUNG in ('decimal', 'numeric') And  @DATA_TYPE in ('decimal', 'numeric')
										begin
											if @intNUMERIC_PRECISION_DBKHUNG > @intNUMERIC_PRECISION   
												Begin
													If @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE
														Begin
															--Print '--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE'
															--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
															insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE')
															insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE_DBKHUNG) + ')' + ' ' + @IS_NULL)
														End
													Else
														Begin
															if @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE 
																Begin
																	--Print '--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE '
																	--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
																	insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE')
																	insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE_DBKHUNG) + ')' + ' ' + @IS_NULL)
																End
															Else
																Begin
																	--@intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG
																	--Print '--Cung kieu du lieu, @intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG'
																	--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
																	insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG')
																	insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')' + ' ' + @IS_NULL)
																End	
														End	
													
												End	
											if @intNUMERIC_PRECISION_DBKHUNG = @intNUMERIC_PRECISION  
												Begin
													If @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE
														Begin
															--Print '--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE'
															--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
															insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE')
															insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE_DBKHUNG) + ')' + ' ' + @IS_NULL)
														End
													Else
														Begin
															if @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE 
																Begin
																	--Print '--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE '
																	--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
																	insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE')
																End
															Else
																Begin
																	--@intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG
																	--Print '--Cung kieu du lieu, @intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG'
																	--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
																	insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG')
																	insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')' + ' ' + @IS_NULL)
																End	
														End	
												End	
											if @intNUMERIC_PRECISION > @intNUMERIC_PRECISION_DBKHUNG
												Begin
													If @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE
														Begin
															--Print '--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE'
															--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
															insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE')
															insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION) + ',' + convert(varchar,@intNUMERIC_SCALE_DBKHUNG) + ')' + ' ' + @IS_NULL)
														End
													Else
														Begin
															if @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE 
																Begin
																	--Print '--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE '
																	--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
																	insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE')
																	--insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION) + ',' + convert(varchar,@intNUMERIC_SCALE_DBKHUNG) + ')' + ' ' + @IS_NULL)
																End
															Else
																Begin
																	--@intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG
																	--Print '--Cung kieu du lieu, @intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG'
																	--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
																	insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG')
																	--insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')')
																End	
														End	
												End	
										end
									else
										begin
											--So sanh do dai
											if @intCHARACTER_MAXIMUM_LENGTH_DBKHUNG > @intCHARACTER_MAXIMUM_LENGTH 
												begin
													insert into @tblNote values ('--Khac kieu du lieu, kieu du lieu DB KHUNG la: ' + @DATA_TYPE_DBKHUNG + '.Kieu du lieu DB CHI CUC la: ' + @DATA_TYPE)
													if @DATA_TYPE_DBKHUNG_EXT = '' 
														begin
															insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column [' + @ColName + '] ' + @DATA_TYPE_DBKHUNG + ' ' + @IS_NULL)
														end
													else
														begin
															insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column [' + @ColName + '] ' + @DATA_TYPE_DBKHUNG + '(' + @DATA_TYPE_DBKHUNG_EXT + ')' + ' ' + @IS_NULL)
														end	
												end	 
										end 	
								end
							else
								if (@DATA_TYPE_DBKHUNG in ('nvarchar', 'ntext','nchar') And  @DATA_TYPE in ('nvarchar', 'ntext','nchar'))
									begin
										if @intCHARACTER_MAXIMUM_LENGTH_DBKHUNG > @intCHARACTER_MAXIMUM_LENGTH 
											begin
												insert into @tblNote values ('--Khac kieu du lieu, kieu du lieu DB KHUNG la: ' + @DATA_TYPE_DBKHUNG + '.Kieu du lieu DB CHI CUC la: ' + @DATA_TYPE)
												if @DATA_TYPE_DBKHUNG_EXT = '' 
													begin
														insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column [' + @ColName + '] ' + @DATA_TYPE_DBKHUNG + ' ' + @IS_NULL)
													end
												else
													begin
														insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column [' + @ColName + '] ' + @DATA_TYPE_DBKHUNG + '(' + @DATA_TYPE_DBKHUNG_EXT + ')' + ' ' + @IS_NULL)
													end	
											end	 
									end
								else
									if (@DATA_TYPE_DBKHUNG in ('varchar', 'text','char') And  @DATA_TYPE in ('nvarchar', 'ntext','nchar'))		
											--Bo qua
										begin
											print 'Bo qua'
										end	
									else
										begin	
											insert into @tblNote values ('--Khac kieu du lieu, kieu du lieu DB KHUNG la: ' + @DATA_TYPE_DBKHUNG + '.Kieu du lieu DB CHI CUC la: ' + @DATA_TYPE)
											if @DATA_TYPE_DBKHUNG_EXT = '' 
												begin
													insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column [' + @ColName + '] ' + @DATA_TYPE_DBKHUNG + ' ' + @IS_NULL)
												end
											else
												begin
													insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column [' + @ColName + '] ' + @DATA_TYPE_DBKHUNG + '(' + @DATA_TYPE_DBKHUNG_EXT + ')' + ' ' + @IS_NULL)	
												end		
										end
						end
					else
					--Cung kieu du lieu
						begin
							if exists(select 1 from @tblTEXT_DATA where name=@DATA_TYPE_DBKHUNG)
							--Kieu Text
								begin
									if @intCHARACTER_MAXIMUM_LENGTH_DBKHUNG > @intCHARACTER_MAXIMUM_LENGTH 
										Begin
											--Print '--Khac do dai du lieu, kieu du lieu, do dai DB KHUNG la ' + @DATA_TYPE_DBKHUNG + '(' + @DATA_TYPE_DBKHUNG_EXT + ')' + '.Do dai, kieu du lieu DB CHI CUC la: ' + @DATA_TYPE + '(' + convert(varchar,@intCHARACTER_MAXIMUM_LENGTH) + ')'
											--print 'Alter table ' + @Tbl + ' Alter Column ' + @ColName + ' '  + @DATA_TYPE_DBKHUNG + '(' + @DATA_TYPE_DBKHUNG_EXT + ')' 
											insert into @tblNote values ('--Khac do dai du lieu, kieu du lieu, do dai DB KHUNG la ' + @DATA_TYPE_DBKHUNG + '(' + @DATA_TYPE_DBKHUNG_EXT + ')' + '.Do dai, kieu du lieu DB CHI CUC la: ' + @DATA_TYPE + '(' + convert(varchar,@intCHARACTER_MAXIMUM_LENGTH) + ')')
											insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column [' + @ColName + '] '  + @DATA_TYPE_DBKHUNG + '(' + @DATA_TYPE_DBKHUNG_EXT + ')' + ' ' + @IS_NULL)
										End
								end
							else
								begin
								--Kieu so co phan thap phan
									if exists(select 1 from @tblNUM_DATA where name = @DATA_TYPE_DBKHUNG)
										begin
											if @intNUMERIC_PRECISION_DBKHUNG > @intNUMERIC_PRECISION   
												Begin
													If @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE
														Begin
															--Print '--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE'
															--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
															insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE')
															insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE_DBKHUNG) + ')' + ' ' + @IS_NULL)
														End
													Else
														Begin
															if @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE 
																Begin
																	--Print '--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE '
																	--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
																	insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE')
																	insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE_DBKHUNG) + ')' + ' ' + @IS_NULL)
																End
															Else
																Begin
																	--@intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG
																	--Print '--Cung kieu du lieu, @intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG'
																	--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
																	insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG')
																	insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')' + ' ' + @IS_NULL)
																End	
														End	
													
												End	
											if @intNUMERIC_PRECISION_DBKHUNG = @intNUMERIC_PRECISION  
												Begin
													If @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE
														Begin
															--Print '--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE'
															--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
															insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE')
															insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE_DBKHUNG) + ')' + ' ' + @IS_NULL)
														End
													Else
														Begin
															if @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE 
																Begin
																	--Print '--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE '
																	--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
																	insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE')
																End
															Else
																Begin
																	--@intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG
																	--Print '--Cung kieu du lieu, @intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG'
																	--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
																	insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG')
																	insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')' + ' ' + @IS_NULL)
																End	
														End	
												End	
											if  @intNUMERIC_PRECISION > @intNUMERIC_PRECISION_DBKHUNG
												Begin
													If @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE
														Begin
															--Print '--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE'
															--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
															insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG > @intNUMERIC_SCALE')
															insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION) + ',' + convert(varchar,@intNUMERIC_SCALE_DBKHUNG) + ')' + ' ' + @IS_NULL)
														End
													Else
														Begin
															if @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE 
																Begin
																	--Print '--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE '
																	--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
																	insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE_DBKHUNG  = @intNUMERIC_SCALE')
																	--insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION) + ',' + convert(varchar,@intNUMERIC_SCALE_DBKHUNG) + ')')
																End
															Else
																Begin
																	--@intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG
																	--Print '--Cung kieu du lieu, @intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG'
																	--print 'Alter table ' + @Tbl + ' Alter Column '+ @ColName + ' ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION_DBKHUNG) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')'
																	insert into @tblNote values ('--Cung kieu du lieu, @intNUMERIC_SCALE > @intNUMERIC_SCALE_DBKHUNG')
																	--insert into @tblKQ  values ('Alter table [' + @Tbl + '] Alter Column ['+ @ColName + '] ' + @DATA_TYPE_DBKHUNG + '('+ convert(varchar,@intNUMERIC_PRECISION) + ',' + convert(varchar,@intNUMERIC_SCALE) + ')')
																End	
														End	
												End	
										end
									else
									--Cung kieu du lieu, khong co phan mo rong
										begin
											--Print '--Cung kieu du lieu, khong co phan mo rong'
											--print 'Alter table ' + @Tbl + ' Alter Column ' + @ColName + ' ' + @DATA_TYPE_DBKHUNG
											insert into @tblNote values ('--Cung kieu du lieu, khong co phan mo rong')
										end	
								end 
						end
					--PRINT '--END: XET BANG ' + @Tbl + ' TRUONG DU LIEU ' + @ColName + ',KIEU DU LIEU ' + '''' + @DATA_TYPE_DBKHUNG + '''' + '('+ @DATA_TYPE_DBKHUNG_EXT + ')'	
					insert into @tblNote values ('--END: XET BANG ' + @Tbl + ' TRUONG DU LIEU ' + @ColName + ',KIEU DU LIEU ' + '''' + @DATA_TYPE_DBKHUNG + '''' + '('+ @DATA_TYPE_DBKHUNG_EXT + ')')
			END
		ELSE
			--PRINT '--KHONG TON TAI TRUONG DU LIEU ' + @ColName + ' TRONG BANG ' + @Tbl	
			insert into @tblNote values ('--KHONG TON TAI TRUONG DU LIEU ' + @ColName + ' TRONG BANG ' + @Tbl)
		--===================================================================
		DELETE FROM @tblDB_KHUNG WHERE dbName = @DBName and dbTableName = @Tbl and dbColName = @ColName
		SELECT @count= COUNT(*) FROM @tblDB_KHUNG
		IF @count = 0 BREAK;
	END  --END WHILE

--SELECT * FROM @tblNote
SELECT * FROM @tblKQ 
