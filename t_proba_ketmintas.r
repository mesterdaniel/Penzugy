x <- c(4.4, 3.8, 3.7, 4.1, 4)
y <- c(3.1, 4.2, 2.8, 1.4, 2.5)
n1 <- length(x)
n2 <- length(y)
xatlag <- mean(x)
yatlag <- mean(y)
sn1 <- (1/(n1-1)) * sum((x - xatlag)^2)
sn2 <- (1/(n2-1)) * sum((y - yatlag)^2)
tsz <- ((xatlag-yatlag)/sqrt((n1-1)*sn1 + (n2-1)*sn2)) * sqrt((n1*n2*(n1+n2-2)/(n1+n2)))
tkrit <- qt(0.975, df = n1+n2-2)
print(paste("Tsz: ",tsz))
print(paste("Tkrit:",tkrit))
if (tsz>tkrit) {
   print("Elvetjük H0-t")
}else {
   print("Elfogadjuk H0-t")
}