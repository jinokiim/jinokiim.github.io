rm(list=ls())
a <- 5
if (a > 10) {
  print('a가 10보다 크다.')
} else {
  print('a가 10보다 작거나 같다.')
}

score <- c(100, 58, 95, 55, 85)
result <- ifelse(score >= 60, 'P', 'F')

rm(list=ls())
a <- c()
for (i in 1:5) {
  a[i] <- 2*i+3
}

rm(list=ls())
a <- 1
while(a < 5){
  print(a)
  a <- a+1
}

add <- function(a, b) {
  tot <- 0
  for (i in a:b) {
    tot <- tot + i
  }
  return(tot)
}
add(1,10)
