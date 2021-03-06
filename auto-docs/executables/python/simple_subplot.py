# Learn about API authentication here: {{BASE_URL}}/python/getting-started
# Find your api_key here: {{BASE_URL}}/settings/api

import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('TestBot', 'r1neazxo9w')
trace1 = Scatter(
    x=[1, 2, 3],
    y=[4, 5, 6]
)
trace2 = Scatter(
    x=[20, 30, 40],
    y=[50, 60, 70],
    xaxis='x2',
    yaxis='y2'
)
data = Data([trace1, trace2])
layout = Layout(
    xaxis=XAxis(
        domain=[0, 0.45]
    ),
    xaxis2=XAxis(
        domain=[0.55, 1]
    ),
    yaxis2=YAxis(
        anchor='x2'
    )
)
fig = Figure(data=data, layout=layout)
plot_url = py.plot(fig, filename='simple-subplot', auto_open=False)
