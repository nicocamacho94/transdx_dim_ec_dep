# Mapping a Transdiagnostic Dimension of Early Childhood Depressive Symptoms using the Preschool Feelings Checklist-Scale

### This README file provides information that facilitates the use of the scripts in this repo.
### The analysis scripts were written by Nicolas L. Camacho.

## Preparing to run the scripts

### In order to run the scripts in this repo, you will need to have access to R and Mplus.
- To download R for free, visit [this page](https://www.r-project.org/).
- To purchase Mplus, visit [this page](https://www.statmodel.com/).

### Note that the scripts are written in such a way that they require the specification of folders to access data. Make sure to update these sections to match the file structure on your device. Certain scripts also output updated datasets that stem from the original one. The folders in which you want to save them should be updated as well.
- In R, look for "setwd" or any section that starts with "C:/Users/"
- In Mplus, look for the section "DATA:"
- Note that Mplus will automatically save factor scores to the folder containing the analysis script.

## Order of scripts

### The order of the scripts in this repo is important. While some analysis scripts are capable of running on their own, many build upon one another (e.g., a previous script may output an updated dataset required for a later analysis). For this reason, it is advised to run each script in the order specified by the number at the start of its title (i.e., 00., 01., 02., etc).

### The first 3 scripts are R Markdown files.
- The "00. Establish Dataset" script was used to take the original dataset, organize it, and standardize the variable names
- The "01. Data Visualizations" script was used to visualize and calculate basic demographics and variable distributions
- The "02. Multiple Imputation" script was used to assess and address missing data using multiple imputation procedures that produced the datasets for Aims 1 and 2 of the present investigation
 
### The following 4 scripts are Mplus files (Scripts 04. to 06.).
- These scripts were used to estimate a distinct exploratory structural equation model (ESEM) of the Preschool Feelings Checklist-Scale (PFC-S) items (not including item 16).

### The next one ("06b. Bifactor Reliability Indices Calculator") is an R script.
- This script used the output from the ESEM in Script 06. (i.e., the final PFC-S model) to calculate the associated factor reliability estimates.

### Scripts 07. through 09b. are Mplus scripts.
- Each of these scripts estimated correlations between the General Factor of the PFC-S (using the model in Script 06.) and a set or an individual validation measure, child age, or sex assigned at birth.

### The next two scripts are R Markdown files.
- The "10. Correlations Among Composite Scores" script was used to estimate the correlations between a composite mean total score on the PFC-S items (excluding item 16) and the same validation measures as above.
- The "11. Visualizing Correlations from Mplus" script used the Mplus output from Scripts 07. through 09b. to create a visualization of those correlations.

### The next one ("12. Prepare PFC-S Dataset with Missingness for Mplus") is an R script.
- This script used the cleaned dataset (from Script 00.) and edited the missing values and dataset file type to be compatible with Mplus (i.e., converted from .csv to .dat).

### The following script ("13. Extract PFC-S Factor Scores") is an Mplus script.
- This script used the dataset generated in Script 12. to estimate the final PFC-S model (i.e., Script 06.) and extract factor scores for all estimated factors. Only the General Factor scores were used in subsequent analyses.
- Note that this script automatically saves the scores in the folder in which this script lives. Be sure to move the factor scores to a more appropriate location.

### The last 3 scripts are R Markdown files.
- The "14. Create dataset for Aim 3" script was used to combine the existing clean dataset with the PFC-S factor scores generated in the previous Mplus step (i.e., Script 13.). This script also created groups based on diagnostic data and clinical/non-clinical levels of specific broadband psychopathology measures.
- The "15. Logistic Regressions with PFC-S General Factor Scores" script was used to test whether PFC-S General Factor scores could distinguish between specific groups of study participants.
- The "16. ROC Curve Analyses with PFC-S General Factor Scores" script was used to estimate the ROC curves and accuracy metrics associated with the group distinctions made by the General Factor scores in the previous step.

## Questions?

### Email: nicolas.camacho@duke.edu

