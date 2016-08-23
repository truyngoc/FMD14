select MaHQ,
	case 
		when MaHQ IN('01B2','01AC','01BT','01D1','01D2','01D3','01IK','01NV','01M1','01M2','01SI','01E2','01E3','02B1','02AB01','02AB02','02AB03','02AB05','02CC','02H1','02H2','02H3','02CV','02K1','10BB','10BC','10BD','10BF','10BI','11B1','11B2','11BE','11BF','11G1','11G2','11BH','11PK','12B1','12B2','12BE','12H1','12H2','12BI','12F1','12F2','13BB','13BB01','13BC','13BD','13G1','13G2','15B1','15B2','15BC','15BD','15E1','15E2','15E3','15E4','15SI','18B1','18B2','20BC','20BD','20CD','20CE','20CF','20CG','27B1','27B2','27F1','27F2','27PC02','29BB','29BH','29CC','29PF','30BB','30BE','30BI','30CC','30F1','30F2','31BB','31BF','31D1','31D2','31D3','32BB','32BC','32CD','32VG','33A1','33A2','33CC','33CF','33PD02','34AB','34CC','34CE','34NH','35CB','35NC','37CB','37TC','38B1','38B2','38BC','38PD','40BB','40B1','40B2','40BC','40BC01','40PD','40D1','40D2','41BH','41CB','41CC','41PE','43CN','43IH01','43H2','45B1','45B2','45C1','45C2','45BD','45BE','47I1','47I2','47NM','48BC','48BD','48BE','48BF01','48F1','48F2','48BI','49BB','49BE','49BF','49BG','49C1','49C2','50BB','50BC','50BD','50BJ','50BK','50CE','51BE','51CB','51C2','51CH','51CI','53BC01','53BK','53CD','53CH','54CB','54CD','54PH','54PK','59BD','59CB','60BD','60CB','60C1','60C2','61A1','61A2','61B1','61B2','61PA','61PA02','27PC') 
			then 'Server 1: 10.224.130.123' 
		when MaHQ IN('01B1','01B3','01PJ','01E1','02B2','02IK01','02K2','02K3','03CD','18A3','18ID','20B1','20B2','27NJ','27PE','32BD','34NG','43NG','45F1','45F2','48CG','51C1','01TE') 
			then 'Server 2: 10.224.130.133' 
		when MaHQ IN('01PL','01PO','01PR','02CX','02DS','02F1','02F2','03CE','03EE','18BC','43K1','43K2','43K3','47D1','47D2','47D3') 
			then 'Server 3: 10.224.130.143' 
		when MaHQ IN('02F3','03CC','03NK','03PL','03RR','03TG','43IH') 
			then 'Server 4: 10.224.130.153' 
		when MaHQ IN('18A2','43PB','47NB','47NB01','47NF','47NG') 
			then 'Server 5: 10.224.130.163' 
		when MaHQ IN('01TE01','03PJ','18A1','43ND','43NF') 
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