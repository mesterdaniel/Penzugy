P= function(x, y, x0) {
    s=0;
    for (i in 1:length(x)) {
       p=1;
       for (j in 1:length(x)) {
          if (j!=i) {
             p=p*((x0-x[j])/(x[i]-x[j]));
          }
       }
       s=s+y[i]*p;
    }
    print(s)
}
x = c(1,2,3,4)
y = c(5.6,2.3,3.2,7.0)
x0=2.5;
P(x,y,x0)