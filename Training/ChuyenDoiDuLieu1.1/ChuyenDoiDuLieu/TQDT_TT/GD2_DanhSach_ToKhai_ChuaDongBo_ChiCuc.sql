/*Script: dung de kiem tra nhung to khai nao chua duoc dong bo xuong chi cuc
Luu y: Thay 'xxx' bang Ma HQ cua chi cuc can kiem tra. Chi khi nao toan bo cac to khai duoc phan luong
va dong bo xuong chi cuc, khi do Chi cuc moi duoc backup database.
Ket qua:
1) Neu khong co ban ghi nao thi toan bo to khai cua chi cuc 'xxx' da duoc dong bo.
2) Neu co ban ghi, nghia la con to khai chua duoc dong bo, can kiem tra:
- Service dong bo xuong chi cuc
- Service phan luong
*/
use slxnk_cuc
go
select * from ecsDToKhaiMD_TT15
where isDaDongBoThanhCong = 1
and mahq = 'xxx'