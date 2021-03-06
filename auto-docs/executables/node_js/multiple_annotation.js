// Learn about API authentication here: {{BASE_URL}}/nodejs/getting-started
// Find your api_key here: {{BASE_URL}}/settings/api

var plotly = require('plotly')('TestBot', 'r1neazxo9w');
var trace1 = {
  x: [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  y: [0, 1, 3, 2, 4, 3, 4, 6, 5], 
  type: "scatter"
};
var trace2 = {
  x: [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  y: [0, 4, 5, 1, 2, 2, 3, 4, 2], 
  type: "scatter"
};
var data = [trace1, trace2];
var layout = {
  showlegend: false, 
  annotations: [
    {
      x: 2, 
      y: 5, 
      xref: "x", 
      yref: "y", 
      text: "Annotation Text", 
      showarrow: true, 
      arrowhead: 7, 
      ax: 0, 
      ay: -40
    }, 
    {
      x: 4, 
      y: 4, 
      xref: "x", 
      yref: "y", 
      text: "Annotation Text 2", 
      showarrow: true, 
      arrowhead: 7, 
      ax: 0, 
      ay: -40
    }
  ]
};
var graphOptions = {layout: layout, filename: "multiple-annotation", fileopt: "overwrite"};
plotly.plot(data, graphOptions, function (err, msg) {
    console.log(msg);
});
