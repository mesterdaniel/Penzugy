# 1) Mátrix és vektor definiálása
A  <- matrix(c(5,3,10, 8,-2,3, -1,3,-2), nrow = 3)
b  <- c(7, 11, 8)
# 2) Az eredeti determináns
D  <- det(A)
# 3) Numerátor-mátrixok
Ax <- A; Ax[,1] <- b    # x-hez az első oszlopot cserélem
Ay <- A; Ay[,2] <- b    # y-hoz a második oszlopot
Az <- A; Az[,3] <- b    # z-hez a harmadik oszlopot
print(Ax)
print(Ay)
print(Az)
# 4) Az együtthatók
x <- det(Ax) / D
y <- det(Ay) / D
z <- det(Az) / D
# 5) Kiírás
cat(sprintf("x = %.4f\n", x))
cat(sprintf("y = %.4f\n", y))
cat(sprintf("z = %.4f\n", z))