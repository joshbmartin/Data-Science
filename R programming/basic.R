sqrt(7)
x <- rnorm(100)
y <- x + .3*rnorm(100)
plot(x,y)



exp(1)
[1] 2.718282
> log(2.718)
[1] 0.9998963
> log(8)/log(2)
[1] 3
> sqrt(10)
[1] 3.162278
> TRUE | FALSE
[1] TRUE
> TRUE & FALSE
[1] FALSE
> !(3 < 2)
[1] TRUE
> sqrt(-1)
[1] NaN
Warning message:
  In sqrt(-1) : NaNs produced
> sqrt(-1+0i)
[1] 0+1i
> floor(pi)
[1] 3
> ceiling(pi)
[1] 4
> round(pi, 3)
[1] 3.142
> 24 %% 7
[1] 3
> 24 % 7
Error: unexpected input in "24 % 7"
> 25 %% 7
[1] 4
> 25%/% 7
[1] 3
> 24 %/% 7
[1] 3
> x <- 1




rm(y)
> y[3]
Error: object 'y' not found
> y = c(4,5,6)
> f <- funciton(x) {x^3}
Error: unexpected '{' in "f <- funciton(x) {"
> f <- function(x) {x^3}
> f(5)
[1] 125
> x <- c(2,3,5,7,11,13,17,19,23)
> xx
Error: object 'xx' not found
> x
[1]  2  3  5  7 11 13 17 19 23
> x[4]
[1] 7
> > 3:6
[1] 3 4 5 6
> x[3:6]
[1]  5  7 11 13

# 
# to remove a number from an array
x[-4]
[1]  2  3  5 11 13 17 19 23

# to start at 5 & go to 16 & count up by 2s:
> seq(5,16,2)
[1]  5  7  9 11 13 15

# creating a vector that contains strings:
> v <- c("john", "paul", "george")
> v[3]
[1] "george"


> x <- c(5,6,7)
> y <- c(1,2,4)
> x <- c(x,8)
> x
[1] 5 6 7 8
> y
[1] 1 2 4
> x + y
[1]  6  8 11  9

