# Author: Prof. Gareth W. Peters
# Date: 12/01/2023
# Purpose: illustrate example of a time series structure in R
# Version: 1.0

# suggest to set up all your libraries and install package commands in one 
# place at top of file.

library(tidyr)
library(tidyverse)
# library required for decimal_date() function
library(lubridate)


# Weekly data of COVID-19 positive cases from
# 22 January, 2020 to 15 April, 2020
x <- c(580, 7813, 28266, 59287, 75700,
       87820, 95314, 126214, 218843, 471497,
       936851, 1508725, 2072113)

# output to be created as png file
png(file ="timeSeries.png")

# creating time series object

# from date 22 January, 2020
mts <- ts(x, start = decimal_date(ymd("2020-01-22")),
          frequency = 365.25 / 7)

# plotting the graph
plot(mts, xlab ="Weekly Data",
     ylab ="Total Positive Cases",
     main ="COVID-19 Pandemic",
     col.main ="darkgreen")

# saving the file
dev.off()