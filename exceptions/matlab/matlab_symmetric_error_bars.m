signin('TestBot', 'r1neazxo9w')

x = 0:pi/10:pi;
y = sin(x);
e = std(y)*ones(size(x));

fig = figure
errorbar(x,y,e)

%--PLOTLY--%

% Strip MATLAB style by default!
response = fig2plotly(fig, 'filename', 'matlab-symmetric-error-bars');
plotly_url = response.url;
