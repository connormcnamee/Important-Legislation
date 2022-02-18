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
           start.degree = 176, track.margin = c(0, 0), "track.height" = .03, circle.margin = c(.08))
circos.initialize(factors = c(1:48), xlim = c(-10,10))
title("Important Legislation in the United States \nAffecting Women and Children")
par(mar=c(.7,0,0,0))
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("white","white","#212c1c","#212c1c","#212c1c","white","#212c1c","white","white","#212c1c","#212c1c","white","#212c1c","#212c1c","white","#212c1c","white","#212c1c","white","white","#212c1c","white","#212c1c","white","white","#212c1c","white","#212c1c","#212c1c","white","white","white","#212c1c","#212c1c","white","white","#212c1c","#212c1c","white","white","white","white","#212c1c","white","white","white","white","#212c1c"),
                       track.height = 0.03)
circos.text(labels = 10,sector.index = 48, track.index = 1,x=2,y=.5, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","white","white","#212c1c","#212c1c","white","#212c1c","white","white","white","#212c1c","#212c1c","white","#212c1c","white","#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","#212c1c","white","#212c1c","white","#212c1c","white","white","white","white","white","white","white","white","white","#212c1c"),
                       track.height = 0.03)
circos.text(labels = 9,sector.index = 48, track.index = 2,x=2,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","white","white","#212c1c","white","#212c1c","white","white","white","white"),
                       track.height = 0.03)
circos.text(labels = 8,sector.index = 48, track.index = 3,x=2,y=.45, col = "black", facing = "downward", cex = .465)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","white","#212c1c","white","white","#212c1c","white","#212c1c","white","#212c1c","white","#212c1c","white","white","white","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","#212c1c","white","white","white","white","white","white","white"),
                       track.height = 0.03)
circos.text(labels = 7,sector.index = 48, track.index = 4,x=2,y=.45, col = "black", facing = "downward", cex = .465)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","white","white","white","white","#212c1c","white","white","white","white","#212c1c","white","#212c1c","white","white","white","white","#212c1c","#212c1c","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","white","white"),
                       track.height = 0.03)
circos.text(labels = 6,sector.index = 48, track.index = 5,x=2,y=.45, col = "black", facing = "downward", cex = .465)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","white","white","white","#212c1c","white","#212c1c"),
                       track.height = 0.03)
circos.text(labels = 5,sector.index = 48, track.index = 6,x=2,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","#212c1c","white","white","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","white","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","white","white","white","white","white","white","white","white","white","white","#212c1c"),
                       track.height = 0.03)
circos.text(labels = 4,sector.index = 48, track.index = 7,x=2,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("white","#212c1c","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","white","#212c1c","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","white","white"),
                       track.height = 0.03)
circos.text(labels = 3,sector.index = 48, track.index = 8,x=2,y=.45, col = "black", facing = "downward", cex = .465)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("white","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","#212c1c","white","white","white","white","#212c1c","white","#212c1c","white","white","white","white","white","white","white","white","#212c1c","#212c1c","#212c1c","white","white","#212c1c","white","white","white","white","white","white","#212c1c","white","white","#212c1c"),
                       track.height = 0.03)
circos.text(labels = 2,sector.index = 48, track.index = 9,x=2,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","#212c1c","white","white","white","#212c1c","#212c1c","#212c1c","#212c1c"),
                       track.height = 0.03)
circos.text(labels = 1,sector.index = 48, track.index = 10,x=2,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackText(x = rep(-4,48), y = rep(.1,48),
                 labels = c("Alabama","Arkansas","Connecticut","Delaware","Florida",
                            "Georgia","Illinois","Indiana","Iowa","Kentucky","Louisiana",
                            "Maine","Maryland","Massachusetts","Michigan","Minnesota",
                            "Mississippi","Missouri","Nebraska","New Hampshire","New Jersey",
                            "New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Pennsylvania",
                            "Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Vermont","Virginia",
                            "West Virginia","Wisconsin","Nevada","Montana","Kansas",
                            "Arizona","Oregon","California","Washington",
                            "Utah","Idaho","Colorado","Wyoming"),
                 factors = c(1:48), col = "#212c1c", font = 2, cex = .7, adj = -.1,
                 facing = "reverse.clockwise")
circos.track(ylim=c(0,3),bg.border=NA,track.height=.32,circos.axis(major.at = 10, labels = "",direction = "inside", major.tick.length = mm_y(100), lwd= 1))
circos.trackText(x = rep(-4,48), y = rep(.1,48),
                 labels = c("","","","","","","","","","","","","","","","",
                            "","","","","","","","","","","","","","","","","","","",
                            "","","1914","1914","1912",
                            "1912","1912","1911","1910",
                            "1896","1896","1893","1869"),
                 factors = c(1:48), col = "#212c1c", font = 2, cex = .6, adj = -.1,
                 facing = "reverse.clockwise")
circos.clear() 

?circos.trackAxis

#circos.axis(major.at = 10, labels = "",
 #           direction = "inside", major.tick.length = mm_y(120), lwd= 1)

ggplot(State_Legislation) +
  geom_tile(aes(x = Legislation, y = State, fill = Fill), color = "#212c1c") +
  scale_fill_gradient(low = "white", high = "#212c1c") +
  coord_polar(theta = "y") +
  theme_bw() +
  theme(axis.ticks = element_blank(),
        axis.text = element_blank())

