
ECHO OFF
CHCP 65001

:: servername or ip address (SXXK)
:: nhap gia tri tu command promt hoac dung gia tri mac dinh srv="10.15.20.90"
set /P srv="Server name or IP address (SXXK): " || set srv="10.15.20.90"
:: user name (SXXK)
set /P usr="User name (SXXK): " || set usr="sa"
:: password (SXXK)
set /P pwd="Password (SXXK): "	|| set pwd="asdqwe@123"
:: database name (SXXK)	--CDDL_SXXK_Cuc_DN
set /P dbs="Database name (SXXK): " || set dbs="CDDL_SXXK_Cuc_DN"

:: demo pass parameter for script
:: bien trong file sql duoc dinh nghia dang: 	$(IDCucHQ)
:: gan gia tri cho bien:						 -v IDCucHQ="47" IDChiCuc="0"
set /P IDCucHQ="IDCucHQ: "
set /P IDChiCuc="IDChiCuc: "

REM echo chay thu file sql >>  "logfile.txt"

REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report.sql" -b >> "logfile.txt"

REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report.sql" -v IDCucHQ="47" IDChiCuc="0" -b >> "logfile.txt"

sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b >> "logfile.txt"

pause

