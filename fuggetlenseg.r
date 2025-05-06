K <- matrix(c(42,28,3,17,89,21), nrow=2, ncol=3, byrow=TRUE)
print(K)
sor <- rowSums(K)
oszlop <- colSums(K)
print(sor)
print(oszlop)
N <- sum(K)
khi <- 0
for (i in 1:nrow(K)) {
  for (j in 1:ncol(K)) {
    khi <- khi + (K[i,j] - ((sor[i] * oszlop[j]) / N))^2 / ((sor[i] * oszlop[j]) / N)
  }
}
krit <- qchisq(0.95, df = (nrow(K)-1) * (ncol(K)-1))
print(paste("Khi_sz: ",khi))
print(paste("Khi_krit:",krit))
if (khi>krit) {
   print("Elvetjük H0-t")
}else {
   print("Elfogadjuk H0-t")
}