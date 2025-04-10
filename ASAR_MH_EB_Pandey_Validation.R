#!/bin/R
# ASAR_MH_EB_Pandey_Validation.R
# By: Anukrati Nigam

######################################################
### Script to validate code with Pandey et al 2025 ###
### correspondence data for 10-14 age category     ###
######################################################

#Read data

le_male_pandey <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/20_FEB_25_MV_comparison_correspondence_2.xlsx",
                             sheet = "Male 10-14 years", .name_repair = "minimal")
    le_male_pandey$k <- le_male_pandey$`Suicide deaths GBD 2019` - le_male_pandey$`Average age at death`

le_female_pandey <- read_excel("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/20_FEB_25_MV_comparison_correspondence_2.xlsx",
                             sheet = "Female 10-14 years", .name_repair = "minimal")
  le_female_pandey$k <- le_female_pandey$`Suicide deaths GBD 2019` - le_female_pandey$`Average age at death`


#Function for calculation of MVYLL
  
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

#Function to generate TMVYLL values for 10-14 Age 
# Category for all States in India

calc_tmvyll_Pandey <- function( SD_10_14,
                         NGDP, r, k_10_14){
    mvyll_10_14 = calc_mvyll(r, k = k_10_14, SD = SD_10_14, NGDPC = NGDP)
  return(mvyll_10_14)
}

#State list mentioned as per Pandey et al. 2025 data

state_list_Pandey <-  c("Andhra Pradesh","Arunachal Pradesh","Assam","Bihar",
                        "Chhattisgarh","Delhi","Goa","Gujarat","Haryana",
                        "Himachal Pradesh","Jammu and Kashmir","Jharkhand",
                        "Karnataka","Kerala","Madhya Pradesh","Maharashtra",
                        "Manipur","Meghalaya","Mizoram","Nagaland","Odisha",
                        "Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana",
                        "Tripura","Uttar Pradesh","Uttarakhand","West Bengal")
                        
  
#######################################################################
# Calculation of TMVYLL for 10-14 age group with r value is 3 percent #
#######################################################################


tmvyll_df_3_Pandey <- data.frame(state_name = character(), gender = character(), tmvyll = numeric(), 
                          mvyll_10_14 = numeric())

for( s in state_list_Pandey){
  tmvyll_df_m_temp <- data.frame(state_name = character(), gender = character(), mvyll_10_14 = numeric())
  
  tmvyll_df_f_temp <- data.frame(state_name = character(), gender = character(), mvyll_10_14 = numeric())
  r_val = 0.03
  
  #K for males
  k_male_10_14_state = as.numeric(le_male_pandey$`Years of life lost due to suicide deaths`[which(le_male_pandey$Location == s)])
  
  #K for females
  k_female_10_14_state = as.numeric(le_female_pandey$`Years of life lost due to suicide deaths`[which(le_female_pandey$Location == s)])
  
NGDP_val_state = as.numeric(le_male_pandey$`Non-health GDP per capita (INR)`[which(le_male_pandey$Location == s)])

#SD for males
  SD_male_10_14_state = as.numeric(le_male_pandey$`Suicide deaths GBD 2019`[which(le_male_pandey$Location == s)])
  
  #SD for females
  SD_female_10_14_state = as.numeric(le_female_pandey$`Suicide deaths GBD 2019`[which(le_female_pandey$Location == s)])
#Males
  # send values for each sd for that state name
  tmvyll_val_m_temp = calc_tmvyll_Pandey(SD_10_14 = SD_male_10_14_state,
                                  NGDP = NGDP_val_state, 
                                  r = r_val, 
                                  k_10_14 = k_male_10_14_state)
  # save values in data frame
  print(head(tmvyll_val_m_temp))
  # return bound data frame
  tmvyll_df_m_temp = data.frame(state_name = s,
                                gender = "Male",
                                mvyll_10_14 = tmvyll_val_m_temp)
  tmvyll_df_3_Pandey <- rbind(tmvyll_df_3_Pandey, tmvyll_df_m_temp)
  
  
  #Females
  
  tmvyll_val_f_temp = calc_tmvyll_Pandey(SD_10_14 = SD_female_10_14_state,
                                  NGDP = NGDP_val_state, 
                                  r = r_val, 
                                  k_10_14 = k_female_10_14_state
                                  )
  # save values in data frame
  print(head(tmvyll_val_f_temp))
  # return bound data frame
  tmvyll_df_f_temp = data.frame(state_name = s,
                                gender = "Female",
                                mvyll_10_14 = tmvyll_val_f_temp)
  tmvyll_df_3_Pandey <- rbind(tmvyll_df_3_Pandey, tmvyll_df_f_temp)
  
}

tmvyll_df_3_Pandey_usd <- tmvyll_df_3_Pandey
tmvyll_df_3_Pandey_usd[,3] <- tmvyll_df_3_Pandey_usd[,3]/70.394

write.csv(tmvyll_df_3_Pandey, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/Pandey_Validation_10-14.csv")
write.csv(tmvyll_df_3_Pandey_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/Pandey_Validation_10-14_USD.csv")

