use [DanhMucGCCX]
GO

print N'--===============Gia công - check bản ghi trùng'
select So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code, COUNT(*) as [SL NPL GC trùng] from DNPLHD 
group by So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code
having COUNT(*)>1

select So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code, COUNT(*) as [SL sản phẩm GC trùng] from DSPGC
group by So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code
having COUNT(*)>1

select So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code, COUNT(*) as [SL thiết bị GC trùng] from DThietBi
group by So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code
having COUNT(*)>1

select So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code, COUNT(*) as [SL hàng mẫu GC trùng] from ecsDHangMau
group by So_HD,Ma_HQHD,Ngay_Ky,DVGC,P_Code
having COUNT(*)>1

print N'--===============Chế xuất - check bản ghi trùng'
-- 1. kiem tra ban ghi trung trong cac bang co key bi thay doi
-- cai nay co the chay hoac ko, vi no chi de lay so lieu

 -- Danh mục hàng hóa đưa vào
select MA_HQTN, MA_DV_XN, MA_HANG, COUNT(*) [SL HH đưa vào trùng] from ecsCX_DM_HH_DUA_VAO_D
group by MA_HQTN, MA_DV_XN, MA_HANG
having COUNT(*) > 1

-- Danh mục hàng hóa đưa ra
select MA_HQTN, MA_DV_XN, MA_HANG, COUNT(*) [SL HH đưa ra trùng] from ecsCX_DM_HH_DUA_RA_D
group by MA_HQTN, MA_DV_XN, MA_HANG
having COUNT(*) > 1

-- Định mức
select MA_SP, MA_NPL, MA_HQ, MA_DV, COUNT(*) [SL trùng] from ecsCX_DinhMuc
group by MA_SP, MA_NPL, MA_HQ, MA_DV
having COUNT(*) > 1

-- CT Tờ khai
select SO_TN, NAM_TN, MA_HQTN, COUNT(*) [SL trùng] from ecsCX_CT_TOKHAI
group by SO_TN, NAM_TN, MA_HQTN
having COUNT(*) > 1

-- Hàng CT tờ khai
select SO_TN, NAM_TN, MA_HQTN, STT_HANG, COUNT(*) [SL trùng] from ecsCX_CT_TOKHAI_HANG
group by SO_TN, NAM_TN, MA_HQTN, STT_HANG
having COUNT(*) > 1
