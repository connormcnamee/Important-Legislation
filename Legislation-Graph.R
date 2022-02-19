library(tidyverse)
library(circlize)
library(showtext)
font_add_google("Puritan", "Puritan")
showtext_auto()

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
 
# Start by defining rules for the circle, height of each track, degree the first cell is made at, and margins for tracks and the circle
circos.par(gap.degree = 0, cell.padding = c(0, 0, 0, 0),
           start.degree = 176, track.margin = c(0, 0), track.height = .035, circle.margin = c(.2,.2,.3,.1))
# Set number of sectors(factors) and x limits within each cell
circos.initialize(factors = c(1:48), xlim = c(-10,10))
# Next is 10 trackplotregion functions starting from the outside track and going in, each defining the color of every cell in the track
# Also circos.text functions, putting the numbers in the Wyoming cells
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("white","white","#212c1c","#212c1c","#212c1c","white","#212c1c","white","white","#212c1c","#212c1c","white","#212c1c","#212c1c","white","#212c1c","white","#212c1c","white","white","#212c1c","white","#212c1c","white","white","#212c1c","white","#212c1c","#212c1c","white","white","white","#212c1c","#212c1c","white","white","#212c1c","#212c1c","white","white","white","white","#212c1c","white","white","white","white","#212c1c"))
circos.text(labels = 10,sector.index = 48, track.index = 1,x=0,y=.5, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","white","white","#212c1c","#212c1c","white","#212c1c","white","white","white","#212c1c","#212c1c","white","#212c1c","white","#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","#212c1c","white","#212c1c","white","#212c1c","white","white","white","white","white","white","white","white","white","#212c1c"))
circos.text(labels = 9,sector.index = 48, track.index = 2,x=0,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","white","white","#212c1c","white","#212c1c","white","white","white","white"))
circos.text(labels = 8,sector.index = 48, track.index = 3,x=0,y=.45, col = "black", facing = "downward", cex = .465)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","white","#212c1c","white","white","#212c1c","white","#212c1c","white","#212c1c","white","#212c1c","white","white","white","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","#212c1c","white","white","white","white","white","white","white"))
circos.text(labels = 7,sector.index = 48, track.index = 4,x=0,y=.45, col = "black", facing = "downward", cex = .465)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","white","white","white","white","#212c1c","white","white","white","white","#212c1c","white","#212c1c","white","white","white","white","#212c1c","#212c1c","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","white","white"))
circos.text(labels = 6,sector.index = 48, track.index = 5,x=0,y=.45, col = "black", facing = "downward", cex = .465)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","white","white","white","#212c1c","white","#212c1c"))
circos.text(labels = 5,sector.index = 48, track.index = 6,x=0,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","#212c1c","white","white","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","white","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","white","white","white","white","white","white","white","white","white","white","#212c1c"))
circos.text(labels = 4,sector.index = 48, track.index = 7,x=0,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("white","#212c1c","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","white","#212c1c","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","white","white"))
circos.text(labels = 3,sector.index = 48, track.index = 8,x=0,y=.45, col = "black", facing = "downward", cex = .465)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("white","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","#212c1c","white","white","white","white","#212c1c","white","#212c1c","white","white","white","white","white","white","white","white","#212c1c","#212c1c","#212c1c","white","white","#212c1c","white","white","white","white","white","white","#212c1c","white","white","#212c1c"))
circos.text(labels = 2,sector.index = 48, track.index = 9,x=0,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), bg.col = c("#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","#212c1c","white","white","white","#212c1c","#212c1c","#212c1c","#212c1c"))
circos.text(labels = 1,sector.index = 48, track.index = 10,x=0,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
# One extra track of blank cells, to provide some extra space between the state names and the cells
circos.track(ylim=c(0,3),bg.border=NA,track.height=.01)
# Track with each individual state name going in the circle, and defining the direction they face, font and size
circos.trackText(x = rep(-4.8,48), y = rep(.1,48),
                 labels = c("Alabama","Arkansas","Connecticut","Delaware","Florida",
                            "Georgia","Illinois","Indiana","Iowa","Kentucky","Louisiana",
                            "Maine","Maryland","Massachusetts","Michigan","Minnesota",
                            "Mississippi","Missouri","Nebraska","New Hampshire","New Jersey",
                            "New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Pennsylvania",
                            "Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Vermont","Virginia",
                            "West Virginia","Wisconsin","Nevada","Montana","Kansas",
                            "Arizona","Oregon","California","Washington",
                            "Utah","Idaho","Colorado","Wyoming"),
                 factors = c(1:48), col = "#212c1c", font = 2, cex = .5, adj = 0,
                 facing = "reverse.clockwise")
# New track placing the lines going all around the circle
circos.track(ylim=c(0,3),bg.border=NA,track.height=.32, panel.fun = function(x,y) {
  circos.axis(major.at = 10, labels = "",direction = "inside", major.tick.length = 6.6, lwd= 1.6)})
# Final track, with the years that went along with some states
circos.trackText(x = rep(-5.5,48), y = rep(0,48),
                 labels = c("","","","","","","","","","","","","","","","",
                            "","","","","","","","","","","","","","","","","","","",
                            "","","1914","1914","1912",
                            "1912","1912","1911","1910",
                            "1896","1896","1893","1869"),
                 factors = c(1:48), col = "#212c1c", font = 2, cex = .3, adj = 0,
                 facing = "reverse.clockwise")
circos.clear()
title("Important Legislation in the United States \nAffecting Women and Children", family = "Puritan")
mtext("FFFFF", side=1, mar = c(0,0,0,0))



