
:: no display command
ECHO OFF
:: set logfile unicode
CHCP 65001

::==========================================================
echo --- Config parameter Server ECUSTOMS_ONLINE ---
:: Server name or IP address
set srv_online="10.15.20.90"
:: User name
set usr_online="sa"
:: Password
set pwd_online="asdqwe@123"
:: Database name (dest)
set dbs_online="eCustoms"

::==========================================================
echo --- Config parameter Server 01 ---
:: Server name or IP address
set srv01="10.15.20.90"
:: User name
set usr01="sa"
:: Password
set pwd01="asdqwe@123"
:: Database name (dest)
set dbs01="eCustoms_His1"


:: LinkServer Name (ket noi den may chua csdl nguon cua dia phuong gui len)
set lnksrv_name="ECUSTOMS_LINK_SRC"
:: Dia chi may chua csdl nguon cua dia phuong gui len
set lnksrv_datasource="10.15.20.90"
:: user password
set usr_src="sa"
set pwd_src="asdqwe@123"
:: Database name (source) SLXNK_CUC hoac SXXK_CUC cua dia phuong
set slxnk_dbname_src="DanhMucGCCX"

:: demo pass parameter for script
:: bien trong file sql duoc dinh nghia dang: 	$(IDCucHQ)
:: gan gia tri cho bien:						 -v IDCucHQ="47" IDChiCuc="0"

:: gan bien IDCucHQ va IDChiCuc
set /P IDCucHQ="Input IDCucHQ: "		rem {ID Cục: tra bảng}
set /P IDChiCuc="Input IDChiCuc: "		rem {ID chi cục: tra bảng}

::==========================================================
echo Start time: %DATE% %TIME%

REM echo --- Kiem tra server do du lieu ----
REM :: thao tac tren server chua nguon du lieu
REM :: SLXNK
REM sqlcmd -U %usr_src% -P %pwd_src% -S %lnksrv_datasource% -d %slxnk_dbname_src% -i "TC.01.DanhMucGCCX Kiem tra MaHQ.sql" -b >> "%IDCucHQ%_%IDChiCuc%_ServerProcess_log.txt"

:: SXXK
REM sqlcmd -U %usr_src% -P %pwd_src% -S %lnksrv_datasource% -d %sxxk_dbname_src% -i "TC.01.DanhMucSXXK Kiem tra MaHQ.sql" -b >> "%IDCucHQ%_%IDChiCuc%_ServerProcess_log.txt"

echo --- Report data before sync ---
:: thao tac tren server chua ECUSTOMS_ONLINE
sqlcmd -U %usr_online% -P %pwd_online% -S %srv_online% -d %dbs_online%  -i "TC.02.eCustoms Report GC CX TRUOC chuyen doi- Phai dien ID Cuc và CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b >> "%IDCucHQ%_%IDChiCuc%_TCReport_log.txt"

::==========================================================
echo --- 1.Execution on Server 01 ---
echo --- 1.1.Check LinkServer on Server 01 --- >> "%IDCucHQ%_%IDChiCuc%_Server01_log.txt"
:: thao tac tren server 01
sqlcmd -U %usr01% -P %pwd01% -S %srv01% -d %dbs01%  -i "SLXNK.Linkserver eCustoms to DanhMucGCCX.sql" -v lnksrv_name=%lnksrv_name% datasource=%lnksrv_datasource% uid=%usr_src% pwd=%pwd_src%  -b >> "%IDCucHQ%_%IDChiCuc%_Server01_log.txt"

echo --- 1.2.Sync GCCX category data on Server 01 --- >> "%IDCucHQ%_%IDChiCuc%_Server01_log.txt"
:: thao tac tren server 01
sqlcmd -U %usr01% -P %pwd01% -S %srv01% -d %dbs01%  -i "TC.03.eCustoms Server 1 import du lieu lan DAU GC CX.sql" -v lnksrv_name=%lnksrv_name% slxnk_dbname_src=%slxnk_dbname_src% -b >> "%IDCucHQ%_%IDChiCuc%_Server01_log.txt"

::==========================================================

:: thao tac tren server chua ECUSTOMS_ONLINE
echo --- Report data after sync ---
sqlcmd -U %usr_online% -P %pwd_online% -S %srv_online% -d %dbs_online%  -i "TC.04.eCustoms Report GC CX SAU chuyen doi- Phai dien ID Cuc và CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% -b >> "%IDCucHQ%_%IDChiCuc%_TCReport_log.txt"

::==========================================================
echo End time: %DATE% %TIME%

pause

