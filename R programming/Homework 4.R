# PROBLEM #1:

set.seed(456)
x <- round(rnorm(50,5,2),3)
cat("Mean:", mean(x), "\nMedian: ", median(x))
cat("\nStandard Deviation: ", sd(x), 
    "\nInterquartile range: ", IQR(x))
cat("\n30th percentile: ", quantile(x, .25))
boxplot(x)



# PROBLEM #2: 
