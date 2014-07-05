import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('TestBot', 'r1neazxo9w')

trace1 = Scatter(
    x=[1, 2, 3],
    y=[4, 5, 6],
    name='yaxis1 data'
)
trace2 = Scatter(
    x=[2, 3, 4],
    y=[40, 50, 60],
    name='yaxis2 data',
    yaxis='y2'
)
trace3 = Scatter(
    x=[4, 5, 6],
    y=[40000, 50000, 60000],
    name='yaxis3 data',
    yaxis='y3'
)
trace4 = Scatter(
    x=[5, 6, 7],
    y=[400000, 500000, 600000],
    name='yaxis4 data',
    yaxis='y4'
)
data = Data([trace1, trace2, trace3, trace4])
layout = Layout(
    title='multiple y-axes example',
    width=800,
    xaxis={'domain': [0.3, 0.7]},
    yaxis={'tickfont': {'color': '#1f77b4'}, 'titlefont': {'color': '#1f77b4'}, 'title': 'yaxis title'},
    yaxis2=YAxis(
        title='yaxis2 title',
        titlefont={'color': '#ff7f0e'},
        tickfont=Font(
            color='#ff7f0e'
        ),
        anchor='free',
        side='left',
        position=0.15,
        overlaying='y'
    ),
    yaxis3=YAxis(
        title='yaxis4 title',
        titlefont={'color': '#d62728'},
        tickfont=Font(
            color='#d62728'
        ),
        anchor='x',
        side='right',
        overlaying='y'
    ),
    yaxis4=YAxis(
        title='yaxis5 title',
        titlefont={'color': '#9467bd'},
        tickfont=Font(
            color='#9467bd'
        ),
        anchor='free',
        side='right',
        position=0.85,
        overlaying='y'
    )
)
fig = Figure(data=data, layout=layout)

plot_url = py.plot(fig, filename='multiple-axes-multiple', auto_open=False)