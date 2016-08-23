
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
set dbs="ToKhaiSXXK"

:: LinkServer Name (ket noi den may chua csdl ECUSTOMS_ONLINE)
set lnksrv_name="SRC_LINK_ECUSTOMS_ONLINE"
:: Dia chi may chua ECUSTOMS_ONLINE
set lnksrv_datasource="10.224.130.113"
:: user password
set usr_src="sa"
set pwd_src="tchq@2012"
:: Database name (source) SLXNK_CUC hoac SXXK_CUC cua dia phuong
set db_online="ECUSTOMS_ONLINE"


:: demo pass parameter for script
:: bien trong file sql duoc dinh nghia dang: 	$(IDCucHQ)
:: gan gia tri cho bien:						 -v IDCucHQ="47" IDChiCuc="0"
set /P IDCucHQ="Input IDCucHQ: " || set IDCucHQ="NO_INPUT"
set /P IDChiCuc="Input IDChiCuc: " || set IDChiCuc="NO_INPUT"

If "%IDCucHQ%"=="NO_INPUT" GOTO:EOF
If "%IDChiCuc%"=="NO_INPUT" GOTO:EOF

echo Start time: %DATE% %TIME%
::==========================================================
REM echo --- 1.Chay report du lieu chuyen tu Cuc len ---
REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "C.03.TKSXXK Report so lieu.sql" -b >> "%IDCucHQ%_%IDChiCuc%_Report_log.txt"
REM ::==========================================================

REM echo --- 2.Tao link server toi ECUSTOMS_ONLINE ---
REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "SXXK.Linkserver SXXK to ECustoms_Online.sql" -v lnksrv_name=%lnksrv_name% lnksrv_datasource1=%lnksrv_datasource% usr_src=%usr_src% pwd_src=%pwd_src%  -b >> "%IDCucHQ%_%IDChiCuc%_Report_log.txt"

REM echo --- 3.Import danh muc tu ECUSTOMS_ONLINE toi src ---
REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "TC.01.TKSXXK. Import danh muc tu TQDT_TT.sql" -v lnksrv_name=%lnksrv_name% db_online=%db_online% IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b >> "%IDCucHQ%_%IDChiCuc%_Report_log.txt"

echo --- 4.Gen column danh muc ---
sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "TC.02.TKSXXK Gen column to khai.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b >> "%IDCucHQ%_%IDChiCuc%_Gen_column_log.txt"
::==========================================================

sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs% -i "TC.03.TKSXXK Kiem tra MaHQ.sql" -b >> "%IDCucHQ%_%IDChiCuc%_ServerProcess_log.txt"

echo End time: %DATE% %TIME%

pause

