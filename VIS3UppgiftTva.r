library("ggplot2")
library("tidyr")
library("scales")
#h�r laddar jag in lite libaries
data <- read.csv("https://raw.githubusercontent.com/vriken/VIS3/main/Data/where_you_from_my.csv", check.names = FALSE)
#h�r laddar jag in min data, och anv�nde rmig av check.names. f�r att annars fick jag in en massa X framf�r mina variabler
ggplot2::theme_set(ggplot2::theme_bw()) # h�r s�tter jag en global theme_bw()


data <- pivot_longer(data, cols = 2:7) # h�r g�r jag datan diagonal fr�n kolumn 2 till 7
ggplot(data = data, # h�r skapar jag ett ggplot objekt med data = data, osv.
       aes(x = Ar,
           y = value,
           group = name,
           color = name)) +
  
  labs(caption = "K�lla: SCB", # h�r s�tter jag ut captions, titlar, och namn f�r legenden
       title = "Utveckling av olika �ldersgruppers eftergymnasiala utbildning i procent",
       color = "�lders-\ngrupper") +
  
  ylab("Procent") + #h�r �ndrar jag ylabelns text
  xlab("�r") + #h�r �ndrar jag xlabelns text
  
  scale_y_continuous(breaks = c(.1,.15,.2,.25,.3,.35,.4,.45), labels = scales::percent_format(accuracy = 1)) + 
  #h�r bes�tmmer jag vilka axlarna som ska visas p� y axeln, samt �ndrar dem till procentform
  theme(axis.title.y = element_text(angle = 0, # h�r �ndrar jag p� vilken vinkel texten p� y axeln visas
                                    vjust = 0.6, #samt horizontella placeringen, och storleken
                                    size = 11),
        legend.text = element_text(size = 11), # h�r �ndrar jag storleken p� legend-texten
        legend.key.size = unit(2, "line"), # h�r �ndrar jag storleken p� legend-visarna
        plot.caption = element_text(size = 8, hjust = 0, face = "italic", color = "navy")) +
  geom_line(size = 2)  # h�r best�mmer jag caption attributer och skapar kallar p� geom_line() och g�r linjerna tjockare
  