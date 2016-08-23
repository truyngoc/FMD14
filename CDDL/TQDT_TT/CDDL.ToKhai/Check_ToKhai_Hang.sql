-- danh sach to khai khong co hang
select COUNT(*) as [TK GCCX ko có hàng] from dtokhaimd t
 left join dhangmd h on t.SoTK = h.soTK and t.ma_lh = h.ma_lh 
      and t.ma_hq = h.ma_hq and t.namdk= h.namdk
where h.sotk is null

-- danh sach to khai co gia tri truong sohang <> so luong hang trong DHang
select COUNT(*) as [SL tờ khai GCCX ko khớp số lượng hàng] from DToKhaiMD t 
	join 
		(select COUNT(*) sl, ma_hq, ma_lh, namdk, sotk 
		from DHangMD
		group by ma_hq, ma_lh, namdk, sotk) h 
	on t.SoTK = h.soTK and t.ma_lh = h.ma_lh and t.ma_hq = h.ma_hq and t.namdk= h.namdk
where sl <> SOHANG