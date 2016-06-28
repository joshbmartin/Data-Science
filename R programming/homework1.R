# Problem 1
# Using R, create a sequence (vector) that includes all multiples of 7 less than 100, except for 42
seqVector <- 7*(0:10)
remove <- c(42)
setdiff(seqVector,remove)

# Problem 2
# Suppose a researcher would like to test different combinations of three fertilizers and two pesticides. Each possible combination of these is supposed to be tested on four plots. So there are 24 plots total (there are 6 possible combinations of one fertilizer and one pesticide). As part of a statistical model, the researcher constructs the following two vectors to code which treatments are used each plot:
  
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


