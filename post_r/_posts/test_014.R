rm(list=ls())
number <- 1:5
alphabet <- c('a', 'b', 'c')
paste(number, alphabet)
fruit <- c('apple', 'banana', 'orange')
substr(fruit, 2, 4)
r1 <- split(iris, iris$Species)
subset(iris, subset=Species=='setosa' & Sepal.Length > 5.5)
subset(iris, select = c(Sepal.Length, Species))



