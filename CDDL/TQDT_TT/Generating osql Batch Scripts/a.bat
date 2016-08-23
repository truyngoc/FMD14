ECHO OFF

REM echo B1.Kiem tra them cot du lieu cho cac bang thieu>> removed.txt

echo B2.Kiem tra kieu du lieu cac truong trong DB
echo B3.Tao truong identity cho cac bang danh muc
echo B4.Export cac bang du lieu can lay vao db 
echo B5.Tao key cho cac bang da chuyen
echo B6.
echo B7.
echo B8.
echo B9.
:: Set your server name eg:- ITSERVER
REM Set /P _dept=Please enter Department:
REM If "%_dept%"=="NothingChosen" goto :sub_error
REM If /i "%_dept%"=="finance" goto sub_finance
REM If /i "%_dept%"=="hr" goto sub_hr
REM goto:eof

REM :sub_finance
REM echo You chose the finance dept
REM goto:eof

REM :sub_hr
REM echo You chose the hr dept

REM :sub_error
REM echo Nothing was chosen


GOTO AuthorComment
		 This bat-file is used to backup the TestDB database to the "E:\TestDB_Backup\TestDB_Backup_Data"
		 and also this bat-file is moving the script file (.sql file) of database backup to the "E:\TestDB_Backup\TestDB_Backup_Script"
		 then it is making 2 backups by 
		 01. from batch file SQL script
		 02. from executing by an external sql script
		 Now you have two solutions to make a SQL backup by batch file coding and by executing sql script at the same time
		 Written by Charitha Athukorala, Sri Lanka
		 20/08/2012
:AuthorComment		 
		 
pause

