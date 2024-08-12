!/bin/R
# ASAR_MH_EB_India_calc_india_LE.R
# By: Anukrati Nigam

################################################################################################
## Script to calculate MVYLL based on highest life expectancy in any Indian state in 2019 for ##
## all age groups for 28 States and 3 union territories in India and both sexes.              ##
################################################################################################


### As compared to world LE
#Switzerland had the highest life expectancy in 2019-20 - Males = 81.75 and Females = 85.27
#India highest male life expectancy is 71.24 in Delhi and Goa, and highest female life expectancy in 77.82 in Delhi and Goa 
# State GDP

State_GDP <- read_excel("ASAR/Mental_health_econ_burden_india/13_MAY_23_MV_NHA_state_gdp.xlsx", 
                        skip = 1)
State_GDP <- na.omit(State_GDP)

# State wise and gender wise k values for each age category

# Males
LE_Male_10_to_14 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_10_to_14_years")
LE_Male_10_to_14$k_le_in <- 71.24 - 12
LE_Male_15_to_19 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_15_to_19_years")
LE_Male_15_to_19$k_le_in<- 71.24 - 17
LE_Male_20_to_24 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_20_to_24_years")
LE_Male_20_to_24$k_le_in <- 71.24 - 22
LE_Male_25_to_29 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_25_to_29_years")
LE_Male_25_to_29$k_le_in <- 71.24 - 27
LE_Male_30_to_34 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_30_to_34_years")
LE_Male_30_to_34$k_le_in <- 71.24 - 32
LE_Male_35_to_39 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_35_to_39_years")
LE_Male_35_to_39$k_le_in <- 71.24 - 37
LE_Male_40_to_44 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_40_to_44_years")
LE_Male_40_to_44$k_le_in <- 71.24 - 42
LE_Male_45_to_49 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_45_to_49_years")
LE_Male_45_to_49$k_le_in <- 71.24 - 47
LE_Male_50_to_54 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_50_to_54_years")
LE_Male_50_to_54$k_le_in <- 71.24 - 52
LE_Male_55_to_59 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_55_to_59_years")
LE_Male_55_to_59$k_le_in <- 71.24 - 57
LE_Male_60_to_64 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_60_to_64_years")
LE_Male_60_to_64$k_le_in <- 71.24 - 62
LE_Male_65_to_69 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_65_to_69_years")
LE_Male_65_to_69$k_le_in <- 71.24 - 67
LE_Male_70_to_74 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_70_to_74_years")
LE_Male_70_to_74$k_le_in <- 71.24 - 72
LE_Male_75_to_79 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_75_to_79_years")
LE_Male_75_to_79$k_le_in <- 71.24 - 77
LE_Male_80_to_84 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_80_to_84_years")
LE_Male_80_to_84$k_le_in <- 71.24 - 82
LE_Male_85_to_89 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_85_to_89_years")
LE_Male_85_to_89$k_le_in <- 71.24 - 87
LE_Male_90_to_94 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_90_to_94_years")
LE_Male_90_to_94$k_le_in <- 71.24 - 92
LE_Male_95_onwards <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Male_95+")
LE_Male_95_onwards$k_le_in <- 71.24 - 97


#Female LE
LE_Female_10_to_14 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_10_to_14")
LE_Female_10_to_14$k_le_in <- 77.82 - 12
LE_Female_15_to_19 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_15_to_19")
LE_Female_15_to_19$k_le_in <- 77.82 - 17
LE_Female_20_to_24 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_20_to_24")
LE_Female_20_to_24$k_le_in <- 77.82 - 22
LE_Female_25_to_29 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_25_to_29")
LE_Female_25_to_29$k_le_in <- 77.82 - 27
LE_Female_30_to_34 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_30_to_34")
LE_Female_30_to_34$k_le_in <- 77.82 - 32
LE_Female_35_to_39 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_35_to_39")
LE_Female_35_to_39$k_le_in <- 77.82 - 37
LE_Female_40_to_44 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_40_to_44")
LE_Female_40_to_44$k_le_in <- 77.82 - 42
LE_Female_45_to_49 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_45_to_49")
LE_Female_45_to_49$k_le_in <- 77.82 - 47
LE_Female_50_to_54 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_50_to_54")
LE_Female_50_to_54$k_le_in <- 77.82 - 52
LE_Female_55_to_59 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_55_to_59")
LE_Female_55_to_59$k_le_in <- 77.82 - 57
LE_Female_60_to_64 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_60_to_64")
LE_Female_60_to_64$k_le_in <- 77.82 - 62
LE_Female_65_to_69 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_65_to_69")
LE_Female_65_to_69$k_le_in <- 77.82 - 67
LE_Female_70_to_74 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_70_to_74")
LE_Female_70_to_74$k_le_in <- 77.82 - 72
LE_Female_75_to_79 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_75_to_79")
LE_Female_75_to_79$k_le_in <- 77.82 - 77
LE_Female_80_to_84 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_80_to_84")
LE_Female_80_to_84$k_le_in <- 77.82 - 82
LE_Female_85_to_89 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_85_to_89")
LE_Female_85_to_89$k_le_in <- 77.82 - 87
LE_Female_90_to_94 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_90_to_94")
LE_Female_90_to_94$k_le_in <- 77.82 - 92
LE_Female_95_onwards <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                   sheet = "Female_95+")
LE_Female_95_onwards$k_le_in <- 77.82 - 97


#### Functions for calculation of mvyll and tmvyll.

calc_mvyll <- function(r,k,SD, NGDPC){
  mvyll = 0
  if(k>0){
    for(i in 1:trunc(k)){
      mvyll = mvyll + ((1/((1+r)^(i))) * NGDPC * SD)
    }
    return(mvyll)} else if(k<0){ 
      for(i in trunc(k):-1){
        mvyll = mvyll + ((1/((1+r)^(i))) * NGDPC * SD)
      }
      return(mvyll)}
}

calc_tmvyll <- function( SD_10_14, SD_15_19,
                         SD_20_24, SD_25_29, SD_30_34,
                         SD_35_39, SD_40_44, SD_45_49,
                         SD_50_54, SD_55_59, SD_60_64,
                         SD_65_69, SD_70_74, SD_75_79,
                         SD_80_84, SD_85_89, SD_90_94,
                         SD_95_onwards, 
                         SD_10_14_lb, SD_15_19_lb,
                         SD_20_24_lb, SD_25_29_lb, SD_30_34_lb,
                         SD_35_39_lb, SD_40_44_lb, SD_45_49_lb,
                         SD_50_54_lb, SD_55_59_lb, SD_60_64_lb,
                         SD_65_69_lb, SD_70_74_lb, SD_75_79_lb,
                         SD_80_84_lb, SD_85_89_lb, SD_90_94_lb,
                         SD_95_onwards_lb,
                         SD_10_14_ub, SD_15_19_ub,
                         SD_20_24_ub, SD_25_29_ub, SD_30_34_ub,
                         SD_35_39_ub, SD_40_44_ub, SD_45_49_ub,
                         SD_50_54_ub, SD_55_59_ub, SD_60_64_ub,
                         SD_65_69_ub, SD_70_74_ub, SD_75_79_ub,
                         SD_80_84_ub, SD_85_89_ub, SD_90_94_ub,
                         SD_95_onwards_ub,
                         NGDP, r, k_10_14, k_15_19,
                         k_20_24, k_25_29, k_30_34,
                         k_35_39, k_40_44, k_45_49,
                         k_50_54, k_55_59, k_60_64,
                         k_65_69, k_70_74, k_75_79,
                         k_80_84, k_85_89, k_90_94,
                         k_95_onwards){
  tmvyll = 0
  tmvyll_lb = 0
  tmvyll_ub = 0
  mvyll_10_14 = calc_mvyll(r, k = k_10_14, SD = SD_10_14, NGDPC = NGDP)
  mvyll_15_19 = calc_mvyll(r, k = k_15_19, SD = SD_15_19, NGDPC = NGDP)
  mvyll_20_24 = calc_mvyll(r, k = k_20_24, SD = SD_20_24, NGDPC = NGDP)
  mvyll_25_29 = calc_mvyll(r, k = k_25_29, SD = SD_25_29, NGDPC = NGDP)
  mvyll_30_34 = calc_mvyll(r, k = k_30_34, SD = SD_30_34, NGDPC = NGDP)
  mvyll_35_39 = calc_mvyll(r, k = k_35_39, SD = SD_35_39, NGDPC = NGDP)
  mvyll_40_44 = calc_mvyll(r, k = k_40_44, SD = SD_40_44, NGDPC = NGDP)
  mvyll_45_49 = calc_mvyll(r, k = k_45_49, SD = SD_45_49, NGDPC = NGDP)
  mvyll_50_54 = calc_mvyll(r, k = k_50_54, SD = SD_50_54, NGDPC = NGDP)
  mvyll_55_59 = calc_mvyll(r, k = k_55_59, SD = SD_55_59, NGDPC = NGDP)
  mvyll_60_64 = calc_mvyll(r, k = k_60_64, SD = SD_60_64, NGDPC = NGDP)
  mvyll_65_69 = calc_mvyll(r, k = k_65_69, SD = SD_65_69, NGDPC = NGDP)
  mvyll_70_74 = calc_mvyll(r, k = k_70_74, SD = SD_70_74, NGDPC = NGDP)
  mvyll_75_79 = calc_mvyll(r, k = k_75_79, SD = SD_75_79, NGDPC = NGDP)
  mvyll_80_84 = calc_mvyll(r, k = k_80_84, SD = SD_80_84, NGDPC = NGDP)
  mvyll_85_89 = calc_mvyll(r, k = k_85_89, SD = SD_85_89, NGDPC = NGDP)
  mvyll_90_94 = calc_mvyll(r, k= k_90_94, SD = SD_90_94, NGDPC = NGDP)
  mvyll_95_onwards = calc_mvyll(r, k = k_95_onwards, SD = SD_95_onwards, NGDPC = NGDP)
  
  #Lower bound
  mvyll_10_14_lb = calc_mvyll(r, k = k_10_14, SD = SD_10_14_lb, NGDPC = NGDP)
  mvyll_15_19_lb = calc_mvyll(r, k = k_15_19, SD = SD_15_19_lb, NGDPC = NGDP)
  mvyll_20_24_lb = calc_mvyll(r, k = k_20_24, SD = SD_20_24_lb, NGDPC = NGDP)
  mvyll_25_29_lb = calc_mvyll(r, k = k_25_29, SD = SD_25_29_lb, NGDPC = NGDP)
  mvyll_30_34_lb = calc_mvyll(r, k = k_30_34, SD = SD_30_34_lb, NGDPC = NGDP)
  mvyll_35_39_lb = calc_mvyll(r, k = k_35_39, SD = SD_35_39_lb, NGDPC = NGDP)
  mvyll_40_44_lb = calc_mvyll(r, k = k_40_44, SD = SD_40_44_lb, NGDPC = NGDP)
  mvyll_45_49_lb = calc_mvyll(r, k = k_45_49, SD = SD_45_49_lb, NGDPC = NGDP)
  mvyll_50_54_lb = calc_mvyll(r, k = k_50_54, SD = SD_50_54_lb, NGDPC = NGDP)
  mvyll_55_59_lb = calc_mvyll(r, k = k_55_59, SD = SD_55_59_lb, NGDPC = NGDP)
  mvyll_60_64_lb = calc_mvyll(r, k = k_60_64, SD = SD_60_64_lb, NGDPC = NGDP)
  mvyll_65_69_lb = calc_mvyll(r, k = k_65_69, SD = SD_65_69_lb, NGDPC = NGDP)
  mvyll_70_74_lb = calc_mvyll(r, k = k_70_74, SD = SD_70_74_lb, NGDPC = NGDP)
  mvyll_75_79_lb = calc_mvyll(r, k = k_75_79, SD = SD_75_79_lb, NGDPC = NGDP)
  mvyll_80_84_lb = calc_mvyll(r, k = k_80_84, SD = SD_80_84_lb, NGDPC = NGDP)
  mvyll_85_89_lb = calc_mvyll(r, k = k_85_89, SD = SD_85_89_lb, NGDPC = NGDP)
  mvyll_90_94_lb = calc_mvyll(r, k= k_90_94, SD = SD_90_94_lb, NGDPC = NGDP)
  mvyll_95_onwards_lb = calc_mvyll(r, k = k_95_onwards, SD = SD_95_onwards_lb, NGDPC = NGDP)
  
  #Upper bound
  mvyll_10_14_ub = calc_mvyll(r, k = k_10_14, SD = SD_10_14_ub, NGDPC = NGDP)
  mvyll_15_19_ub = calc_mvyll(r, k = k_15_19, SD = SD_15_19_ub, NGDPC = NGDP)
  mvyll_20_24_ub = calc_mvyll(r, k = k_20_24, SD = SD_20_24_ub, NGDPC = NGDP)
  mvyll_25_29_ub = calc_mvyll(r, k = k_25_29, SD = SD_25_29_ub, NGDPC = NGDP)
  mvyll_30_34_ub = calc_mvyll(r, k = k_30_34, SD = SD_30_34_ub, NGDPC = NGDP)
  mvyll_35_39_ub = calc_mvyll(r, k = k_35_39, SD = SD_35_39_ub, NGDPC = NGDP)
  mvyll_40_44_ub = calc_mvyll(r, k = k_40_44, SD = SD_40_44_ub, NGDPC = NGDP)
  mvyll_45_49_ub = calc_mvyll(r, k = k_45_49, SD = SD_45_49_ub, NGDPC = NGDP)
  mvyll_50_54_ub = calc_mvyll(r, k = k_50_54, SD = SD_50_54_ub, NGDPC = NGDP)
  mvyll_55_59_ub = calc_mvyll(r, k = k_55_59, SD = SD_55_59_ub, NGDPC = NGDP)
  mvyll_60_64_ub = calc_mvyll(r, k = k_60_64, SD = SD_60_64_ub, NGDPC = NGDP)
  mvyll_65_69_ub = calc_mvyll(r, k = k_65_69, SD = SD_65_69_ub, NGDPC = NGDP)
  mvyll_70_74_ub = calc_mvyll(r, k = k_70_74, SD = SD_70_74_ub, NGDPC = NGDP)
  mvyll_75_79_ub = calc_mvyll(r, k = k_75_79, SD = SD_75_79_ub, NGDPC = NGDP)
  mvyll_80_84_ub = calc_mvyll(r, k = k_80_84, SD = SD_80_84_ub, NGDPC = NGDP)
  mvyll_85_89_ub = calc_mvyll(r, k = k_85_89, SD = SD_85_89_ub, NGDPC = NGDP)
  mvyll_90_94_ub = calc_mvyll(r, k= k_90_94, SD = SD_90_94_ub, NGDPC = NGDP)
  mvyll_95_onwards_ub = calc_mvyll(r, k = k_95_onwards, SD = SD_95_onwards_ub, NGDPC = NGDP)
  
  tmvyll = sum(mvyll_10_14,mvyll_15_19,mvyll_20_24,mvyll_25_29,
               mvyll_30_34,mvyll_35_39,mvyll_40_44,mvyll_45_49,
               mvyll_50_54,mvyll_55_59,mvyll_60_64,mvyll_65_69,
               mvyll_70_74,mvyll_75_79,mvyll_80_84,mvyll_85_89,
               mvyll_90_94,mvyll_95_onwards)
  tmvyll_lb = sum(mvyll_10_14_lb,mvyll_15_19_lb,mvyll_20_24_lb,mvyll_25_29_lb,
                  mvyll_30_34_lb,mvyll_35_39_lb,mvyll_40_44_lb,mvyll_45_49_lb,
                  mvyll_50_54_lb,mvyll_55_59_lb,mvyll_60_64_lb,mvyll_65_69_lb,
                  mvyll_70_74_lb,mvyll_75_79_lb,mvyll_80_84_lb,mvyll_85_89_lb,
                  mvyll_90_94_lb,mvyll_95_onwards_lb)
  tmvyll_ub = sum(mvyll_10_14_ub,mvyll_15_19_ub,mvyll_20_24_ub,mvyll_25_29_ub,
                  mvyll_30_34_ub,mvyll_35_39_ub,mvyll_40_44_ub,mvyll_45_49_ub,
                  mvyll_50_54_ub,mvyll_55_59_ub,mvyll_60_64_ub,mvyll_65_69_ub,
                  mvyll_70_74_ub,mvyll_75_79_ub,mvyll_80_84_ub,mvyll_85_89_ub,
                  mvyll_90_94_ub,mvyll_95_onwards_ub)
  temp_tmvyll_df = data.frame(tmvyll, mvyll_10_14,mvyll_15_19,mvyll_20_24,mvyll_25_29,
                              mvyll_30_34,mvyll_35_39,mvyll_40_44,mvyll_45_49,
                              mvyll_50_54,mvyll_55_59,mvyll_60_64,mvyll_65_69,
                              mvyll_70_74,mvyll_75_79,mvyll_80_84,mvyll_85_89,
                              mvyll_90_94,mvyll_95_onwards,
                              tmvyll_lb, mvyll_10_14_lb,mvyll_15_19_lb,mvyll_20_24_lb,mvyll_25_29_lb,
                              mvyll_30_34_lb,mvyll_35_39_lb,mvyll_40_44_lb,mvyll_45_49_lb,
                              mvyll_50_54_lb,mvyll_55_59_lb,mvyll_60_64_lb,mvyll_65_69_lb,
                              mvyll_70_74_lb,mvyll_75_79_lb,mvyll_80_84_lb,mvyll_85_89_lb,
                              mvyll_90_94_lb,mvyll_95_onwards_lb,
                              tmvyll_ub, mvyll_10_14_ub,mvyll_15_19_ub,mvyll_20_24_ub,mvyll_25_29_ub,
                              mvyll_30_34_ub,mvyll_35_39_ub,mvyll_40_44_ub,mvyll_45_49_ub,
                              mvyll_50_54_ub,mvyll_55_59_ub,mvyll_60_64_ub,mvyll_65_69_ub,
                              mvyll_70_74_ub,mvyll_75_79_ub,mvyll_80_84_ub,mvyll_85_89_ub,
                              mvyll_90_94_ub,mvyll_95_onwards_ub
  )
  return(temp_tmvyll_df)
}

state_list <- c("Andhra Pradesh","Arunachal Pradesh","Assam","Bihar",
                "Chhattisgarh","Delhi","Goa","Gujarat","Haryana",
                "Himachal Pradesh","Jammu and Kashmir and Ladakh","Jharkhand",
                "Karnataka","Kerala","Madhya Pradesh","Maharashtra","Manipur",
                "Meghalaya","Mizoram","Nagaland","Odisha","Puducherry",
                "Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana",
                "Tripura","Uttar Pradesh","Uttarakhand","West Bengal")

########################
# r value is 3 percent #
########################

tmvyll_df_3_kle_in <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                              mvyll_10_14 = numeric(),mvyll_15_19 = numeric(),mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                              mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                              mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),mvyll_65_69 = numeric(),
                              mvyll_70_74 = numeric(),mvyll_75_79 = numeric(),mvyll_80_84 = numeric(),mvyll_85_89 = numeric(),
                              mvyll_90_94 = numeric(),mvyll_95_onwards = numeric(),tmvyll_lb = numeric(), 
                              mvyll_10_14_lb = numeric(),mvyll_15_19_lb = numeric(),mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                              mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                              mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),mvyll_65_69_lb = numeric(),
                              mvyll_70_74_lb = numeric(),mvyll_75_79_lb = numeric(),mvyll_80_84_lb = numeric(),mvyll_85_89_lb = numeric(),
                              mvyll_90_94_lb = numeric(),mvyll_95_onwards_lb = numeric(),tmvyll_ub = numeric(), 
                              mvyll_10_14_ub = numeric(),mvyll_15_19_ub = numeric(),mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                              mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                              mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric(),mvyll_65_69_ub = numeric(),
                              mvyll_70_74_ub = numeric(),mvyll_75_79_ub = numeric(),mvyll_80_84_ub = numeric(),mvyll_85_89_ub = numeric(),
                              mvyll_90_94_ub = numeric(),mvyll_95_onwards_ub = numeric())

for( s in state_list){
  tmvyll_df_m_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_10_14 = numeric(),mvyll_15_19 = numeric(),mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),mvyll_65_69 = numeric(),
                                 mvyll_70_74 = numeric(),mvyll_75_79 = numeric(),mvyll_80_84 = numeric(),mvyll_85_89 = numeric(),
                                 mvyll_90_94 = numeric(),mvyll_95_onwards = numeric(),tmvyll_lb = numeric(), 
                                 mvyll_10_14_lb = numeric(),mvyll_15_19_lb = numeric(),mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                                 mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                                 mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),mvyll_65_69_lb = numeric(),
                                 mvyll_70_74_lb = numeric(),mvyll_75_79_lb = numeric(),mvyll_80_84_lb = numeric(),mvyll_85_89_lb = numeric(),
                                 mvyll_90_94_lb = numeric(),mvyll_95_onwards_lb = numeric(),tmvyll_ub = numeric(), 
                                 mvyll_10_14_ub = numeric(),mvyll_15_19_ub = numeric(),mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                                 mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                                 mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric(),mvyll_65_69_ub = numeric(),
                                 mvyll_70_74_ub = numeric(),mvyll_75_79_ub = numeric(),mvyll_80_84_ub = numeric(),mvyll_85_89_ub = numeric(),
                                 mvyll_90_94_ub = numeric(),mvyll_95_onwards_ub = numeric())
  tmvyll_df_f_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_10_14 = numeric(),mvyll_15_19 = numeric(),mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),mvyll_65_69 = numeric(),
                                 mvyll_70_74 = numeric(),mvyll_75_79 = numeric(),mvyll_80_84 = numeric(),mvyll_85_89 = numeric(),
                                 mvyll_90_94 = numeric(),mvyll_95_onwards = numeric(),tmvyll_lb = numeric(), 
                                 mvyll_10_14_lb = numeric(),mvyll_15_19_lb = numeric(),mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                                 mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                                 mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),mvyll_65_69_lb = numeric(),
                                 mvyll_70_74_lb = numeric(),mvyll_75_79_lb = numeric(),mvyll_80_84_lb = numeric(),mvyll_85_89_lb = numeric(),
                                 mvyll_90_94_lb = numeric(),mvyll_95_onwards_lb = numeric(),tmvyll_ub = numeric(), 
                                 mvyll_10_14_ub = numeric(),mvyll_15_19_ub = numeric(),mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                                 mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                                 mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric(),mvyll_65_69_ub = numeric(),
                                 mvyll_70_74_ub = numeric(),mvyll_75_79_ub = numeric(),mvyll_80_84_ub = numeric(),mvyll_85_89_ub = numeric(),
                                 mvyll_90_94_ub = numeric(),mvyll_95_onwards_ub = numeric())
  r_val = 0.03
  
  #K for males
  k_male_10_14_state = LE_Male_10_to_14$k_le_in[which(LE_Male_10_to_14$Location == s)]
  k_male_15_19_state = LE_Male_15_to_19$k_le_in[which(LE_Male_15_to_19$Location == s)]
  k_male_20_24_state = LE_Male_20_to_24$k_le_in[which(LE_Male_20_to_24$Location == s)]
  k_male_25_29_state = LE_Male_25_to_29$k_le_in[which(LE_Male_25_to_29$Location == s)]
  k_male_30_34_state = LE_Male_30_to_34$k_le_in[which(LE_Male_30_to_34$Location == s)]
  k_male_35_39_state = LE_Male_35_to_39$k_le_in[which(LE_Male_35_to_39$Location == s)]
  k_male_40_44_state = LE_Male_40_to_44$k_le_in[which(LE_Male_40_to_44$Location == s)]
  k_male_45_49_state = LE_Male_45_to_49$k_le_in[which(LE_Male_45_to_49$Location == s)]
  k_male_50_54_state = LE_Male_50_to_54$k_le_in[which(LE_Male_50_to_54$Location == s)]
  k_male_55_59_state = LE_Male_55_to_59$k_le_in[which(LE_Male_55_to_59$Location == s)]
  k_male_60_64_state = LE_Male_60_to_64$k_le_in[which(LE_Male_60_to_64$Location == s)]
  k_male_65_69_state = LE_Male_65_to_69$k_le_in[which(LE_Male_65_to_69$Location == s)]
  k_male_70_74_state = LE_Male_70_to_74$k_le_in[which(LE_Male_70_to_74$Location == s)]
  k_male_75_79_state = LE_Male_75_to_79$k_le_in[which(LE_Male_75_to_79$Location == s)]
  k_male_80_84_state = LE_Male_80_to_84$k_le_in[which(LE_Male_80_to_84$Location == s)]
  k_male_85_89_state = LE_Male_85_to_89$k_le_in[which(LE_Male_85_to_89$Location == s)]
  k_male_90_94_state = LE_Male_90_to_94$k_le_in[which(LE_Male_90_to_94$Location == s)]
  k_male_95_onwards_state = LE_Male_95_onwards$k_le_in[which(LE_Male_95_onwards$Location == s)]
  
  #K for females
  k_female_10_14_state = LE_Female_10_to_14$k_le_in[which(LE_Female_10_to_14$Location == s)]
  k_female_15_19_state = LE_Female_15_to_19$k_le_in[which(LE_Female_15_to_19$Location == s)]
  k_female_20_24_state = LE_Female_20_to_24$k_le_in[which(LE_Female_20_to_24$Location == s)]
  k_female_25_29_state = LE_Female_25_to_29$k_le_in[which(LE_Female_25_to_29$Location == s)]
  k_female_30_34_state = LE_Female_30_to_34$k_le_in[which(LE_Female_30_to_34$Location == s)]
  k_female_35_39_state = LE_Female_35_to_39$k_le_in[which(LE_Female_35_to_39$Location == s)]
  k_female_40_44_state = LE_Female_40_to_44$k_le_in[which(LE_Female_40_to_44$Location == s)]
  k_female_45_49_state = LE_Female_45_to_49$k_le_in[which(LE_Female_45_to_49$Location == s)]
  k_female_50_54_state = LE_Female_50_to_54$k_le_in[which(LE_Female_50_to_54$Location == s)]
  k_female_55_59_state = LE_Female_55_to_59$k_le_in[which(LE_Female_55_to_59$Location == s)]
  k_female_60_64_state = LE_Female_60_to_64$k_le_in[which(LE_Female_60_to_64$Location == s)]
  k_female_65_69_state = LE_Female_65_to_69$k_le_in[which(LE_Female_65_to_69$Location == s)]
  k_female_70_74_state = LE_Female_70_to_74$k_le_in[which(LE_Female_70_to_74$Location == s)]
  k_female_75_79_state = LE_Female_75_to_79$k_le_in[which(LE_Female_75_to_79$Location == s)]
  k_female_80_84_state = LE_Female_80_to_84$k_le_in[which(LE_Female_80_to_84$Location == s)]
  k_female_85_89_state = LE_Female_85_to_89$k_le_in[which(LE_Female_85_to_89$Location == s)]
  k_female_90_94_state = LE_Female_90_to_94$k_le_in[which(LE_Female_90_to_94$Location == s)]
  k_female_95_onwards_state = LE_Female_95_onwards$k_le_in[which(LE_Female_95_onwards$Location == s)]
  
  NGDP_val_state = State_GDP$`Non Health GSDP = GSDP_per_capita-TGHE_per_capita`[which(State_GDP$State == s)]
  SD_10_14_state = Deaths_10_to_14$Value[which(Deaths_10_to_14$Location == s)] 
  SD_15_19_state = Deaths_15_to_19$Value[which(Deaths_15_to_19$Location == s)]
  SD_20_24_state = Deaths_20_to_24$Value[which(Deaths_20_to_24$Location == s)]
  SD_25_29_state = Deaths_25_to_29$Value[which(Deaths_25_to_29$Location == s)]
  SD_30_34_state = Deaths_30_to_34$Value[which(Deaths_30_to_34$Location == s)]
  SD_35_39_state = Deaths_35_to_39$Value[which(Deaths_35_to_39$Location == s)]
  SD_40_44_state = Deaths_40_to_44$Value[which(Deaths_40_to_44$Location == s)]
  SD_45_49_state = Deaths_45_to_49$Value[which(Deaths_45_to_49$Location == s)]
  SD_50_54_state = Deaths_50_to_54$Value[which(Deaths_50_to_54$Location == s)]
  SD_55_59_state = Deaths_55_to_59$Value[which(Deaths_55_to_59$Location == s)]
  SD_60_64_state = Deaths_60_to_64$Value[which(Deaths_60_to_64$Location == s)]
  SD_65_69_state = Deaths_65_to_69$Value[which(Deaths_65_to_69$Location == s)]
  SD_70_74_state = Deaths_70_to_74$Value[which(Deaths_70_to_74$Location == s)]
  SD_75_79_state = Deaths_75_to_79$Value[which(Deaths_75_to_79$Location == s)]
  SD_80_84_state = Deaths_80_to_84$Value[which(Deaths_80_to_84$Location == s)]
  SD_85_89_state = Deaths_85_to_89$Value[which(Deaths_85_to_89$Location == s)]
  SD_90_94_state = Deaths_90_to_94$Value[which(Deaths_90_to_94$Location == s)]
  SD_95_onwards_state = Deaths_95_onwards$Value[which(Deaths_95_onwards$Location == s)]
  # SD Lower bound values
  SD_10_14_state_lb = Deaths_10_to_14$`Lower bound`[which(Deaths_10_to_14$Location == s)] 
  SD_15_19_state_lb = Deaths_15_to_19$`Lower bound`[which(Deaths_15_to_19$Location == s)]
  SD_20_24_state_lb = Deaths_20_to_24$`Lower bound`[which(Deaths_20_to_24$Location == s)]
  SD_25_29_state_lb = Deaths_25_to_29$`Lower bound`[which(Deaths_25_to_29$Location == s)]
  SD_30_34_state_lb = Deaths_30_to_34$`Lower bound`[which(Deaths_30_to_34$Location == s)]
  SD_35_39_state_lb = Deaths_35_to_39$`Lower bound`[which(Deaths_35_to_39$Location == s)]
  SD_40_44_state_lb = Deaths_40_to_44$`Lower bound`[which(Deaths_40_to_44$Location == s)]
  SD_45_49_state_lb = Deaths_45_to_49$`Lower bound`[which(Deaths_45_to_49$Location == s)]
  SD_50_54_state_lb = Deaths_50_to_54$`Lower bound`[which(Deaths_50_to_54$Location == s)]
  SD_55_59_state_lb = Deaths_55_to_59$`Lower bound`[which(Deaths_55_to_59$Location == s)]
  SD_60_64_state_lb = Deaths_60_to_64$`Lower bound`[which(Deaths_60_to_64$Location == s)]
  SD_65_69_state_lb = Deaths_65_to_69$`Lower bound`[which(Deaths_65_to_69$Location == s)]
  SD_70_74_state_lb = Deaths_70_to_74$`Lower bound`[which(Deaths_70_to_74$Location == s)]
  SD_75_79_state_lb = Deaths_75_to_79$`Lower bound`[which(Deaths_75_to_79$Location == s)]
  SD_80_84_state_lb = Deaths_80_to_84$`Lower bound`[which(Deaths_80_to_84$Location == s)]
  SD_85_89_state_lb = Deaths_85_to_89$`Lower bound`[which(Deaths_85_to_89$Location == s)]
  SD_90_94_state_lb = Deaths_90_to_94$`Lower bound`[which(Deaths_90_to_94$Location == s)]
  SD_95_onwards_state_lb = Deaths_95_onwards$`Lower bound`[which(Deaths_95_onwards$Location == s)]
  
  #SD Upper bound values
  SD_10_14_state_ub = Deaths_10_to_14$`Upper bound`[which(Deaths_10_to_14$Location == s)] 
  SD_15_19_state_ub = Deaths_15_to_19$`Upper bound`[which(Deaths_15_to_19$Location == s)]
  SD_20_24_state_ub = Deaths_20_to_24$`Upper bound`[which(Deaths_20_to_24$Location == s)]
  SD_25_29_state_ub = Deaths_25_to_29$`Upper bound`[which(Deaths_25_to_29$Location == s)]
  SD_30_34_state_ub = Deaths_30_to_34$`Upper bound`[which(Deaths_30_to_34$Location == s)]
  SD_35_39_state_ub = Deaths_35_to_39$`Upper bound`[which(Deaths_35_to_39$Location == s)]
  SD_40_44_state_ub = Deaths_40_to_44$`Upper bound`[which(Deaths_40_to_44$Location == s)]
  SD_45_49_state_ub = Deaths_45_to_49$`Upper bound`[which(Deaths_45_to_49$Location == s)]
  SD_50_54_state_ub = Deaths_50_to_54$`Upper bound`[which(Deaths_50_to_54$Location == s)]
  SD_55_59_state_ub = Deaths_55_to_59$`Upper bound`[which(Deaths_55_to_59$Location == s)]
  SD_60_64_state_ub = Deaths_60_to_64$`Upper bound`[which(Deaths_60_to_64$Location == s)]
  SD_65_69_state_ub = Deaths_65_to_69$`Upper bound`[which(Deaths_65_to_69$Location == s)]
  SD_70_74_state_ub = Deaths_70_to_74$`Upper bound`[which(Deaths_70_to_74$Location == s)]
  SD_75_79_state_ub = Deaths_75_to_79$`Upper bound`[which(Deaths_75_to_79$Location == s)]
  SD_80_84_state_ub = Deaths_80_to_84$`Upper bound`[which(Deaths_80_to_84$Location == s)]
  SD_85_89_state_ub = Deaths_85_to_89$`Upper bound`[which(Deaths_85_to_89$Location == s)]
  SD_90_94_state_ub = Deaths_90_to_94$`Upper bound`[which(Deaths_90_to_94$Location == s)]
  SD_95_onwards_state_ub = Deaths_95_onwards$`Upper bound`[which(Deaths_95_onwards$Location == s)]
  
  # Place state name
  #tmvyll_df_m_temp$state_name <- s
  #tmvyll_df_m_temp$gender <- "Male"
  
  #tmvyll_df_f_temp$state_name <- s
  #tmvyll_df_f_temp$gender <- "Female"
  
  
  #Males
  # send values for each sd for that state name
  tmvyll_val_m_temp = calc_tmvyll(SD_10_14 = SD_10_14_state,
                                  SD_15_19 = SD_15_19_state,
                                  SD_20_24 = SD_20_24_state, 
                                  SD_25_29 = SD_25_29_state, 
                                  SD_30_34 = SD_30_34_state,
                                  SD_35_39 = SD_35_39_state, 
                                  SD_40_44 = SD_40_44_state, 
                                  SD_45_49 = SD_45_49_state,
                                  SD_50_54 = SD_50_54_state, 
                                  SD_55_59 = SD_55_59_state, 
                                  SD_60_64 = SD_60_64_state,
                                  SD_65_69 = SD_65_69_state, 
                                  SD_70_74 = SD_70_74_state, 
                                  SD_75_79 = SD_75_79_state,
                                  SD_80_84 = SD_80_84_state, 
                                  SD_85_89 = SD_85_89_state, 
                                  SD_90_94 = SD_90_94_state,
                                  SD_95_onwards = SD_95_onwards_state,
                                  SD_10_14_lb = SD_10_14_state_lb,
                                  SD_15_19_lb = SD_15_19_state_lb,
                                  SD_20_24_lb = SD_20_24_state_lb, 
                                  SD_25_29_lb = SD_25_29_state_lb, 
                                  SD_30_34_lb = SD_30_34_state_lb,
                                  SD_35_39_lb = SD_35_39_state_lb, 
                                  SD_40_44_lb = SD_40_44_state_lb, 
                                  SD_45_49_lb = SD_45_49_state_lb,
                                  SD_50_54_lb = SD_50_54_state_lb, 
                                  SD_55_59_lb = SD_55_59_state_lb, 
                                  SD_60_64_lb = SD_60_64_state_lb,
                                  SD_65_69_lb = SD_65_69_state_lb, 
                                  SD_70_74_lb = SD_70_74_state_lb, 
                                  SD_75_79_lb = SD_75_79_state_lb,
                                  SD_80_84_lb = SD_80_84_state_lb, 
                                  SD_85_89_lb = SD_85_89_state_lb, 
                                  SD_90_94_lb = SD_90_94_state_lb,
                                  SD_95_onwards_lb = SD_95_onwards_state_lb, 
                                  SD_10_14_ub = SD_10_14_state_ub,
                                  SD_15_19_ub = SD_15_19_state_ub,
                                  SD_20_24_ub = SD_20_24_state_ub, 
                                  SD_25_29_ub = SD_25_29_state_ub, 
                                  SD_30_34_ub = SD_30_34_state_ub,
                                  SD_35_39_ub = SD_35_39_state_ub, 
                                  SD_40_44_ub = SD_40_44_state_ub, 
                                  SD_45_49_ub = SD_45_49_state_ub,
                                  SD_50_54_ub = SD_50_54_state_ub, 
                                  SD_55_59_ub = SD_55_59_state_ub, 
                                  SD_60_64_ub = SD_60_64_state_ub,
                                  SD_65_69_ub = SD_65_69_state_ub, 
                                  SD_70_74_ub = SD_70_74_state_ub, 
                                  SD_75_79_ub = SD_75_79_state_ub,
                                  SD_80_84_ub = SD_80_84_state_ub, 
                                  SD_85_89_ub = SD_85_89_state_ub, 
                                  SD_90_94_ub = SD_90_94_state_ub,
                                  SD_95_onwards_ub = SD_95_onwards_state_ub,
                                  NGDP = NGDP_val_state, 
                                  r = r_val, 
                                  k_10_14 = k_male_10_14_state,
                                  k_15_19 = k_male_15_19_state,
                                  k_20_24 = k_male_20_24_state, 
                                  k_25_29 = k_male_25_29_state, 
                                  k_30_34 = k_male_30_34_state,
                                  k_35_39 = k_male_35_39_state, 
                                  k_40_44 = k_male_40_44_state, 
                                  k_45_49 = k_male_45_49_state,
                                  k_50_54 = k_male_50_54_state, 
                                  k_55_59 = k_male_55_59_state, 
                                  k_60_64 = k_male_60_64_state,
                                  k_65_69 = k_male_65_69_state, 
                                  k_70_74 = k_male_70_74_state, 
                                  k_75_79 = k_male_75_79_state,
                                  k_80_84 = k_male_80_84_state, 
                                  k_85_89 = k_male_85_89_state, 
                                  k_90_94 = k_male_90_94_state,
                                  k_95_onwards = k_male_95_onwards_state)
  # save values in data frame
  print(tmvyll_val_m_temp)
  # return bound data frame
  tmvyll_df_m_temp = data.frame(state_name = s,
                                gender = "Male",
                                tmvyll = tmvyll_val_m_temp$tmvyll,
                                mvyll_10_14 = tmvyll_val_m_temp$mvyll_10_14,
                                mvyll_15_19 = tmvyll_val_m_temp$mvyll_15_19,
                                mvyll_20_24 = tmvyll_val_m_temp$mvyll_20_24,
                                mvyll_25_29 = tmvyll_val_m_temp$mvyll_25_29,
                                mvyll_30_34 = tmvyll_val_m_temp$mvyll_30_34,
                                mvyll_35_39 = tmvyll_val_m_temp$mvyll_35_39,
                                mvyll_40_44 = tmvyll_val_m_temp$mvyll_40_44,
                                mvyll_45_49 = tmvyll_val_m_temp$mvyll_45_49,
                                mvyll_50_54 = tmvyll_val_m_temp$mvyll_50_54,
                                mvyll_55_59 = tmvyll_val_m_temp$mvyll_55_59,
                                mvyll_60_64 = tmvyll_val_m_temp$mvyll_60_64,
                                mvyll_65_69 = tmvyll_val_m_temp$mvyll_65_69,
                                mvyll_70_74 = tmvyll_val_m_temp$mvyll_70_74,
                                mvyll_75_79 = tmvyll_val_m_temp$mvyll_75_79,
                                mvyll_80_84 = tmvyll_val_m_temp$mvyll_80_84,
                                mvyll_85_89 = tmvyll_val_m_temp$mvyll_85_89,
                                mvyll_90_94 = tmvyll_val_m_temp$mvyll_90_94,
                                mvyll_95_onwards = tmvyll_val_m_temp$mvyll_95_onwards,
                                tmvyll_lb = tmvyll_val_m_temp$tmvyll_lb,
                                mvyll_10_14_lb = tmvyll_val_m_temp$mvyll_10_14_lb,
                                mvyll_15_19_lb = tmvyll_val_m_temp$mvyll_15_19_lb,
                                mvyll_20_24_lb = tmvyll_val_m_temp$mvyll_20_24_lb,
                                mvyll_25_29_lb = tmvyll_val_m_temp$mvyll_25_29_lb,
                                mvyll_30_34_lb = tmvyll_val_m_temp$mvyll_30_34_lb,
                                mvyll_35_39_lb = tmvyll_val_m_temp$mvyll_35_39_lb,
                                mvyll_40_44_lb = tmvyll_val_m_temp$mvyll_40_44_lb,
                                mvyll_45_49_lb = tmvyll_val_m_temp$mvyll_45_49_lb,
                                mvyll_50_54_lb = tmvyll_val_m_temp$mvyll_50_54_lb,
                                mvyll_55_59_lb = tmvyll_val_m_temp$mvyll_55_59_lb,
                                mvyll_60_64_lb = tmvyll_val_m_temp$mvyll_60_64_lb,
                                mvyll_65_69_lb = tmvyll_val_m_temp$mvyll_65_69_lb,
                                mvyll_70_74_lb = tmvyll_val_m_temp$mvyll_70_74_lb,
                                mvyll_75_79_lb = tmvyll_val_m_temp$mvyll_75_79_lb,
                                mvyll_80_84_lb = tmvyll_val_m_temp$mvyll_80_84_lb,
                                mvyll_85_89_lb = tmvyll_val_m_temp$mvyll_85_89_lb,
                                mvyll_90_94_lb = tmvyll_val_m_temp$mvyll_90_94_lb,
                                mvyll_95_onwards_lb = tmvyll_val_m_temp$mvyll_95_onwards_lb,
                                
                                tmvyll_ub = tmvyll_val_m_temp$tmvyll_ub,
                                mvyll_10_14_ub = tmvyll_val_m_temp$mvyll_10_14_ub,
                                mvyll_15_19_ub = tmvyll_val_m_temp$mvyll_15_19_ub,
                                mvyll_20_24_ub = tmvyll_val_m_temp$mvyll_20_24_ub,
                                mvyll_25_29_ub = tmvyll_val_m_temp$mvyll_25_29_ub,
                                mvyll_30_34_ub = tmvyll_val_m_temp$mvyll_30_34_ub,
                                mvyll_35_39_ub = tmvyll_val_m_temp$mvyll_35_39_ub,
                                mvyll_40_44_ub = tmvyll_val_m_temp$mvyll_40_44_ub,
                                mvyll_45_49_ub = tmvyll_val_m_temp$mvyll_45_49_ub,
                                mvyll_50_54_ub = tmvyll_val_m_temp$mvyll_50_54_ub,
                                mvyll_55_59_ub = tmvyll_val_m_temp$mvyll_55_59_ub,
                                mvyll_60_64_ub = tmvyll_val_m_temp$mvyll_60_64_ub,
                                mvyll_65_69_ub = tmvyll_val_m_temp$mvyll_65_69_ub,
                                mvyll_70_74_ub = tmvyll_val_m_temp$mvyll_70_74_ub,
                                mvyll_75_79_ub = tmvyll_val_m_temp$mvyll_75_79_ub,
                                mvyll_80_84_ub = tmvyll_val_m_temp$mvyll_80_84_ub,
                                mvyll_85_89_ub = tmvyll_val_m_temp$mvyll_85_89_ub,
                                mvyll_90_94_ub = tmvyll_val_m_temp$mvyll_90_94_ub,
                                mvyll_95_onwards_ub = tmvyll_val_m_temp$mvyll_95_onwards_ub)
  tmvyll_df_3_kle_in <- rbind(tmvyll_df_3_kle_in, tmvyll_df_m_temp)
  
  
  #Females
  
  tmvyll_val_f_temp = calc_tmvyll(SD_10_14 = SD_10_14_state,
                                  SD_15_19 = SD_15_19_state,
                                  SD_20_24 = SD_20_24_state, 
                                  SD_25_29 = SD_25_29_state, 
                                  SD_30_34 = SD_30_34_state,
                                  SD_35_39 = SD_35_39_state, 
                                  SD_40_44 = SD_40_44_state, 
                                  SD_45_49 = SD_45_49_state,
                                  SD_50_54 = SD_50_54_state, 
                                  SD_55_59 = SD_55_59_state, 
                                  SD_60_64 = SD_60_64_state,
                                  SD_65_69 = SD_65_69_state, 
                                  SD_70_74 = SD_70_74_state, 
                                  SD_75_79 = SD_75_79_state,
                                  SD_80_84 = SD_80_84_state, 
                                  SD_85_89 = SD_85_89_state, 
                                  SD_90_94 = SD_90_94_state,
                                  SD_95_onwards = SD_95_onwards_state,
                                  SD_10_14_lb = SD_10_14_state_lb,
                                  SD_15_19_lb = SD_15_19_state_lb,
                                  SD_20_24_lb = SD_20_24_state_lb, 
                                  SD_25_29_lb = SD_25_29_state_lb, 
                                  SD_30_34_lb = SD_30_34_state_lb,
                                  SD_35_39_lb = SD_35_39_state_lb, 
                                  SD_40_44_lb = SD_40_44_state_lb, 
                                  SD_45_49_lb = SD_45_49_state_lb,
                                  SD_50_54_lb = SD_50_54_state_lb, 
                                  SD_55_59_lb = SD_55_59_state_lb, 
                                  SD_60_64_lb = SD_60_64_state_lb,
                                  SD_65_69_lb = SD_65_69_state_lb, 
                                  SD_70_74_lb = SD_70_74_state_lb, 
                                  SD_75_79_lb = SD_75_79_state_lb,
                                  SD_80_84_lb = SD_80_84_state_lb, 
                                  SD_85_89_lb = SD_85_89_state_lb, 
                                  SD_90_94_lb = SD_90_94_state_lb,
                                  SD_95_onwards_lb = SD_95_onwards_state_lb, 
                                  SD_10_14_ub = SD_10_14_state_ub,
                                  SD_15_19_ub = SD_15_19_state_ub,
                                  SD_20_24_ub = SD_20_24_state_ub, 
                                  SD_25_29_ub = SD_25_29_state_ub, 
                                  SD_30_34_ub = SD_30_34_state_ub,
                                  SD_35_39_ub = SD_35_39_state_ub, 
                                  SD_40_44_ub = SD_40_44_state_ub, 
                                  SD_45_49_ub = SD_45_49_state_ub,
                                  SD_50_54_ub = SD_50_54_state_ub, 
                                  SD_55_59_ub = SD_55_59_state_ub, 
                                  SD_60_64_ub = SD_60_64_state_ub,
                                  SD_65_69_ub = SD_65_69_state_ub, 
                                  SD_70_74_ub = SD_70_74_state_ub, 
                                  SD_75_79_ub = SD_75_79_state_ub,
                                  SD_80_84_ub = SD_80_84_state_ub, 
                                  SD_85_89_ub = SD_85_89_state_ub, 
                                  SD_90_94_ub = SD_90_94_state_ub,
                                  SD_95_onwards_ub = SD_95_onwards_state_ub,
                                  NGDP = NGDP_val_state, 
                                  r = r_val, 
                                  k_10_14 = k_female_10_14_state,
                                  k_15_19 = k_female_15_19_state,
                                  k_20_24 = k_female_20_24_state, 
                                  k_25_29 = k_female_25_29_state, 
                                  k_30_34 = k_female_30_34_state,
                                  k_35_39 = k_female_35_39_state, 
                                  k_40_44 = k_female_40_44_state, 
                                  k_45_49 = k_female_45_49_state,
                                  k_50_54 = k_female_50_54_state, 
                                  k_55_59 = k_female_55_59_state, 
                                  k_60_64 = k_female_60_64_state,
                                  k_65_69 = k_female_65_69_state, 
                                  k_70_74 = k_female_70_74_state, 
                                  k_75_79 = k_female_75_79_state,
                                  k_80_84 = k_female_80_84_state, 
                                  k_85_89 = k_female_85_89_state, 
                                  k_90_94 = k_female_90_94_state,
                                  k_95_onwards = k_female_95_onwards_state)
  # save values in data frame
  print(tmvyll_val_f_temp)
  # return bound data frame
  tmvyll_df_f_temp = data.frame(state_name = s,
                                gender = "Female",
                                tmvyll = tmvyll_val_f_temp$tmvyll,
                                mvyll_10_14 = tmvyll_val_f_temp$mvyll_10_14,
                                mvyll_15_19 = tmvyll_val_f_temp$mvyll_15_19,
                                mvyll_20_24 = tmvyll_val_f_temp$mvyll_20_24,
                                mvyll_25_29 = tmvyll_val_f_temp$mvyll_25_29,
                                mvyll_30_34 = tmvyll_val_f_temp$mvyll_30_34,
                                mvyll_35_39 = tmvyll_val_f_temp$mvyll_35_39,
                                mvyll_40_44 = tmvyll_val_f_temp$mvyll_40_44,
                                mvyll_45_49 = tmvyll_val_f_temp$mvyll_45_49,
                                mvyll_50_54 = tmvyll_val_f_temp$mvyll_50_54,
                                mvyll_55_59 = tmvyll_val_f_temp$mvyll_55_59,
                                mvyll_60_64 = tmvyll_val_f_temp$mvyll_60_64,
                                mvyll_65_69 = tmvyll_val_f_temp$mvyll_65_69,
                                mvyll_70_74 = tmvyll_val_f_temp$mvyll_70_74,
                                mvyll_75_79 = tmvyll_val_f_temp$mvyll_75_79,
                                mvyll_80_84 = tmvyll_val_f_temp$mvyll_80_84,
                                mvyll_85_89 = tmvyll_val_f_temp$mvyll_85_89,
                                mvyll_90_94 = tmvyll_val_f_temp$mvyll_90_94,
                                mvyll_95_onwards = tmvyll_val_f_temp$mvyll_95_onwards,
                                tmvyll_lb = tmvyll_val_f_temp$tmvyll_lb,
                                mvyll_10_14_lb = tmvyll_val_f_temp$mvyll_10_14_lb,
                                mvyll_15_19_lb = tmvyll_val_f_temp$mvyll_15_19_lb,
                                mvyll_20_24_lb = tmvyll_val_f_temp$mvyll_20_24_lb,
                                mvyll_25_29_lb = tmvyll_val_f_temp$mvyll_25_29_lb,
                                mvyll_30_34_lb = tmvyll_val_f_temp$mvyll_30_34_lb,
                                mvyll_35_39_lb = tmvyll_val_f_temp$mvyll_35_39_lb,
                                mvyll_40_44_lb = tmvyll_val_f_temp$mvyll_40_44_lb,
                                mvyll_45_49_lb = tmvyll_val_f_temp$mvyll_45_49_lb,
                                mvyll_50_54_lb = tmvyll_val_f_temp$mvyll_50_54_lb,
                                mvyll_55_59_lb = tmvyll_val_f_temp$mvyll_55_59_lb,
                                mvyll_60_64_lb = tmvyll_val_f_temp$mvyll_60_64_lb,
                                mvyll_65_69_lb = tmvyll_val_f_temp$mvyll_65_69_lb,
                                mvyll_70_74_lb = tmvyll_val_f_temp$mvyll_70_74_lb,
                                mvyll_75_79_lb = tmvyll_val_f_temp$mvyll_75_79_lb,
                                mvyll_80_84_lb = tmvyll_val_f_temp$mvyll_80_84_lb,
                                mvyll_85_89_lb = tmvyll_val_f_temp$mvyll_85_89_lb,
                                mvyll_90_94_lb = tmvyll_val_f_temp$mvyll_90_94_lb,
                                mvyll_95_onwards_lb = tmvyll_val_f_temp$mvyll_95_onwards_lb,
                                
                                tmvyll_ub = tmvyll_val_f_temp$tmvyll_ub,
                                mvyll_10_14_ub = tmvyll_val_f_temp$mvyll_10_14_ub,
                                mvyll_15_19_ub = tmvyll_val_f_temp$mvyll_15_19_ub,
                                mvyll_20_24_ub = tmvyll_val_f_temp$mvyll_20_24_ub,
                                mvyll_25_29_ub = tmvyll_val_f_temp$mvyll_25_29_ub,
                                mvyll_30_34_ub = tmvyll_val_f_temp$mvyll_30_34_ub,
                                mvyll_35_39_ub = tmvyll_val_f_temp$mvyll_35_39_ub,
                                mvyll_40_44_ub = tmvyll_val_f_temp$mvyll_40_44_ub,
                                mvyll_45_49_ub = tmvyll_val_f_temp$mvyll_45_49_ub,
                                mvyll_50_54_ub = tmvyll_val_f_temp$mvyll_50_54_ub,
                                mvyll_55_59_ub = tmvyll_val_f_temp$mvyll_55_59_ub,
                                mvyll_60_64_ub = tmvyll_val_f_temp$mvyll_60_64_ub,
                                mvyll_65_69_ub = tmvyll_val_f_temp$mvyll_65_69_ub,
                                mvyll_70_74_ub = tmvyll_val_f_temp$mvyll_70_74_ub,
                                mvyll_75_79_ub = tmvyll_val_f_temp$mvyll_75_79_ub,
                                mvyll_80_84_ub = tmvyll_val_f_temp$mvyll_80_84_ub,
                                mvyll_85_89_ub = tmvyll_val_f_temp$mvyll_85_89_ub,
                                mvyll_90_94_ub = tmvyll_val_f_temp$mvyll_90_94_ub,
                                mvyll_95_onwards_ub = tmvyll_val_f_temp$mvyll_95_onwards_ub)
  tmvyll_df_3_kle_in <- rbind(tmvyll_df_3_kle_in, tmvyll_df_f_temp)
  
}

tmvyll_df_3_kle_in_usd <- tmvyll_df_3_kle_in
tmvyll_df_3_kle_in_usd[,3:59] <- tmvyll_df_3_kle_in_usd[,3:59]/70.394

write.csv(tmvyll_df_3_kle_in, file = "~/ASAR/Mental_health_econ_burden_india/UA_r3_kle_in_INR.csv")
write.csv(tmvyll_df_3_kle_in_usd, file = "~/ASAR/Mental_health_econ_burden_india/UA_r3_kle_in_USD.csv")


########################
# r value is 5 percent #
########################

tmvyll_df_5_kle_in <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                              mvyll_10_14 = numeric(),mvyll_15_19 = numeric(),mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                              mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                              mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),mvyll_65_69 = numeric(),
                              mvyll_70_74 = numeric(),mvyll_75_79 = numeric(),mvyll_80_84 = numeric(),mvyll_85_89 = numeric(),
                              mvyll_90_94 = numeric(),mvyll_95_onwards = numeric(),tmvyll_lb = numeric(), 
                              mvyll_10_14_lb = numeric(),mvyll_15_19_lb = numeric(),mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                              mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                              mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),mvyll_65_69_lb = numeric(),
                              mvyll_70_74_lb = numeric(),mvyll_75_79_lb = numeric(),mvyll_80_84_lb = numeric(),mvyll_85_89_lb = numeric(),
                              mvyll_90_94_lb = numeric(),mvyll_95_onwards_lb = numeric(),tmvyll_ub = numeric(), 
                              mvyll_10_14_ub = numeric(),mvyll_15_19_ub = numeric(),mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                              mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                              mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric(),mvyll_65_69_ub = numeric(),
                              mvyll_70_74_ub = numeric(),mvyll_75_79_ub = numeric(),mvyll_80_84_ub = numeric(),mvyll_85_89_ub = numeric(),
                              mvyll_90_94_ub = numeric(),mvyll_95_onwards_ub = numeric())

for( s in state_list){
  tmvyll_df_m_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_10_14 = numeric(),mvyll_15_19 = numeric(),mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),mvyll_65_69 = numeric(),
                                 mvyll_70_74 = numeric(),mvyll_75_79 = numeric(),mvyll_80_84 = numeric(),mvyll_85_89 = numeric(),
                                 mvyll_90_94 = numeric(),mvyll_95_onwards = numeric(),tmvyll_lb = numeric(), 
                                 mvyll_10_14_lb = numeric(),mvyll_15_19_lb = numeric(),mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                                 mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                                 mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),mvyll_65_69_lb = numeric(),
                                 mvyll_70_74_lb = numeric(),mvyll_75_79_lb = numeric(),mvyll_80_84_lb = numeric(),mvyll_85_89_lb = numeric(),
                                 mvyll_90_94_lb = numeric(),mvyll_95_onwards_lb = numeric(),tmvyll_ub = numeric(), 
                                 mvyll_10_14_ub = numeric(),mvyll_15_19_ub = numeric(),mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                                 mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                                 mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric(),mvyll_65_69_ub = numeric(),
                                 mvyll_70_74_ub = numeric(),mvyll_75_79_ub = numeric(),mvyll_80_84_ub = numeric(),mvyll_85_89_ub = numeric(),
                                 mvyll_90_94_ub = numeric(),mvyll_95_onwards_ub = numeric())
  tmvyll_df_f_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_10_14 = numeric(),mvyll_15_19 = numeric(),mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),mvyll_65_69 = numeric(),
                                 mvyll_70_74 = numeric(),mvyll_75_79 = numeric(),mvyll_80_84 = numeric(),mvyll_85_89 = numeric(),
                                 mvyll_90_94 = numeric(),mvyll_95_onwards = numeric(),tmvyll_lb = numeric(), 
                                 mvyll_10_14_lb = numeric(),mvyll_15_19_lb = numeric(),mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                                 mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                                 mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),mvyll_65_69_lb = numeric(),
                                 mvyll_70_74_lb = numeric(),mvyll_75_79_lb = numeric(),mvyll_80_84_lb = numeric(),mvyll_85_89_lb = numeric(),
                                 mvyll_90_94_lb = numeric(),mvyll_95_onwards_lb = numeric(),tmvyll_ub = numeric(), 
                                 mvyll_10_14_ub = numeric(),mvyll_15_19_ub = numeric(),mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                                 mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                                 mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric(),mvyll_65_69_ub = numeric(),
                                 mvyll_70_74_ub = numeric(),mvyll_75_79_ub = numeric(),mvyll_80_84_ub = numeric(),mvyll_85_89_ub = numeric(),
                                 mvyll_90_94_ub = numeric(),mvyll_95_onwards_ub = numeric())
  r_val = 0.05
  
  #K for males
  k_male_10_14_state = LE_Male_10_to_14$k_le_in[which(LE_Male_10_to_14$Location == s)]
  k_male_15_19_state = LE_Male_15_to_19$k_le_in[which(LE_Male_15_to_19$Location == s)]
  k_male_20_24_state = LE_Male_20_to_24$k_le_in[which(LE_Male_20_to_24$Location == s)]
  k_male_25_29_state = LE_Male_25_to_29$k_le_in[which(LE_Male_25_to_29$Location == s)]
  k_male_30_34_state = LE_Male_30_to_34$k_le_in[which(LE_Male_30_to_34$Location == s)]
  k_male_35_39_state = LE_Male_35_to_39$k_le_in[which(LE_Male_35_to_39$Location == s)]
  k_male_40_44_state = LE_Male_40_to_44$k_le_in[which(LE_Male_40_to_44$Location == s)]
  k_male_45_49_state = LE_Male_45_to_49$k_le_in[which(LE_Male_45_to_49$Location == s)]
  k_male_50_54_state = LE_Male_50_to_54$k_le_in[which(LE_Male_50_to_54$Location == s)]
  k_male_55_59_state = LE_Male_55_to_59$k_le_in[which(LE_Male_55_to_59$Location == s)]
  k_male_60_64_state = LE_Male_60_to_64$k_le_in[which(LE_Male_60_to_64$Location == s)]
  k_male_65_69_state = LE_Male_65_to_69$k_le_in[which(LE_Male_65_to_69$Location == s)]
  k_male_70_74_state = LE_Male_70_to_74$k_le_in[which(LE_Male_70_to_74$Location == s)]
  k_male_75_79_state = LE_Male_75_to_79$k_le_in[which(LE_Male_75_to_79$Location == s)]
  k_male_80_84_state = LE_Male_80_to_84$k_le_in[which(LE_Male_80_to_84$Location == s)]
  k_male_85_89_state = LE_Male_85_to_89$k_le_in[which(LE_Male_85_to_89$Location == s)]
  k_male_90_94_state = LE_Male_90_to_94$k_le_in[which(LE_Male_90_to_94$Location == s)]
  k_male_95_onwards_state = LE_Male_95_onwards$k_le_in[which(LE_Male_95_onwards$Location == s)]
  
  #K for females
  k_female_10_14_state = LE_Female_10_to_14$k_le_in[which(LE_Female_10_to_14$Location == s)]
  k_female_15_19_state = LE_Female_15_to_19$k_le_in[which(LE_Female_15_to_19$Location == s)]
  k_female_20_24_state = LE_Female_20_to_24$k_le_in[which(LE_Female_20_to_24$Location == s)]
  k_female_25_29_state = LE_Female_25_to_29$k_le_in[which(LE_Female_25_to_29$Location == s)]
  k_female_30_34_state = LE_Female_30_to_34$k_le_in[which(LE_Female_30_to_34$Location == s)]
  k_female_35_39_state = LE_Female_35_to_39$k_le_in[which(LE_Female_35_to_39$Location == s)]
  k_female_40_44_state = LE_Female_40_to_44$k_le_in[which(LE_Female_40_to_44$Location == s)]
  k_female_45_49_state = LE_Female_45_to_49$k_le_in[which(LE_Female_45_to_49$Location == s)]
  k_female_50_54_state = LE_Female_50_to_54$k_le_in[which(LE_Female_50_to_54$Location == s)]
  k_female_55_59_state = LE_Female_55_to_59$k_le_in[which(LE_Female_55_to_59$Location == s)]
  k_female_60_64_state = LE_Female_60_to_64$k_le_in[which(LE_Female_60_to_64$Location == s)]
  k_female_65_69_state = LE_Female_65_to_69$k_le_in[which(LE_Female_65_to_69$Location == s)]
  k_female_70_74_state = LE_Female_70_to_74$k_le_in[which(LE_Female_70_to_74$Location == s)]
  k_female_75_79_state = LE_Female_75_to_79$k_le_in[which(LE_Female_75_to_79$Location == s)]
  k_female_80_84_state = LE_Female_80_to_84$k_le_in[which(LE_Female_80_to_84$Location == s)]
  k_female_85_89_state = LE_Female_85_to_89$k_le_in[which(LE_Female_85_to_89$Location == s)]
  k_female_90_94_state = LE_Female_90_to_94$k_le_in[which(LE_Female_90_to_94$Location == s)]
  k_female_95_onwards_state = LE_Female_95_onwards$k_le_in[which(LE_Female_95_onwards$Location == s)]
  
  NGDP_val_state = State_GDP$`Non Health GSDP = GSDP_per_capita-TGHE_per_capita`[which(State_GDP$State == s)]
  SD_10_14_state = Deaths_10_to_14$Value[which(Deaths_10_to_14$Location == s)] 
  SD_15_19_state = Deaths_15_to_19$Value[which(Deaths_15_to_19$Location == s)]
  SD_20_24_state = Deaths_20_to_24$Value[which(Deaths_20_to_24$Location == s)]
  SD_25_29_state = Deaths_25_to_29$Value[which(Deaths_25_to_29$Location == s)]
  SD_30_34_state = Deaths_30_to_34$Value[which(Deaths_30_to_34$Location == s)]
  SD_35_39_state = Deaths_35_to_39$Value[which(Deaths_35_to_39$Location == s)]
  SD_40_44_state = Deaths_40_to_44$Value[which(Deaths_40_to_44$Location == s)]
  SD_45_49_state = Deaths_45_to_49$Value[which(Deaths_45_to_49$Location == s)]
  SD_50_54_state = Deaths_50_to_54$Value[which(Deaths_50_to_54$Location == s)]
  SD_55_59_state = Deaths_55_to_59$Value[which(Deaths_55_to_59$Location == s)]
  SD_60_64_state = Deaths_60_to_64$Value[which(Deaths_60_to_64$Location == s)]
  SD_65_69_state = Deaths_65_to_69$Value[which(Deaths_65_to_69$Location == s)]
  SD_70_74_state = Deaths_70_to_74$Value[which(Deaths_70_to_74$Location == s)]
  SD_75_79_state = Deaths_75_to_79$Value[which(Deaths_75_to_79$Location == s)]
  SD_80_84_state = Deaths_80_to_84$Value[which(Deaths_80_to_84$Location == s)]
  SD_85_89_state = Deaths_85_to_89$Value[which(Deaths_85_to_89$Location == s)]
  SD_90_94_state = Deaths_90_to_94$Value[which(Deaths_90_to_94$Location == s)]
  SD_95_onwards_state = Deaths_95_onwards$Value[which(Deaths_95_onwards$Location == s)]
  # SD Lower bound values
  SD_10_14_state_lb = Deaths_10_to_14$`Lower bound`[which(Deaths_10_to_14$Location == s)] 
  SD_15_19_state_lb = Deaths_15_to_19$`Lower bound`[which(Deaths_15_to_19$Location == s)]
  SD_20_24_state_lb = Deaths_20_to_24$`Lower bound`[which(Deaths_20_to_24$Location == s)]
  SD_25_29_state_lb = Deaths_25_to_29$`Lower bound`[which(Deaths_25_to_29$Location == s)]
  SD_30_34_state_lb = Deaths_30_to_34$`Lower bound`[which(Deaths_30_to_34$Location == s)]
  SD_35_39_state_lb = Deaths_35_to_39$`Lower bound`[which(Deaths_35_to_39$Location == s)]
  SD_40_44_state_lb = Deaths_40_to_44$`Lower bound`[which(Deaths_40_to_44$Location == s)]
  SD_45_49_state_lb = Deaths_45_to_49$`Lower bound`[which(Deaths_45_to_49$Location == s)]
  SD_50_54_state_lb = Deaths_50_to_54$`Lower bound`[which(Deaths_50_to_54$Location == s)]
  SD_55_59_state_lb = Deaths_55_to_59$`Lower bound`[which(Deaths_55_to_59$Location == s)]
  SD_60_64_state_lb = Deaths_60_to_64$`Lower bound`[which(Deaths_60_to_64$Location == s)]
  SD_65_69_state_lb = Deaths_65_to_69$`Lower bound`[which(Deaths_65_to_69$Location == s)]
  SD_70_74_state_lb = Deaths_70_to_74$`Lower bound`[which(Deaths_70_to_74$Location == s)]
  SD_75_79_state_lb = Deaths_75_to_79$`Lower bound`[which(Deaths_75_to_79$Location == s)]
  SD_80_84_state_lb = Deaths_80_to_84$`Lower bound`[which(Deaths_80_to_84$Location == s)]
  SD_85_89_state_lb = Deaths_85_to_89$`Lower bound`[which(Deaths_85_to_89$Location == s)]
  SD_90_94_state_lb = Deaths_90_to_94$`Lower bound`[which(Deaths_90_to_94$Location == s)]
  SD_95_onwards_state_lb = Deaths_95_onwards$`Lower bound`[which(Deaths_95_onwards$Location == s)]
  
  #SD Upper bound values
  SD_10_14_state_ub = Deaths_10_to_14$`Upper bound`[which(Deaths_10_to_14$Location == s)] 
  SD_15_19_state_ub = Deaths_15_to_19$`Upper bound`[which(Deaths_15_to_19$Location == s)]
  SD_20_24_state_ub = Deaths_20_to_24$`Upper bound`[which(Deaths_20_to_24$Location == s)]
  SD_25_29_state_ub = Deaths_25_to_29$`Upper bound`[which(Deaths_25_to_29$Location == s)]
  SD_30_34_state_ub = Deaths_30_to_34$`Upper bound`[which(Deaths_30_to_34$Location == s)]
  SD_35_39_state_ub = Deaths_35_to_39$`Upper bound`[which(Deaths_35_to_39$Location == s)]
  SD_40_44_state_ub = Deaths_40_to_44$`Upper bound`[which(Deaths_40_to_44$Location == s)]
  SD_45_49_state_ub = Deaths_45_to_49$`Upper bound`[which(Deaths_45_to_49$Location == s)]
  SD_50_54_state_ub = Deaths_50_to_54$`Upper bound`[which(Deaths_50_to_54$Location == s)]
  SD_55_59_state_ub = Deaths_55_to_59$`Upper bound`[which(Deaths_55_to_59$Location == s)]
  SD_60_64_state_ub = Deaths_60_to_64$`Upper bound`[which(Deaths_60_to_64$Location == s)]
  SD_65_69_state_ub = Deaths_65_to_69$`Upper bound`[which(Deaths_65_to_69$Location == s)]
  SD_70_74_state_ub = Deaths_70_to_74$`Upper bound`[which(Deaths_70_to_74$Location == s)]
  SD_75_79_state_ub = Deaths_75_to_79$`Upper bound`[which(Deaths_75_to_79$Location == s)]
  SD_80_84_state_ub = Deaths_80_to_84$`Upper bound`[which(Deaths_80_to_84$Location == s)]
  SD_85_89_state_ub = Deaths_85_to_89$`Upper bound`[which(Deaths_85_to_89$Location == s)]
  SD_90_94_state_ub = Deaths_90_to_94$`Upper bound`[which(Deaths_90_to_94$Location == s)]
  SD_95_onwards_state_ub = Deaths_95_onwards$`Upper bound`[which(Deaths_95_onwards$Location == s)]
  
  # Place state name
  #tmvyll_df_m_temp$state_name <- s
  #tmvyll_df_m_temp$gender <- "Male"
  
  #tmvyll_df_f_temp$state_name <- s
  #tmvyll_df_f_temp$gender <- "Female"
  
  
  #Males
  # send values for each sd for that state name
  tmvyll_val_m_temp = calc_tmvyll(SD_10_14 = SD_10_14_state,
                                  SD_15_19 = SD_15_19_state,
                                  SD_20_24 = SD_20_24_state, 
                                  SD_25_29 = SD_25_29_state, 
                                  SD_30_34 = SD_30_34_state,
                                  SD_35_39 = SD_35_39_state, 
                                  SD_40_44 = SD_40_44_state, 
                                  SD_45_49 = SD_45_49_state,
                                  SD_50_54 = SD_50_54_state, 
                                  SD_55_59 = SD_55_59_state, 
                                  SD_60_64 = SD_60_64_state,
                                  SD_65_69 = SD_65_69_state, 
                                  SD_70_74 = SD_70_74_state, 
                                  SD_75_79 = SD_75_79_state,
                                  SD_80_84 = SD_80_84_state, 
                                  SD_85_89 = SD_85_89_state, 
                                  SD_90_94 = SD_90_94_state,
                                  SD_95_onwards = SD_95_onwards_state,
                                  SD_10_14_lb = SD_10_14_state_lb,
                                  SD_15_19_lb = SD_15_19_state_lb,
                                  SD_20_24_lb = SD_20_24_state_lb, 
                                  SD_25_29_lb = SD_25_29_state_lb, 
                                  SD_30_34_lb = SD_30_34_state_lb,
                                  SD_35_39_lb = SD_35_39_state_lb, 
                                  SD_40_44_lb = SD_40_44_state_lb, 
                                  SD_45_49_lb = SD_45_49_state_lb,
                                  SD_50_54_lb = SD_50_54_state_lb, 
                                  SD_55_59_lb = SD_55_59_state_lb, 
                                  SD_60_64_lb = SD_60_64_state_lb,
                                  SD_65_69_lb = SD_65_69_state_lb, 
                                  SD_70_74_lb = SD_70_74_state_lb, 
                                  SD_75_79_lb = SD_75_79_state_lb,
                                  SD_80_84_lb = SD_80_84_state_lb, 
                                  SD_85_89_lb = SD_85_89_state_lb, 
                                  SD_90_94_lb = SD_90_94_state_lb,
                                  SD_95_onwards_lb = SD_95_onwards_state_lb, 
                                  SD_10_14_ub = SD_10_14_state_ub,
                                  SD_15_19_ub = SD_15_19_state_ub,
                                  SD_20_24_ub = SD_20_24_state_ub, 
                                  SD_25_29_ub = SD_25_29_state_ub, 
                                  SD_30_34_ub = SD_30_34_state_ub,
                                  SD_35_39_ub = SD_35_39_state_ub, 
                                  SD_40_44_ub = SD_40_44_state_ub, 
                                  SD_45_49_ub = SD_45_49_state_ub,
                                  SD_50_54_ub = SD_50_54_state_ub, 
                                  SD_55_59_ub = SD_55_59_state_ub, 
                                  SD_60_64_ub = SD_60_64_state_ub,
                                  SD_65_69_ub = SD_65_69_state_ub, 
                                  SD_70_74_ub = SD_70_74_state_ub, 
                                  SD_75_79_ub = SD_75_79_state_ub,
                                  SD_80_84_ub = SD_80_84_state_ub, 
                                  SD_85_89_ub = SD_85_89_state_ub, 
                                  SD_90_94_ub = SD_90_94_state_ub,
                                  SD_95_onwards_ub = SD_95_onwards_state_ub,
                                  NGDP = NGDP_val_state, 
                                  r = r_val, 
                                  k_10_14 = k_male_10_14_state,
                                  k_15_19 = k_male_15_19_state,
                                  k_20_24 = k_male_20_24_state, 
                                  k_25_29 = k_male_25_29_state, 
                                  k_30_34 = k_male_30_34_state,
                                  k_35_39 = k_male_35_39_state, 
                                  k_40_44 = k_male_40_44_state, 
                                  k_45_49 = k_male_45_49_state,
                                  k_50_54 = k_male_50_54_state, 
                                  k_55_59 = k_male_55_59_state, 
                                  k_60_64 = k_male_60_64_state,
                                  k_65_69 = k_male_65_69_state, 
                                  k_70_74 = k_male_70_74_state, 
                                  k_75_79 = k_male_75_79_state,
                                  k_80_84 = k_male_80_84_state, 
                                  k_85_89 = k_male_85_89_state, 
                                  k_90_94 = k_male_90_94_state,
                                  k_95_onwards = k_male_95_onwards_state)
  # save values in data frame
  print(tmvyll_val_m_temp)
  # return bound data frame
  tmvyll_df_m_temp = data.frame(state_name = s,
                                gender = "Male",
                                tmvyll = tmvyll_val_m_temp$tmvyll,
                                mvyll_10_14 = tmvyll_val_m_temp$mvyll_10_14,
                                mvyll_15_19 = tmvyll_val_m_temp$mvyll_15_19,
                                mvyll_20_24 = tmvyll_val_m_temp$mvyll_20_24,
                                mvyll_25_29 = tmvyll_val_m_temp$mvyll_25_29,
                                mvyll_30_34 = tmvyll_val_m_temp$mvyll_30_34,
                                mvyll_35_39 = tmvyll_val_m_temp$mvyll_35_39,
                                mvyll_40_44 = tmvyll_val_m_temp$mvyll_40_44,
                                mvyll_45_49 = tmvyll_val_m_temp$mvyll_45_49,
                                mvyll_50_54 = tmvyll_val_m_temp$mvyll_50_54,
                                mvyll_55_59 = tmvyll_val_m_temp$mvyll_55_59,
                                mvyll_60_64 = tmvyll_val_m_temp$mvyll_60_64,
                                mvyll_65_69 = tmvyll_val_m_temp$mvyll_65_69,
                                mvyll_70_74 = tmvyll_val_m_temp$mvyll_70_74,
                                mvyll_75_79 = tmvyll_val_m_temp$mvyll_75_79,
                                mvyll_80_84 = tmvyll_val_m_temp$mvyll_80_84,
                                mvyll_85_89 = tmvyll_val_m_temp$mvyll_85_89,
                                mvyll_90_94 = tmvyll_val_m_temp$mvyll_90_94,
                                mvyll_95_onwards = tmvyll_val_m_temp$mvyll_95_onwards,
                                tmvyll_lb = tmvyll_val_m_temp$tmvyll_lb,
                                mvyll_10_14_lb = tmvyll_val_m_temp$mvyll_10_14_lb,
                                mvyll_15_19_lb = tmvyll_val_m_temp$mvyll_15_19_lb,
                                mvyll_20_24_lb = tmvyll_val_m_temp$mvyll_20_24_lb,
                                mvyll_25_29_lb = tmvyll_val_m_temp$mvyll_25_29_lb,
                                mvyll_30_34_lb = tmvyll_val_m_temp$mvyll_30_34_lb,
                                mvyll_35_39_lb = tmvyll_val_m_temp$mvyll_35_39_lb,
                                mvyll_40_44_lb = tmvyll_val_m_temp$mvyll_40_44_lb,
                                mvyll_45_49_lb = tmvyll_val_m_temp$mvyll_45_49_lb,
                                mvyll_50_54_lb = tmvyll_val_m_temp$mvyll_50_54_lb,
                                mvyll_55_59_lb = tmvyll_val_m_temp$mvyll_55_59_lb,
                                mvyll_60_64_lb = tmvyll_val_m_temp$mvyll_60_64_lb,
                                mvyll_65_69_lb = tmvyll_val_m_temp$mvyll_65_69_lb,
                                mvyll_70_74_lb = tmvyll_val_m_temp$mvyll_70_74_lb,
                                mvyll_75_79_lb = tmvyll_val_m_temp$mvyll_75_79_lb,
                                mvyll_80_84_lb = tmvyll_val_m_temp$mvyll_80_84_lb,
                                mvyll_85_89_lb = tmvyll_val_m_temp$mvyll_85_89_lb,
                                mvyll_90_94_lb = tmvyll_val_m_temp$mvyll_90_94_lb,
                                mvyll_95_onwards_lb = tmvyll_val_m_temp$mvyll_95_onwards_lb,
                                
                                tmvyll_ub = tmvyll_val_m_temp$tmvyll_ub,
                                mvyll_10_14_ub = tmvyll_val_m_temp$mvyll_10_14_ub,
                                mvyll_15_19_ub = tmvyll_val_m_temp$mvyll_15_19_ub,
                                mvyll_20_24_ub = tmvyll_val_m_temp$mvyll_20_24_ub,
                                mvyll_25_29_ub = tmvyll_val_m_temp$mvyll_25_29_ub,
                                mvyll_30_34_ub = tmvyll_val_m_temp$mvyll_30_34_ub,
                                mvyll_35_39_ub = tmvyll_val_m_temp$mvyll_35_39_ub,
                                mvyll_40_44_ub = tmvyll_val_m_temp$mvyll_40_44_ub,
                                mvyll_45_49_ub = tmvyll_val_m_temp$mvyll_45_49_ub,
                                mvyll_50_54_ub = tmvyll_val_m_temp$mvyll_50_54_ub,
                                mvyll_55_59_ub = tmvyll_val_m_temp$mvyll_55_59_ub,
                                mvyll_60_64_ub = tmvyll_val_m_temp$mvyll_60_64_ub,
                                mvyll_65_69_ub = tmvyll_val_m_temp$mvyll_65_69_ub,
                                mvyll_70_74_ub = tmvyll_val_m_temp$mvyll_70_74_ub,
                                mvyll_75_79_ub = tmvyll_val_m_temp$mvyll_75_79_ub,
                                mvyll_80_84_ub = tmvyll_val_m_temp$mvyll_80_84_ub,
                                mvyll_85_89_ub = tmvyll_val_m_temp$mvyll_85_89_ub,
                                mvyll_90_94_ub = tmvyll_val_m_temp$mvyll_90_94_ub,
                                mvyll_95_onwards_ub = tmvyll_val_m_temp$mvyll_95_onwards_ub)
  tmvyll_df_5_kle_in <- rbind(tmvyll_df_5_kle_in, tmvyll_df_m_temp)
  
  
  #Females
  
  tmvyll_val_f_temp = calc_tmvyll(SD_10_14 = SD_10_14_state,
                                  SD_15_19 = SD_15_19_state,
                                  SD_20_24 = SD_20_24_state, 
                                  SD_25_29 = SD_25_29_state, 
                                  SD_30_34 = SD_30_34_state,
                                  SD_35_39 = SD_35_39_state, 
                                  SD_40_44 = SD_40_44_state, 
                                  SD_45_49 = SD_45_49_state,
                                  SD_50_54 = SD_50_54_state, 
                                  SD_55_59 = SD_55_59_state, 
                                  SD_60_64 = SD_60_64_state,
                                  SD_65_69 = SD_65_69_state, 
                                  SD_70_74 = SD_70_74_state, 
                                  SD_75_79 = SD_75_79_state,
                                  SD_80_84 = SD_80_84_state, 
                                  SD_85_89 = SD_85_89_state, 
                                  SD_90_94 = SD_90_94_state,
                                  SD_95_onwards = SD_95_onwards_state,
                                  SD_10_14_lb = SD_10_14_state_lb,
                                  SD_15_19_lb = SD_15_19_state_lb,
                                  SD_20_24_lb = SD_20_24_state_lb, 
                                  SD_25_29_lb = SD_25_29_state_lb, 
                                  SD_30_34_lb = SD_30_34_state_lb,
                                  SD_35_39_lb = SD_35_39_state_lb, 
                                  SD_40_44_lb = SD_40_44_state_lb, 
                                  SD_45_49_lb = SD_45_49_state_lb,
                                  SD_50_54_lb = SD_50_54_state_lb, 
                                  SD_55_59_lb = SD_55_59_state_lb, 
                                  SD_60_64_lb = SD_60_64_state_lb,
                                  SD_65_69_lb = SD_65_69_state_lb, 
                                  SD_70_74_lb = SD_70_74_state_lb, 
                                  SD_75_79_lb = SD_75_79_state_lb,
                                  SD_80_84_lb = SD_80_84_state_lb, 
                                  SD_85_89_lb = SD_85_89_state_lb, 
                                  SD_90_94_lb = SD_90_94_state_lb,
                                  SD_95_onwards_lb = SD_95_onwards_state_lb, 
                                  SD_10_14_ub = SD_10_14_state_ub,
                                  SD_15_19_ub = SD_15_19_state_ub,
                                  SD_20_24_ub = SD_20_24_state_ub, 
                                  SD_25_29_ub = SD_25_29_state_ub, 
                                  SD_30_34_ub = SD_30_34_state_ub,
                                  SD_35_39_ub = SD_35_39_state_ub, 
                                  SD_40_44_ub = SD_40_44_state_ub, 
                                  SD_45_49_ub = SD_45_49_state_ub,
                                  SD_50_54_ub = SD_50_54_state_ub, 
                                  SD_55_59_ub = SD_55_59_state_ub, 
                                  SD_60_64_ub = SD_60_64_state_ub,
                                  SD_65_69_ub = SD_65_69_state_ub, 
                                  SD_70_74_ub = SD_70_74_state_ub, 
                                  SD_75_79_ub = SD_75_79_state_ub,
                                  SD_80_84_ub = SD_80_84_state_ub, 
                                  SD_85_89_ub = SD_85_89_state_ub, 
                                  SD_90_94_ub = SD_90_94_state_ub,
                                  SD_95_onwards_ub = SD_95_onwards_state_ub,
                                  NGDP = NGDP_val_state, 
                                  r = r_val, 
                                  k_10_14 = k_female_10_14_state,
                                  k_15_19 = k_female_15_19_state,
                                  k_20_24 = k_female_20_24_state, 
                                  k_25_29 = k_female_25_29_state, 
                                  k_30_34 = k_female_30_34_state,
                                  k_35_39 = k_female_35_39_state, 
                                  k_40_44 = k_female_40_44_state, 
                                  k_45_49 = k_female_45_49_state,
                                  k_50_54 = k_female_50_54_state, 
                                  k_55_59 = k_female_55_59_state, 
                                  k_60_64 = k_female_60_64_state,
                                  k_65_69 = k_female_65_69_state, 
                                  k_70_74 = k_female_70_74_state, 
                                  k_75_79 = k_female_75_79_state,
                                  k_80_84 = k_female_80_84_state, 
                                  k_85_89 = k_female_85_89_state, 
                                  k_90_94 = k_female_90_94_state,
                                  k_95_onwards = k_female_95_onwards_state)
  # save values in data frame
  print(tmvyll_val_f_temp)
  # return bound data frame
  tmvyll_df_f_temp = data.frame(state_name = s,
                                gender = "Female",
                                tmvyll = tmvyll_val_f_temp$tmvyll,
                                mvyll_10_14 = tmvyll_val_f_temp$mvyll_10_14,
                                mvyll_15_19 = tmvyll_val_f_temp$mvyll_15_19,
                                mvyll_20_24 = tmvyll_val_f_temp$mvyll_20_24,
                                mvyll_25_29 = tmvyll_val_f_temp$mvyll_25_29,
                                mvyll_30_34 = tmvyll_val_f_temp$mvyll_30_34,
                                mvyll_35_39 = tmvyll_val_f_temp$mvyll_35_39,
                                mvyll_40_44 = tmvyll_val_f_temp$mvyll_40_44,
                                mvyll_45_49 = tmvyll_val_f_temp$mvyll_45_49,
                                mvyll_50_54 = tmvyll_val_f_temp$mvyll_50_54,
                                mvyll_55_59 = tmvyll_val_f_temp$mvyll_55_59,
                                mvyll_60_64 = tmvyll_val_f_temp$mvyll_60_64,
                                mvyll_65_69 = tmvyll_val_f_temp$mvyll_65_69,
                                mvyll_70_74 = tmvyll_val_f_temp$mvyll_70_74,
                                mvyll_75_79 = tmvyll_val_f_temp$mvyll_75_79,
                                mvyll_80_84 = tmvyll_val_f_temp$mvyll_80_84,
                                mvyll_85_89 = tmvyll_val_f_temp$mvyll_85_89,
                                mvyll_90_94 = tmvyll_val_f_temp$mvyll_90_94,
                                mvyll_95_onwards = tmvyll_val_f_temp$mvyll_95_onwards,
                                tmvyll_lb = tmvyll_val_f_temp$tmvyll_lb,
                                mvyll_10_14_lb = tmvyll_val_f_temp$mvyll_10_14_lb,
                                mvyll_15_19_lb = tmvyll_val_f_temp$mvyll_15_19_lb,
                                mvyll_20_24_lb = tmvyll_val_f_temp$mvyll_20_24_lb,
                                mvyll_25_29_lb = tmvyll_val_f_temp$mvyll_25_29_lb,
                                mvyll_30_34_lb = tmvyll_val_f_temp$mvyll_30_34_lb,
                                mvyll_35_39_lb = tmvyll_val_f_temp$mvyll_35_39_lb,
                                mvyll_40_44_lb = tmvyll_val_f_temp$mvyll_40_44_lb,
                                mvyll_45_49_lb = tmvyll_val_f_temp$mvyll_45_49_lb,
                                mvyll_50_54_lb = tmvyll_val_f_temp$mvyll_50_54_lb,
                                mvyll_55_59_lb = tmvyll_val_f_temp$mvyll_55_59_lb,
                                mvyll_60_64_lb = tmvyll_val_f_temp$mvyll_60_64_lb,
                                mvyll_65_69_lb = tmvyll_val_f_temp$mvyll_65_69_lb,
                                mvyll_70_74_lb = tmvyll_val_f_temp$mvyll_70_74_lb,
                                mvyll_75_79_lb = tmvyll_val_f_temp$mvyll_75_79_lb,
                                mvyll_80_84_lb = tmvyll_val_f_temp$mvyll_80_84_lb,
                                mvyll_85_89_lb = tmvyll_val_f_temp$mvyll_85_89_lb,
                                mvyll_90_94_lb = tmvyll_val_f_temp$mvyll_90_94_lb,
                                mvyll_95_onwards_lb = tmvyll_val_f_temp$mvyll_95_onwards_lb,
                                
                                tmvyll_ub = tmvyll_val_f_temp$tmvyll_ub,
                                mvyll_10_14_ub = tmvyll_val_f_temp$mvyll_10_14_ub,
                                mvyll_15_19_ub = tmvyll_val_f_temp$mvyll_15_19_ub,
                                mvyll_20_24_ub = tmvyll_val_f_temp$mvyll_20_24_ub,
                                mvyll_25_29_ub = tmvyll_val_f_temp$mvyll_25_29_ub,
                                mvyll_30_34_ub = tmvyll_val_f_temp$mvyll_30_34_ub,
                                mvyll_35_39_ub = tmvyll_val_f_temp$mvyll_35_39_ub,
                                mvyll_40_44_ub = tmvyll_val_f_temp$mvyll_40_44_ub,
                                mvyll_45_49_ub = tmvyll_val_f_temp$mvyll_45_49_ub,
                                mvyll_50_54_ub = tmvyll_val_f_temp$mvyll_50_54_ub,
                                mvyll_55_59_ub = tmvyll_val_f_temp$mvyll_55_59_ub,
                                mvyll_60_64_ub = tmvyll_val_f_temp$mvyll_60_64_ub,
                                mvyll_65_69_ub = tmvyll_val_f_temp$mvyll_65_69_ub,
                                mvyll_70_74_ub = tmvyll_val_f_temp$mvyll_70_74_ub,
                                mvyll_75_79_ub = tmvyll_val_f_temp$mvyll_75_79_ub,
                                mvyll_80_84_ub = tmvyll_val_f_temp$mvyll_80_84_ub,
                                mvyll_85_89_ub = tmvyll_val_f_temp$mvyll_85_89_ub,
                                mvyll_90_94_ub = tmvyll_val_f_temp$mvyll_90_94_ub,
                                mvyll_95_onwards_ub = tmvyll_val_f_temp$mvyll_95_onwards_ub)
  tmvyll_df_5_kle_in <- rbind(tmvyll_df_5_kle_in, tmvyll_df_f_temp)
  
}

tmvyll_df_5_kle_in_usd <- tmvyll_df_5_kle_in
tmvyll_df_5_kle_in_usd[,3:59] <- tmvyll_df_5_kle_in_usd[,3:59]/70.394

write.csv(tmvyll_df_5_kle_in, file = "~/ASAR/Mental_health_econ_burden_india/UA_r5_kle_in_INR.csv")
write.csv(tmvyll_df_5_kle_in_usd, file = "~/ASAR/Mental_health_econ_burden_india/UA_r5_kle_in_USD.csv")

###################
# r value is 10 percent
###################

tmvyll_df_10_kle_in <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                               mvyll_10_14 = numeric(),mvyll_15_19 = numeric(),mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                               mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                               mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),mvyll_65_69 = numeric(),
                               mvyll_70_74 = numeric(),mvyll_75_79 = numeric(),mvyll_80_84 = numeric(),mvyll_85_89 = numeric(),
                               mvyll_90_94 = numeric(),mvyll_95_onwards = numeric(),tmvyll_lb = numeric(), 
                               mvyll_10_14_lb = numeric(),mvyll_15_19_lb = numeric(),mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                               mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                               mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),mvyll_65_69_lb = numeric(),
                               mvyll_70_74_lb = numeric(),mvyll_75_79_lb = numeric(),mvyll_80_84_lb = numeric(),mvyll_85_89_lb = numeric(),
                               mvyll_90_94_lb = numeric(),mvyll_95_onwards_lb = numeric(),tmvyll_ub = numeric(), 
                               mvyll_10_14_ub = numeric(),mvyll_15_19_ub = numeric(),mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                               mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                               mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric(),mvyll_65_69_ub = numeric(),
                               mvyll_70_74_ub = numeric(),mvyll_75_79_ub = numeric(),mvyll_80_84_ub = numeric(),mvyll_85_89_ub = numeric(),
                               mvyll_90_94_ub = numeric(),mvyll_95_onwards_ub = numeric())

for( s in state_list){
  tmvyll_df_m_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_10_14 = numeric(),mvyll_15_19 = numeric(),mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),mvyll_65_69 = numeric(),
                                 mvyll_70_74 = numeric(),mvyll_75_79 = numeric(),mvyll_80_84 = numeric(),mvyll_85_89 = numeric(),
                                 mvyll_90_94 = numeric(),mvyll_95_onwards = numeric(),tmvyll_lb = numeric(), 
                                 mvyll_10_14_lb = numeric(),mvyll_15_19_lb = numeric(),mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                                 mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                                 mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),mvyll_65_69_lb = numeric(),
                                 mvyll_70_74_lb = numeric(),mvyll_75_79_lb = numeric(),mvyll_80_84_lb = numeric(),mvyll_85_89_lb = numeric(),
                                 mvyll_90_94_lb = numeric(),mvyll_95_onwards_lb = numeric(),tmvyll_ub = numeric(), 
                                 mvyll_10_14_ub = numeric(),mvyll_15_19_ub = numeric(),mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                                 mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                                 mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric(),mvyll_65_69_ub = numeric(),
                                 mvyll_70_74_ub = numeric(),mvyll_75_79_ub = numeric(),mvyll_80_84_ub = numeric(),mvyll_85_89_ub = numeric(),
                                 mvyll_90_94_ub = numeric(),mvyll_95_onwards_ub = numeric())
  tmvyll_df_f_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_10_14 = numeric(),mvyll_15_19 = numeric(),mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),mvyll_65_69 = numeric(),
                                 mvyll_70_74 = numeric(),mvyll_75_79 = numeric(),mvyll_80_84 = numeric(),mvyll_85_89 = numeric(),
                                 mvyll_90_94 = numeric(),mvyll_95_onwards = numeric(),tmvyll_lb = numeric(), 
                                 mvyll_10_14_lb = numeric(),mvyll_15_19_lb = numeric(),mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                                 mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                                 mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),mvyll_65_69_lb = numeric(),
                                 mvyll_70_74_lb = numeric(),mvyll_75_79_lb = numeric(),mvyll_80_84_lb = numeric(),mvyll_85_89_lb = numeric(),
                                 mvyll_90_94_lb = numeric(),mvyll_95_onwards_lb = numeric(),tmvyll_ub = numeric(), 
                                 mvyll_10_14_ub = numeric(),mvyll_15_19_ub = numeric(),mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                                 mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                                 mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric(),mvyll_65_69_ub = numeric(),
                                 mvyll_70_74_ub = numeric(),mvyll_75_79_ub = numeric(),mvyll_80_84_ub = numeric(),mvyll_85_89_ub = numeric(),
                                 mvyll_90_94_ub = numeric(),mvyll_95_onwards_ub = numeric())
  r_val = 0.10
  
  #K for males
  k_male_10_14_state = LE_Male_10_to_14$k_le_in[which(LE_Male_10_to_14$Location == s)]
  k_male_15_19_state = LE_Male_15_to_19$k_le_in[which(LE_Male_15_to_19$Location == s)]
  k_male_20_24_state = LE_Male_20_to_24$k_le_in[which(LE_Male_20_to_24$Location == s)]
  k_male_25_29_state = LE_Male_25_to_29$k_le_in[which(LE_Male_25_to_29$Location == s)]
  k_male_30_34_state = LE_Male_30_to_34$k_le_in[which(LE_Male_30_to_34$Location == s)]
  k_male_35_39_state = LE_Male_35_to_39$k_le_in[which(LE_Male_35_to_39$Location == s)]
  k_male_40_44_state = LE_Male_40_to_44$k_le_in[which(LE_Male_40_to_44$Location == s)]
  k_male_45_49_state = LE_Male_45_to_49$k_le_in[which(LE_Male_45_to_49$Location == s)]
  k_male_50_54_state = LE_Male_50_to_54$k_le_in[which(LE_Male_50_to_54$Location == s)]
  k_male_55_59_state = LE_Male_55_to_59$k_le_in[which(LE_Male_55_to_59$Location == s)]
  k_male_60_64_state = LE_Male_60_to_64$k_le_in[which(LE_Male_60_to_64$Location == s)]
  k_male_65_69_state = LE_Male_65_to_69$k_le_in[which(LE_Male_65_to_69$Location == s)]
  k_male_70_74_state = LE_Male_70_to_74$k_le_in[which(LE_Male_70_to_74$Location == s)]
  k_male_75_79_state = LE_Male_75_to_79$k_le_in[which(LE_Male_75_to_79$Location == s)]
  k_male_80_84_state = LE_Male_80_to_84$k_le_in[which(LE_Male_80_to_84$Location == s)]
  k_male_85_89_state = LE_Male_85_to_89$k_le_in[which(LE_Male_85_to_89$Location == s)]
  k_male_90_94_state = LE_Male_90_to_94$k_le_in[which(LE_Male_90_to_94$Location == s)]
  k_male_95_onwards_state = LE_Male_95_onwards$k_le_in[which(LE_Male_95_onwards$Location == s)]
  
  #K for females
  k_female_10_14_state = LE_Female_10_to_14$k_le_in[which(LE_Female_10_to_14$Location == s)]
  k_female_15_19_state = LE_Female_15_to_19$k_le_in[which(LE_Female_15_to_19$Location == s)]
  k_female_20_24_state = LE_Female_20_to_24$k_le_in[which(LE_Female_20_to_24$Location == s)]
  k_female_25_29_state = LE_Female_25_to_29$k_le_in[which(LE_Female_25_to_29$Location == s)]
  k_female_30_34_state = LE_Female_30_to_34$k_le_in[which(LE_Female_30_to_34$Location == s)]
  k_female_35_39_state = LE_Female_35_to_39$k_le_in[which(LE_Female_35_to_39$Location == s)]
  k_female_40_44_state = LE_Female_40_to_44$k_le_in[which(LE_Female_40_to_44$Location == s)]
  k_female_45_49_state = LE_Female_45_to_49$k_le_in[which(LE_Female_45_to_49$Location == s)]
  k_female_50_54_state = LE_Female_50_to_54$k_le_in[which(LE_Female_50_to_54$Location == s)]
  k_female_55_59_state = LE_Female_55_to_59$k_le_in[which(LE_Female_55_to_59$Location == s)]
  k_female_60_64_state = LE_Female_60_to_64$k_le_in[which(LE_Female_60_to_64$Location == s)]
  k_female_65_69_state = LE_Female_65_to_69$k_le_in[which(LE_Female_65_to_69$Location == s)]
  k_female_70_74_state = LE_Female_70_to_74$k_le_in[which(LE_Female_70_to_74$Location == s)]
  k_female_75_79_state = LE_Female_75_to_79$k_le_in[which(LE_Female_75_to_79$Location == s)]
  k_female_80_84_state = LE_Female_80_to_84$k_le_in[which(LE_Female_80_to_84$Location == s)]
  k_female_85_89_state = LE_Female_85_to_89$k_le_in[which(LE_Female_85_to_89$Location == s)]
  k_female_90_94_state = LE_Female_90_to_94$k_le_in[which(LE_Female_90_to_94$Location == s)]
  k_female_95_onwards_state = LE_Female_95_onwards$k_le_in[which(LE_Female_95_onwards$Location == s)]
  
  NGDP_val_state = State_GDP$`Non Health GSDP = GSDP_per_capita-TGHE_per_capita`[which(State_GDP$State == s)]
  SD_10_14_state = Deaths_10_to_14$Value[which(Deaths_10_to_14$Location == s)] 
  SD_15_19_state = Deaths_15_to_19$Value[which(Deaths_15_to_19$Location == s)]
  SD_20_24_state = Deaths_20_to_24$Value[which(Deaths_20_to_24$Location == s)]
  SD_25_29_state = Deaths_25_to_29$Value[which(Deaths_25_to_29$Location == s)]
  SD_30_34_state = Deaths_30_to_34$Value[which(Deaths_30_to_34$Location == s)]
  SD_35_39_state = Deaths_35_to_39$Value[which(Deaths_35_to_39$Location == s)]
  SD_40_44_state = Deaths_40_to_44$Value[which(Deaths_40_to_44$Location == s)]
  SD_45_49_state = Deaths_45_to_49$Value[which(Deaths_45_to_49$Location == s)]
  SD_50_54_state = Deaths_50_to_54$Value[which(Deaths_50_to_54$Location == s)]
  SD_55_59_state = Deaths_55_to_59$Value[which(Deaths_55_to_59$Location == s)]
  SD_60_64_state = Deaths_60_to_64$Value[which(Deaths_60_to_64$Location == s)]
  SD_65_69_state = Deaths_65_to_69$Value[which(Deaths_65_to_69$Location == s)]
  SD_70_74_state = Deaths_70_to_74$Value[which(Deaths_70_to_74$Location == s)]
  SD_75_79_state = Deaths_75_to_79$Value[which(Deaths_75_to_79$Location == s)]
  SD_80_84_state = Deaths_80_to_84$Value[which(Deaths_80_to_84$Location == s)]
  SD_85_89_state = Deaths_85_to_89$Value[which(Deaths_85_to_89$Location == s)]
  SD_90_94_state = Deaths_90_to_94$Value[which(Deaths_90_to_94$Location == s)]
  SD_95_onwards_state = Deaths_95_onwards$Value[which(Deaths_95_onwards$Location == s)]
  # SD Lower bound values
  SD_10_14_state_lb = Deaths_10_to_14$`Lower bound`[which(Deaths_10_to_14$Location == s)] 
  SD_15_19_state_lb = Deaths_15_to_19$`Lower bound`[which(Deaths_15_to_19$Location == s)]
  SD_20_24_state_lb = Deaths_20_to_24$`Lower bound`[which(Deaths_20_to_24$Location == s)]
  SD_25_29_state_lb = Deaths_25_to_29$`Lower bound`[which(Deaths_25_to_29$Location == s)]
  SD_30_34_state_lb = Deaths_30_to_34$`Lower bound`[which(Deaths_30_to_34$Location == s)]
  SD_35_39_state_lb = Deaths_35_to_39$`Lower bound`[which(Deaths_35_to_39$Location == s)]
  SD_40_44_state_lb = Deaths_40_to_44$`Lower bound`[which(Deaths_40_to_44$Location == s)]
  SD_45_49_state_lb = Deaths_45_to_49$`Lower bound`[which(Deaths_45_to_49$Location == s)]
  SD_50_54_state_lb = Deaths_50_to_54$`Lower bound`[which(Deaths_50_to_54$Location == s)]
  SD_55_59_state_lb = Deaths_55_to_59$`Lower bound`[which(Deaths_55_to_59$Location == s)]
  SD_60_64_state_lb = Deaths_60_to_64$`Lower bound`[which(Deaths_60_to_64$Location == s)]
  SD_65_69_state_lb = Deaths_65_to_69$`Lower bound`[which(Deaths_65_to_69$Location == s)]
  SD_70_74_state_lb = Deaths_70_to_74$`Lower bound`[which(Deaths_70_to_74$Location == s)]
  SD_75_79_state_lb = Deaths_75_to_79$`Lower bound`[which(Deaths_75_to_79$Location == s)]
  SD_80_84_state_lb = Deaths_80_to_84$`Lower bound`[which(Deaths_80_to_84$Location == s)]
  SD_85_89_state_lb = Deaths_85_to_89$`Lower bound`[which(Deaths_85_to_89$Location == s)]
  SD_90_94_state_lb = Deaths_90_to_94$`Lower bound`[which(Deaths_90_to_94$Location == s)]
  SD_95_onwards_state_lb = Deaths_95_onwards$`Lower bound`[which(Deaths_95_onwards$Location == s)]
  
  #SD Upper bound values
  SD_10_14_state_ub = Deaths_10_to_14$`Upper bound`[which(Deaths_10_to_14$Location == s)] 
  SD_15_19_state_ub = Deaths_15_to_19$`Upper bound`[which(Deaths_15_to_19$Location == s)]
  SD_20_24_state_ub = Deaths_20_to_24$`Upper bound`[which(Deaths_20_to_24$Location == s)]
  SD_25_29_state_ub = Deaths_25_to_29$`Upper bound`[which(Deaths_25_to_29$Location == s)]
  SD_30_34_state_ub = Deaths_30_to_34$`Upper bound`[which(Deaths_30_to_34$Location == s)]
  SD_35_39_state_ub = Deaths_35_to_39$`Upper bound`[which(Deaths_35_to_39$Location == s)]
  SD_40_44_state_ub = Deaths_40_to_44$`Upper bound`[which(Deaths_40_to_44$Location == s)]
  SD_45_49_state_ub = Deaths_45_to_49$`Upper bound`[which(Deaths_45_to_49$Location == s)]
  SD_50_54_state_ub = Deaths_50_to_54$`Upper bound`[which(Deaths_50_to_54$Location == s)]
  SD_55_59_state_ub = Deaths_55_to_59$`Upper bound`[which(Deaths_55_to_59$Location == s)]
  SD_60_64_state_ub = Deaths_60_to_64$`Upper bound`[which(Deaths_60_to_64$Location == s)]
  SD_65_69_state_ub = Deaths_65_to_69$`Upper bound`[which(Deaths_65_to_69$Location == s)]
  SD_70_74_state_ub = Deaths_70_to_74$`Upper bound`[which(Deaths_70_to_74$Location == s)]
  SD_75_79_state_ub = Deaths_75_to_79$`Upper bound`[which(Deaths_75_to_79$Location == s)]
  SD_80_84_state_ub = Deaths_80_to_84$`Upper bound`[which(Deaths_80_to_84$Location == s)]
  SD_85_89_state_ub = Deaths_85_to_89$`Upper bound`[which(Deaths_85_to_89$Location == s)]
  SD_90_94_state_ub = Deaths_90_to_94$`Upper bound`[which(Deaths_90_to_94$Location == s)]
  SD_95_onwards_state_ub = Deaths_95_onwards$`Upper bound`[which(Deaths_95_onwards$Location == s)]
  
  # Place state name
  #tmvyll_df_m_temp$state_name <- s
  #tmvyll_df_m_temp$gender <- "Male"
  
  #tmvyll_df_f_temp$state_name <- s
  #tmvyll_df_f_temp$gender <- "Female"
  
  
  #Males
  # send values for each sd for that state name
  tmvyll_val_m_temp = calc_tmvyll(SD_10_14 = SD_10_14_state,
                                  SD_15_19 = SD_15_19_state,
                                  SD_20_24 = SD_20_24_state, 
                                  SD_25_29 = SD_25_29_state, 
                                  SD_30_34 = SD_30_34_state,
                                  SD_35_39 = SD_35_39_state, 
                                  SD_40_44 = SD_40_44_state, 
                                  SD_45_49 = SD_45_49_state,
                                  SD_50_54 = SD_50_54_state, 
                                  SD_55_59 = SD_55_59_state, 
                                  SD_60_64 = SD_60_64_state,
                                  SD_65_69 = SD_65_69_state, 
                                  SD_70_74 = SD_70_74_state, 
                                  SD_75_79 = SD_75_79_state,
                                  SD_80_84 = SD_80_84_state, 
                                  SD_85_89 = SD_85_89_state, 
                                  SD_90_94 = SD_90_94_state,
                                  SD_95_onwards = SD_95_onwards_state,
                                  SD_10_14_lb = SD_10_14_state_lb,
                                  SD_15_19_lb = SD_15_19_state_lb,
                                  SD_20_24_lb = SD_20_24_state_lb, 
                                  SD_25_29_lb = SD_25_29_state_lb, 
                                  SD_30_34_lb = SD_30_34_state_lb,
                                  SD_35_39_lb = SD_35_39_state_lb, 
                                  SD_40_44_lb = SD_40_44_state_lb, 
                                  SD_45_49_lb = SD_45_49_state_lb,
                                  SD_50_54_lb = SD_50_54_state_lb, 
                                  SD_55_59_lb = SD_55_59_state_lb, 
                                  SD_60_64_lb = SD_60_64_state_lb,
                                  SD_65_69_lb = SD_65_69_state_lb, 
                                  SD_70_74_lb = SD_70_74_state_lb, 
                                  SD_75_79_lb = SD_75_79_state_lb,
                                  SD_80_84_lb = SD_80_84_state_lb, 
                                  SD_85_89_lb = SD_85_89_state_lb, 
                                  SD_90_94_lb = SD_90_94_state_lb,
                                  SD_95_onwards_lb = SD_95_onwards_state_lb, 
                                  SD_10_14_ub = SD_10_14_state_ub,
                                  SD_15_19_ub = SD_15_19_state_ub,
                                  SD_20_24_ub = SD_20_24_state_ub, 
                                  SD_25_29_ub = SD_25_29_state_ub, 
                                  SD_30_34_ub = SD_30_34_state_ub,
                                  SD_35_39_ub = SD_35_39_state_ub, 
                                  SD_40_44_ub = SD_40_44_state_ub, 
                                  SD_45_49_ub = SD_45_49_state_ub,
                                  SD_50_54_ub = SD_50_54_state_ub, 
                                  SD_55_59_ub = SD_55_59_state_ub, 
                                  SD_60_64_ub = SD_60_64_state_ub,
                                  SD_65_69_ub = SD_65_69_state_ub, 
                                  SD_70_74_ub = SD_70_74_state_ub, 
                                  SD_75_79_ub = SD_75_79_state_ub,
                                  SD_80_84_ub = SD_80_84_state_ub, 
                                  SD_85_89_ub = SD_85_89_state_ub, 
                                  SD_90_94_ub = SD_90_94_state_ub,
                                  SD_95_onwards_ub = SD_95_onwards_state_ub,
                                  NGDP = NGDP_val_state, 
                                  r = r_val, 
                                  k_10_14 = k_male_10_14_state,
                                  k_15_19 = k_male_15_19_state,
                                  k_20_24 = k_male_20_24_state, 
                                  k_25_29 = k_male_25_29_state, 
                                  k_30_34 = k_male_30_34_state,
                                  k_35_39 = k_male_35_39_state, 
                                  k_40_44 = k_male_40_44_state, 
                                  k_45_49 = k_male_45_49_state,
                                  k_50_54 = k_male_50_54_state, 
                                  k_55_59 = k_male_55_59_state, 
                                  k_60_64 = k_male_60_64_state,
                                  k_65_69 = k_male_65_69_state, 
                                  k_70_74 = k_male_70_74_state, 
                                  k_75_79 = k_male_75_79_state,
                                  k_80_84 = k_male_80_84_state, 
                                  k_85_89 = k_male_85_89_state, 
                                  k_90_94 = k_male_90_94_state,
                                  k_95_onwards = k_male_95_onwards_state)
  # save values in data frame
  print(tmvyll_val_m_temp)
  # return bound data frame
  tmvyll_df_m_temp = data.frame(state_name = s,
                                gender = "Male",
                                tmvyll = tmvyll_val_m_temp$tmvyll,
                                mvyll_10_14 = tmvyll_val_m_temp$mvyll_10_14,
                                mvyll_15_19 = tmvyll_val_m_temp$mvyll_15_19,
                                mvyll_20_24 = tmvyll_val_m_temp$mvyll_20_24,
                                mvyll_25_29 = tmvyll_val_m_temp$mvyll_25_29,
                                mvyll_30_34 = tmvyll_val_m_temp$mvyll_30_34,
                                mvyll_35_39 = tmvyll_val_m_temp$mvyll_35_39,
                                mvyll_40_44 = tmvyll_val_m_temp$mvyll_40_44,
                                mvyll_45_49 = tmvyll_val_m_temp$mvyll_45_49,
                                mvyll_50_54 = tmvyll_val_m_temp$mvyll_50_54,
                                mvyll_55_59 = tmvyll_val_m_temp$mvyll_55_59,
                                mvyll_60_64 = tmvyll_val_m_temp$mvyll_60_64,
                                mvyll_65_69 = tmvyll_val_m_temp$mvyll_65_69,
                                mvyll_70_74 = tmvyll_val_m_temp$mvyll_70_74,
                                mvyll_75_79 = tmvyll_val_m_temp$mvyll_75_79,
                                mvyll_80_84 = tmvyll_val_m_temp$mvyll_80_84,
                                mvyll_85_89 = tmvyll_val_m_temp$mvyll_85_89,
                                mvyll_90_94 = tmvyll_val_m_temp$mvyll_90_94,
                                mvyll_95_onwards = tmvyll_val_m_temp$mvyll_95_onwards,
                                tmvyll_lb = tmvyll_val_m_temp$tmvyll_lb,
                                mvyll_10_14_lb = tmvyll_val_m_temp$mvyll_10_14_lb,
                                mvyll_15_19_lb = tmvyll_val_m_temp$mvyll_15_19_lb,
                                mvyll_20_24_lb = tmvyll_val_m_temp$mvyll_20_24_lb,
                                mvyll_25_29_lb = tmvyll_val_m_temp$mvyll_25_29_lb,
                                mvyll_30_34_lb = tmvyll_val_m_temp$mvyll_30_34_lb,
                                mvyll_35_39_lb = tmvyll_val_m_temp$mvyll_35_39_lb,
                                mvyll_40_44_lb = tmvyll_val_m_temp$mvyll_40_44_lb,
                                mvyll_45_49_lb = tmvyll_val_m_temp$mvyll_45_49_lb,
                                mvyll_50_54_lb = tmvyll_val_m_temp$mvyll_50_54_lb,
                                mvyll_55_59_lb = tmvyll_val_m_temp$mvyll_55_59_lb,
                                mvyll_60_64_lb = tmvyll_val_m_temp$mvyll_60_64_lb,
                                mvyll_65_69_lb = tmvyll_val_m_temp$mvyll_65_69_lb,
                                mvyll_70_74_lb = tmvyll_val_m_temp$mvyll_70_74_lb,
                                mvyll_75_79_lb = tmvyll_val_m_temp$mvyll_75_79_lb,
                                mvyll_80_84_lb = tmvyll_val_m_temp$mvyll_80_84_lb,
                                mvyll_85_89_lb = tmvyll_val_m_temp$mvyll_85_89_lb,
                                mvyll_90_94_lb = tmvyll_val_m_temp$mvyll_90_94_lb,
                                mvyll_95_onwards_lb = tmvyll_val_m_temp$mvyll_95_onwards_lb,
                                
                                tmvyll_ub = tmvyll_val_m_temp$tmvyll_ub,
                                mvyll_10_14_ub = tmvyll_val_m_temp$mvyll_10_14_ub,
                                mvyll_15_19_ub = tmvyll_val_m_temp$mvyll_15_19_ub,
                                mvyll_20_24_ub = tmvyll_val_m_temp$mvyll_20_24_ub,
                                mvyll_25_29_ub = tmvyll_val_m_temp$mvyll_25_29_ub,
                                mvyll_30_34_ub = tmvyll_val_m_temp$mvyll_30_34_ub,
                                mvyll_35_39_ub = tmvyll_val_m_temp$mvyll_35_39_ub,
                                mvyll_40_44_ub = tmvyll_val_m_temp$mvyll_40_44_ub,
                                mvyll_45_49_ub = tmvyll_val_m_temp$mvyll_45_49_ub,
                                mvyll_50_54_ub = tmvyll_val_m_temp$mvyll_50_54_ub,
                                mvyll_55_59_ub = tmvyll_val_m_temp$mvyll_55_59_ub,
                                mvyll_60_64_ub = tmvyll_val_m_temp$mvyll_60_64_ub,
                                mvyll_65_69_ub = tmvyll_val_m_temp$mvyll_65_69_ub,
                                mvyll_70_74_ub = tmvyll_val_m_temp$mvyll_70_74_ub,
                                mvyll_75_79_ub = tmvyll_val_m_temp$mvyll_75_79_ub,
                                mvyll_80_84_ub = tmvyll_val_m_temp$mvyll_80_84_ub,
                                mvyll_85_89_ub = tmvyll_val_m_temp$mvyll_85_89_ub,
                                mvyll_90_94_ub = tmvyll_val_m_temp$mvyll_90_94_ub,
                                mvyll_95_onwards_ub = tmvyll_val_m_temp$mvyll_95_onwards_ub)
  tmvyll_df_10_kle_in <- rbind(tmvyll_df_10_kle_in, tmvyll_df_m_temp)
  
  
  #Females
  
  tmvyll_val_f_temp = calc_tmvyll(SD_10_14 = SD_10_14_state,
                                  SD_15_19 = SD_15_19_state,
                                  SD_20_24 = SD_20_24_state, 
                                  SD_25_29 = SD_25_29_state, 
                                  SD_30_34 = SD_30_34_state,
                                  SD_35_39 = SD_35_39_state, 
                                  SD_40_44 = SD_40_44_state, 
                                  SD_45_49 = SD_45_49_state,
                                  SD_50_54 = SD_50_54_state, 
                                  SD_55_59 = SD_55_59_state, 
                                  SD_60_64 = SD_60_64_state,
                                  SD_65_69 = SD_65_69_state, 
                                  SD_70_74 = SD_70_74_state, 
                                  SD_75_79 = SD_75_79_state,
                                  SD_80_84 = SD_80_84_state, 
                                  SD_85_89 = SD_85_89_state, 
                                  SD_90_94 = SD_90_94_state,
                                  SD_95_onwards = SD_95_onwards_state,
                                  SD_10_14_lb = SD_10_14_state_lb,
                                  SD_15_19_lb = SD_15_19_state_lb,
                                  SD_20_24_lb = SD_20_24_state_lb, 
                                  SD_25_29_lb = SD_25_29_state_lb, 
                                  SD_30_34_lb = SD_30_34_state_lb,
                                  SD_35_39_lb = SD_35_39_state_lb, 
                                  SD_40_44_lb = SD_40_44_state_lb, 
                                  SD_45_49_lb = SD_45_49_state_lb,
                                  SD_50_54_lb = SD_50_54_state_lb, 
                                  SD_55_59_lb = SD_55_59_state_lb, 
                                  SD_60_64_lb = SD_60_64_state_lb,
                                  SD_65_69_lb = SD_65_69_state_lb, 
                                  SD_70_74_lb = SD_70_74_state_lb, 
                                  SD_75_79_lb = SD_75_79_state_lb,
                                  SD_80_84_lb = SD_80_84_state_lb, 
                                  SD_85_89_lb = SD_85_89_state_lb, 
                                  SD_90_94_lb = SD_90_94_state_lb,
                                  SD_95_onwards_lb = SD_95_onwards_state_lb, 
                                  SD_10_14_ub = SD_10_14_state_ub,
                                  SD_15_19_ub = SD_15_19_state_ub,
                                  SD_20_24_ub = SD_20_24_state_ub, 
                                  SD_25_29_ub = SD_25_29_state_ub, 
                                  SD_30_34_ub = SD_30_34_state_ub,
                                  SD_35_39_ub = SD_35_39_state_ub, 
                                  SD_40_44_ub = SD_40_44_state_ub, 
                                  SD_45_49_ub = SD_45_49_state_ub,
                                  SD_50_54_ub = SD_50_54_state_ub, 
                                  SD_55_59_ub = SD_55_59_state_ub, 
                                  SD_60_64_ub = SD_60_64_state_ub,
                                  SD_65_69_ub = SD_65_69_state_ub, 
                                  SD_70_74_ub = SD_70_74_state_ub, 
                                  SD_75_79_ub = SD_75_79_state_ub,
                                  SD_80_84_ub = SD_80_84_state_ub, 
                                  SD_85_89_ub = SD_85_89_state_ub, 
                                  SD_90_94_ub = SD_90_94_state_ub,
                                  SD_95_onwards_ub = SD_95_onwards_state_ub,
                                  NGDP = NGDP_val_state, 
                                  r = r_val, 
                                  k_10_14 = k_female_10_14_state,
                                  k_15_19 = k_female_15_19_state,
                                  k_20_24 = k_female_20_24_state, 
                                  k_25_29 = k_female_25_29_state, 
                                  k_30_34 = k_female_30_34_state,
                                  k_35_39 = k_female_35_39_state, 
                                  k_40_44 = k_female_40_44_state, 
                                  k_45_49 = k_female_45_49_state,
                                  k_50_54 = k_female_50_54_state, 
                                  k_55_59 = k_female_55_59_state, 
                                  k_60_64 = k_female_60_64_state,
                                  k_65_69 = k_female_65_69_state, 
                                  k_70_74 = k_female_70_74_state, 
                                  k_75_79 = k_female_75_79_state,
                                  k_80_84 = k_female_80_84_state, 
                                  k_85_89 = k_female_85_89_state, 
                                  k_90_94 = k_female_90_94_state,
                                  k_95_onwards = k_female_95_onwards_state)
  # save values in data frame
  print(tmvyll_val_f_temp)
  # return bound data frame
  tmvyll_df_f_temp = data.frame(state_name = s,
                                gender = "Female",
                                tmvyll = tmvyll_val_f_temp$tmvyll,
                                mvyll_10_14 = tmvyll_val_f_temp$mvyll_10_14,
                                mvyll_15_19 = tmvyll_val_f_temp$mvyll_15_19,
                                mvyll_20_24 = tmvyll_val_f_temp$mvyll_20_24,
                                mvyll_25_29 = tmvyll_val_f_temp$mvyll_25_29,
                                mvyll_30_34 = tmvyll_val_f_temp$mvyll_30_34,
                                mvyll_35_39 = tmvyll_val_f_temp$mvyll_35_39,
                                mvyll_40_44 = tmvyll_val_f_temp$mvyll_40_44,
                                mvyll_45_49 = tmvyll_val_f_temp$mvyll_45_49,
                                mvyll_50_54 = tmvyll_val_f_temp$mvyll_50_54,
                                mvyll_55_59 = tmvyll_val_f_temp$mvyll_55_59,
                                mvyll_60_64 = tmvyll_val_f_temp$mvyll_60_64,
                                mvyll_65_69 = tmvyll_val_f_temp$mvyll_65_69,
                                mvyll_70_74 = tmvyll_val_f_temp$mvyll_70_74,
                                mvyll_75_79 = tmvyll_val_f_temp$mvyll_75_79,
                                mvyll_80_84 = tmvyll_val_f_temp$mvyll_80_84,
                                mvyll_85_89 = tmvyll_val_f_temp$mvyll_85_89,
                                mvyll_90_94 = tmvyll_val_f_temp$mvyll_90_94,
                                mvyll_95_onwards = tmvyll_val_f_temp$mvyll_95_onwards,
                                tmvyll_lb = tmvyll_val_f_temp$tmvyll_lb,
                                mvyll_10_14_lb = tmvyll_val_f_temp$mvyll_10_14_lb,
                                mvyll_15_19_lb = tmvyll_val_f_temp$mvyll_15_19_lb,
                                mvyll_20_24_lb = tmvyll_val_f_temp$mvyll_20_24_lb,
                                mvyll_25_29_lb = tmvyll_val_f_temp$mvyll_25_29_lb,
                                mvyll_30_34_lb = tmvyll_val_f_temp$mvyll_30_34_lb,
                                mvyll_35_39_lb = tmvyll_val_f_temp$mvyll_35_39_lb,
                                mvyll_40_44_lb = tmvyll_val_f_temp$mvyll_40_44_lb,
                                mvyll_45_49_lb = tmvyll_val_f_temp$mvyll_45_49_lb,
                                mvyll_50_54_lb = tmvyll_val_f_temp$mvyll_50_54_lb,
                                mvyll_55_59_lb = tmvyll_val_f_temp$mvyll_55_59_lb,
                                mvyll_60_64_lb = tmvyll_val_f_temp$mvyll_60_64_lb,
                                mvyll_65_69_lb = tmvyll_val_f_temp$mvyll_65_69_lb,
                                mvyll_70_74_lb = tmvyll_val_f_temp$mvyll_70_74_lb,
                                mvyll_75_79_lb = tmvyll_val_f_temp$mvyll_75_79_lb,
                                mvyll_80_84_lb = tmvyll_val_f_temp$mvyll_80_84_lb,
                                mvyll_85_89_lb = tmvyll_val_f_temp$mvyll_85_89_lb,
                                mvyll_90_94_lb = tmvyll_val_f_temp$mvyll_90_94_lb,
                                mvyll_95_onwards_lb = tmvyll_val_f_temp$mvyll_95_onwards_lb,
                                
                                tmvyll_ub = tmvyll_val_f_temp$tmvyll_ub,
                                mvyll_10_14_ub = tmvyll_val_f_temp$mvyll_10_14_ub,
                                mvyll_15_19_ub = tmvyll_val_f_temp$mvyll_15_19_ub,
                                mvyll_20_24_ub = tmvyll_val_f_temp$mvyll_20_24_ub,
                                mvyll_25_29_ub = tmvyll_val_f_temp$mvyll_25_29_ub,
                                mvyll_30_34_ub = tmvyll_val_f_temp$mvyll_30_34_ub,
                                mvyll_35_39_ub = tmvyll_val_f_temp$mvyll_35_39_ub,
                                mvyll_40_44_ub = tmvyll_val_f_temp$mvyll_40_44_ub,
                                mvyll_45_49_ub = tmvyll_val_f_temp$mvyll_45_49_ub,
                                mvyll_50_54_ub = tmvyll_val_f_temp$mvyll_50_54_ub,
                                mvyll_55_59_ub = tmvyll_val_f_temp$mvyll_55_59_ub,
                                mvyll_60_64_ub = tmvyll_val_f_temp$mvyll_60_64_ub,
                                mvyll_65_69_ub = tmvyll_val_f_temp$mvyll_65_69_ub,
                                mvyll_70_74_ub = tmvyll_val_f_temp$mvyll_70_74_ub,
                                mvyll_75_79_ub = tmvyll_val_f_temp$mvyll_75_79_ub,
                                mvyll_80_84_ub = tmvyll_val_f_temp$mvyll_80_84_ub,
                                mvyll_85_89_ub = tmvyll_val_f_temp$mvyll_85_89_ub,
                                mvyll_90_94_ub = tmvyll_val_f_temp$mvyll_90_94_ub,
                                mvyll_95_onwards_ub = tmvyll_val_f_temp$mvyll_95_onwards_ub)
  tmvyll_df_10_kle_in <- rbind(tmvyll_df_10_kle_in, tmvyll_df_f_temp)
  
}

tmvyll_df_10_kle_in_usd <- tmvyll_df_10_kle_in
tmvyll_df_10_kle_in_usd[,3:59] <- tmvyll_df_10_kle_in_usd[,3:59]/70.394

write.csv(tmvyll_df_10_kle_in, file = "~/ASAR/Mental_health_econ_burden_india/UA_r10_kle_in_INR.csv")
write.csv(tmvyll_df_10_kle_in_usd, file = "~/ASAR/Mental_health_econ_burden_india/UA_r10_kle_in_USD.csv")
