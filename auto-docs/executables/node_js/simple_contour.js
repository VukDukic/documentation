// Learn about API authentication here: {{BASE_URL}}/nodejs/getting-started
// Find your api_key here: {{BASE_URL}}/settings/api

var linspace = require('linspace');
var unpack = require('ndarray-unpack');
var zeros = require('zeros');
var fill = require('ndarray-fill');

var size = 100
var x = linspace(-2 * Math.PI, 2 * Math.PI, size)
var y = linspace(-2 * Math.PI, 2 * Math.PI, size)
var z = unpack(zeros([size,size]))
for (var i = 0; i < size; i++) {
  for (var j = 0; j < size; j++) {
    r2 = (x * (i * i) + y * (j * j))
      z[i][j] = Math.sin(x * i) * Math.cos(y * j) * Math.sin(r2) / Math.log(r2+1)
  }
}

var plotly = require('plotly')('TestBot', 'r1neazxo9w');
var data = [
  {
    z: z, 
    x: x, 
    y: y, 
    type: "contour"
  }
];
var graphOptions = {filename: "simple-contour", fileopt: "overwrite"};
plotly.plot(data, graphOptions, function (err, msg) {
    console.log(msg);
});
