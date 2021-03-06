signin({% if username %}'{{username}}'{% else %}'MATLABAPI'{% endif %}, {% if api_key %}'{{api_key}}'{% else %}'jzt0hr6tzv'{% endif %})

% stacked histogram
sd1 = 0.1;
mu1 = 0;
data1 = mu1+ sd1.*randn(5000,1);
sd2 = 0.1;
mu2 = 0;
data2 = mu2+ sd2.*randn(5000,1);

% bin specs.
nbins = 50;
bound = 1;
bins = linspace(-bound,bound,nbins);

fig = figure;

% first histogram
y1 = hist(data1, bins);

% second histogram
y2 = hist(data2, bins);

% stacked histograms
bar([y1.' y2.'],'stacked')

% relabelx-axis range/ticks
xd = findobj('-property','XData');

for i=1:2
    dat = get(xd(i),'XData');
    dat = 2*dat/nbins - bound;
    set(xd(i),'XData',dat);
end

%--PLOTLY--%

% Strip MATLAB style by default!
response = fig2plotly(fig, 'filename', '>>>filename<<<');
plotly_url = response.url;
