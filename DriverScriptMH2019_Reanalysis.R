#!/bin/R
# DriverScriptMH2019_Reanalysis.R
# By: Anukrati Nigam

################################################
## Driver Script for visualization of figures ##
################################################

#Read in the Function file.
#source(~/FunctionScriptMH2019_Reanalysis.R)

#Use get_data_per_state function if the data has individual male and female 
# values per state.

#TMVYLL_3	TMVYLL for all age groups at r of 0.03
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_3_State_USD",
                          sheet_name_2 = "TMVYLL_3_SS_INR",
                          sheet_name_3 = "TMVYLL_3_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_r3_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_r3_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_r3_C.png")

#TMVYLL_5	TMVYLL for all age groups at r of 0.05
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_5_State_USD",
                          sheet_name_2 = "TMVYLL_5_SS_INR",
                          sheet_name_3 = "TMVYLL_5_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_r5_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_r5_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_r5_C.png")

#TMVYLL_10	TMVYLL for all age groups at r of 0.10
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_10_State_USD",
                          sheet_name_2 = "TMVYLL_10_SS_INR",
                          sheet_name_3 = "TMVYLL_10_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_r10_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_r10_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_r10_C.png")

#TMVYLL_WG_3	TMVYLL for working age groups from 20-64 at r of 0.03 #Correct annotation
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_WG_3_State_USD",
                          sheet_name_2 = "TMVYLL_WG_3_SS_INR",
                          sheet_name_3 = "TMVYLL_WG_3_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_WG_r3_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_WG_r3_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_WG_r3_C.png")

#TMVYLL_WG_5	TMVYLL for working age groups from 20-64 at r of 0.05
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_WG_5_State_USD",
                          sheet_name_2 = "TMVYLL_WG_5_SS_INR",
                          sheet_name_3 = "TMVYLL_WG_5_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_WG_r5_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_WG_r5_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_WG_r5_C.png")

#TMVYLL_WG_10	TMVYLL for working age groups from 20-64 at r of 0.10
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_WG_10_State_USD",
                          sheet_name_2 = "TMVYLL_WG_10_SS_INR",
                          sheet_name_3 = "TMVYLL_WG_10_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_WG_r10_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_WG_r10_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_WG_r10_C.png")

#TMVYLL_KLE_3	TMVYLL for all age groups in comparison to highest life expectancy at r of 0.03
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_3_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_3_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_3_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_r3_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_r3_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_r3_C.png")

#TMVYLL_KLE_5	TMVYLL for all age groups in comparison to highest life expectancy at r of 0.05
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_5_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_5_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_5_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_r5_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_r5_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_r5_C.png")

#TMVYLL_KLE_10	TMVYLL for all age groups in comparison to highest life expectancy at r of 0.10
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_10_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_10_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_10_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_r10_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_r10_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_r10_C.png")

#TMVYLL_KLE_WG_3	TMVYLL for working age groups from 20-64 in comparison to highest life expectancy at r of 0.03
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_WG_3_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_WG_3_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_WG_3_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_WG_r3_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_WG_r3_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_WG_r3_C.png")

#TMVYLL_KLE_WG_5	TMVYLL for working age groups from 20-64 in comparison to highest life expectancy at r of 0.05
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_WG_5_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_WG_5_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_WG_5_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_WG_r5_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_WG_r5_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_WG_r5_C.png")

#TMVYLL_KLE_WG_10	TMVYLL for working age groups from 20-64 in comparison to highest life expectancy at r of 0.10
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_WG_10_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_WG_10_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_WG_10_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_WG_r10_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_WG_r10_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_WG_r10_C.png")

#TMVYLL_KLE_IN_3	TMVYLL for all age groups in comparison to highest life expectancy in India at r of 0.03
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_IN_3_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_IN_3_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_IN_3_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_r3_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_r3_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_r3_C.png")

#TMVYLL_KLE_IN_5	TMVYLL for all age groups in comparison to highest life expectancy in India at r of 0.05
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_IN_5_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_IN_5_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_IN_5_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_r5_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_r5_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_r5_C.png")

#TMVYLL_KLE_IN_10	TMVYLL for all age groups in comparison to highest life expectancy in India at r of 0.10
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_IN_10_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_IN_10_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_IN_10_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_r10_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_r10_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_r10_C.png")

#TMVYLL_KLE_IN_WG_3	TMVYLL for working age groups from 20-64 in comparison to highest life expectancy in India at r of 0.03
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_IN_WG_3_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_IN_WG_3_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_IN_WG_3_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r3_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r3_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r3_C.png")

#TMVYLL_KLE_IN_WG_5	TMVYLL for working age groups from 20-64 in comparison to highest life expectancy in India at r of 0.05
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_IN_WG_5_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_IN_WG_5_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_IN_WG_5_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r5_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r5_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r5_C.png")

#TMVYLL_KLE_IN_WG_10	TMVYLL for working age groups from 20-64 in comparison to highest life expectancy in India at r of 0.10
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_IN_WG_10_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_IN_WG_10_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_IN_WG_10_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r10_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r10_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r10_C.png")


#TMAP choropleth maps 
tmvyll_usd_map_data <- readxl::read_xlsx(path = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                         sheet = "Map_TMVYLL_USD")
india_shpfile$ST_NM[2] <- "ArunachalPradesh"
india_shpfile$ST_NM[12] <- "HimachalPradesh"
india_shpfile$ST_NM[13] <- "JammuAndKashmir"
india_shpfile$ST_NM[18] <- "MadhyaPradesh"
india_shpfile$ST_NM[24] <- "NCTofDelhi"
india_shpfile$ST_NM[29] <- "TamilNadu"
india_shpfile$ST_NM[32] <- "UttarPradesh"
india_shpfile$ST_NM[34] <- "WestBengal"
india_shpfile$ST_NM[36] <- "AndhraPradesh"


#Merge the india shape file with tmvyll data

india_map_plot <- left_join(india_shpfile, tmvyll_usd_map_data, by = "ST_NM")
#Choropleth map for TMVYLL at 3% in USD for 28 states and 3 union territories.
t <- tmap::tm_shape( india_map_plot ) + tmap::tm_fill( col="TMVYLL_3_USD",
                                                       lwd=0.1,
                                                       title = "TMVYLL at 3% (USD 2019)",
                                                       palette = c("plum1","purple4"),
                                                       colorNA = "gray") + 
  tmap_options(check.and.fix = T) +
  tm_legend(outside = F, text.size = .8)+
  tm_layout(legend.title.size = 1,
    legend.text.size = 0.8)+
  tm_borders(col="black",lwd = 1)
tmap_save(t, '~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/TMVYLL_3_USD_map.png', dpi = 300, height = 8, width = 6)

#Choropleth map for TMVYLL at 3% in USD for 28 states and 3 union territories.
#india_map_plot$TMVYLL_3_INR <- india_map_plot$TMVYLL_3_USD * 70.394
t <- tmap::tm_shape( india_map_plot ) + tmap::tm_fill( col="TMVYLL_3_INR",
                                                       lwd=0.1,
                                                       title = "TMVYLL at 3% (INR 2019)",
                                                       palette = c("plum1","purple4"),
                                                       colorNA = "gray") + 
  tmap_options(check.and.fix = T) +
  tm_legend(outside = F, text.size = .8)+
  tm_layout(
    legend.title.size = 1,
    legend.text.size = 0.8)+
  tm_borders(col="black",lwd = 1)
tmap_save(t, '~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/INR_2019_r3.png', dpi = 300, height = 8, width = 6)

## Pyramid plot between Deaths and YLLs.

pyramid_df <- read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                        sheet = "YLL_Rate_vs_Mortality_Rate", .name_repair = "minimal")

pyr_test <- pyramid_df[,c("age_name","YLL_Rate","Mortality_Rate")]

pyr_test <- na.omit(pyr_test)
colnames(pyr_test) <- c("age_name","Years of Lives Lost Rate","Mortality Rate")
pyr_test <- tidyr::pivot_longer(pyr_test, cols = 2:3, names_to = "Category", values_to = "Val")

colnames(pyr_test) <- c("age_name","Years of Lives Lost Rate","Mortality Rate")
pyr_test <- tidyr::pivot_longer(pyr_test, cols = 2:3, names_to = "Category", values_to = "Val")


ggplot(pyr_test, aes(age_name,Val))+
  geom_bar(position="dodge",stat="identity") + 
  coord_flip() +
  facet_wrap(~Category, scales = "free")+
  theme_light()+
  labs(x = "Age categories", y = "Value")+
  theme(axis.text.x = element_text(angle = 45, size = 16, hjust=1, vjust=1, color="black"),
        axis.text.y = element_text(size = 16, color="black"),
        axis.title.x = element_text(size = 18, color="black"),
        axis.title.y = element_text(size = 18, color="black"),
        strip.text = element_text(colour = 'black', size = 18),
        legend.text = element_text(colour = 'black',size = 18),
        legend.title = element_text(colour = 'black', size = 18),
        panel.background = element_blank(),
        panel.grid = element_blank(),
        legend.position="bottom")
ggsave(filename = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/DeathsvsYlls.png",
       dpi = 400, width = 25, 
       height = 20, units = "cm")

#TMVYLL_3	TMVYLL for all age groups at r of 0.03 for INR
plot_inr_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Datasets/25_FEB_25_MV_Suicide_econ_deaths.xlsx", 
                          sheet_name_1 = "TMVYLL_3_SS_INR",
                          sheet_name_2 = "TMVYLL_3_SS_INR",
                          sheet_name_3 = "TMVYLL_3_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_r3_A_INR.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_r3_B_INR.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis24022025/Figures/Supplemental_Figures/MVYLL_India_r3_C_INR.png")
