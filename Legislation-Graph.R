library(tidyverse)
library(circlize)

Legislation_Data <- read_csv("Legislation-Data.csv")
  

  

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



?circos.par
