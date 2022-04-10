n <- 100;
sd <- 8
mean <- 50
#==========A==========
set.seed(n)
random <- rnorm(n, mean, sd)
avg <- mean(random)
x1 <- floor(avg)
x2 <- ceiling(avg)
dn <- pnorm(x2, mean, sd, lower.tail = TRUE) -
    pnorm(x1, mean, sd, lower.tail = TRUE)
cat("Distribusi normal P(X1 <= x <= X2) = ", dn)

z_score_x1 <- (x1 - mean) / sd
z_score_x2 <- (x2 - mean) / sd
cat("Z-Score X1 = ", z_score_x1, "\nZ-Score X2 = ", z_score_x2)

plot(random, type = "l")

#==========B==========
hist(rnorm(n, mean, sd), breaks = 50, main =
"5025201152_Helmi Taqiyudin_C_DNHistogram", xlab = "Value", ylab = "Frequency")

#==========C==========
var(rnorm(n, mean, sd))