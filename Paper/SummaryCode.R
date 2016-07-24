###################################################################
# This R script is used to load Chulwalar Data
#  1) AsIsData
#  2) PlanData
#  3) IndicatorData
##################################################################
#  Date : 7/21/2016
###################################################################

## @knitr SummaryCode

getwd()
source('../Load/Chulwalar.R')
source('../Analysis/ChulwalarAnalysis.R')
source('../Analysis/ForecastCode.R')

#Load libraries knitr and fpp
library(knitr)
library(fpp)


#Copying stats into a dataframe for plotting

stat_df <- c("SES", round(Model_ses$model$aic, digits=3), round(Model_ses$model$aicc, digits=3), round(Model_ses$model$bic, digits=3))
tmp1 <- c("H-Linear", round(Model_holt_1$model$aic, digits=3), round(Model_holt_1$model$aicc, digits =3), round(Model_holt_1$model$bic, digits=3))
tmp2 <- c("H-Expo", round(Model_holt_2$model$aic, digits=3), round(Model_holt_2$model$aicc, digits =3), round(Model_holt_2$model$bic, digits=3))
tmp3 <- c("H-Damp", round(Model_holt_3$model$aic, digits=3), round(Model_holt_3$model$aicc, digits =3), round(Model_holt_3$model$bic, digits=3))
tmp4 <- c("H-DampnExpo", round(Model_holt_4$model$aic, digits=3), round(Model_holt_4$model$aicc, digits =3), round(Model_holt_4$model$bic, digits=3))
tmp5 <- c("HW-Add", round(Model_hw_1$model$aic, digits=3), round(Model_hw_1$model$aicc, digits =3), round(Model_hw_1$model$bic, digits=3))
tmp6 <- c("HW-Multi", round(Model_hw_2$model$aic, digits=3), round(Model_hw_2$model$aicc, digits =3), round(Model_hw_2$model$bic, digits=3))
stat_df <- rbind(stat_df, tmp1,tmp2,tmp3,tmp4,tmp5, tmp6)

stat_df <- as.data.frame(stat_df)
colnames(stat_df) <- c("ModelName", "AIC", "AICc", "BIC")

