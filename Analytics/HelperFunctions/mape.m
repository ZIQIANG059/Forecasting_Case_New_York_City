function m = mape(testY, pred)
% Compute mean absolute percent error
%
% m = mape(actual, pred)
%
% actual is a column vector of actual values
% pred is a matrix of predictions (one per column)
%
% m is the mean absolute percent error (ignoring NaNs) for each column of
% pred. 

% Copyright 2014-2016 The MathWorks, Inc.

err = abs(pred-testY);
pcterr = err./testY;
m = mean(pcterr, 1, 'omitnan');

end