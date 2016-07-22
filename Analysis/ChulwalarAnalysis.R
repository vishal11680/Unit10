###################################################################
# This R script is used to do basic analysis on chulwalar TS data
#  1) TotalAsIs Data
#  2) EfakAsIs Data
##################################################################
#  Date : 7/21/2016
###################################################################

## @knitr ChulwalarAnalysis

getwd()
source('../Load/Chulwalar.R')


#To start with we will run correlation on both timeseries - TotalAsIs and EfakAsIs

cor(TotalAsIs, TotalPlan)
cor(EfakAsIs, EfakPlan)