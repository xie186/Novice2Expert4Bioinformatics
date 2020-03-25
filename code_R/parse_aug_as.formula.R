argv <- commandArgs(trailingOnly = T)

level1 <- argv[1]
level2 <- argv[2]

#First, build a simple data frame with time as a factor and Time as a continuous,
#numeric variable. The two variables look alike when you print the data frame.
#But, if you summarize the data, you see that they are different.
d <- data.frame(level1 = factor(1:4), level2 = 1:4)
colnames(d)<-c(level1, level2)
summary(d)
