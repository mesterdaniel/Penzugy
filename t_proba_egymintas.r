x <- c(4.4, 3.8, 3.7, 4.1, 4)
n <- length(x)
atlag <- mean(x)
m <- 3.9
sn <- sqrt((1/(n-1)) * sum((x - atlag)^2))
tsz <- ((atlag-m)/sn)*sqrt(n)
tkrit <- qt(0.975, df = n-1)
print(paste("Tsz: ",tsz))
print(paste("Tkrit:",tkrit))
if (tsz>tkrit) {
   print("Elvetjük H0-t")
}else {
   print("Elfogadjuk H0-t")
}