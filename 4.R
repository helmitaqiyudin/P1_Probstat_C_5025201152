x <- 2
v <- 10
#==========A==========
dchisq(x, v)

#==========B==========
x <- rchisq(n = 100, df = v)
hist(x,
     freq = FALSE,
     xlim = c(0, 25),
     ylim = c(0, 0.15))
  
curve(dchisq(x, df = v), from = 0, to = 25,
      n = 100, col = "red", lwd = 2, add = T)

#==========C==========
v #rataan
2 * v #varian