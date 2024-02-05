!/bin/R
# ASAR_MH_EB_India_calc_working_group.R
# By: Anukrati Nigam

##############################################################################################
## Script to calculate MVYLL based on observed life expectancy in Indian state in 2019 for  ##
## working age groups for 28 States and 3 union territories in India and both sexes.        ##
##############################################################################################


library(readxl)

India_2019_163_Both_3_IHME <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                                         sheet = "2019_India_163_Both_3_IHME")

Deaths_and_YLL_males <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                                   sheet = "Deaths and YLL_males")

Deaths_and_YLL_females <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                                     sheet = "Deaths and YLL_females")

Deaths_10_to_14 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_10_to_14")

Deaths_15_to_19 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_15_to_19")

Deaths_20_to_24 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_20_to_24")

Deaths_25_to_29 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_25_to_29")

Deaths_30_to_34 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_30_to_34")
Deaths_35_to_39 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_35_to_39")
Deaths_40_to_44 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_40_to_44")
Deaths_45_to_49 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_45_to_49")
Deaths_50_to_54 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_50_to_54")
Deaths_55_to_59 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_55_to_59")
Deaths_60_to_64 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_60_to_64")
Deaths_65_to_69 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_65_to_69")
Deaths_70_to_74 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_70_to_74")
Deaths_75_to_79 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_75_to_79")
Deaths_80_to_84 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_80_to_84")
Deaths_85_to_89 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_85_to_89")
Deaths_90_to_94 <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                              sheet = "Deaths_90_to_94")
Deaths_95_onwards <- read_excel("ASAR/Mental_health_econ_burden_india/25_FEB_2023_MV_Economic_burden.xlsx", 
                                sheet = "Deaths_95+")

# State GDP

State_GDP <- read_excel("ASAR/Mental_health_econ_burden_india/13_MAY_23_MV_NHA_state_gdp.xlsx", 
                        skip = 1)
State_GDP <- na.omit(State_GDP)

# State wise and gender wise k values for each age category

# Males
LE_Male_10_to_14 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_10_to_14_years")
LE_Male_10_to_14$k <- LE_Male_10_to_14$Life_Expectancy_Value - 12
LE_Male_15_to_19 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_15_to_19_years")
LE_Male_15_to_19$k <- LE_Male_15_to_19$Life_Expectancy_Value - 17
LE_Male_20_to_24 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_20_to_24_years")
LE_Male_20_to_24$k <- LE_Male_20_to_24$Life_Expectancy_Value - 22
LE_Male_25_to_29 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_25_to_29_years")
LE_Male_25_to_29$k <- LE_Male_25_to_29$Life_Expectancy_Value - 27
LE_Male_30_to_34 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_30_to_34_years")
LE_Male_30_to_34$k <- LE_Male_30_to_34$Life_Expectancy_Value - 32
LE_Male_35_to_39 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_35_to_39_years")
LE_Male_35_to_39$k <- LE_Male_35_to_39$Life_Expectancy_Value - 37
LE_Male_40_to_44 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_40_to_44_years")
LE_Male_40_to_44$k <- LE_Male_40_to_44$Life_Expectancy_Value - 42
LE_Male_45_to_49 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_45_to_49_years")
LE_Male_45_to_49$k <- LE_Male_45_to_49$Life_Expectancy_Value - 47
LE_Male_50_to_54 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_50_to_54_years")
LE_Male_50_to_54$k <- LE_Male_50_to_54$Life_Expectancy_Value - 52
LE_Male_55_to_59 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_55_to_59_years")
LE_Male_55_to_59$k <- LE_Male_55_to_59$Life_Expectancy_Value - 57
LE_Male_60_to_64 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_60_to_64_years")
LE_Male_60_to_64$k <- LE_Male_60_to_64$Life_Expectancy_Value - 62
LE_Male_65_to_69 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_65_to_69_years")
LE_Male_65_to_69$k <- LE_Male_65_to_69$Life_Expectancy_Value - 67
LE_Male_70_to_74 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_70_to_74_years")
LE_Male_70_to_74$k <- LE_Male_70_to_74$Life_Expectancy_Value - 72
LE_Male_75_to_79 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_75_to_79_years")
LE_Male_75_to_79$k <- LE_Male_75_to_79$Life_Expectancy_Value - 77
LE_Male_80_to_84 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_80_to_84_years")
LE_Male_80_to_84$k <- LE_Male_80_to_84$Life_Expectancy_Value - 82
LE_Male_85_to_89 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_85_to_89_years")
LE_Male_85_to_89$k <- LE_Male_85_to_89$Life_Expectancy_Value - 87
LE_Male_90_to_94 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                               sheet = "Male_90_to_94_years")
LE_Male_90_to_94$k <- LE_Male_90_to_94$Life_Expectancy_Value - 92
LE_Male_95_onwards <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Male_95+")
LE_Male_95_onwards$k <- LE_Male_95_onwards$Life_Expectancy_Value - 97


#Female LE
LE_Female_10_to_14 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_10_to_14")
LE_Female_10_to_14$k <- LE_Female_10_to_14$Life_expectancy_value - 12
LE_Female_15_to_19 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_15_to_19")
LE_Female_15_to_19$k <- LE_Female_15_to_19$Life_expectancy_value - 17
LE_Female_20_to_24 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_20_to_24")
LE_Female_20_to_24$k <- LE_Female_20_to_24$Life_expectancy_value - 22
LE_Female_25_to_29 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_25_to_29")
LE_Female_25_to_29$k <- LE_Female_25_to_29$Life_expectancy_value - 27
LE_Female_30_to_34 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_30_to_34")
LE_Female_30_to_34$k <- LE_Female_30_to_34$Life_expectancy_value - 32
LE_Female_35_to_39 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_35_to_39")
LE_Female_35_to_39$k <- LE_Female_35_to_39$Life_expectancy_value - 37
LE_Female_40_to_44 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_40_to_44")
LE_Female_40_to_44$k <- LE_Female_40_to_44$Life_expectancy_value - 42
LE_Female_45_to_49 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_45_to_49")
LE_Female_45_to_49$k <- LE_Female_45_to_49$Life_expectancy_value - 47
LE_Female_50_to_54 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_50_to_54")
LE_Female_50_to_54$k <- LE_Female_50_to_54$Life_expectancy_value - 52
LE_Female_55_to_59 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_55_to_59")
LE_Female_55_to_59$k <- LE_Female_55_to_59$Life_expectancy_value - 57
LE_Female_60_to_64 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_60_to_64")
LE_Female_60_to_64$k <- LE_Female_60_to_64$Life_expectancy_value - 62
LE_Female_65_to_69 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_65_to_69")
LE_Female_65_to_69$k <- LE_Female_65_to_69$Life_expectancy_value - 67
LE_Female_70_to_74 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_70_to_74")
LE_Female_70_to_74$k <- LE_Female_70_to_74$Life_expectancy_value - 72
LE_Female_75_to_79 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_75_to_79")
LE_Female_75_to_79$k <- LE_Female_75_to_79$Life_expectancy_value - 77
LE_Female_80_to_84 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_80_to_84")
LE_Female_80_to_84$k <- LE_Female_80_to_84$Life_expectancy_value - 82
LE_Female_85_to_89 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_85_to_89")
LE_Female_85_to_89$k <- LE_Female_85_to_89$Life_expectancy_value - 87
LE_Female_90_to_94 <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                 sheet = "Female_90_to_94")
LE_Female_90_to_94$k <- LE_Female_90_to_94$Life_expectancy_value - 92
LE_Female_95_onwards <- read_excel("~/ASAR/Mental_health_econ_burden_india/11_JUL_23_MV_Economic_burden_male_and_female.xlsx",
                                   sheet = "Female_95+")
LE_Female_95_onwards$k <- LE_Female_95_onwards$Life_expectancy_value - 97


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

calc_tmvyll_wg <- function(SD_20_24, SD_25_29, SD_30_34,
                         SD_35_39, SD_40_44, SD_45_49,
                         SD_50_54, SD_55_59, SD_60_64,
                         NGDP, r,
                         k_20_24, k_25_29, k_30_34,
                         k_35_39, k_40_44, k_45_49,
                         k_50_54, k_55_59, k_60_64
                         ){
  tmvyll = 0
  mvyll_20_24 = calc_mvyll(r, k = k_20_24, SD = SD_20_24, NGDPC = NGDP)
  mvyll_25_29 = calc_mvyll(r, k = k_25_29, SD = SD_25_29, NGDPC = NGDP)
  mvyll_30_34 = calc_mvyll(r, k = k_30_34, SD = SD_30_34, NGDPC = NGDP)
  mvyll_35_39 = calc_mvyll(r, k = k_35_39, SD = SD_35_39, NGDPC = NGDP)
  mvyll_40_44 = calc_mvyll(r, k = k_40_44, SD = SD_40_44, NGDPC = NGDP)
  mvyll_45_49 = calc_mvyll(r, k = k_45_49, SD = SD_45_49, NGDPC = NGDP)
  mvyll_50_54 = calc_mvyll(r, k = k_50_54, SD = SD_50_54, NGDPC = NGDP)
  mvyll_55_59 = calc_mvyll(r, k = k_55_59, SD = SD_55_59, NGDPC = NGDP)
  mvyll_60_64 = calc_mvyll(r, k = k_60_64, SD = SD_60_64, NGDPC = NGDP)
  tmvyll = sum(mvyll_20_24,mvyll_25_29,
               mvyll_30_34,mvyll_35_39,mvyll_40_44,mvyll_45_49,
               mvyll_50_54,mvyll_55_59,mvyll_60_64)
               
  temp_tmvyll_df = data.frame(tmvyll, 
                              mvyll_20_24,mvyll_25_29,
                              mvyll_30_34,mvyll_35_39,mvyll_40_44,mvyll_45_49,
                              mvyll_50_54,mvyll_55_59,mvyll_60_64)
                              
  return(temp_tmvyll_df)
}


state_list <- c("Andhra Pradesh","Arunachal Pradesh","Assam","Bihar",
                "Chhattisgarh","Delhi","Goa","Gujarat","Haryana",
                "Himachal Pradesh","Jammu and Kashmir and Ladakh","Jharkhand",
                "Karnataka","Kerala","Madhya Pradesh","Maharashtra","Manipur",
                "Meghalaya","Mizoram","Nagaland","Odisha","Puducherry",
                "Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana",
                "Tripura","Uttar Pradesh","Uttarakhand","West Bengal")

#################
# r value is 3
#################

tmvyll_df_wg3 <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                        mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                        mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                        mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric())
                        
for( s in state_list){
  tmvyll_df_m_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric())
                                 
  tmvyll_df_f_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric())
                                 
  r_val = 0.03
  
  #K for males
  k_male_20_24_state = LE_Male_20_to_24$k[which(LE_Male_20_to_24$Location == s)]
  k_male_25_29_state = LE_Male_25_to_29$k[which(LE_Male_25_to_29$Location == s)]
  k_male_30_34_state = LE_Male_30_to_34$k[which(LE_Male_30_to_34$Location == s)]
  k_male_35_39_state = LE_Male_35_to_39$k[which(LE_Male_35_to_39$Location == s)]
  k_male_40_44_state = LE_Male_40_to_44$k[which(LE_Male_40_to_44$Location == s)]
  k_male_45_49_state = LE_Male_45_to_49$k[which(LE_Male_45_to_49$Location == s)]
  k_male_50_54_state = LE_Male_50_to_54$k[which(LE_Male_50_to_54$Location == s)]
  k_male_55_59_state = LE_Male_55_to_59$k[which(LE_Male_55_to_59$Location == s)]
  k_male_60_64_state = LE_Male_60_to_64$k[which(LE_Male_60_to_64$Location == s)]
  
  #K for females
  k_female_20_24_state = LE_Female_20_to_24$k[which(LE_Female_20_to_24$Location == s)]
  k_female_25_29_state = LE_Female_25_to_29$k[which(LE_Female_25_to_29$Location == s)]
  k_female_30_34_state = LE_Female_30_to_34$k[which(LE_Female_30_to_34$Location == s)]
  k_female_35_39_state = LE_Female_35_to_39$k[which(LE_Female_35_to_39$Location == s)]
  k_female_40_44_state = LE_Female_40_to_44$k[which(LE_Female_40_to_44$Location == s)]
  k_female_45_49_state = LE_Female_45_to_49$k[which(LE_Female_45_to_49$Location == s)]
  k_female_50_54_state = LE_Female_50_to_54$k[which(LE_Female_50_to_54$Location == s)]
  k_female_55_59_state = LE_Female_55_to_59$k[which(LE_Female_55_to_59$Location == s)]
  k_female_60_64_state = LE_Female_60_to_64$k[which(LE_Female_60_to_64$Location == s)]
  
  NGDP_val_state = State_GDP$`Non Health GSDP = GSDP_per_capita-TGHE_per_capita`[which(State_GDP$State == s)]
  SD_20_24_state = Deaths_20_to_24$Value[which(Deaths_20_to_24$Location == s)]
  SD_25_29_state = Deaths_25_to_29$Value[which(Deaths_25_to_29$Location == s)]
  SD_30_34_state = Deaths_30_to_34$Value[which(Deaths_30_to_34$Location == s)]
  SD_35_39_state = Deaths_35_to_39$Value[which(Deaths_35_to_39$Location == s)]
  SD_40_44_state = Deaths_40_to_44$Value[which(Deaths_40_to_44$Location == s)]
  SD_45_49_state = Deaths_45_to_49$Value[which(Deaths_45_to_49$Location == s)]
  SD_50_54_state = Deaths_50_to_54$Value[which(Deaths_50_to_54$Location == s)]
  SD_55_59_state = Deaths_55_to_59$Value[which(Deaths_55_to_59$Location == s)]
  SD_60_64_state = Deaths_60_to_64$Value[which(Deaths_60_to_64$Location == s)]
  
  # Place state name
  #tmvyll_df_m_temp$state_name <- s
  #tmvyll_df_m_temp$gender <- "Male"
  
  #tmvyll_df_f_temp$state_name <- s
  #tmvyll_df_f_temp$gender <- "Female"
  
  
  #Males
  # send values for each sd for that state name
  tmvyll_val_m_temp = calc_tmvyll_wg(
                                  SD_20_24 = SD_20_24_state, 
                                  SD_25_29 = SD_25_29_state, 
                                  SD_30_34 = SD_30_34_state,
                                  SD_35_39 = SD_35_39_state, 
                                  SD_40_44 = SD_40_44_state, 
                                  SD_45_49 = SD_45_49_state,
                                  SD_50_54 = SD_50_54_state, 
                                  SD_55_59 = SD_55_59_state, 
                                  SD_60_64 = SD_60_64_state,
                                  NGDP = NGDP_val_state, 
                                  r = r_val,
                                  k_20_24 = k_male_20_24_state, 
                                  k_25_29 = k_male_25_29_state, 
                                  k_30_34 = k_male_30_34_state,
                                  k_35_39 = k_male_35_39_state, 
                                  k_40_44 = k_male_40_44_state, 
                                  k_45_49 = k_male_45_49_state,
                                  k_50_54 = k_male_50_54_state, 
                                  k_55_59 = k_male_55_59_state, 
                                  k_60_64 = k_male_60_64_state)

  # save values in data frame
  print(tmvyll_val_m_temp)
  # return bound data frame
  tmvyll_df_m_temp = data.frame(state_name = s,
                                gender = "Male",
                                tmvyll = tmvyll_val_m_temp$tmvyll,
                                mvyll_20_24 = tmvyll_val_m_temp$mvyll_20_24,
                                mvyll_25_29 = tmvyll_val_m_temp$mvyll_25_29,
                                mvyll_30_34 = tmvyll_val_m_temp$mvyll_30_34,
                                mvyll_35_39 = tmvyll_val_m_temp$mvyll_35_39,
                                mvyll_40_44 = tmvyll_val_m_temp$mvyll_40_44,
                                mvyll_45_49 = tmvyll_val_m_temp$mvyll_45_49,
                                mvyll_50_54 = tmvyll_val_m_temp$mvyll_50_54,
                                mvyll_55_59 = tmvyll_val_m_temp$mvyll_55_59,
                                mvyll_60_64 = tmvyll_val_m_temp$mvyll_60_64)

  tmvyll_df_wg3 <- rbind(tmvyll_df_wg3, tmvyll_df_m_temp)
  
  
  #Females
  
  tmvyll_val_f_temp = calc_tmvyll_wg(
                                  SD_20_24 = SD_20_24_state, 
                                  SD_25_29 = SD_25_29_state, 
                                  SD_30_34 = SD_30_34_state,
                                  SD_35_39 = SD_35_39_state, 
                                  SD_40_44 = SD_40_44_state, 
                                  SD_45_49 = SD_45_49_state,
                                  SD_50_54 = SD_50_54_state, 
                                  SD_55_59 = SD_55_59_state, 
                                  SD_60_64 = SD_60_64_state,
                                  NGDP = NGDP_val_state, 
                                  r = r_val, 
                                  k_20_24 = k_female_20_24_state, 
                                  k_25_29 = k_female_25_29_state, 
                                  k_30_34 = k_female_30_34_state,
                                  k_35_39 = k_female_35_39_state, 
                                  k_40_44 = k_female_40_44_state, 
                                  k_45_49 = k_female_45_49_state,
                                  k_50_54 = k_female_50_54_state, 
                                  k_55_59 = k_female_55_59_state, 
                                  k_60_64 = k_female_60_64_state)
  # save values in data frame
  print(tmvyll_val_f_temp)
  # return bound data frame
  tmvyll_df_f_temp = data.frame(state_name = s,
                                gender = "Female",
                                tmvyll = tmvyll_val_f_temp$tmvyll,
                                mvyll_20_24 = tmvyll_val_f_temp$mvyll_20_24,
                                mvyll_25_29 = tmvyll_val_f_temp$mvyll_25_29,
                                mvyll_30_34 = tmvyll_val_f_temp$mvyll_30_34,
                                mvyll_35_39 = tmvyll_val_f_temp$mvyll_35_39,
                                mvyll_40_44 = tmvyll_val_f_temp$mvyll_40_44,
                                mvyll_45_49 = tmvyll_val_f_temp$mvyll_45_49,
                                mvyll_50_54 = tmvyll_val_f_temp$mvyll_50_54,
                                mvyll_55_59 = tmvyll_val_f_temp$mvyll_55_59,
                                mvyll_60_64 = tmvyll_val_f_temp$mvyll_60_64)
  tmvyll_df_wg3 <- rbind(tmvyll_df_wg3, tmvyll_df_f_temp)
  
}


#################
# r value is 5
#################

tmvyll_df_wg5 <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                            mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                            mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                            mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric())

for( s in state_list){
  tmvyll_df_m_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric())
  
  tmvyll_df_f_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric())
  r_val = 0.05
  
  #K for males
  k_male_20_24_state = LE_Male_20_to_24$k[which(LE_Male_20_to_24$Location == s)]
  k_male_25_29_state = LE_Male_25_to_29$k[which(LE_Male_25_to_29$Location == s)]
  k_male_30_34_state = LE_Male_30_to_34$k[which(LE_Male_30_to_34$Location == s)]
  k_male_35_39_state = LE_Male_35_to_39$k[which(LE_Male_35_to_39$Location == s)]
  k_male_40_44_state = LE_Male_40_to_44$k[which(LE_Male_40_to_44$Location == s)]
  k_male_45_49_state = LE_Male_45_to_49$k[which(LE_Male_45_to_49$Location == s)]
  k_male_50_54_state = LE_Male_50_to_54$k[which(LE_Male_50_to_54$Location == s)]
  k_male_55_59_state = LE_Male_55_to_59$k[which(LE_Male_55_to_59$Location == s)]
  k_male_60_64_state = LE_Male_60_to_64$k[which(LE_Male_60_to_64$Location == s)]
  
  #K for females
  k_female_20_24_state = LE_Female_20_to_24$k[which(LE_Female_20_to_24$Location == s)]
  k_female_25_29_state = LE_Female_25_to_29$k[which(LE_Female_25_to_29$Location == s)]
  k_female_30_34_state = LE_Female_30_to_34$k[which(LE_Female_30_to_34$Location == s)]
  k_female_35_39_state = LE_Female_35_to_39$k[which(LE_Female_35_to_39$Location == s)]
  k_female_40_44_state = LE_Female_40_to_44$k[which(LE_Female_40_to_44$Location == s)]
  k_female_45_49_state = LE_Female_45_to_49$k[which(LE_Female_45_to_49$Location == s)]
  k_female_50_54_state = LE_Female_50_to_54$k[which(LE_Female_50_to_54$Location == s)]
  k_female_55_59_state = LE_Female_55_to_59$k[which(LE_Female_55_to_59$Location == s)]
  k_female_60_64_state = LE_Female_60_to_64$k[which(LE_Female_60_to_64$Location == s)]
  
  NGDP_val_state = State_GDP$`Non Health GSDP = GSDP_per_capita-TGHE_per_capita`[which(State_GDP$State == s)]
  SD_20_24_state = Deaths_20_to_24$Value[which(Deaths_20_to_24$Location == s)]
  SD_25_29_state = Deaths_25_to_29$Value[which(Deaths_25_to_29$Location == s)]
  SD_30_34_state = Deaths_30_to_34$Value[which(Deaths_30_to_34$Location == s)]
  SD_35_39_state = Deaths_35_to_39$Value[which(Deaths_35_to_39$Location == s)]
  SD_40_44_state = Deaths_40_to_44$Value[which(Deaths_40_to_44$Location == s)]
  SD_45_49_state = Deaths_45_to_49$Value[which(Deaths_45_to_49$Location == s)]
  SD_50_54_state = Deaths_50_to_54$Value[which(Deaths_50_to_54$Location == s)]
  SD_55_59_state = Deaths_55_to_59$Value[which(Deaths_55_to_59$Location == s)]
  SD_60_64_state = Deaths_60_to_64$Value[which(Deaths_60_to_64$Location == s)]
  
  # Place state name
  #tmvyll_df_m_temp$state_name <- s
  #tmvyll_df_m_temp$gender <- "Male"
  
  #tmvyll_df_f_temp$state_name <- s
  #tmvyll_df_f_temp$gender <- "Female"
  
  
  #Males
  # send values for each sd for that state name
  tmvyll_val_m_temp = calc_tmvyll_wg(
                                  SD_20_24 = SD_20_24_state, 
                                  SD_25_29 = SD_25_29_state, 
                                  SD_30_34 = SD_30_34_state,
                                  SD_35_39 = SD_35_39_state, 
                                  SD_40_44 = SD_40_44_state, 
                                  SD_45_49 = SD_45_49_state,
                                  SD_50_54 = SD_50_54_state, 
                                  SD_55_59 = SD_55_59_state, 
                                  SD_60_64 = SD_60_64_state,
                                  NGDP = NGDP_val_state, 
                                  r = r_val, 
                                  k_20_24 = k_male_20_24_state, 
                                  k_25_29 = k_male_25_29_state, 
                                  k_30_34 = k_male_30_34_state,
                                  k_35_39 = k_male_35_39_state, 
                                  k_40_44 = k_male_40_44_state, 
                                  k_45_49 = k_male_45_49_state,
                                  k_50_54 = k_male_50_54_state, 
                                  k_55_59 = k_male_55_59_state, 
                                  k_60_64 = k_male_60_64_state)
  # save values in data frame
  print(tmvyll_val_m_temp)
  # return bound data frame
  tmvyll_df_m_temp = data.frame(state_name = s,
                                gender = "Male",
                                tmvyll = tmvyll_val_m_temp$tmvyll,
                                mvyll_20_24 = tmvyll_val_m_temp$mvyll_20_24,
                                mvyll_25_29 = tmvyll_val_m_temp$mvyll_25_29,
                                mvyll_30_34 = tmvyll_val_m_temp$mvyll_30_34,
                                mvyll_35_39 = tmvyll_val_m_temp$mvyll_35_39,
                                mvyll_40_44 = tmvyll_val_m_temp$mvyll_40_44,
                                mvyll_45_49 = tmvyll_val_m_temp$mvyll_45_49,
                                mvyll_50_54 = tmvyll_val_m_temp$mvyll_50_54,
                                mvyll_55_59 = tmvyll_val_m_temp$mvyll_55_59,
                                mvyll_60_64 = tmvyll_val_m_temp$mvyll_60_64)
  tmvyll_df_wg5 <- rbind(tmvyll_df_wg5, tmvyll_df_m_temp)
  
  
  #Females
  
  tmvyll_val_f_temp = calc_tmvyll_wg(
                                  SD_20_24 = SD_20_24_state, 
                                  SD_25_29 = SD_25_29_state, 
                                  SD_30_34 = SD_30_34_state,
                                  SD_35_39 = SD_35_39_state, 
                                  SD_40_44 = SD_40_44_state, 
                                  SD_45_49 = SD_45_49_state,
                                  SD_50_54 = SD_50_54_state, 
                                  SD_55_59 = SD_55_59_state, 
                                  SD_60_64 = SD_60_64_state,
                                  NGDP = NGDP_val_state, 
                                  r = r_val, 
                                  k_20_24 = k_female_20_24_state, 
                                  k_25_29 = k_female_25_29_state, 
                                  k_30_34 = k_female_30_34_state,
                                  k_35_39 = k_female_35_39_state, 
                                  k_40_44 = k_female_40_44_state, 
                                  k_45_49 = k_female_45_49_state,
                                  k_50_54 = k_female_50_54_state, 
                                  k_55_59 = k_female_55_59_state, 
                                  k_60_64 = k_female_60_64_state)#,

  # save values in data frame
  print(tmvyll_val_f_temp)
  # return bound data frame
  tmvyll_df_f_temp = data.frame(state_name = s,
                                gender = "Female",
                                tmvyll = tmvyll_val_f_temp$tmvyll,
                                mvyll_20_24 = tmvyll_val_f_temp$mvyll_20_24,
                                mvyll_25_29 = tmvyll_val_f_temp$mvyll_25_29,
                                mvyll_30_34 = tmvyll_val_f_temp$mvyll_30_34,
                                mvyll_35_39 = tmvyll_val_f_temp$mvyll_35_39,
                                mvyll_40_44 = tmvyll_val_f_temp$mvyll_40_44,
                                mvyll_45_49 = tmvyll_val_f_temp$mvyll_45_49,
                                mvyll_50_54 = tmvyll_val_f_temp$mvyll_50_54,
                                mvyll_55_59 = tmvyll_val_f_temp$mvyll_55_59,
                                mvyll_60_64 = tmvyll_val_f_temp$mvyll_60_64)
  tmvyll_df_wg5 <- rbind(tmvyll_df_wg5, tmvyll_df_f_temp)
  
}

#################
# r value is 10
#################

tmvyll_df_wg10 <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                            mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                            mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                            mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric())

for( s in state_list){
  tmvyll_df_m_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric())
  
  tmvyll_df_f_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric())
  
  r_val = 0.10
  
  #K for males
  k_male_20_24_state = LE_Male_20_to_24$k[which(LE_Male_20_to_24$Location == s)]
  k_male_25_29_state = LE_Male_25_to_29$k[which(LE_Male_25_to_29$Location == s)]
  k_male_30_34_state = LE_Male_30_to_34$k[which(LE_Male_30_to_34$Location == s)]
  k_male_35_39_state = LE_Male_35_to_39$k[which(LE_Male_35_to_39$Location == s)]
  k_male_40_44_state = LE_Male_40_to_44$k[which(LE_Male_40_to_44$Location == s)]
  k_male_45_49_state = LE_Male_45_to_49$k[which(LE_Male_45_to_49$Location == s)]
  k_male_50_54_state = LE_Male_50_to_54$k[which(LE_Male_50_to_54$Location == s)]
  k_male_55_59_state = LE_Male_55_to_59$k[which(LE_Male_55_to_59$Location == s)]
  k_male_60_64_state = LE_Male_60_to_64$k[which(LE_Male_60_to_64$Location == s)]
  
  #K for females
  k_female_20_24_state = LE_Female_20_to_24$k[which(LE_Female_20_to_24$Location == s)]
  k_female_25_29_state = LE_Female_25_to_29$k[which(LE_Female_25_to_29$Location == s)]
  k_female_30_34_state = LE_Female_30_to_34$k[which(LE_Female_30_to_34$Location == s)]
  k_female_35_39_state = LE_Female_35_to_39$k[which(LE_Female_35_to_39$Location == s)]
  k_female_40_44_state = LE_Female_40_to_44$k[which(LE_Female_40_to_44$Location == s)]
  k_female_45_49_state = LE_Female_45_to_49$k[which(LE_Female_45_to_49$Location == s)]
  k_female_50_54_state = LE_Female_50_to_54$k[which(LE_Female_50_to_54$Location == s)]
  k_female_55_59_state = LE_Female_55_to_59$k[which(LE_Female_55_to_59$Location == s)]
  k_female_60_64_state = LE_Female_60_to_64$k[which(LE_Female_60_to_64$Location == s)]
  
  NGDP_val_state = State_GDP$`Non Health GSDP = GSDP_per_capita-TGHE_per_capita`[which(State_GDP$State == s)]
  SD_20_24_state = Deaths_20_to_24$Value[which(Deaths_20_to_24$Location == s)]
  SD_25_29_state = Deaths_25_to_29$Value[which(Deaths_25_to_29$Location == s)]
  SD_30_34_state = Deaths_30_to_34$Value[which(Deaths_30_to_34$Location == s)]
  SD_35_39_state = Deaths_35_to_39$Value[which(Deaths_35_to_39$Location == s)]
  SD_40_44_state = Deaths_40_to_44$Value[which(Deaths_40_to_44$Location == s)]
  SD_45_49_state = Deaths_45_to_49$Value[which(Deaths_45_to_49$Location == s)]
  SD_50_54_state = Deaths_50_to_54$Value[which(Deaths_50_to_54$Location == s)]
  SD_55_59_state = Deaths_55_to_59$Value[which(Deaths_55_to_59$Location == s)]
  SD_60_64_state = Deaths_60_to_64$Value[which(Deaths_60_to_64$Location == s)]
  
  # Place state name
  #tmvyll_df_m_temp$state_name <- s
  #tmvyll_df_m_temp$gender <- "Male"
  
  #tmvyll_df_f_temp$state_name <- s
  #tmvyll_df_f_temp$gender <- "Female"
  
  
  #Males
  # send values for each sd for that state name
  tmvyll_val_m_temp = calc_tmvyll_wg(
                                  SD_20_24 = SD_20_24_state, 
                                  SD_25_29 = SD_25_29_state, 
                                  SD_30_34 = SD_30_34_state,
                                  SD_35_39 = SD_35_39_state, 
                                  SD_40_44 = SD_40_44_state, 
                                  SD_45_49 = SD_45_49_state,
                                  SD_50_54 = SD_50_54_state, 
                                  SD_55_59 = SD_55_59_state, 
                                  SD_60_64 = SD_60_64_state,
                                  NGDP = NGDP_val_state, 
                                  r = r_val, 
                                  k_20_24 = k_male_20_24_state, 
                                  k_25_29 = k_male_25_29_state, 
                                  k_30_34 = k_male_30_34_state,
                                  k_35_39 = k_male_35_39_state, 
                                  k_40_44 = k_male_40_44_state, 
                                  k_45_49 = k_male_45_49_state,
                                  k_50_54 = k_male_50_54_state, 
                                  k_55_59 = k_male_55_59_state, 
                                  k_60_64 = k_male_60_64_state)#,

  # save values in data frame
  print(tmvyll_val_m_temp)
  # return bound data frame
  tmvyll_df_m_temp = data.frame(state_name = s,
                                gender = "Male",
                                tmvyll = tmvyll_val_m_temp$tmvyll,
                                mvyll_20_24 = tmvyll_val_m_temp$mvyll_20_24,
                                mvyll_25_29 = tmvyll_val_m_temp$mvyll_25_29,
                                mvyll_30_34 = tmvyll_val_m_temp$mvyll_30_34,
                                mvyll_35_39 = tmvyll_val_m_temp$mvyll_35_39,
                                mvyll_40_44 = tmvyll_val_m_temp$mvyll_40_44,
                                mvyll_45_49 = tmvyll_val_m_temp$mvyll_45_49,
                                mvyll_50_54 = tmvyll_val_m_temp$mvyll_50_54,
                                mvyll_55_59 = tmvyll_val_m_temp$mvyll_55_59,
                                mvyll_60_64 = tmvyll_val_m_temp$mvyll_60_64)
  tmvyll_df_wg10 <- rbind(tmvyll_df_wg10, tmvyll_df_m_temp)
  
  
  #Females
  
  tmvyll_val_f_temp = calc_tmvyll_wg(
                                  SD_20_24 = SD_20_24_state, 
                                  SD_25_29 = SD_25_29_state, 
                                  SD_30_34 = SD_30_34_state,
                                  SD_35_39 = SD_35_39_state, 
                                  SD_40_44 = SD_40_44_state, 
                                  SD_45_49 = SD_45_49_state,
                                  SD_50_54 = SD_50_54_state, 
                                  SD_55_59 = SD_55_59_state, 
                                  SD_60_64 = SD_60_64_state,
                                  NGDP = NGDP_val_state, 
                                  r = r_val, 
                                  k_20_24 = k_female_20_24_state, 
                                  k_25_29 = k_female_25_29_state, 
                                  k_30_34 = k_female_30_34_state,
                                  k_35_39 = k_female_35_39_state, 
                                  k_40_44 = k_female_40_44_state, 
                                  k_45_49 = k_female_45_49_state,
                                  k_50_54 = k_female_50_54_state, 
                                  k_55_59 = k_female_55_59_state, 
                                  k_60_64 = k_female_60_64_state)#,

  # save values in data frame
  print(tmvyll_val_f_temp)
  # return bound data frame
  tmvyll_df_f_temp = data.frame(state_name = s,
                                gender = "Female",
                                tmvyll = tmvyll_val_f_temp$tmvyll,
                                mvyll_20_24 = tmvyll_val_f_temp$mvyll_20_24,
                                mvyll_25_29 = tmvyll_val_f_temp$mvyll_25_29,
                                mvyll_30_34 = tmvyll_val_f_temp$mvyll_30_34,
                                mvyll_35_39 = tmvyll_val_f_temp$mvyll_35_39,
                                mvyll_40_44 = tmvyll_val_f_temp$mvyll_40_44,
                                mvyll_45_49 = tmvyll_val_f_temp$mvyll_45_49,
                                mvyll_50_54 = tmvyll_val_f_temp$mvyll_50_54,
                                mvyll_55_59 = tmvyll_val_f_temp$mvyll_55_59,
                                mvyll_60_64 = tmvyll_val_f_temp$mvyll_60_64)
  
  tmvyll_df_wg10 <- rbind(tmvyll_df_wg10, tmvyll_df_f_temp)
  
}

