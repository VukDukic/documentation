% Learn about API authentication here: {{BASE_URL}}/matlab/getting-started
% Find your api_key here: {{BASE_URL}}/settings/api

signin('TestBot', 'r1neazxo9w')
data = {...
  struct(...
    'x', [1, 2, 3, 4], ...
    'y', [5, 4, -3, 2], ...
    'marker', struct('color', { {'#447adb', '#447adb', '#db5a44', '#447adb'} }), ...
    'type', 'bar')...
};
response = plotly(data, struct('filename', 'bar-marker-array', 'fileopt', 'overwrite'));
plot_url = response.url
