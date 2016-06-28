# x <- 3 
# while (x > 1){
#   cat(x, " ")
#   if (x %% 2 == 0){
#     x <- x/2
#   }else {
#     x <- 3*x + 1
#   }
# }

# output: 3  10  5  16  8  4  2 



x <- 27 
a <- 0
while (x > 1){
  a = a+1
  cat(x, " ")
  if (x %% 2 == 0){
    x <- x/2
  }else {
    x <- 3*x + 1
  }
}
cat("\nnumber of iterations :",   a)
