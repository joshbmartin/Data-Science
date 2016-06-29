# Problem 1
# Using R, create a sequence (vector) that includes all multiples of 7 less than 100, except for 42
seqVector <- 7*(0:10)
remove <- c(42)
setdiff(seqVector,remove)

# OUTPUT PROBLEM 1:

# [1]  0  7 14 21 28 35 49 56 63 70






# Problem 2
# Suppose a researcher would like to test different combinations of three fertilizers and 
# two pesticides. Each possible combination of these is supposed to be tested on four plots. 
# So there are 24 plots total (there are 6 possible combinations of one fertilizer and one pesticide). 
# As part of a statistical model, the researcher constructs the following two vectors to code which 
# treatments are used each plot:

##  [1] "f1" "f1" "f1" "f1" "f2" "f2" "f2" "f2" "f3" "f3" "f3" "f3" "f1" "f1"
## [15] "f1" "f1" "f2" "f2" "f2" "f2" "f3" "f3" "f3" "f3"
##  [1] "p1" "p1" "p1" "p1" "p1" "p1" "p1" "p1" "p1" "p1" "p1" "p1" "p2" "p2"
## [15] "p2" "p2" "p2" "p2" "p2" "p2" "p2" "p2" "p2" "p2"
# Use the rep and the c functions to create these two vectors. Hint: For example, rep("f1",4) produces "f1" "f1" "f1" "f1"
firstSet <- rep("f1", 4)
secondSet <- rep("f2", 4)
thirdSet <- rep("f3", 4)
fourthSet <- rep("f1", 2)
fifthSet <- rep("f1", 2)
sixthSet <- rep("f2", 4)
seventhSet <- rep("f3", 4)
c(firstSet, secondSet, thirdSet, fourthSet, fifthSet, sixthSet, seventhSet)
oneSet <- rep("p1", 12)
twoSet <- rep("p2", 2)
threeSet <- rep("p2", 10)
c(oneSet, twoSet, threeSet)


# OUTPUT PROBLEM 2:

# [1] "f1" "f1" "f1" "f1" "f2" "f2" "f2" "f2" "f3" "f3" "f3" "f3" "f1" "f1" "f1" "f1" "f2" "f2" "f2" "f2"
# [21] "f3" "f3" "f3" "f3"

# [1] "p1" "p1" "p1" "p1" "p1" "p1" "p1" "p1" "p1" "p1" "p1" "p1" "p2" "p2" "p2" "p2" "p2" "p2" "p2" "p2"
# [21] "p2" "p2" "p2" "p2"






# Problem 3
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



# OUTPUT PROBLEM 3:

#   2  is even.
# 3  is divisible by 3.
# 5 
# 8  is even.
# 13 
# 21  is divisible by 3.
# 34  is even.
# 55 
# 89 
# 144  is even.
# 233 
# 377 
# 610  is even.
# 987  is divisible by 3.
# 1597 
# 2584  is even.
# 4181 
# 6765  is divisible by 3.
# 10946  is even.
# 17711 
# 28657 
# 46368  is even.
# 75025 
# 121393 
# 196418  is even.
# 317811  is divisible by 3.
# 514229 
# 832040  is even.






# Problem 4
# 
# For the 'hailstone sequence' problem (Collatz conjecture), for 
# each number up to 100, find how many iterations it takes for the 
# sequence to terminate at 1. Also find the largest number in the 
# hailstone sequence before it terminates. (Print a very simple table 
# giving these.) Of course, you may use the code from the lecture 
# notes to build your solution.
a <- 0
for(i in 2:100){
while (x > 1){
  a = a+1
  cat(x, " ")
  if (x %% 2 == 0){
    x <- x/2
  }else {
    x <- 3*x + 1
  }
}
}
cat("\nnumber of iterations :",   a, "larget: ", largest)


# OUTPUT PROBLEM 4:

