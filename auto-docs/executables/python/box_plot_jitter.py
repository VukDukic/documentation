# Learn about API authentication here: {{BASE_URL}}/python/getting-started
# Find your api_key here: {{BASE_URL}}/settings/api

import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('TestBot', 'r1neazxo9w')
data = Data([
    Box(
        y=[0, 1, 1, 2, 3, 5, 8, 13, 21],
        boxpoints='all',
        jitter=0.3,
        pointpos=-1.8
    )
])
plot_url = py.plot(data, filename='box-plot-jitter', auto_open=False)
