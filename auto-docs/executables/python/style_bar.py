# Learn about API authentication here: {{BASE_URL}}/python/getting-started
# Find your api_key here: {{BASE_URL}}/settings/api

import plotly.plotly as py
from plotly.graph_objs import *

py.sign_in('TestBot', 'r1neazxo9w')
trace1 = Bar(
    x=[1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012],
    y=[219, 146, 112, 127, 124, 180, 236, 207, 236, 263, 350, 430, 474, 526, 488, 537, 500, 439],
    name='Rest of world',
    marker=Marker(
        color='rgb(55, 83, 109)'
    )
)
trace2 = Bar(
    x=[1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012],
    y=[16, 13, 10, 11, 28, 37, 43, 55, 56, 88, 105, 156, 270, 299, 340, 403, 549, 499],
    name='China',
    marker=Marker(
        color='rgb(26, 118, 255)'
    )
)
data = Data([trace1, trace2])
layout = Layout(
    title='US Export of Plastic Scrap',
    xaxis=XAxis(
        tickfont=Font(
            size=14,
            color='rgb(107, 107, 107)'
        )
    ),
    yaxis=YAxis(
        title='USD (millions)',
        titlefont=Font(
            size=16,
            color='rgb(107, 107, 107)'
        ),
        tickfont=Font(
            size=14,
            color='rgb(107, 107, 107)'
        )
    ),
    legend=Legend(
        x=0,
        y=1.0,
        bgcolor='rgba(255, 255, 255, 0)',
        bordercolor='rgba(255, 255, 255, 0)'
    ),
    barmode='group',
    bargap=0.15,
    bargroupgap=0.1
)
fig = Figure(data=data, layout=layout)
plot_url = py.plot(fig, filename='style-bar', auto_open=False)
