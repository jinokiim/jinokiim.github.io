rm(list=ls())
m1 = matrix(seq(1,10), nrow=5, byrow=TRUE)
m2 = matrix(seq(1,6), ncol=3)
m3 = rbind(seq(1, 3), seq(4, 6))
m4 = cbind(seq(1, 3), seq(4, 6))


rm(list=ls())
m <- matrix(seq(1, 12), nrow=4, ncol=3)
m1 <- m[2, 3]  # 2번행 3번열
m2 <- m[3,]
m3 <- m[,-2] # 2번열 빼고
m4 <- m[c(2, 3), 2]
m5 <- m[c(TRUE, FALSE, FALSE, TRUE),]


rm(list=ls())
a1 = array(1:12, dim=c(3,2,2))
a2 = array(1:6, dim=c(2,3))


