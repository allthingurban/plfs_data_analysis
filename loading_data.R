library(foreign)


write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2018-19/HHRV-2018-19.dta"),"./data/financial year/plfs_hh_rv_2018.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2018-19/HHV1_2018-19.dta"),"./data/financial year/plfs_hh_v1_2018.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2018-19/PerRV_2018-19.dta"),"./data/financial year/plfs_per_rv_2018.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2018-19/PerV1_2018-19.dta"),"./data/financial year/plfs_per_fv_2018.parquet")


#2019-20
write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2019-20/HHRV_2019-20.dta"),"./data/financial year/plfs_hh_rv_2019.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2019-20/HHFV_2019-20.dta"),"./data/financial year/plfs_hh_v1_2019.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2019-20/PERFV_2019-20.dta"),"./data/financial year/plfs_per_fv_2019.parquet")


#2020-21

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/DDI-IND-CSO-PLFS-2020-21/hhrv.dta"),"./data/financial year/plfs_hh_rv_2020.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/DDI-IND-CSO-PLFS-2020-21/hhv1.dta"),"./data/financial year/plfs_hh_v1_2020.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/DDI-IND-CSO-PLFS-2020-21/perv1.dta"),"./data/financial year/plfs_per_fv_2020.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/DDI-IND-CSO-PLFS-2020-21/perrv.dta"),"./data/financial year/plfs_per_rv_2020.parquet")

#2021-22
write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2021-22/hhrv.dta"),"./data/financial year/plfs_hh_rv_2021.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2021-22/hhv1.dta"),"./data/financial year/plfs_hh_v1_2021.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2021-22/perv1.dta"),"./data/financial year/plfs_per_fv_2021.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2021-22/perrv.dta"),"./data/financial year/plfs_per_rv_2021.parquet")

#2022-23
write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2022-23/hhrv.dta"),"./data/financial year/plfs_hh_rv_2022.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2022-23/hhv1.dta"),"./data/financial year/plfs_hh_v1_2022.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2022-23/perv1.dta"),"./data/financial year/plfs_per_fv_2022.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2022-23/perrv.dta"),"./data/financial year/plfs_per_rv_2022.parquet")


#2023-24
write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2023-24/hhrv.dta"),"./data/financial year/plfs_hh_rv_2023.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2023-24/hhv1.dta"),"./data/financial year/plfs_hh_v1_2023.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2023-24/perv1.dta"),"./data/financial year/plfs_per_fv_2023.parquet")

write_parquet(read.dta("/media/abhinav/Datahub/Survey/PLFS/PLFS_Data_2023-24/perrv.dta"),"./data/financial year/plfs_per_rv_2023.parquet")

