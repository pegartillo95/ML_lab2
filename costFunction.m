function [J, grad] = costFunction(theta, X, y)
m = length(y);

J = 0;
grad = zeros(size(theta));

z=X*theta;
h=sigmoid(z);
%logisf=-y*log(h)-(1-y)*log(1-h);
%logisf=log(h)*(-y)-log(1-h)*(1-y);
logisf=(-y)'*log(h)-(1-y)'*log(1-h);
J=(1/m)*sum(logisf);		

grad=1/m*((X'*h-X'*y)');

end
