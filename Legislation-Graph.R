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
  
circos.par("gap.degree" = 0, "cell.padding" = c(0, 0, 0, 0),
           start.degree = 176, track.margin = c(0, 0), "track.height" = .03)
circos.initialize(factors = c(1:48), xlim = c(-10,10))
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("white","white","#212c1c","#212c1c","#212c1c","white","#212c1c","white","white","#212c1c","#212c1c","white","#212c1c","#212c1c","white","#212c1c","white","#212c1c","white","white","#212c1c","white","#212c1c","white","white","#212c1c","white","#212c1c","#212c1c","white","white","white","#212c1c","#212c1c","white","white","#212c1c","#212c1c","white","white","white","white","#212c1c","white","white","white","white","#212c1c"),
                       track.height = 0.03)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","white","white","#212c1c","#212c1c","white","#212c1c","white","white","white","#212c1c","#212c1c","white","#212c1c","white","#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","#212c1c","white","#212c1c","white","#212c1c","white","white","white","white","white","white","white","white","white","#212c1c"),
                       track.height = 0.03)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","white","white","#212c1c","white","#212c1c","white","white","white","white"),
                       track.height = 0.03)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","white","#212c1c","white","white","#212c1c","white","#212c1c","white","#212c1c","white","#212c1c","white","white","white","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","#212c1c","white","white","white","white","white","white","white"),
                       track.height = 0.03)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","white","white","white","white","#212c1c","white","white","white","white","#212c1c","white","#212c1c","white","white","white","white","#212c1c","#212c1c","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","white","white"),
                       track.height = 0.03)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","white","white","white","#212c1c","white","#212c1c"),
                       track.height = 0.03)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","#212c1c","white","white","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","white","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","white","white","white","white","white","white","white","white","white","white","#212c1c"),
                       track.height = 0.03)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("white","#212c1c","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","white","#212c1c","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","white","white"),
                       track.height = 0.03)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("white","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","#212c1c","white","white","white","white","#212c1c","white","#212c1c","white","white","white","white","white","white","white","white","#212c1c","#212c1c","#212c1c","white","white","#212c1c","white","white","white","white","white","white","#212c1c","white","white","#212c1c"),
                       track.height = 0.03)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","#212c1c","white","white","white","#212c1c","#212c1c","#212c1c","#212c1c"),
                       track.height = 0.03)
circos.trackText(x = rep(-4,48), y = rep(.1,48),
                 labels = c("Alabama","Arkansas","Connecticut","Delaware","Florida",
                            "Georgia","Illinois","Indiana","Iowa","Kentucky","Louisiana",
                            "Maine","Maryland","Massachusetts","Michigan","Minnesota",
                            "Mississippi","Missouri","Nebraska","New Hampshire","New Jersey",
                            "New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Pennsylvania",
                            "Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Vermont","Virginia",
                            "West Virginia","Wisconsin","Nevada......1914","Montana.....1914","Kansas.....1912",
                            "Arizona.....1912","Oregon.....1912","California.....1911","Washington.....1910",
                            "Utah......1896","Idaho.....1896","Colorado.....1893","Wyoming......1869"),
                 factors = c(1:48), col = "#212c1c", font = 2, cex = .7, adj = -.1,
                 facing = "reverse.clockwise")
circos.clear() 


ggplot(State_Legislation) +
  geom_tile(aes(x = Legislation, y = State, fill = Fill), color = "#212c1c") +
  scale_fill_gradient(low = "white", high = "#212c1c") +
  coord_polar(theta = "y") +
  theme_bw() +
  theme(axis.ticks = element_blank(),
        axis.text = element_blank())

