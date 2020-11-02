library("ggplot2")
library("GGally")
data <- read.csv("https://raw.githubusercontent.com/vriken/VIS3/main/Data/husdjur.csv")
#här laddar jag in data från github, och använder mig av check.names = FALSE.
#I fallet att jag inte använde check.names... Så fick jag en massa X fram
ggplot2::theme_set(ggplot2::theme_bw())

ggpairs(data)