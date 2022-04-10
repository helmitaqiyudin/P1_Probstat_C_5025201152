p <- 0.2
n <- 20
x <- 4
#==========A==========
dbinom(x, n, p)

#==========B==========
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dbinom(x = 0:10, size = n, prob = p)) %>%
  mutate(pasien = ifelse(x == 4, 4, "other")) %>%
ggplot(aes(x = factor(x), y = prob, fill = pasien)) +
  geom_col() +
  geom_text(
    aes(label = round(prob, 2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang 4 pasien sembuh",
       x = "Sembuh",
       y = "Peluang")

#==========C==========
n * p #rataan
n * p(1 - p) #varian