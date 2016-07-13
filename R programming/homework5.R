# Problem 3 Assignment1
# 
# The Fibonacci sequence is the following sequence, where the first two 
# terms are both 1 and each term thereafter is the sum of the previous two 
# terms: 1, 1, 2, 3, 5, 8, 13, etc. Write a little R program to find and print 
# the first 30 terms of this sequence. Print them as a simple table that indicates 
# which of these are even, and which are divisible by 3. (Hint: Notice how a number 
# is tested for being even in the code for the Collatz conjecture example.)
size <- 30
fibValue <-numeric(size)
fibValue[1] <- 1
fibValue[2] <- 1
for(i in 3:size){
  fibValue[i] <- fibValue[i-1] + fibValue[i-2]
  if(fibValue[i] %% 2 == 0){
    cat(fibValue[i], " is even.\n")
  }else if(fibValue[i] %% 3 == 0){
    cat(fibValue[i], " is divisible by 3.\n")
  }else {
    cat(fibValue[i], "\n")
  }
}




# PROBLEM 1 Assignment 2

root <- function(a, digits=4){
  x <- 1
  if(a < 0){
    cat("Your number is negative, this code has made it positive!\n")
    a <- abs(a)
  }
  if(a == 0){
    cat("Please enter a number greater than 0.")
  }else{
    #cat(x, "\n")
    while(x!=(sqrt(a))){
      x=(x+a/x)/2
      #cat(x,"\n")
    }
    cat("Rounding your numbers\n")
    v <- round(x, digits=digits)
    cat(v,"\n")
  }
} 



# PROBLEM 4 Assignment 2
v <- c("Josh", "Cindy", "Steve", "Jack", "Bruce")
w <- c(23, 26, 42, 33, 51)
x <- c("M", "F", "M", "M", "M")
y <- c(20, 24, 31, 29, 35)
z <- c(120, 160, 200, 210, 225)
L <- list(patients=v, patientAge=w, gender=x, bmi=y, tch=z)



#PROBLEM 4 Assignment 4

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
