library("ggplot2")
library("GGally")
data <- read.csv("https://raw.githubusercontent.com/vriken/VIS3/main/Data/husdjur.csv")
#h�r laddar jag in data fr�n github, och anv�nder mig av check.names = FALSE.
#I fallet att jag inte anv�nde check.names... S� fick jag en massa X fram
ggplot2::theme_set(ggplot2::theme_bw())

ggpairs(data)