// Learn about API authentication here: {{BASE_URL}}/nodejs/getting-started
// Find your api_key here: {{BASE_URL}}/settings/api

var plotly = require('plotly')('TestBot', 'r1neazxo9w');
var trace1 = {
  x: [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  y: [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  name: "Name of Trace 1", 
  type: "scatter"
};
var trace2 = {
  x: [0, 1, 2, 3, 4, 5, 6, 7, 8], 
  y: [1, 0, 3, 2, 5, 4, 7, 6, 8], 
  name: "Name of Trace 2", 
  type: "scatter"
};
var data = [trace1, trace2];
var layout = {
  title: "Plot Title", 
  xaxis: {
    title: "x Axis", 
    titlefont: {
      family: "Courier New, monospace", 
      size: 18, 
      color: "#7f7f7f"
    }
  }, 
  yaxis: {
    title: "y Axis", 
    titlefont: {
      family: "Courier New, monospace", 
      size: 18, 
      color: "#7f7f7f"
    }
  }
};
var graphOptions = {layout: layout, filename: "styling-names", fileopt: "overwrite"};
plotly.plot(data, graphOptions, function (err, msg) {
    console.log(msg);
});
