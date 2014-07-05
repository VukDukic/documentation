library(plotly)

p <- plotly(username='TestBot', key='r1neazxo9w')

data <- list(
  list(
    x = c("giraffes", "orangutans", "monkeys"), 
    y = c(20, 14, 23), 
    type = "bar"
  )
)

response <- p$plotly(data, kwargs=list(filename="basic-bar", fileopt="overwrite", auto_open="FALSE"))
url <- response$url
filename <- response$filename