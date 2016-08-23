
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
set IDCucHQ="47"
set IDChiCuc="1"


sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "TC.01.SXXK. DanhMuc Gen column danh muc.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b >> "Gen_column_log.txt"

pause

