# Forecasting Models
Vishal & Blake  
July 24, 2016  


###Forecasting models  

* Ses : Simple Exponential Smoothing model  
* Holts Model  
* Holt Winter Model  

* *Setting current working directory to Analysis folder*  


* *Loading knitr library*  



* *Seeting chunk options and reading chunks from R scripts*  

  

```
## [1] "C:/Users/vishal/Desktop/SMU/Doing Datascience/Case Study/Unit10/Analysis"
```

```
## Loading required package: forecast
```

```
## Loading required package: zoo
```

```
## 
## Attaching package: 'zoo'
```

```
## The following objects are masked from 'package:base':
## 
##     as.Date, as.Date.numeric
```

```
## Loading required package: timeDate
```

```
## This is forecast 7.1
```

```
## Loading required package: fma
```

```
## Loading required package: tseries
```

```
## Loading required package: expsmooth
```

```
## Loading required package: lmtest
```

* Plot SES model

  * *Simple Exponential Smoothing* : In this type of model, forecast are calculated using averages from past values. Weight on average values reduce as values become older in timeseries.  We will plot a Simple Exponential Smoothing chart for "TotalAsIs" timeseries that contains observed data. Simple Exponential Smoothing can be used in case there is no trend and/or seasonal component in the data.  

    *In below plot we are forecasting 12 values using SES model.*  


![](ForecastingModels_files/figure-html/unnamed-chunk-4-1.png)<!-- -->


* Holt's various models (auto, exponential, damped, damped with exponential)  

    * Holt Auto    
    ![](ForecastingModels_files/figure-html/unnamed-chunk-5-1.png)<!-- -->![](ForecastingModels_files/figure-html/unnamed-chunk-5-2.png)<!-- -->

    * Exponential Trend  
    ![](ForecastingModels_files/figure-html/unnamed-chunk-6-1.png)<!-- -->![](ForecastingModels_files/figure-html/unnamed-chunk-6-2.png)<!-- -->
    
    * Dampened Trend  
    ![](ForecastingModels_files/figure-html/unnamed-chunk-7-1.png)<!-- -->![](ForecastingModels_files/figure-html/unnamed-chunk-7-2.png)<!-- -->
    
    * Dampened with Exponential Trend  
    ![](ForecastingModels_files/figure-html/unnamed-chunk-8-1.png)<!-- -->![](ForecastingModels_files/figure-html/unnamed-chunk-8-2.png)<!-- -->
    


# SES and Holts models  

![](ForecastingModels_files/figure-html/unnamed-chunk-9-1.png)<!-- -->

# Holt Winters' models  

![](ForecastingModels_files/figure-html/unnamed-chunk-10-1.png)<!-- -->


    
    
    
    
