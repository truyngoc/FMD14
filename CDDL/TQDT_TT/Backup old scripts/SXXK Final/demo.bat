
ECHO OFF
CHCP 65001

:: servername or ip address (SXXK)
set srv="10.224.133.155"
:: user name (SXXK)
set usr="sa"
:: password (SXXK)
set pwd="asdqwe@123"
:: database name (SXXK)
set dbs="SXXK_Z47Z"

sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "C.03.SXXK. Gen column identity danh muc.sql" -b >> "logfile.txt"
sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "C.04.SXXK. Export danh muc SXXK sang db DanhMucSXXK.sql" -b >> "logfile.txt"
sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "C.05.DanhMucSXXK. Report so lieu.sql" -b >> "logfile.txt"

pause

