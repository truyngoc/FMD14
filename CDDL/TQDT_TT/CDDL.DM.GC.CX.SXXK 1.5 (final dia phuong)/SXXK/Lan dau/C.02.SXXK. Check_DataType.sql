-- USE SXXK_CUC
-- GO

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
Insert Into @tblDB_KHUNG Values ('SXXK', 'DDINHMUC', 'MA_SP', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DDINHMUC', 'MA_NPL', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DDINHMUC', 'MA_DV', 'varchar', 17, 0, 0, '17', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DDINHMUC', 'MA_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DDINHMUC', 'DM_SD', 'numeric', 9, 18, 8, '18,8', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DDINHMUC', 'TL_HH', 'numeric', 9, 18, 8, '18,8', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DDINHMUC', 'DM_CHUNG', 'numeric', 9, 18, 8, '18,8', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DDINHMUC', 'GHI_CHU', 'nvarchar', 256, 0, 0, '256', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DDINHMUC', 'So_TN', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DDINHMUC', 'Nam_TN', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DDINHMUC', 'ecsKiemTraTT', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'DDINHMUC', 'ecsSua_SauKTTT', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SNPL', 'MA_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SNPL', 'MA_DV', 'varchar', 14, 0, 0, '14', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SNPL', 'MA_NPL', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SNPL', 'TEN_NPL', 'nvarchar', 255, 0, 0, '255', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SNPL', 'MA_HS', 'varchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SNPL', 'MA_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SNPL', 'So_TN', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SNPL', 'Nam_TN', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SNPL', 'Lay_Mau', 'smallint', 2, 5, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SNPL', 'Lan_Lay_Mau', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SNPL', 'Ngay_Lay_Mau', 'datetime', 8, 23, 3, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SSP', 'MA_HQ', 'char', 6, 0, 0, '6', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SSP', 'MA_DV', 'varchar', 14, 0, 0, '14', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SSP', 'MA_SP', 'varchar', 30, 0, 0, '30', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SSP', 'TEN_SP', 'nvarchar', 255, 0, 0, '255', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SSP', 'MA_HS', 'varchar', 12, 0, 0, '12', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SSP', 'MA_DVT', 'char', 3, 0, 0, '3', 'NOT NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SSP', 'So_TN', 'int', 4, 10, 0, '', 'NULL')
Insert Into @tblDB_KHUNG Values ('SXXK', 'SSP', 'Nam_TN', 'int', 4, 10, 0, '', 'NULL')

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
