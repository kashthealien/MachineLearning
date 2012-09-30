function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
H = sigmoid(X*theta);
n = length(theta);
J = (1/m)*(-y'*log(H) - (1-y)'*log(1-H)) + (lambda/2/m)*(theta(2:n)'*theta(2:n));
grad = (1/m)*((H-y)'*X + [0 lambda*theta(2:n)']);
end
