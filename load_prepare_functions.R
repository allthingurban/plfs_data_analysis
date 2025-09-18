#Function to load and prepare data for PLFS

prepare_plfs_data=function(year_s){
  result <- switch(year_s,
                   "2017" = prepare_data_upto2019(load_plfs_data(year_s)),
                   "2018" = prepare_data_upto2019(load_plfs_data(year_s)),
                   "2019" = prepare_data_upto2019(load_plfs_data(year_s)),
                   "2020" = prepare_data_after2019(load_plfs_data(year_s)),
                   "2021" = prepare_data_after2019(load_plfs_data(year_s)),
                   "2022" = prepare_data_after2019(load_plfs_data(year_s)),
                   "2023" = prepare_data_after2019(load_plfs_data(year_s)),
                   stop("Operation not supported")
  )
  return(result)
}


# Method 2: Using switch() statement
load_plfs_data <- function(year_s) {
  result <- switch(year_s,
                   "2017" = read_parquet("./data/financial year/plfs_per_fv_2017.parquet"),
                   "2018" = read_parquet("./data/financial year/plfs_per_fv_2018.parquet"),
                   "2019" = read_parquet("./data/financial year/plfs_per_fv_2019.parquet"),
                   "2020" = read_parquet("./data/financial year/plfs_per_fv_2020.parquet"),
                   "2021" = read_parquet("./data/financial year/plfs_per_fv_2021.parquet"),
                   "2022" = read_parquet("./data/financial year/plfs_per_fv_2022.parquet"),
                   "2023" = read_parquet("./data/financial year/plfs_per_fv_2023.parquet"),
                   stop("Operation not supported")
  )
  return(result)
}


prepare_data_upto2019=function(plfs_per_data){
  return (
    plfs_per_data %>%
      mutate(
        nic_2digit_principal = substr(b5pt1q5_per_fv, 1, 2),
        nic_3digit_principal = substr(b5pt1q5_per_fv, 1, 3),
        nco_1digit_principal = substr(b5pt1q6_per_fv, 1, 1)
      ) %>%
      type.convert(as.is = T) %>%
      mutate(
        dummy_area = "All India",
        age_group = case_when(
          b4q6_per_fv < 15 ~ "0-15",
          b4q6_per_fv >= 15 &
            b4q6_per_fv < 30 ~ "15-29",
          b4q6_per_fv >= 30 &
            b4q6_per_fv < 50 ~ "30-49",
          b4q6_per_fv >= 50 &
            b4q6_per_fv < 60 ~ "50-59",
          b4q6_per_fv >= 60 ~ "60 and Above"
        ),
        labour_force = if_else(b5pt1q3_per_fv <= 81 |
                                 b5pt1q7_per_fv == 1, "Yes", "No"),
        worker_yn = if_else(b5pt1q3_per_fv < 81 |
                              b5pt1q7_per_fv == 1, "Yes", "No"),
        weight_f =  if_else(NSS_per_fv == NSC_per_fv, MULT_per_fv / 400, MULT_per_fv /
                              800),
        working_age_yn = age_group %in% c("15-29", "30-49", "50-59")
      )
  )
}

prepare_data_after2019=function(plfs_per_data){
  return (
    plfs_per_data %>%
      mutate(
        nic_2digit_principal = substr(b5pt1q5_perv1, 1, 2),
        nic_2digit_subsidiary = substr(b5pt2q5_perv1, 1, 2),
        nic_3digit_principal = substr(b5pt1q5_perv1, 1, 3),
        nco_1digit_principal = substr(b5pt1q6_perv1, 1, 1)
      ) %>%
      type.convert(as.is = T) %>%
      mutate(
        dummy_area = "All India",
        age_group = case_when(
          b4q6_perv1 < 15 ~ "0-15",
          b4q6_perv1 >= 15 &
            b4q6_perv1 < 30 ~ "15-29",
          b4q6_perv1 >= 30 &
            b4q6_perv1 < 50 ~ "30-49",
          b4q6_perv1 >= 50 &
            b4q6_perv1 < 60 ~ "50-59",
          b4q6_perv1 >= 60 ~ "60 and Above"
        ),
        labour_force = if_else(b5pt1q3_perv1 <= 81 |
                                 b5pt1q7_perv1 == 1, "Yes", "No"),
        worker_yn = if_else(b5pt1q3_perv1 < 81 |
                              b5pt1q7_perv1 == 1, "Yes", "No"),
        weight_f =  if_else(NSS_perv1 == NSC_perv1, mult_perv1 / 400, mult_perv1 /
                              800),
        working_age_yn = age_group %in% c("15-29", "30-49", "50-59")
      )
  )
}
