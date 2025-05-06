K <- c(38,22,36,44)
n <- length(K)
Pi <- c(0.4, 0.2, 0.2, 0.2)
N <- sum(K)
if (sum(Pi)!=1) {
   print("Hiba")
   return(0)
}
khi <- 0
for (i in 1:n){
        khi <- khi+(((K[i]-(N*Pi[i]))^2)/(N*Pi[i]))
}
krit <- qchisq(0.95, df = (n-1))
print(paste("Khi_sz: ",khi))
print(paste("Khi_krit:",krit))
if (khi>krit) {
   print("Elvetjük H0-t")
}else {
   print("Elfogadjuk H0-t")
}