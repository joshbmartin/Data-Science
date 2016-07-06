x <- rnorm(100, 4, 1)
x <- round(x, 3)
x[33] <- 8.88
x[66] <- 7.77
n <- length(x)
sum(x)
sum(x)/n
mean(x)
y <- sort(x)
u <- c(3,6,7,9,11)
u
u <- c(3,6,7,9,11,13)
u
quantile(u, 0.25)
?quantile
quantile(u, 0.25, type=6)
quantile(u, 0.25, type=7)

# We now consider measures of dispersion

# interquartile range
IQR(x)

#summary of data
summary(x)

boxplot(x)

y <- rnorm(100,6,2)
boxplot(x,y)

summary(x)
summary(y)
boxplot(x,y,names=c("x","y"))
boxplot(x,y,names=c("x","y"),main="My two boxplots")

#this will show a histogram rather than a boxplot.
hist(x)

u <- hist(x)
u
# > u
# $breaks
# [1] 1 2 3 4 5 6 7 8 9
# 
# $counts
# [1]  2 10 44 29 12  1  1  1
# 
# $density
# [1] 0.02 0.10 0.44 0.29 0.12 0.01 0.01 0.01
# 
# $mids
# [1] 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5
# 
# $xname
# [1] "x"
# 
# $equidist
# [1] TRUE
# 
# attr(,"class")
# [1] "histogram"



  
#The tallest rectangle is 38 tall
#this indicates that 38 of the number in x
  #are between 4 and 5
  
  
  
hist(x, breaks=20) #shows more data, breaks it up.
hist(x, breaks=20, xlim=c(0,10))
hist(x, breaks=20, xlim=c(0,10), ylim=c(0,30))


hist(x, freq=FALSE)
