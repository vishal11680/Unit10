# Chulwahlar Export Forecast
Vishal & Blake  
July 17, 2016  

###Loading data into R  
As a first step we will load data into R using "Load/Chulwalar.R" file.  


```r
getwd()
```

```
## [1] "C:/Users/vishal/Desktop/SMU/Doing Datascience/Case Study/Unit10/Load"
```

```r
library(knitr)
opts_chunk$set(echo = FALSE, cache=FALSE)
read_chunk('Chulwalar.R')
#read_chunk('Test.R')
```


```
## [1] "C:/Users/vishal/Desktop/SMU/Doing Datascience/Case Study/Unit10/Data"
```

###str function on Timeseries of Total As Is data and Efak As Is data.  


```
##  Time-Series [1:72] from 2008 to 2014: 2313221 1950131 2346635 2039787 1756964 1458302 1679637 1639670 2882886 2959716 ...
```

```
##  Time-Series [1:72] from 2008 to 2014: 416589 472565 466539 370774 457741 384817 464502 389013 508370 495598 ...
```



```
## [1] "C:/Users/vishal/Desktop/SMU/Doing Datascience/Case Study/Unit10/Load"
```


```
## [1] "C:/Users/vishal/Desktop/SMU/Doing Datascience/Case Study/Unit10/Load"
```

```
## [1] 0.9183402
```

```
## [1] 0.9055081
```






