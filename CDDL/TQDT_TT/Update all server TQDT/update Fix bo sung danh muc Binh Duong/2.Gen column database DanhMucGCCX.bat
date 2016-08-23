
:: no display command
ECHO OFF
:: set logfile unicode
CHCP 65001

:: servername or ip address (GCCX)
set srv="10.224.133.155"
:: user name (GCCX)
set usr="sa"
:: password (GCCX)
set pwd="asdqwe@123"
:: database name (GCCX)
set dbs="DanhMucGCCX"

:: demo pass parameter for script
:: bien trong file sql duoc dinh nghia dang: 	$(IDCucHQ)
:: gan gia tri cho bien:						 -v IDCucHQ="47" IDChiCuc="0"
set /P IDCucHQ="Input IDCucHQ: " || set IDCucHQ="NO_INPUT"
set /P IDChiCuc="Input IDChiCuc: " || set IDChiCuc="NO_INPUT"

If "%IDCucHQ%"=="NO_INPUT" GOTO:EOF
If "%IDChiCuc%"=="NO_INPUT" GOTO:EOF

echo Start time: %DATE% %TIME%
::==========================================================
echo --- 2.Gen column danh muc ---
sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "TC.01.DanhMucGCCX Gen column danh muc GC CX.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b >> "%IDCucHQ%_%IDChiCuc%_Gen_column_log.txt"
::==========================================================
echo --- Kiem tra server do du lieu ----
sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs% -i "TC.01.DanhMucGCCX Kiem tra MaHQ.sql" -b >> "%IDCucHQ%_%IDChiCuc%_ServerProcess_log.txt"

echo End time: %DATE% %TIME%

pause

