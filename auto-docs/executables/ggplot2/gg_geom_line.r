library(plotly)
library(plyr)

py <- plotly(username='TestBot', key='r1neazxo9w')

mry <- do.call(rbind, by(movies, round(movies$rating), function(df) {
  nums <- tapply(df$length, df$year, length)
  data.frame(rating=round(df$rating[1]), year = as.numeric(names(nums)), number=as.vector(nums))
}))

p <- ggplot(mry, aes(x=year, y=number, group=rating)) +
        geom_line(aes(colour = rating)) +
        scale_colour_gradient(low="red")
out <- py$ggplotly(p, kwargs=list(filename="gg-geom_line", fileopt="overwrite"))

plotly_url <- out$response$url
