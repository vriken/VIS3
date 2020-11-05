library("ggplot2")
library("GGally")
#här laddar jag in lite libraries
data <- read.csv("https://raw.githubusercontent.com/vriken/VIS3/main/Data/husdjur.csv")
#här laddar jag in data från github, och tilldelar det till data-variabeln
ggplot2::theme_set(ggplot2::theme_bw()) # här sätter jag theme globalt i alla ggplot2 funktioner till theme_bw

ggpairs(data, #här skapar jag mitt ggpairs objekt med en mapping som använder sig av en tom aes(), jag bestämde mig för att inte ändra på färgerna, eftersom sambandet visas bra ändå
        mapping = aes(),
        upper = "blank", # här tar jag bort korrelationerna
        diag = "blank", # här tar jag bort linjen som dras genom korrelationen
        axisLabels = "none") + # här använder jag mig av ggpairs funktionen på mitt dataset
 
  labs(caption = "Källa: SCB",
       title = "Parvisa samband mellan Kor, Får, och Svin")+ # här lägger jag till en footnote och en titel
  theme(plot.caption = element_text(size = 12, 
                                    hjust = 0, 
                                    face = "italic"))# här ändrar jag attributerna för footnoten
  