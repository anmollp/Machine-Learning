function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
% You need to return the following variables correctly 
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

a = (1/m).*(-y'*log(sigmoid(X*theta)) - (1-y)'*log(1-sigmoid(X*theta)));
b = (lambda/(2*m))*(theta(2:length(theta),1)'*theta(2:length(theta),1));
J = a + b;
grad = (1/m)*((sigmoid(X*theta) - y)'*X)' + [zeros(1); (lambda/m)*theta(2:length(theta))];

% =============================================================

end
