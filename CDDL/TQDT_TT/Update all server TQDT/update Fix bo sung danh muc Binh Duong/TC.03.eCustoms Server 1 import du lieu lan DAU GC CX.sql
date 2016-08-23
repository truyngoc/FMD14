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
	,CDDL_Ma_DVT	--,Ma_DVT
	,SL_DK
	,1
From	$(lnksrv_name).$(slxnk_dbname_src).dbo.DNPLHD n 
	left join DGC_SP_NPL_TB_HM d
		on n.CDDL_P_Code = d.Ma_Vat_Tu
		and n.cddl_hd_id = d.HD_ID
		and n.cddl_ma_hq_hd = d.Ma_HQ_HD
		and n.CDDL_NAM_DK_HD	= d.Nam_DK_HD
		and d.Loai = 1
Where	CDDL_MA_HQ_HD in ('01B2','01AC','01BT','01D1','01D2','01D3','01IK','01NV','01M1','01M2','01SI','01TE02','01TE03','01E2','01E3','02B1','02AB01','02AB02','02AB03','02AB05','02CC','02H1','02H2','02H3','02CV','02K1','10BB','10BC','10BD','10BF','10BI','11B1','11B2','11BE','11BF','11G1','11G2','11BH','11PK','12B1','12B2','12BE','12H1','12H2','12BI','12F1','12F2','13BB','13BB01','13BC','13BD','13G1','13G2','15B1','15B2','15BC','15BD','15E1','15E2','15E3','15E4','15SI','18B1','18B2','20BC','20BD','20CD','20CE','20CF','20CG','27B1','27B2','27F1','27F2','27PC','27PC02','29BB','29BH','29CC','29PF','30BB','30BE','30BI','30CC','30F1','30F2','31BB','31BF','31CD','31D1','31D2','31D3','32BB','32BC','32CD','32VG','33A1','33A2','33CC','33CF','33PD','33PD02','34AB','34CC','34CE','34NH','35CB','35NC','37CB','37TC','38B1','38B2','38BC','38PD','40BB','40B1','40B2','40BC','40BC01','40PD','40D1','40D2','41BH','41CB','41CC','41PE','43CN','43IH01','43H2','45B1','45B2','45C1','45C2','45BD','45BE','47I1','47I2','47NM','48BC','48BD','48BE','48BF','48BF01','48F1','48F2','48BI','49BB','49BE','49BF','49BG','49C1','49C2','50BB','50BC','50BD','50BJ','50BK','50CE','51BE','51CB','51C2','51CH','51CI','53BC01','53BK','53CD','53CH','54CB','54CD','54PH','54PK','59BD','59CB','60BD','60CB','60C1','60C2','61BA','61BA01','61BB','61BB01','61PA','61PA02','53BC')
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
	,CDDL_Ma_DVT	--,Ma_DVT
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
Where	CDDL_MA_HQ_HD in ('01B2','01AC','01BT','01D1','01D2','01D3','01IK','01NV','01M1','01M2','01SI','01TE02','01TE03','01E2','01E3','02B1','02AB01','02AB02','02AB03','02AB05','02CC','02H1','02H2','02H3','02CV','02K1','10BB','10BC','10BD','10BF','10BI','11B1','11B2','11BE','11BF','11G1','11G2','11BH','11PK','12B1','12B2','12BE','12H1','12H2','12BI','12F1','12F2','13BB','13BB01','13BC','13BD','13G1','13G2','15B1','15B2','15BC','15BD','15E1','15E2','15E3','15E4','15SI','18B1','18B2','20BC','20BD','20CD','20CE','20CF','20CG','27B1','27B2','27F1','27F2','27PC','27PC02','29BB','29BH','29CC','29PF','30BB','30BE','30BI','30CC','30F1','30F2','31BB','31BF','31CD','31D1','31D2','31D3','32BB','32BC','32CD','32VG','33A1','33A2','33CC','33CF','33PD','33PD02','34AB','34CC','34CE','34NH','35CB','35NC','37CB','37TC','38B1','38B2','38BC','38PD','40BB','40B1','40B2','40BC','40BC01','40PD','40D1','40D2','41BH','41CB','41CC','41PE','43CN','43IH01','43H2','45B1','45B2','45C1','45C2','45BD','45BE','47I1','47I2','47NM','48BC','48BD','48BE','48BF','48BF01','48F1','48F2','48BI','49BB','49BE','49BF','49BG','49C1','49C2','50BB','50BC','50BD','50BJ','50BK','50CE','51BE','51CB','51C2','51CH','51CI','53BC01','53BK','53CD','53CH','54CB','54CD','54PH','54PK','59BD','59CB','60BD','60CB','60C1','60C2','61BA','61BA01','61BB','61BB01','61PA','61PA02','53BC')
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
	,CDDL_Ma_DVT_NPL	--,Ma_DVT
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
Where	CDDL_MA_HQ_HD in ('01B2','01AC','01BT','01D1','01D2','01D3','01IK','01NV','01M1','01M2','01SI','01TE02','01TE03','01E2','01E3','02B1','02AB01','02AB02','02AB03','02AB05','02CC','02H1','02H2','02H3','02CV','02K1','10BB','10BC','10BD','10BF','10BI','11B1','11B2','11BE','11BF','11G1','11G2','11BH','11PK','12B1','12B2','12BE','12H1','12H2','12BI','12F1','12F2','13BB','13BB01','13BC','13BD','13G1','13G2','15B1','15B2','15BC','15BD','15E1','15E2','15E3','15E4','15SI','18B1','18B2','20BC','20BD','20CD','20CE','20CF','20CG','27B1','27B2','27F1','27F2','27PC','27PC02','29BB','29BH','29CC','29PF','30BB','30BE','30BI','30CC','30F1','30F2','31BB','31BF','31CD','31D1','31D2','31D3','32BB','32BC','32CD','32VG','33A1','33A2','33CC','33CF','33PD','33PD02','34AB','34CC','34CE','34NH','35CB','35NC','37CB','37TC','38B1','38B2','38BC','38PD','40BB','40B1','40B2','40BC','40BC01','40PD','40D1','40D2','41BH','41CB','41CC','41PE','43CN','43IH01','43H2','45B1','45B2','45C1','45C2','45BD','45BE','47I1','47I2','47NM','48BC','48BD','48BE','48BF','48BF01','48F1','48F2','48BI','49BB','49BE','49BF','49BG','49C1','49C2','50BB','50BC','50BD','50BJ','50BK','50CE','51BE','51CB','51C2','51CH','51CI','53BC01','53BK','53CD','53CH','54CB','54CD','54PH','54PK','59BD','59CB','60BD','60CB','60C1','60C2','61BA','61BA01','61BB','61BB01','61PA','61PA02','53BC')

GO