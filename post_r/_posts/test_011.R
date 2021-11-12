rm(list=ls())
install.packages('reshape')
library('reshape')
library(reshape)

data(airquality)
names(airquality)
colnames(airquality) <- tolower(colnames(airquality))
names(airquality)

a <- melt(airquality, id=c('month', 'day'), na.rm=TRUE)
r1 <- cast(a, day~month~variable)
r2 <- cast(a, month~variable, mean)
r3 <- cast(a, month~variable, mean, margins = c('grand_row', 'grand_col'))
r4 <- cast(a, day~month, mean, subset=variable=='ozone')
r5 <- cast(a, month~variable, range)

