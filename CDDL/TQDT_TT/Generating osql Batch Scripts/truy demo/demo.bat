
:: no display command
ECHO OFF
:: set logfile unicode
CHCP 65001

:: servername or ip address (SXXK)
set srv="10.15.20.90"
:: user name (SXXK)
set usr="sa"
:: password (SXXK)
set pwd="asdqwe@123"
:: database name (SXXK)
set dbs="ECUSTOMS_ONLINE"

:: demo pass parameter for script
:: bien trong file sql duoc dinh nghia dang: 	$(IDCucHQ)
:: gan gia tri cho bien:						 -v IDCucHQ="47" IDChiCuc="0"
set IDCucHQ="47"
set IDChiCuc="1"

REM echo chay thu file sql >>  "logfile.txt"

REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report.sql" -b >> "logfile.txt"

REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report.sql" -v IDCucHQ="47" IDChiCuc="0" -b >> "logfile.txt"

echo --------------- 1.start report -----------------
REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b >> "logfile.txt"

REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b -o "report.txt"

:: output to cmd
REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b

:: output with unicode
REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b -u -o "report.txt"
REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b -u >> "logfile.txt"

:: output error to screen
sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report.sql" -b >> "logfile.txt"

echo --------------- end report -----------------

pause

