# PROBLEM 1

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

#OUTPUT PROBLEM 1
# > source('C:/Users/Josh/Desktop/R programming/homewrk2.R')
# > root(3)
# Rounding your numbers
# 1.7321 
# > root(-3)
# Your number is negative, this code has made it positive!
#   Rounding your numbers
# 1.7321 
# > root(3, 5)
# Rounding your numbers
# 1.73205 
# > root(6, 7)
# Rounding your numbers
# 2.44949 
# > root(20, 7)
# Rounding your numbers
# 4.472136 
# > root(0)
# Please enter a number greater than 0.
# > root(1)
# Rounding your numbers
# 1 


# PROBLEM 2

derivative <- function(f, h=1e-5){
  function(x)
  (f(x+h)-f(x))/h
}
g <- derivative(f)




#OUTPUT PROBLEM 2:
# > f <- function(x) {x^3}
# > g <- derivative(f)
# > g(2)
# [1] 12.00006
# > g(3)
# [1] 27.00009
# > g(4)
# [1] 48.00012
# > g(5)
# [1] 75.00015





# PROBLEM 3

x <- seq(from=1, to=20, by=1)
y <- x^2
A <- matrix(data=y, nrow=4, ncol=5, byrow=TRUE)
B <- A[c(1,2),c(1,2,3)]


# OUTPUT PROBLEM 3:
#   > source('C:/Users/Josh/Desktop/R programming/homewrk2.R')
# > A
# [,1] [,2] [,3] [,4] [,5]
# [1,]    1    4    9   16   25
# [2,]   36   49   64   81  100
# [3,]  121  144  169  196  225
# [4,]  256  289  324  361  400
# > B
# [,1] [,2] [,3]
# [1,]    1    4    9
# [2,]   36   49   64


# PROBLEM 4
v <- c("Josh", "Cindy", "Steve", "Jack", "Bruce")
w <- c(23, 26, 42, 33, 51)
x <- c("M", "F", "M", "M", "M")
y <- c(20, 24, 31, 29, 35)
z <- c(120, 160, 200, 210, 225)
L <- list(patients=v, patientAge=w, gender=x, bmi=y, tch=z)


# OUTPUT PROBLEM 4:

# # Getting the name of the third patient.
# > L$patients[3]
# [1] "Steve"

# > L[[1]][3]
# [1] "Steve"

# Getting the TCH of the fourth patient.
# > L$tch[4]
# [1] 210

# > L[[5]][4]
# [1] 210



# PROBLEM 5
vertex <- function(x,y,z){
  v <- list(x=x,y=y,z=z)
  class(v) <- "vertex"
  return(v)
}
p1 <- vertex(2,3,7)

print.vertex <- function(vertex){
  cat("(",vertex$x,", ",vertex$y,", ",vertex$z,")\n", sep="")
}

edge <- function(p1, p2, p3) {
  v <- list(v1=p1, v2=p2, v3=p3)
  class(v) <- "edge"
  return(v)
}

print.edge <- function(e) {
  cat("vertex one: ")
  print(e$v1)
  cat("vertex two: ")
  print(e$v2)
  cat("vertex three: ")
  print(e$v3)
}
p2 <- vertex(1, 2, 2)
p3 <- vertex(3, 4, 4)

e <- edge(p1,p2,p3)



# OUTPUT PROBLEM 5

# > print(e)
# vertex one: (2, 3, 7)
# vertex two: (1, 2, 2)
# vertex three: (3, 4, 4)
