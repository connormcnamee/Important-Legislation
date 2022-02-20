library(tidyverse)
library(circlize)
library(showtext)
font_add_google("Puritan", "Puritan")
showtext_auto()

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
 
par(mar = c(0,0,0,0))
# Start by defining rules for the circle, height of each track, degree the first cell is made at, and margins for tracks and the circle
circos.par(gap.degree = 0, cell.padding = c(0, 0, 0, 0),
           start.degree = 176, track.margin = c(0, 0), track.height = .035, circle.margin = c(.3,.3,1,.23))
# Set number of sectors(factors) and x limits within each cell
circos.initialize(factors = c(1:48), xlim = c(-10,10))
# Next is 10 trackplotregion functions starting from the outside track and going in, each defining the color of every cell in the track
# Also circos.text functions, putting the numbers in the Wyoming cells
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), 
                       bg.col = c("white","white","#212c1c","#212c1c","#212c1c","white","#212c1c","white","white","#212c1c","#212c1c","white","#212c1c","#212c1c","white","#212c1c","white","#212c1c","white","white","#212c1c","white","#212c1c","white","white","#212c1c","white","#212c1c","#212c1c","white","white","white","#212c1c","#212c1c","white","white","#212c1c","#212c1c","white","white","white","white","#212c1c","white","white","white","white","#212c1c"))
circos.text(labels = 10,sector.index = 48, track.index = 1,x=0,y=.5, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), 
                       bg.col = c("#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","white","white","#212c1c","#212c1c","white","#212c1c","white","white","white","#212c1c","#212c1c","white","#212c1c","white","#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","#212c1c","white","#212c1c","white","#212c1c","white","white","white","white","white","white","white","white","white","#212c1c"))
circos.text(labels = 9,sector.index = 48, track.index = 2,x=0,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), 
                       bg.col = c("#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","white","white","#212c1c","white","#212c1c","white","white","white","white"))
circos.text(labels = 8,sector.index = 48, track.index = 3,x=0,y=.45, col = "black", facing = "downward", cex = .465)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), 
                       bg.col = c("#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","white","#212c1c","white","white","#212c1c","white","#212c1c","white","#212c1c","white","#212c1c","white","white","white","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","#212c1c","white","white","white","white","white","white","white"))
circos.text(labels = 7,sector.index = 48, track.index = 4,x=0,y=.45, col = "black", facing = "downward", cex = .465)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), 
                       bg.col = c("#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","white","white","white","white","#212c1c","white","white","white","white","#212c1c","white","#212c1c","white","white","white","white","#212c1c","#212c1c","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","white","white"))
circos.text(labels = 6,sector.index = 48, track.index = 5,x=0,y=.45, col = "black", facing = "downward", cex = .465)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), 
                       bg.col = c("#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","white","white","white","#212c1c","white","#212c1c"))
circos.text(labels = 5,sector.index = 48, track.index = 6,x=0,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), 
                       bg.col = c("#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","white","#212c1c","#212c1c","#212c1c","white","white","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","white","white","white","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","white","white","white","white","white","white","white","white","white","white","#212c1c"))
circos.text(labels = 4,sector.index = 48, track.index = 7,x=0,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), 
                       bg.col = c("white","#212c1c","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","white","#212c1c","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","white","white","white"))
circos.text(labels = 3,sector.index = 48, track.index = 8,x=0,y=.45, col = "black", facing = "downward", cex = .465)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), 
                       bg.col = c("white","white","white","white","white","#212c1c","white","white","white","white","white","white","white","white","white","white","#212c1c","white","white","white","white","#212c1c","white","#212c1c","white","white","white","white","white","white","white","white","#212c1c","#212c1c","#212c1c","white","white","#212c1c","white","white","white","white","white","white","#212c1c","white","white","#212c1c"))
circos.text(labels = 2,sector.index = 48, track.index = 9,x=0,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
circos.trackPlotRegion(ylim = c(0, 1), factors = c(1:48), 
                       bg.col = c("#212c1c","white","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","#212c1c","white","#212c1c","#212c1c","white","#212c1c","white","white","white","#212c1c","#212c1c","#212c1c","#212c1c"))
circos.text(labels = 1,sector.index = 48, track.index = 10,x=0,y=.45, col = "#e1e2e4", facing = "downward", cex = .43)
# One extra track of blank cells, to provide some extra space between the state names and the cells
circos.track(ylim=c(0,3),bg.border=NA,track.height=.01, bg.col = c(rep(NA,37),rep(rgb(red = 1,green = .5,blue = 0,alpha = .2),37),11))
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
circos.track(ylim=c(0,3),bg.border=NA,track.height=.32, bg.col = c(rep(NA,37),rep(rgb(red = 1,green = .5,blue = 0,alpha = .2),37),11),panel.fun = function(x,y) {
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
circos.track(ylim=c(0,3),bg.border=NA,track.height=.3, bg.col = c(rep(NA,37),rep(rgb(red = 1,green = .5,blue = 0,alpha = .2),37),11))
circos.clear()
par(mar = c(0,0,3.5,0))
title("Important Legislation in the United States \nAffecting Women and Children", family = "Puritan")
par(mar = c(7.6,0,0,0))
mtext("WHITE SPACES INDICATE GOOD LEGISLATION,\n BLACK SPACES POOR OR NO LEGISLATION,\n COLOR SPACES FULL SUFFRAGE STATES",
      side=1, font = 2, cex = .8, family = "Puritan")
par(mar = c(6.8,2,0,0))
mtext("Circle 1",
      side = 1, font = 2, cex = .5, adj = .3, line = 0)
mtext("           2",side = 1, font = 2, cex = .5, adj = .3, line = 2.4)
mtext("Industrial Welfare Commis-",
      side = 1, font = 1, cex = .5, adj = .38, line=0)
mtext("sion to regulate hours, wages",  side = 1, font = 1, cex = .5, adj = .383, line = 0.5)
mtext("and working  conditions of",  side = 1, font = 1, cex = .5, adj = .377, line = 1)
mtext("women and children",  side = 1, font = 1, cex = .5, adj = .366, line = 1.5)
mtext("Child Labor--14 year limit.",  side = 1, font = 1, cex = .5, adj = .378, line = 2.4)
mtext("Guarded  exemptions during",  side = 1, font = 1, cex = .5, adj = .381, line = 2.9)
mtext("vacations are allowed and",  side = 1, font = 1, cex = .5, adj = .377, line = 3.4)
mtext("poverty  exemptions  when",  side = 1, font = 1, cex = .5, adj = .379, line = 3.9)
mtext("these are neutralized  by",  side = 1, font = 1, cex = .5, adj = .375, line = 4.4)
mtext("Mothers' Pensions laws",  side = 1, font = 1, cex = .5, adj = .375, line = 4.9)
mtext("Circle 3",  side = 1, font = 2, cex = .5, adj = .55, line = 0)
mtext("Compulsory education--state-",  side = 1, font = 1, cex = .5, adj = .66, line = 0)
mtext("wide",  side = 1, font = 1, cex = .5, adj = .586, line = .5)
mtext("4",  side = 1, font = 2, cex = .5, adj = .5638, line = 1)
mtext("Eight or  nine hour  day for",  side = 1, font = 1, cex = .5, adj = .648, line = 1)
mtext("women",  side = 1, font = 1, cex = .5, adj = .592, line = 1.45)
mtext("5",  side = 1, font = 2, cex = .5, adj = .5638, line = 1.95)
mtext("Minimum wage",  side = 1, font = 1, cex = .5, adj = .618, line = 1.95)
mtext("6",  side = 1, font = 2, cex = .5, adj = .5638, line = 2.45)
mtext("Mothers' pensions",  side = 1, font = 1, cex = .5, adj = .6255, line = 2.45)
mtext("7",  side = 1, font = 2, cex = .5, adj = .5638, line = 2.95)
mtext("Equal guardianship",  side = 1, font = 1, cex = .5, adj = .6275, line = 2.95)
mtext("8",  side = 1, font = 2, cex = .5, adj = .5638, line = 3.4)
mtext("Age of consent, 18 years--",  side = 1, font = 1, cex = .5, adj = .649, line = 3.4)
mtext("chaste or unchaste",  side = 1, font = 1, cex = .5, adj = .6275, line = 3.9)
mtext("9",  side = 1, font = 2, cex = .5, adj = .5638, line = 4.4)
mtext("Red light abatement",  side = 1, font = 1, cex = .5, adj = .6314, line = 4.4)
mtext("10",  side = 1, font = 2, cex = .5, adj = .5626, line = 4.9)
mtext("Prohibition",  side = 1, font = 1, cex = .5, adj = .6046, line = 4.9)

?par
