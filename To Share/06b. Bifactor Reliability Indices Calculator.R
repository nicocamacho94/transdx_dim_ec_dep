# title: "Measurement Model of the Preschool Feelings Checklist-Scale -- Reliability"
# author: "Nicolas L Camacho"
# created: 2/5/2025
# updated: 8/27/2025

# Install packages (where necessary) and load libraries to run this script
required_packages <- c("BifactorIndicesCalculator")
installed <- required_packages %in% rownames(installed.packages())
if(any(!installed)) {
  install.packages(required_packages[!installed])
}
invisible(lapply(required_packages, library, character.only = T))

# Set working directory
## Update this section to reflect the file path that contains the analysis scripts
setwd("C:/Users/nicol/Box/01. Nicolas Dissertation/Analyses")

# Estimate omega, omegaH, Explained Common Variance (ECV), H-index, and Factor Determinacy (FD)
## Function opens a dialog box to choose the output file for the model(s) of interest
### Bifactor 3-factor ESEM
bifactorIndicesMplus_ESEM(LoadMin = .213)