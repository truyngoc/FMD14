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

:: Off CMD Display
@echo off

:: Get the Current Directory 
SET FirstDir=%~d0

:: Check whether the current directory is E:\ or not
:: %~d0 is used to get the current root directory name eg:- E:
IF "%~d0"=="E:" SET "curr_dir=%~d0" 

IF NOT "%~d0"=="E:" SET curr_dir=%cd%

:: In here set absolute path to E:\ drive
CD /D E:\

GOTO BeginCreateDirectory
		Check TestDB_Backup folder exist or not in E:\ drive
		If TestDB_Backup folder is not exist in E:\ drive system is creating.... 
		TestDB_Backup, TestDB_Backup_Script, TestDB_Backup_Data folders
		TestDB backups are creating at the TestDB_Backup_Data folder and TestDB script is copying to the TestDB_Backup_Script folder
:BeginCreateDirectory		
		
IF EXIST TestDB_Backup ( 
cd TestDB_Backup
mkdir TestDB_Backup_Script TestDB_Backup_Data
cd TestDB_Backup_Script
) ELSE ( 
mkdir TestDB_Backup
cd TestDB_Backup
mkdir TestDB_Backup_Script TestDB_Backup_Data
cd TestDB_Backup_Script
)

GOTO EndCreateDirectory
		End of create directory
:EndCreateDirectory

:: *****************************************************************************

GOTO BeginServerAuthentication
		This code segment is used to set the server authentication
:BeginServerAuthentication

:: Set your server name eg:- ITSERVER
SET server=

:: Set your backup database name - in this code my backup database name is TestDB 
SET dataBase=TestDB

:: Set server authentication username & password of the database server

:: Write your database server user name eg:- sa
SET user=

:: Write your database server password eg:- 123
SET password=

GOTO EndServerAuthentication
		End of server authentication
:EndServerAuthentication

:: *****************************************************************************

GOTO BeginSetYearMonthDate
		This code segment is used to set year+month+date format to attach into the databse backup name 
:BeginSetYearMonthDate

:: Get day from current date
SET day=%date:~7,2%

:: Get month from current date
SET month=%date:~4,2%

:: Get year from current date
SET year=%date:~10,4%

:: Set year+month+date for attach to the backup name
SET myDateFormat=%year%%month%%day%

:: Trim myDateFormat to remove white spaces
SET myDateFormat=%myDateFormat: =%

GOTO EndSetYearMonthDate
		End of year+month+date format
:EndSetYearMonthDate

:: *****************************************************************************

GOTO BeginSetHourMinSec
		This code segment is used to set hour+mins+secs format to attach into the database backup name 
:BeginSetHourMinSec

:: Get hour from current time
SET hour=%time:~0,2%

:: Get minute from current time
SET minute=%time:~3,2%

:: Get second from current time
SET sec=%time:~6,2% 

:: Set hour+minute+second for attach to the backup name
SET myTimeFormat=%hour%%minute%%sec%

:: :: Trim myTimeFormat to remove white spaces
SET myTimeFormat=%myTimeFormat: =%

GOTO EndSetHourMinSec
		End of hour+minute+second format
:EndSetHourMinSec

:: *****************************************************************************

GOTO BeginDisplayAndUserAction
		This code is used to display the name of the backup database and user needs to verify this by pressing "Enter" key 
:BeginDisplayAndUserAction

ECHO Batch file is ready to backup the %dataBase% database 

:: Process is pause until the user press ENTER key
PAUSE

GOTO EndDisplayAndUserAction
		End of display database name and user action
:EndDisplayAndUserAction

:: *****************************************************************************

GOTO BeginSetScriptName
		This code is used to set the database backup script name
:BeginSetScriptName

:: Get user suggested script name by the command prompt
SET /P scriptName=Please enter the script file name : 

GOTO EndSetScriptName
		End of get script name from user
:EndSetScriptName

:: *****************************************************************************

GOTO BeginConfigureSQLInBatchFile
		This code is used to configure backup pathName, database name and backup full name at the SQL script by batch file
:BeginConfigureSQLInBatchFile

SET pathName=E:\TestDB_Backup\TestDB_Backup_Data\Test
SET databaseName=TestDB
SET fullName=TestDB-Full Database Backup

GOTO EndConfigureSQLInBatchFile
		End of backup configurations
:EndConfigureSQLInBatchFile

:: *****************************************************************************

GOTO BeginBackupSQLCommandInBatchFile
		This code is used to call SQL commands in batch file
		-S (server name)
		-U (user name)
		-P (password)
		-d (database name)
		-Q (call query)
		In here the system write the database backup at "E:\TestDB_Backup\TestDB_Backup_Data\Test_[date]_[time].bak" 
		This backup file is made by SQL Script which it is write at the batch file 
:BeginBackupSQLCommandInBatchFile

sqlcmd -S %server% -U %user% -P %password% -d %dataBase% -Q "BACKUP DATABASE %databaseName% TO  DISK = '%pathName%_%myDateFormat%_%myTimeFormat%.bak' WITH NOFORMAT, INIT,  NAME = N'%fullName%', SKIP, NOREWIND, NOUNLOAD,  STATS = 10;"

ECHO Batch Script Backup File is Created.....

Pause

GOTO EndBackupSQLCommandInBatchFile
		End of SQL commands in the batch file
:EndBackupSQLCommandInBatchFile

:: *****************************************************************************

GOTO BeginCopySQLScript
		This code is used to copy SQL script of backup database in current folder is copy to the destination folder
		SRC - source
		DEST - destionation
:BeginCopySQLScript

SET SRC="%~dp0*.sql"
SET DEST="%scriptName%.sql"
if not exist %DEST% copy /V %SRC% %DEST%

GOTO EndCopySQLScript
		End of copy databse backup SQL script
:EndCopySQLScript

:: *****************************************************************************

GOTO BeginRunCommandsInSQLScript
		This code is used to run the sql script file which it is at
		"E:\TestDB_Backup\TestDB_Backup_Script"
		Output database backup file will store at "E:\TestDB_Backup\TestDB_Backup_Data\TestScript_[date]_[time].bak"
		This backup file is made by SQL Script which it is write .sql script file 
:BeginRunCommandsInSQLScript

sqlcmd -i "E:\TestDB_Backup\TestDB_Backup_Script\%scriptName%.sql"

ECHO External Script Backup File is Created....

PAUSE

GOTO EndRunCommandsInSQLScript
		End of run SQL commands in the SQL script
:EndRunCommandsInSQLScript

:: End of the process system is change the current directry again 
CHDIR /D %FirstDir%

:: Exit from the batch file, Good Luck :))
EXIT


