

 declare @IDCucHQ bigint
 declare @IDChiCuc bigint
 set	@IDCucHQ = 43
 set	@IDChiCuc = 13

 declare @IDDanhMuc bigint,@IDDanhMucMax bigint
 set	@IDDanhMuc =10000000000000 + @IDCucHQ*100000000000 + @IDChiCuc*cast(1000000000 as bigint)
 set	@IDDanhMucMax =10000000000000 + @IDCucHQ*100000000000 + (@IDChiCuc+1)*cast(1000000000 as bigint)

 delete DSX_NPL_NHAP_TL where TK_ID >@IDDanhMuc and TK_ID<=@IDDanhMucMax

 delete DSX_NPL_NHAP where TK_ID >@IDDanhMuc and TK_ID<=@IDDanhMucMax
 
 delete DHang_MD where TK_ID >@IDDanhMuc and TK_ID<=@IDDanhMucMax
 
 delete DTO_KHAI_MD where TK_ID >@IDDanhMuc and TK_ID<=@IDDanhMucMax


 
 