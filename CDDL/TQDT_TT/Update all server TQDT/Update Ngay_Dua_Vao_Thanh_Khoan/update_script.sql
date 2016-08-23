 declare @IDCucHQ bigint
 declare @IDChiCuc bigint
 set	@IDCucHQ = 1
 set	@IDChiCuc = 1

 declare @IDDanhMuc bigint,@IDDanhMucMax bigint
 set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*cast(1000000000 as bigint)
 set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*cast(1000000000 as bigint)

update DTO_KHAI_MD
set Ngay_Dua_Vao_Thanh_Khoan = Ngay_DK
where TK_ID >@IDDanhMuc and TK_ID<=@IDDanhMucMax and substring(ma_lh,1,1) = 'X'

update DTO_KHAI_MD
set Ngay_Dua_Vao_Thanh_Khoan = Ngay_Hoan_Thanh
where TK_ID >@IDDanhMuc and TK_ID<=@IDDanhMucMax and ma_lh like 'NSX%'