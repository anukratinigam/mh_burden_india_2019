#!/bin/R
# FunctionScriptMH2019_Reanalysis.R
# By: Anukrati Nigam

####################################################
### Function script for visualization of figures ###
####################################################

### Combine (Add) rows for both sexes for each state ###
get_data_per_state <- function(df){
  df %>% group_by(state_name) %>% 
    summarise(across(where(is.numeric),sum),
              gender = paste(gender,collapse = " & ")) %>%
    mutate(gender = ifelse(gender == "Male & Female","Total",gender))
  
}

### Function to plot the bar plots (total with age categories per region),
# bar plot with age categories and sex per region, and 
# range plot between two sexes per region under analysis. 
plot_usd_bar_plot_figures <- function(path_name, sheet_name_1, 
                                      sheet_name_2,
                                      sheet_name_3,
                                      col_cal,
                                      fig_name_1,
                                      fig_name_2,
                                      fig_name_3){
  
  #PLOT 1 - BAR PLOT (Total with age categories)
  df_plot_1 <- read_xlsx(path = path_name, sheet = sheet_name_1, .name_repair = "minimal")
  
  df_plot_1 <- get_data_per_state(df_plot_1)
  
  
  df_plot_1 <- df_plot_1 %>% tidyr::pivot_longer(cols = 3:20, names_to = "Category", values_to = "MVYLL")
  
  df_plot_1 <- dplyr::left_join(df_plot_1, tmvyll_label, by=c("Category"="name"))
  
  
  df_plot_1 %>% dplyr::filter(Category !="tmvyll", state_name != "TOP 3",
                                            state_name != "NA",
                              state_name !="PERCENTAGE",
                              state_name !="Total", label_val != "NA") %>% ggplot(aes(x = label_val,  y = MVYLL, fill = state_name))+
    geom_bar(stat='identity' ) +
    scale_fill_manual(values=as.vector(polychrome(32)))+
    scale_y_continuous(labels = scales::comma)+
    #facet_wrap(~gender)+
    theme_light()+
    labs(fill="State", x = "Age categories", y = "MVYLL (USD 2019)")+
    theme(axis.text.x = element_text(angle = 45, size = 16, hjust=1, vjust=1, color="black"),
          axis.text.y = element_text(size = 16, color="black"),
          axis.title.x = element_text(size = 18, color="black"),
          axis.title.y = element_text(size = 18, color="black"),
          strip.text = element_text(colour = 'black'),
          panel.background = element_blank(),
          panel.grid = element_blank(),
          legend.position="bottom")
  ggsave(fig_name_1,dpi = 300, width = 25, height = 20, units = "cm")
  
  #PLOT 2 - BAR PLOT (Total with age categories and gender)
  df_plot_2 <- read_xlsx(path = path_name, sheet = sheet_name_2, .name_repair = "minimal")
  df_plot_2 %<>% tidyr::pivot_longer(cols = 4:22, names_to = "Category", values_to = "MVYLL")
  
  df_plot_2 <- dplyr::left_join(df_plot_2, tmvyll_label, by=c("Category"="name"))
  df_plot_2$MVYLL_USD <- df_plot_2$MVYLL/70.394
  df_plot_2 %>% dplyr::filter(Category !="tmvyll", gender!="NA", label_val != "NA") %>% ggplot(aes(x = label_val, 
                                                                                     y = MVYLL_USD,
                                                                                fill = state_name))+
    geom_bar(position='stack', stat='identity') +
    scale_fill_manual(values=as.vector(polychrome(32)))+
    scale_y_continuous(labels = scales::comma)+
    facet_wrap(~gender,ncol=1)+
    theme_light()+
    labs(fill="State", #title= "MVYLL across different age categories at r of 3%",
         x = "Age categories", y = "MVYLL (USD 2019)")+
    theme(axis.text.x = element_text(angle = 45, size = 16, hjust=1, vjust=1, color="black"),
          axis.text.y = element_text(size = 16, color="black"),
          axis.title.x = element_text(size = 18, color="black"),
          axis.title.y = element_text(size = 18, color="black"),
          strip.text = element_text(colour = 'black', size = 16),
          panel.background = element_blank(),
          panel.grid = element_blank(),
          legend.position="bottom")
  ggsave(fig_name_2,dpi = 400, width = 25, height = 45, units = "cm")
  
  #PLOT 3 - Range plot
  df_plot_3 <- read_xlsx(path = path_name, sheet = sheet_name_3, .name_repair = "minimal")
  tmvyll_temp <- df_plot_3[,c("state_name","gender", col_cal)] 
  tmvyll_temp$tmvyll_USD <- round(tmvyll_temp[,3]/70.394,0)
  tmvyll_temp <- tmvyll_temp[,c("state_name","gender","tmvyll_USD")]
  tmvyll_temp <- tmvyll_temp %>% tidyr::pivot_wider(names_from = "gender", values_from = "tmvyll_USD") %>% dplyr::arrange(desc(Female)) 
  tmvyll_temp$state_name <- factor(tmvyll_temp$state_name)
  tmvyll_temp$state_name <- factor(tmvyll_temp$state_name, levels = tmvyll_temp$state_name)
  
  levels(tmvyll_temp$state_name) <- factor(tmvyll_temp$state_name)
  tmvyll_temp[,2] <- as.numeric(unlist(tmvyll_temp[,2])) 
  tmvyll_temp[,3] <- as.numeric(unlist(tmvyll_temp[,3]))
  
  tmvyll_temp %>% filter(state_name != "NA", state_name !="Total") %>%
    ggplot(aes(x = forcats::fct_inorder(state_name))) +
    geom_linerange(aes(ymin = Female, ymax = Male, 
                       x = state_name),
                   linewidth = 1.5, alpha = 0.25) +
    geom_point(aes(y = Female), colour = "#CB5416", size  = 3) +
    geom_point(aes(y = Male), colour = "#267266", size = 3) +
    labs(y = "TMVYLL (USD 2019)", x = "State") +
    scale_y_continuous(labels = scales::comma)+
    coord_flip()+
    theme_cowplot()+
    theme(axis.text.x = element_text(angle = 45, hjust =1, vjust = 1, size = 16),
          axis.text.y = element_text(size = 16),
          axis.title.x = element_text(size = 18),
          axis.title.y = element_text(size = 18),)
  ggsave(fig_name_3, dpi = 400, width = 17, height = 20, units = "cm")
  
#  dev.off()

}

