# PROBLEM #1:

# set.seed(456)
# x <- round(rnorm(50,5,2),3)
# cat("Mean:", mean(x), "\nMedian: ", median(x))
# cat("\nStandard Deviation: ", sd(x), 
#     "\nInterquartile range: ", IQR(x))
# cat("\n30th percentile: ", quantile(x, .25))
# boxplot(x)



# # PROBLEM #2: 
# set.seed(123)
# x <- round(rnorm(100,5,2), 3)
# dens <- density(x)
# plot(dens)
# breakpoints <- c(0, 3, 5, 8, 10)
# u <- hist(x, breaks=breakpoints, freq=FALSE, ylim=c(0, 0.25),
#           xlab="Magnitudes (Richter scale)",
#           ylab="Density", main="Earthquake Intensity", col="tan")
# lines(dens, col="blue", lw=2)



# # PROBLEM #3:
# # star 1
pdf("stars.pdf")
x1 <- c(0.954, 4.496, 0.815, 3.23, 3.004, 0.954)
y1 <- c(2.731, 4.119, 5.078, 2.138, 5.935, 2.731)
# star 2
x2 <- c(4.259, 9.934, 4.993, 7.314, 8.5, 4.259)
y2 <- c(4.78, 5.376, 8.229, 3.016, 8.598, 4.78)

plot( x1, y1,xlab = "x coord", ylab="y coord",main="Stars", pch=1, xlim=c(0,10), ylim=c(0, 10), col="lightsalmon")
lines(x1, y1, col="lightsalmon", lwd=10)
par(new=TRUE, col="black")
#plot(x2, y2, pch=1, xlim=c(0,10), ylim=c(0,10), col="lightgoldenrod", ylab="test")
lines(x2, y2, col="lightgoldenrod", lwd=10)
labels <- c("star 1", "star 2")
legend("topleft", inset=.05, labels, lwd=2, col=c("lightsalmon", "lightgoldenrod"), lty=c(1,1))
dev.off()
