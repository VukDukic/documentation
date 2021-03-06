signin('TestBot', 'r1neazxo9w')

%bins
x = 1900:10:2000;

%data
y1 = [75.99,91.92,105.71,...
       123.23,131.69,...
       150.67,179.33,203.12,...
       226.55,249.63,281.42];
%data
y2 = [55.2,61.972,65.71,...
       76.23,87.669,...
       91.7,103.23,124.21,...
       130.55,135.63,145.22];

%create MATLAB bar chart
fig = figure;
bar(x, y1);
hold on
bar(x, y2,'r');

%add legend
legend('group1','group2');

%--PLOTLY--%

% Strip MATLAB style by default!
response = fig2plotly(fig, 'filename', 'matlab-overlaid-bar';
plotly_url = response.url;
