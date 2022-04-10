x <- 3
p <- 0.20
n <- 10000

#==========A==========
dgeom(x, p)

#==========B==========
mdisgeo <- mean(rgeom(n, p) == x)
mdisgeo

#==========C==========
#a menggunakan nilai tetap sehingga peluang distribusi geometriknya selalu sama
#b menggunakan nilai acak sehingga peluang distribusi geometriknya berubah ubah
#untuk nilai peluang distribusi geometriknya cenderung mirip antara a dan b

#==========D==========
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == 3, 3, "other")) %>%
ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob, 2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 Failures Prior to First Success",
       subtitle = "Geometric(.2)",
       x = "Failures prior to first success (x)",
       y = "Probability")

#==========E==========
1 / p #rataan
(1 - p) / p^2 #varian