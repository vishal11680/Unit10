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
library(knitr)
library(fpp)

#To start with we will run correlation on both timeseries - TotalAsIs and EfakAsIs

cor(TotalAsIs, TotalPlan)
#cor(EfakAsIs, EfakPlan)



#Using lm (linear method) function for using Linear Model on Total AsIs and Total Plan data. 
#Below we are also using tslm function that fits linear model with timeseries data.

TotalAsIs_lm <- lm(TotalAsIs ~ TotalPlan , data = TotalAsIs)
TotalAsIs_tslm <- tslm(TotalAsIs ~ TotalPlan )

# Using STL method for decomposition of trend, seasonal component and remainder

TotalAsIs_stl <- stl(TotalAsIs, s.window=5)

#External indicators will be converted into time series.
#They will then be compared with As Is data to check correlation between each of external indicator and as is data.

#1. CEPI - Change in Export Price Index
CEPIVector <- c(IndicatorData[2:13,2],IndicatorData[2:13,3],IndicatorData[2:13,4],IndicatorData[2:13,5],IndicatorData[2:13,6],IndicatorData[2:13,7])
CEPI <- ts(CEPIVector , start=c(2008,1), end=c(2013,12), frequency=12)

#2 Monthly Satisfaction Index (SI) government based data
SIGovVector <- c(IndicatorData[16:27,2],IndicatorData[16:27,3],IndicatorData[16:27,4],IndicatorData[16:27,5],IndicatorData[16:27,6],IndicatorData[16:27,7])
SIGov <- ts(SIGovVector , start=c(2008,1), end=c(2013,12), frequency=12)

#3 Average monthly temperatures in Chulwalar
TemperatureVector <- c(IndicatorData[30:41,2],IndicatorData[30:41,3],IndicatorData[30:41,4],IndicatorData[30:41,5],IndicatorData[30:41,6],IndicatorData[30:41,7])
Temperature <- ts(TemperatureVector, start=c(2008,1), end=c(2013,12), frequency=12)

#4 Monthly births in Chulwalar 
BirthsVector <- c(IndicatorData[44:55,2],IndicatorData[44:55,3],IndicatorData[44:55,4],IndicatorData[44:55,5],IndicatorData[44:55,6],IndicatorData[44:55,7])
Births <- ts(BirthsVector, start=c(2008,1), end=c(2013,12), frequency=12)

#5 Monthly Satisfaction Index (SI) external index 
SIExternVector <- c(IndicatorData[58:69,2],IndicatorData[58:69,3],IndicatorData[58:69,4],IndicatorData[58:69,5],IndicatorData[58:69,6],IndicatorData[58:69,7])
SIExtern <- ts(SIExternVector, start=c(2008,1), end=c(2013,12), frequency=12)

#6 Yearly exports from Urbano
UrbanoExportsVector <- c(IndicatorData[72:83,2],IndicatorData[72:83,3],IndicatorData[72:83,4],IndicatorData[72:83,5],IndicatorData[72:83,6],IndicatorData[72:83,7])
UrbanoExports <- ts(UrbanoExportsVector, start=c(2008,1), end=c(2013,12), frequency=12)

#7 Yearly number of Globalisation Party members in Chulwalar
GlobalisationPartyMembersVector <- c(IndicatorData[86:97,2],IndicatorData[86:97,3],IndicatorData[86:97,4],IndicatorData[86:97,5],IndicatorData[86:97,6],IndicatorData[86:97,7])
GlobalisationPartyMembers <- ts(GlobalisationPartyMembersVector, start=c(2008,1), end=c(2013,12), frequency=12)

#8 Monthly Average Export Price Index for Chulwalar
AEPIVector <- c(IndicatorData[100:111,2],IndicatorData[100:111,3],IndicatorData[100:111,4],IndicatorData[100:111,5],IndicatorData[100:111,6],IndicatorData[100:111,7])
AEPI <- ts(AEPIVector, start=c(2008,1), end=c(2013,12), frequency=12)

#9 Monthly Producer Price Index (PPI) for Etel in Chulwalar
PPIEtelVector <- c(IndicatorData[114:125,2],IndicatorData[114:125,3],IndicatorData[114:125,4],IndicatorData[114:125,5],IndicatorData[114:125,6],IndicatorData[114:125,7])
PPIEtel <- ts(PPIEtelVector, start=c(2008,1), end=c(2013,12), frequency=12)

#10 National Holidays
NationalHolidaysVector <- c(IndicatorData[170:181,2],IndicatorData[170:181,3],IndicatorData[170:181,4],IndicatorData[170:181,5],IndicatorData[170:181,6],IndicatorData[170:181,7])
NationalHolidays <- ts(NationalHolidaysVector, start=c(2008,1), end=c(2013,12), frequency=12) 

#11 Chulwalar Index (Total value of all companies in Chulwalar)
ChulwalarIndexVector <- c(IndicatorData[128:139,2],IndicatorData[128:139,3],IndicatorData[128:139,4],IndicatorData[128:139,5],IndicatorData[128:139,6],IndicatorData[128:139,7])
ChulwalarIndex <- ts(ChulwalarIndexVector, start=c(2008,1), end=c(2013,12), frequency=12)

#12 Monthly Inflation rate in Chulwalar 
InflationVector <- c(IndicatorData[142:153,2],IndicatorData[142:153,3],IndicatorData[142:153,4],IndicatorData[142:153,5],IndicatorData[142:153,6],IndicatorData[142:153,7])
Inflation <- ts(InflationVector, start=c(2008,1), end=c(2013,12), frequency=12)

#13 Proposed spending for Independence day presents
IndependenceDayPresentsVector <- c(IndicatorData[156:167,2],IndicatorData[156:167,3],IndicatorData[156:167,4],IndicatorData[156:167,5],IndicatorData[156:167,6],IndicatorData[156:167,7])
IndependenceDayPresents <- ts(IndependenceDayPresentsVector, start=c(2008,1), end=c(2013,12), frequency=12)

#14 Influence of National Holidays :
#This indicator is an experiment where the influence of National Holidays is extended into the months leading up to the holiday. However later tests show that this indicator is no better for forecasting than the orignial National Holidays indicator.  
InfluenceNationalHolidaysVector <- c(IndicatorData[184:195,2],IndicatorData[184:195,3],IndicatorData[184:195,4],IndicatorData[184:195,5],IndicatorData[184:195,6],IndicatorData[184:195,7])
InfluenceNationalHolidays <- ts(InfluenceNationalHolidaysVector, start=c(2008,1), end=c(2013,12), frequency=12)



# Forecasting models


