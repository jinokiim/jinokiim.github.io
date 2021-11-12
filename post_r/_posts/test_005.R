rm(list=ls())
a <- list(name='Julie', age=25, h_w=c(160, 48))
v1 <- a['name'] # list로 나옴
v2 <- a$name
v3 <- a[['name']]
v4 <- a[[3]]
str(a)

