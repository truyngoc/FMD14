tai xuat chi dinh don gia bat ky

tái xuất


select * from DNPLTXUAT where ma_dv='0500233387'

select * from DNPLTXUAT_tl where ma_dv='0500233387'

select * from DNPLTXMAN where ma_dv='0500233387'

select * from DNPLNHAP where  ma_dv='0500233387' and sotk=2274


select * from DNPLNHAP_TL where  ma_dv='0500233387' and lan_tl=57 and sotk=2274

-- lay thang nay max(lan_tl) de cap nhat lai luong ton la ok
select * from DNPLNHAP_TL_CT where  ma_dv='0500233387' and lan_tl=57 and sotk=2274


select * from DNPLNHAP_TL_TH where  ma_dv='0500233387' and lan_tl=57 and sotk=2274