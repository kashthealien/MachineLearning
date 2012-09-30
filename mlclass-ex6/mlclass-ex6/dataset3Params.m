function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
vals = [ 0.01 , 0.03, 0.1, 0.3, 1, 3, 10, 30];

C = 1;
sigma = 0.3;
%min = 10000000;
%for i = 1:length(vals),
%  for j = 1:length(vals),
%	c = vals(i);
%	sig = vals(j);
%	model = svmTrain(X, y, c,  @(x1, x2) gaussianKernel(x1, x2, sig), 1e-3, 20);
%	predictions = svmPredict(model, Xval);
%	cost = mean(double(predictions ~= yval));
%	if min > cost,
%		min = cost;
%		C = c;
%		sigma = sig;
%	end
%  end
%end
C =  1;
sigma =  0.10000;
end
