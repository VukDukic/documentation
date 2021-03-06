library(plotly)
require(lattice)

py <- plotly(username='TestBot', key='r1neazxo9w')

w <- ggplot(data=barley, aes(x=yield, y=variety, color=year)) +
        geom_point() +
        facet_wrap(~site)

out <- py$ggplotly(w, kwargs=list(filename="facet_wrap", fileopt="overwrite"))
plotly_url <- out$response$url
