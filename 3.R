x <- 6
lambda <- 4.5
#==========A==========
dpois(x, lambda)

#==========B==========
library(dplyr)
library(ggplot2)

bayi <- data.frame(prob = rpois(n = n, lambda = lambda))

bayi %>%
  ggplot() +
  geom_histogram(aes(x = prob,
                    y = stat(count / sum(count)),
                    fill = prob == 6),
                binwidth = 1,
                color = "black") +
  scale_x_continuous(breaks = 0:10) +
  labs(title = "Simulasi kelahiran 6 bayi akan lahir",
       x = "Angka kelahiran bayi per periode",
       y = "Freq. kelahiran bayi")
bayi %>% dplyr::summarize(enam_bayi = sum(bayi$prob == 6) / n())
#==========C==========
# Hasil dari a (nilai eksak) dan b (nilai simulasi)
# memiliki hasil yang tidak jauh berbeda

#==========D==========
lambda #rataan
lambda #varian