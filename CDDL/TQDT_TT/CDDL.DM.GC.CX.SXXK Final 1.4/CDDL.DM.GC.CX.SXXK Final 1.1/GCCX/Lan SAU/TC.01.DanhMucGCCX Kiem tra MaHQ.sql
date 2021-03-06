select MaHQ,
	case 
		when MaHQ IN('01AB04','01AC','01BT','01DD01','01DD03','01DD05','01IK','01NV','01PM','01PM01','01SI','01TE02','01TE03','02AB01','02AB02','02AB03','02AB05','02CC','02CH01','02CV','02IK02','10BB','10BC','10BD','10BF','10BI','11BB01','11BE','11BF','11BG','11BG01','11BH','11PK','12BB01','12BE','12BH','12BH01','12BI','12PF','12PF01','13BB','13BB01','13BC','13BD','13SG01','15BB01','15BB02','15BC','15BD','15BE01','15BE02','15BE03','15BE04','15SI','18BB','20BC','20BD','20CD','20CE','20CF','20CG','27BB','27BB01','27CF01','27PC02','29BB','29BH','29CC','29PF','30BB','30BE','30BI','30CC','30CF','30CF01','31BB','31BF','31CD01','31CD02','31CD03','32BB','32BC','32CD','32VG','33BA01','33CC','33CF','33PD02','34AB','34CC','34CE','34NH','35CB','35NC','37CB','37TC','38BB01','38BC','38PD','40BB','40BB01','40BB02','40BC','40BC01','40PD','40PD01','40PD02','41BH','41CB','41CC','41PE','43CN','43IH01','43IH02','45BB01','45BC01','45BD','45BE','47CI','47CI01','47NM','48BC','48BD','48BE','48BF01','48BF03','48BF04','48BI','49BB','49BE','49BF','49BG','49CC01','50BB','50BC','50BD','50BJ','50BK','50CE','51BE','51CB','51CC01','51CH','51CI','53BC01','53BK','53CD','53CH','54CB','54CD','54PH','54PK','59BD','59CB','60BD','60CB','60NC','61BA','61BA01','61BB','61BB01','61PA','61PA02') 
			then 'Server 1: 10.224.130.123' 
		when MaHQ IN('01AB02','01AB05','01PJ','01TE','02AB04','02IK01','02IK03','02IK04','03CD','18BA03','18ID','20BB01','20BB02','27NJ','27PE','32BD','34NG','43NG','45NF02','45NF03','48CG','51CC') 
			then 'Server 2: 10.224.130.133' 
		when MaHQ IN('01PL','01PO','01PR','02CX','02DS','02XF01','03CE','03EE','18BC','43NK','43NK01','43NK02','47CD01','47CD02') 
			then 'Server 3: 10.224.130.143' 
		when MaHQ IN('02XF02','03CC','03NK','03PL','03RR','03TG','43IH') 
			then 'Server 4: 10.224.130.153' 
		when MaHQ IN('18BA02','43PB','47NB','47NB01','47NF','47NG') 
			then 'Server 5: 10.224.130.163' 
		when MaHQ IN('01TE01','03PJ','18BA01','43ND','43NF') 
			then 'Server 6: 10.224.130.173' 
		when MaHQ IN('02PJ','02XE','03PA','03PA01','47XE') 
			then 'Server 7: 10.224.130.183' 
		when MaHQ IN('02CI02') 
			then 'Server 8: 10.224.130.193' 
		when MaHQ IN('02PG') 
			then 'Server 9: 10.224.130.203' 
	end as server
From (select distinct CDDL_MA_HQ_HD as MaHQ from DDMUC
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
	select distinct CDDL_MA_HQ as MaHQ from ecsCX_DM_HH_DUA_VAO_D
	) a