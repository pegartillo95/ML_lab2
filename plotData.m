function plotData(X, y)
figure; hold on;

% Find indices of positive and negative examples
pos = find(y==1); neg = find(y==0);

plot(X(pos,1), X(pos,2), 'r+', 'LineWidth', 2, 'MarkerSize', 7);
plot(X(neg,1), X(neg,2), 'ko', 'MarkerFaceColor', 'yellow', 'MarkerSize', 7);

hold off;

end
