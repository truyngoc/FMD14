
:: no display command
ECHO OFF
:: set logfile unicode
CHCP 65001

:: LinkServer Name (ket noi den may chua csdl nguon cua dia phuong gui len)
set lnksrv_name="ECUSTOMS_LINK_SRC"

:: Database name (source) SLXNK_CUC hoac SXXK_CUC cua dia phuong
:: set slxnk_dbname_src="DanhMucGCCX"
set sxxk_dbname_src="DanhMucSXXK"
set slxnk_dbname_src="DanhMucGCCX"

::==========================================================
echo --- Config parameter Server 01 ---
:: Server name or IP address
set srv01="10.224.130.123"
:: User name
set usr01="sa"
:: Password
set pwd01="tchq@2012"
:: Database name (dest)
set dbs01="ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 02 ---
:: Server name or IP address
set srv02="10.224.130.133"
:: User name
set usr02="sa"
:: Password
set pwd02="tchq@2012"
:: Database name (dest)
set dbs02="ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 03 ---
:: Server name or IP address
set srv03="10.224.130.143"
:: User name
set usr03="sa"
:: Password
set pwd03="tchq@2012"
:: Database name (dest)
set dbs03="ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 04 ---
:: Server name or IP address
set srv04="10.224.130.153"
:: User name
set usr04="sa"
:: Password
set pwd04="tchq@2012"
:: Database name (dest)
set dbs04="ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 05 ---
:: Server name or IP address
set srv05="10.224.130.163"
:: User name
set usr05="sa"
:: Password
set pwd05="tchq@2012"
:: Database name (dest)
set dbs05="ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 06 ---
:: Server name or IP address
set srv06="10.224.130.173"
:: User name
set usr06="sa"
:: Password
set pwd06="tchq@2012"
:: Database name (dest)
set dbs06="ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 07 ---
:: Server name or IP address
set srv07="10.224.130.183"
:: User name
set usr07="sa"
:: Password
set pwd07="tchq@2012"
:: Database name (dest)
set dbs07="ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 08 ---
:: Server name or IP address
set srv08="10.224.130.193"
:: User name
set usr08="sa"
:: Password
set pwd08="tchq@2012"
:: Database name (dest)
set dbs08="ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 09 ---
:: Server name or IP address
set srv09="10.224.130.203"
:: User name
set usr09="sa"
:: Password
set pwd09="tchq@2012"
:: Database name (dest)
set dbs09="ECUSTOMS_HIS"
::==========================================================

::==========================================================
echo Start time: %DATE% %TIME%


::==========================================================
echo --- 1.Execution on Server 01 --- >> "Log.txt"

:: thao tac tren server 01
sqlcmd -U %usr01% -P %pwd01% -S %srv01% -d %dbs01%  -i "update_script server 1 fix_dvt.sql" -v lnksrv_name=%lnksrv_name%  sxxk_dbname_src=%sxxk_dbname_src% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Log.txt"

::==========================================================

echo --- 2.Execution on Server 02 --- >> "Log.txt"

sqlcmd -U %usr02% -P %pwd02% -S %srv02% -d %dbs02%  -i "update_script server 2 fix_dvt.sql" -v lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Log.txt"
::==========================================================

echo --- 3.Execution on Server 03 --- >> "Log.txt"

sqlcmd -U %usr03% -P %pwd03% -S %srv03% -d %dbs03%  -i "update_script server 3 fix_dvt.sql" -v lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Log.txt"
::==========================================================

echo --- 4.Execution on Server 04 --- >> "Log.txt"

sqlcmd -U %usr04% -P %pwd04% -S %srv04% -d %dbs04%  -i "update_script server 4 fix_dvt.sql" -v lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Log.txt"
::==========================================================

echo --- 5.Execution on Server 05 --- >> "Log.txt"

sqlcmd -U %usr05% -P %pwd05% -S %srv05% -d %dbs05%  -i "update_script server 5 fix_dvt.sql"  -v lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src% slxnk_dbname_src=%slxnk_dbname_src% -b >> "Log.txt"
::==========================================================

echo --- 6.Execution on Server 06 --- >> "Log.txt"

sqlcmd -U %usr06% -P %pwd06% -S %srv06% -d %dbs06%  -i "update_script server 6 fix_dvt.sql" -v lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Log.txt"
::==========================================================

echo --- 7.Execution on Server 07 --- >> "Log.txt"

sqlcmd -U %usr07% -P %pwd07% -S %srv07% -d %dbs07%  -i "update_script server 7 fix_dvt.sql" -v lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Log.txt"
::==========================================================

echo --- 8.Execution on Server 08 --- >> "Log.txt"

sqlcmd -U %usr08% -P %pwd08% -S %srv08% -d %dbs08%  -i "update_script server 8 fix_dvt.sql" -v lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Log.txt"
::==========================================================

echo --- 9.Execution on Server 09 ---  >> "Log.txt"

sqlcmd -U %usr09% -P %pwd09% -S %srv09% -d %dbs09%  -i "update_script server 9 fix_dvt.sql" -v lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Log.txt"
::==========================================================

::==========================================================
echo End time: %DATE% %TIME%

pause

