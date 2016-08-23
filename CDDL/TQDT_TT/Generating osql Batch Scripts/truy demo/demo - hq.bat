
:: no display command
ECHO OFF
:: set logfile unicode
CHCP 65001

:: servername or ip address (SXXK)
set srv="10.224.133.154"
:: user name (SXXK)
set usr="sa"
:: password (SXXK)
set pwd="asdqwe@123"
:: database name (SXXK)
set dbs="ecustoms_his1"

:: demo pass parameter for script
:: bien trong file sql duoc dinh nghia dang: 	$(IDCucHQ)
:: gan gia tri cho bien:						 -v IDCucHQ="47" IDChiCuc="0"

set linksrv_name="DANHMUC_GCCX"
set dbname_src="DanhMucSXXK"



:: LinkServer Name (ket noi den may chua csdl nguon cua dia phuong gui len)
set lnksrv_name="ECUSTOMS_LINK_SRC"
:: Dia chi may chua csdl nguon cua dia phuong gui len
set lnksrv_datasource="10.224.133.155"
:: user password
set usr_src="sa"
set pwd_src="asdqwe@123"
:: Database name (source) SLXNK_CUC hoac SXXK_CUC cua dia phuong
:: set slxnk_dbname_src="DanhMucGCCX"
set sxxk_dbname_src="DanhMucSXXK"

REM echo chay thu file sql >>  "logfile.txt"

REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report.sql" -b >> "logfile.txt"

REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report.sql" -v IDCucHQ="47" IDChiCuc="0" -b >> "logfile.txt"

echo --------------- 1.start report -----------------

sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "SXXK.Linkserver eCustoms to DanhMucSXXK.sql" -v lnksrv_name=%lnksrv_name% datasource=%lnksrv_datasource% uid=%usr_src% pwd=%pwd_src%  -b >> "%IDCucHQ%_%IDChiCuc%_Server01_log.txt"
REM sqlcmd -U %usr% -P %pwd% -S %srv% -d %dbs%  -i "B5.SXXK_DanhMuc Report - hq.sql" -v linksrv_name=%linksrv_name% dbname_src=%dbname_src% -b >> "logfile.txt"

echo --------------- end report -----------------

pause

