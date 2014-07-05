library(plotly)

p <- plotly(username='TestBot', key='r1neazxo9w')

size <- 50
z <- matrix(0, size, size)
for(r in 1:size) {
    for(c in 1:size) {
        z[r, c] <- r+c
    }
}

data <- list(
  list(
    z = z, 
    scl = list(c(0.0, "rgb(165,0,38)"),list(0.111111111111, "rgb(215,48,39)"),list(0.222222222222, "rgb(244,109,67)"),list(0.333333333333, "rgb(253,174,97)"),list(0.444444444444, "rgb(254,224,144)"),list(0.555555555556, "rgb(224,243,248)"),list(0.666666666667, "rgb(171,217,233)"),list(0.777777777778, "rgb(116,173,209)"),list(0.888888888889, "rgb(69,117,180)"),list(1.0, "rgb(49,54,149)")), 
    type = "heatmap"
  )
)

response <- p$plotly(data, kwargs=list(filename="custom-colorscale", fileopt="overwrite", auto_open="FALSE"))
url <- response$url
filename <- response$filename