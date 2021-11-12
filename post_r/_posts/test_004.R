rm(list=ls())
name <- c('tom', 'jerry', 'cindy', 'mark')
gender <- (c('f', 'm', 'f', 'm'))
kor <- c(90, 100, 80, 95)
eng <- c(90, 95, 100, 80)

df1 <- data.frame(name, gender, kor, eng)
df2 <- data.frame(matrix(seq(1,9), nrow=3))
df3 <- data.frame(gender = c('f', 'm', 'f', 'm'),
                           score = c(90, 100, 80, 95),
                           stringsAsFactors = TRUE)

str(df3)

rm(list=ls())
name <- c('tom', 'jerry', 'cindy', 'mark')
gender <- (c('f', 'm', 'f', 'm'))
kor <- c(90, 100, 80, 95)
eng <- c(90, 95, 100, 80)
df <- data.frame(name, gender, kor, eng)
v1 <- df[1,3]
df1<- df[2,]
v2 <- df[,'name']
v3 <- df$name

df2 <- df[1]  # 1번 열
df3 <- df['name']
v4 <- df[[1]]  # 1변열, vector
df4 <- df[seq(1,3), c(1,2)]
df5 <- df[,2:4]
df6 <- df[1:3]
df7 <- df[-2]
df8 <- df[-c(1,3)]