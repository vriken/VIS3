library("ggplot2")
library("tidyr")
data <- read.csv("https://raw.githubusercontent.com/vriken/VIS3/main/Data/blabla.csv", check.names = FALSE)
ggplot2::theme_set(ggplot2::theme_bw())


data <- pivot_longer(data, cols = 2:7)
ggplot(data = data,
       aes(x = År,
           y = value,
           group = name,
           color = name)) +
  
  labs(caption = "Källa: SCB",
       title = "Utveckling av olika åldersgruppers eftergymnasiala utbildning",
       color = "Ålders-\ngrupper") +
  
  ylab("Procent") +
  
  theme(axis.title.y = element_text(angle = 0,
                                    vjust = 0.6,
                                    size = 11),
        legend.text = element_text(size = 11),
        legend.key.size = unit(2, "line"),
        plot.caption = element_text(size = 8, hjust = 0, face = "italic", color = "navy")) +
  geom_line() 
  