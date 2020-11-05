library("ggplot2")
library("GGally")
#h�r laddar jag in lite libraries
data <- read.csv("https://raw.githubusercontent.com/vriken/VIS3/main/Data/husdjur.csv")
#h�r laddar jag in data fr�n github, och tilldelar det till data-variabeln
ggplot2::theme_set(ggplot2::theme_bw()) # h�r s�tter jag theme globalt i alla ggplot2 funktioner till theme_bw

ggpairs(data, #h�r skapar jag mitt ggpairs objekt med en mapping som anv�nder sig av en tom aes(), jag best�mde mig f�r att inte �ndra p� f�rgerna, eftersom sambandet visas bra �nd�
        mapping = aes(),
        upper = "blank", # h�r tar jag bort korrelationerna
        diag = "blank", # h�r tar jag bort linjen som dras genom korrelationen
        axisLabels = "none") + # h�r anv�nder jag mig av ggpairs funktionen p� mitt dataset
 
  labs(caption = "K�lla: SCB",
       title = "Parvisa samband mellan Kor, F�r, och Svin")+ # h�r l�gger jag till en footnote och en titel
  theme(plot.caption = element_text(size = 12, 
                                    hjust = 0, 
                                    face = "italic"))# h�r �ndrar jag attributerna f�r footnoten
  