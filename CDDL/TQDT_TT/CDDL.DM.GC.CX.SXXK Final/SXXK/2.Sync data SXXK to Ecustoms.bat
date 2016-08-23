
:: no display command
ECHO OFF
:: set logfile unicode
CHCP 65001

::==========================================================
echo --- Config parameter Server 01 ---
:: Server name or IP address
set srv01 = "10.224.130.123"
:: User name
set usr01 = "sa"
:: Password
set pwd01 = ""
:: Database name (dest)
set dbs01 = "ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 02 ---
:: Server name or IP address
set srv02 = "10.224.130.133"
:: User name
set usr02 = "sa"
:: Password
set pwd02 = ""
:: Database name (dest)
set dbs02 = "ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 03 ---
:: Server name or IP address
set srv03 = "10.224.130.143"
:: User name
set usr03 = ""
:: Password
set pwd03 = ""
:: Database name (dest)
set dbs03 = "ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 04 ---
:: Server name or IP address
set srv04 = "10.224.130.153"
:: User name
set usr04 = "sa"
:: Password
set pwd04 = ""
:: Database name (dest)
set dbs04 = "ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 05 ---
:: Server name or IP address
set srv05 = "10.224.130.163"
:: User name
set usr05 = "sa"
:: Password
set pwd05 = ""
:: Database name (dest)
set dbs05 = "ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 06 ---
:: Server name or IP address
set srv06 = "10.224.130.173"
:: User name
set usr06 = "sa"
:: Password
set pwd06 = ""
:: Database name (dest)
set dbs06 = "ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 07 ---
:: Server name or IP address
set srv07 = "10.224.130.183"
:: User name
set usr07 = "sa"
:: Password
set pwd07 = ""
:: Database name (dest)
set dbs07 = "ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 08 ---
:: Server name or IP address
set srv08 = "10.224.130.193"
:: User name
set usr08 = "sa"
:: Password
set pwd08 = ""
:: Database name (dest)
set dbs08 = "ECUSTOMS_HIS"
::==========================================================
echo --- Config parameter Server 09 ---
:: Server name or IP address
set srv09 = "10.224.130.203"
:: User name
set usr09 = "sa"
:: Password
set pwd09 = ""
:: Database name (dest)
set dbs09 = "ECUSTOMS_HIS"
::==========================================================

:: demo pass parameter for script
:: bien trong file sql duoc dinh nghia dang: 	$(IDCucHQ)
:: gan gia tri cho bien:						 -v IDCucHQ="47" IDChiCuc="0"

:: gan bien IDCucHQ va IDChiCuc
set IDCucHQ=		rem {ID Cục: tra bảng}
set IDChiCuc=		rem {ID chi cục: tra bảng}
:: LinkServer Name (ket noi den may chua csdl nguon cua dia phuong gui len)
set lnksrv_name="ECUSTOMS_LINK_SRC"
:: Dia chi may chua csdl nguon cua dia phuong gui len
set lnksrv_datasource = "10.224.133.155"
:: Database name (source) SLXNK_CUC hoac SXXK_CUC cua dia phuong
set slxnk_dbname_src="SLXNK_CUC"
set sxxk_dbname_src="SXXK_CUC"

::==========================================================

echo --- 1.Execution on Server 01 ---
echo --- 1.1.Check LinkServer on Server 01 --- >> "Server01_log.txt"
REM sqlcmd -U %usr01% -P %pwd01% -S %srv01% -d %dbs01%  -i "SXXK.Linkserver eCustoms to DanhMucSXXK.sql" -v lnksrv_name=%lnksrv_name% datasource=%lnksrv_datasource% uid=%usr01% pwd=%pwd01%  -b >> "Server01_log.txt"

echo --- 1.2.Sync GC,CX category data on Server 01 --- >> "Server01_log.txt"
REM sqlcmd -U %usr01% -P %pwd01% -S %srv01% -d %dbs01%  -i "TC.02.eCustoms Report GC CX truoc chuyen doi- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Server01_log.txt"

echo --- 1.3.Sync SXXK category data on Server 01 --- >> "Server01_log.txt"
REM sqlcmd -U %usr01% -P %pwd01% -S %srv01% -d %dbs01%  -i "TC.02.eCustoms Report chuyen doi SXXK- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src%  -b >> "Server01_log.txt"

::==========================================================

echo --- 2.Execution on Server 02 ---
echo --- 1.1.Check LinkServer on Server 02 --- >> "Server02_log.txt"
REM sqlcmd -U %usr02% -P %pwd02% -S %srv02% -d %dbs02%  -i "SXXK.Linkserver eCustoms to DanhMucSXXK.sql" -v lnksrv_name=%lnksrv_name% datasource=%lnksrv_datasource% uid=%usr01% pwd=%pwd02%  -b >> "Server02_log.txt"

echo --- 1.2.Sync GC,CX category data on Server 02 --- >> "Server02_log.txt"
REM sqlcmd -U %usr02% -P %pwd02% -S %srv02% -d %dbs02%  -i "TC.02.eCustoms Report GC CX truoc chuyen doi- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Server02_log.txt"

echo --- 1.3.Sync SXXK category data on Server 02 --- >> "Server02_log.txt"
REM sqlcmd -U %usr02% -P %pwd02% -S %srv02% -d %dbs02%  -i "TC.02.eCustoms Report chuyen doi SXXK- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src%  -b >> "Server02_log.txt"
::==========================================================

echo --- 3.Execution on Server 03 ---
echo --- 1.1.Check LinkServer on Server 03 --- >> "Server03_log.txt"
REM sqlcmd -U %usr03% -P %pwd03% -S %srv03% -d %dbs03%  -i "SXXK.Linkserver eCustoms to DanhMucSXXK.sql" -v lnksrv_name=%lnksrv_name% datasource=%lnksrv_datasource% uid=%usr03% pwd=%pwd03%  -b >> "Server03_log.txt"

echo --- 1.2.Sync GC,CX category data on Server 03 --- >> "Server03_log.txt"
REM sqlcmd -U %usr03% -P %pwd03% -S %srv03% -d %dbs03%  -i "TC.02.eCustoms Report GC CX truoc chuyen doi- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Server03_log.txt"

echo --- 1.3.Sync SXXK category data on Server 03 --- >> "Server01_log.txt"
REM sqlcmd -U %usr03% -P %pwd03% -S %srv03% -d %dbs03%  -i "TC.02.eCustoms Report chuyen doi SXXK- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src%  -b >> "Server03_log.txt"
::==========================================================

echo --- 4.Execution on Server 04 ---
echo --- 1.1.Check LinkServer on Server 04 --- >> "Server04_log.txt"
REM sqlcmd -U %usr04% -P %pwd04% -S %srv04% -d %dbs04%  -i "SXXK.Linkserver eCustoms to DanhMucSXXK.sql" -v lnksrv_name=%lnksrv_name% datasource=%lnksrv_datasource% uid=%usr04% pwd=%pwd04%  -b >> "Server04_log.txt"

echo --- 1.2.Sync GC,CX category data on Server 04 --- >> "Server04_log.txt"
REM sqlcmd -U %usr04% -P %pwd04% -S %srv04% -d %dbs04%  -i "TC.02.eCustoms Report GC CX truoc chuyen doi- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Server04_log.txt"

echo --- 1.3.Sync SXXK category data on Server 04 --- >> "Server04_log.txt"
REM sqlcmd -U %usr04% -P %pwd04% -S %srv04% -d %dbs04%  -i "TC.02.eCustoms Report chuyen doi SXXK- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src%  -b >> "Server04_log.txt"
::==========================================================

echo --- 5.Execution on Server 05 ---
echo --- 1.1.Check LinkServer on Server 05 --- >> "Server05_log.txt"
REM sqlcmd -U %usr05% -P %pwd05% -S %srv05% -d %dbs05%  -i "SXXK.Linkserver eCustoms to DanhMucSXXK.sql" -v lnksrv_name=%lnksrv_name% datasource=%lnksrv_datasource% uid=%usr05% pwd=%pwd05%  -b >> "Server05_log.txt"

echo --- 1.2.Sync GC,CX category data on Server 05 --- >> "Server05_log.txt"
REM sqlcmd -U %usr05% -P %pwd05% -S %srv05% -d %dbs05%  -i "TC.02.eCustoms Report GC CX truoc chuyen doi- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Server05_log.txt"

echo --- 1.3.Sync SXXK category data on Server 05 --- >> "Server05_log.txt"
REM sqlcmd -U %usr05% -P %pwd05% -S %srv05% -d %dbs05%  -i "TC.02.eCustoms Report chuyen doi SXXK- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src%  -b >> "Server05_log.txt"
::==========================================================

echo --- 6.Execution on Server 06 ---
echo --- 1.1.Check LinkServer on Server 06 --- >> "Server06_log.txt"
REM sqlcmd -U %usr06% -P %pwd06% -S %srv06% -d %dbs06%  -i "SXXK.Linkserver eCustoms to DanhMucSXXK.sql" -v lnksrv_name=%lnksrv_name% datasource=%lnksrv_datasource% uid=%usr06% pwd=%pwd06%  -b >> "Server06_log.txt"

echo --- 1.2.Sync GC,CX category data on Server 06 --- >> "Server06_log.txt"
REM sqlcmd -U %usr06% -P %pwd06% -S %srv06% -d %dbs06%  -i "TC.02.eCustoms Report GC CX truoc chuyen doi- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Server06_log.txt"

echo --- 1.3.Sync SXXK category data on Server 06 --- >> "Server06_log.txt"
REM sqlcmd -U %usr06% -P %pwd06% -S %srv06% -d %dbs06%  -i "TC.02.eCustoms Report chuyen doi SXXK- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src%  -b >> "Server06_log.txt"
::==========================================================

echo --- 7.Execution on Server 07 ---
echo --- 1.1.Check LinkServer on Server 07 --- >> "Server07_log.txt"
REM sqlcmd -U %usr07% -P %pwd07% -S %srv07% -d %dbs07%  -i "SXXK.Linkserver eCustoms to DanhMucSXXK.sql" -v lnksrv_name=%lnksrv_name% datasource=%lnksrv_datasource% uid=%usr07% pwd=%pwd07%  -b >> "Server07_log.txt"

echo --- 1.2.Sync GC,CX category data on Server 07 --- >> "Server07_log.txt"
REM sqlcmd -U %usr07% -P %pwd07% -S %srv07% -d %dbs07%  -i "TC.02.eCustoms Report GC CX truoc chuyen doi- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Server07_log.txt"

echo --- 1.3.Sync SXXK category data on Server 07 --- >> "Server07_log.txt"
REM sqlcmd -U %usr07% -P %pwd07% -S %srv07% -d %dbs07%  -i "TC.02.eCustoms Report chuyen doi SXXK- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src%  -b >> "Server07_log.txt"
::==========================================================

echo --- 8.Execution on Server 08 ---
echo --- 1.1.Check LinkServer on Server 08 --- >> "Server08_log.txt"
REM sqlcmd -U %usr08% -P %pwd08% -S %srv08% -d %dbs08%  -i "SXXK.Linkserver eCustoms to DanhMucSXXK.sql" -v lnksrv_name=%lnksrv_name% datasource=%lnksrv_datasource% uid=%usr08% pwd=%pwd08%  -b >> "Server08_log.txt"

echo --- 1.2.Sync GC,CX category data on Server 08 --- >> "Server08_log.txt"
REM sqlcmd -U %usr08% -P %pwd08% -S %srv08% -d %dbs08%  -i "TC.02.eCustoms Report GC CX truoc chuyen doi- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Server08_log.txt"

echo --- 1.3.Sync SXXK category data on Server 08 --- >> "Server08_log.txt"
REM sqlcmd -U %usr08% -P %pwd08% -S %srv08% -d %dbs08%  -i "TC.02.eCustoms Report chuyen doi SXXK- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src%  -b >> "Server08_log.txt"
::==========================================================

echo --- 9.Execution on Server 09 ---
echo --- 1.1.Check LinkServer on Server 09 --- >> "Server09_log.txt"
REM sqlcmd -U %usr09% -P %pwd09% -S %srv09% -d %dbs09%  -i "SXXK.Linkserver eCustoms to DanhMucSXXK.sql" -v lnksrv_name=%lnksrv_name% datasource=%lnksrv_datasource% uid=%usr09% pwd=%pwd09%  -b >> "Server09_log.txt"

echo --- 1.2.Sync GC,CX category data on Server 09 --- >> "Server09_log.txt"
REM sqlcmd -U %usr09% -P %pwd09% -S %srv09% -d %dbs09%  -i "TC.02.eCustoms Report GC CX truoc chuyen doi- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% slxnk_dbname_src=%slxnk_dbname_src%  -b >> "Server09_log.txt"

echo --- 1.3.Sync SXXK category data on Server 09 --- >> "Server09_log.txt"
REM sqlcmd -U %usr09% -P %pwd09% -S %srv09% -d %dbs09%  -i "TC.02.eCustoms Report chuyen doi SXXK- Phai dien ID Cuc va CC.sql" -v IDCucHQ=%IDCucHQ% IDChiCuc=%IDChiCuc% lnksrv_name=%lnksrv_name% sxxk_dbname_src=%sxxk_dbname_src%  -b >> "Server09_log.txt"
::==========================================================

pause

