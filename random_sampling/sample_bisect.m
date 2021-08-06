function [index] = sample_bisect(distribution, decision_boundary)
%SAMPLE_BISECT Gets index of value sampled from a random distribution by
%iteratively bisecting distribution
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
    decision_boundary = rand();
end

% l_dist = length(distribution);
% cdf = zeros(l_dist,1);
% cdf(1) = distribution(1);
% for (i = 2:length(distribution))
%     cdf(i) = cdf(i-1) + distribution(i);
% end
% 
% min_ind = 1;
% max_ind = l_dist;
% 
% index = 1;
% if ~(distribution(1) > decision_boundary)
%     found = false;
%     while ~found
%         diff = max_ind-min_ind;
%         index = ceil((diff)/2) + min_ind;
%         if cdf(index) >= decision_boundary
%             if cdf(index-1) < decision_boundary
%                 found = true;
%             else
%                 max_ind = index;
%             end
%         else
%             min_ind = index;
%         end        
%     end
% end

min_ind = 1;
max_ind = length(distribution);

index = 1;
if ~(distribution(1) > decision_boundary)
    found = false;
    while ~found
        diff = max_ind-min_ind;
        index = ceil((diff)/2) + min_ind;
        probability = sum(distribution(1:index));
        if probability >= decision_boundary
            if probability-distribution(index) < decision_boundary
                found = true;
            else
                max_ind = index;
            end
        else
            min_ind = index;
        end        
    end
end
end

