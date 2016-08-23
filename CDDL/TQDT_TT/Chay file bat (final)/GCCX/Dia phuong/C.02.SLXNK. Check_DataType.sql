USE SLXNK_CUC
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
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'So_HD', 'varchar', 80, 0, 0, '80', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Ma_HQHD', 'varchar', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'DVGC', 'varchar', 14, 0, 0, '14', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Ngay_Ky', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'So_GP', 'varchar', 20, 0, 0, '20', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Ngay_GP', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'DVDT', 'nvarchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'DiaChi_DT', 'nvarchar', 80, 0, 0, '80', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Ngay_DK', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Ngay_HH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Ngay_GH', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'NuocThueGC', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'ThiTruongXK', 'nvarchar', 255, 0, 0, '255', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Consignee', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'DK_Giao', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'TGian_Giao', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'TriGiaGC', 'numeric', 9, 18, 3, '18,3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'GiaGC', 'numeric', 9, 18, 3, '18,3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'NgTe', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'PTTT', 'nvarchar', 80, 0, 0, '80', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'ThoiHanTT', 'nvarchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'PTXuLy', 'nvarchar', 80, 0, 0, '80', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'MaSPGC', 'nvarchar', 255, 0, 0, '255', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'TenSPGC', 'nvarchar', 255, 0, 0, '255', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Nhan_Hieu', 'nvarchar', 255, 0, 0, '255', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'SoLuong_SP', 'numeric', 9, 18, 6, '18,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'MaDVT_SP', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Nguoi_TD', 'nvarchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'ThanhKhoan', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Ngay_TK', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'So_TK', 'varchar', 10, 0, 0, '10', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Nguoi_TK', 'nvarchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'NoiDung_TK', 'nvarchar', 255, 0, 0, '255', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Nguoi_Duyet', 'nvarchar', 40, 0, 0, '40', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Nguoi_VM', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Ngay_VM', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'So_Luu', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'STT', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Ngay_PCTK', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'TTCS', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'TrangThai', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'So_TN', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'Nam_TN', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'MA_NGUOI_NHAN', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'TEN_NGUOI_NHAN', 'nvarchar', 80, 0, 0, '80', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'DIA_CHI_NGUOI_NHAN', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'MA_NGUOI_THUE', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'TEN_NGUOI_THUE', 'nvarchar', 80, 0, 0, '80', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'DIA_CHI_NGUOI_THUE', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'NuocNhanGC', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'GHI_CHU_KHAC', 'nvarchar', 2000, 0, 0, '2000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'MA_DV_KB', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'MA_DV_XN', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'TEN_DV_KB', 'nvarchar', 80, 0, 0, '80', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'TEN_DV_XN', 'nvarchar', 80, 0, 0, '80', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'MA_DV_UT', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'TEN_DV_UT', 'nvarchar', 80, 0, 0, '80', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'MA_DV_NT', 'varchar', 17, 0, 0, '17', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'TEN_DV_NT', 'nvarchar', 80, 0, 0, '80', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DHDGC', 'GIA_CONG_NGUOC', 'bit', 1, 1, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'So_HD', 'varchar', 80, 0, 0, '80', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'Ma_HQHD', 'varchar', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'DVGC', 'varchar', 14, 0, 0, '14', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'Ngay_Ky', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'P_Code', 'varchar', 51, 0, 0, '51', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'HS_Code', 'char', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'Ten_NPL', 'nvarchar', 256, 0, 0, '256', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'SL_DK', 'numeric', 9, 18, 6, '18,6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'SL_DC', 'numeric', 9, 18, 6, '18,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'VB_DC', 'nvarchar', 80, 0, 0, '80', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'DinhMuc', 'numeric', 9, 18, 6, '18,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'SL_TN', 'numeric', 9, 18, 6, '18,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'SL_SD', 'numeric', 9, 18, 6, '18,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'SL_DU', 'numeric', 9, 18, 6, '18,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'Ma_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'HaveImported', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'Nguoi_VM', 'nvarchar', 40, 0, 0, '40', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'Ngay_VM', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'STT', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'SL_Conlai', 'numeric', 9, 18, 6, '18,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'Mua_VN', 'numeric', 9, 18, 6, '18,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'DonGia', 'numeric', 9, 18, 4, '18,4', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'Lay_Mau', 'smallint', 2, 5, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'Lan_Lay_Mau', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DNPLHD', 'Ngay_Lay_Mau', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'So_HD', 'varchar', 80, 0, 0, '80', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'Ma_HQHD', 'varchar', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'DVGC', 'varchar', 14, 0, 0, '14', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'Ngay_Ky', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'P_Code', 'varchar', 51, 0, 0, '51', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'HS_Code', 'char', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'Ten_SP', 'nvarchar', 256, 0, 0, '256', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'SL_DK', 'numeric', 9, 18, 6, '18,6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'SL_DC', 'numeric', 9, 18, 6, '18,6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'VB_DC', 'nvarchar', 80, 0, 0, '80', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'Ma_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'DonGiaGC', 'numeric', 9, 18, 3, '18,3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'TriGiaGC', 'numeric', 9, 18, 3, '18,3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'Gia_FOB', 'numeric', 9, 18, 3, '18,3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'PTTT', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'NgTe', 'char', 3, 0, 0, '3', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'HaveExported', 'tinyint', 1, 3, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'NguoiDCMau', 'nvarchar', 40, 0, 0, '40', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'NgayDCMau', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'Nguoi_VM', 'varchar', 14, 0, 0, '14', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'Ngay_VM', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'STT', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'SL_ConLai', 'numeric', 9, 18, 6, '18,6', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'Nhom_SP', 'varchar', 30, 0, 0, '30', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DSPGC', 'TTCS', 'nvarchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'So_HD', 'varchar', 80, 0, 0, '80', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'Ma_HQHD', 'varchar', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'DVGC', 'varchar', 14, 0, 0, '14', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'Ngay_Ky', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'P_CODE', 'varchar', 51, 0, 0, '51', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'HS_CODE', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'Ten_TB', 'varchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'SL_DK', 'numeric', 9, 18, 6, '18,6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'Ma_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'Xuat_Xu', 'varchar', 80, 0, 0, '80', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'TinhTrang', 'varchar', 255, 0, 0, '255', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'DonGia', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'TriGia', 'money', 8, 19, 4, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'NGTe', 'varchar', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'Nguoi_VM', 'varchar', 14, 0, 0, '14', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'Ngay_VM', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'STT', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'HaveImported', 'tinyint', 1, 3, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'DThietBi', 'GhiChu', 'varchar', 255, 0, 0, '255', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_RA_D', 'MA_HQTN', 'varchar', 50, 0, 0, '50', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_RA_D', 'MA_DV_XN', 'varchar', 50, 0, 0, '50', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_RA_D', 'MA_HANG', 'varchar', 50, 0, 0, '50', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_RA_D', 'TEN_HANG', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_RA_D', 'MA_HS', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_RA_D', 'MA_DVT', 'varchar', 50, 0, 0, '50', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_RA_D', 'MUC_DICH_SU_DUNG', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_RA_D', 'LOAI_HANG', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_RA_D', 'GHI_CHU_KHAC', 'nvarchar', 2000, 0, 0, '2000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_RA_D', 'SO_DK', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_RA_D', 'NAM_DK', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_RA_D', 'IS_SIGN', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_VAO_D', 'MA_HQTN', 'varchar', 50, 0, 0, '50', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_VAO_D', 'MA_DV_XN', 'varchar', 50, 0, 0, '50', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_VAO_D', 'MA_HANG', 'varchar', 50, 0, 0, '50', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_VAO_D', 'TEN_HANG', 'nvarchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_VAO_D', 'MA_HS', 'varchar', 50, 0, 0, '50', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_VAO_D', 'MA_DVT', 'varchar', 50, 0, 0, '50', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_VAO_D', 'MUC_DICH_SU_DUNG', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_VAO_D', 'LOAI_HANG', 'int', 4, 10, 0, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_VAO_D', 'GHI_CHU_KHAC', 'nvarchar', 2000, 0, 0, '2000', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_VAO_D', 'SO_DK', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_VAO_D', 'NAM_DK', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsCX_DM_HH_DUA_VAO_D', 'IS_SIGN', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsDHangMau', 'So_HD', 'varchar', 80, 0, 0, '80', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsDHangMau', 'Ma_HQHD', 'varchar', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsDHangMau', 'DVGC', 'varchar', 14, 0, 0, '14', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsDHangMau', 'Ngay_Ky', 'datetime', 8, 23, 3, '', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsDHangMau', 'P_Code', 'varchar', 80, 0, 0, '80', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsDHangMau', 'HS_Code', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsDHangMau', 'Ten_HM', 'varchar', 256, 0, 0, '256', 'NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsDHangMau', 'So_Luong', 'numeric', 9, 18, 6, '18,6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SLXNK', 'ecsDHangMau', 'Ma_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')

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
