x <- c(1, 2, 3, 4, 5)
y <- c(2, 10, 34, 80, 154)


#összegek
S0  <- length(x)       
S1  <- sum(x)     # Σx
S2  <- sum(x^2)     # Σx^2
S3  <- sum(x^3)      # Σx^3
S4  <- sum(x^4)      # Σx^4

Sy  <- sum(y)      # Σy      
Sxy <- sum(x*y)    # Σ(x·y)
Sx2y<- sum((x^2) * y)    # Σ(x^2·y)

# 4) Normál‐egyenletrendszer mátrixa:
#    [ Σx^4  Σx^3  Σx^2 ] [a2]   [ Σ(x^2 y) ]
#    [ Σx^3  Σx^2  Σx   ] [a1] = [ Σ(x y)   ]
#    [ Σx^2  Σx    n    ] [a0]   [ Σ(y)     ]

M0 <- matrix(c(
  S4, S3, S2,
  S3, S2, S1,
  S2, S1, S0
), nrow = 3, byrow = TRUE)


M2 <- M0
M2[,1] <- c(Sx2y, Sxy, Sy)


M1 <- M0
M1[,2] <- c(Sx2y, Sxy, Sy)


M0p <- M0
M0p[,3] <- c(Sx2y, Sxy, Sy)


det_base <- det(M0)

a2 <- det(M2)  / det_base
a1 <- det(M1)  / det_base
a0 <- det(M0p) / det_base

cat(sprintf("Parabola egyenlet: y = %.4f x^2 + %.4f x + %.4f\n", a2, a1, a0))
