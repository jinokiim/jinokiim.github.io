re(list=ls())
data("airquality")
colnames(airquality) <- tolower(colnames(airquality))

r1 <- is.na(airquality$ozone)
r2 <- sum(r1)
r3 <- table(is.na(airquality$ozone))
r4 <- apply(airquality, 2, function(x) { sum(is.na(x))})
air_na <- airquality[!complete.cases(airquality), ]
air_com <- airquality[complete.cases(airquality), ]
r5 <- na.omit(airquality)
