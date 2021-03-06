import matplotlib.pyplot as plt
import numpy as np

import plotly.plotly as py
py.sign_in('-', '-')

x = np.linspace(0, 10)
line, = plt.plot(x, np.sin(x), '--', linewidth=2)

dashes = [10, 5, 100, 5] # 10 points on, 5 off, 100 on, 5 off
line.set_dashes(dashes)

fig = plt.gcf()

plot_url = py.plot_mpl(fig, filename='>>>filename<<<')
