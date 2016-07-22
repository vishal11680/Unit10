###################################################################
# This R script is used to load Chulwalar Data
#  1) AsIsData
#  2) PlanData
#  3) IndicatorData
##################################################################
#  Date : 7/21/2016
###################################################################

## @knitr LoadChulwalarData

setwd("..//Data")

AsIsData <- read.csv(file="ImportedAsIsDataChulwalar.csv", header=F,sep=";",fill=TRUE, stringsAsFactors =F)
