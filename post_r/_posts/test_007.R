rm(list=ls())
View(iris)
head(iris, 3)
tail(iris, 3)
summary(iris)
str(iris)
print(iris$Sepal.Width)
attach(iris)
print(Sepal.Width)
detach(iris)

x <- c(1, 2, 3, 4)
y <- c('apple', 'banana', 'orange')
xy <- c(x, y)

rm(list=ls())
x<- 1:5
y <- seq(10, 50, 10)
xy <- rbind(x,y)

