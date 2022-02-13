library(tidyverse)
library(circlize)

State <- rep(c("Alabama","Arkansas","Connecticut","Delaware","Florida",
           "Georgia","Illinois","Indiana","Iowa","Kentucky","Louisiana",
           "Maine","Maryland","Massachusetts","Michigan","Minnesota",
           "Mississippi","Missouri","Nebraska","New Hampshire","New Jersey",
           "New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Pennsylvania",
           "Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Vermont","Virginia",
           "West Virginia","Wisconsin","Nevada......1914","Montana.....1914","Kansas.....1912",
           "Arizona.....1912","Oregon.....1912","California.....1911","Washington.....1910",
           "Utah......1896","Idaho.....1896","Colorado.....1893","Wyoming......1869"),times = 10)
Fill <- c(1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,0,1,0,0,0,1,1,1,1,
          0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,1,1,1,0,0,1,0,0,0,0,0,0,1,0,0,1,
          0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,
          1,0,1,1,1,1,1,1,1,1,1,0,1,0,1,1,1,0,0,1,1,1,0,1,1,0,0,0,0,1,1,1,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,
          1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,0,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,0,0,0,0,0,0,1,0,1,
          1,0,1,0,1,1,0,1,0,1,1,0,0,0,0,0,1,0,0,0,0,1,0,1,0,0,0,0,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,
          1,1,0,1,1,1,0,1,0,0,1,0,1,0,1,0,1,0,0,0,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1,0,0,0,1,0,0,0,0,0,0,0,
          1,1,1,0,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,1,0,1,0,1,1,1,1,1,0,1,1,1,1,1,0,1,0,0,0,1,0,1,0,0,0,0,
          1,1,1,1,1,1,0,0,0,1,1,0,1,0,0,0,1,1,0,1,0,1,0,1,0,1,1,0,1,1,0,0,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,1,
          0,0,1,1,1,0,1,0,0,1,1,0,1,1,0,1,0,1,0,0,1,0,1,0,0,1,0,1,1,0,0,0,1,1,0,0,1,1,0,0,0,0,1,0,0,0,0,1
         )
Legislation <- rep(paste("Leg_", 1:10, sep=""),each = 48)
State_Legislation <- tibble(State,Legislation,Fill)
  

circos.initialize(factors = c(1:48), xlim = c(-5,5))
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = case_when(Legislation-Data$Leg_1 = 1 ~ "Black",
                                                                             TRUE ~ "White"),
                       track.height = 0.05)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = "black",
                       track.height = 0.05)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = "black",
                       track.height = 0.05)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = "black",
                       track.height = 0.05)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = "black",
                       track.height = 0.05)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = "black",
                       track.height = 0.05)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = "black",
                       track.height = 0.05)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = "black",
                       track.height = 0.05)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = "black",
                       track.height = 0.05)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = "black",
                       track.height = 0.05)
circos.clear()

ggplot(State_Legislation) +
  geom_tile(aes(x = State, y = Legislation, fill = Fill), color = "black") +
  scale_fill_gradient(low = "white", high = "black") +
  coord_polar() +
  theme_bw() +
  theme(axis.ticks = element_blank(),
        axis.text = element_blank())

