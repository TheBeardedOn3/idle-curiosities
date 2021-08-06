function [index] = sample(distribution, decision_boundary)
%SAMPLE Gets index of value sampled from a random distribution by iterating
%over distribution
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

total = 0;
index = 0;
while (total < decision_boundary)
    index = index + 1;
    total = total + distribution(index);
end

end

