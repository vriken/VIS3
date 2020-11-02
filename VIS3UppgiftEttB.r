library("ggplot2")
library("GGally")
#h�r laddar jag in lite libraries
data <- read.csv("https://raw.githubusercontent.com/vriken/VIS3/main/Data/husdjur.csv")
#h�r laddar jag in data fr�n github, och tilldelar det till data-variabeln
ggplot2::theme_set(ggplot2::theme_bw()) # h�r s�tter jag theme globalt i alla ggplot2 funktioner till
#theme_bw

ggpairs(data,
        mapping = aes(),
        upper = "blank",
        diag = "blank",
        axisLabels = "none") + # h�r anv�nder jag mig av ggpairs funktionen p� mitt dataset 
  theme(plot.caption = element_text(face = "italic")) +
  labs(caption = "K�lla: SCB")
  