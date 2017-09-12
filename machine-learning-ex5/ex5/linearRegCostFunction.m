function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

h_theta_x = X * theta; % m x 1
theta_no_bias = theta(2:end);
J = ((h_theta_x - y)' * (h_theta_x - y)) / (2*m) + lambda * (theta_no_bias' * theta_no_bias) / (2*m);

grad = ((X * theta - y)' * X)' / m + [0; (lambda .* theta_no_bias) / m];







% =========================================================================

grad = grad(:);

end
