declare @IDDanhMuc bigint,@IDDanhMucMax bigint
set	@IDDanhMuc =10000000000000 + $(IDCucHQ)*100000000000 + $(IDChiCuc)*cast(1000000000 as bigint)
set	@IDDanhMucMax =10000000000000 + $(IDCucHQ)*100000000000 + ($(IDChiCuc)+1)*cast(1000000000 as bigint)

print '--=====================Gia công - đổ dữ liệu vào eCustoms======================'
print 'Insert From DNPLHD Into DGC_SP_NPL_TB_HM'
Insert Into DGC_SP_NPL_TB_HM(
	VT_ID
	,Ma_HQ_HD
	,Ma_Cuc_HQ
	,Nam_DK_HD
	,HD_ID
	,Ma_Vat_Tu
	,Loai
	,Ten_Vat_Tu
	,Ma_HS
	,Ma_DVT
	,So_Luong_DK
	,Nguon_Nguyen_Lieu -- moi them vao theo TT22
	)
Select
	CDDL_VT_ID
	,rtrim(CDDL_MA_HQ_HD)
	,CDDL_MA_CUC_HQ
	,CDDL_NAM_DK_HD
	,CDDL_HD_ID
	,CDDL_P_Code
	,1 as Loai
	,Ten_NPL
	,CDDL_HS_Code
	,CDDL_Ma_DVT
	,SL_DK
	,1
From	$(lnksrv_name).$(slxnk_dbname_src).dbo.DNPLHD n 
	left join DGC_SP_NPL_TB_HM d
		on n.CDDL_P_Code = d.Ma_Vat_Tu
		and n.cddl_hd_id = d.HD_ID
		and n.cddl_ma_hq_hd = d.Ma_HQ_HD
		and n.CDDL_NAM_DK_HD	= d.Nam_DK_HD
		and d.Loai = 1
Where	CDDL_MA_HQ_HD in ('02F3','03CC','03NK','03PL','03RR','03TG','43IH'
)
	and d.VT_ID is null

GO
print 'Insert Into DGC_SP_NPL_TB_HM'
Insert Into DGC_SP_NPL_TB_HM(
	VT_ID
	,Ma_HQ_HD
	,Ma_Cuc_HQ
	,Nam_DK_HD
	,HD_ID
	,Ma_Vat_Tu
	,Loai
	,Ten_Vat_Tu
	,Ma_HS
	,Ma_DVT
	,So_Luong_DK
	,Ma_NT
	,Tri_Gia
	,Ma_SP_GC
	,Nguon_Nguyen_Lieu -- moi them vao theo TT22
	)
Select
	CDDL_VT_ID
	,rtrim(CDDL_MA_HQ_HD)
	,CDDL_MA_CUC_HQ
	,CDDL_NAM_DK_HD
	,CDDL_HD_ID
	,CDDL_P_Code
	,2 as Loai
	,Ten_SP
	,isnull(HS_Code,' ') as HS_Code
	,CDDL_Ma_DVT
	,SL_DK
	,NgTe
	,TriGiaGC
	,Nhom_SP
	,0
From	$(lnksrv_name).$(slxnk_dbname_src).dbo.DSPGC n
left join DGC_SP_NPL_TB_HM d
	on n.CDDL_P_Code = d.Ma_Vat_Tu
	and n.cddl_hd_id = d.HD_ID
	and n.cddl_ma_hq_hd = d.Ma_HQ_HD
	and n.CDDL_NAM_DK_HD	= d.Nam_DK_HD
	and d.Loai = 2
Where	CDDL_MA_HQ_HD in ('02F3','03CC','03NK','03PL','03RR','03TG','43IH'
)
	and d.VT_ID is null

GO
print 'Insert From DDMuc Into DGC_DINH_MUC'
Insert Into DGC_DINH_MUC(
	DM_ID
	,HD_ID
	,Ma_HQ
	,Ma_Cuc_HQ
	,Nam_DK_HD
	,Ma_SP
	,Ma_Vat_Tu_SP
	,Ten_SP
	,Ma_DVT_SP
	,Ma_HS_SP
	,VT_ID_SP
	,Ma_NPL
	,Ma_Vat_Tu_NPL
	,Ten_NPL
	,Ma_DVT_NPL
	,Ma_HS_NPL
	,VT_ID_NPL
	,Dinh_Muc
	,Ti_Le_Hao_Hut
	,NgayNhap
	,Ghi_Chu
	,So_TN
	,Nam_TN
	,Kiem_Tra_TT
	,Sua_Sau_Kiem_Tra_TT
	,Dinh_Muc_Chung
	,Ngay_TN
	,MessageID
	)
select
	CDDL_DM_ID
	,CDDL_HD_ID
	,rtrim(CDDL_MA_HQ_HD)
	,CDDL_MA_CUC_HQ
	,CDDL_NAM_DK_HD
	,CDDL_SPP_Code
	,CDDL_SPP_Code as MA_VAT_TU_SP
	,Ten_SP
	,isnull(CDDL_MA_DVT_SP,' ') as MA_DVT_SP
	,SPHS_Code
	,isnull(CDDL_VT_ID_SP,0) as CDDL_VT_ID_SP
	,CDDL_NPLP_Code
	,CDDL_NPLP_Code as Ma_Vat_Tu_NPL
	,Ten_NPL
	,CDDL_Ma_DVT_NPL
	,NPLHS_Code
	,isnull(CDDL_VT_ID_NPL,0) as CDDL_VT_ID_NPL
	,DMGC
	,TLHH
	,NgayNhap
	,Ghi_Chu
	,So_TN
	,Nam_TN
	,ecsKiemTraTT
	,ecsSua_SauKTTT
	,DM_CHUNG
	,'01-01-1900' as Ngay_TN
	,0 as MessageID
From	$(lnksrv_name).$(slxnk_dbname_src).dbo.DDMuc
Where	CDDL_MA_HQ_HD in ('02F3','03CC','03NK','03PL','03RR','03TG','43IH'
)

GO
