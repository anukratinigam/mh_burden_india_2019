#!/bin/R
# ETS_forecast_calculation.R
# By: Anukrati Nigam

fets_df <- readxl::read_xlsx("~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2023/Datasets/NHA_2013_14_to_2021_22_clean.xlsx", sheet = "NHA_multiyear_data")

fets_simplified_df <- data.frame(as.numeric(fets_df$FY_start_year), as.character(fets_df$state), as.numeric(fets_df$non_health_exp_per_capita_inr))
colnames(fets_simplified_df) <- c("FY_start_year", "state", "non_health_exp_per_capita_inr")
fets_simplified_df <- fets_simplified_df %>% arrange(FY_start_year, state)

library(forecast)
library(dplyr)
library(ggplot2)

# Ensure output directory exists for saving plots
output_dir <- "~/ASAR/Mental_health_econ_burden_india/Reanalysis/Reanalysis17102025/AnalysisYear2023/Figures/Forecast_Plots"
if (!dir.exists(output_dir)) {
  dir.create(output_dir)
}

# Main forecasting and plotting loop
fets_states <- unique(fets_simplified_df$state)
fets_shortlist <- c( "Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chhattisgarh",
                     "Delhi","Goa","Gujarat","Haryana","Himachal Pradesh","Jammu and Kashmir","Jharkhand",
                     "Karnataka","Kerala","Madhya Pradesh","Maharashtra","Manipur","Meghalaya",
                     "Mizoram", "Nagaland", "Odisha", "Puducherry", "Punjab", "Rajasthan", "Sikkim", 
                     "Tamil Nadu", "Tripura", "Uttar Pradesh", "Uttarakhand", "West Bengal", "Telangana")



for (s in fets_shortlist) {
  print(s)
  
  # Filter for the state and ordering it by financial year
  forecast_by_state_h2 <- fets_simplified_df[which(fets_simplified_df$state == s),]
  forecast_by_state_h2 <- forecast_by_state_h2[order(forecast_by_state_h2$FY_start_year),]
  # Convert expenditure to time series object
  ts_data <- ts(as.numeric(forecast_by_state_h2$non_health_exp_per_capita_inr),
                start = min(forecast_by_state_h2$FY_start_year),
                frequency = 1)
  
  print(ts_data)
  
  # --- Validation checks ---
  if (length(ts_data) < 3) {
    cat("Skipping model fitting for state", s, "- Not enough data points.\n")
    next
  }

  if (sd(ts_data, na.rm = TRUE) == 0) {
    cat("Skipping model fitting for state", s, "- Constant series.\n")
    next
  }
  
  # --- Fit ETS model safely ---
  model <- tryCatch({
    ets(ts_data)
  }, error = function(e) {
    cat("Error in fitting ETS model for state", s, ":", e$message, "\n")
    return(NULL)
  })
  
  if (is.null(model)) {
    cat("Skipping state", s, "- ETS model could not be fitted.\n")
    next
  }
  
  print(model)

  # --- Forecast for h = 2 (provides output for 2 years)---
  fc_2 <- forecast(model, h = 2)
 
  print("fc2")
  print(s)
  print(fc_2)

  # Write forecast values (tidy format)
  write.csv(data.frame(Time = time(fc_2$mean),
                       Forecast = as.numeric(fc_2$mean),
                       Lower80 = fc_2$lower[,1],
                       Upper80 = fc_2$upper[,1],
                       Lower95 = fc_2$lower[,2],
                       Upper95 = fc_2$upper[,2]),
            file = paste0(output_dir, "/forecast_", s, ".csv"),
            row.names = FALSE)
  
  
  #Plotting the forecast model per state.
  plot <- fitted(model) %>% forecast(h=2) %>% autoplot()


  plot_file <- file.path(output_dir, paste0("forecast_", s, ".png"))
  ggsave(plot_file, plot, width = 10, height = 6, dpi = 300)
}

