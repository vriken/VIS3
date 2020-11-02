library("ggplot2")
library("GGally")
data <- read.csv("https://raw.githubusercontent.com/vriken/VIS3/main/Data/husdjur.csv", check.names = FALSE)
ggplot2::theme_set(ggplot2::theme_bw())

ggpairs(data)