#!/bin/R
# ASAR_MH_EB_India_calc_working_group_world_LE_Reanalysis2019.R
# By: Anukrati Nigam

#######################################################################################
## Script to calculate MVYLL based on highest life expectancy globally in 2019  for  ##
## working age groups for 28 States and 3 union territories in India and both sexes. ##
#######################################################################################


### As compared to world life expectancy
#San Marino had the highest life expectancy in 2019-20 - Males = 84.61 and Females = 87.92
# State GDP


State_GDP <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/NHA_2014_15_to_2021_22_clean.xlsx", 
                        sheet = "NHA_2019")
#State_GDP <- na.omit(State_GDP)
#Using Puducherry GDP as an estimate for Other UTs.
State_GDP$State[which(State_GDP$State == "Puducherry")] <- "Other Union Territories"

#Using Jammu and Kashmir and Ladakh for Jammu and Kashmir to ensure consistency in GBD and NHA data analysis
State_GDP$State[which(State_GDP$State == "Jammu and Kashmir")] <- "Jammu & Kashmir and Ladakh"


# State wise and gender wise k values for each age category

# State wise and gender wise k values for each age category
# Males
LE_Male_20_to_24 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                               sheet = "Male 20-24 years", .name_repair = "minimal")
LE_Male_25_to_29 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                               sheet = "Male 25-29 years", .name_repair = "minimal")
LE_Male_30_to_34 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                               sheet = "Male 30-34 years", .name_repair = "minimal")
LE_Male_35_to_39 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                               sheet = "Male 35-39 years", .name_repair = "minimal")
LE_Male_40_to_44 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                               sheet = "Male 40-44 years", .name_repair = "minimal")
LE_Male_45_to_49 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                               sheet = "Male 45-49 years", .name_repair = "minimal")
LE_Male_50_to_54 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                               sheet = "Male 50-54 years", .name_repair = "minimal")
LE_Male_55_to_59 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                               sheet = "Male 55-59 years", .name_repair = "minimal")
LE_Male_60_to_64 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                               sheet = "Male 60-64 years", .name_repair = "minimal")


#Female LE
LE_Female_20_to_24 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                                 sheet = "Female 20-24 years", .name_repair = "minimal")
LE_Female_25_to_29 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                                 sheet = "Female 25-29 years", .name_repair = "minimal")
LE_Female_30_to_34 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                                 sheet = "Female 30-34 years", .name_repair = "minimal")
LE_Female_35_to_39 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                                 sheet = "Female 35-39 years", .name_repair = "minimal")
LE_Female_40_to_44 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                                 sheet = "Female 40-44 years", .name_repair = "minimal")
LE_Female_45_to_49 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                                 sheet = "Female 45-49 years", .name_repair = "minimal")
LE_Female_50_to_54 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                                 sheet = "Female 50-54 years", .name_repair = "minimal")
LE_Female_55_to_59 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                                 sheet = "Female 55-59 years", .name_repair = "minimal")
LE_Female_60_to_64 <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx",
                                 sheet = "Female 60-64 years", .name_repair = "minimal")



# Males
LE_Male_20_to_24$k_le <- 84.61 - 22
LE_Male_25_to_29$k_le <- 84.61 - 27
LE_Male_30_to_34$k_le <- 84.61 - 32
LE_Male_35_to_39$k_le <- 84.61 - 37
LE_Male_40_to_44$k_le <- 84.61 - 42
LE_Male_45_to_49$k_le <- 84.61 - 47
LE_Male_50_to_54$k_le <- 84.61 - 52
LE_Male_55_to_59$k_le <- 84.61 - 57
LE_Male_60_to_64$k_le <- 84.61 - 62


#Female LE
LE_Female_20_to_24$k_le <- 87.92 - 22
LE_Female_25_to_29$k_le <- 87.92 - 27
LE_Female_30_to_34$k_le <- 87.92 - 32
LE_Female_35_to_39$k_le <- 87.92 - 37
LE_Female_40_to_44$k_le <- 87.92 - 42
LE_Female_45_to_49$k_le <- 87.92 - 47
LE_Female_50_to_54$k_le <- 87.92 - 52
LE_Female_55_to_59$k_le <- 87.92 - 57
LE_Female_60_to_64$k_le <- 87.92 - 62


#### Functions for calculation of mvyll and tmvyll.
# Use of positive k values and round up values only.

calc_mvyll <- function(r,k,SD, NGDPC){
  mvyll = 0
  if(k>0){
    for(i in 1:round(k)){
      mvyll = mvyll + ((1/((1+r)^(i))) * NGDPC * SD)
    }
    return(mvyll)} else 
    {myvll = 0
    return(mvyll)}
}

calc_tmvyll_wg <- function( SD_20_24, SD_25_29, SD_30_34,
                            SD_35_39, SD_40_44, SD_45_49,
                            SD_50_54, SD_55_59, SD_60_64,
                            SD_20_24_lb, SD_25_29_lb, SD_30_34_lb,
                            SD_35_39_lb, SD_40_44_lb, SD_45_49_lb,
                            SD_50_54_lb, SD_55_59_lb, SD_60_64_lb,
                            SD_20_24_ub, SD_25_29_ub, SD_30_34_ub,
                            SD_35_39_ub, SD_40_44_ub, SD_45_49_ub,
                            SD_50_54_ub, SD_55_59_ub, SD_60_64_ub,
                            
                            NGDP, r, 
                            k_20_24, k_25_29, k_30_34,
                            k_35_39, k_40_44, k_45_49,
                            k_50_54, k_55_59, k_60_64
){
  tmvyll = 0
  tmvyll_lb = 0
  tmvyll_ub = 0
  
  mvyll_20_24 = calc_mvyll(r, k = k_20_24, SD = SD_20_24, NGDPC = NGDP)
  mvyll_25_29 = calc_mvyll(r, k = k_25_29, SD = SD_25_29, NGDPC = NGDP)
  mvyll_30_34 = calc_mvyll(r, k = k_30_34, SD = SD_30_34, NGDPC = NGDP)
  mvyll_35_39 = calc_mvyll(r, k = k_35_39, SD = SD_35_39, NGDPC = NGDP)
  mvyll_40_44 = calc_mvyll(r, k = k_40_44, SD = SD_40_44, NGDPC = NGDP)
  mvyll_45_49 = calc_mvyll(r, k = k_45_49, SD = SD_45_49, NGDPC = NGDP)
  mvyll_50_54 = calc_mvyll(r, k = k_50_54, SD = SD_50_54, NGDPC = NGDP)
  mvyll_55_59 = calc_mvyll(r, k = k_55_59, SD = SD_55_59, NGDPC = NGDP)
  mvyll_60_64 = calc_mvyll(r, k = k_60_64, SD = SD_60_64, NGDPC = NGDP)
  
  #Lower bound
  mvyll_20_24_lb = calc_mvyll(r, k = k_20_24, SD = SD_20_24_lb, NGDPC = NGDP)
  mvyll_25_29_lb = calc_mvyll(r, k = k_25_29, SD = SD_25_29_lb, NGDPC = NGDP)
  mvyll_30_34_lb = calc_mvyll(r, k = k_30_34, SD = SD_30_34_lb, NGDPC = NGDP)
  mvyll_35_39_lb = calc_mvyll(r, k = k_35_39, SD = SD_35_39_lb, NGDPC = NGDP)
  mvyll_40_44_lb = calc_mvyll(r, k = k_40_44, SD = SD_40_44_lb, NGDPC = NGDP)
  mvyll_45_49_lb = calc_mvyll(r, k = k_45_49, SD = SD_45_49_lb, NGDPC = NGDP)
  mvyll_50_54_lb = calc_mvyll(r, k = k_50_54, SD = SD_50_54_lb, NGDPC = NGDP)
  mvyll_55_59_lb = calc_mvyll(r, k = k_55_59, SD = SD_55_59_lb, NGDPC = NGDP)
  mvyll_60_64_lb = calc_mvyll(r, k = k_60_64, SD = SD_60_64_lb, NGDPC = NGDP)
  
  #Upper bound
  mvyll_20_24_ub = calc_mvyll(r, k = k_20_24, SD = SD_20_24_ub, NGDPC = NGDP)
  mvyll_25_29_ub = calc_mvyll(r, k = k_25_29, SD = SD_25_29_ub, NGDPC = NGDP)
  mvyll_30_34_ub = calc_mvyll(r, k = k_30_34, SD = SD_30_34_ub, NGDPC = NGDP)
  mvyll_35_39_ub = calc_mvyll(r, k = k_35_39, SD = SD_35_39_ub, NGDPC = NGDP)
  mvyll_40_44_ub = calc_mvyll(r, k = k_40_44, SD = SD_40_44_ub, NGDPC = NGDP)
  mvyll_45_49_ub = calc_mvyll(r, k = k_45_49, SD = SD_45_49_ub, NGDPC = NGDP)
  mvyll_50_54_ub = calc_mvyll(r, k = k_50_54, SD = SD_50_54_ub, NGDPC = NGDP)
  mvyll_55_59_ub = calc_mvyll(r, k = k_55_59, SD = SD_55_59_ub, NGDPC = NGDP)
  mvyll_60_64_ub = calc_mvyll(r, k = k_60_64, SD = SD_60_64_ub, NGDPC = NGDP)
  
  tmvyll = sum(mvyll_20_24,mvyll_25_29,
               mvyll_30_34,mvyll_35_39,mvyll_40_44,mvyll_45_49,
               mvyll_50_54,mvyll_55_59,mvyll_60_64)
  tmvyll_lb = sum(mvyll_20_24_lb,mvyll_25_29_lb,
                  mvyll_30_34_lb,mvyll_35_39_lb,mvyll_40_44_lb,mvyll_45_49_lb,
                  mvyll_50_54_lb,mvyll_55_59_lb,mvyll_60_64_lb)
  tmvyll_ub = sum(mvyll_20_24_ub,mvyll_25_29_ub,
                  mvyll_30_34_ub,mvyll_35_39_ub,mvyll_40_44_ub,mvyll_45_49_ub,
                  mvyll_50_54_ub,mvyll_55_59_ub,mvyll_60_64_ub)
  temp_tmvyll_df = data.frame(tmvyll, 
                              mvyll_20_24,mvyll_25_29,
                              mvyll_30_34,mvyll_35_39,mvyll_40_44,mvyll_45_49,
                              mvyll_50_54,mvyll_55_59,mvyll_60_64,
                              tmvyll_lb,mvyll_20_24_lb,mvyll_25_29_lb,
                              mvyll_30_34_lb,mvyll_35_39_lb,mvyll_40_44_lb,mvyll_45_49_lb,
                              mvyll_50_54_lb,mvyll_55_59_lb,mvyll_60_64_lb,
                              tmvyll_ub, mvyll_20_24_ub,mvyll_25_29_ub,
                              mvyll_30_34_ub,mvyll_35_39_ub,mvyll_40_44_ub,mvyll_45_49_ub,
                              mvyll_50_54_ub,mvyll_55_59_ub,mvyll_60_64_ub)
  return(temp_tmvyll_df)
}

state_list <- c("Andhra Pradesh","Arunachal Pradesh","Assam","Bihar",
                "Chhattisgarh","Delhi","Goa","Gujarat","Haryana",
                "Himachal Pradesh","Jammu & Kashmir and Ladakh","Jharkhand",
                "Karnataka","Kerala","Madhya Pradesh","Maharashtra","Manipur",
                "Meghalaya","Mizoram","Nagaland","Odisha","Other Union Territories",
                "Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana",
                "Tripura","Uttar Pradesh","Uttarakhand","West Bengal")

#################
# r value is 3
#################

tmvyll_df_wg3_kle <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                            mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                            mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                            mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),tmvyll_lb = numeric(), 
                            mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                            mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                            mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),
                            tmvyll_ub = numeric(), 
                            mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                            mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                            mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric())

for( s in state_list){
  tmvyll_df_m_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),tmvyll_lb = numeric(), 
                                 mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                                 mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                                 mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),
                                 tmvyll_ub = numeric(), 
                                 mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                                 mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                                 mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric())
  
  tmvyll_df_f_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),tmvyll_lb = numeric(), 
                                 mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                                 mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                                 mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),
                                 tmvyll_ub = numeric(), 
                                 mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                                 mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                                 mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric())
  r_val = 0.03
  
  #K for males
  k_male_20_24_state = LE_Male_20_to_24$k_le[which(LE_Male_20_to_24$location_name == s)]
  k_male_25_29_state = LE_Male_25_to_29$k_le[which(LE_Male_25_to_29$location_name == s)]
  k_male_30_34_state = LE_Male_30_to_34$k_le[which(LE_Male_30_to_34$location_name == s)]
  k_male_35_39_state = LE_Male_35_to_39$k_le[which(LE_Male_35_to_39$location_name == s)]
  k_male_40_44_state = LE_Male_40_to_44$k_le[which(LE_Male_40_to_44$location_name == s)]
  k_male_45_49_state = LE_Male_45_to_49$k_le[which(LE_Male_45_to_49$location_name == s)]
  k_male_50_54_state = LE_Male_50_to_54$k_le[which(LE_Male_50_to_54$location_name == s)]
  k_male_55_59_state = LE_Male_55_to_59$k_le[which(LE_Male_55_to_59$location_name == s)]
  k_male_60_64_state = LE_Male_60_to_64$k_le[which(LE_Male_60_to_64$location_name == s)]
  
  #K for females
  k_female_20_24_state = LE_Female_20_to_24$k_le[which(LE_Female_20_to_24$location_name == s)]
  k_female_25_29_state = LE_Female_25_to_29$k_le[which(LE_Female_25_to_29$location_name == s)]
  k_female_30_34_state = LE_Female_30_to_34$k_le[which(LE_Female_30_to_34$location_name == s)]
  k_female_35_39_state = LE_Female_35_to_39$k_le[which(LE_Female_35_to_39$location_name == s)]
  k_female_40_44_state = LE_Female_40_to_44$k_le[which(LE_Female_40_to_44$location_name == s)]
  k_female_45_49_state = LE_Female_45_to_49$k_le[which(LE_Female_45_to_49$location_name == s)]
  k_female_50_54_state = LE_Female_50_to_54$k_le[which(LE_Female_50_to_54$location_name == s)]
  k_female_55_59_state = LE_Female_55_to_59$k_le[which(LE_Female_55_to_59$location_name == s)]
  k_female_60_64_state = LE_Female_60_to_64$k_le[which(LE_Female_60_to_64$location_name == s)]
  
  NGDP_val_state = State_GDP$non_health_exp_per_capita_inr[which(State_GDP$State == s)]
  #SD for males
  SD_male_20_24_state = LE_Male_20_to_24$val_suicide[which(LE_Male_20_to_24$location_name == s)]
  SD_male_25_29_state = LE_Male_25_to_29$val_suicide[which(LE_Male_25_to_29$location_name == s)]
  SD_male_30_34_state = LE_Male_30_to_34$val_suicide[which(LE_Male_30_to_34$location_name == s)]
  SD_male_35_39_state = LE_Male_35_to_39$val_suicide[which(LE_Male_35_to_39$location_name == s)]
  SD_male_40_44_state = LE_Male_40_to_44$val_suicide[which(LE_Male_40_to_44$location_name == s)]
  SD_male_45_49_state = LE_Male_45_to_49$val_suicide[which(LE_Male_45_to_49$location_name == s)]
  SD_male_50_54_state = LE_Male_50_to_54$val_suicide[which(LE_Male_50_to_54$location_name == s)]
  SD_male_55_59_state = LE_Male_55_to_59$val_suicide[which(LE_Male_55_to_59$location_name == s)]
  SD_male_60_64_state = LE_Male_60_to_64$val_suicide[which(LE_Male_60_to_64$location_name == s)]
  
  #SD for females
  SD_female_20_24_state = LE_Female_20_to_24$val_suicide[which(LE_Female_20_to_24$location_name == s)]
  SD_female_25_29_state = LE_Female_25_to_29$val_suicide[which(LE_Female_25_to_29$location_name == s)]
  SD_female_30_34_state = LE_Female_30_to_34$val_suicide[which(LE_Female_30_to_34$location_name == s)]
  SD_female_35_39_state = LE_Female_35_to_39$val_suicide[which(LE_Female_35_to_39$location_name == s)]
  SD_female_40_44_state = LE_Female_40_to_44$val_suicide[which(LE_Female_40_to_44$location_name == s)]
  SD_female_45_49_state = LE_Female_45_to_49$val_suicide[which(LE_Female_45_to_49$location_name == s)]
  SD_female_50_54_state = LE_Female_50_to_54$val_suicide[which(LE_Female_50_to_54$location_name == s)]
  SD_female_55_59_state = LE_Female_55_to_59$val_suicide[which(LE_Female_55_to_59$location_name == s)]
  SD_female_60_64_state = LE_Female_60_to_64$val_suicide[which(LE_Female_60_to_64$location_name == s)]
  
  #SD for males Upper bound
  SD_male_20_24_state_ub = LE_Male_20_to_24$upper_suicide[which(LE_Male_20_to_24$location_name == s)]
  SD_male_25_29_state_ub = LE_Male_25_to_29$upper_suicide[which(LE_Male_25_to_29$location_name == s)]
  SD_male_30_34_state_ub = LE_Male_30_to_34$upper_suicide[which(LE_Male_30_to_34$location_name == s)]
  SD_male_35_39_state_ub = LE_Male_35_to_39$upper_suicide[which(LE_Male_35_to_39$location_name == s)]
  SD_male_40_44_state_ub = LE_Male_40_to_44$upper_suicide[which(LE_Male_40_to_44$location_name == s)]
  SD_male_45_49_state_ub = LE_Male_45_to_49$upper_suicide[which(LE_Male_45_to_49$location_name == s)]
  SD_male_50_54_state_ub = LE_Male_50_to_54$upper_suicide[which(LE_Male_50_to_54$location_name == s)]
  SD_male_55_59_state_ub = LE_Male_55_to_59$upper_suicide[which(LE_Male_55_to_59$location_name == s)]
  SD_male_60_64_state_ub = LE_Male_60_to_64$upper_suicide[which(LE_Male_60_to_64$location_name == s)]
  
  #SD for females upper bound
  SD_female_20_24_state_ub = LE_Female_20_to_24$upper_suicide[which(LE_Female_20_to_24$location_name == s)]
  SD_female_25_29_state_ub = LE_Female_25_to_29$upper_suicide[which(LE_Female_25_to_29$location_name == s)]
  SD_female_30_34_state_ub = LE_Female_30_to_34$upper_suicide[which(LE_Female_30_to_34$location_name == s)]
  SD_female_35_39_state_ub = LE_Female_35_to_39$upper_suicide[which(LE_Female_35_to_39$location_name == s)]
  SD_female_40_44_state_ub = LE_Female_40_to_44$upper_suicide[which(LE_Female_40_to_44$location_name == s)]
  SD_female_45_49_state_ub = LE_Female_45_to_49$upper_suicide[which(LE_Female_45_to_49$location_name == s)]
  SD_female_50_54_state_ub = LE_Female_50_to_54$upper_suicide[which(LE_Female_50_to_54$location_name == s)]
  SD_female_55_59_state_ub = LE_Female_55_to_59$upper_suicide[which(LE_Female_55_to_59$location_name == s)]
  SD_female_60_64_state_ub = LE_Female_60_to_64$upper_suicide[which(LE_Female_60_to_64$location_name == s)]
  
  #SD for males lower bound
  SD_male_20_24_state_lb = LE_Male_20_to_24$lower_suicide[which(LE_Male_20_to_24$location_name == s)]
  SD_male_25_29_state_lb = LE_Male_25_to_29$lower_suicide[which(LE_Male_25_to_29$location_name == s)]
  SD_male_30_34_state_lb = LE_Male_30_to_34$lower_suicide[which(LE_Male_30_to_34$location_name == s)]
  SD_male_35_39_state_lb = LE_Male_35_to_39$lower_suicide[which(LE_Male_35_to_39$location_name == s)]
  SD_male_40_44_state_lb = LE_Male_40_to_44$lower_suicide[which(LE_Male_40_to_44$location_name == s)]
  SD_male_45_49_state_lb = LE_Male_45_to_49$lower_suicide[which(LE_Male_45_to_49$location_name == s)]
  SD_male_50_54_state_lb = LE_Male_50_to_54$lower_suicide[which(LE_Male_50_to_54$location_name == s)]
  SD_male_55_59_state_lb = LE_Male_55_to_59$lower_suicide[which(LE_Male_55_to_59$location_name == s)]
  SD_male_60_64_state_lb = LE_Male_60_to_64$lower_suicide[which(LE_Male_60_to_64$location_name == s)]
  
  #SD for females lower bound
  SD_female_20_24_state_lb = LE_Female_20_to_24$lower_suicide[which(LE_Female_20_to_24$location_name == s)]
  SD_female_25_29_state_lb = LE_Female_25_to_29$lower_suicide[which(LE_Female_25_to_29$location_name == s)]
  SD_female_30_34_state_lb = LE_Female_30_to_34$lower_suicide[which(LE_Female_30_to_34$location_name == s)]
  SD_female_35_39_state_lb = LE_Female_35_to_39$lower_suicide[which(LE_Female_35_to_39$location_name == s)]
  SD_female_40_44_state_lb = LE_Female_40_to_44$lower_suicide[which(LE_Female_40_to_44$location_name == s)]
  SD_female_45_49_state_lb = LE_Female_45_to_49$lower_suicide[which(LE_Female_45_to_49$location_name == s)]
  SD_female_50_54_state_lb = LE_Female_50_to_54$lower_suicide[which(LE_Female_50_to_54$location_name == s)]
  SD_female_55_59_state_lb = LE_Female_55_to_59$lower_suicide[which(LE_Female_55_to_59$location_name == s)]
  SD_female_60_64_state_lb = LE_Female_60_to_64$lower_suicide[which(LE_Female_60_to_64$location_name == s)]
  
  
  #Males
  # send values for each sd for that state name
  tmvyll_val_m_temp = calc_tmvyll_wg(SD_20_24 = SD_male_20_24_state, 
                                     SD_25_29 = SD_male_25_29_state, 
                                     SD_30_34 = SD_male_30_34_state,
                                     SD_35_39 = SD_male_35_39_state, 
                                     SD_40_44 = SD_male_40_44_state, 
                                     SD_45_49 = SD_male_45_49_state,
                                     SD_50_54 = SD_male_50_54_state, 
                                     SD_55_59 = SD_male_55_59_state, 
                                     SD_60_64 = SD_male_60_64_state,
                                     SD_20_24_lb = SD_male_20_24_state_lb, 
                                     SD_25_29_lb = SD_male_25_29_state_lb, 
                                     SD_30_34_lb = SD_male_30_34_state_lb,
                                     SD_35_39_lb = SD_male_35_39_state_lb, 
                                     SD_40_44_lb = SD_male_40_44_state_lb, 
                                     SD_45_49_lb = SD_male_45_49_state_lb,
                                     SD_50_54_lb = SD_male_50_54_state_lb, 
                                     SD_55_59_lb = SD_male_55_59_state_lb, 
                                     SD_60_64_lb = SD_male_60_64_state_lb,
                                     SD_20_24_ub = SD_male_20_24_state_ub, 
                                     SD_25_29_ub = SD_male_25_29_state_ub, 
                                     SD_30_34_ub = SD_male_30_34_state_ub,
                                     SD_35_39_ub = SD_male_35_39_state_ub, 
                                     SD_40_44_ub = SD_male_40_44_state_ub, 
                                     SD_45_49_ub = SD_male_45_49_state_ub,
                                     SD_50_54_ub = SD_male_50_54_state_ub, 
                                     SD_55_59_ub = SD_male_55_59_state_ub, 
                                     SD_60_64_ub = SD_male_60_64_state_ub,
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
                                mvyll_60_64 = tmvyll_val_m_temp$mvyll_60_64,
                                tmvyll_lb = tmvyll_val_m_temp$tmvyll_lb,
                                mvyll_20_24_lb = tmvyll_val_m_temp$mvyll_20_24_lb,
                                mvyll_25_29_lb = tmvyll_val_m_temp$mvyll_25_29_lb,
                                mvyll_30_34_lb = tmvyll_val_m_temp$mvyll_30_34_lb,
                                mvyll_35_39_lb = tmvyll_val_m_temp$mvyll_35_39_lb,
                                mvyll_40_44_lb = tmvyll_val_m_temp$mvyll_40_44_lb,
                                mvyll_45_49_lb = tmvyll_val_m_temp$mvyll_45_49_lb,
                                mvyll_50_54_lb = tmvyll_val_m_temp$mvyll_50_54_lb,
                                mvyll_55_59_lb = tmvyll_val_m_temp$mvyll_55_59_lb,
                                mvyll_60_64_lb = tmvyll_val_m_temp$mvyll_60_64_lb,
                                
                                tmvyll_ub = tmvyll_val_m_temp$tmvyll_ub,
                                mvyll_20_24_ub = tmvyll_val_m_temp$mvyll_20_24_ub,
                                mvyll_25_29_ub = tmvyll_val_m_temp$mvyll_25_29_ub,
                                mvyll_30_34_ub = tmvyll_val_m_temp$mvyll_30_34_ub,
                                mvyll_35_39_ub = tmvyll_val_m_temp$mvyll_35_39_ub,
                                mvyll_40_44_ub = tmvyll_val_m_temp$mvyll_40_44_ub,
                                mvyll_45_49_ub = tmvyll_val_m_temp$mvyll_45_49_ub,
                                mvyll_50_54_ub = tmvyll_val_m_temp$mvyll_50_54_ub,
                                mvyll_55_59_ub = tmvyll_val_m_temp$mvyll_55_59_ub,
                                mvyll_60_64_ub = tmvyll_val_m_temp$mvyll_60_64_ub
  )
  
  tmvyll_df_wg3_kle <- rbind(tmvyll_df_wg3_kle, tmvyll_df_m_temp)
  
  
  #Females
  
  tmvyll_val_f_temp = calc_tmvyll_wg(SD_20_24 = SD_female_20_24_state, 
                                     SD_25_29 = SD_female_25_29_state, 
                                     SD_30_34 = SD_female_30_34_state,
                                     SD_35_39 = SD_female_35_39_state, 
                                     SD_40_44 = SD_female_40_44_state, 
                                     SD_45_49 = SD_female_45_49_state,
                                     SD_50_54 = SD_female_50_54_state, 
                                     SD_55_59 = SD_female_55_59_state, 
                                     SD_60_64 = SD_female_60_64_state,
                                     SD_20_24_lb = SD_female_20_24_state_lb, 
                                     SD_25_29_lb = SD_female_25_29_state_lb, 
                                     SD_30_34_lb = SD_female_30_34_state_lb,
                                     SD_35_39_lb = SD_female_35_39_state_lb, 
                                     SD_40_44_lb = SD_female_40_44_state_lb, 
                                     SD_45_49_lb = SD_female_45_49_state_lb,
                                     SD_50_54_lb = SD_female_50_54_state_lb, 
                                     SD_55_59_lb = SD_female_55_59_state_lb, 
                                     SD_60_64_lb = SD_female_60_64_state_lb,
                                     SD_20_24_ub = SD_female_20_24_state_ub, 
                                     SD_25_29_ub = SD_female_25_29_state_ub, 
                                     SD_30_34_ub = SD_female_30_34_state_ub,
                                     SD_35_39_ub = SD_female_35_39_state_ub, 
                                     SD_40_44_ub = SD_female_40_44_state_ub, 
                                     SD_45_49_ub = SD_female_45_49_state_ub,
                                     SD_50_54_ub = SD_female_50_54_state_ub, 
                                     SD_55_59_ub = SD_female_55_59_state_ub, 
                                     SD_60_64_ub = SD_female_60_64_state_ub,
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
                                mvyll_60_64 = tmvyll_val_f_temp$mvyll_60_64,
                                tmvyll_lb = tmvyll_val_f_temp$tmvyll_lb,
                                mvyll_20_24_lb = tmvyll_val_f_temp$mvyll_20_24_lb,
                                mvyll_25_29_lb = tmvyll_val_f_temp$mvyll_25_29_lb,
                                mvyll_30_34_lb = tmvyll_val_f_temp$mvyll_30_34_lb,
                                mvyll_35_39_lb = tmvyll_val_f_temp$mvyll_35_39_lb,
                                mvyll_40_44_lb = tmvyll_val_f_temp$mvyll_40_44_lb,
                                mvyll_45_49_lb = tmvyll_val_f_temp$mvyll_45_49_lb,
                                mvyll_50_54_lb = tmvyll_val_f_temp$mvyll_50_54_lb,
                                mvyll_55_59_lb = tmvyll_val_f_temp$mvyll_55_59_lb,
                                mvyll_60_64_lb = tmvyll_val_f_temp$mvyll_60_64_lb,
                                
                                tmvyll_ub = tmvyll_val_f_temp$tmvyll_ub,
                                mvyll_20_24_ub = tmvyll_val_f_temp$mvyll_20_24_ub,
                                mvyll_25_29_ub = tmvyll_val_f_temp$mvyll_25_29_ub,
                                mvyll_30_34_ub = tmvyll_val_f_temp$mvyll_30_34_ub,
                                mvyll_35_39_ub = tmvyll_val_f_temp$mvyll_35_39_ub,
                                mvyll_40_44_ub = tmvyll_val_f_temp$mvyll_40_44_ub,
                                mvyll_45_49_ub = tmvyll_val_f_temp$mvyll_45_49_ub,
                                mvyll_50_54_ub = tmvyll_val_f_temp$mvyll_50_54_ub,
                                mvyll_55_59_ub = tmvyll_val_f_temp$mvyll_55_59_ub,
                                mvyll_60_64_ub = tmvyll_val_f_temp$mvyll_60_64_ub)
  tmvyll_df_wg3_kle <- rbind(tmvyll_df_wg3_kle, tmvyll_df_f_temp)
  
}

tmvyll_df_wg3_kle_usd <- tmvyll_df_wg3_kle
tmvyll_df_wg3_kle_usd[,3:32] <- tmvyll_df_wg3_kle_usd[,3:32]/70.394

write.csv(tmvyll_df_wg3_kle, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/UA_wg_r3_kle_INR.csv")
write.csv(tmvyll_df_wg3_kle_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/UA_wg_r3_kle_USD.csv")

################
# r value is 5 #
################

tmvyll_df_wg5_kle <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                            mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                            mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                            mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),tmvyll_lb = numeric(), 
                            mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                            mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                            mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),
                            tmvyll_ub = numeric(), 
                            mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                            mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                            mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric())

for( s in state_list){
  tmvyll_df_m_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),tmvyll_lb = numeric(), 
                                 mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                                 mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                                 mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),
                                 tmvyll_ub = numeric(), 
                                 mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                                 mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                                 mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric())
  
  tmvyll_df_f_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),tmvyll_lb = numeric(), 
                                 mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                                 mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                                 mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),
                                 tmvyll_ub = numeric(), 
                                 mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                                 mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                                 mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric())
  
  r_val = 0.05
  
  #K for males
  k_male_20_24_state = LE_Male_20_to_24$k_le[which(LE_Male_20_to_24$location_name == s)]
  k_male_25_29_state = LE_Male_25_to_29$k_le[which(LE_Male_25_to_29$location_name == s)]
  k_male_30_34_state = LE_Male_30_to_34$k_le[which(LE_Male_30_to_34$location_name == s)]
  k_male_35_39_state = LE_Male_35_to_39$k_le[which(LE_Male_35_to_39$location_name == s)]
  k_male_40_44_state = LE_Male_40_to_44$k_le[which(LE_Male_40_to_44$location_name == s)]
  k_male_45_49_state = LE_Male_45_to_49$k_le[which(LE_Male_45_to_49$location_name == s)]
  k_male_50_54_state = LE_Male_50_to_54$k_le[which(LE_Male_50_to_54$location_name == s)]
  k_male_55_59_state = LE_Male_55_to_59$k_le[which(LE_Male_55_to_59$location_name == s)]
  k_male_60_64_state = LE_Male_60_to_64$k_le[which(LE_Male_60_to_64$location_name == s)]
  
  #K for females
  k_female_20_24_state = LE_Female_20_to_24$k_le[which(LE_Female_20_to_24$location_name == s)]
  k_female_25_29_state = LE_Female_25_to_29$k_le[which(LE_Female_25_to_29$location_name == s)]
  k_female_30_34_state = LE_Female_30_to_34$k_le[which(LE_Female_30_to_34$location_name == s)]
  k_female_35_39_state = LE_Female_35_to_39$k_le[which(LE_Female_35_to_39$location_name == s)]
  k_female_40_44_state = LE_Female_40_to_44$k_le[which(LE_Female_40_to_44$location_name == s)]
  k_female_45_49_state = LE_Female_45_to_49$k_le[which(LE_Female_45_to_49$location_name == s)]
  k_female_50_54_state = LE_Female_50_to_54$k_le[which(LE_Female_50_to_54$location_name == s)]
  k_female_55_59_state = LE_Female_55_to_59$k_le[which(LE_Female_55_to_59$location_name == s)]
  k_female_60_64_state = LE_Female_60_to_64$k_le[which(LE_Female_60_to_64$location_name == s)]
  
  NGDP_val_state = State_GDP$non_health_exp_per_capita_inr[which(State_GDP$State == s)]
  #SD for males
  SD_male_20_24_state = LE_Male_20_to_24$val_suicide[which(LE_Male_20_to_24$location_name == s)]
  SD_male_25_29_state = LE_Male_25_to_29$val_suicide[which(LE_Male_25_to_29$location_name == s)]
  SD_male_30_34_state = LE_Male_30_to_34$val_suicide[which(LE_Male_30_to_34$location_name == s)]
  SD_male_35_39_state = LE_Male_35_to_39$val_suicide[which(LE_Male_35_to_39$location_name == s)]
  SD_male_40_44_state = LE_Male_40_to_44$val_suicide[which(LE_Male_40_to_44$location_name == s)]
  SD_male_45_49_state = LE_Male_45_to_49$val_suicide[which(LE_Male_45_to_49$location_name == s)]
  SD_male_50_54_state = LE_Male_50_to_54$val_suicide[which(LE_Male_50_to_54$location_name == s)]
  SD_male_55_59_state = LE_Male_55_to_59$val_suicide[which(LE_Male_55_to_59$location_name == s)]
  SD_male_60_64_state = LE_Male_60_to_64$val_suicide[which(LE_Male_60_to_64$location_name == s)]
  
  #SD for females
  SD_female_20_24_state = LE_Female_20_to_24$val_suicide[which(LE_Female_20_to_24$location_name == s)]
  SD_female_25_29_state = LE_Female_25_to_29$val_suicide[which(LE_Female_25_to_29$location_name == s)]
  SD_female_30_34_state = LE_Female_30_to_34$val_suicide[which(LE_Female_30_to_34$location_name == s)]
  SD_female_35_39_state = LE_Female_35_to_39$val_suicide[which(LE_Female_35_to_39$location_name == s)]
  SD_female_40_44_state = LE_Female_40_to_44$val_suicide[which(LE_Female_40_to_44$location_name == s)]
  SD_female_45_49_state = LE_Female_45_to_49$val_suicide[which(LE_Female_45_to_49$location_name == s)]
  SD_female_50_54_state = LE_Female_50_to_54$val_suicide[which(LE_Female_50_to_54$location_name == s)]
  SD_female_55_59_state = LE_Female_55_to_59$val_suicide[which(LE_Female_55_to_59$location_name == s)]
  SD_female_60_64_state = LE_Female_60_to_64$val_suicide[which(LE_Female_60_to_64$location_name == s)]
  
  #SD for males Upper bound
  SD_male_20_24_state_ub = LE_Male_20_to_24$upper_suicide[which(LE_Male_20_to_24$location_name == s)]
  SD_male_25_29_state_ub = LE_Male_25_to_29$upper_suicide[which(LE_Male_25_to_29$location_name == s)]
  SD_male_30_34_state_ub = LE_Male_30_to_34$upper_suicide[which(LE_Male_30_to_34$location_name == s)]
  SD_male_35_39_state_ub = LE_Male_35_to_39$upper_suicide[which(LE_Male_35_to_39$location_name == s)]
  SD_male_40_44_state_ub = LE_Male_40_to_44$upper_suicide[which(LE_Male_40_to_44$location_name == s)]
  SD_male_45_49_state_ub = LE_Male_45_to_49$upper_suicide[which(LE_Male_45_to_49$location_name == s)]
  SD_male_50_54_state_ub = LE_Male_50_to_54$upper_suicide[which(LE_Male_50_to_54$location_name == s)]
  SD_male_55_59_state_ub = LE_Male_55_to_59$upper_suicide[which(LE_Male_55_to_59$location_name == s)]
  SD_male_60_64_state_ub = LE_Male_60_to_64$upper_suicide[which(LE_Male_60_to_64$location_name == s)]
  
  #SD for females upper bound
  SD_female_20_24_state_ub = LE_Female_20_to_24$upper_suicide[which(LE_Female_20_to_24$location_name == s)]
  SD_female_25_29_state_ub = LE_Female_25_to_29$upper_suicide[which(LE_Female_25_to_29$location_name == s)]
  SD_female_30_34_state_ub = LE_Female_30_to_34$upper_suicide[which(LE_Female_30_to_34$location_name == s)]
  SD_female_35_39_state_ub = LE_Female_35_to_39$upper_suicide[which(LE_Female_35_to_39$location_name == s)]
  SD_female_40_44_state_ub = LE_Female_40_to_44$upper_suicide[which(LE_Female_40_to_44$location_name == s)]
  SD_female_45_49_state_ub = LE_Female_45_to_49$upper_suicide[which(LE_Female_45_to_49$location_name == s)]
  SD_female_50_54_state_ub = LE_Female_50_to_54$upper_suicide[which(LE_Female_50_to_54$location_name == s)]
  SD_female_55_59_state_ub = LE_Female_55_to_59$upper_suicide[which(LE_Female_55_to_59$location_name == s)]
  SD_female_60_64_state_ub = LE_Female_60_to_64$upper_suicide[which(LE_Female_60_to_64$location_name == s)]
  
  #SD for males lower bound
  SD_male_20_24_state_lb = LE_Male_20_to_24$lower_suicide[which(LE_Male_20_to_24$location_name == s)]
  SD_male_25_29_state_lb = LE_Male_25_to_29$lower_suicide[which(LE_Male_25_to_29$location_name == s)]
  SD_male_30_34_state_lb = LE_Male_30_to_34$lower_suicide[which(LE_Male_30_to_34$location_name == s)]
  SD_male_35_39_state_lb = LE_Male_35_to_39$lower_suicide[which(LE_Male_35_to_39$location_name == s)]
  SD_male_40_44_state_lb = LE_Male_40_to_44$lower_suicide[which(LE_Male_40_to_44$location_name == s)]
  SD_male_45_49_state_lb = LE_Male_45_to_49$lower_suicide[which(LE_Male_45_to_49$location_name == s)]
  SD_male_50_54_state_lb = LE_Male_50_to_54$lower_suicide[which(LE_Male_50_to_54$location_name == s)]
  SD_male_55_59_state_lb = LE_Male_55_to_59$lower_suicide[which(LE_Male_55_to_59$location_name == s)]
  SD_male_60_64_state_lb = LE_Male_60_to_64$lower_suicide[which(LE_Male_60_to_64$location_name == s)]
  
  #SD for females lower bound
  SD_female_20_24_state_lb = LE_Female_20_to_24$lower_suicide[which(LE_Female_20_to_24$location_name == s)]
  SD_female_25_29_state_lb = LE_Female_25_to_29$lower_suicide[which(LE_Female_25_to_29$location_name == s)]
  SD_female_30_34_state_lb = LE_Female_30_to_34$lower_suicide[which(LE_Female_30_to_34$location_name == s)]
  SD_female_35_39_state_lb = LE_Female_35_to_39$lower_suicide[which(LE_Female_35_to_39$location_name == s)]
  SD_female_40_44_state_lb = LE_Female_40_to_44$lower_suicide[which(LE_Female_40_to_44$location_name == s)]
  SD_female_45_49_state_lb = LE_Female_45_to_49$lower_suicide[which(LE_Female_45_to_49$location_name == s)]
  SD_female_50_54_state_lb = LE_Female_50_to_54$lower_suicide[which(LE_Female_50_to_54$location_name == s)]
  SD_female_55_59_state_lb = LE_Female_55_to_59$lower_suicide[which(LE_Female_55_to_59$location_name == s)]
  SD_female_60_64_state_lb = LE_Female_60_to_64$lower_suicide[which(LE_Female_60_to_64$location_name == s)]
  
  
  #Males
  # send values for each sd for that state name
  tmvyll_val_m_temp = calc_tmvyll_wg(SD_20_24 = SD_male_20_24_state, 
                                     SD_25_29 = SD_male_25_29_state, 
                                     SD_30_34 = SD_male_30_34_state,
                                     SD_35_39 = SD_male_35_39_state, 
                                     SD_40_44 = SD_male_40_44_state, 
                                     SD_45_49 = SD_male_45_49_state,
                                     SD_50_54 = SD_male_50_54_state, 
                                     SD_55_59 = SD_male_55_59_state, 
                                     SD_60_64 = SD_male_60_64_state,
                                     SD_20_24_lb = SD_male_20_24_state_lb, 
                                     SD_25_29_lb = SD_male_25_29_state_lb, 
                                     SD_30_34_lb = SD_male_30_34_state_lb,
                                     SD_35_39_lb = SD_male_35_39_state_lb, 
                                     SD_40_44_lb = SD_male_40_44_state_lb, 
                                     SD_45_49_lb = SD_male_45_49_state_lb,
                                     SD_50_54_lb = SD_male_50_54_state_lb, 
                                     SD_55_59_lb = SD_male_55_59_state_lb, 
                                     SD_60_64_lb = SD_male_60_64_state_lb,
                                     SD_20_24_ub = SD_male_20_24_state_ub, 
                                     SD_25_29_ub = SD_male_25_29_state_ub, 
                                     SD_30_34_ub = SD_male_30_34_state_ub,
                                     SD_35_39_ub = SD_male_35_39_state_ub, 
                                     SD_40_44_ub = SD_male_40_44_state_ub, 
                                     SD_45_49_ub = SD_male_45_49_state_ub,
                                     SD_50_54_ub = SD_male_50_54_state_ub, 
                                     SD_55_59_ub = SD_male_55_59_state_ub, 
                                     SD_60_64_ub = SD_male_60_64_state_ub,
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
                                mvyll_60_64 = tmvyll_val_m_temp$mvyll_60_64,
                                tmvyll_lb = tmvyll_val_m_temp$tmvyll_lb,
                                mvyll_20_24_lb = tmvyll_val_m_temp$mvyll_20_24_lb,
                                mvyll_25_29_lb = tmvyll_val_m_temp$mvyll_25_29_lb,
                                mvyll_30_34_lb = tmvyll_val_m_temp$mvyll_30_34_lb,
                                mvyll_35_39_lb = tmvyll_val_m_temp$mvyll_35_39_lb,
                                mvyll_40_44_lb = tmvyll_val_m_temp$mvyll_40_44_lb,
                                mvyll_45_49_lb = tmvyll_val_m_temp$mvyll_45_49_lb,
                                mvyll_50_54_lb = tmvyll_val_m_temp$mvyll_50_54_lb,
                                mvyll_55_59_lb = tmvyll_val_m_temp$mvyll_55_59_lb,
                                mvyll_60_64_lb = tmvyll_val_m_temp$mvyll_60_64_lb,
                                
                                tmvyll_ub = tmvyll_val_m_temp$tmvyll_ub,
                                mvyll_20_24_ub = tmvyll_val_m_temp$mvyll_20_24_ub,
                                mvyll_25_29_ub = tmvyll_val_m_temp$mvyll_25_29_ub,
                                mvyll_30_34_ub = tmvyll_val_m_temp$mvyll_30_34_ub,
                                mvyll_35_39_ub = tmvyll_val_m_temp$mvyll_35_39_ub,
                                mvyll_40_44_ub = tmvyll_val_m_temp$mvyll_40_44_ub,
                                mvyll_45_49_ub = tmvyll_val_m_temp$mvyll_45_49_ub,
                                mvyll_50_54_ub = tmvyll_val_m_temp$mvyll_50_54_ub,
                                mvyll_55_59_ub = tmvyll_val_m_temp$mvyll_55_59_ub,
                                mvyll_60_64_ub = tmvyll_val_m_temp$mvyll_60_64_ub
  )
  tmvyll_df_wg5_kle <- rbind(tmvyll_df_wg5_kle, tmvyll_df_m_temp)
  
  
  #Females
  
  tmvyll_val_f_temp = calc_tmvyll_wg(SD_20_24 = SD_female_20_24_state, 
                                     SD_25_29 = SD_female_25_29_state, 
                                     SD_30_34 = SD_female_30_34_state,
                                     SD_35_39 = SD_female_35_39_state, 
                                     SD_40_44 = SD_female_40_44_state, 
                                     SD_45_49 = SD_female_45_49_state,
                                     SD_50_54 = SD_female_50_54_state, 
                                     SD_55_59 = SD_female_55_59_state, 
                                     SD_60_64 = SD_female_60_64_state,
                                     SD_20_24_lb = SD_female_20_24_state_lb, 
                                     SD_25_29_lb = SD_female_25_29_state_lb, 
                                     SD_30_34_lb = SD_female_30_34_state_lb,
                                     SD_35_39_lb = SD_female_35_39_state_lb, 
                                     SD_40_44_lb = SD_female_40_44_state_lb, 
                                     SD_45_49_lb = SD_female_45_49_state_lb,
                                     SD_50_54_lb = SD_female_50_54_state_lb, 
                                     SD_55_59_lb = SD_female_55_59_state_lb, 
                                     SD_60_64_lb = SD_female_60_64_state_lb,
                                     SD_20_24_ub = SD_female_20_24_state_ub, 
                                     SD_25_29_ub = SD_female_25_29_state_ub, 
                                     SD_30_34_ub = SD_female_30_34_state_ub,
                                     SD_35_39_ub = SD_female_35_39_state_ub, 
                                     SD_40_44_ub = SD_female_40_44_state_ub, 
                                     SD_45_49_ub = SD_female_45_49_state_ub,
                                     SD_50_54_ub = SD_female_50_54_state_ub, 
                                     SD_55_59_ub = SD_female_55_59_state_ub, 
                                     SD_60_64_ub = SD_female_60_64_state_ub,
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
                                mvyll_60_64 = tmvyll_val_f_temp$mvyll_60_64,
                                tmvyll_lb = tmvyll_val_f_temp$tmvyll_lb,
                                mvyll_20_24_lb = tmvyll_val_f_temp$mvyll_20_24_lb,
                                mvyll_25_29_lb = tmvyll_val_f_temp$mvyll_25_29_lb,
                                mvyll_30_34_lb = tmvyll_val_f_temp$mvyll_30_34_lb,
                                mvyll_35_39_lb = tmvyll_val_f_temp$mvyll_35_39_lb,
                                mvyll_40_44_lb = tmvyll_val_f_temp$mvyll_40_44_lb,
                                mvyll_45_49_lb = tmvyll_val_f_temp$mvyll_45_49_lb,
                                mvyll_50_54_lb = tmvyll_val_f_temp$mvyll_50_54_lb,
                                mvyll_55_59_lb = tmvyll_val_f_temp$mvyll_55_59_lb,
                                mvyll_60_64_lb = tmvyll_val_f_temp$mvyll_60_64_lb,
                                
                                tmvyll_ub = tmvyll_val_f_temp$tmvyll_ub,
                                mvyll_20_24_ub = tmvyll_val_f_temp$mvyll_20_24_ub,
                                mvyll_25_29_ub = tmvyll_val_f_temp$mvyll_25_29_ub,
                                mvyll_30_34_ub = tmvyll_val_f_temp$mvyll_30_34_ub,
                                mvyll_35_39_ub = tmvyll_val_f_temp$mvyll_35_39_ub,
                                mvyll_40_44_ub = tmvyll_val_f_temp$mvyll_40_44_ub,
                                mvyll_45_49_ub = tmvyll_val_f_temp$mvyll_45_49_ub,
                                mvyll_50_54_ub = tmvyll_val_f_temp$mvyll_50_54_ub,
                                mvyll_55_59_ub = tmvyll_val_f_temp$mvyll_55_59_ub,
                                mvyll_60_64_ub = tmvyll_val_f_temp$mvyll_60_64_ub)
  tmvyll_df_wg5_kle <- rbind(tmvyll_df_wg5_kle, tmvyll_df_f_temp)
  
}

tmvyll_df_wg5_kle_usd <- tmvyll_df_wg5_kle
tmvyll_df_wg5_kle_usd[,3:32] <- tmvyll_df_wg5_kle_usd[,3:32]/70.394

write.csv(tmvyll_df_wg5_kle, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/UA_wg_r5_kle_INR.csv")
write.csv(tmvyll_df_wg5_kle_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/UA_wg_r5_kle_USD.csv")


#################
# r value is 10
#################

tmvyll_df_wg10_kle <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                             mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                             mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                             mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),tmvyll_lb = numeric(), 
                             mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                             mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                             mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),
                             tmvyll_ub = numeric(), 
                             mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                             mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                             mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric())

for( s in state_list){
  tmvyll_df_m_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),tmvyll_lb = numeric(), 
                                 mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                                 mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                                 mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),
                                 tmvyll_ub = numeric(), 
                                 mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                                 mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                                 mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric())
  
  tmvyll_df_f_temp <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                                 mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                 mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                 mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),tmvyll_lb = numeric(), 
                                 mvyll_20_24_lb = numeric(),mvyll_25_29_lb = numeric(),
                                 mvyll_30_34_lb = numeric(),mvyll_35_39_lb = numeric(),mvyll_40_44_lb = numeric(),mvyll_45_49_lb = numeric(),
                                 mvyll_50_54_lb = numeric(),mvyll_55_59_lb = numeric(),mvyll_60_64_lb = numeric(),
                                 tmvyll_ub = numeric(), 
                                 mvyll_20_24_ub = numeric(),mvyll_25_29_ub = numeric(),
                                 mvyll_30_34_ub = numeric(),mvyll_35_39_ub = numeric(),mvyll_40_44_ub = numeric(),mvyll_45_49_ub = numeric(),
                                 mvyll_50_54_ub = numeric(),mvyll_55_59_ub = numeric(),mvyll_60_64_ub = numeric())
  r_val = 0.10
  
  #K for males
  k_male_20_24_state = LE_Male_20_to_24$k_le[which(LE_Male_20_to_24$location_name == s)]
  k_male_25_29_state = LE_Male_25_to_29$k_le[which(LE_Male_25_to_29$location_name == s)]
  k_male_30_34_state = LE_Male_30_to_34$k_le[which(LE_Male_30_to_34$location_name == s)]
  k_male_35_39_state = LE_Male_35_to_39$k_le[which(LE_Male_35_to_39$location_name == s)]
  k_male_40_44_state = LE_Male_40_to_44$k_le[which(LE_Male_40_to_44$location_name == s)]
  k_male_45_49_state = LE_Male_45_to_49$k_le[which(LE_Male_45_to_49$location_name == s)]
  k_male_50_54_state = LE_Male_50_to_54$k_le[which(LE_Male_50_to_54$location_name == s)]
  k_male_55_59_state = LE_Male_55_to_59$k_le[which(LE_Male_55_to_59$location_name == s)]
  k_male_60_64_state = LE_Male_60_to_64$k_le[which(LE_Male_60_to_64$location_name == s)]
  
  #K for females
  k_female_20_24_state = LE_Female_20_to_24$k_le[which(LE_Female_20_to_24$location_name == s)]
  k_female_25_29_state = LE_Female_25_to_29$k_le[which(LE_Female_25_to_29$location_name == s)]
  k_female_30_34_state = LE_Female_30_to_34$k_le[which(LE_Female_30_to_34$location_name == s)]
  k_female_35_39_state = LE_Female_35_to_39$k_le[which(LE_Female_35_to_39$location_name == s)]
  k_female_40_44_state = LE_Female_40_to_44$k_le[which(LE_Female_40_to_44$location_name == s)]
  k_female_45_49_state = LE_Female_45_to_49$k_le[which(LE_Female_45_to_49$location_name == s)]
  k_female_50_54_state = LE_Female_50_to_54$k_le[which(LE_Female_50_to_54$location_name == s)]
  k_female_55_59_state = LE_Female_55_to_59$k_le[which(LE_Female_55_to_59$location_name == s)]
  k_female_60_64_state = LE_Female_60_to_64$k_le[which(LE_Female_60_to_64$location_name == s)]
  
  NGDP_val_state = State_GDP$non_health_exp_per_capita_inr[which(State_GDP$State == s)]
  #SD for males
  SD_male_20_24_state = LE_Male_20_to_24$val_suicide[which(LE_Male_20_to_24$location_name == s)]
  SD_male_25_29_state = LE_Male_25_to_29$val_suicide[which(LE_Male_25_to_29$location_name == s)]
  SD_male_30_34_state = LE_Male_30_to_34$val_suicide[which(LE_Male_30_to_34$location_name == s)]
  SD_male_35_39_state = LE_Male_35_to_39$val_suicide[which(LE_Male_35_to_39$location_name == s)]
  SD_male_40_44_state = LE_Male_40_to_44$val_suicide[which(LE_Male_40_to_44$location_name == s)]
  SD_male_45_49_state = LE_Male_45_to_49$val_suicide[which(LE_Male_45_to_49$location_name == s)]
  SD_male_50_54_state = LE_Male_50_to_54$val_suicide[which(LE_Male_50_to_54$location_name == s)]
  SD_male_55_59_state = LE_Male_55_to_59$val_suicide[which(LE_Male_55_to_59$location_name == s)]
  SD_male_60_64_state = LE_Male_60_to_64$val_suicide[which(LE_Male_60_to_64$location_name == s)]
  
  #SD for females
  SD_female_20_24_state = LE_Female_20_to_24$val_suicide[which(LE_Female_20_to_24$location_name == s)]
  SD_female_25_29_state = LE_Female_25_to_29$val_suicide[which(LE_Female_25_to_29$location_name == s)]
  SD_female_30_34_state = LE_Female_30_to_34$val_suicide[which(LE_Female_30_to_34$location_name == s)]
  SD_female_35_39_state = LE_Female_35_to_39$val_suicide[which(LE_Female_35_to_39$location_name == s)]
  SD_female_40_44_state = LE_Female_40_to_44$val_suicide[which(LE_Female_40_to_44$location_name == s)]
  SD_female_45_49_state = LE_Female_45_to_49$val_suicide[which(LE_Female_45_to_49$location_name == s)]
  SD_female_50_54_state = LE_Female_50_to_54$val_suicide[which(LE_Female_50_to_54$location_name == s)]
  SD_female_55_59_state = LE_Female_55_to_59$val_suicide[which(LE_Female_55_to_59$location_name == s)]
  SD_female_60_64_state = LE_Female_60_to_64$val_suicide[which(LE_Female_60_to_64$location_name == s)]
  
  #SD for males Upper bound
  SD_male_20_24_state_ub = LE_Male_20_to_24$upper_suicide[which(LE_Male_20_to_24$location_name == s)]
  SD_male_25_29_state_ub = LE_Male_25_to_29$upper_suicide[which(LE_Male_25_to_29$location_name == s)]
  SD_male_30_34_state_ub = LE_Male_30_to_34$upper_suicide[which(LE_Male_30_to_34$location_name == s)]
  SD_male_35_39_state_ub = LE_Male_35_to_39$upper_suicide[which(LE_Male_35_to_39$location_name == s)]
  SD_male_40_44_state_ub = LE_Male_40_to_44$upper_suicide[which(LE_Male_40_to_44$location_name == s)]
  SD_male_45_49_state_ub = LE_Male_45_to_49$upper_suicide[which(LE_Male_45_to_49$location_name == s)]
  SD_male_50_54_state_ub = LE_Male_50_to_54$upper_suicide[which(LE_Male_50_to_54$location_name == s)]
  SD_male_55_59_state_ub = LE_Male_55_to_59$upper_suicide[which(LE_Male_55_to_59$location_name == s)]
  SD_male_60_64_state_ub = LE_Male_60_to_64$upper_suicide[which(LE_Male_60_to_64$location_name == s)]
  
  #SD for females upper bound
  SD_female_20_24_state_ub = LE_Female_20_to_24$upper_suicide[which(LE_Female_20_to_24$location_name == s)]
  SD_female_25_29_state_ub = LE_Female_25_to_29$upper_suicide[which(LE_Female_25_to_29$location_name == s)]
  SD_female_30_34_state_ub = LE_Female_30_to_34$upper_suicide[which(LE_Female_30_to_34$location_name == s)]
  SD_female_35_39_state_ub = LE_Female_35_to_39$upper_suicide[which(LE_Female_35_to_39$location_name == s)]
  SD_female_40_44_state_ub = LE_Female_40_to_44$upper_suicide[which(LE_Female_40_to_44$location_name == s)]
  SD_female_45_49_state_ub = LE_Female_45_to_49$upper_suicide[which(LE_Female_45_to_49$location_name == s)]
  SD_female_50_54_state_ub = LE_Female_50_to_54$upper_suicide[which(LE_Female_50_to_54$location_name == s)]
  SD_female_55_59_state_ub = LE_Female_55_to_59$upper_suicide[which(LE_Female_55_to_59$location_name == s)]
  SD_female_60_64_state_ub = LE_Female_60_to_64$upper_suicide[which(LE_Female_60_to_64$location_name == s)]
  
  #SD for males lower bound
  SD_male_20_24_state_lb = LE_Male_20_to_24$lower_suicide[which(LE_Male_20_to_24$location_name == s)]
  SD_male_25_29_state_lb = LE_Male_25_to_29$lower_suicide[which(LE_Male_25_to_29$location_name == s)]
  SD_male_30_34_state_lb = LE_Male_30_to_34$lower_suicide[which(LE_Male_30_to_34$location_name == s)]
  SD_male_35_39_state_lb = LE_Male_35_to_39$lower_suicide[which(LE_Male_35_to_39$location_name == s)]
  SD_male_40_44_state_lb = LE_Male_40_to_44$lower_suicide[which(LE_Male_40_to_44$location_name == s)]
  SD_male_45_49_state_lb = LE_Male_45_to_49$lower_suicide[which(LE_Male_45_to_49$location_name == s)]
  SD_male_50_54_state_lb = LE_Male_50_to_54$lower_suicide[which(LE_Male_50_to_54$location_name == s)]
  SD_male_55_59_state_lb = LE_Male_55_to_59$lower_suicide[which(LE_Male_55_to_59$location_name == s)]
  SD_male_60_64_state_lb = LE_Male_60_to_64$lower_suicide[which(LE_Male_60_to_64$location_name == s)]
  
  #SD for females lower bound
  SD_female_20_24_state_lb = LE_Female_20_to_24$lower_suicide[which(LE_Female_20_to_24$location_name == s)]
  SD_female_25_29_state_lb = LE_Female_25_to_29$lower_suicide[which(LE_Female_25_to_29$location_name == s)]
  SD_female_30_34_state_lb = LE_Female_30_to_34$lower_suicide[which(LE_Female_30_to_34$location_name == s)]
  SD_female_35_39_state_lb = LE_Female_35_to_39$lower_suicide[which(LE_Female_35_to_39$location_name == s)]
  SD_female_40_44_state_lb = LE_Female_40_to_44$lower_suicide[which(LE_Female_40_to_44$location_name == s)]
  SD_female_45_49_state_lb = LE_Female_45_to_49$lower_suicide[which(LE_Female_45_to_49$location_name == s)]
  SD_female_50_54_state_lb = LE_Female_50_to_54$lower_suicide[which(LE_Female_50_to_54$location_name == s)]
  SD_female_55_59_state_lb = LE_Female_55_to_59$lower_suicide[which(LE_Female_55_to_59$location_name == s)]
  SD_female_60_64_state_lb = LE_Female_60_to_64$lower_suicide[which(LE_Female_60_to_64$location_name == s)]
  
  
  #Males
  # send values for each sd for that state name
  tmvyll_val_m_temp = calc_tmvyll_wg(SD_20_24 = SD_male_20_24_state, 
                                     SD_25_29 = SD_male_25_29_state, 
                                     SD_30_34 = SD_male_30_34_state,
                                     SD_35_39 = SD_male_35_39_state, 
                                     SD_40_44 = SD_male_40_44_state, 
                                     SD_45_49 = SD_male_45_49_state,
                                     SD_50_54 = SD_male_50_54_state, 
                                     SD_55_59 = SD_male_55_59_state, 
                                     SD_60_64 = SD_male_60_64_state,
                                     SD_20_24_lb = SD_male_20_24_state_lb, 
                                     SD_25_29_lb = SD_male_25_29_state_lb, 
                                     SD_30_34_lb = SD_male_30_34_state_lb,
                                     SD_35_39_lb = SD_male_35_39_state_lb, 
                                     SD_40_44_lb = SD_male_40_44_state_lb, 
                                     SD_45_49_lb = SD_male_45_49_state_lb,
                                     SD_50_54_lb = SD_male_50_54_state_lb, 
                                     SD_55_59_lb = SD_male_55_59_state_lb, 
                                     SD_60_64_lb = SD_male_60_64_state_lb,
                                     SD_20_24_ub = SD_male_20_24_state_ub, 
                                     SD_25_29_ub = SD_male_25_29_state_ub, 
                                     SD_30_34_ub = SD_male_30_34_state_ub,
                                     SD_35_39_ub = SD_male_35_39_state_ub, 
                                     SD_40_44_ub = SD_male_40_44_state_ub, 
                                     SD_45_49_ub = SD_male_45_49_state_ub,
                                     SD_50_54_ub = SD_male_50_54_state_ub, 
                                     SD_55_59_ub = SD_male_55_59_state_ub, 
                                     SD_60_64_ub = SD_male_60_64_state_ub,
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
                                mvyll_60_64 = tmvyll_val_m_temp$mvyll_60_64,
                                tmvyll_lb = tmvyll_val_m_temp$tmvyll_lb,
                                mvyll_20_24_lb = tmvyll_val_m_temp$mvyll_20_24_lb,
                                mvyll_25_29_lb = tmvyll_val_m_temp$mvyll_25_29_lb,
                                mvyll_30_34_lb = tmvyll_val_m_temp$mvyll_30_34_lb,
                                mvyll_35_39_lb = tmvyll_val_m_temp$mvyll_35_39_lb,
                                mvyll_40_44_lb = tmvyll_val_m_temp$mvyll_40_44_lb,
                                mvyll_45_49_lb = tmvyll_val_m_temp$mvyll_45_49_lb,
                                mvyll_50_54_lb = tmvyll_val_m_temp$mvyll_50_54_lb,
                                mvyll_55_59_lb = tmvyll_val_m_temp$mvyll_55_59_lb,
                                mvyll_60_64_lb = tmvyll_val_m_temp$mvyll_60_64_lb,
                                
                                tmvyll_ub = tmvyll_val_m_temp$tmvyll_ub,
                                mvyll_20_24_ub = tmvyll_val_m_temp$mvyll_20_24_ub,
                                mvyll_25_29_ub = tmvyll_val_m_temp$mvyll_25_29_ub,
                                mvyll_30_34_ub = tmvyll_val_m_temp$mvyll_30_34_ub,
                                mvyll_35_39_ub = tmvyll_val_m_temp$mvyll_35_39_ub,
                                mvyll_40_44_ub = tmvyll_val_m_temp$mvyll_40_44_ub,
                                mvyll_45_49_ub = tmvyll_val_m_temp$mvyll_45_49_ub,
                                mvyll_50_54_ub = tmvyll_val_m_temp$mvyll_50_54_ub,
                                mvyll_55_59_ub = tmvyll_val_m_temp$mvyll_55_59_ub,
                                mvyll_60_64_ub = tmvyll_val_m_temp$mvyll_60_64_ub)
  tmvyll_df_wg10_kle <- rbind(tmvyll_df_wg10_kle, tmvyll_df_m_temp)
  
  
  #Females
  
  tmvyll_val_f_temp = calc_tmvyll_wg(SD_20_24 = SD_female_20_24_state, 
                                     SD_25_29 = SD_female_25_29_state, 
                                     SD_30_34 = SD_female_30_34_state,
                                     SD_35_39 = SD_female_35_39_state, 
                                     SD_40_44 = SD_female_40_44_state, 
                                     SD_45_49 = SD_female_45_49_state,
                                     SD_50_54 = SD_female_50_54_state, 
                                     SD_55_59 = SD_female_55_59_state, 
                                     SD_60_64 = SD_female_60_64_state,
                                     SD_20_24_lb = SD_female_20_24_state_lb, 
                                     SD_25_29_lb = SD_female_25_29_state_lb, 
                                     SD_30_34_lb = SD_female_30_34_state_lb,
                                     SD_35_39_lb = SD_female_35_39_state_lb, 
                                     SD_40_44_lb = SD_female_40_44_state_lb, 
                                     SD_45_49_lb = SD_female_45_49_state_lb,
                                     SD_50_54_lb = SD_female_50_54_state_lb, 
                                     SD_55_59_lb = SD_female_55_59_state_lb, 
                                     SD_60_64_lb = SD_female_60_64_state_lb,
                                     SD_20_24_ub = SD_female_20_24_state_ub, 
                                     SD_25_29_ub = SD_female_25_29_state_ub, 
                                     SD_30_34_ub = SD_female_30_34_state_ub,
                                     SD_35_39_ub = SD_female_35_39_state_ub, 
                                     SD_40_44_ub = SD_female_40_44_state_ub, 
                                     SD_45_49_ub = SD_female_45_49_state_ub,
                                     SD_50_54_ub = SD_female_50_54_state_ub, 
                                     SD_55_59_ub = SD_female_55_59_state_ub, 
                                     SD_60_64_ub = SD_female_60_64_state_ub,
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
                                mvyll_60_64 = tmvyll_val_f_temp$mvyll_60_64,
                                tmvyll_lb = tmvyll_val_f_temp$tmvyll_lb,
                                mvyll_20_24_lb = tmvyll_val_f_temp$mvyll_20_24_lb,
                                mvyll_25_29_lb = tmvyll_val_f_temp$mvyll_25_29_lb,
                                mvyll_30_34_lb = tmvyll_val_f_temp$mvyll_30_34_lb,
                                mvyll_35_39_lb = tmvyll_val_f_temp$mvyll_35_39_lb,
                                mvyll_40_44_lb = tmvyll_val_f_temp$mvyll_40_44_lb,
                                mvyll_45_49_lb = tmvyll_val_f_temp$mvyll_45_49_lb,
                                mvyll_50_54_lb = tmvyll_val_f_temp$mvyll_50_54_lb,
                                mvyll_55_59_lb = tmvyll_val_f_temp$mvyll_55_59_lb,
                                mvyll_60_64_lb = tmvyll_val_f_temp$mvyll_60_64_lb,
                                
                                tmvyll_ub = tmvyll_val_f_temp$tmvyll_ub,
                                mvyll_20_24_ub = tmvyll_val_f_temp$mvyll_20_24_ub,
                                mvyll_25_29_ub = tmvyll_val_f_temp$mvyll_25_29_ub,
                                mvyll_30_34_ub = tmvyll_val_f_temp$mvyll_30_34_ub,
                                mvyll_35_39_ub = tmvyll_val_f_temp$mvyll_35_39_ub,
                                mvyll_40_44_ub = tmvyll_val_f_temp$mvyll_40_44_ub,
                                mvyll_45_49_ub = tmvyll_val_f_temp$mvyll_45_49_ub,
                                mvyll_50_54_ub = tmvyll_val_f_temp$mvyll_50_54_ub,
                                mvyll_55_59_ub = tmvyll_val_f_temp$mvyll_55_59_ub,
                                mvyll_60_64_ub = tmvyll_val_f_temp$mvyll_60_64_ub)
  tmvyll_df_wg10_kle <- rbind(tmvyll_df_wg10_kle, tmvyll_df_f_temp)
  
}

tmvyll_df_wg10_kle_usd <- tmvyll_df_wg10_kle
tmvyll_df_wg10_kle_usd[,3:32] <- tmvyll_df_wg10_kle_usd[,3:32]/70.394

write.csv(tmvyll_df_wg10_kle, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/UA_wg_r10_kle_INR.csv")
write.csv(tmvyll_df_wg10_kle_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/UA_wg_r10_kle_USD.csv")
