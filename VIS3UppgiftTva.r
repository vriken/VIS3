library("ggplot2")
library("tidyr")
library("scales")
#här laddar jag in lite libaries
data <- read.csv("https://raw.githubusercontent.com/vriken/VIS3/main/Data/where_you_from_my.csv", check.names = FALSE)
#här laddar jag in min data, och använde rmig av check.names. för att annars fick jag in en massa X framför mina variabler
ggplot2::theme_set(ggplot2::theme_bw()) # här sätter jag en global theme_bw()


data <- pivot_longer(data, cols = 2:7) # här gör jag datan diagonal från kolumn 2 till 7
ggplot(data = data, # här skapar jag ett ggplot objekt med data = data, osv.
       aes(x = Ar,
           y = value,
           group = name,
           color = name)) +
  
  labs(caption = "Källa: SCB", # här sätter jag ut captions, titlar, och namn för legenden
       title = "Utveckling av olika åldersgruppers eftergymnasiala utbildning i procent",
       color = "Ålders-\ngrupper") +
  
  ylab("Procent") + #här ändrar jag ylabelns text
  xlab("År") + #här ändrar jag xlabelns text
  
  scale_y_continuous(breaks = c(.1,.15,.2,.25,.3,.35,.4,.45), labels = scales::percent_format(accuracy = 1)) + 
  #här besätmmer jag vilka axlarna som ska visas på y axeln, samt ändrar dem till procentform
  theme(axis.title.y = element_text(angle = 0, # här ändrar jag på vilken vinkel texten på y axeln visas
                                    vjust = 0.6, #samt horizontella placeringen, och storleken
                                    size = 11),
        legend.text = element_text(size = 11), # här ändrar jag storleken på legend-texten
        legend.key.size = unit(2, "line"), # här ändrar jag storleken på legend-visarna
        plot.caption = element_text(size = 8, hjust = 0, face = "italic", color = "navy")) +
  geom_line(size = 2)  # här bestämmer jag caption attributer och skapar kallar på geom_line() och gör linjerna tjockare
  