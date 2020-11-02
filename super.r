library("ggplot2")
library("GGally")
#här laddar jag in lite libraries
data <- read.csv("https://raw.githubusercontent.com/vriken/VIS3/main/Data/husdjur.csv")
#här laddar jag in data från github, och tilldelar det till data-variabeln
ggplot2::theme_set(ggplot2::theme_bw()) # här sätter jag theme globalt i alla ggplot2 funktioner till
#theme_bw

ggpairs(data,
        upper = "blank",
        diag = "blank") # här använder jag mig av ggpairs funktionen på mitt dataset
#tillsammans med upper = "blank", och diag = "blank"