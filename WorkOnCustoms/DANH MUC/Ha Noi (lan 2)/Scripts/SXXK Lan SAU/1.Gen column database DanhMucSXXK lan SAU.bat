
:: no display command
ECHO OFF
:: set logfile unicode
CHCP 65001

:: servername or ip address (SXXK)
set srv="10.224.133.155"
:: user name (SXXK)
set usr="sa"
:: password (SXXK)
set pwd="asdqwe@123"
:: database name (SXXK)
set dbs="DanhMucSXXK"

:: demo pass parameter for script
:: bien trong file sql duoc dinh nghia dang: 	$(IDCucHQ)
:: gan gia tri cho bien:						 -v IDCucHQ="47" IDChiCuc="0"
set /P IDCucHQ="Input IDCucHQ: " || set IDCucHQ="NO_INPUT"
set /P IDChiCuc="Input IDChiCuc: " || set IDChiCuc="NO_INPUT"

If "%IDCucHQ%"=="NO_INPUT" GOTO:EOF
If "%IDChiCuc%"=="NO_INPUT" GOTO:EOF

::==========================================================
echo --- 1.Chay report du lieu chuyen tu Cuc len ---
sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "C.05.DanhMucSXXK. Report so lieu.sql" -b >> "%IDCucHQ%_%IDChiCuc%_Report_log.txt"
::==========================================================
echo --- 2.Gen column danh muc ---
sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "TC.01.DanhMucSXXK Gen column danh muc.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b >> "%IDCucHQ%_%IDChiCuc%_Gen_column_log.txt"
::==========================================================

pause

