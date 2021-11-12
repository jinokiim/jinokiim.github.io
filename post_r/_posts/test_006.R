rm(list=ls())
df = read.csv('./data/easySample.csv', fileEncoding = 'UTF-8-BOM')
print(df)

write.csv(df, './data/mySample.csv', row.names=FALSE)
write.csv(df, './data/mySample_wr.csv', row.names=TRUE)

rm(list=ls())
cname <- c('ID', 'name', 'birth', 'dept', 'english', 'japanese', 'chinese')
df3 <- read.table('./data/easySample.txt', sep=',', col.names = cname)


rm(list=ls())
df4 <- read.csv('./data/mySample.csv')
save(df4, file = './data/myObject1.Rdata')
rm(list=ls())
load('./data/myObject1.Rdata')
print(df4)


rm(list=ls())
df = read.csv('./data/easySample3.csv', fileEncoding='UTF-8-BOM')
df1 <- df[, c(2, 4, 8, 9)]
df1$score <- c(90, 80, 50, 70, 100, 95, 85, 70, 95, 75)
df2 <- subset(df1, subset=(salary>=5000))
df3 <- subset(df2, select=-score)
df4 <- subset(df1, subset=(salary>=5000), select=-score)
df5 <- subset(df2, select=c(pname, dept, salary))
colnames(df5)[2] <- 'department'
