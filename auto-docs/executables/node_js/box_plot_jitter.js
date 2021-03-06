// Learn about API authentication here: {{BASE_URL}}/nodejs/getting-started
// Find your api_key here: {{BASE_URL}}/settings/api

var plotly = require('plotly')('TestBot', 'r1neazxo9w');
var data = [
  {
    y: [0, 1, 1, 2, 3, 5, 8, 13, 21], 
    boxpoints: "all", 
    jitter: 0.3, 
    pointpos: -1.8, 
    type: "box"
  }
];
var graphOptions = {filename: "box-plot-jitter", fileopt: "overwrite"};
plotly.plot(data, graphOptions, function (err, msg) {
    console.log(msg);
});
