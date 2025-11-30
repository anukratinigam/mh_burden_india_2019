#!/bin/R
# Comparison_Analysis.R
# By: Anukrati Nigam


#Comparison analysis
# This script compares the results between old and new calculations and stores them in a csv sheet.

#Function to calculate the percent difference between the calculations.
percent_comparison <- function(new, old) {
    percent_change = ((new[3:length(colnames(new))]- old[3:length(colnames(old))])/old[3:length(colnames(old))])*100
    temp_df = data.frame(new$state_name, new$gender, percent_change )
    return(temp_df)
  }

#TMVYLL 3 USD
tmvyll_3_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_3_State_USD"))
tmvyll_3_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_3_State_USD"))
ca_tmvyll_3_usd <- percent_comparison(tmvyll_3_usd_new, tmvyll_3_usd_old )
write.csv(ca_tmvyll_3_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_3_usd.csv")

#TMVYLL 5 USD
tmvyll_5_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_5_State_USD"))
tmvyll_5_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_5_State_USD"))
ca_tmvyll_5_usd <- percent_comparison(tmvyll_5_usd_new, tmvyll_5_usd_old )
write.csv(ca_tmvyll_5_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_5_usd.csv")

#TMVYLL 10 USD
tmvyll_10_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_10_State_USD"))
tmvyll_10_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_10_State_USD"))
ca_tmvyll_10_usd <- percent_comparison(tmvyll_10_usd_new, tmvyll_10_usd_old )
write.csv(ca_tmvyll_10_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_10_usd.csv")

#TMVYLL 3 WG USD
tmvyll_WG3_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_WG_3_State_USD"))
tmvyll_WG3_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_WG_3_State_USD"))
ca_tmvyll_WG3_usd <- percent_comparison(tmvyll_WG3_usd_new, tmvyll_WG3_usd_old )
write.csv(ca_tmvyll_WG3_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_WG3_usd.csv")

#TMVYLL 5 WG USD
tmvyll_WG5_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_WG_5_State_USD"))
tmvyll_WG5_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_WG_5_State_USD"))
ca_tmvyll_WG5_usd <- percent_comparison(tmvyll_WG5_usd_new, tmvyll_WG5_usd_old )
write.csv(ca_tmvyll_WG5_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_WG5_usd.csv")

#TMVYLL 10 WG USD
tmvyll_WG10_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_WG_10_State_USD"))
tmvyll_WG10_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_WG_10_State_USD"))
ca_tmvyll_WG10_usd <- percent_comparison(tmvyll_WG10_usd_new, tmvyll_WG10_usd_old )
write.csv(ca_tmvyll_WG10_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_WG10_usd.csv")

#TMVYLL 3 KLE IN USD
tmvyll_KLE_IN_3_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_KLE_IN_3_State_USD"))
tmvyll_KLE_IN_3_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_KLE_IN_3_State_USD"))
ca_tmvyll_KLE_IN_3_usd <- percent_comparison(tmvyll_KLE_IN_3_usd_new, tmvyll_KLE_IN_3_usd_old )
write.csv(ca_tmvyll_KLE_IN_3_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_KLE_IN_3_usd.csv")

#TMVYLL 5 KLE IN USD
tmvyll_KLE_IN_5_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_KLE_IN_5_State_USD"))
tmvyll_KLE_IN_5_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_KLE_IN_5_State_USD"))
ca_tmvyll_KLE_IN_5_usd <- percent_comparison(tmvyll_KLE_IN_5_usd_new, tmvyll_KLE_IN_5_usd_old )
write.csv(ca_tmvyll_KLE_IN_5_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_KLE_IN_5_usd.csv")

#TMVYLL 10 KLE IN USD
tmvyll_KLE_IN_10_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_KLE_IN_10_State_USD"))
tmvyll_KLE_IN_10_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_KLE_IN_10_State_USD"))
ca_tmvyll_KLE_IN_10_usd <- percent_comparison(tmvyll_KLE_IN_10_usd_new, tmvyll_KLE_IN_10_usd_old )
write.csv(ca_tmvyll_KLE_IN_10_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_KLE_IN_10_usd.csv")

#TMVYLL 3 KLE IN WG USD
tmvyll_KLE_IN_WG3_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_KLE_IN_WG_3_State_USD"))
tmvyll_KLE_IN_WG3_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_KLE_IN_WG_3_State_USD"))
ca_tmvyll_KLE_IN_WG3_usd <- percent_comparison(tmvyll_KLE_IN_WG3_usd_new, tmvyll_KLE_IN_WG3_usd_old )
write.csv(ca_tmvyll_KLE_IN_WG3_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_KLE_IN_WG3_usd.csv")

#TMVYLL 5 KLE IN WG USD
tmvyll_KLE_IN_WG5_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_KLE_IN_WG_5_State_USD"))
tmvyll_KLE_IN_WG5_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_KLE_IN_WG_5_State_USD"))
ca_tmvyll_KLE_IN_WG5_usd <- percent_comparison(tmvyll_KLE_IN_WG5_usd_new, tmvyll_KLE_IN_WG5_usd_old )
write.csv(ca_tmvyll_KLE_IN_WG5_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_KLE_IN_WG5_usd.csv")

#TMVYLL 10 KLE IN WG USD
tmvyll_KLE_IN_WG10_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_KLE_IN_WG_10_State_USD"))
tmvyll_KLE_IN_WG10_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_KLE_IN_WG_10_State_USD"))
ca_tmvyll_KLE_IN_WG10_usd <- percent_comparison(tmvyll_KLE_IN_WG10_usd_new, tmvyll_KLE_IN_WG10_usd_old )
write.csv(ca_tmvyll_KLE_IN_WG10_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_KLE_IN_WG10_usd.csv")

#TMVYLL 3 KLE USD
tmvyll_KLE_3_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_KLE_3_State_USD"))
tmvyll_KLE_3_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_KLE_3_State_USD"))
ca_tmvyll_KLE_3_usd <- percent_comparison(tmvyll_KLE_3_usd_new, tmvyll_KLE_3_usd_old )
write.csv(ca_tmvyll_KLE_3_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_KLE_3_usd.csv")

#TMVYLL 5 KLE USD
tmvyll_KLE_5_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_KLE_5_State_USD"))
tmvyll_KLE_5_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_KLE_5_State_USD"))
ca_tmvyll_KLE_5_usd <- percent_comparison(tmvyll_KLE_5_usd_new, tmvyll_KLE_5_usd_old )
write.csv(ca_tmvyll_KLE_5_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_KLE_5_usd.csv")

#TMVYLL 10 KLE USD
tmvyll_KLE_10_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_KLE_10_State_USD"))
tmvyll_KLE_10_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_KLE_10_State_USD"))
ca_tmvyll_KLE_10_usd <- percent_comparison(tmvyll_KLE_10_usd_new, tmvyll_KLE_10_usd_old )
write.csv(ca_tmvyll_KLE_10_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_KLE_10_usd.csv")

#TMVYLL 3 KLE WG USD
tmvyll_KLE_WG3_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_KLE_WG_3_State_USD"))
tmvyll_KLE_WG3_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_KLE_WG_3_State_USD"))
ca_tmvyll_KLE_WG3_usd <- percent_comparison(tmvyll_KLE_WG3_usd_new, tmvyll_KLE_WG3_usd_old )
write.csv(ca_tmvyll_KLE_WG3_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_KLE_WG3_usd.csv")

#TMVYLL 5 KLE WG USD
tmvyll_KLE_WG5_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_KLE_WG_5_State_USD"))
tmvyll_KLE_WG5_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_KLE_WG_5_State_USD"))
ca_tmvyll_KLE_WG5_usd <- percent_comparison(tmvyll_KLE_WG5_usd_new, tmvyll_KLE_IN_WG5_usd_old )
write.csv(ca_tmvyll_KLE_WG5_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_KLE_WG5_usd.csv")

#TMVYLL 10 KLE WG USD
tmvyll_KLE_WG10_usd_old <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Figures/03_Aug_24_AnuN_Eco_Burden_Dataset.xlsx", sheet = "MVYLL_KLE_WG_10_State_USD"))
tmvyll_KLE_WG10_usd_new <- drop_na(read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/14_NOV_25_AnuN_GBD2023_deaths_2019.xlsx", sheet = "MVYLL_KLE_WG_10_State_USD"))
ca_tmvyll_KLE_WG10_usd <- percent_comparison(tmvyll_KLE_WG10_usd_new, tmvyll_KLE_IN_WG10_usd_old )
write.csv(ca_tmvyll_KLE_WG10_usd, file = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2019/Datasets/Comparison_Analysis/ca_tmvyll_KLE_WG10_usd.csv")

