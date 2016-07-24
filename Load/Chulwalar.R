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
getwd()


# Read csv files and load data
AsIsData <- read.csv(file="ImportedAsIsDataChulwalar.csv", header=F,sep=";",fill=TRUE, stringsAsFactors =F)

PlanData <- read.csv(file="ImportedPlanDataChulwalar.csv", header=F,sep=";",fill=TRUE, stringsAsFactors =F)

IndicatorData <- read.csv(file="ImportedPlanDataChulwalar.csv", header=F,sep=";",fill=TRUE, stringsAsFactors =F)

# Store data in vectors. These vectors will be used to generate TS data
TotalAsIsVector <- c(AsIsData [2:13,2],AsIsData [2:13,3],AsIsData [2:13,4],AsIsData [2:13,5],AsIsData [2:13,6],AsIsData [2:13,7])
#EfakAsIsVector <- c(AsIsData [16:27,2],AsIsData [16:27,3],AsIsData [16:27,4],AsIsData [16:27,5],AsIsData [16:27,6],AsIsData [16:27,7])
TotalAsIsVector_2014 <- c(AsIsData[2:13,8])


PlanVector <- c(PlanData[2:13,2],PlanData[2:13,3],PlanData[2:13,4],PlanData[2:13,5],PlanData[2:13,6],PlanData[2:13,7])
#EfakPlanVector <- c(PlanData[16:27,2],PlanData[16:27,3],PlanData[16:27,4],PlanData[16:27,5],PlanData[16:27,6],PlanData[16:27,7])
PlanVector_2014 <- c(PlanData[2:13,8])


#Convert TS from vectors created in previous step
TotalAsIs<- ts(TotalAsIsVector , start=c(2008,1), end=c(2013,12), frequency=12)
#EfakAsIs <- ts(EfakAsIsVector , start=c(2008,1), end=c(2013,12), frequency=12)
TotalAsIs_2014 <- ts(TotalAsIsVector_2014, start=c(2014,1), end=c(2014,12), frequency=12)
TotalPlan <- ts(PlanVector, start=c(2008,1), end=c(2013,12), frequency=12)

#EfakPlan <- ts(EfakPlanVector, start=c(2008,1), end=c(2013,12), frequency=12)

