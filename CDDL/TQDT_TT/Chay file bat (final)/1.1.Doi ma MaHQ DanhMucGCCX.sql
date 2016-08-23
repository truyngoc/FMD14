if exists (select MaHQ
			From
			 (select distinct CDDL_MA_HQ_HD as MaHQ from DDMUC
	union
	select distinct CDDL_MA_HQ_HD as MaHQ from DHDGC
	union
	select distinct CDDL_MA_HQ_HD as MaHQ from DLOAISPGC
	union
	select distinct CDDL_MA_HQ_HD as MaHQ from DNPLHD
	union
	select distinct CDDL_MA_HQ_HD as MaHQ from DSPGC
	union
	select distinct CDDL_MA_HQ_HD as MaHQ from DThietBi
	union
	select distinct CDDL_MA_HQ_HD as MaHQ from ecsDHangMau
	union
	select distinct CDDL_MA_HQ as MaHQ from ecsCX_CT_TOKHAI
	union
	select distinct CDDL_MA_HQ as MaHQ from ecsCX_CT_TOKHAI_HANG
	union
	select distinct CDDL_MA_HQ as MaHQ from ecsCX_DM_HH_DUA_RA_D
	union
	select distinct CDDL_MA_HQ as MaHQ from ecsCX_DM_HH_DUA_VAO_D) a
			Where MaHQ in ('01AB02','01AB04','01AB05','01DD01','01DD03','01DD05','01PM','01PM01','01TE','01TE02','01TE03','02AB','02AB04','02IK02','02IK03','02IK04','02XF','02XF01','02XF02','11BB','11BB01','11BG','11BG01','15BB01','15BB02','15BE01','15BE02','15BE03','15BE04','18BA01','18BA02','18BA03','18BB','18BB01','20BB01','20BB02','27BB','27BB01','30CF','30CF01','31CD01','31CD02','31CD03','40BB01','40BB02','40PD01','40PD02','43IH','43IH02','43NK','43NK01','43NK02','45NF02','45NF03','47CD01','47CD02','47CI','47CI01','48BF03','48BF04','51CC','51CC01','61BA','61BA01','61PA','61PA02')
			)
			
BEgin
			update DDMuc 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)

			update DHDGC 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)

			update DLOAISPGC 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)

			update DNPLHD 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)

			update DSPGC 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)

			update DThietBi 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)

			update ecsDHangMau 
			set CDDL_MA_HQ_HD = dbo.Doi_Ma_HQ(CDDL_MA_HQ_HD)

			update ecsCX_CT_TOKHAI 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(CDDL_MA_HQ)

			update ecsCX_CT_TOKHAI_HANG 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(CDDL_MA_HQ)

			update ecsCX_DM_HH_DUA_RA_D 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(CDDL_MA_HQ)

			update ecsCX_DM_HH_DUA_VAO_D 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(CDDL_MA_HQ)

			update ecsCX_DinhMuc 
			set CDDL_MA_HQ = dbo.Doi_Ma_HQ(CDDL_MA_HQ)

end