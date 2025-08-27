# title: "Prepare PFC-S dataset with missing data for use in Mplus"
# author: "Nicolas L Camacho"
# created: 2/26/2025
# updated: 8/27/2025

# Install packages (where necessary) and load libraries to run this script
required_packages <- c("tidyverse", "VIM", "MplusAutomation")
installed <- required_packages %in% rownames(installed.packages())
if(any(!installed)) {
  install.packages(required_packages[!installed])
}
invisible(lapply(required_packages, library, character.only = T))

# Set working directory
## Update this section to reflect the file path that contains the cleaned dataset
setwd("C:/Users/nicol/Box/01. Nicolas Dissertation/Data")

# Pull dataset
trunc_data <- read_csv("truncated_dataset.csv")

# Retain only the PFC-S data for use in Mplus and update all NA's to 999
trunc_2 <- trunc_data %>% 
  dplyr::select(., contains("pfc"))

# Check which PFC-S variables have missing data
aggr(trunc_2, comb = T, numbers = T, prop = F, cex.axis = 0.5)

# Update NA values to 999 for use in Mplus
trunc_3 <- trunc_2 %>% 
  replace_na(list(pfc02 = 999, pfc04 = 999, pfc06 = 999, pfc08 = 999, 
                  pfc14 = 999, pfc18 = 999, pfc20 = 999, pfc22 = 999))

# Save .dat file for Mplus
prepareMplusData(trunc_3, 
                 filename = "C:/Users/nicol/Box/01. Nicolas Dissertation/Data/pfcs_mplus.dat")
