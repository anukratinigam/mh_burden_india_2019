#!/bin/R
# DriverScriptMH2019.R
# By: Anukrati Nigam

################################################
## Driver Script for visualization of figures ##
################################################

#Read in the Function file.
#source(~/FunctionScriptMH2019.R)

#Use get_data_per_state function if the data has individual male and female 
# values per state.

#TMVYLL_3	TMVYLL for all age groups at r of 0.03
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_3_State_USD",
                          sheet_name_2 = "TMVYLL_3_SS_INR",
                          sheet_name_3 = "TMVYLL_3_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_r3_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_r3_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_r3_C.png")

#TMVYLL_5	TMVYLL for all age groups at r of 0.05
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_5_State_USD",
                          sheet_name_2 = "TMVYLL_5_SS_INR",
                          sheet_name_3 = "TMVYLL_5_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_r5_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_r5_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_r5_C.png")

#TMVYLL_10	TMVYLL for all age groups at r of 0.10
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_10_State_USD",
                          sheet_name_2 = "TMVYLL_10_SS_INR",
                          sheet_name_3 = "TMVYLL_10_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_r10_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_r10_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_r10_C.png")

#TMVYLL_WG_3	TMVYLL for working age groups from 20-64 at r of 0.03 #Correct annotation
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_WG_3_State_USD",
                          sheet_name_2 = "TMVYLL_WG_3_SS_INR",
                          sheet_name_3 = "TMVYLL_WG_3_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_WG_r3_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_WG_r3_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_WG_r3_C.png")

#TMVYLL_WG_5	TMVYLL for working age groups from 20-64 at r of 0.05
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_WG_5_State_USD",
                          sheet_name_2 = "TMVYLL_WG_5_SS_INR",
                          sheet_name_3 = "TMVYLL_WG_5_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_WG_r5_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_WG_r5_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_WG_r5_C.png")

#TMVYLL_WG_10	TMVYLL for working age groups from 20-64 at r of 0.10
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_WG_10_State_USD",
                          sheet_name_2 = "TMVYLL_WG_10_SS_INR",
                          sheet_name_3 = "TMVYLL_WG_10_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_WG_r10_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_WG_r10_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_India_WG_r10_C.png")

#TMVYLL_KLE_3	TMVYLL for all age groups in comparison to highest life expectancy at r of 0.03
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_3_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_3_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_3_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_r3_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_r3_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_r3_C.png")

#TMVYLL_KLE_5	TMVYLL for all age groups in comparison to highest life expectancy at r of 0.05
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_5_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_5_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_5_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_r5_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_r5_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_r5_C.png")

#TMVYLL_KLE_10	TMVYLL for all age groups in comparison to highest life expectancy at r of 0.10
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_10_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_10_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_10_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_r10_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_r10_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_r10_C.png")

#TMVYLL_KLE_WG_3	TMVYLL for working age groups from 20-64 in comparison to highest life expectancy at r of 0.03
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_WG_3_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_WG_3_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_WG_3_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_WG_r3_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_WG_r3_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_WG_r3_C.png")

#TMVYLL_KLE_WG_5	TMVYLL for working age groups from 20-64 in comparison to highest life expectancy at r of 0.05
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_WG_5_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_WG_5_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_WG_5_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_WG_r5_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_WG_r5_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_WG_r5_C.png")

#TMVYLL_KLE_WG_10	TMVYLL for working age groups from 20-64 in comparison to highest life expectancy at r of 0.10
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_WG_10_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_WG_10_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_WG_10_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_WG_r10_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_WG_r10_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_WG_r10_C.png")

#TMVYLL_KLE_IN_3	TMVYLL for all age groups in comparison to highest life expectancy in India at r of 0.03
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_IN_3_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_IN_3_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_IN_3_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_r3_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_r3_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_r3_C.png")

#TMVYLL_KLE_IN_5	TMVYLL for all age groups in comparison to highest life expectancy in India at r of 0.05
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_IN_5_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_IN_5_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_IN_5_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_r5_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_r5_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_r5_C.png")

#TMVYLL_KLE_IN_10	TMVYLL for all age groups in comparison to highest life expectancy in India at r of 0.10
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_IN_10_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_IN_10_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_IN_10_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_r10_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_r10_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_r10_C.png")

#TMVYLL_KLE_IN_WG_3	TMVYLL for working age groups from 20-64 in comparison to highest life expectancy in India at r of 0.03
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_IN_WG_3_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_IN_WG_3_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_IN_WG_3_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r3_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r3_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r3_C.png")

#TMVYLL_KLE_IN_WG_5	TMVYLL for working age groups from 20-64 in comparison to highest life expectancy in India at r of 0.05
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_IN_WG_5_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_IN_WG_5_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_IN_WG_5_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r5_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r5_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r5_C.png")

#TMVYLL_KLE_IN_WG_10	TMVYLL for working age groups from 20-64 in comparison to highest life expectancy in India at r of 0.10
plot_usd_bar_plot_figures(path_name = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                          sheet_name_1 = "MVYLL_KLE_IN_WG_10_State_USD",
                          sheet_name_2 = "TMVYLL_KLE_IN_WG_10_SS_INR",
                          sheet_name_3 = "TMVYLL_KLE_IN_WG_10_SS_INR",
                          col_cal = "tmvyll",
                          fig_name_1 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r10_A.png",
                          fig_name_2 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r10_B.png",
                          fig_name_3 = "~/ASAR/Mental_health_econ_burden_india/Figures/Supplemental_Figures/MVYLL_KLE_IN_WG_r10_C.png")


#TMAP choropleth maps 
tmvyll_usd_map_data <- readxl::read_xlsx(path = "~/ASAR/Mental_health_econ_burden_india/Figures/06_Jan_24_AnuN_Eco_Burden_Dataset.xlsx", 
                         sheet = "MAP_TMVYLL_USD")
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
tmap_save(t, '~/ASAR/Mental_health_econ_burden_india/Figures/TMVYLL_3_USD_map.png', dpi = 300, height = 8, width = 6)

#Choropleth map for TMVYLL at 3% in USD for 28 states and 3 union territories.
india_map_plot$TMVYLL_3_INR <- india_map_plot$TMVYLL_3_USD * 70.394
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
tmap_save(t, '~/ASAR/Mental_health_econ_burden_india/Figures/INR_2019_r3.png', dpi = 300, height = 8, width = 6)

