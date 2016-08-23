
--Use DB    
USE SLXNK
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
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsHQ_Gia_Truoc', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Ma_LH', 'char', 5, 0, 0, '5', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Ma_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Ma_DG', 'char', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Nuoc_XX', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Ma_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsSoQD_XD_MaHS_Truoc', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsHQ_MaHS_Truoc', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsSoQD_XD_Gia_Truoc', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsMaBieuThue_TV', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsMABIEUTHUE_VAT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsMABIEUTHUE_TTDB', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsMABIEUTHUE_BVMT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'MaBieuThue_CLG', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsNhan_Hieu', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsQuyCach_PC', 'nvarchar', 1000, 0, 0, '1000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsLoai_CO', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsNguoi_XK_CO', 'nvarchar', 1000, 0, 0, '1000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsTo_Chuc_Cap_CO', 'nvarchar', 100, 0, 0, '100', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsMo_Ta_HH_CO', 'nvarchar', 2000, 0, 0, '2000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsSo_GP', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsNguoi_NK_CO', 'nvarchar', 1000, 0, 0, '1000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsTen_GP', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsNguoi_Cap_GP', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsNoi_Cap_GP', 'nvarchar', 200, 0, 0, '200', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Ten_Hang', 'nvarchar', 256, 0, 0, '256', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Ma_HangKB', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Ma_Hang', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Ma_Phu', 'varchar', 31, 0, 0, '31', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsMA_BIEU_THUE_XNK', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsUU_DAI_THUE', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Ma_ThKe', 'varchar', 10, 0, 0, '10', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Ma_HTS', 'varchar', 14, 0, 0, '14', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsThanhPhan', 'varchar', 100, 0, 0, '100', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsModel_HH', 'varchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsMa_HangSX', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsTen_HangSX', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsMa_HSMR', 'varchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsSo_CO', 'varchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsNuoc_Cap_CO', 'varchar', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsLoai_GP', 'varchar', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsMa_Nuoc_XK_CO', 'varchar', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsMa_Nuoc_NK_CO', 'varchar', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Ma_Loai_CO', 'char', 10, 0, 0, '10', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsPPTG', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'DVT_HTS', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsHANG_CU_MOI', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsLayMau', 'bit', 1, 1, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'TS_XNK', 'numeric', 5, 5, 2, '5,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'TS_TTDB', 'numeric', 5, 5, 2, '5,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'TS_VAT', 'numeric', 5, 5, 2, '5,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Luong', 'numeric', 13, 21, 6, '21,6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'DGia_KB', 'numeric', 13, 24, 6, '24,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'DGia_TT', 'numeric', 13, 24, 6, '24,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsTong_CP_Khac', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsPhi_VC', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Luong_HTS', 'numeric', 9, 18, 0, '18,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'TyLe_Thukhac', 'numeric', 5, 5, 2, '5,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'TL_QuyDoi', 'numeric', 9, 15, 6, '15,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsTong_CP', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsTIENTHUEMOITRUONG', 'numeric', 13, 23, 4, '23,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Thue_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Thue_Suat_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsDGTT_BVMT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsTHUE_MOI_TRUONG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsThue_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsThue_Suat_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Thue_Suat_Tuyet_Doi_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Thue_Suat_Tuyet_Doi_XNK', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Thue_Suat_Tuyet_Doi_VAT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Thue_Suat_Tuyet_Doi_TTDB', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Thue_Suat_Tuyet_Doi_MT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Thue_Suat_Tuyet_Doi_Khac', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Thue_Suat_Tuyet_Doi_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Trigia_Thukhac', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'DonGia_HTS', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsNgay_CO', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsNgay_CO_HH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsNgay_GP', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsNgay_GP_HH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsNgay_Nop_CO', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'DinhMuc', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'TriGia_KB', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'TriGia_TT', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'TGKB_VND', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Thue_XNK', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Thue_TTDB', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Thue_VAT', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'Phu_Thu', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'LoaiTSXNK', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsNgayQD_MaHS_Truoc', 'date', 3, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsNgayQD_Gia_Truoc', 'date', 3, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'MienThue', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ChoXuLy', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'NamDK', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'STTHang', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'IsNoCO', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'ecsTHIET_BI_DONG_BO', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMD', 'SoTK', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'DinhMuc', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'IsNoCO', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsTHIET_BI_DONG_BO', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'NamDK', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'STTHang', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'SoTK', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'LoaiTSXNK', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'MienThue', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ChoXuLy', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsNgayQD_MaHS_Truoc', 'date', 3, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsNgayQD_Gia_Truoc', 'date', 3, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsNgay_CO', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsNgay_CO_HH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsNgay_GP', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsNgay_GP_HH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsNgay_Nop_CO', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'TriGia_KB', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'TriGia_TT', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'TGKB_VND', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Thue_XNK', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Thue_TTDB', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Thue_VAT', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Phu_Thu', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Trigia_Thukhac', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'DonGia_HTS', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsTong_CP', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsDGTT_BVMT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsTHUE_MOI_TRUONG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsTHUE_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsTHUE_SUAT_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Thue_Suat_Tuyet_Doi_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Thue_Suat_Tuyet_Doi_XNK', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Thue_Suat_Tuyet_Doi_VAT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Thue_Suat_Tuyet_Doi_TTDB', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Thue_Suat_Tuyet_Doi_MT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Thue_Suat_Tuyet_Doi_Khac', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Thue_Suat_Tuyet_Doi_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsTong_CP_Khac', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsPhi_VC', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Luong_HTS', 'numeric', 9, 18, 0, '18,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'TyLe_Thukhac', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'TL_QuyDoi', 'numeric', 9, 15, 6, '15,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'TS_XNK', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'TS_TTDB', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'TS_VAT', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Luong', 'numeric', 13, 21, 6, '21,6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'DGia_KB', 'numeric', 13, 24, 6, '24,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'DGia_TT', 'numeric', 13, 24, 6, '24,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsHANG_CU_MOI', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsTIENTHUEMOITRUONG', 'numeric', 13, 23, 4, '23,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Thue_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Thue_Suat_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Ma_LH', 'char', 5, 0, 0, '5', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Ma_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsPPTG', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'DVT_HTS', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Ma_DG', 'char', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Nuoc_XX', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Ma_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Ma_HangKB', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Ma_Hang', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Ma_Phu', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Ma_ThKe', 'varchar', 10, 0, 0, '10', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Ma_HTS', 'varchar', 14, 0, 0, '14', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsMa_HangSX', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsMa_HSMR', 'varchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsMA_BIEU_THUE_XNK', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsUU_DAI_THUE', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsSo_CO', 'varchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsNuoc_Cap_CO', 'varchar', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsMa_Nuoc_XK_CO', 'varchar', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsMa_Nuoc_NK_CO', 'varchar', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsLoai_GP', 'varchar', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsTen_HangSX', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsNhan_Hieu', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsQuyCach_PC', 'nvarchar', 1000, 0, 0, '1000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsThanhPhan', 'nvarchar', 100, 0, 0, '100', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsModel_HH', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsTen_GP', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsNguoi_Cap_GP', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsNoi_Cap_GP', 'nvarchar', 200, 0, 0, '200', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsMo_Ta_HH_CO', 'nvarchar', 2000, 0, 0, '2000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsSo_GP', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsNguoi_NK_CO', 'nvarchar', 1000, 0, 0, '1000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsLoai_CO', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsNguoi_XK_CO', 'nvarchar', 1000, 0, 0, '1000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsTo_Chuc_Cap_CO', 'nvarchar', 100, 0, 0, '100', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsMABIEUTHUE_VAT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsMABIEUTHUE_TTDB', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsMABIEUTHUE_BVMT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'MaBieuThue_CLG', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'Ten_Hang', 'nvarchar', 255, 0, 0, '255', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsSoQD_XD_MaHS_Truoc', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsMABIEUTHUE_TV', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsHQ_Gia_Truoc', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsHQ_MaHS_Truoc', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDDK', 'ecsSoQD_XD_Gia_Truoc', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsNgayQD_MaHS_Truoc', 'date', 3, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsNgayQD_Gia_Truoc', 'date', 3, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'LoaiTSXNK', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'MienThue', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ChoXuLy', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'NamDK', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'STTHang', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'SoTK', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'DinhMuc', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'IsNoCO', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsTHIET_BI_DONG_BO', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'DonGia_HTS', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Trigia_Thukhac', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Thue_XNK', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Thue_TTDB', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Thue_VAT', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Phu_Thu', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'DGia_KB', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'DGia_TT', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'TriGia_KB', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'TriGia_TT', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'TGKB_VND', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsTong_CP', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsTong_CP_Khac', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsPhi_VC', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsDGTT_BVMT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsTHUE_MOI_TRUONG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsTIENTHUEMOITRUONG', 'numeric', 13, 23, 4, '23,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'TS_XNK', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'TS_TTDB', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'TS_VAT', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'TyLe_Thukhac', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'TL_QuyDoi', 'numeric', 9, 15, 6, '15,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Luong_HTS', 'numeric', 9, 18, 0, '18,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Luong', 'numeric', 13, 21, 6, '21,6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsNgay_GP', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsNgay_GP_HH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsNgay_Nop_CO', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsNgay_CO', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsNgay_CO_HH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Thue_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Thue_Suat_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsTHUE_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsTHUE_SUAT_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Thue_Suat_Tuyet_Doi_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Thue_Suat_Tuyet_Doi_XNK', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Thue_Suat_Tuyet_Doi_VAT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Thue_Suat_Tuyet_Doi_TTDB', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Thue_Suat_Tuyet_Doi_MT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Thue_Suat_Tuyet_Doi_Khac', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Thue_Suat_Tuyet_Doi_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsHANG_CU_MOI', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Ma_HTS', 'varchar', 14, 0, 0, '14', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Ma_ThKe', 'varchar', 10, 0, 0, '10', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Ma_HangKB', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Ma_Hang', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Ma_Phu', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsMa_Nuoc_NK_CO', 'varchar', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsUU_DAI_THUE', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsMA_BIEU_THUE_XNK', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsLoai_GP', 'varchar', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsThanhPhan', 'varchar', 100, 0, 0, '100', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsModel_HH', 'varchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsMa_HangSX', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsTen_HangSX', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsMa_HSMR', 'varchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsSo_CO', 'varchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsNuoc_Cap_CO', 'varchar', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsMa_Nuoc_XK_CO', 'varchar', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsPPTG', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Nuoc_XX', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Ma_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Ma_LH', 'char', 5, 0, 0, '5', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Ma_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Ma_DG', 'char', 2, 0, 0, '2', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'DVT_HTS', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Ma_Loai_CO', 'char', 10, 0, 0, '10', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'Ten_Hang', 'nvarchar', 254, 0, 0, '254', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsNhan_Hieu', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsQuyCach_PC', 'nvarchar', 1000, 0, 0, '1000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsNguoi_NK_CO', 'nvarchar', 1000, 0, 0, '1000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsLoai_CO', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsNguoi_XK_CO', 'nvarchar', 1000, 0, 0, '1000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsTo_Chuc_Cap_CO', 'nvarchar', 100, 0, 0, '100', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsTen_GP', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsNguoi_Cap_GP', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsNoi_Cap_GP', 'nvarchar', 200, 0, 0, '200', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsMABIEUTHUE_VAT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsMABIEUTHUE_TTDB', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsMABIEUTHUE_BVMT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsMo_Ta_HH_CO', 'nvarchar', 2000, 0, 0, '2000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsSo_GP', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsMABIEUTHUE_TV', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsHQ_Gia_Truoc', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsSoQD_XD_MaHS_Truoc', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsHQ_MaHS_Truoc', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'ecsSoQD_XD_Gia_Truoc', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDKH', 'MaBieuThue_CLG', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Ten_Hang', 'nvarchar', 255, 0, 0, '255', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsNhan_Hieu', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsQuyCach_PC', 'nvarchar', 1000, 0, 0, '1000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsTo_Chuc_Cap_CO', 'nvarchar', 100, 0, 0, '100', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsLoai_CO', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsNguoi_XK_CO', 'nvarchar', 1000, 0, 0, '1000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsMo_Ta_HH_CO', 'nvarchar', 2000, 0, 0, '2000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsSo_GP', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsNguoi_NK_CO', 'nvarchar', 1000, 0, 0, '1000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'MaBieuThue_CLG', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsTen_GP', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsNguoi_Cap_GP', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsNoi_Cap_GP', 'nvarchar', 200, 0, 0, '200', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsMABIEUTHUE_VAT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsMABIEUTHUE_TTDB', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsMABIEUTHUE_BVMT', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsMABIEUTHUE_TV', 'nvarchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsUU_DAI_THUE', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsMA_BIEU_THUE_XNK', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsLoai_GP', 'varchar', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Ma_ThKe', 'varchar', 10, 0, 0, '10', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Ma_HTS', 'varchar', 14, 0, 0, '14', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsMa_HangSX', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsTen_HangSX', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsMa_HSMR', 'varchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsThanhPhan', 'varchar', 100, 0, 0, '100', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsModel_HH', 'varchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsSo_CO', 'varchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsNuoc_Cap_CO', 'varchar', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsMa_Nuoc_XK_CO', 'varchar', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsMa_Nuoc_NK_CO', 'varchar', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Ma_HangKB', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Ma_Hang', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Ma_Phu', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Nuoc_XX', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Ma_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Ma_DG', 'char', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Ma_LH', 'char', 5, 0, 0, '5', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Ma_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Ma_Loai_CO', 'char', 10, 0, 0, '10', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsPPTG', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'DVT_HTS', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsHANG_CU_MOI', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsLayMau', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsNgay_CO', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsNgay_CO_HH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Luong', 'numeric', 13, 21, 6, '21,6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'TS_XNK', 'numeric', 5, 5, 2, '5,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'TS_TTDB', 'numeric', 5, 5, 2, '5,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'TS_VAT', 'numeric', 5, 5, 2, '5,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsTong_CP_Khac', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsPhi_VC', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Luong_HTS', 'numeric', 9, 18, 0, '18,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'TyLe_Thukhac', 'numeric', 5, 5, 2, '5,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'TL_QuyDoi', 'numeric', 9, 15, 6, '15,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsNgay_Nop_CO', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsNgay_GP', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsNgay_GP_HH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Thue_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Thue_Suat_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsTHUE_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsTHUE_SUAT_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Thue_Suat_Tuyet_Doi_TV', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Thue_Suat_Tuyet_Doi_XNK', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Thue_Suat_Tuyet_Doi_VAT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Thue_Suat_Tuyet_Doi_TTDB', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Thue_Suat_Tuyet_Doi_MT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Thue_Suat_Tuyet_Doi_Khac', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Thue_Suat_Tuyet_Doi_CLG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsDGTT_BVMT', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsTHUE_MOI_TRUONG', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsTong_CP', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsTIENTHUEMOITRUONG', 'numeric', 13, 23, 4, '23,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'DGia_KB', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'DGia_TT', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'TriGia_KB', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'TriGia_TT', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'TGKB_VND', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Thue_XNK', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Thue_TTDB', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Thue_VAT', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Phu_Thu', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'Trigia_Thukhac', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'DonGia_HTS', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'IsNoCO', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ecsTHIET_BI_DONG_BO', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'DinhMuc', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'SoTK', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'NamDK', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'STTHang', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'LoaiTSXNK', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'MienThue', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHangMDPS', 'ChoXuLy', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'PLuong', 'char', 4, 0, 0, '4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'PPT_GTGTKT', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ma_NT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'TTTK', 'char', 1, 0, 0, '1', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'PPT_GTGT', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'PPT_GTGTUT', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'DaTruyen', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ma_DVKT', 'char', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'So_HDTM', 'nvarchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'NguoiKT_HTNVT', 'nvarchar', 255, 0, 0, '255', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'ecsCan_Bo_XL_KTCT', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'ecsCan_Bo_PC_KTCT', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'DeXuatKhac', 'nvarchar', 2000, 0, 0, '2000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'DaiDien_DN', 'nvarchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'NguoiQDHTKT', 'nvarchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ma_LH', 'char', 5, 0, 0, '5', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ma_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Nuoc_XK', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Nuoc_NK', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ma_CK', 'char', 4, 0, 0, '4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ma_GH', 'varchar', 7, 0, 0, '7', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'So_HD', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'BL_LPHQ', 'varchar', 20, 0, 0, '20', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'GiayTo', 'varchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'TenCH', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'User_KH1', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'User_KH2', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'User_PCKH', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'User_DK', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'DDiem_KH', 'varchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'PThuc_KH', 'varchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Van_Don', 'varchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ma_DV', 'varchar', 17, 0, 0, '17', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ma_DVUT', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'DV_DT', 'varchar', 256, 0, 0, '256', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ma_PTVT', 'varchar', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ten_PTVT', 'varchar', 20, 0, 0, '20', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'CangNN', 'varchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'So_GP', 'varchar', 100, 0, 0, '100', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'So_Container40', 'numeric', 9, 18, 0, '18,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'TyLe_KT', 'numeric', 5, 5, 2, '5,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Tr_Luong', 'numeric', 13, 20, 4, '20,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'So_Kien', 'numeric', 9, 15, 0, '15,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'So_Container', 'numeric', 9, 15, 0, '15,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Phi_BH', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Phi_VC', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ma_PTTT', 'varchar', 10, 0, 0, '10', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'NguoiNhap', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'User_TH', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ma_MID', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'CanBo_PCKTNVT', 'varchar', 255, 0, 0, '255', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'NVPSinh', 'ntext', 16, 0, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_GP', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_HHGP', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_KB', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_KH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_HD', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_HHHD', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_DK', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'NgayKH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'NgayDen', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'DenNgay_KH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_VanDon_HH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_HDTM', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_VanDon', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_TH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'NgayNhap', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_GiaoTK', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_NhanTK', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Ngay_LuuTK', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'TongTGKB', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'TongTGTT', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'SoTK', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'TyGia_USD', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'TyGia_VND', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'LePhi_HQ', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'So_PLTK', 'smallint', 2, 5, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'NamDK', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Pass_DK', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Pass_KH', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Pass_TH', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Pass_GC', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'ThanhKhoan', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'KiemHoaNK', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Thue', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'MienKT', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'HTKT', 'smallint', 2, 5, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'SoHang', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'ecsNhom_Can_Bo_XL_KTCT', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMD', 'Nhom_KTNVT', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'NamDK', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Pass_DK', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Pass_KH', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Pass_TH', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Pass_GC', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'ThanhKhoan', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'KiemhoaNK', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Thue', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'HTKT', 'smallint', 2, 5, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'So_PLTK', 'smallint', 2, 5, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'SoHang', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'SoTK', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'TongTGKB', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'TongTGTT', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'TyGia_USD', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'TyGia_VND', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'LePhi_HQ', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Phi_BH', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Phi_VC', 'money', 8, 19, 4, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'TyLe_KT', 'numeric', 5, 5, 2, '5,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Tr_Luong', 'numeric', 9, 18, 2, '18,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'So_Kien', 'numeric', 9, 15, 0, '15,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'So_Container', 'numeric', 9, 15, 0, '15,0', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'So_Container40', 'numeric', 5, 5, 2, '5,2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ngay_DK', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'NgayNhap', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'DenNgay_KH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ngay_HDTM', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ngay_Vandon', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ngay_GiaoTK', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ngay_NhanTK', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ngay_LuuTK', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ngay_TH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ngay_KH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ngay_KB', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ngay_HD', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ngay_HHHD', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ngay_GP', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ngay_HHGP', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'NgayKH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'NgayDen', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'NVPSinh', 'ntext', 16, 0, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'NguoiNhap', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ma_PTTT', 'varchar', 10, 0, 0, '10', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ma_MID', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ma_CK', 'char', 4, 0, 0, '4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Nuoc_XK', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Nuoc_NK', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ma_LH', 'char', 5, 0, 0, '5', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ma_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ma_DV', 'char', 14, 0, 0, '14', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ma_DVUT', 'char', 14, 0, 0, '14', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'PPT_GTGTKT', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ma_NT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'PLuong', 'char', 4, 0, 0, '4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'TTTK', 'char', 1, 0, 0, '1', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'PPT_GTGT', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'PPT_GTGTUT', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'DaTruyen', 'char', 1, 0, 0, '1', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ma_DVKT', 'char', 14, 0, 0, '14', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ma_GH', 'varchar', 7, 0, 0, '7', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'So_HD', 'varchar', 255, 0, 0, '255', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Van_Don', 'varchar', 255, 0, 0, '255', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'DV_DT', 'varchar', 255, 0, 0, '255', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ma_PTVT', 'varchar', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'Ten_PTVT', 'varchar', 20, 0, 0, '20', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'CangNN', 'varchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'So_GP', 'varchar', 255, 0, 0, '255', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'User_DK', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'DDiem_KH', 'varchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'PThuc_KH', 'varchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'BL_LPHQ', 'varchar', 20, 0, 0, '20', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'GiayTo', 'varchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'TenCH', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'User_KH1', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'User_KH2', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'User_PCKH', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'User_TH', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'So_HDTM', 'nvarchar', 255, 0, 0, '255', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'LyDoHuy', 'nvarchar', 2000, 0, 0, '2000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'DeXuatKhac', 'nvarchar', 2000, 0, 0, '2000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'DaiDien_DN', 'nvarchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DToKhaiMDPS', 'NguoiQDHTKT', 'nvarchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'MessageId', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'KetQuaXLBuocTruoc', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'KhauNV', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'KhauNVCu', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'KhauNV_TruocSuaOrHuy', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsKQGiamDinh', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsKiem_Hoa_Ho', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsLay_Mau_CK', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsMsgVersion', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTrangThai_DL', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsNoCT', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsLayMau', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsLuongTK_TruocSua', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'KVGiamSat', 'smallint', 2, 5, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'HinhThucKhai', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'CoChuKySo', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsDaKiemHoa', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsDaXNThongQuan', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsDaXNChuyenCK', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsDaXNGiaiPhongHang', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsThongQuan_GPH_BQ_CCK', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsDaXNMangHangBaoQuan', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'NamDK', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'NamTN', 'smallint', 2, 5, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'SoTK', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'SoTN', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsSo_Ngay_An_Han', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'KTHS_NgayCap', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsNgay_HDGN', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsNgay_HHHDGN', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsNgay_Bat_Dau_Dam_Bao', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsNgay_Ket_Thuc_Dam_Bao', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsNgay_Phu_Luc_Hop_Dong', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsNgay_Het_Han_Hop_Dong', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsNgayHH_TNTX', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsNgay_GH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'NgayTN', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTri_Gia_Dam_Bao', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsDaHoanThanhNghiaVuThue', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsDaHoanChinhHoSo', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsCo_An_Han', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsDaRaThongBaoThue', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsCo_Dam_Bao_Nghia_Vu_Thue', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsMa_DL', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsMa_DV_NT', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsMa_CKNhap', 'varchar', 6, 0, 0, '6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsMa_CKXuat', 'varchar', 6, 0, 0, '6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsSo_HDGN', 'varchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsMa_DVG', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsMa_DVN', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsMa_DVCD', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsMa_DV_DT', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsSo_Phu_Luc_Hop_Dong', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsSinhCanhBao', 'varchar', 2, 0, 0, '2', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTen_DL', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTen_NguoiDD', 'nvarchar', 35, 0, 0, '35', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsChucVu_NguoiDD', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'KTHS_DaiDienDN', 'nvarchar', 255, 0, 0, '255', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'KTHS_SoCMT', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'DeXuatKhac', 'nvarchar', 2000, 0, 0, '2000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsHinh_Thuc_Dam_Bao', 'nvarchar', 254, 0, 0, '254', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTen_DVCD', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsDD_GH', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTen_DVN', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTen_DVG', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTen_CKXuat', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTen_DV', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTen_DVKT', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTen_DV_NT', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTen_CKNhap', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTen_DVUT', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsLy_Do_An_Han', 'nvarchar', 500, 0, 0, '500', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'ecsTrong_Luong_Tinh', 'numeric', 13, 23, 6, '23,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'Ma_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsToKhaiMD', 'Ma_LH', 'char', 5, 0, 0, '5', 'NOT NULL')

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
