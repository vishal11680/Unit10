###################################################################
# This R script is used to load Chulwalar Data
#  1) AsIsData
#  2) PlanData
#  3) IndicatorData
##################################################################
#  Date : 7/21/2016
###################################################################

## @knitr ForecastModels

getwd()
source('../Load/Chulwalar.R')
source('../Analysis/ChulwalarAnalysis.R')

#Load libraries knitr and fpp
library(knitr)
library(fpp)

#Forecasting Models

#1. First model is SES (Simple Exponential Smoothing).
Model_ses <- ses(TotalAsIs, h=12)

#2. Holt linear trend
Model_holt_1 <- holt(TotalAsIs,h=12)

#3. Holt Exponential trend
Model_holt_2<- holt(TotalAsIs, exponential=TRUE,h=12)

#4. Holt dampened trend
Model_holt_3 <- holt(TotalAsIs, damped=TRUE,h=12)

#5. Holt dampened with exponential
Model_holt_4 <- holt(TotalAsIs, exponential=TRUE, damped=TRUE,h=12)

#6 HW Seasonal additive
Model_hw_1 <- hw(TotalAsIs ,seasonal="additive",h=12)

#7 HW Seasonal multiplicative
Model_hw_2 <- hw(TotalAsIs ,seasonal="multiplicative",h=12)






