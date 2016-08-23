
:: no display command
ECHO OFF
:: set logfile unicode
CHCP 65001

::==========================================================
echo --- Config parameter Server ECUSTOMS_ONLINE ---
:: Server name or IP address
set srv_online="10.224.130.113"
:: User name
set usr_online="sa"
:: Password
set pwd_online="tchq@2012"
:: Database name (dest)
set dbs_online="ECUSTOMS_ONLINE"
set dbs10="ECUSTOMS_HIS"

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

:: LinkServer Name (ket noi den may chua csdl nguon cua dia phuong gui len)
set lnksrv_name="ECUSTOMS_LINK_SRC"
:: Dia chi may chua csdl nguon cua dia phuong gui len
set lnksrv_datasource="10.224.133.155"
:: user password
set usr_src="sa"
set pwd_src="asdqwe@123"
:: Database name (source) SLXNK_CUC hoac SXXK_CUC cua dia phuong
::set slxnk_dbname_src="ToKhaiSXXK"
set sxxk_dbname_src="ToKhaiSXXK"


:: demo pass parameter for script
:: bien trong file sql duoc dinh nghia dang: 	$(IDCucHQ)
:: gan gia tri cho bien:						 -v IDCucHQ="47" IDChiCuc="0"

:: gan bien IDCucHQ va IDChiCuc
set /P IDCucHQ="Input IDCucHQ: "		rem {ID Cục: tra bảng}
set /P IDChiCuc="Input IDChiCuc: "		rem {ID chi cục: tra bảng}

::==========================================================
echo Start time: %DATE% %TIME%

echo --- Kiem tra server do du lieu ----
:: thao tac tren server chua nguon du lieu
sqlcmd -U %usr_src% -P %pwd_src% -S %lnksrv_datasource% -d %sxxk_dbname_src% -i "TC.03.TKSXXK Kiem tra MaHQ.sql" -b >> "%IDCucHQ%_%IDChiCuc%_ServerProcess_log.txt"
echo --- Report data before sync ---
:: thao tac tren server chua ECUSTOMS_ONLINE
sqlcmd -U %usr_online% -P %pwd_online% -S %srv_online% -d %dbs_online%  -i "TC.04.eCustoms Report SXXK TRUOC chuyen doi- Phai dien ID Cuc và CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b >> "%IDCucHQ%_%IDChiCuc%_TCReport_log.txt"

echo --- 10.Execution on Server 10 ---
echo --- 1.1.Check LinkServer on Server 10 --- >> "%IDCucHQ%_%IDChiCuc%_Server10_log.txt"
sqlcmd -U %usr_online% -P %pwd_online% -S %srv_online% -d %dbs10%  -i "SXXK.Linkserver ECustoms_Online to SXXK.sql" -v lnksrv_name=%lnksrv_name% datasource=%lnksrv_datasource% uid=%usr_src% pwd=%pwd_src%  -b >> "%IDCucHQ%_%IDChiCuc%_Server10_log.txt"

echo --- 1.2.Sync SXXK category data on Server 10 --- >> "%IDCucHQ%_%IDChiCuc%_Server10_log.txt"
sqlcmd -U %usr_online% -P %pwd_online% -S %srv_online% -d %dbs10%  -i "TC.05.eCustoms Server 10 Import To khai SXXK.sql" -v  lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src%  -b >> "%IDCucHQ%_%IDChiCuc%_Server10_log.txt"
::==========================================================

:: thao tac tren server chua ECUSTOMS_ONLINE
echo --- Report data after sync ---
sqlcmd -U %usr_online% -P %pwd_online% -S %srv_online% -d %dbs_online%  -i "TC.06.eCustoms Report SXXK SAU chuyen doi- Phai dien ID Cuc và CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b >> "%IDCucHQ%_%IDChiCuc%_TCReport_log.txt"

::==========================================================
echo End time: %DATE% %TIME%

pause

