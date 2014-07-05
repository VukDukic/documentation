library(plotly)

p <- plotly(username='TestBot', key='r1neazxo9w')

trace1 <- list(
  x = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  y = c(8, 7, 6, 5, 4, 3, 2, 1, 0), 
  type = "scatter"
)
trace2 <- list(
  x = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  y = c(0, 1, 2, 3, 4, 5, 6, 7, 8), 
  type = "scatter"
)
data <- list(trace1, trace2)
layout <- list(
  xaxis = list(
    ticks = "outside", 
    tickwidth = 4, 
    tick0 = 0, 
    ticklen = 8, 
    dtick = 0.25, 
    tickcolor = "#000", 
    autotick = FALSE
  ), 
  yaxis = list(
    ticks = "outside", 
    tickwidth = 4, 
    tick0 = 0, 
    ticklen = 8, 
    dtick = 0.25, 
    tickcolor = "#000", 
    autotick = FALSE
  )
)

response <- p$plotly(data, kwargs=list(layout=layout, filename="axes-ticks", fileopt="overwrite", auto_open="FALSE"))
url <- response$url
filename <- response$filename