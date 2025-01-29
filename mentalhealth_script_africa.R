#!/bin/R
# mentalhealth_script_africa.R
# By: Anukrati Nigam

################################################################################################
## Script to calculate economic burden for Kirigia maternal deaths and Kirigia suicide deaths ##
## in Africa for validation of the code used in Economic burden of suicide in India in 2019   ##
## paper by Nigam et al.                                                                      ##
################################################################################################



SD_data <- readxl::read_xlsx("~/ASAR/Mental_health_econ_burden_india/4_OCT_24_SZ_healthcare-08-00084-s001_kirigia_extract.xlsx", 
                             sheet = "table_s1")
LE_k_data <- readxl::read_xlsx("~/ASAR/Mental_health_econ_burden_india/4_OCT_24_SZ_healthcare-08-00084-s001_kirigia_extract.xlsx", 
                             sheet = "table s2")
GDP_data <- readxl::read_xlsx("~/ASAR/Mental_health_econ_burden_india/4_OCT_24_SZ_healthcare-08-00084-s001_kirigia_extract.xlsx", 
                             sheet = "table s3")


### Functions for calculation of mvyll and tmvyll.

##round only positive function##
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

calc_tmvyll <- function( SD_10_14, SD_15_19,
                         SD_20_24, SD_25_29, SD_30_34,
                         SD_35_39, SD_40_44, SD_45_49,
                         SD_50_54, SD_55_59, SD_60_64,
                         SD_65_69, SD_70_74, SD_75_79,
                         SD_80_84, SD_85_89, SD_90_94,
                         SD_95_onwards, 
                         #SD_10_14_lb, SD_15_19_lb,
                         #SD_20_24_lb, SD_25_29_lb, SD_30_34_lb,
                         #SD_35_39_lb, SD_40_44_lb, SD_45_49_lb,
                         #SD_50_54_lb, SD_55_59_lb, SD_60_64_lb,
                         #SD_65_69_lb, SD_70_74_lb, SD_75_79_lb,
                         #SD_80_84_lb, SD_85_89_lb, SD_90_94_lb,
                         #SD_95_onwards_lb,
                         #SD_10_14_ub, SD_15_19_ub,
                         #SD_20_24_ub, SD_25_29_ub, SD_30_34_ub,
                         #SD_35_39_ub, SD_40_44_ub, SD_45_49_ub,
                         #SD_50_54_ub, SD_55_59_ub, SD_60_64_ub,
                         #SD_65_69_ub, SD_70_74_ub, SD_75_79_ub,
                         #SD_80_84_ub, SD_85_89_ub, SD_90_94_ub,
                         #SD_95_onwards_ub,
                         NGDP, r, k_10_14, k_15_19,
                         k_20_24, k_25_29, k_30_34,
                         k_35_39, k_40_44, k_45_49,
                         k_50_54, k_55_59, k_60_64,
                         k_65_69, k_70_74, k_75_79,
                         k_80_84, k_85_89, k_90_94,
                         k_95_onwards){
  tmvyll = 0
  #tmvyll_lb = 0
  #tmvyll_ub = 0
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
  #mvyll_10_14_lb = calc_mvyll(r, k = k_10_14, SD = SD_10_14_lb, NGDPC = NGDP)
  #mvyll_15_19_lb = calc_mvyll(r, k = k_15_19, SD = SD_15_19_lb, NGDPC = NGDP)
  #mvyll_20_24_lb = calc_mvyll(r, k = k_20_24, SD = SD_20_24_lb, NGDPC = NGDP)
  #mvyll_25_29_lb = calc_mvyll(r, k = k_25_29, SD = SD_25_29_lb, NGDPC = NGDP)
  #mvyll_30_34_lb = calc_mvyll(r, k = k_30_34, SD = SD_30_34_lb, NGDPC = NGDP)
  #mvyll_35_39_lb = calc_mvyll(r, k = k_35_39, SD = SD_35_39_lb, NGDPC = NGDP)
  #mvyll_40_44_lb = calc_mvyll(r, k = k_40_44, SD = SD_40_44_lb, NGDPC = NGDP)
  #mvyll_45_49_lb = calc_mvyll(r, k = k_45_49, SD = SD_45_49_lb, NGDPC = NGDP)
  #mvyll_50_54_lb = calc_mvyll(r, k = k_50_54, SD = SD_50_54_lb, NGDPC = NGDP)
  #mvyll_55_59_lb = calc_mvyll(r, k = k_55_59, SD = SD_55_59_lb, NGDPC = NGDP)
  #mvyll_60_64_lb = calc_mvyll(r, k = k_60_64, SD = SD_60_64_lb, NGDPC = NGDP)
  #mvyll_65_69_lb = calc_mvyll(r, k = k_65_69, SD = SD_65_69_lb, NGDPC = NGDP)
  #mvyll_70_74_lb = calc_mvyll(r, k = k_70_74, SD = SD_70_74_lb, NGDPC = NGDP)
  #mvyll_75_79_lb = calc_mvyll(r, k = k_75_79, SD = SD_75_79_lb, NGDPC = NGDP)
  #mvyll_80_84_lb = calc_mvyll(r, k = k_80_84, SD = SD_80_84_lb, NGDPC = NGDP)
  #mvyll_85_89_lb = calc_mvyll(r, k = k_85_89, SD = SD_85_89_lb, NGDPC = NGDP)
  #mvyll_90_94_lb = calc_mvyll(r, k= k_90_94, SD = SD_90_94_lb, NGDPC = NGDP)
  #mvyll_95_onwards_lb = calc_mvyll(r, k = k_95_onwards, SD = SD_95_onwards_lb, NGDPC = NGDP)
  
  #Upper bound
  #mvyll_10_14_ub = calc_mvyll(r, k = k_10_14, SD = SD_10_14_ub, NGDPC = NGDP)
  #mvyll_15_19_ub = calc_mvyll(r, k = k_15_19, SD = SD_15_19_ub, NGDPC = NGDP)
  #mvyll_20_24_ub = calc_mvyll(r, k = k_20_24, SD = SD_20_24_ub, NGDPC = NGDP)
  #mvyll_25_29_ub = calc_mvyll(r, k = k_25_29, SD = SD_25_29_ub, NGDPC = NGDP)
  #mvyll_30_34_ub = calc_mvyll(r, k = k_30_34, SD = SD_30_34_ub, NGDPC = NGDP)
  #mvyll_35_39_ub = calc_mvyll(r, k = k_35_39, SD = SD_35_39_ub, NGDPC = NGDP)
  #mvyll_40_44_ub = calc_mvyll(r, k = k_40_44, SD = SD_40_44_ub, NGDPC = NGDP)
  #mvyll_45_49_ub = calc_mvyll(r, k = k_45_49, SD = SD_45_49_ub, NGDPC = NGDP)
  #mvyll_50_54_ub = calc_mvyll(r, k = k_50_54, SD = SD_50_54_ub, NGDPC = NGDP)
  #mvyll_55_59_ub = calc_mvyll(r, k = k_55_59, SD = SD_55_59_ub, NGDPC = NGDP)
  #mvyll_60_64_ub = calc_mvyll(r, k = k_60_64, SD = SD_60_64_ub, NGDPC = NGDP)
  #mvyll_65_69_ub = calc_mvyll(r, k = k_65_69, SD = SD_65_69_ub, NGDPC = NGDP)
  #mvyll_70_74_ub = calc_mvyll(r, k = k_70_74, SD = SD_70_74_ub, NGDPC = NGDP)
  #mvyll_75_79_ub = calc_mvyll(r, k = k_75_79, SD = SD_75_79_ub, NGDPC = NGDP)
  #mvyll_80_84_ub = calc_mvyll(r, k = k_80_84, SD = SD_80_84_ub, NGDPC = NGDP)
  #mvyll_85_89_ub = calc_mvyll(r, k = k_85_89, SD = SD_85_89_ub, NGDPC = NGDP)
  #mvyll_90_94_ub = calc_mvyll(r, k= k_90_94, SD = SD_90_94_ub, NGDPC = NGDP)
  #mvyll_95_onwards_ub = calc_mvyll(r, k = k_95_onwards, SD = SD_95_onwards_ub, NGDPC = NGDP)
  
  tmvyll = sum(mvyll_10_14,mvyll_15_19,mvyll_20_24,mvyll_25_29,
               mvyll_30_34,mvyll_35_39,mvyll_40_44,mvyll_45_49,
               mvyll_50_54,mvyll_55_59,mvyll_60_64,mvyll_65_69,
               mvyll_70_74,mvyll_75_79,mvyll_80_84,mvyll_85_89,
               mvyll_90_94,mvyll_95_onwards)
  #tmvyll_lb = sum(mvyll_10_14_lb,mvyll_15_19_lb,mvyll_20_24_lb,mvyll_25_29_lb,
  #               mvyll_30_34_lb,mvyll_35_39_lb,mvyll_40_44_lb,mvyll_45_49_lb,
  #               mvyll_50_54_lb,mvyll_55_59_lb,mvyll_60_64_lb,mvyll_65_69_lb,
  #               mvyll_70_74_lb,mvyll_75_79_lb,mvyll_80_84_lb,mvyll_85_89_lb,
  #               mvyll_90_94_lb,mvyll_95_onwards_lb)
  #tmvyll_ub = sum(mvyll_10_14_ub,mvyll_15_19_ub,mvyll_20_24_ub,mvyll_25_29_ub,
  #               mvyll_30_34_ub,mvyll_35_39_ub,mvyll_40_44_ub,mvyll_45_49_ub,
  #               mvyll_50_54_ub,mvyll_55_59_ub,mvyll_60_64_ub,mvyll_65_69_ub,
  #               mvyll_70_74_ub,mvyll_75_79_ub,mvyll_80_84_ub,mvyll_85_89_ub,
  #               mvyll_90_94_ub,mvyll_95_onwards_ub)
  temp_tmvyll_df = data.frame(tmvyll, mvyll_10_14,mvyll_15_19,mvyll_20_24,mvyll_25_29,
                              mvyll_30_34,mvyll_35_39,mvyll_40_44,mvyll_45_49,
                              mvyll_50_54,mvyll_55_59,mvyll_60_64,mvyll_65_69,
                              mvyll_70_74,mvyll_75_79,mvyll_80_84,mvyll_85_89,
                              mvyll_90_94,mvyll_95_onwards#,
                              #tmvyll_lb, mvyll_10_14_lb,mvyll_15_19_lb,mvyll_20_24_lb,mvyll_25_29_lb,
                              #mvyll_30_34_lb,mvyll_35_39_lb,mvyll_40_44_lb,mvyll_45_49_lb,
                              #mvyll_50_54_lb,mvyll_55_59_lb,mvyll_60_64_lb,mvyll_65_69_lb,
                              #mvyll_70_74_lb,mvyll_75_79_lb,mvyll_80_84_lb,mvyll_85_89_lb,
                              #mvyll_90_94_lb,mvyll_95_onwards_lb,
                              #tmvyll_ub, mvyll_10_14_ub,mvyll_15_19_ub,mvyll_20_24_ub,mvyll_25_29_ub,
                              #mvyll_30_34_ub,mvyll_35_39_ub,mvyll_40_44_ub,mvyll_45_49_ub,
                              #mvyll_50_54_ub,mvyll_55_59_ub,mvyll_60_64_ub,mvyll_65_69_ub,
                              #mvyll_70_74_ub,mvyll_75_79_ub,mvyll_80_84_ub,mvyll_85_89_ub,
                              #mvyll_90_94_ub,mvyll_95_onwards_ub
  )
  return(temp_tmvyll_df)
}


country_list <- c("Algeria","Angola","Benin","Botswana","Burkina Faso","Burundi",                         
                  "Cameroon","Cape Verde", "Central African Republic","Chad",                            
                  "Comoros","Congo","Cote d'Ivoire","Democratic Republic of the Congo",
                  "Equatorial Guinea","Eritrea","Ethiopia","Gabon","The Gambia",                           
                  "Ghana","Guinea","Guinea-Bissau",                   
                  "Kenya","Lesotho","Liberia","Madagascar",                      
                  "Malawi","Mali", "Mauritania","Mauritius",                       
                  "Mozambique","Namibia","Niger","Nigeria",                         
                  "South Sudan","Rwanda","Sao Tome and Principe",
                  "Senegal","Seychelles","Sierra Leone",                    
                  "South Africa","Tanzania","Togo",                            
                  "Uganda","Zambia","Zimbabwe","Djibouti",
                  "Egypt","Libya","Morocco","Somalia","Sudan","Tunisia")
  SD_data$Country


########################
# r value is 3 percent #
########################


##############Round up and positive

tmvyll_df_3_round_up_pos <- data.frame(country_name = character(), tmvyll = numeric(), 
                          mvyll_10_14 = numeric(),mvyll_15_19 = numeric(),mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                          mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                          mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),mvyll_65_69 = numeric(),
                          mvyll_70_74 = numeric(),mvyll_75_79 = numeric(),mvyll_80_84 = numeric(),mvyll_85_89 = numeric(),
                          mvyll_90_94 = numeric(),mvyll_95_onwards = numeric())

#Both sexes
for( s in country_list){
  tmvyll_df_bs_temp <- data.frame(country_name = character(), tmvyll = numeric(), 
                                  mvyll_10_14 = numeric(),mvyll_15_19 = numeric(),mvyll_20_24 = numeric(),mvyll_25_29 = numeric(),
                                  mvyll_30_34 = numeric(),mvyll_35_39 = numeric(),mvyll_40_44 = numeric(),mvyll_45_49 = numeric(),
                                  mvyll_50_54 = numeric(),mvyll_55_59 = numeric(),mvyll_60_64 = numeric(),mvyll_65_69 = numeric(),
                                  mvyll_70_74 = numeric(),mvyll_75_79 = numeric(),mvyll_80_84 = numeric(),mvyll_85_89 = numeric(),
                                  mvyll_90_94 = numeric(),mvyll_95_onwards = numeric())
  
  r_val = 0.03
  
  #K 
  k_10_14_state = LE_k_data$k_10_to_14[which(LE_k_data$`Member State` == s)]
  k_15_19_state = LE_k_data$k_15_to_19[which(LE_k_data$`Member State` == s)]
  k_20_24_state = LE_k_data$k_20_to_24[which(LE_k_data$`Member State` == s)]
  k_25_29_state = LE_k_data$k_25_to_29[which(LE_k_data$`Member State` == s)]
  k_30_34_state = LE_k_data$k_30_to_34[which(LE_k_data$`Member State` == s)]
  k_35_39_state = LE_k_data$k_35_to_39[which(LE_k_data$`Member State` == s)]
  k_40_44_state = LE_k_data$k_40_to_44[which(LE_k_data$`Member State` == s)]
  k_45_49_state = LE_k_data$k_45_to_49[which(LE_k_data$`Member State` == s)]
  k_50_54_state = LE_k_data$k_50_to_54[which(LE_k_data$`Member State` == s)]
  k_55_59_state = LE_k_data$k_55_to_59[which(LE_k_data$`Member State` == s)]
  k_60_64_state = LE_k_data$k_60_to_64[which(LE_k_data$`Member State` == s)]
  k_65_69_state = LE_k_data$k_65_to_69[which(LE_k_data$`Member State` == s)]
  k_70_74_state = LE_k_data$k_70_to_74[which(LE_k_data$`Member State` == s)]
  k_75_79_state = LE_k_data$k_75_to_79[which(LE_k_data$`Member State` == s)]
  k_80_84_state = LE_k_data$k_80_to_84[which(LE_k_data$`Member State` == s)]
  k_85_89_state = LE_k_data$k_85_to_89[which(LE_k_data$`Member State` == s)]
  k_90_94_state = LE_k_data$k_90_to_94[which(LE_k_data$`Member State` == s)]
  k_95_onwards_state = LE_k_data$k_95onwards[which(LE_k_data$`Member State` == s)]
  
  NGDP_val_state = GDP_data$`NGDP = GDP - CHE`[which(GDP_data$Country == s)]
  
  SD_10_14_state = SD_data$`10-14`[which(SD_data$Country == s)] 
  SD_15_19_state = SD_data$`15-19`[which(SD_data$Country == s)]
  SD_20_24_state = SD_data$`20-24`[which(SD_data$Country == s)]
  SD_25_29_state = SD_data$`25-29`[which(SD_data$Country == s)]
  SD_30_34_state = SD_data$`30-34`[which(SD_data$Country == s)]
  SD_35_39_state = SD_data$`35-39`[which(SD_data$Country == s)]
  SD_40_44_state = SD_data$`40-44`[which(SD_data$Country == s)]
  SD_45_49_state = SD_data$`45-49`[which(SD_data$Country == s)]
  SD_50_54_state = SD_data$`50-54`[which(SD_data$Country == s)]
  SD_55_59_state = SD_data$`55-59`[which(SD_data$Country == s)]
  SD_60_64_state = SD_data$`60-64`[which(SD_data$Country == s)]
  SD_65_69_state = SD_data$`65-69`[which(SD_data$Country == s)]
  SD_70_74_state = SD_data$`70-74`[which(SD_data$Country == s)]
  SD_75_79_state = SD_data$`75-79`[which(SD_data$Country == s)]
  SD_80_84_state = SD_data$`80-84`[which(SD_data$Country == s)]
  SD_85_89_state = SD_data$`85-89`[which(SD_data$Country == s)]
  SD_90_94_state = SD_data$`90-94`[which(SD_data$Country == s)]
  SD_95_onwards_state = SD_data$`95+`[which(SD_data$Country == s)]
  
  
  # send values for each sd for that state name
  tmvyll_val_bs_temp = calc_tmvyll(SD_10_14 = SD_10_14_state,
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
                                   NGDP = NGDP_val_state, 
                                   r = r_val, 
                                   k_10_14 = k_10_14_state,
                                   k_15_19 = k_15_19_state,
                                   k_20_24 = k_20_24_state, 
                                   k_25_29 = k_25_29_state, 
                                   k_30_34 = k_30_34_state,
                                   k_35_39 = k_35_39_state, 
                                   k_40_44 = k_40_44_state, 
                                   k_45_49 = k_45_49_state,
                                   k_50_54 = k_50_54_state, 
                                   k_55_59 = k_55_59_state, 
                                   k_60_64 = k_60_64_state,
                                   k_65_69 = k_65_69_state, 
                                   k_70_74 = k_70_74_state, 
                                   k_75_79 = k_75_79_state,
                                   k_80_84 = k_80_84_state, 
                                   k_85_89 = k_85_89_state, 
                                   k_90_94 = k_90_94_state,
                                   k_95_onwards = k_95_onwards_state)
  # save values in data frame
  print(s)
  #print(head(tmvyll_val_bs_temp))
  
  tmvyll_df_bs_temp = data.frame(country_name = s,
                                 tmvyll = tmvyll_val_bs_temp$tmvyll,
                                 mvyll_10_14 = tmvyll_val_bs_temp$mvyll_10_14,
                                 mvyll_15_19 = tmvyll_val_bs_temp$mvyll_15_19,
                                 mvyll_20_24 = tmvyll_val_bs_temp$mvyll_20_24,
                                 mvyll_25_29 = tmvyll_val_bs_temp$mvyll_25_29,
                                 mvyll_30_34 = tmvyll_val_bs_temp$mvyll_30_34,
                                 mvyll_35_39 = tmvyll_val_bs_temp$mvyll_35_39,
                                 mvyll_40_44 = tmvyll_val_bs_temp$mvyll_40_44,
                                 mvyll_45_49 = tmvyll_val_bs_temp$mvyll_45_49,
                                 mvyll_50_54 = tmvyll_val_bs_temp$mvyll_50_54,
                                 mvyll_55_59 = tmvyll_val_bs_temp$mvyll_55_59,
                                 mvyll_60_64 = tmvyll_val_bs_temp$mvyll_60_64,
                                 mvyll_65_69 = tmvyll_val_bs_temp$mvyll_65_69,
                                 mvyll_70_74 = tmvyll_val_bs_temp$mvyll_70_74,
                                 mvyll_75_79 = tmvyll_val_bs_temp$mvyll_75_79,
                                 mvyll_80_84 = tmvyll_val_bs_temp$mvyll_80_84,
                                 mvyll_85_89 = tmvyll_val_bs_temp$mvyll_85_89,
                                 mvyll_90_94 = tmvyll_val_bs_temp$mvyll_90_94,
                                 mvyll_95_onwards = tmvyll_val_bs_temp$mvyll_95_onwards)
  
  tmvyll_df_3_round_up_pos <- rbind(tmvyll_df_3_round_up_pos, tmvyll_df_bs_temp)
  
}

tmvyll_df_3_usd_round_up_pos <- tmvyll_df_3_round_up_pos



############################################################
#######Maternal deaths Africa - Kirigia ####################
############################################################
## For Algeria from Table 2 of Kirigia Maternal Deaths paper##

# Number of MD = Number of Deaths in a year * Proportion of maternal deaths
MD_Alg_less15 = 690 * 0.00905968432540048
MD_Alg_15to49 = 690 * 0.9909403156746
r_Alg = 0.03
NHGDP_Alg = 7611.522
# k = Life expectancy - Avg. age of death for that age category
k_less15 = 74-13
k_15to49_42 = 74-32 #42, if upper age limit category is taken as 49. Read technical protocol, validation section for details
k_15to49_44 = 44 #44, if upper age limit category is taken as 45. Read technical protocol, validation section for details

#Using the same calc_mvyll function for calculation of economic burden of 
# maternal deaths in Africa from 15 to 49 years of age.
# The matching values validate that our code is working properly.

mvyll_less15 = calc_mvyll(r = r_Alg, NGDPC = NHGDP_Alg, 
                          k = k_less15, SD = MD_Alg_less15)
#mvyll_less15 = 1324672.13815621
mvyll_15to49_44 = calc_mvyll(r = r_Alg, NGDPC = NHGDP_Alg, 
                          k = k_15to49_44, SD = MD_Alg_15to49)
#mvyll_15to49_42 = 123350623.085161
#mvyll_15to49_44 = 126228195.398993 
mvyll_15to49_42 = calc_mvyll(r = r_Alg, NGDPC = NHGDP_Alg, 
                             k = k_15to49_42, SD = MD_Alg_15to49)
#mvyll total = mvyll_less15 + mvyll_15to49_44
#mvyll_total = 127552867
#mvyll total = mvyll_less15 + mvyll_15to49_42
#mvyll_total = 124675295
