# Learn about API authentication here: {{BASE_URL}}/julia/getting-started
# Find your api_key here: {{BASE_URL}}/settings/api

using Plotly

Plotly.signin("TestBot", "r1neazxo9w")
trace1 = [
  "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  "y" => [8, 7, 6, 5, 4, 3, 2, 1, 0], 
  "type" => "scatter"
]
trace2 = [
  "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  "y" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  "type" => "scatter"
]
data = [trace1, trace2]
layout = [
  "xaxis" => [
    "autorange" => true, 
    "showgrid" => false, 
    "zeroline" => false, 
    "showline" => false, 
    "autotick" => true, 
    "ticks" => "", 
    "showticklabels" => false
  ], 
  "yaxis" => [
    "autorange" => true, 
    "showgrid" => false, 
    "zeroline" => false, 
    "showline" => false, 
    "autotick" => true, 
    "ticks" => "", 
    "showticklabels" => false
  ]
]
response = Plotly.plot(data, ["layout" => layout, "filename" => "axes-booleans", "fileopt" => "overwrite"])
plot_url = response["url"]
