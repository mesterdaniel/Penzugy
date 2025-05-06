x <- c(4.4, 3.8, 3.7, 4.1, 4)
y <- c(3.1, 4.2, 2.8, 1.4, 2.5)
sigma1 <- 0.1
sigma2 <- 0.3
xatlag <- mean(x)
yatlag <- mean(y)
n1 <- length(x)
n2 <- length(y)
Usz <- (xatlag-yatlag)/(sqrt(((sigma1^2)/n1)+((sigma2^2)/n2)))
print(paste("Usz: ", Usz))
print("Ukrit: 1.96")
if (Usz>1.96) {
   print("Elvetjük H0-t")
}else {
   print("Elfogadjuk H0-t")
}
print(xatlag)
print(yatlag)