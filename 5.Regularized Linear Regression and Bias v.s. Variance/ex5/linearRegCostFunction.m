function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
% J = 0;
% grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


h_X = X * theta;
theta_len = length(theta);
J = sum((h_X - y) .^ 2 ) / (2 * m) + lambda / (2 * m) * sum( theta(2:theta_len) .^ 2 );



grad = ( (h_X - y)' * X )' / m + lambda / m * theta;
grad_theat_0 = (h_X -y)' * X(:, 1) / m;
grad(1) = grad_theat_0 ; 





% =========================================================================

grad = grad(:);

end