x <- c(4.4, 3.8, 3.7, 4.1, 4)
sigma <- 0.1
m <- 3.9
atlag <- mean(x)
n <- length(x)
Usz <- ((atlag-m)/sigma) * sqrt(n)
print(paste("Usz: ",Usz))
print(paste("Ukrit: 1.96"))
if (Usz>1.96) {
   print("Elvetjük H0-t")
}else {
   print("Elfogadjuk H0-t")
}