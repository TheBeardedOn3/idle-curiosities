function [index] = sample_bisect_recurse(distribution, decision_boundary)
%SAMPLE_BISECT_RECURSE Gets index of value sampled from a random distribution by
%recursively bisecting distribution
% IN -------------------------------------
% distribution      (vector) discrete distribution (should sum to 1)
% decision boundary (double, optional) value from uniform distribution to
%                   pull sample from; if not specified this is done
%                   internally to allow for comparion
%
% OUT ------------------------------------
% index             (int) index of sampled value 
% TODO -----------------------------------
% 

if nargin < 2
    decision_boundary = rand()
end

outputArg1 = inputArg1;
outputArg2 = inputArg2;
end

